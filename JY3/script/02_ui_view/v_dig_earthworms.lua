--[[202e

]]
local G = require 'gf'
local c_dig_earthworms = require 'c_dig_earthworms'
local c_button = require 'c_button'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_dig_earthworms'
tc.left = -640.000
tc.right = 640.000
tc.bottom = -360.000
tc.top = 360.000
tp = tc
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '前景'
	tc.left = -427.000
	tc.right = 427.000
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
	tc.img = 0x56059009
	tp = tc
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '按钮'
	tc.visible = false
	tp = tc
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '点击'
		tc.left = -315.000
		tc.right = -255.000
		tc.bottom = 192.500
		tc.top = 237.500
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '图片'
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '五星'
		tc.left = -305.000
		tc.right = -265.000
		tc.bottom = 195.000
		tc.top = 235.000
		tc.visible = false
		tc.img = 0x56160073
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '时间'
	tc.left = 272.000
	tc.right = 472.000
	tc.bottom = 154.000
	tc.top = 254.000
	tc.mouseEnabled = true
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.text = '15'
	tc.font = 0x613c0000
	tc.style = 3
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '次数'
	tc.left = 273.000
	tc.right = 473.000
	tc.bottom = -36.000
	tc.top = 84.000
	tc.mouseEnabled = true
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.text = '剩余次数   20'
	tc.wrap = true
	tc.font = 0x61300000
	tc.style = 3
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '数量'
	tc.left = 270.000
	tc.right = 470.000
	tc.bottom = -206.000
	tc.top = -106.000
	tc.mouseEnabled = true
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.text = '蚯蚓数量[br][01]   0   '
	tc.font = 0x61300000
	tc.align = 1
	tc.style = 8
	tp = tc
	tp = tp.parent
	--end
tp.c_dig_earthworms = setmetatable({}, c_dig_earthworms)
