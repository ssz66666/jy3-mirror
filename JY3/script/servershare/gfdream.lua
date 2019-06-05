
local GF = require('gfbase')
local co = require "co"
local js = require "cjson.c"
local const = require "servershare/const"
local notify_def = require "servershare/notify_define"
local nz = require "servershare/netmsg_zip"
local sproto_helper = require "servershare/sproto_helper"
GF.cacheData = {} -- cache game data

function GF.getAttrLevel()
	return {
	'属性层数_基础',
	'属性层数_装备和武学',
	'属性层数_技能',
	'属性层数_buff',
	}
end 

local estr
local enum
local save_phase
local save_type

table.insert(GF.update, function(t, k)
	if save_phase == 1 then
		if GF.GetCanSave() and not GF.call('动画是否正在播放') then
			GF.log('extrasave start')
			GF.ExtraSave(nil, save_type)
			GF.trig_event('extrasaved')
			save_phase = nil
			save_type = nil
			GF.log('extrasave over')
		else
			GF.log('cannot extrasaved', GF.GetCanSave(), GF.call('动画是否正在播放'))
			save_phase = nil
			save_type = nil
			GF.trig_event('extrasaved')
		end
		return
	end
	if t and t < 0 and GF.misc().战斗信息 and not GF.errorState then
		GF.Save(nil, true)
		return true
	end
end)

function GF.GetEnumValue(enumname)
	if estr == nil then 
		estr = require 'type/estrdream'
		enum = require 'type/enumdream'
	end
	return estr[enumname] or enum[enumname]
end 

function GF.ObjectCouldCopy(dbname)
	if GF.CouldCopyTable == nil then 
		GF.CouldCopyTable = {}
		for k,v in pairs(GF.GetEnumValue('estr_deepcopy_list')) do 
			GF.CouldCopyTable[v] = true 
		end 
	end
	return GF.CouldCopyTable[dbname]
end
function GF.deepCopyInst(orig, copy,ot)
	local key_table = {}
	ot = ot or {}
	ot[orig] = copy
	setmetatable(copy, getmetatable(orig))
	for k,v in pairs(orig) do
		table.insert(key_table, k)
	end
	table.sort(key_table, function(a, b) return tostring(a) < tostring(b) end)
	for i = 1, #key_table do
		local k = key_table[i]
		local v = orig[k]
		if k == 'class' then
			copy[k] = v
		else
			local v_type = type(v)
			if v_type == 'table' or v_type == 'userdata' then
				if ot[v] then
					rawset(copy,k,ot[v])					
				else
					if v.name and v.name ~= 0 and type(v.name) == 'number' then
						if v.name ~= v.root and GF.ObjectCouldCopy(v.dbname) then 
							copy[k] = GF.CopyInst(v,ot)
						else
							copy[k] = v
						end 
					else 
						rawset(copy,k,{})
						GF.deepCopyInst(v, copy[k], ot)
					end 
					
				end	
			else
				rawset(copy,k,v)
			end
		end
	end
end

--复制实例并加入数据库中(id不同)
function GF.CopyInst(o_inst,ot,o_inst_name)
	-- 赋值实例
	local itm = o_inst_name or {}
	local itemname
	if o_inst_name ~= nil then
		itemname  = itm.name
	end 
	GF.deepCopyInst(o_inst,itm,ot)
	if itemname ~= nil then 
		itm.name = itemname  
	end 

	-- 将实例加入数据库
	local key = o_inst.root
	local dbname = GF.GetTextOwner(key >> 16)
	local db = GF.DBLoad(dbname)
	if db then
		GF.QueryInit(dbname)
		if not o_inst_name  then 
			local inst_id = GF.NewTextID(dbname)
			local num = GF.QuerySize(dbname)
			itm.name = inst_id
			--GF.SetText(inst_id, GF.T(o_inst.name))
			-- itm.id = num + 1
			GF.newinst_cache[dbname][inst_id] = itm
			-- itm.class = nil 
		end 
	end 
	--itm.traceback = debug.traceback()
	return itm
end 

-- 属性默认值默认设置
-- 反弹倍数默认为0.1
local 属性默认值 = {
	['反弹倍数'] = 0.1,
}
-- TODO: to gfserver
function GF.InitAttr(o_role_角色, dbname)
	dbname = dbname or o_role_角色.dbname
	local db = GF.DBLoad(dbname)
	if db then
		GF.QueryInit(dbname)
		local ot = require('o_typedef')
		local def
		for k,v in pairs(ot[2]) do 
			if v.name == dbname then 
				def = v.define
				break
			end 
		end 
		for k = 1, #def do
			if type(def[k].type) == 'string' and string.find(def[k].type,'attr_') == 1 and (属性默认值[def[k].name] or o_role_角色[def[k].name] or def[k].type =='attr_life') then
                local 基础值 = o_role_角色[def[k].name]
				if o_role_角色.dbname == 'o_role' then 
					基础值 = 基础值 or 属性默认值[def[k].name]
				end 
				基础值 = 基础值 or 0
				o_role_角色[def[k].name] = GF.call('创建分层属性',5,基础值,def[k].name,o_role_角色)
				-- print(GF.T(o_role_角色.root),def[k].name,基础值,o_role_角色[def[k].name])
				if def[k].type=='attr_life' then 
					GF.call('属性有当前值',o_role_角色[def[k].name])
				end 
			end
		end 
		for k = 1, #def do
			if type(def[k].type) == 'string' and string.find(def[k].type,'attr_') == 1 and o_role_角色[def[k].name] then
                GF.call('设置属性需要更新',o_role_角色[def[k].name])
			end
		end
	end 
end 
 
function GF.misc(int_i)
	if  int_i  then 
		if int_i == 2 then 
			return GF.QueryIndex("o_misc_round",1)
		elseif int_i == 3 then 
			-- 这里直接报错
			print(debug.traceback())
			return nil
		end
	end
	return GF.QueryIndex("o_misc",1)
end

function GF.SetTag(g,k,v)
	local tag = GF.projdata
	tag[g] = tag[g] or {}
	tag[g][k] = v
end

function GF.GetTag(g,k)
	local tag = GF.projdata
	if tag[g] == nil then return 0 end
	if tag[g][k] == nil then return 0 end
	return tag[g][k]
end

function GF.AddTag(g,k,v)
	local tag = GF.projdata
	tag[g] = tag[g] or {}

	tag[g][k] = tag[g][k] or 0
	tag[g][k] = tag[g][k] + v
end


-- 格式化对话文字
-- @params  ...:事件信息
function GF.format_dialogue(...)
	local event_info = {...}

	if type(event_info[1]) == 'table' then
		-- 先判断该事件是不是对话类事件
		if GF.is_dialogue_event(event_info[1][1]) and GF.is_common_interact(event_info[1][2]) and GF.check_dialogue_function_info(...) then
			-- 如果剧情文字以前显示过, 则文字颜色改成灰色
			event_info[1][2] = GF.update_text_style(event_info[1][2])
		end
	else
		-- 先判断该事件是不是对话类事件
		if GF.is_dialogue_event(event_info[1]) and GF.is_common_interact(event_info[2]) and GF.check_dialogue_function_info(...) then
			-- 如果剧情文字以前显示过, 则文字颜色改成灰色
			event_info[2] = GF.update_text_style(event_info[2])
		end
	end
end

-- 检查文字以前是否显示过
-- @params  ...:事件信息
-- @return(boolean)  返回文字以前是否显示过
function GF.check_dialogue_function_info(...)
	local event_info = {...}
	local t_dialogue_info = {}
	local d_content
	local d_funs
	local d_line
	-- 获取所有对话类的记录
	t_dialogue_info = GF.misc().对话类记录
	-- 获取当前的对话类内容
	if event_info[1] then event_info = event_info[1] end
	if type(event_info[1]) == 'table' then
		d_content = event_info[1][2]
	else
		d_content = event_info[2]
	end
	-- 获取函数名, 行数信息
	d_funs, d_line = GF.get_dialogue_debug_info()

	-- 检查该信息是否已经被记录了
	if t_dialogue_info and d_content and d_funs and d_line then
		for i = 1, #t_dialogue_info do
			if t_dialogue_info[i].内容 == d_content and
				t_dialogue_info[i].函数名 == d_funs and
				t_dialogue_info[i].函数内行数 == d_line then
					return true
			end
		end
	end
	return false
end

-- 将这次显示过的文字记录下来
-- @params  ...:事件信息
function GF.save_dialogue_function_info(...)
	local event_info = {...}
	local e_name
	local d_content
	local d_funs
	local d_line

	-- 获取事件名称, 判断是不是对话类事件
	if type(event_info[1]) == 'table' then
		e_name = event_info[1][1]
	else
		e_name = event_info[1]
	end
	if not GF.is_dialogue_event(e_name) then
		return
	end

	if not GF.misc().对话类记录 then
		GF.misc().对话类记录 = {}
	end

	-- 获取对话内容
	if type(event_info[1]) == 'table' then
		d_content = event_info[1][2]
	else
		d_content = event_info[2]
	end

	-- 获取函数名, 行数信息
	d_funs, d_line = GF.get_dialogue_debug_info()

	GF.save_dialogue_and_case_info(d_content, d_funs, d_line)
end

-- 格式化选项文字
function GF.format_case_text(srED)
	local cc = co.running()
	local lst = {}
	srED.wait.__mono_wait = srED.mono_wait
	for _,wait in pairs(srED.wait) do
		for k = #wait, 1, -1 do
			local p = wait[k]
			if p.co == cc then
				table.insert(lst, p)
			end
		end		
	end		
	srED.wait.__mono_wait = nil

	for i = 1, #lst do
		local event
		local id = lst[i].id
		if type(lst[i][1]) == 'table' then
			event = lst[i][1]
		else
			event = lst[i]
		end
		if GF.is_dialogue_event(event[1]) then
			if GF.is_common_interact(event[2]) and GF.check_case_function_info(event, id) then
				-- 如果剧情文字以前显示过, 则文字颜色改成灰色
				event[2] = GF.update_text_style(event[2])
			end
		end
	end	
end	

-- 检查选项是否以前选过
-- @params(table)  event: 事件信息
-- @params(int)  id: 选项的 id
-- @return(boolean)  返回选项是否以前选过
function GF.check_case_function_info(event, id)
	local t_dialogue_info = {}
	local d_content
	local d_funs
	local d_line
	-- 获取所有对话类的记录
	t_dialogue_info = GF.misc().对话类记录
	-- 获取当前的对话类内容
	d_content = event[2]
	-- 获取函数名, 行数信息
	d_funs, d_line = GF.get_dialogue_debug_info()

	d_line = d_line - id

	-- 检查该信息是否已经被记录了
	if t_dialogue_info and d_content and d_funs and d_line then
		for i = 1, #t_dialogue_info do
			if t_dialogue_info[i].内容 == d_content and
				t_dialogue_info[i].函数名 == d_funs and
				t_dialogue_info[i].函数内行数 == d_line then
					return true
			end		
		end	
	end	
	return false
end

-- 将选择过的选项记录下来
-- @params(table)  co_p: co.yield() 返回的 table, 包含当前选择的 case 信息
function GF.save_case_function_info(co_p)
	local e_name
	local d_content
	local d_funs
	local d_line

	-- 获取事件名称, 判断是不是对话类事件
	if type(co_p.e[1]) == 'table' then
		e_name = co_p.e[1][1]
	else
		e_name = co_p.e[1]
	end
	if not GF.is_dialogue_event(e_name) then
		return
	end

	if not GF.misc().对话类记录 then
		GF.misc().对话类记录 = {}
	end

	-- 获取对话内容
	if type(co_p.e[1]) == 'table' then
		d_content = co_p.e[1][2]
	else
		d_content = co_p.e[2]
	end

	-- 获取函数名, 行数信息
	d_funs, d_line = GF.get_dialogue_debug_info()

	-- 根据总 case 数量, 当前行数, 当前选择的 case 的 id, 确定 case 的位置
	if d_line then
		d_line = d_line - co_p.id
	end
	GF.save_dialogue_and_case_info(d_content, d_funs, d_line)
end

-- 判断一个事件是不是对话类事件, 包括: 剧情对话, 选择, 角色交互 三种事件
-- @params(string)  e_name:事件的名称
-- @return(boolean)  返回该事件是不是对话类事件
function GF.is_dialogue_event(e_name)
	if e_name == '剧情对话' or e_name == '选择' or e_name == '角色交互' then
		return true
	else
		return false
	end
end

-- 判断一个事件是不是通常的角色交互事件
-- @params(string)  interact_content: 角色交互 事件的内容
-- @return(boolean)  返回该事件是不是通常的角色交互事件
function GF.is_common_interact(interact_content)
	if(interact_content and interact_content ~= "" and interact_content ~= "展示" and interact_content ~= "观察" and interact_content ~= "赠送" and interact_content ~= "切磋" and interact_content ~= "屠杀" and interact_content ~= "乞讨" and interact_content ~= "邀请" and interact_content ~= "请教" and interact_content ~= "结义" and interact_content ~= "结婚") then
		return true
	end
	return false
end

-- 更新文字的样式
-- @return(string)  返回更新后的文字
function GF.update_text_style(text, is_remove)
	local style = '[0e]'
	if is_remove then
		if string.sub(text, 1, #style) == style then
			text = string.sub(text, #style + 1, -1)
			text = string.gsub(text, style, '[02]')
		end
	else
		text = style..text
		text = string.gsub(text, '%[02%]', style)
	end
	return text
end

function GF.save_dialogue_and_case_info(d_content, d_funs, d_line)
	if not GF.misc().对话类记录 then
		GF.misc().对话类记录 = {}
	end
	if d_content and d_funs and d_line then
		local dialogue_info = {}
		dialogue_info.内容 = d_content
		dialogue_info.函数名 = d_funs
		dialogue_info.函数内行数 = d_line
		table.insert(GF.misc().对话类记录, dialogue_info)
	end
end

function GF.net_msg_pack(msg)
	local pack = sproto_helper.pack(msg.header, msg.data)
	return pack
end

-- 网络上行消息发送
function GF.netMessage(sfFunc, ...)
	local SF = require('sf')
	if SF and type(SF[sfFunc]) == 'function' then
		SF[sfFunc](...)
	end
end
-- 获取游戏版本号
function GF.getGameVersion()
	local version = require('version')
	return version.version
end
-- 网络下行消息处理
function GF.netprocess(msg)
	local header, data = sproto_helper.unpack(msg, #msg)
	msg = {
		header = header,
		data = data,
	}
	local SF = require('sf')
	SF.netProcess(msg)
end

function GF.slot_enum_to_name(estr_spine_node_slot)
	local map2slot = {}
    map2slot["原点"] = 'ref_origin'
    map2slot["头顶"] = 'ref_overhead'
    map2slot["头部"] = 'ref_head'
    map2slot["背部"] = 'ref_back'
    map2slot["胸部"] = 'ref_chest'
    map2slot["腰部"] = 'ref_waist'
    map2slot["腰部饰品挂点1"] = 'ref_waist_dec01'
    map2slot["腰部饰品挂点2"] = 'ref_waist_dec02'
    map2slot["胯部"] = 'ref_crotch'
    map2slot["右手挂点"] = 'ref_hand_right'
    map2slot["左手挂点"] = 'ref_hand_left'
    map2slot["右脚挂点"] = 'ref_foot_right'
    map2slot["左脚挂点"] = 'ref_foot_left'
    map2slot["武器右手挂点"] = 'ref_weapon_right'
    map2slot["武器左手挂点"] = 'ref_weapon_left'
    map2slot["武器双持挂点"] = 'ref_weapon_center'
    map2slot["武器闲置挂点"] = 'ref_weapon_idle'
    return map2slot[estr_spine_node_slot] or estr_spine_node_slot
end
function GF.CreateEffectObj(int_x,int_y,o_effect,scaley,o_node_目标,string_attachBone,boolean_fullscreen)
	o_node_目标.addChild(o_effect)
    o_effect.x = int_x
    o_effect.y = int_y
	if string_attachBone then 
		o_effect.attachBone = GF.slot_enum_to_name(string_attachBone)
	elseif boolean_fullscreen ~= true then 
		o_effect.scaleX = scaley*0.6
		o_effect.scaleY = scaley*0.6
	end 
    o_effect.alpha = 255
	o_effect.visible = false
	o_effect.autosize = 3
	if boolean_fullscreen then 
		o_effect.autosize = 0
		o_effect.anchor = 0x64006400
		o_effect.left = 0
		o_effect.right = 0
		o_effect.bottom = 0
		o_effect.top = 0
		o_effect.x = 0
    	o_effect.y = 0
	end 
    return o_effect
end 
function GF.CreateSpineObj(int_x,int_y,spine_name,scaley,o_node_目标,string_attachBone,boolean_fullscreen)
	local o_effect = GF.SpineQuad()
	local cur_img = (spine_name or 0) & 0xffffffff
	local anim = spine_name >> 32
	o_effect.img = cur_img 
	o_effect.animData = anim

	return GF.CreateEffectObj(int_x,int_y,o_effect,scaley,o_node_目标,string_attachBone,boolean_fullscreen)
end 

function GF.findSpineBestAnim(spine_node,string_actionname)
	if spine_node ~= nil and string_actionname ~= nil and spine_node.animIndex(string_actionname) == -1 then
		local int_actionname = tonumber(string.sub(string_actionname,-2))
		if int_actionname == nil then 
			return spine_node.animName(0)
		end 
		local string_first = string.sub(string_actionname,1,-4)
		local int_last = string.sub(string_actionname,-3,-3)
		for int_j=int_last,0,-1 do 
			for int_i=int_actionname,0,-1 do 
				local string_tempname = string.format("%s%d%02d",string_first,int_j,int_i)
				if spine_node.animIndex(string_tempname) ~= -1 then 
					return string_tempname
				end 
			end 
		end 
		return spine_node.animName(0)
	end 
	return string_actionname
end

function GF.trig_event_dreamland(ev, main_thread)
	if main_thread then
		if GF.get_isconnect() == true then
	 	end
	end
end

function GF.get_mem_ctrpy_config()
	return require 'memcrypt_config'
end

function GF.toint(v)
	return math.floor(tonumber(v))
end


-------------------------游戏调用API---------------------------
--------------------------------------------------------------
function GF.startGame(scriptid,index)
	GF.clearEventSave()
	print ('gfdream.startGame file =', index, 'is connect', GF.get_isconnect())
	GF.NewSave(scriptid,index)
	if GF.get_isconnect() then
		GF.req_save_new(scriptid,index)
	else
		GF.start_program('剧本_新建剧本',GF.static_config.random_seed,nil,scriptid)
	end
end

function GF.loadGame(scriptid, index)
	if GF.get_isconnect() then
		GF.req_load(scriptid, index, false)
	else
		GF.clearEventSave()
		local suc = GF.Load(scriptid, index, {['verified'] = true})
		if suc then
			GF.start_program('剧本_加载游戏剧本')
		else
			print ('读档失败！请确保该存档存在！')
			return false
		end
	end
	return true
end

function GF.clearEventSave()
	GF.mainThreadEventList = {}
	GF.EventSaveName = {}
end 
--------------------------------------------------------------




local DO_SAVE_UPLOAD = true
-- 通知服务端存档的逻辑
function GF.req_save(zip_buf)
	if DO_SAVE_UPLOAD == false then
		return 
	end
	local save_brief = GF.call('杂项_当前存档信息')
	--GF.start_program('存档云备份', save_brief, zip_buf)
	GF.call('存档云备份', save_brief, zip_buf)
end

-- 向服务端申请新建存档
-- @params(int)  idx: 存档编号
function GF.req_save_new(scriptid,idx)
	-- local saveBrief = GF.call('杂项_当前存档信息',idx)
	GF.netMessage('enter_game', scriptid)
end

function GF.req_delete(idx)
	local saveBrief = GF.call('杂项_当前存档信息',idx)
	if next(saveBrief) == nil then
		return
	end
	local roleID = saveBrief.角色ID
	-- GF.FullDeleteSave(idx)
	GF.netMessage('delete_role', roleID)
end 

-- 通知服务端读取存档
-- @params(int)  idx: 存档编号
function GF.req_load(scriptid,idx, need_download)
	print ('GF.req_load idx=', idx)
	local saveBrief = GF.call('杂项_当前存档信息',idx)
	print ('saveBrief ', saveBrief.角色ID, saveBrief.金钱, saveBrief.角色)
	GF.netMessage('enter_game', scriptid)
end

-- 准备额外存档, 一般用于战斗前的特定位置
-- @params(int)  type: 存档类型, 1 战斗前存档, 2 战斗开始存档
function GF.PrepareExtraSave(type)
	save_phase = 1
	save_type = type
end


-- 额外存档
-- @params(int)  idx: 存档编号
-- @params(int)  type: 存档类型, 1 战斗前存档, 2 战斗开始存档
function GF.ExtraSave(idx, type)
	local save_name
	if GF.misc().nosave then
		return
	end
	GF.Save(nil, true)
    GF.call('杂项_记录存档时间')
	GF.PrepareSave({['battle-save-type'] = type})
end

-- 读取额外存档
-- @params(int)  idx: 存档编号
-- @params(int)  type: 存档类型, 1 战斗前存档, 2 战斗开始存档
function GF.ExtraLoad(idx, type)
	local save_name
	if GF.misc().nosave then
		return
	end
	idx = idx or GF.GetCurSaveIdx()
	GF.SetCurSaveIdx(idx)
	local suc = GF.Load(GF.GetCurScript(), idx, {['battle-save-type'] = type})
	if suc then
		GF.start_program('剧本_加载游戏剧本')
	elseif suc == false then
		GF.log('[gfdream]->读取战斗前存档失败')
	end
	GF.trig_event("saved")
	GF.trig_event("extrasaved")
end

function GF.ComputerBezier(int_A,int_B,int_C,t)
	return (1-t)*(1-t)*int_A + 2*(1-t)*t*int_B+t*t*int_C
end

function GF.ComputerBezier4(int_A,int_B,int_C,int_D,t)
	return (1-t)*(1-t)*(1-t)*int_A + 3*(1-t)*(1-t)*t*int_B+3*(1-t)*t*t*int_C + t*t*t*int_D
end

-- 播放动画的接口, 如果播放的是待机动画, 则不允许改变循环播放属性
function GF.PlayAnimation(obj, anim, loop, time)
	if anim == 'prepare' or anim == 'idle' then
		loop = true
		if obj.animPlaying() == anim then
			return 0
		end
	end
	return GF.PlayAnim(obj, anim, loop, time)
end

function GF.GetFontStyleByName(number_id)
	local string_colorname = string.format("0x%x",number_id)
	local string_colornum = string.sub(string_colorname, #string_colorname-1, #string_colorname) 
	return '[' .. string_colornum .. ']'
end 
function GF.DataIsEqual(a,b,t_isdiff)
	t_isdiff = t_isdiff or {}
	if type(a) ~= type(b) then
		return false
	end
	if type(a) == "table" then
		local result = true
		for k, v in pairs(a) do
			if t_isdiff[k] ==nil and (not GF.DataIsEqual(b[k], v)) then
				return false
			end
		end
		for k, v in pairs(b) do
			if t_isdiff[k] ==nil and (not GF.DataIsEqual(a[k], v)) then
				return false
			end
		end
		return true
	else
		return a == b
	end
end 

function GF.string2list(str)
	local result = {}
	local lenInByte = string.len(str)
	local i = 1
	while i<=lenInByte do
		local curByte = string.byte(str, i)
		local byteCount = 1;
		if curByte>0 and curByte<=127 then
			byteCount = 1
		elseif curByte>=192 and curByte<223 then
			byteCount = 2
		elseif curByte>=224 and curByte<239 then
			byteCount = 3
		elseif curByte>=240 and curByte<=247 then
			byteCount = 4
		end
		local char = string.sub(str, i, i+byteCount-1)
		result[#result+1] = char
		i = i + byteCount 
	end 
	return result
end 

function GF.objectUnpersist(string_items)
    local co = require 'co'
	local uperms = {
		[1] = GF.o_meta,
        [2] = GF.new_meta,
	}
    return  eris.unpersist(uperms, string_items)
end

function GF.update_data_event_list(srED, p)
	if type(srED) ~= 'table' then 
		return 
	end

	if type(p) == 'string' then 
		GF.update_data_event_list_by_name(srED, p)
	elseif type(p) == 'table' then 
		GF.update_data_event_list_by_co(srED, p.co)
	end
end

function GF.update_data_event_list_by_name(srED, name)
	local wait_co

	for _, wait in pairs(srED.wait) do 
		for i = #wait, 1, -1 do
			wait_co = wait[i].co
			if srED.name[wait_co] == name then
				if wait[i][1] == '角色交互' or wait[i][1] == '选择角色' or wait[i][1] == '选择场景' then
					GF.remove_data_event(wait[i])
				end
			end
		end
	end
end

function GF.update_data_event_list_by_co(srED, p_co)
	for _, wait in pairs(srED.wait) do 
		for i = #wait, 1, -1 do
			if wait[i].co == p_co then
				if wait[i][1] == '角色交互' or wait[i][1] == '选择角色' or wait[i][1] == '选择场景' then
					GF.remove_data_event(wait[i])
				end
			end
		end
	end
end

function GF.remove_data_event(ev)
	local map_index
	local role_index
	local remove_list

	if type(ev) ~= 'table' then 
		return 
	end

	if ev[1] == '选择角色' then 
		map_index = 2
		role_index = 3
	elseif ev[1] == '角色交互' then 
		map_index = 3
		role_index = 4
	elseif ev[1] == '选择场景' then 
		map_index = 2
	end

	remove_list = {}
	if map_index and type(ev[map_index]) == 'table' then 
		table.insert(remove_list, ev[map_index])
	end
	if role_index and type(ev[role_index]) == 'table' then 
		table.insert(remove_list, ev[role_index])
	end

	for i = 1, #remove_list do 
		if type(remove_list[i].事件列表) == 'table' then 
			remove_list[i].事件列表[ev] = nil
		end
	end

	GF.call('城市_减少建筑角色引用计数', ev[map_index], ev[role_index], ev)
end
function GF.getColorfulText(string_contt)
	local string_ret = ''
	local _string_type = {'[10]','[11]','[12]','[13]','[14]','[0f]','[1a]','[19]','[18]','[17]'}
	string_contt = tostring(string_contt or "")
	for i=1,GF.getStrLen(string_contt) do
        GF.log(string_ret,_string_type[i],GF.utf8sub(string_contt,i,1))
        string_ret = string.format( "%s%s%s",string_ret,_string_type[i],GF.utf8sub(string_contt,i,1))
    end
    return string_ret
end

function GF.can_trig_net_event(...)
	local cannot_trig_net_event_list = {'等待下一帧', '任务等待下一帧', 'saved', 'extrasaved', '系统_计数式战斗前存档请求'}
	local ev = {...}

	if type(ev[1]) ~= 'string' then 
		return false
	end

	for i = 1, #cannot_trig_net_event_list do 
		if ev[1] == cannot_trig_net_event_list[i] then 
			return false
		end
	end

	return true
end

function GF.trig_net_event(...)
	local ev = {...}
	local ev_buff

	if GF.isServer() then 
		return 
	end
	ev = GF.SerializeEvent(...)
	if type(ev) ~= 'table' then 
		return 
	end
	if GF.get_clientstate() == _G.CLIENT_STATE.TOWN then 
	elseif GF.get_clientstate() == _G.CLIENT_STATE.GAME then
		-- print('--== GF.trig_net_event')
		-- GF.logtable(ev)
		-- ev_buff = eris.persist({}, ev) 
		-- GF.netMessage('trig_event', ev_buff) 
	end
end

if NEW_DATA_TEST_FZT == false then
	GF.NewInst = function()
		return {}
	end
	do return end
end
-----------------------------------------------------------------------------
print('user ldb data')
local ldb = require "ldb.c"
GF.ObjectCouldCopy = nil
GF.deepCopyInst = nil
GF.CopyInst = ldb.clone
GF.readAllData = nil
-- GF.deepcopy(orig, copy, ot, hide_error)
GF.GetDBDef = nil
function GF.QueryIndex(dbname, id)
	local lid = ldb.typeid(dbname)  | 0x1000
	if lid == nil then return 0 end
	return ldb.query( (lid << 16) | id)
end
GF.DBInst = nil
GF.addNewInst2Database = nil -- todo
GF.NewInst = ldb.new
GF.QueryName = ldb.query
GF.QueryStatic = nil -- todo
GF.CopyInstStatic = ldb.clone_static
GF.QuerySize = ldb.size
GF.DBTable = function(name)
	local r = ldb.query_all(name)
	local res = {}
	for i=1,#r do
		if ldb.not_empty(r[i]) then 
			res[#res+1] = r[i]
		end
	end
	return res
end
GF.DBDelete = ldb.delete
GF.DBAdd = nil -- todo
GF.getDBName = ldb.typename
GF.getDBDefName = nil -- todo
GF.getNewRoot = nil
GF.hasID = nil
GF.NewTextID = nil -- todo
GF.clearDynamic = ldb.clear
oldnext = next
next = function(t)
	if type(t) == 'table' then 
		return oldnext(t)
	elseif type(t) == 'userdata' then
		return ldb.not_empty(t)
	end  	
	return false
end
local old_table_unpack = table.unpack
local user_unpack
user_unpack = function(t,i)
	i = i or 1
	if t[i] then 
		return t[i],user_unpack(t,i+1)
	else
		return t[i]
	end
end
table.unpack = function(t,k)
	if type(t) == 'table' then 
		return old_table_unpack(t,k)
	elseif type(t) == 'userdata' then
		return user_unpack(t,k)
	end 
end
local quick_sort
quick_sort = function(t,func,l,r)
	local i = l
	local j = r
	local flag = i
	while i<j do
		while func(t[flag],t[j]) do 
			if flag == j then error('sort is error') end
			j = j-1 
		end 
		if flag < j then 
			t[j],t[flag] = t[flag],t[j]
			flag = j
			i = i+1
		end
		while func(t[i],t[flag]) do 
			if flag == i then error('sort is error') end
			i = i + 1 
		end 
		if i<flag then 
			t[i],t[flag] = t[flag],t[i]
			flag = i
			j = j-1
		end
	end
	if l<flag then 
		quick_sort(t,func,l,flag-1)
	end
	if flag < r then 
		quick_sort(t,func,flag+1,r)
	end
end
local defsortfunc = function(a,b)
	return a<b
end
local old_table_sort = table.sort
table.sort = function(t,func)
	if type(t) == 'table' then 
		old_table_sort(t,func)
	elseif type(t) == 'userdata' then
		quick_sort(t,func or defsortfunc,1,#t)
	end 
end

GF.call = function(func,ex,...)
	local f
	if GF.IsTable(func) then
		local a = {}
		for k=1,#func do
			local v = func[k]
			if type(v) == 'userdata' and ldb.is_call(func, k) then 
				a[k] = GF.call(v)
			else
				a[k] = v
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
		return GF.call(table.unpack(a))
	elseif type(func) == 'function' then
		f = func
	else
		f = GF.api[func]
	end
	local r1
	if f ~= nil then
		if GF.notify[func] == nil then
			return f(ex, ...)
		end
		r1 = f(ex, ...)
	else 
		if func ~= nil and GF.notify[func] == nil then 
			print('Warning: Cannot find call func ' .. tostring(func) .. '!!!')
			GF.log('Warning: Cannot find call func ' .. tostring(func) .. '!!!', debug.traceback())
		end 
	end
	GF.noti_call(func, ex, ...)
	return r1
end

local oldsetmetatable = setmetatable
setmetatable = function(t,v)
	if type(t) == 'userdata' then 
	else
		return oldsetmetatable(t,v)
	end
end

local oldremove = table.remove
table.remove = function(t,index)
	if type(t) == 'table' then 
		return oldremove(t,index)
	elseif type(t) == 'userdata' then
		index = index or #t
		return ldb.remove(t,index)
	end  	
end

local oldinsert = table.insert
table.insert = function(t,index,value)
	if type(t) == 'table' then 
		if value then 
			return oldinsert(t,index,value)
		else
			return oldinsert(t,index)
		end
	elseif type(t) == 'userdata' then
		if value then 
			return ldb.insert(t,index,value)
		else
			return ldb.insert(t,index)
		end
	end  	
end
function GF.GetTextOwner(id)
	if id == 0x1001 then
		return 'o_dialogue_system_actionlist'
	end
	if id == 0x1002 then
		return 'o_cheat_system_item'
	end
	if id == 0x1003 then
		return 'o_body'
	end
	if id == 0x1004 then
		return 'o_role'
	end
	if id == 0x1005 then
		return 'o_skill'
	end
	if id == 0x1006 then
		return 'o_citymap_system_map'
	end
	if id == 0x1007 then
		return 'o_citymap_system_city'
	end
	if id == 0x1008 then
		return 'o_Gut'
	end	
	if id == 0x1009 then
		return 'o_story'
	end		
	if id == 0x100a then
		return 'o_jm'
	end
	if id == 0x100b then
		return 'o_item'
	end
	if id == 0x100c then
		return 'o_hotkey'
	end
	if id == 0x100d then
		return 'o_love'
	end
	if id == 0x100e then
		return 'o_headevent'
	end
	if id == 0x100f then
		return 'o_misc'
	end	
	if id == 0x1010	then
		return 'o_checkhead'
	end
	if id == 0x1011	then
		return 'o_teammate'
	end
	if id == 0x1012	then
		return 'o_note'
	end
	if id == 0x1013	then
		return 'o_shop'
	end
	if id == 0x1014	then
		return 'o_CH'
	end
	if id == 0x1015	then
		return 'o_battle'
	end
	if id == 0x1016	then
		return 'o_files'
	end
	if id == 0x1017	then
		return 'o_achieve'
	end
	if id == 0x1018	then
		return 'o_equip'
	end
	if id == 0x1019	then
		return 'o_storehouse'
	end
	if id == 0x101a	then
		return 'o_notebook'
	end
	if id == 0x101b	then
		return 'o_newbody'
	end
	if id == 0x1f01	then
		return 'o_typedef'
	end
	if id == 0x1f02	then
		return 'o_image'
	end
	if id == 0x1f03	then
		return 'o_font'
	end
	if id == 0x1f04	then
		return 'o_event'
	end
	if id == 0x1f05	then
		return 'o_fontstyle'
	end
	if id == 0x1f09	then
		return 'o_animation'
	end
end
