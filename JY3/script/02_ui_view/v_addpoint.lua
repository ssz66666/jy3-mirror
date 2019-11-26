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
	tc.left = -322.000
	tc.right = 358.000
	tc.bottom = -241.500
	tc.top = 231.500
	tc.img = 0x56030001
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '背景'
	tc.left = -253.400
	tc.right = 469.400
	tc.bottom = -284.800
	tc.top = 180.800
	tc.img = 0x56030002
	tp = tc
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '按钮'
	tc.bottom = -30.000
	tc.top = -30.000
	tp = tc
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '确定'
		tc.left = -56.000
		tc.right = 64.000
		tc.bottom = -178.200
		tc.top = -151.800
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
		tc.left = -56.000
		tc.right = 64.000
		tc.bottom = -141.200
		tc.top = -114.800
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
		tc.left = 39.500
		tc.right = 64.500
		tc.bottom = -42.500
		tc.top = -17.500
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
		tc.left = 99.500
		tc.right = 124.500
		tc.bottom = -41.500
		tc.top = -16.500
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
			tc.left = -62.000
			tc.right = -42.000
			tc.bottom = 35.000
			tc.top = 65.000
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
			tc.left = 5.000
			tc.right = 25.000
			tc.bottom = 35.000
			tc.top = 65.000
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
			tc.left = -62.000
			tc.right = -42.000
			tc.bottom = 3.000
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
			tc.left = 5.000
			tc.right = 25.000
			tc.bottom = 3.000
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
			tc.left = -62.000
			tc.right = -42.000
			tc.bottom = -29.000
			tc.top = 1.000
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
			tc.left = 6.600
			tc.right = 23.400
			tc.bottom = -26.000
			tc.top = -2.000
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
			tc.left = -62.000
			tc.right = -42.000
			tc.bottom = -61.000
			tc.top = -31.000
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
			tc.left = 5.000
			tc.right = 25.000
			tc.bottom = -61.000
			tc.top = -31.000
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
			tc.left = -62.000
			tc.right = -42.000
			tc.bottom = -93.000
			tc.top = -63.000
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
			tc.left = 5.000
			tc.right = 25.000
			tc.bottom = -93.000
			tc.top = -63.000
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
	tc.bottom = -30.000
	tc.top = -30.000
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '余点'
		tc.left = 51.000
		tc.right = 135.000
		tc.bottom = -89.000
		tc.top = -49.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 1
		tc.text = '135'
		tc.font = 0x61370000
		tc.style = 3
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '1'
		tc.left = -31.500
		tc.right = -8.500
		tc.bottom = 30.000
		tc.top = 70.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 1
		tc.text = '1'
		tc.font = 0x612d0000
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '2'
		tc.left = -31.500
		tc.right = -8.500
		tc.bottom = 8.000
		tc.top = 28.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 1
		tc.text = '1'
		tc.font = 0x612d0000
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '3'
		tc.left = -31.500
		tc.right = -8.500
		tc.bottom = -34.000
		tc.top = 6.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 1
		tc.text = '1'
		tc.font = 0x612d0000
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '4'
		tc.left = -31.500
		tc.right = -8.500
		tc.bottom = -66.000
		tc.top = -26.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 1
		tc.text = '1'
		tc.font = 0x612d0000
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '5'
		tc.left = -31.500
		tc.right = -8.500
		tc.bottom = -98.000
		tc.top = -58.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 1
		tc.text = '1'
		tc.font = 0x612d0000
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '姓'
		tc.left = -70.000
		tc.right = 12.000
		tc.bottom = 101.000
		tc.top = 139.000
		tc.mouseEnabled = true
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 1
		tc.text = '铁血'
		tc.readOnly = false
		tc.font = 0x61280000
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '名'
		tc.left = -109.000
		tc.right = 51.000
		tc.bottom = 66.000
		tc.top = 104.000
		tc.mouseEnabled = true
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '丹心'
		tc.readOnly = false
		tc.font = 0x61280000
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '图像'
	tc.pivotX = 0.000
	tc.pivotY = 1.000
	tc.left = 40.000
	tc.right = 127.000
	tc.bottom = 2.000
	tc.top = 111.000
	tc.img = 0x56081001
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '序号'
	tc.left = 52.000
	tc.right = 112.000
	tc.bottom = -80.000
	tc.top = -40.000
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.text = '1'
	tc.font = 0x613c0000
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
	tc.left = 86.000
	tc.right = 386.000
	tc.bottom = -219.000
	tc.top = -159.000
	tc.mouseEnabled = true
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.text = '密令'
	tc.font = 0x61500000
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
