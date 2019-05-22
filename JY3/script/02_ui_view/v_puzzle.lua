--[[202d

]]
local G = require 'gf'
local c_puzzle = require 'c_puzzle'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_puzzle'
tc.left = -427.000
tc.right = 427.000
tc.bottom = -240.000
tc.top = 240.000
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
	tc.img = 0x56059002
	tp = tc
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '按钮'
	tc.left = -4.000
	tc.right = -4.000
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '拼图'
		tc.left = -306.000
		tc.right = -234.000
		tc.bottom = 183.000
		tc.top = 237.000
		tc.mouseEnabled = true
		tc.visible = false
		tc.img = 0x56170013
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '闪光'
		tc.left = -46.000
		tc.right = 46.000
		tc.bottom = -33.000
		tc.top = 33.000
		tc.mouseEnabled = true
		tc.img = 0x33010001
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '完成'
	tc.left = 272.000
	tc.right = 472.000
	tc.bottom = -50.000
	tc.top = 50.000
	tc.mouseEnabled = true
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.text = '完成'
	tc.font = 0x613c0000
	tc.style = 8
	tp = tc
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
	tc.text = '25:00'
	tc.font = 0x613c0000
	tc.style = 3
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '参考图'
	tc.left = -320.000
	tc.right = 320.000
	tc.bottom = -240.000
	tc.top = 240.000
	tc.mouseEnabled = true
	tc.visible = false
	tc.img = 0x56059003
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '参考'
	tc.left = 303.000
	tc.right = 453.000
	tc.bottom = -247.000
	tc.top = -97.000
	tc.mouseEnabled = true
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.text = '参考开关'
	tc.wrap = true
	tc.font = 0x613c0000
	tc.style = 8
	tp = tc
	tp = tp.parent
	--end
tp.c_puzzle = setmetatable({}, c_puzzle)
