--[[2018

]]
local G = require 'gf'
local c_button = require 'c_button'
local c_photo0 = require 'c_photo0'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_photo0'
tc.left = -640.000
tc.right = 640.000
tc.bottom = -360.000
tc.top = 360.000
tp = tc
	tc = G.loadUI('v_button')
	tp.addChild(tc)
	tc.name = '按钮'
	tc.left = -426.500
	tc.right = 426.500
	tc.bottom = -240.000
	tc.top = 240.000
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '图片'
	tc.left = -185.000
	tc.right = 185.000
	tc.bottom = -141.000
	tc.top = 141.000
	tc.visible = false
	tc.img = 0x560b0005
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'c3'
		tc.left = -185.000
		tc.right = 185.000
		tc.bottom = -141.000
		tc.top = 141.000
		tc.img = 0x560b0016
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '背景'
	tc.left = -320.000
	tc.right = 320.000
	tc.bottom = -240.000
	tc.top = 240.000
	tc.visible = false
	tc.img = 0x56000001
	tp = tc
	tp = tp.parent
	--end
tp.c_photo0 = setmetatable({}, c_photo0)
