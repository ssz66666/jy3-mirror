--[[200e

]]
local G = require 'gf'
local c_shop = require 'c_shop'
local c_button = require 'c_button'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_shop'
tc.left = -640.000
tc.right = 640.000
tc.bottom = -360.000
tc.top = 360.000
tp = tc
	tc = G.loadUI('v_button')
	tp.addChild(tc)
	tc.name = '防下层点击'
	tc.left = -427.000
	tc.right = 427.000
	tc.bottom = -240.000
	tc.top = 240.000
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '背景'
	tc.left = -211.500
	tc.right = 211.500
	tc.bottom = -168.000
	tc.top = 168.000
	tc.img = 0x56160036
	tp = tc
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '按钮'
	tc.left = 66.000
	tc.right = 66.000
	tp = tc
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '结账'
		tc.left = 30.000
		tc.right = 104.000
		tc.bottom = -93.000
		tc.top = -59.000
		tc.alpha = 120
		tp = tc
		com = tp.c_button
		com['customsize'] =true
		com['img_hover'] =1443495957.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '退'
		tc.left = 98.500
		tc.right = 131.500
		tc.bottom = -128.500
		tc.top = -95.500
		tc.alpha = 100
		tp = tc
		com = tp.c_button
		com['customsize'] =true
		com['img_hover'] =1443495957.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '1'
		tc.pivotY = 1.000
		tc.left = -194.000
		tc.right = -172.000
		tc.bottom = 35.000
		tc.top = 135.000
		tc.visible = false
		tc.alpha = 120
		tp = tc
		com = tp.c_button
		com['customsize'] =true
		com['img_normal'] =0.000
		com['img_hover'] =1443495957.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '2'
		tc.pivotY = 1.000
		tc.left = -158.000
		tc.right = -136.000
		tc.bottom = 35.000
		tc.top = 135.000
		tc.visible = false
		tc.alpha = 120
		tp = tc
		com = tp.c_button
		com['customsize'] =true
		com['img_normal'] =0.000
		com['img_hover'] =1443495957.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '3'
		tc.pivotY = 1.000
		tc.left = -119.000
		tc.right = -97.000
		tc.bottom = 35.000
		tc.top = 135.000
		tc.visible = false
		tc.alpha = 120
		tp = tc
		com = tp.c_button
		com['customsize'] =true
		com['img_normal'] =0.000
		com['img_hover'] =1443495957.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '4'
		tc.pivotY = 1.000
		tc.left = -79.000
		tc.right = -57.000
		tc.bottom = 35.000
		tc.top = 135.000
		tc.visible = false
		tc.alpha = 120
		tp = tc
		com = tp.c_button
		com['customsize'] =true
		com['img_normal'] =0.000
		com['img_hover'] =1443495957.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '5'
		tc.pivotY = 1.000
		tc.left = -39.000
		tc.right = -17.000
		tc.bottom = 35.000
		tc.top = 135.000
		tc.visible = false
		tc.alpha = 120
		tp = tc
		com = tp.c_button
		com['customsize'] =true
		com['img_normal'] =0.000
		com['img_hover'] =1443495957.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '6'
		tc.pivotY = 1.000
		tc.left = -1.000
		tc.right = 21.000
		tc.bottom = 35.000
		tc.top = 135.000
		tc.visible = false
		tc.alpha = 120
		tp = tc
		com = tp.c_button
		com['customsize'] =true
		com['img_normal'] =0.000
		com['img_hover'] =1443495957.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '7'
		tc.pivotY = 1.000
		tc.left = 39.000
		tc.right = 61.000
		tc.bottom = 35.000
		tc.top = 135.000
		tc.visible = false
		tc.alpha = 120
		tp = tc
		com = tp.c_button
		com['customsize'] =true
		com['img_normal'] =0.000
		com['img_hover'] =1443495957.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '8'
		tc.pivotY = 1.000
		tc.left = 79.000
		tc.right = 101.000
		tc.bottom = 35.000
		tc.top = 135.000
		tc.visible = false
		tc.alpha = 120
		tp = tc
		com = tp.c_button
		com['customsize'] =true
		com['img_normal'] =0.000
		com['img_hover'] =1443495957.000
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '显示'
	tc.left = 66.000
	tc.right = 66.000
	tp = tc
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '1'
		tc.visible = false
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '价格'
			tc.pivotY = 1.000
			tc.left = -193.000
			tc.right = -173.000
			tc.bottom = -15.000
			tc.top = 45.000
			tc.text = '七百五'
			tc.wrap = true
			tc.font = 0x610f0000
			tc.style = 11
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '数量'
			tc.pivotY = 1.000
			tc.left = -196.000
			tc.right = -174.000
			tc.bottom = -45.000
			tc.top = -23.000
			tc.text = '0'
			tc.wrap = true
			tc.font = 0x61120000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '名称'
			tc.pivotY = 1.000
			tc.left = -194.000
			tc.right = -172.000
			tc.bottom = 35.000
			tc.top = 135.000
			tc.text = '牛黄解毒丸'
			tc.wrap = true
			tc.font = 0x61120000
			tc.align = 3
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '2'
		tc.left = 36.000
		tc.right = 36.000
		tc.visible = false
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '名称'
			tc.pivotY = 1.000
			tc.left = -194.000
			tc.right = -172.000
			tc.bottom = 35.000
			tc.top = 135.000
			tc.text = '牛黄解毒丸'
			tc.wrap = true
			tc.font = 0x61120000
			tc.align = 3
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '价格'
			tc.pivotY = 1.000
			tc.left = -193.000
			tc.right = -173.000
			tc.bottom = -15.000
			tc.top = 45.000
			tc.text = '七百五'
			tc.wrap = true
			tc.font = 0x610f0000
			tc.style = 11
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '数量'
			tc.pivotY = 1.000
			tc.left = -192.000
			tc.right = -170.000
			tc.bottom = -44.000
			tc.top = -22.000
			tc.text = '0'
			tc.wrap = true
			tc.font = 0x61120000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '3'
		tc.left = 75.000
		tc.right = 75.000
		tc.visible = false
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '名称'
			tc.pivotY = 1.000
			tc.left = -194.000
			tc.right = -172.000
			tc.bottom = 35.000
			tc.top = 135.000
			tc.text = '牛黄解毒丸'
			tc.wrap = true
			tc.font = 0x61120000
			tc.align = 3
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '价格'
			tc.pivotY = 1.000
			tc.left = -193.000
			tc.right = -173.000
			tc.bottom = -15.000
			tc.top = 45.000
			tc.text = '七百五'
			tc.wrap = true
			tc.font = 0x610f0000
			tc.style = 11
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '数量'
			tc.pivotY = 1.000
			tc.left = -191.000
			tc.right = -169.000
			tc.bottom = -43.000
			tc.top = -21.000
			tc.text = '0'
			tc.wrap = true
			tc.font = 0x61120000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '4'
		tc.left = 115.000
		tc.right = 115.000
		tc.visible = false
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '名称'
			tc.pivotY = 1.000
			tc.left = -194.000
			tc.right = -172.000
			tc.bottom = 35.000
			tc.top = 135.000
			tc.text = '牛黄解毒丸'
			tc.wrap = true
			tc.font = 0x61120000
			tc.align = 3
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '价格'
			tc.pivotY = 1.000
			tc.left = -193.000
			tc.right = -173.000
			tc.bottom = -15.000
			tc.top = 45.000
			tc.text = '七百五'
			tc.wrap = true
			tc.font = 0x610f0000
			tc.style = 11
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '数量'
			tc.pivotY = 1.000
			tc.left = -191.000
			tc.right = -169.000
			tc.bottom = -42.000
			tc.top = -20.000
			tc.text = '0'
			tc.wrap = true
			tc.font = 0x61120000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '5'
		tc.left = 155.000
		tc.right = 155.000
		tc.visible = false
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '名称'
			tc.pivotY = 1.000
			tc.left = -194.000
			tc.right = -172.000
			tc.bottom = 35.000
			tc.top = 135.000
			tc.text = '牛黄解毒丸'
			tc.wrap = true
			tc.font = 0x61120000
			tc.align = 3
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '价格'
			tc.pivotY = 1.000
			tc.left = -193.000
			tc.right = -173.000
			tc.bottom = -15.000
			tc.top = 45.000
			tc.text = '七百五'
			tc.wrap = true
			tc.font = 0x610f0000
			tc.style = 11
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '数量'
			tc.pivotY = 1.000
			tc.left = -191.000
			tc.right = -169.000
			tc.bottom = -42.000
			tc.top = -20.000
			tc.text = '0'
			tc.wrap = true
			tc.font = 0x61120000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '6'
		tc.left = 193.000
		tc.right = 193.000
		tc.visible = false
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '名称'
			tc.pivotY = 1.000
			tc.left = -194.000
			tc.right = -172.000
			tc.bottom = 35.000
			tc.top = 135.000
			tc.text = '牛黄解毒丸'
			tc.wrap = true
			tc.font = 0x61120000
			tc.align = 3
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '价格'
			tc.pivotY = 1.000
			tc.left = -193.000
			tc.right = -173.000
			tc.bottom = -15.000
			tc.top = 45.000
			tc.text = '七百五'
			tc.wrap = true
			tc.font = 0x610f0000
			tc.style = 11
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '数量'
			tc.pivotY = 1.000
			tc.left = -192.000
			tc.right = -170.000
			tc.bottom = -43.000
			tc.top = -21.000
			tc.text = '0'
			tc.wrap = true
			tc.font = 0x61120000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '7'
		tc.left = 233.000
		tc.right = 233.000
		tc.visible = false
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '名称'
			tc.pivotY = 1.000
			tc.left = -194.000
			tc.right = -172.000
			tc.bottom = 35.000
			tc.top = 135.000
			tc.text = '牛黄'
			tc.wrap = true
			tc.font = 0x61120000
			tc.align = 3
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '价格'
			tc.pivotY = 1.000
			tc.left = -193.000
			tc.right = -173.000
			tc.bottom = -15.000
			tc.top = 45.000
			tc.text = '七百五'
			tc.wrap = true
			tc.font = 0x610f0000
			tc.style = 11
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '数量'
			tc.pivotY = 1.000
			tc.left = -191.000
			tc.right = -169.000
			tc.bottom = -46.000
			tc.top = -24.000
			tc.text = '0'
			tc.wrap = true
			tc.font = 0x61120000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '8'
		tc.left = 273.000
		tc.right = 273.000
		tc.visible = false
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '名称'
			tc.pivotY = 1.000
			tc.left = -194.000
			tc.right = -172.000
			tc.bottom = 35.000
			tc.top = 135.000
			tc.text = '牛黄解毒丸'
			tc.wrap = true
			tc.font = 0x61120000
			tc.align = 3
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '价格'
			tc.pivotY = 1.000
			tc.left = -193.000
			tc.right = -173.000
			tc.bottom = -15.000
			tc.top = 45.000
			tc.text = '七百五'
			tc.wrap = true
			tc.font = 0x610f0000
			tc.style = 11
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '数量'
			tc.pivotY = 1.000
			tc.left = -193.000
			tc.right = -171.000
			tc.bottom = -48.000
			tc.top = -26.000
			tc.text = '0'
			tc.wrap = true
			tc.font = 0x61120000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '总价'
	tc.left = -89.000
	tc.right = -9.000
	tc.bottom = -86.000
	tc.top = -66.000
	tc.text = '0'
	tc.font = 0x61140000
	tc.align = 3
	tc.style = 7
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '总数'
	tc.left = -100.000
	tc.bottom = -50.000
	tc.top = 50.000
	tc.visible = false
	tc.text = '0'
	tc.font = 0x61200041
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '关闭菜单'
	tc.left = 304.000
	tc.right = 448.000
	tc.bottom = -198.000
	tc.top = -62.000
	tc.mouseEnabled = true
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.text = '关闭菜单'
	tc.wrap = true
	tc.font = 0x61400000
	tc.style = 8
	tp = tc
	tp = tp.parent
	--end
tp.c_shop = setmetatable({}, c_shop)
