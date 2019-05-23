
local GF = require "gfbase"
local function new_index(t,k,v)
	local func = t['set_'..k]
	if type(func) == 'function' then
		local oldv = rawget(t, k .. '__')
		rawset(t, k ..'__', v)
		func(t,oldv)
		return
	end
	rawset(t,k,v)
end

local com_map = setmetatable({},{__mode = 'kv'})
_G.com_map = com_map
local function _index(t,k)
	if k == 'obj' then
		return com_map[t]
	end
	local ret = rawget(t, k .. '__')
	if ret ~= nil then return ret end
	return getmetatable(t)[k]
end

function GF.com(api)
	local t =  {} --setmetatable({}, com_meta)
	t.__index = _index
	t.__newindex = new_index
	return t
end