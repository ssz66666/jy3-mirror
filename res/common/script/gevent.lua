local co = require 'co'
local t = {}


function t.newctx()
    local ctx = {
        event = {},
        wait = {},
        name = setmetatable({}, co.weak_meta),
        callback = {},
        co_pool = setmetatable({}, co.weak_meta),
        -- keep context wait
        mono_run = nil,
        mono_wait = {},
        pending_start = {},
        pending_running = {},
        uncase = {},
        lock_event_queue_idx = -1,
        lock_pending_running_idx = -1,
    }
    return ctx
end

local function resume_wait(ED,p)
	local ret,tag 
	ED.info = p.e
    for k = 1, #ED.mono_wait do
        ED.mono_wait[k] = nil
    end
    t.remove_wait(ED, p)
    -- print('进入线程',ED.name[p.co])
	if p.arg then -- ?
		ret,tag = co.resume(p.co, table.unpack(p.arg))
	else
		ret,tag = co.resume(p.co, p)
    end
    -- print('离开线程',ED.name[p.co])

	if tag == 'EXIT' then
        ED.name[p.co] = nil
	end
end

local function match_arg(pa, ea)
    if pa == ea then return true end
    local tpa = type(pa)
    local tea = type(ea)
    if tpa ~= tea then return false end
    if tpa == 'table' then
        if pa.name and ea.name then
            return ea.name == pa.name
        end
    elseif tpa == 'string' then
        if string.sub(pa, 1, 1) == '[' and string.sub(pa, 4, 4) == ']' then
            pa = string.sub(pa, 5)
        end
        if string.sub(ea, 1, 1) == '[' and string.sub(ea, 4, 4) == ']' then
            ea = string.sub(ea, 5)
        end
    end
    return pa == ea
end
local function match_event(p, e)
    if not e._sz then
        local sz = 0
        for k,v in pairs(e) do
            if type(k) == 'number' and k > sz then
                sz = k
            end
        end
        e._sz = sz
    end
    for idx = 1, e._sz do
        if p[idx] ~= nil and e[idx] ~= nil and not match_arg(p[idx], e[idx]) then
            if idx == 1 then
                local tmp_p = t.parse_event(p[1])
                if tmp_p ~= e[1] then
                    return false
                end
            else
                return false
            end
        end
    end
    if p.cond ~= nil and not p.cond(table.unpack(e, 2)) then
        return false
    end
    return true
end

local function cmp_event(a,b)
    if a.prior == b.prior then
        return a._idx > b._idx
    end
    return a.prior > b.prior
end

local function collect_match(checks, e, out)
    local group = {}
    for k = 1, #checks do
        local v = checks[k]
        if match_event(v,e) then
            v.prior = v.prior or 0
            local insert = true
            if v.group then
                local cur = group[v.group]
                if cur == nil or v.prior > cur.prior then
                    if cur then
                        table.remove(out, cur._idx)
                        for x = cur._idx, #out do
                            out[x]._idx = x
                        end
                    end
                else
                    insert = false
                end
            end            
            if insert then
                v.e = e
                if v.group then
                    group[v.group] = v
                end
                table.insert(out, v)
                v._idx = #out
            end
        end
    end
    table.sort(out, cmp_event)
end

function t.add_wait(ED, p)
    if p.mono then
        table.insert(ED.mono_wait, 1, p)
        return
    end 
	-- if p.prior then -- low
	-- 	table.insert(ED.wait,1, p)
	-- else
    --     local pos = 0
    --     for k = 1, #ED.wait do
    --         if ED.wait[k].prior then
    --             pos = k
    --         else
    --             break
    --         end
    --     end
    -- 	table.insert(ED.wait,pos + 1, p)
	-- end
    local wait = ED.wait[p[1]] or {}
    ED.wait[p[1]] = wait
    table.insert(wait,1, p)
end

function t.removeby_co(wait, pco)    
    for k = #wait, 1, -1 do
        if wait[k].co == pco then
            table.remove(wait,k)
        end
    end
end
function t.removeby_name(wait, name_tab, name)
    for k = #wait, 1, -1 do
        local pco = wait[k].co
        if name_tab[pco] == name then
            table.remove(wait,k)
        end
    end
end

function t.remove_wait(ED, p)
    local mono_wait = ED.mono_wait
	if type(p) == 'table' then
        if #mono_wait > 0 and mono_wait[1].co == p.co then
            for k = 1, #mono_wait do
                mono_wait[k] = nil
            end
        end

        for _,wait in pairs(ED.wait) do            
            t.removeby_co(wait,p.co)
        end
        t.removeby_co(ED.pending_start,p.co)
        t.removeby_co(ED.pending_running,p.co)
        if #ED.pending_running < ED.lock_pending_running_idx then 
            ED.lock_pending_running_idx = #ED.pending_running
        end
		return
	end

    if #mono_wait > 0 and ED.name[mono_wait[1].co] == p then
        for k = 1, #mono_wait do
            mono_wait[k] = nil
        end
    end

    for _,wait in pairs(ED.wait) do
        t.removeby_name(wait,ED.name,p)
    end
    t.removeby_name(ED.pending_start,ED.name,p)
    t.removeby_name(ED.pending_running,ED.name,p)
    if #ED.pending_running < ED.lock_pending_running_idx then 
        ED.lock_pending_running_idx = #ED.pending_running
    end
        
    for k,v in pairs(ED.name) do
        if v == p then
            ED.name[k] = nil
        end
	end
end

function t.start_program(ED,name, func, arg, exit_cb)
    local p = {co = co.create(func, nil, exit_cb, ED.co_pool), arg = arg}
    ED.name[p.co] = name
    table.insert(ED.pending_start, 1, p) -- start_program按开启顺序加入执行队列
    return p
end

function t.tick_event(ED, waiting, e, actived)
    if waiting == nil then return end
    local out = {}
    collect_match(waiting, e, out)
    if not actived then
        return out[1]
    end
    for k = #out, 1, -1  do
        table.insert(actived, out[k])
    end
end

function t.get_co(ED, name)
    for k,v in pairs(ED.name) do
        if v == name then
            return k
        end
    end
end


function t.next_pending(ED)    
    local p

    p = table.remove(ED.pending_start)    
    if p then return p end

    local actived = ED.pending_running
    if ED.stop then
        for k,_ in pairs(actived) do
            actived[k] = nil
        end
    end
    if type(ED.lock_pending_running_idx) ~= 'number' then 
        ED.lock_pending_running_idx = -1
    end
    if type(ED.lock_event_queue_idx) ~= 'number' then 
        ED.lock_event_queue_idx = -1
    end
    while (ED.lock_pending_running_idx <= 0 and #actived == 0) or (ED.lock_pending_running_idx > 0 and #actived <= ED.lock_pending_running_idx) do
        local ev
        local idx
        if #ED.event <= ED.lock_event_queue_idx then
            ev = nil
        else
            if ED.lock_event_queue_idx > 0 then 
                idx = ED.lock_event_queue_idx + 1
            else
                idx = 1
            end
            ev = table.remove(ED.event, idx)
        end
        if ev == nil then
            break
        end
        t.tick_event(ED, ED.wait[ev[1]], ev, ED.pending_running)
    end

    if #actived <= ED.lock_pending_running_idx then 
        p = nil 
    else
        p = table.remove(actived)
    end
    if p == nil then return end
    ED.stop = p.stop
    return p
end

function t.tick(ED)
    if #ED.mono_wait > 0 then
        if ED.mono_run then
            local p = ED.mono_run
            ED.mono_run = nil
            resume_wait(ED, p)
        end
        return
    end
    while true do
        local p = t.next_pending(ED)
        if p then
            resume_wait(ED,p)
            if #ED.mono_wait > 0 then
                break
            end
        else
            break
        end
    end
end

----------------------------------------
function t.trig_event(ED,proc_cb, ev,p,...)
    if type(ev) ~= 'string' then return end
    ev = t.parse_event(ev)
    --local la = ED.last_arg
    local arg = {ev,p, ...}
    if #ED.mono_wait > 0 then
        local p = t.tick_event(ED, ED.mono_wait, arg)
        if p then
            ED.mono_run = p
        end
        return
    end
	table.insert(ED.event, arg) -- next frame
    if proc_cb then
	    t.tick_callback(ED,arg) -- immediate
    end
end

function t.parse_event(str)
	local pos = string.find(str,'@')
	if pos == nil then return str,'' end
	local ev = string.sub(str, 1, pos - 1)
	local txt = string.sub(str, pos + 1)
	return ev, txt
end

-------------------------------------------
function t.add_callback(ED, cb, earg)
    local ev = earg[1]
    local cbs = ED.callback[ev] or {}
    ED.callback[ev] = cbs
    earg.cb = cb
    table.insert(cbs, earg)
end

function t.remove_callback(ED, cb, ev_name)
    local cbs = ED.callback[ev_name]
    if cbs == nil then return end
    for k = #cbs,1, -1 do
        local v = cbs[k]
        if v.cb == cb and v[1] == ev_name then
            table.remove(cbs, k)
            break
        end
    end
end

function t.tick_callback(ED,e) -- event
    local ev = e[1]
    if ev == nil then return end
    local cbs = ED.callback[ev]
    if cbs == nil then return end
    local call = {}
    collect_match(cbs, e, call)
    for k = 1, #call do
        local GF = require 'gf'
        GF.setevent_info(e)
        call[k].cb(table.unpack(e,2))
    end
end

-- 清空事件队列
-- @params(table)  ED: 事件系统数据
function t.clear_event_queue(ED)
    ED.event = {}
end

function t.get_co(ED, name)
    for co,v in pairs(ED.name) do
        if v == name then
            return co
        end
	end
end

-- 锁定事件队列, 队列中未处理完毕的事件暂时不予以处理
function t.LockEventQueue(ED)
    ED.lock_event_queue_idx = #ED.event
    ED.lock_pending_running_idx = #ED.pending_running
end

-- 解锁事件队列
function t.UnlockEventQueue(ED)
    ED.lock_event_queue_idx = -1
    ED.lock_pending_running_idx = -1
end

return t