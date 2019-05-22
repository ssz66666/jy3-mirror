--[[2034

]]
local G = require 'gf'
local c_organ = require 'c_organ'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_organ'
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
	tc.mouseEnabled = true
	tc.img = 0x56059002
	tp = tc
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '机关'
	tc.left = 25.000
	tc.right = 25.000
	tc.bottom = 5.000
	tc.top = 5.000
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'tab_1'
		tc.left = -267.500
		tc.right = -112.500
		tc.bottom = 77.500
		tc.top = 232.500
		tc.mouseEnabled = true
		tc.img = 0x56151001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'tab_2'
		tc.left = -107.500
		tc.right = 47.500
		tc.bottom = 77.500
		tc.top = 232.500
		tc.mouseEnabled = true
		tc.img = 0x56152001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'tab_3'
		tc.left = 52.500
		tc.right = 207.500
		tc.bottom = 77.500
		tc.top = 232.500
		tc.mouseEnabled = true
		tc.img = 0x56153001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'tab_4'
		tc.left = -267.500
		tc.right = -112.500
		tc.bottom = -82.500
		tc.top = 72.500
		tc.mouseEnabled = true
		tc.img = 0x56154001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'tab_5'
		tc.left = -107.500
		tc.right = 47.500
		tc.bottom = -82.500
		tc.top = 72.500
		tc.mouseEnabled = true
		tc.img = 0x56155001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'tab_6'
		tc.left = 52.500
		tc.right = 207.500
		tc.bottom = -82.500
		tc.top = 72.500
		tc.mouseEnabled = true
		tc.img = 0x56156001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'tab_7'
		tc.left = -267.500
		tc.right = -112.500
		tc.bottom = -242.500
		tc.top = -87.500
		tc.mouseEnabled = true
		tc.img = 0x56157001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'tab_8'
		tc.left = -107.500
		tc.right = 47.500
		tc.bottom = -242.500
		tc.top = -87.500
		tc.mouseEnabled = true
		tc.img = 0x56158001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'tab_9'
		tc.left = 52.500
		tc.right = 207.500
		tc.bottom = -242.500
		tc.top = -87.500
		tc.mouseEnabled = true
		tc.img = 0x56159001
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '说明'
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '文本'
		tc.pivotX = 0.000
		tc.pivotY = 1.000
		tc.left = 243.000
		tc.right = 583.000
		tc.bottom = -271.000
		tc.top = 229.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 2
		tc.text = '说明：[br]  [04]点击周围图片可以旋转部分图片，当且剩下只有一张图片方向不对的时候可以点击中间图片来做最后的旋转以完成；'
		tc.wrap = true
		tc.font = 0x61320000
		tc.align = 1
		tc.style = 8
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '完成'
	tc.left = 229.000
	tc.right = 429.000
	tc.bottom = -250.000
	tc.top = -150.000
	tc.mouseEnabled = true
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.text = '完成'
	tc.font = 0x613c0000
	tc.style = 8
	tp = tc
	tp = tp.parent
	--end
tp.c_organ = setmetatable({}, c_organ)
