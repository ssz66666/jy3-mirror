--[[2038

]]
local G = require 'gf'
local c_button = require 'c_button'
local c_select_magic = require 'c_select_magic'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_select_magic'
tc.left = -640.000
tc.right = 640.000
tc.bottom = -360.000
tc.top = 360.000
tp = tc
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '背景'
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'c1'
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
		tc.name = 'c2'
		tc.left = -320.000
		tc.right = 320.000
		tc.bottom = -240.000
		tc.top = 240.000
		tc.color = 0xbac9c2
		tc.alpha = 180
		tc.img = 0x56160020
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '说明'
		tc.pivotX = 0.000
		tc.left = -223.000
		tc.right = 689.000
		tc.bottom = -176.000
		tc.top = -116.000
		tc.mouseEnabled = true
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 1
		tc.text = '点击骰子抽选被动，按确定结束选择'
		tc.font = 0x61380000
		tc.style = 3
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '标签'
		tc.pivotX = 0.000
		tc.left = -295.000
		tc.right = 55.000
		tc.bottom = -36.000
		tc.top = 284.000
		tc.mouseEnabled = true
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 2
		tc.text = '被动一：[br]被动二:[br]被动三:[br]被动四:'
		tc.font = 0x61500000
		tc.align = 1
		tc.style = 8
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '按钮'
	tp = tc
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '接受'
		tc.left = -50.000
		tc.right = 30.000
		tc.bottom = -203.000
		tc.top = -173.000
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x5616002c
			tp = tc
			end
			tp = tp.parent
			--end
		com = tp.c_button
		com['customsize'] =true
		com['img_normal'] =1444282412.000
		com['img_hover'] =1444282414.000
		com['img_press'] =1444282412.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '重选'
		tc.left = 183.000
		tc.right = 243.000
		tc.bottom = 86.000
		tc.top = 146.000
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x56100006
			tp = tc
			end
			tp = tp.parent
			--end
		com = tp.c_button
		com['customsize'] =true
		com['img_normal'] =1443889158.000
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '被动'
	tc.pivotX = 0.000
	tc.pivotY = 1.000
	tc.left = -69.000
	tc.right = 12.000
	tc.bottom = -118.000
	tc.top = 202.000
	tc.mouseEnabled = true
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.autosize = 3
	tc.text = '无[br]无[br]无[br]无'
	tc.font = 0x61500000
	tc.align = 1
	tc.style = 6
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '被动说明'
	tc.pivotX = 0.000
	tc.pivotY = 1.000
	tc.left = -294.000
	tc.right = 902.000
	tc.bottom = -307.000
	tc.top = 38.000
	tc.mouseEnabled = true
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.text = '无[br]无[br]无[br]无'
	tc.wrap = true
	tc.font = 0x61340000
	tc.align = 1
	tc.style = 5
	tp = tc
	tp = tp.parent
	--end
tp.c_select_magic = setmetatable({}, c_select_magic)
