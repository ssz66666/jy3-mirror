--[[2009

]]
local G = require 'gf'
local c_button = require 'c_button'
local c_addpoint = require 'c_addpoint'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_addpoint'
tc.left = -640.000
tc.right = 640.000
tc.bottom = -360.000
tc.top = 360.000
tp = tc
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = 'c1'
	tc.left = -428.500
	tc.right = 424.500
	tc.bottom = -231.000
	tc.top = 249.000
	tc.img = 0x56050058
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '底层'
	tc.left = -320.000
	tc.right = 320.000
	tc.bottom = -207.000
	tc.top = 197.000
	tc.img = 0x56030001
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '背景'
	tc.left = -210.400
	tc.right = 358.400
	tc.bottom = -183.800
	tc.top = 167.800
	tc.img = 0x56030002
	tp = tc
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '按钮'
	tp = tc
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '确定'
		tc.left = -65.000
		tc.right = 55.000
		tc.bottom = -129.200
		tc.top = -102.800
		tp = tc
		com = tp.c_button
		com['customsize'] =true
		com['img_normal'] =0.000
		com['img_hover'] =1444282426.000
		com['img_press'] =1444282425.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '重选'
		tc.left = -65.000
		tc.right = 55.000
		tc.bottom = -101.200
		tc.top = -74.800
		tp = tc
		com = tp.c_button
		com['btn_class'] =0.000
		com['customsize'] =true
		com['img_normal'] =0.000
		com['img_hover'] =1444282428.000
		com['img_press'] =1444282427.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '左'
		tc.left = 19.200
		tc.right = 40.800
		tc.bottom = -24.800
		tc.top = -3.200
		tp = tc
		com = tp.c_button
		com['customsize'] =true
		com['img_normal'] =0.000
		com['img_hover'] =1444282424.000
		com['img_press'] =1444282423.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '右'
		tc.left = 66.200
		tc.right = 87.800
		tc.bottom = -24.800
		tc.top = -3.200
		tc.scaleX = -1.000
		tp = tc
		com = tp.c_button
		com['customsize'] =true
		com['img_normal'] =0.000
		com['img_hover'] =1444282424.000
		com['img_press'] =1444282423.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '1'
		tp = tc
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = 'left'
			tc.left = -59.400
			tc.right = -42.600
			tc.bottom = 34.000
			tc.top = 58.000
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x5616001e
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['customsize'] =true
			com['img_normal'] =1444282398.000
			com['img_hover'] =1444282399.000
			com['img_press'] =1444282398.000
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = 'right'
			tc.left = -8.400
			tc.right = 8.400
			tc.bottom = 34.000
			tc.top = 58.000
			tc.scaleX = -1.000
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x5616001e
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['customsize'] =true
			com['img_normal'] =1444282398.000
			com['img_hover'] =1444282399.000
			com['img_press'] =1444282398.000
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '2'
		tp = tc
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = 'left'
			tc.left = -59.400
			tc.right = -42.600
			tc.bottom = 9.000
			tc.top = 33.000
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x5616001e
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['customsize'] =true
			com['img_normal'] =1444282398.000
			com['img_hover'] =1444282399.000
			com['img_press'] =1444282398.000
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = 'right'
			tc.left = -8.400
			tc.right = 8.400
			tc.bottom = 9.000
			tc.top = 33.000
			tc.scaleX = -1.000
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x5616001e
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['customsize'] =true
			com['img_normal'] =1444282398.000
			com['img_hover'] =1444282399.000
			com['img_press'] =1444282398.000
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '3'
		tp = tc
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = 'left'
			tc.left = -59.400
			tc.right = -42.600
			tc.bottom = -15.000
			tc.top = 9.000
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x5616001e
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['customsize'] =true
			com['img_normal'] =1444282398.000
			com['img_hover'] =1444282399.000
			com['img_press'] =1444282398.000
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = 'right'
			tc.left = -8.400
			tc.right = 8.400
			tc.bottom = -15.000
			tc.top = 9.000
			tc.scaleX = -1.000
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x5616001e
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['customsize'] =true
			com['img_normal'] =1444282398.000
			com['img_hover'] =1444282399.000
			com['img_press'] =1444282398.000
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '4'
		tp = tc
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = 'left'
			tc.left = -59.400
			tc.right = -42.600
			tc.bottom = -39.000
			tc.top = -15.000
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x5616001e
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['customsize'] =true
			com['img_normal'] =1444282398.000
			com['img_hover'] =1444282399.000
			com['img_press'] =1444282398.000
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = 'right'
			tc.left = -8.400
			tc.right = 8.400
			tc.bottom = -39.000
			tc.top = -15.000
			tc.scaleX = -1.000
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x5616001e
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['customsize'] =true
			com['img_normal'] =1444282398.000
			com['img_hover'] =1444282399.000
			com['img_press'] =1444282398.000
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '5'
		tp = tc
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = 'left'
			tc.left = -59.400
			tc.right = -42.600
			tc.bottom = -63.000
			tc.top = -39.000
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x5616001e
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['customsize'] =true
			com['img_normal'] =1444282398.000
			com['img_hover'] =1444282399.000
			com['img_press'] =1444282398.000
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = 'right'
			tc.left = -8.400
			tc.right = 8.400
			tc.bottom = -63.000
			tc.top = -39.000
			tc.scaleX = -1.000
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x5616001e
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['customsize'] =true
			com['img_normal'] =1444282398.000
			com['img_hover'] =1444282399.000
			com['img_press'] =1444282398.000
			tp = tp.parent
			--end
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '显示'
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '余点'
		tc.left = 33.000
		tc.right = 93.000
		tc.bottom = -65.000
		tc.top = -25.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '135'
		tc.font = 0x61240000
		tc.style = 3
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '1'
		tc.left = -55.000
		tc.right = 5.000
		tc.bottom = 26.000
		tc.top = 66.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '1'
		tc.font = 0x61240000
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '2'
		tc.left = -55.000
		tc.right = 5.000
		tc.bottom = 12.000
		tc.top = 32.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '1'
		tc.font = 0x61240000
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '3'
		tc.left = -55.000
		tc.right = 5.000
		tc.bottom = -22.000
		tc.top = 18.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '1'
		tc.font = 0x61240000
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '4'
		tc.left = -55.000
		tc.right = 5.000
		tc.bottom = -46.000
		tc.top = -6.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '1'
		tc.font = 0x61240000
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '5'
		tc.left = -55.000
		tc.right = 5.000
		tc.bottom = -70.000
		tc.top = -30.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '1'
		tc.font = 0x61240000
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '姓'
		tc.left = -114.000
		tc.right = 46.000
		tc.bottom = 80.000
		tc.top = 118.000
		tc.mouseEnabled = true
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.readOnly = false
		tc.font = 0x611e0000
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '名'
		tc.left = -114.000
		tc.right = 46.000
		tc.bottom = 54.000
		tc.top = 92.000
		tc.mouseEnabled = true
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.readOnly = false
		tc.font = 0x611e0000
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '图像'
	tc.left = 19.000
	tc.right = 89.000
	tc.bottom = 31.000
	tc.top = 117.000
	tc.img = 0x56081001
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '序号'
	tc.left = 24.000
	tc.right = 84.000
	tc.bottom = -34.000
	tc.top = 6.000
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.text = '1'
	tc.font = 0x61280000
	tc.style = 10
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = 'c2'
	tc.left = 233.250
	tc.right = 288.750
	tc.bottom = -227.500
	tc.top = -150.500
	tc.visible = false
	tc.img = 0x56040003
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = 'secret_order'
	tc.left = 52.000
	tc.right = 352.000
	tc.bottom = -201.000
	tc.top = -141.000
	tc.mouseEnabled = true
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.text = '密令'
	tc.font = 0x61400000
	tc.style = 8
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '密令'
	tc.left = 14.000
	tc.right = 414.000
	tc.bottom = 39.000
	tc.top = 239.000
	tc.mouseEnabled = true
	tc.visible = false
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.font = 0x61400000
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = 'secret'
	tc.left = -200.000
	tc.right = 200.000
	tc.bottom = -139.000
	tc.top = 61.000
	tc.mouseEnabled = true
	tc.visible = false
	tc.img = 0x56160020
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'c4'
		tc.left = -88.000
		tc.right = 88.000
		tc.bottom = 101.000
		tc.top = 145.000
		tc.img = 0x56160065
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'c5'
			tc.left = -87.000
			tc.right = 89.000
			tc.bottom = -21.000
			tc.top = 23.000
			tc.text = '请输入密令'
			tc.font = 0x611c0000
			tc.style = 5
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'c1'
		tc.left = -125.000
		tc.right = 125.000
		tc.bottom = -2.500
		tc.top = 52.500
		tc.img = 0x5603001e
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '文本'
		tc.left = -250.000
		tc.right = 250.000
		tc.bottom = -30.000
		tc.top = 80.000
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
		tc.left = -34.000
		tc.right = 32.000
		tc.bottom = -65.000
		tc.top = -43.000
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
tp.c_addpoint = setmetatable({}, c_addpoint)
