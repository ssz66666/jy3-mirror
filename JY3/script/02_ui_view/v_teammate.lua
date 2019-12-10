--[[2016

]]
local G = require 'gf'
local c_button = require 'c_button'
local c_teammate = require 'c_teammate'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_teammate'
tc.left = -426.500
tc.right = 426.500
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
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '显示'
	tc.bottom = -1.000
	tc.top = -1.000
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '背景'
		tc.left = -320.000
		tc.right = 320.000
		tc.bottom = -240.000
		tc.top = 240.000
		tc.img = 0x56160035
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '队友'
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '1'
		tc.left = -220.000
		tc.right = -120.000
		tc.bottom = -87.000
		tc.top = 13.000
		tc.mouseEnabled = true
		tc.img = 0x33069998
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '2'
		tc.left = -152.000
		tc.right = -52.000
		tc.bottom = -63.000
		tc.top = 37.000
		tc.mouseEnabled = true
		tc.img = 0x33069998
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '3'
		tc.left = -90.000
		tc.right = 10.000
		tc.bottom = -44.000
		tc.top = 56.000
		tc.mouseEnabled = true
		tc.img = 0x33069998
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '4'
		tc.left = -24.000
		tc.right = 76.000
		tc.bottom = -21.000
		tc.top = 79.000
		tc.mouseEnabled = true
		tc.img = 0x33069998
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '5'
		tc.left = 36.000
		tc.right = 136.000
		tc.bottom = 3.000
		tc.top = 103.000
		tc.mouseEnabled = true
		tc.img = 0x33069998
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '6'
		tc.left = 92.000
		tc.right = 192.000
		tc.bottom = 28.000
		tc.top = 128.000
		tc.mouseEnabled = true
		tc.img = 0x33069998
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '7'
		tc.left = -115.000
		tc.right = -15.000
		tc.bottom = -145.000
		tc.top = -45.000
		tc.mouseEnabled = true
		tc.img = 0x33069998
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '8'
		tc.left = -57.000
		tc.right = 43.000
		tc.bottom = -121.000
		tc.top = -21.000
		tc.mouseEnabled = true
		tc.img = 0x33069998
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '9'
		tc.left = -1.000
		tc.right = 99.000
		tc.bottom = -97.000
		tc.top = 3.000
		tc.mouseEnabled = true
		tc.img = 0x33069998
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '10'
		tc.left = 60.000
		tc.right = 160.000
		tc.bottom = -75.000
		tc.top = 25.000
		tc.mouseEnabled = true
		tc.img = 0x33069998
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '11'
		tc.left = 120.000
		tc.right = 220.000
		tc.bottom = -53.000
		tc.top = 47.000
		tc.mouseEnabled = true
		tc.img = 0x33069998
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '12'
		tc.left = 175.000
		tc.right = 275.000
		tc.bottom = -34.000
		tc.top = 66.000
		tc.mouseEnabled = true
		tc.img = 0x33069998
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '按钮'
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '1'
		tc.left = -243.000
		tc.right = -183.000
		tc.bottom = -117.000
		tc.top = -17.000
		tc.mouseEnabled = true
		tc.alpha = 0
		tc.img = 0x56000001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '2'
		tc.left = -172.000
		tc.right = -112.000
		tc.bottom = -98.000
		tc.top = 2.000
		tc.mouseEnabled = true
		tc.alpha = 0
		tc.img = 0x56000001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '3'
		tc.left = -108.000
		tc.right = -48.000
		tc.bottom = -65.000
		tc.top = 35.000
		tc.mouseEnabled = true
		tc.alpha = 0
		tc.img = 0x56000001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '4'
		tc.left = -45.000
		tc.right = 15.000
		tc.bottom = -52.000
		tc.top = 48.000
		tc.mouseEnabled = true
		tc.alpha = 0
		tc.img = 0x56000001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '5'
		tc.left = 22.000
		tc.right = 82.000
		tc.bottom = -28.000
		tc.top = 72.000
		tc.mouseEnabled = true
		tc.alpha = 0
		tc.img = 0x56000001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '6'
		tc.left = 77.000
		tc.right = 137.000
		tc.bottom = -5.000
		tc.top = 95.000
		tc.mouseEnabled = true
		tc.alpha = 0
		tc.img = 0x56000001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '7'
		tc.left = -138.000
		tc.right = -78.000
		tc.bottom = -177.000
		tc.top = -77.000
		tc.mouseEnabled = true
		tc.alpha = 0
		tc.img = 0x56000001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '8'
		tc.left = -77.000
		tc.right = -17.000
		tc.bottom = -152.000
		tc.top = -52.000
		tc.mouseEnabled = true
		tc.alpha = 0
		tc.img = 0x56000001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '9'
		tc.left = -20.000
		tc.right = 40.000
		tc.bottom = -133.000
		tc.top = -33.000
		tc.mouseEnabled = true
		tc.alpha = 0
		tc.img = 0x56000001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '10'
		tc.left = 40.000
		tc.bottom = -106.000
		tc.top = -6.000
		tc.mouseEnabled = true
		tc.alpha = 0
		tc.img = 0x56000001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '11'
		tc.left = 102.000
		tc.right = 162.000
		tc.bottom = -85.000
		tc.top = 15.000
		tc.mouseEnabled = true
		tc.alpha = 0
		tc.img = 0x56000001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '12'
		tc.left = 165.000
		tc.right = 225.000
		tc.bottom = -64.000
		tc.top = 36.000
		tc.mouseEnabled = true
		tc.alpha = 0
		tc.img = 0x56000001
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '子菜单'
	tc.left = -280.000
	tc.right = -280.000
	tc.bottom = -50.000
	tc.top = -50.000
	tc.visible = false
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '按钮'
		tc.left = -28.500
		tc.right = 28.500
		tc.bottom = -63.000
		tc.top = 63.000
		tc.img = 0x56160023
		tp = tc
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '1'
			tc.left = -26.000
			tc.right = 26.000
			tc.bottom = 44.500
			tc.top = 59.500
			tc.alpha = 120
			tp = tc
			com = tp.c_button
			com['customsize'] =true
			com['img_hover'] =1443495957.000
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '2'
			tc.left = -27.000
			tc.right = 25.000
			tc.bottom = 23.500
			tc.top = 38.500
			tc.alpha = 120
			tp = tc
			com = tp.c_button
			com['customsize'] =true
			com['img_hover'] =1443495957.000
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '3'
			tc.left = -27.000
			tc.right = 25.000
			tc.bottom = 2.500
			tc.top = 17.500
			tc.alpha = 120
			tp = tc
			com = tp.c_button
			com['customsize'] =true
			com['img_hover'] =1443495957.000
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '4'
			tc.left = -27.000
			tc.right = 25.000
			tc.bottom = -18.500
			tc.top = -3.500
			tc.alpha = 120
			tp = tc
			com = tp.c_button
			com['customsize'] =true
			com['img_hover'] =1443495957.000
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '5'
			tc.left = -27.000
			tc.right = 25.000
			tc.bottom = -39.500
			tc.top = -24.500
			tc.alpha = 120
			tp = tc
			com = tp.c_button
			com['customsize'] =true
			com['img_hover'] =1443495957.000
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '6'
			tc.left = -27.000
			tc.right = 25.000
			tc.bottom = -60.500
			tc.top = -45.500
			tc.alpha = 120
			tp = tc
			com = tp.c_button
			com['customsize'] =true
			com['img_hover'] =1443495957.000
			tp = tp.parent
			--end
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '属性'
	tc.left = 91.500
	tc.right = 290.500
	tc.bottom = -154.000
	tc.top = 182.000
	tc.visible = false
	tc.img = 0x56160024
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '头像'
		tc.left = -97.000
		tc.right = -57.000
		tc.bottom = 119.000
		tc.top = 165.000
		tc.img = 0x56080001
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '姓名'
		tc.left = -58.000
		tc.right = 122.000
		tc.bottom = 80.000
		tc.top = 120.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '半瓶神仙醋'
		tc.font = 0x61220000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '生命'
		tc.left = -60.000
		tc.right = 120.000
		tc.bottom = 64.000
		tc.top = 94.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '99999/99999'
		tc.font = 0x611e0000
		tc.align = 1
		tc.style = 11
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '内力'
		tc.left = -60.000
		tc.right = 120.000
		tc.bottom = 45.000
		tc.top = 75.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '99999/99999'
		tc.font = 0x611e0000
		tc.align = 1
		tc.style = 10
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '攻击'
		tc.left = -60.000
		tc.right = 120.000
		tc.bottom = 22.000
		tc.top = 62.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '99'
		tc.font = 0x61240000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '内功'
		tc.left = -60.000
		tc.right = 120.000
		tc.bottom = 3.000
		tc.top = 43.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '99'
		tc.font = 0x61240000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '搏击'
		tc.left = -60.000
		tc.right = 120.000
		tc.bottom = -16.000
		tc.top = 24.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '99'
		tc.font = 0x61240000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '拆招'
		tc.left = -60.000
		tc.right = 120.000
		tc.bottom = -35.000
		tc.top = 5.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '99'
		tc.font = 0x61240000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '闪躲'
		tc.left = -60.000
		tc.right = 120.000
		tc.bottom = -54.000
		tc.top = -14.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '99'
		tc.font = 0x61240000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '速度'
		tc.left = -60.000
		tc.right = 120.000
		tc.bottom = -73.000
		tc.top = -33.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '99'
		tc.font = 0x61240000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '好感度'
		tc.left = -40.000
		tc.right = 140.000
		tc.bottom = -92.000
		tc.top = -52.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '100'
		tc.font = 0x61240000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '武功一'
		tc.pivotX = 0.000
		tc.left = -63.000
		tc.right = 177.000
		tc.bottom = -121.000
		tc.top = -91.000
		tc.visible = false
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.font = 0x611e0000
		tc.align = 1
		tc.style = 10
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '武功'
		tc.pivotX = 0.000
		tc.pivotY = 1.000
		tc.left = -62.000
		tc.right = -62.000
		tc.bottom = -114.000
		tc.top = -98.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 3
		tc.font = 0x61190000
		tc.align = 1
		tc.lineSpace = -4
		tc.style = 10
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '武功二'
		tc.pivotX = 0.000
		tc.left = -63.000
		tc.right = 177.000
		tc.bottom = -137.000
		tc.top = -107.000
		tc.visible = false
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.font = 0x611e0000
		tc.align = 1
		tc.style = 10
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '武功三'
		tc.pivotX = 0.000
		tc.left = -63.000
		tc.right = 177.000
		tc.bottom = -153.000
		tc.top = -123.000
		tc.visible = false
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.font = 0x611e0000
		tc.align = 1
		tc.style = 10
		tp = tc
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '结束'
		tc.left = 57.000
		tc.right = 87.000
		tc.bottom = 125.000
		tc.top = 155.000
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x560a001d
			tp = tc
			end
			tp = tp.parent
			--end
		com = tp.c_button
		com['customsize'] =true
		com['img_normal'] =1443495965.000
		com['img_hover'] =1443495965.000
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'c1'
		tc.left = -7.000
		tc.right = 93.000
		tc.bottom = 22.000
		tc.top = 62.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '被动:'
		tc.font = 0x61240000
		tc.style = 3
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'c11'
		tc.left = -80.000
		tc.right = 20.000
		tc.bottom = 99.000
		tc.top = 139.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '经验:'
		tc.font = 0x61240000
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '经验'
		tc.left = -46.500
		tc.right = 116.500
		tc.bottom = 97.000
		tc.top = 137.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 1
		tc.text = '9999/10000'
		tc.font = 0x611e0000
		tc.style = 10
		tp = tc
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '被动'
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '1'
			tc.left = -12.000
			tc.right = 88.000
			tc.top = 40.000
			tc.mouseEnabled = true
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '破绽'
			tc.font = 0x61240000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '2'
			tc.left = -12.000
			tc.right = 88.000
			tc.bottom = -22.000
			tc.top = 18.000
			tc.mouseEnabled = true
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.font = 0x61240000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '3'
			tc.left = -12.000
			tc.right = 88.000
			tc.bottom = -44.000
			tc.top = -4.000
			tc.mouseEnabled = true
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.font = 0x61240000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '4'
			tc.left = -12.000
			tc.right = 88.000
			tc.bottom = -66.000
			tc.top = -26.000
			tc.mouseEnabled = true
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '2222'
			tc.font = 0x61240000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '5'
			tc.left = -12.000
			tc.right = 88.000
			tc.bottom = -88.000
			tc.top = -48.000
			tc.mouseEnabled = true
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '2222'
			tc.font = 0x61240000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '显示'
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'c1'
				tc.left = -187.500
				tc.right = -88.500
				tc.bottom = -152.500
				tc.top = -9.500
				tc.img = 0x56160044
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '文本'
				tc.left = -232.000
				tc.right = -42.000
				tc.bottom = -220.000
				tc.top = 56.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '123'
				tc.wrap = true
				tc.font = 0x61240000
				tc.align = 1
				tc.style = 2
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_button')
	tp.addChild(tc)
	tc.name = '离开'
	tc.left = 146.000
	tc.right = 190.000
	tc.bottom = -197.500
	tc.top = -124.500
	tc.alpha = 45
	tp = tc
	com = tp.c_button
	com['customsize'] =true
	com['img_normal'] =0.000
	com['img_hover'] =1443495957.000
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '关闭菜单'
	tc.left = 301.000
	tc.right = 445.000
	tc.bottom = -260.000
	tc.top = -124.000
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
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '副按钮'
	tc.bottom = -20.000
	tc.top = -20.000
	tc.visible = false
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '宴请'
		tc.left = 296.000
		tc.right = 446.000
		tc.bottom = 135.000
		tc.top = 185.000
		tc.mouseEnabled = true
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '宴请'
		tc.font = 0x613c0000
		tc.style = 8
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '馈赠'
		tc.left = 296.000
		tc.right = 446.000
		tc.bottom = 95.000
		tc.top = 145.000
		tc.mouseEnabled = true
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '馈赠'
		tc.font = 0x613c0000
		tc.style = 8
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '治疗'
		tc.left = 296.000
		tc.right = 446.000
		tc.bottom = 55.000
		tc.top = 105.000
		tc.mouseEnabled = true
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '治疗'
		tc.font = 0x613c0000
		tc.style = 8
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '切磋'
		tc.left = 296.000
		tc.right = 446.000
		tc.bottom = 15.000
		tc.top = 65.000
		tc.mouseEnabled = true
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '切磋'
		tc.font = 0x613c0000
		tc.style = 8
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '离队'
		tc.left = 296.000
		tc.right = 446.000
		tc.bottom = -25.000
		tc.top = 25.000
		tc.mouseEnabled = true
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '离队'
		tc.font = 0x613c0000
		tc.style = 8
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '领悟'
		tc.left = 296.000
		tc.right = 446.000
		tc.bottom = -65.000
		tc.top = -15.000
		tc.mouseEnabled = true
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '领悟'
		tc.font = 0x613c0000
		tc.style = 8
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '没事'
		tc.left = 297.000
		tc.right = 447.000
		tc.bottom = -105.000
		tc.top = -55.000
		tc.mouseEnabled = true
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '没事'
		tc.font = 0x613c0000
		tc.style = 8
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '百宝箱'
		tc.left = 348.000
		tc.right = 398.000
		tc.bottom = 193.000
		tc.top = 243.000
		tc.mouseEnabled = true
		tc.img = 0x560e010a
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = 'secret'
	tc.left = -192.500
	tc.right = 212.500
	tc.bottom = -71.500
	tc.top = 161.500
	tc.mouseEnabled = true
	tc.visible = false
	tc.img = 0x56160020
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'c1'
		tc.left = -329.500
		tc.right = 309.500
		tc.bottom = -285.000
		tc.top = 195.000
		tc.mouseEnabled = true
		tc.alpha = 0
		tc.img = 0x56000001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '提示框'
		tc.left = -85.000
		tc.right = 91.000
		tc.bottom = 43.000
		tc.top = 87.000
		tc.img = 0x56160065
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '提示'
			tc.left = -199.000
			tc.right = 201.000
			tc.bottom = -43.000
			tc.top = 45.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '请输入(1-31)数字'
			tc.font = 0x61240000
			tc.style = 5
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '提醒'
			tc.left = -396.000
			tc.right = 404.000
			tc.bottom = -153.000
			tc.top = -65.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '只有一次领悟机会，请谨慎使用！'
			tc.font = 0x61200000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'c1'
		tc.left = -126.000
		tc.right = 124.000
		tc.bottom = -21.500
		tc.top = 33.500
		tc.img = 0x5603001e
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '文本'
		tc.left = -253.000
		tc.right = 247.000
		tc.bottom = -50.000
		tc.top = 60.000
		tc.mouseEnabled = true
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.readOnly = false
		tc.font = 0x61300000
		tc.style = 4
		tp = tc
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '确定'
		tc.left = -39.000
		tc.right = 27.000
		tc.bottom = -92.000
		tc.top = -70.000
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x5616002c
			tp = tc
			end
			tp = tp.parent
			--end
		com = tp.c_button
		com['img_normal'] =1444282412.000
		com['img_hover'] =1444282414.000
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '版本'
	tc.left = -468.000
	tc.right = -268.000
	tc.bottom = -268.000
	tc.top = -168.000
	tc.text = 'ver3.02'
	tc.font = 0x61200041
	tc.style = 3
	tp = tc
	tp = tp.parent
	--end
tp.c_teammate = setmetatable({}, c_teammate)
