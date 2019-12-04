--[[2005

]]
local G = require 'gf'
local c_button = require 'c_button'
local c_note = require 'c_note'
local c_citymap_system_map = require 'c_citymap_system_map'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_citymap_system_map'
tc.left = -320.000
tc.right = 320.000
tc.bottom = -240.000
tc.top = 240.000
tp = tc
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '前景'
	tc.left = -426.500
	tc.right = 426.500
	tc.bottom = -239.500
	tc.top = 239.500
	tc.img = 0x56050054
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
	tc.img = 0x56050002
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '标题'
	tc.left = -140.000
	tc.right = 540.000
	tc.bottom = 172.143
	tc.top = 227.857
	tc.visible = false
	tc.text = '地图名称'
	tc.font = 0x60240000
	tc.align = 4
	tp = tc
	tp = tp.parent
	--end
	tc = G.Entity()
	tp.addChild(tc)
	tc.name = '城市'
	tc.pivotX = 0.000
	tc.pivotY = 0.000
	tc.right = 640.000
	tc.top = 480.000
	tc.anchor = 0x0
	tp = tc
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '主菜单'
	tc.visible = false
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '状态'
		tc.left = 139.500
		tc.right = 314.500
		tc.bottom = 168.000
		tc.top = 236.000
		tc.img = 0x560a0001
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '头像'
			tc.left = -83.000
			tc.right = -33.000
			tc.bottom = -28.000
			tc.top = 30.000
			tc.img = 0x56080001
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '血条'
			tc.pivotX = 0.000
			tc.left = -28.000
			tc.right = 83.000
			tc.bottom = 15.000
			tc.top = 25.000
			tc.mouseEnabled = true
			tc.img = 0x560a0015
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '蓝条'
			tc.pivotX = 0.000
			tc.left = -28.000
			tc.right = 83.000
			tc.bottom = 1.000
			tc.top = 11.000
			tc.img = 0x560a0016
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '体力'
			tc.pivotX = 0.000
			tc.left = -28.000
			tc.right = -28.000
			tc.bottom = -11.000
			tc.top = -1.000
			tc.img = 0x560a0017
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '菜单'
		tc.left = 23.500
		tc.right = 316.500
		tc.bottom = -237.500
		tc.top = -188.500
		tc.img = 0x560a0002
		tp = tc
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '1'
			tc.left = -84.000
			tc.right = -46.000
			tc.bottom = -23.000
			tc.top = 15.000
			tp = tc
			com = tp.c_button
			com['img_normal'] =0.000
			com['img_hover'] =1443495942.000
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '2'
			tc.left = -47.000
			tc.right = -9.000
			tc.bottom = -23.000
			tc.top = 15.000
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '图片'
				tc.left = -19.000
				tc.right = 19.000
				tc.bottom = -19.000
				tc.top = 19.000
				tc.visible = false
				tc.img = 0x560a0009
				tp = tc
				tp = tp.parent
				--end
			com = tp.c_button
			com['img_normal'] =0.000
			com['img_hover'] =1443495944.000
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '3'
			tc.left = -10.000
			tc.right = 28.000
			tc.bottom = -23.000
			tc.top = 15.000
			tp = tc
			com = tp.c_button
			com['img_normal'] =0.000
			com['img_hover'] =1443495946.000
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '5'
			tc.left = 27.000
			tc.right = 65.000
			tc.bottom = -23.000
			tc.top = 15.000
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '图片'
				tc.left = -19.000
				tc.right = 19.000
				tc.bottom = -19.000
				tc.top = 19.000
				tc.visible = false
				tc.img = 0x560a000d
				tp = tc
				tp = tp.parent
				--end
			com = tp.c_button
			com['img_normal'] =0.000
			com['img_hover'] =1443495948.000
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '4'
			tc.left = 64.000
			tc.right = 102.000
			tc.bottom = -23.000
			tc.top = 15.000
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '图片'
				tc.left = -19.000
				tc.right = 19.000
				tc.bottom = -19.000
				tc.top = 19.000
				tc.visible = false
				tc.img = 0x560a000f
				tp = tc
				tp = tp.parent
				--end
			com = tp.c_button
			com['img_normal'] =0.000
			com['img_hover'] =1443495950.000
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '6'
			tc.left = 101.000
			tc.right = 139.000
			tc.bottom = -23.000
			tc.top = 15.000
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '图片'
				tc.left = -19.000
				tc.right = 19.000
				tc.bottom = -19.000
				tc.top = 19.000
				tc.visible = false
				tc.img = 0x560a0011
				tp = tc
				tp = tp.parent
				--end
			com = tp.c_button
			com['img_normal'] =0.000
			com['img_hover'] =1443495952.000
			tp = tp.parent
			--end
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '地图'
	tc.left = -313.000
	tc.right = -189.000
	tc.bottom = 212.500
	tc.top = 239.500
	tc.visible = false
	tc.img = 0x560a003d
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '名称'
		tc.pivotX = 0.000
		tc.left = -48.000
		tc.right = 150.000
		tc.bottom = -18.000
		tc.top = 22.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '？？？？'
		tc.font = 0x61240000
		tc.style = 5
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_button')
	tp.addChild(tc)
	tc.name = '休息'
	tc.left = 274.500
	tc.right = 317.500
	tc.bottom = -177.500
	tc.top = -132.500
	tc.visible = false
	tp = tc
		tc = tp.getChildByName('img')
		if tc then
		tc.img = 0x560a0004
		tp = tc
		end
		tp = tp.parent
		--end
	com = tp.c_button
	com['img_normal'] =1443495940.000
	com['img_hover'] =1443495941.000
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '木桩'
	tc.left = 251.000
	tc.right = 311.000
	tc.bottom = -121.000
	tc.top = -61.000
	tc.mouseEnabled = true
	tc.visible = false
	tc.img = 0x56160075
	tp = tc
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '子菜单'
	tp = tc
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '4'
		tc.visible = false
		tp = tc
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '防下层点击1'
			tc.left = -426.500
			tc.right = 426.500
			tc.bottom = -240.000
			tc.top = 240.000
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
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '1'
				tc.left = -255.500
				tc.right = -204.500
				tc.bottom = -115.000
				tc.top = -25.000
				tc.visible = false
				tp = tc
				com = tp.c_button
				com['customsize'] =true
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '2'
				tc.left = -195.500
				tc.right = -144.500
				tc.bottom = -95.000
				tc.top = -5.000
				tc.visible = false
				tp = tc
				com = tp.c_button
				com['customsize'] =true
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '3'
				tc.left = -135.500
				tc.right = -84.500
				tc.bottom = -75.000
				tc.top = 15.000
				tc.visible = false
				tp = tc
				com = tp.c_button
				com['customsize'] =true
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '4'
				tc.left = -75.500
				tc.right = -24.500
				tc.bottom = -55.000
				tc.top = 35.000
				tc.visible = false
				tp = tc
				com = tp.c_button
				com['customsize'] =true
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '5'
				tc.left = -15.500
				tc.right = 35.500
				tc.bottom = -35.000
				tc.top = 55.000
				tc.visible = false
				tp = tc
				com = tp.c_button
				com['customsize'] =true
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '6'
				tc.left = 44.500
				tc.right = 95.500
				tc.bottom = -15.000
				tc.top = 75.000
				tc.visible = false
				tp = tc
				com = tp.c_button
				com['customsize'] =true
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '7'
				tc.left = -135.500
				tc.right = -84.500
				tc.bottom = -165.000
				tc.top = -75.000
				tc.visible = false
				tp = tc
				com = tp.c_button
				com['customsize'] =true
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '8'
				tc.left = -75.500
				tc.right = -24.500
				tc.bottom = -145.000
				tc.top = -55.000
				tc.visible = false
				tp = tc
				com = tp.c_button
				com['customsize'] =true
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '9'
				tc.left = -15.500
				tc.right = 35.500
				tc.bottom = -125.000
				tc.top = -35.000
				tc.visible = false
				tp = tc
				com = tp.c_button
				com['customsize'] =true
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '10'
				tc.left = 34.500
				tc.right = 85.500
				tc.bottom = -105.000
				tc.top = -15.000
				tc.visible = false
				tp = tc
				com = tp.c_button
				com['customsize'] =true
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '11'
				tc.left = 94.500
				tc.right = 145.500
				tc.bottom = -85.000
				tc.top = 5.000
				tc.visible = false
				tp = tc
				com = tp.c_button
				com['customsize'] =true
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '12'
				tc.left = 154.500
				tc.right = 205.500
				tc.bottom = -65.000
				tc.top = 25.000
				tc.visible = false
				tp = tc
				com = tp.c_button
				com['customsize'] =true
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
				tc.text = '王语嫣'
				tc.font = 0x61240000
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
				tc.name = '武功二'
				tc.pivotX = 0.000
				tc.left = -63.000
				tc.right = 177.000
				tc.bottom = -137.000
				tc.top = -107.000
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
			tc.left = 304.000
			tc.right = 448.000
			tc.bottom = 72.000
			tc.top = 208.000
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
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '5'
		tc.visible = false
		tp = tc
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '防下层点击1'
			tc.left = -426.500
			tc.right = 426.500
			tc.bottom = -240.000
			tc.top = 240.000
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '背景'
			tc.left = -228.000
			tc.right = 228.000
			tc.bottom = -160.000
			tc.top = 160.000
			tc.img = 0x5616001d
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '页数'
			tc.left = -31.000
			tc.right = 29.000
			tc.bottom = -170.000
			tc.top = -130.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '1'
			tc.font = 0x61300000
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '总页数'
			tc.left = -16.000
			tc.right = 14.000
			tc.bottom = -160.000
			tc.top = -140.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61180000
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '总个数'
			tc.left = -16.000
			tc.right = 14.000
			tc.bottom = -160.000
			tc.top = -140.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61180000
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = 'note'
			tc.visible = false
			tp = tc
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = 'data'
				tc.pivotX = 0.000
				tc.left = -196.000
				tc.right = 604.000
				tc.bottom = 79.000
				tc.top = 119.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.font = 0x61240000
				tc.align = 1
				tc.style = 3
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = 'story'
				tc.pivotX = 0.000
				tc.left = -195.000
				tc.right = 605.000
				tc.bottom = 59.000
				tc.top = 99.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.font = 0x611e0000
				tc.align = 1
				tc.style = 2
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = 'left'
			tc.left = -35.000
			tc.right = -21.000
			tc.bottom = -160.000
			tc.top = -140.000
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x5616001e
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['img_normal'] =1444282398.000
			com['img_hover'] =1444282399.000
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = 'right'
			tc.left = 20.000
			tc.right = 34.000
			tc.bottom = -160.000
			tc.top = -140.000
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
			com['img_normal'] =1444282398.000
			com['img_hover'] =1444282399.000
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '结束'
			tc.left = 190.500
			tc.right = 223.500
			tc.bottom = 125.500
			tc.top = 156.500
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x56160014
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['img_normal'] =1444282388.000
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '关闭菜单'
			tc.left = 304.000
			tc.right = 448.000
			tc.bottom = -184.000
			tc.top = -48.000
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
		tp.c_note = setmetatable({}, c_note)
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '标签'
	tc.left = -237.000
	tc.right = -237.000
	tc.bottom = 215.000
	tc.top = 215.000
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'c1'
		tc.left = -66.000
		tc.right = 180.000
		tc.bottom = -13.500
		tc.top = 13.500
		tc.img = 0x560a003c
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'c3'
		tc.left = 185.000
		tc.right = 217.000
		tc.bottom = -15.000
		tc.top = 17.000
		tc.img = 0x561601af
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '时间标'
		tc.left = -139.000
		tc.right = 261.000
		tc.bottom = -23.000
		tc.top = 17.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '  年   月   日   时   刻'
		tc.font = 0x611e0000
		tc.align = 1
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '日'
		tc.left = 2.000
		tc.right = 82.000
		tc.bottom = -20.000
		tc.top = 20.000
		tc.mouseEnabled = true
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '初一'
		tc.font = 0x61180000
		tc.style = 8
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '时'
		tc.left = 63.000
		tc.right = 103.000
		tc.bottom = -21.000
		tc.top = 19.000
		tc.mouseEnabled = true
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '卯'
		tc.font = 0x61180000
		tc.style = 8
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '年'
		tc.left = -76.000
		tc.right = 4.000
		tc.bottom = -20.000
		tc.top = 20.000
		tc.mouseEnabled = true
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '一'
		tc.font = 0x61160000
		tc.wordSpace = -2
		tc.lineSpace = -2
		tc.style = 8
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '刻'
		tc.left = 102.000
		tc.right = 142.000
		tc.bottom = -20.000
		tc.top = 20.000
		tc.mouseEnabled = true
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '一'
		tc.font = 0x61180000
		tc.style = 8
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '月'
		tc.left = -25.000
		tc.right = 35.000
		tc.bottom = -20.000
		tc.top = 20.000
		tc.mouseEnabled = true
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '一'
		tc.font = 0x61180000
		tc.style = 8
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '侠义'
		tc.left = 195.000
		tc.right = 275.000
		tc.bottom = -18.000
		tc.top = 22.000
		tc.mouseEnabled = true
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '[03]0'
		tc.font = 0x61300000
		tc.style = 3
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '河边'
	tc.visible = false
	tp = tc
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '钓鱼'
		tc.left = -55.500
		tc.right = -12.500
		tc.bottom = 49.500
		tc.top = 94.500
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x56062007
			tp = tc
			end
			tp = tp.parent
			--end
		com = tp.c_button
		com['img_normal'] =1443241991.000
		com['img_hover'] =1443241992.000
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '树林'
	tc.visible = false
	tp = tc
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '砍柴'
		tc.left = -171.500
		tc.right = -128.500
		tc.bottom = -2.500
		tc.top = 42.500
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x56062003
			tp = tc
			end
			tp = tp.parent
			--end
		com = tp.c_button
		com['img_normal'] =1443241987.000
		com['img_hover'] =1443241988.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '抓蚯蚓'
		tc.left = -91.500
		tc.right = -48.500
		tc.bottom = -2.500
		tc.top = 42.500
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x56062005
			tp = tc
			end
			tp = tp.parent
			--end
		com = tp.c_button
		com['img_normal'] =1443241989.000
		com['img_hover'] =1443241990.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '打猎'
		tc.left = -11.500
		tc.right = 31.500
		tc.bottom = -2.500
		tc.top = 42.500
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x56062001
			tp = tc
			end
			tp = tp.parent
			--end
		com = tp.c_button
		com['img_normal'] =1443241985.000
		com['img_hover'] =1443241986.000
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_button')
	tp.addChild(tc)
	tc.name = '公告'
	tc.left = -413.000
	tc.right = -353.000
	tc.bottom = 75.000
	tc.top = 155.000
	tp = tc
		tc = tp.getChildByName('img')
		if tc then
		tc.img = 0x560400f9
		tp = tc
		end
		tp = tp.parent
		--end
	com = tp.c_button
	com['customsize'] =true
	com['img_normal'] =1443102969.000
	com['img_hover'] =1443102972.000
	com['img_press'] =1443102969.000
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
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = 'time'
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
	tc.name = 'data'
	tc.left = -469.000
	tc.right = -269.000
	tc.bottom = -271.000
	tc.top = -171.000
	tc.text = 'ver3.02'
	tc.font = 0x611c0000
	tc.style = 3
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = 'load'
	tc.left = -450.000
	tc.right = -306.000
	tc.bottom = 123.000
	tc.top = 259.000
	tc.mouseEnabled = true
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.text = '快速读档'
	tc.wrap = true
	tc.font = 0x61400000
	tc.style = 11
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = 'music'
	tc.left = 304.000
	tc.right = 448.000
	tc.bottom = -259.000
	tc.top = -123.000
	tc.mouseEnabled = true
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.text = '切换音乐'
	tc.wrap = true
	tc.font = 0x61400000
	tc.style = 11
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = 'book'
	tc.left = 304.000
	tc.right = 448.000
	tc.bottom = 130.000
	tc.top = 266.000
	tc.mouseEnabled = true
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.text = '百科辞典'
	tc.wrap = true
	tc.font = 0x61400000
	tc.style = 11
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = 'no'
	tc.left = -100.000
	tc.bottom = -50.000
	tc.top = 50.000
	tc.visible = false
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.text = '0'
	tc.font = 0x61200041
	tp = tc
	tp = tp.parent
	--end
tp.c_citymap_system_map = setmetatable({}, c_citymap_system_map)
