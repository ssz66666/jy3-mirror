--[[2020

]]
local G = require 'gf'
local c_lv_up = require 'c_lv_up'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_lv_up'
tc.left = -640.000
tc.right = 640.000
tc.bottom = -360.000
tc.top = 360.000
tp = tc
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = 'c1'
	tc.left = -308.000
	tc.right = -188.000
	tc.bottom = 151.500
	tc.top = 188.500
	tc.img = 0x56160049
	tp = tc
	tp = tp.parent
	--end
tp.c_lv_up = setmetatable({}, c_lv_up)
