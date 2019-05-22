--[[200d

]]
local G = require 'gf'
local c_button = require 'c_button'
local c_photo = require 'c_photo'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_photo'
tc.left = -640.000
tc.right = 640.000
tc.bottom = -360.000
tc.top = 360.000
tp = tc
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = 'c3'
	tc.left = -426.500
	tc.right = 426.500
	tc.bottom = -240.000
	tc.top = 240.000
	tc.mouseEnabled = true
	tc.img = 0x56050058
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '背景'
	tc.left = -320.000
	tc.right = 320.000
	tc.bottom = -240.000
	tc.top = 240.000
	tc.mouseEnabled = true
	tc.img = 0x56050054
	tp = tc
	tp = tp.parent
	--end
	tc = G.loadUI('v_button')
	tp.addChild(tc)
	tc.name = '按钮'
	tc.left = -320.000
	tc.right = 320.000
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
	tc.img = 0x560b0002
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
	tc.name = 'c1'
	tc.left = -424.000
	tc.right = -324.000
	tc.bottom = -167.000
	tc.top = 73.000
	tc.img = 0x56050057
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = 'c2'
	tc.left = -378.000
	tc.right = -328.000
	tc.bottom = -205.000
	tc.top = -135.000
	tc.img = 0x56040003
	tp = tc
	tp = tp.parent
	--end
tp.c_photo = setmetatable({}, c_photo)
