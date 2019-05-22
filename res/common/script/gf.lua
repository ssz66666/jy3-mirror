local GF = require 'gfbase'
local c = require 'gcore.c'
setmetatable(GF,{ __index = c})

require 'gfmemcrypt'
require 'gfsave'
require 'gfdata'
require 'gfarray'
require 'gfutil'
require 'gfcall'
require 'gflog'
require 'gftime'
require "misc"
-- 
require 'gfaction'
require 'gfcom'
require 'gfclient'
require 'gfgit'
require 'gfview'
require 'gfcrypt'


local _ext = {}
local _dir = require "dir"

_ext[0x20000000] 	= ".mcf"
_ext[0x30000000] 	= ".swf"
_ext[0x40000000] 	= ".mp3"
_ext[0x50000000] 	= ".png"
_ext[0x60000000] 	= ".sys"
_ext[0x70000000] 	= ".ttf"
_ext[0x80000000] 	= ".png" -- spine
_ext[0x90000000] 	= ".tmx"
_ext[0xa0000000] 	= ".avi"
_ext[0xd0000000] 	= ".lua"
g_ext = _ext

_dir[0x01000000] = "scripts"
_dir[0x02000000] = "fonts"
_dir[0x03000000] = "framelist"
_dir[0x04000000] = "particle"
_dir[0x05000000] = "spine"
_dir[0x06000000] = "image"
_dir[0x08000000] = "shader"
_dir[0x09000000] = "audio"
_dir[0x0a000000] = "video"
g_dir = _dir

_dir[0x06ff0000] = "image/editor"

_dir[0x01010000] = "script/01_data"
_dir[0x01020000] = "script/02_ui_view"
_dir[0x01030000] = "script/03_ui_component"
_dir[0x01040000] = "script/04_program"
_dir[0x01050000] = "script/05_anim"
_dir[0x01060000] = "script/06_notify"

function DB_EVAL(str)
	str = string.gsub(str,'%[db=[^%]]+%]', function(k)
		local cur_t = nil
		local db = nil
		k = string.sub(k,5,-2)
		for str in string.gmatch(k, '[^%.]+') do
			if cur_t == false then
			elseif cur_t == nil then
				cur_t = c.ToHexUINT(str)
				db = cur_t
			elseif type(cur_t) == 'number' then
				local tab = GF.QueryName(cur_t)
				if tab then
					cur_t = tab[str] 
				else
					cur_t = false
				end
			else
				cur_t = cur_t[str] or cur_t[tonumber(str)]
			end
		end
		if cur_t == db then
			return c.T(cur_t)
		elseif type(cur_t) == 'string' then
			return cur_t
		elseif type(cur_t) == 'number' then
			return tostring(cur_t)
		end
		return ''
	end)
	return str
end

function GF.main(t)
	for k, v in ipairs(GF.update) do
		if v(t, k) then
			return
		end
	end
	-- if GF.testID and GF.testID >= 0 then
	-- 	-- 通知测试服务端循环
	-- 	c.RSCall(GF.testID, 'mainloop', '')
	-- end
end

return GF
