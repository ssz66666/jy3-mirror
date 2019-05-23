
local GF = require "gfbase"
local c = require 'gcore.c'
GF.act = {}

local co = require 'co'
local es = require 'gevent'
local clED = es.newctx()
local manage_node = {}
local timer = {}
GF.__timer = timer

local function tick_timer(t)
	if t == nil then
		return
	end
	local all_a = {}
	while true do
		local a = table.remove(timer)
		--print('main loop', t, a)
		if not a then
			break
		end
		if a[1] > t then--time
			table.insert(timer,a)
			break
		else
			all_a[#all_a+1] = a[2]
		end
	end
	for i=1,#all_a do 
		co.resume(all_a[i])
	end 
end

table.insert(GF.update, function(t)
	tick_timer(t)
	es.tick(clED)
end)


function GF.wait_time(t)
	t = c.GetGameTime() + (t or 0)
	local rco = co.running()
	for k = 1,#timer do
		if timer[k][1] < t then
			table.insert(timer,k,{t,rco})
			rco = nil
			break
		end
	end
	if rco then table.insert(timer,{t,rco}) end
	co.yield()
end


local function spineCB(node, type, anim_name, arg)
	local cb = node.d.spine_cb
	if type == 5 then --event
		if cb[arg] and cb[arg][2] == anim_name then
			local fname = cb[arg][1]
			cb[arg] = nil
			GF.RunAction(fname)
		end
	end
	-- print(node, type, anim_name, arg,os.clock())
	if type == 2 then --end 2 -- 改为3 compelete
		for _,v in pairs(cb) do
			if v[2] == anim_name then
				GF.RunAction(v)
				cb[_] = nil
			end
		end
	end
end

local function parse_animev(event)
	if string.find(event,'0x') == 1 then
		local id = c.ToHexUINT(string.sub(event,1,10))
		event = string.sub(event,11)
		return event, id
	end
	return event
end

function GF.RegAnimCB(node, event, anim_name,cb) -- , ...
	event = parse_animev(event)
	anim_name = parse_animev(anim_name)
	if node.type == "SpineQuad" then
		node.setCallback(spineCB)
		node.d.spine_cb = node.d.spine_cb or {}
		node.d.spine_cb[event] = {cb,anim_name} --{cb, ...}
	end
end

function GF.PlayAnim(node, anim, loop, time)
	anim = parse_animev(anim)
	if node and node.type == "SpineQuad" then
		return node.playAnim(anim, loop, time)
	end
	return 0
end

function GF.Tween(attr,t,obj,v)
	if obj then
		local pk = { 0, obj[attr], 0,
			t ,v, 0 }
		obj.setAnimKeys(attr,2, pk)
	end
end


function GF.anim_event()
	local pk = { 0, obj[attr], 0,
		t ,v, 0 }
	obj.seRegAnimCBtAnimKeys(attr,2, pk)
end


function GF.TweenCom(attr,t,com,v)
	local pk = { 0, com[attr], 0,
		t ,v, 0 }

	com.obj.setAnimKeys({com, attr},2, pk)
end

function GF.shake(obj, sz, time)
	if type(sz) ~= 'number' then return end
	if sz <= 0 then return end
	local pkx = {}
	local pky = {}
	local x, y
	local k = 0
	for i = 0, time - 30, 40 do
		table.insert(pkx, i)
		table.insert(pkx, obj.x + GF.Random(-sz, sz) )
		table.insert(pkx, 0)
		table.insert(pky, i)
		table.insert(pky, obj.y + GF.Random(-sz, sz) )
		table.insert(pky, 0)
		k = k + 1
	end
	table.insert(pkx,time)
	table.insert(pkx,obj.x)
	table.insert(pkx,0)
	table.insert(pky,time)
	table.insert(pky,obj.y)
	table.insert(pky,0)
	obj.setAnimKeys('x', k + 1, pkx)
	obj.setAnimKeys('y', k + 1, pky)
end

local callback = {}

local function action_exit(ct)
	local p = callback[ct]
	if p then
		p.co = nil
		if p.cb then
			p.cb(ct)
		end
		callback[ct] = nil
	end
	local mg = manage_node[ct]
	if mg then
		for k,v in ipairs(mg) do
			v.removeFromParent()
		end
		manage_node[ct] = nil
	end
end

function GF.AddManageNode(node)
	local rco = co.running()
	manage_node[rco] = manage_node[rco] or setmetatable({}, co.weak_meta)
	table.insert(manage_node[rco], node)
end

function GF.RemoveAction(p)
	if type(p) == 'string' then
		for k = #timer, 1, - 1 do
			local co = timer[k][2]
			if callback[co] and callback[co].name == p then
				table.remove(timer,k)
				action_exit(co)
			end
		end
	elseif type(p) == 'table' and p.co then
		for k = #timer, 1, - 1 do
			local co = timer[k][2]
			if co == p.co then
				table.remove(timer,k)
				callback[co] = nil
				action_exit(co)
			end
		end
	end
	es.remove_wait(clED, p)
	if type(p) == 'table' and p.co then
		action_exit(p.co)
		p.co = nil
		GF.log('[GFAction]->RemoveAction',p,p.co,p.name)
	end
end

function GF.FindAction(anim_name)
	if type(anim_name) == 'string' then
		--for k = #timer, 1, - 1 do
		for k,v in pairs(callback) do
			if v.name == anim_name and v.co then
				return true
			end
		end
	end
	return false
end

function GF.RunAction(anim_name, ...)
	if anim_name == nil then return end
	local p = {...}
	p.name = anim_name
	local cb
	for k,v in pairs(p) do
		if type(v) == 'function' then
			cb = v
			p[k] = nil
			break
		end
	end
	if type(anim_name) ~= 'string' then
		return GF.RunAction(table.unpack(anim_name))
	end
	local anim = GF.act[anim_name]
	local ct
	if anim then
		ct = co.create(anim, p, action_exit, clED.co_pool)
		if p then
			callback[ct] = p
		end
		p.co = ct
		p.cb = cb
		p.name = anim_name
		co.resume(ct, ...)
	end
	return p
end

function GF.CallAction(func,...)
	if type(func) == 'table' then
		return GF.CallAction(table.unpack(func))
	end
	local f = GF.act[func]
	if f ~= nil then
		return f(...)
	end
end

function GF.action_trigevent(...)
	GF.log('action_trigevent',...)
	es.trig_event(clED,true, ...)
end

function GF.action_evinfo()
	local info = clED.info
	if info then
		return table.unpack(info,2)
	end
end

function GF.action_wait1(func,...)
	GF.log('action_wait1',func)
	local noti_func = es.parse_event(func)
	GF.action_case(1,func,...)
	local p = co.yield()
	clED.info = p.e
	es.remove_wait(clED, p)
end

function GF.action_case(id,...)
	-- if is_uncase(id) then return end
	local p = {...}
	for k,v in pairs(p) do
		if type(v) == 'function' then
			p.cond = v
			p[k] = nil
			break
		end
	end
	p.id = id
    p.co = co.running()
	es.add_wait(clED, p)
	return p
end

function GF.action_wait_case()
	local p = co.yield()
	clED.info = p.e
	return p.id
end

function GF.action_status(p)
	if type(p) == 'table' and p.co then
		return co.status(p.co)
	end
	return nil
end

function GF.running_co_is_action()
	return callback[co.running()]
end 