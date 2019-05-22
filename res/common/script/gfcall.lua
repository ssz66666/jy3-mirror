
local GF = require "gfbase"
local co = require "co"
local es = require 'gevent'
local js  = require "cjson.c"

GF.notify = {}
local api = {}
GF.api = api
GF.isP = true
GF.isCollect=true
GF.o_meta = {
	__index = function(t,k)
		local v = rawget(t,GF.esc..tostring(k))
		if v then
			if type(v) == 'number' then
				v = GF.QueryName(v)
				rawset(t,k,v)
			else
				rawset(t,GF.esc..tostring(k),nil)
				v = GF.call(v)
				rawset(t,k,v)
			end
			if not GF.is_editor then
				rawset(t,'__'..tostring(k),nil)
			end
		end
		return v
	end,
	__newindex = function(t,k,v)
		if GF.strict_debug and not GF.isP then
			if k ~= 'skiptalk' and k ~= 'skipbattle' and k ~= "strict_debug" then
				error("Error! Attempt to modify data outside logic layer!" .. tostring(k) .. '  ' .. tostring(v))
				-- GF.errorLog("Error! Attempt to modify data outside logic layer!" .. tostring(k) .. '  ' .. tostring(v))
			end
		end
		rawset(t,k,v)
		if not GF.is_editor then
			rawset(t,'__'..tostring(k),nil)
		end
	end,
	__len = function(t)
		if t.n then return t.n + 1 end
		local i = 1
		while t[i] do
			i = i + 1
		end
		return i - 1
	end
}

function GF.meta(value)
	if type(value) == 'table' then
		for k,v in pairs(value) do
			GF.meta(v)
		end
		local old_meta = getmetatable(value)
		if old_meta == nil then
			setmetatable(value, GF.o_meta)
		end
	end
end

function GF.getFuncTips(farg_table)
	local func_name = farg_table[1]
	if GF.api[func_name] then
		local string_tips = c.GetFuncTips(func_name)
		return string_tips
	end
	return ""
end


local function noti_call(func,...)
	-- if GF.run_state ~= 2 then
	-- 	return
	-- end
	if GF.isP and func and GF.noti_file then
		GF.FileLog(GF.noti_file, func, ...)
		GF.FileLog(GF.noti_file, debug.traceback())
		GF.FileLog(GF.noti_file, '-------------------------')
	end
	local f = GF.notify[func]
	if f then
		return f(...)
	end
end
GF.noti_call = noti_call
function GF.call(func,ex,...)
	local f
	if GF.IsTable(func) then
		local a = GF.NewTab()
		setmetatable(a, nil)
		for k,v in pairs(a) do
			a[k] = nil
		end
		for k,v in pairs(func) do
			a[k] = v
		end
		setmetatable(a, GF.o_meta)
		if type(a.n) == 'number' then
			for i = 1, a.n + 1 do
				a[i] = a[i]
				-- GF.log('call',a[i])
			end
		else
			for i = 1,#a do
				a[i] = a[i]
			end
		end
		if ex then
			local arg = {ex, ...}
			local index = 2
			for k,v in ipairs(arg) do
				table.insert(a,index,v)
				index = index + 1
			end
		end		
		local ret = GF.call(table.unpack(a))
		GF.ReleaseTab(a)
		return ret
	elseif type(func) == 'function' then
		f = func
	else
		f = GF.api[func]
	end
	local r1
	if f ~= nil then
		r1 = f(ex, ...)
	else 
		if func ~= nil and GF.notify[func] == nil then 
			print('Warning: Cannot find call func ' .. tostring(func) .. '!!!')
			GF.log('Warning: Cannot find call func ' .. tostring(func) .. '!!!', debug.traceback())
		end 
	end
	noti_call(func, ex, ...)
	return r1
end


local srED = es.newctx()
GF.srED = srED

function GF.srvEventData(ED)
	ED.uncase = ED.uncase or {}
	GF.srED = ED
	srED = ED
end
function GF.Clean_srED()
	srED = es.newctx()
	GF.srED = srED
end
local ev_info

local function init_ev_info()
	ev_info = {}
	for k,v in ipairs(require('o_event')[2]) do
		ev_info[v.name] = v
	end
end

table.insert(GF.update, function(t)
	GF.isP = true
	GF.trig_event('等待下一帧')
	GF.trig_event('任务等待下一帧')
	es.tick(srED)
	GF.isP = false
end)


function GF.wait1(arg,...)
	local func = arg
	local earg
	if type(arg) == 'table' then -- new case
		func = arg[1]
	end
	local noti_func = es.parse_event(func)

	GF.case(0,arg,...)
	-- 格式化文字
	GF.format_dialogue(arg,...)
	if type(arg) == 'table' then -- new case
		earg = arg
	else
		earg = {arg,...}
	end
	noti_call(noti_func, earg)
	local p = co.yield()
	local ev = p.e
	-- 记录文字
	GF.save_dialogue_function_info(arg,...)
	--es.remove_wait(srED, p)
	local endfunc = noti_func..'end'
	if GF.notify[endfunc] then
		noti_call(endfunc, earg)
	end
	srED.info = ev
end

function GF.wait_case()
	local arg = GF.get_case_event()
	-- 格式化选项文字
	GF.format_case_text(srED)

	for k = 1,#arg do
		noti_call(arg[k][1], arg[k])
	end
	local p = co.yield()
	

	-------- 用来判断是否有userdata在协程信息中
	if GF.strict_debug then 
		local count = 1
		while true do
			local info = debug.getinfo(p.co,count)
			if info then 
				local count2 = 1
				while true do
					local name,value = debug.getlocal(p.co,count,count2)
					if name and value then 
						-- print(name,value,count2,count)
						if type(value) == 'userdata' then 
							error('userdata !!')
						end
					else
						break
					end 
					count2 = count2 + 1
				end 
			else
				break
			end 
			count = count + 1
		end 
	end

	local ev = p.e
	-- 记录点击的选项
	GF.save_case_function_info(p)

	for k = 1,#arg do
		noti_call(arg[k][1]..'end', arg[k])
	end
	srED.info = ev
	--es.remove_wait(srED, p)
	return p.id
end

function GF.wait_case_pure()
	local arg = GF.get_case_event()
	
	-- 格式化选项文字
	GF.format_case_text(srED)

	local p = co.yield()
	local ev = p.e
	
	srED.info = ev
	return p.id
end

function GF.is_newgame()
	return #srED.wait <= 1
end


local function program_exit(ct)
	srED.uncase[ct] = nil
end
function GF.start_program(fname, ...)
	local func = api[fname]
	if func then
		local p = es.start_program(srED,fname, func, {...}, program_exit)
		GF.log('[GFCall]->StartProgram:',fname, p.co)
		return p
	end
end

function GF.remove_program(p, with_timer)
	if type(GF.update_data_event_list) == 'function' then 
		GF.update_data_event_list(srED, p)
	end
	if with_timer then
		local timer = GF.__timer
		local rco
		if type(p) == 'string' then
			rco = es.get_co(srED, p)
		else
			rco = p.co
		end
		for k = #timer, 1, - 1 do
			if timer[k][2] == rco then
				table.remove(timer,k)
			end
		end
	end
	GF.log('remove_program',p)
	es.remove_wait(srED, p)
end


local function is_uncase(id)
	local rco = co.running()
	if srED.uncase[rco] then
		return srED.uncase[rco][id]
	end
end

function GF.case(id, ...)
	if is_uncase(id) then return end
	local p = {...}
	if type(p[1]) == 'table' then -- new case
		if type(p[2]) == 'function' then
			p[1].cond = p[2]
		end
		if type(p[3]) == 'number' then
			p[1].prior = p[3]
		end
		if type(p[4]) == 'string' or type(p[4]) == 'nil' then
			p[1].group = p[4] or ""
		end
		p = p[1]
	else	
		for k,v in pairs(p) do
			if type(v) == 'function' then
				p[k] = nil
				p.cond = v
				break
			end
		end
	end

	local event_suffix
	p[1], event_suffix = es.parse_event(p[1])
	
	p.id = id
	p.co = co.running()
	local didx = 2
	if id == 0 then
		didx = 3
	end
	local di = debug.getinfo(didx, 'fl')
	p._func = di.func
	p._cline = di.current
	p.suffix = event_suffix
	if ev_info == nil then
		init_ev_info()
	end
	local info = ev_info[p[1]]
	if info then
		-- p.stop = not info.nonstop
		if p.group == nil or p.group == "" then
			p.group = info.def_group
		end
		p.mono = info.mono
	end
	es.add_wait(srED, p)
	return p
end

function GF.uncase(id)
	local rco = co.running()
	srED.uncase[rco] = srED.uncase[rco] or setmetatable({}, co.weak_meta)
	srED.uncase[rco][id] = 1
end

function GF.clearuncase()
	local rco = co.running()
	local uncase = srED.uncase[rco]
	if uncase then
		for k,v in pairs(uncase) do
			uncase[k] = nil
		end
	end
end

function GF.event_stop(bstop)
	srED.stop = bstop
end


function GF.set_key_event(ev)
	if not srED.key_event then
		srED.key_event = {}
	end
	srED.key_event[ev] = {}
	srED.key_event[ev].group = ev_info[ev].def_group
end

function GF.unset_key_event(ev)
	if not srED.key_event then
		return
	end
	srED.key_event[ev] = nil
end

-- function GF.wait_level(prior)
-- end
function GF.setevent_info(info)
	srED.info = info
end 
function GF.event_info()
	local info = srED.info
	if info then
		return table.unpack(info, 2, info._sz)
	end
end
function GF.event_name()
	local info = srED.info
	if info then
		return srED.info[1] or ""
	end 
end

_G.remote_event = function(buf)
	print("recv", buf)
	local js  = require "cjson.c"
	local arg = js.decode(buf)
	GF.trig_event(table.unpack(arg))
end

function GF.rpt_event(proj, ...)	
	local js  = require "cjson.c"
	local buf = js.encode({...})
	GF.RSCall(proj,'remote_event',buf)
end

function GF.addListener(fname,earg, cond, prior, group)
	local event = earg
	if type(earg) ~= 'table' then
		earg = {event}
	end
	earg.cond = cond
	earg.prior = prior
	earg.group = group
	local func = api[fname]
	if func == nil then return end
	es.add_callback(srED, func, earg)
end

function GF.removeListener(fname,ev_name)
	local func = api[fname]
	if func == nil then return end
	es.remove_callback(srED, func, ev_name)
end

function GF.get_listering(ev_name)
	return srED.wait[ev_name]
end

function GF.find_event(...)
	local arg = {...}
	local same
	for _,v in ipairs(srED.event) do
		same = true
		for k = 1,#arg do
			if arg[k] ~= v[k] then
				same = false
				break
			end
		end
		if same then
			return true
		end
	end
end

function GF.get_case_event()
	local cc = co.running()
	local lst = {}
	local idtab = {}
	srED.wait.__mono_wait = srED.mono_wait
	for _,wait in pairs(srED.wait) do
		for k = #wait, 1, -1 do
			local p = wait[k]
			if p.co == cc then
				if not GF.ContainData(lst,p) then
					table.insert(lst, p)
					idtab[p] = p.id or 1
				end
			end
		end
	end
	table.sort(lst,function(a,b)
		return idtab[a] > idtab[b]
	end)
	srED.wait.__mono_wait = nil
	return lst
end

function GF.get_curcase(event_name, lst)
	local cc = co.running()
	local ev_wait = srED.wait[event_name]
	for _,wait in ipairs({srED.mono_wait, ev_wait}) do
		for k = #wait, 1, -1 do
			local p = wait[k]
			if p.co == cc and p[1] == event_name and (not p.cond or p.cond()) then
				if lst then
					table.insert(lst, p)
				else
					return p
				end
			end
		end
	end
	return lst
end

function GF.get_case(event_name, lst)
	local ev_wait = srED.wait[event_name]
	for _,wait in ipairs({srED.mono_wait, ev_wait}) do
		for k = #wait, 1, -1 do
			local p = wait[k]
			if p[1] == event_name then
				if lst then
					table.insert(lst, p)
				else
					return p
				end
			end
		end
	end
	return lst
end

-- 获取对话类的 debug 信息
-- @return(string)  函数名
-- @return(int)  当前行数
function GF.get_dialogue_debug_info()
	local d_funs
	local d_line
	local index = 1
	local debug_info
	local last_debug_info = nil
	-- 获取剧情名
	local cur_co = co.running()
	if cur_co and GF.srED.name[cur_co] then
		d_funs = GF.srED.name[cur_co]
	end
	debug_info = debug.getinfo(index)
	index = index + 1
	while debug_info do
		last_debug_info = debug_info
		debug_info = debug.getinfo(index)
		index = index + 1
		if debug_info and string.find(debug_info['short_src'], '[C]')  then
			d_line = last_debug_info['currentline'] - last_debug_info['linedefined']
		end
	end
	return d_funs,d_line
end

-- 获取当前等待的 case 总数
-- @return  返回 case 的数量
function GF.get_case_count()
	local cc = co.running()
    local case_count = 0
	srED.wait.__mono_wait = srED.mono_wait
    for _,wait in pairs(srED.wait) do
        for k = #wait, 1, -1 do
            local p = wait[k]
			if p.co == cc then
            	case_count = case_count + 1
            end
        end
    end
    srED.wait.__mono_wait = nil
    return case_count
end

local trig_count = 0
function GF.trig_event(...)
	local run, main_thread = co.running()
	local ev = {...}
	if ev[1] ~= '等待下一帧' and ev[1] ~= '任务等待下一帧' then 
		GF.log('[GFCall]->Trig Event:',...)
		if (main_thread or GF.running_co_is_action()) and GF.isCollect then
			trig_count = trig_count + 1
			-- 存储指令
			if GF.needLoadEventFile == true and ev[1] ~= 'saved' and ev[1] ~= 'extrasaved' and ev[1] ~= '系统_计数式战斗前存档请求' and ev[1] ~= '作弊指令' then 
				if GF.mainThreadEventList == nil then 
					GF.mainThreadEventList = {}
				end
				local tlist = {}
				for i=1,#ev do 
					if ev[i] and type(ev[i]) == 'table' and ev[i].name and ev[i].root then 
						tlist[i] = ev[i].name
					else
						tlist[i] = ev[i]
					end
				end 
				GF.mainThreadEventList[#GF.mainThreadEventList+1] = tlist
				if type(GF.trig_net_event) == 'function' then 
					GF.trig_net_event(tlist)
				end
			end
		end
	end
	if ev_info == nil then
		init_ev_info()
	end
	if type(GF.trig_event_dreamland) == 'function' then
		GF.trig_event_dreamland(ev, main_thread)
	end

	if srED.key_event and ev_info[ev[1]] then
		for k, v in pairs(srED.key_event) do
			if v.group == ev_info[ev[1]].def_group and ev[1] ~= k then
				return
			end
		end
	end
	srED.info = {...}
	es.trig_event(srED, not main_thread, ...)
	ev = nil
	if trig_count > 30 then
		local starts = os.clock()
		collectgarbage("collect")
		print('gc time:', os.clock() - starts)
		trig_count = 0
	end
end

function GF.remove_all_program()
	local pname = {}
	for k, v in pairs(srED.name) do
		table.insert(pname, v)
	end
	for i = 1, #pname do
		es.remove_wait(srED, pname[i])
	end
end

-- 获取所有协程信息
function GF.get_all_programinfo()
	local coroutineinfo = {}
	for k, v in pairs(srED.name) do
		table.insert(coroutineinfo, {name = v})
	end

	return coroutineinfo
end

-- 判断一个协程是否存在
-- @params(string)  name: 协程的名称
-- @return(boolean)  返回是否存在
function GF.program_alive(name)
	for _,wait in pairs(srED.wait) do 
		for k = #wait, 1, -1 do
			if srED.name[wait[k].co] == name then
				return true
			end
		end           
	end
	return false
end

-- 判断一个协程是否存在
-- @params(string)  name: 协程的名称
-- @return(boolean)  返回是否存在
function GF.co_alive(co)
	for k, v in pairs(srED.name) do
		if k == co then
			return true
		end
	end
	return false
end

-- 获取一个协程的数量
-- @params(string)  name: 协程的名称
-- @return(int)  返回协程的数量
function GF.GetProgramCount(name)
	local count
	count = 0
	for k, v in pairs(srED.name) do
		if v == name then
			count = count + 1
		end
	end
	return count
end

-- 清空事件队列
-- @params(table)  ED: 事件系统数据
function GF.ClearEventQueue()
    es.clear_event_queue(srED)
end

-- 输出所有协程信息
function GF.LogEventInfo(dont_show_detail)
	GF.log('[gfcall]->LogEventInfo')
	GF.logtable(srED, dont_show_detail)
end

function GF.IsEventQueueEmpty()
	if not (type(srED.event) == 'table' and #srED.event > 0) then 
		return true
	end
	
	for i = 1, #srED.event do 
		if srED.event[i][1] ~= '等待下一帧' and srED.event[i][1] ~= '任务等待下一帧' then 
			return false
		end
	end

	return true
end

function GF.IsMonoWaitEmpty()
	if type(srED.mono_wait) == 'table' and #srED.mono_wait > 0 then 
		return false
	end
	return true
end

function GF.CleanGameDynamicData()
    GF.ClearEventQueue()        -- 清理事件队列
    GF.clearDynamic()        -- 清理动态数据表
    GF.Clean_srED()          -- 清理协程 coroutine
    GF.ClearAction()          -- 清理动画协程
    GF.ResetSave()           -- 清空游戏数据的 require 缓存
    GF.projdata = {}	           -- 清空全局标记信息
    GF.ClearUIData()
    collectgarbage("collect")
end

function GF.LockEventQueue()
	es.LockEventQueue(srED)
end

function GF.UnlockEventQueue()
	es.UnlockEventQueue(srED)
end

function GF.on_trig_net_event(ev_buff)
	local ev
	local param
	local max_num = 0

	ev = eris.unpersist({}, ev_buff)
	for k, v in pairs(ev) do 
		if type(k) == 'number' then 
			if max_num < k then 
				max_num = k
			end
		end
	end
	for i = 1, max_num do 
		param = ev[i]
		if type(param) == 'number' and GF.QueryName(param) then 
			ev[i] = GF.QueryName(param)
		end
	end
	GF.trig_event(table.unpack(ev, 1, max_num))
end
