--[[202b

]]
local G = require 'gf'
local c_dark = require 'c_dark'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_dark'
tc.left = -640.000
tc.right = 640.000
tc.bottom = -360.000
tc.top = 360.000
tc.color = 0xf5f5f5
tc.alpha = 0
tp = tc
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '背景'
	tc.left = -640.000
	tc.right = 640.000
	tc.bottom = -360.000
	tc.top = 360.000
	tc.mouseEnabled = true
	tc.alpha = 0
	tc.img = 0x56050059
	tp = tc
	tp = tp.parent
	--end
tp.c_dark = setmetatable({}, c_dark)
