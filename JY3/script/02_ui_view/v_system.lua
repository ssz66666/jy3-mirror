--[[2027

]]
local G = require 'gf'
local c_system = require 'c_system'
local c_button = require 'c_button'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_system'
tc.left = -426.500
tc.right = 426.500
tc.bottom = -240.000
tc.top = 240.000
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
	tc.name = '背景'
	tc.left = -320.000
	tc.right = 320.000
	tc.bottom = -240.000
	tc.top = 240.000
	tc.mouseEnabled = true
	tc.img = 0x56160020
	tp = tc
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '按钮'
	tc.left = 13.000
	tc.right = 13.000
	tc.bottom = 80.000
	tc.top = 80.000
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '指引'
		tc.left = -165.000
		tc.right = 135.000
		tc.bottom = 20.000
		tc.top = 120.000
		tc.mouseEnabled = true
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '江湖指引'
		tc.font = 0x61400000
		tc.style = 7
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '成就'
		tc.left = -169.000
		tc.right = 131.000
		tc.bottom = -30.000
		tc.top = 70.000
		tc.mouseEnabled = true
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.color = 0xfcfcfc
		tc.text = '江湖成就'
		tc.font = 0x61400000
		tc.style = 7
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '设置'
		tc.left = -165.000
		tc.right = 135.000
		tc.bottom = -80.000
		tc.top = 20.000
		tc.mouseEnabled = true
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '江湖设置'
		tc.font = 0x61400000
		tc.style = 7
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '关于'
		tc.left = -94.000
		tc.right = 56.000
		tc.bottom = -105.000
		tc.top = -55.000
		tc.mouseEnabled = true
		tc.color = 0xfcfcfc
		tc.text = '关于'
		tc.font = 0x61200041
		tc.style = 7
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '重铸'
		tc.left = -169.000
		tc.right = 131.000
		tc.bottom = -180.000
		tc.top = -80.000
		tc.mouseEnabled = true
		tc.visible = false
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.color = 0xfcfcfc
		tc.text = '重铸'
		tc.font = 0x61400000
		tc.style = 7
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '返回'
		tc.left = -169.000
		tc.right = 131.000
		tc.bottom = -230.000
		tc.top = -130.000
		tc.mouseEnabled = true
		tc.visible = false
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.color = 0xfcfcfc
		tc.text = '返回标题'
		tc.font = 0x61400000
		tc.style = 7
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '密令'
		tc.left = -467.000
		tc.right = -303.000
		tc.bottom = 31.000
		tc.top = 181.000
		tc.mouseEnabled = true
		tc.visible = false
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.color = 0xfcfcfc
		tc.font = 0x61400000
		tc.style = 7
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '重生'
		tc.left = -94.000
		tc.right = 56.000
		tc.bottom = -255.000
		tc.top = -205.000
		tc.mouseEnabled = true
		tc.visible = false
		tc.color = 0xfcfcfc
		tc.text = '重生'
		tc.font = 0x61200041
		tc.style = 7
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '文本'
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '关于'
		tc.pivotX = 0.000
		tc.pivotY = 1.000
		tc.left = -300.000
		tc.right = 910.000
		tc.bottom = -575.500
		tc.top = 198.500
		tc.visible = false
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.wrap = true
		tc.font = 0x61220000
		tc.align = 1
		tc.lineSpace = -1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'secret'
		tc.left = -250.000
		tc.right = 250.000
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
			tc.bottom = 134.000
			tc.top = 178.000
			tc.img = 0x56160065
			tp = tc
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = 'c5'
				tc.left = -175.000
				tc.right = 177.000
				tc.bottom = -43.000
				tc.top = 45.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '请输入密令'
				tc.font = 0x61380000
				tc.style = 5
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'c1'
			tc.left = -200.000
			tc.right = 200.000
			tc.bottom = -2.500
			tc.top = 52.500
			tc.img = 0x5603001e
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '文本'
			tc.left = -350.000
			tc.right = 350.000
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
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '指引'
		tc.visible = false
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '指引1'
			tc.pivotX = 0.000
			tc.pivotY = 1.000
			tc.left = -300.000
			tc.right = 910.000
			tc.bottom = -620.000
			tc.top = 200.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.wrap = true
			tc.font = 0x61260000
			tc.align = 1
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '指引2'
			tc.pivotX = 0.000
			tc.pivotY = 1.000
			tc.left = -300.000
			tc.right = 910.000
			tc.bottom = -620.000
			tc.top = 200.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.wrap = true
			tc.font = 0x61260000
			tc.align = 1
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '指引3'
			tc.pivotX = 0.000
			tc.pivotY = 1.000
			tc.left = -300.000
			tc.right = 910.000
			tc.bottom = -620.000
			tc.top = 200.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.wrap = true
			tc.font = 0x61260000
			tc.align = 1
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '指引4'
			tc.pivotX = 0.000
			tc.pivotY = 1.000
			tc.left = -300.000
			tc.right = 910.000
			tc.bottom = -620.000
			tc.top = 200.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.wrap = true
			tc.font = 0x61260000
			tc.align = 1
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '指引5'
			tc.pivotX = 0.000
			tc.pivotY = 1.000
			tc.left = -300.000
			tc.right = 910.000
			tc.bottom = -620.000
			tc.top = 200.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.wrap = true
			tc.font = 0x61260000
			tc.align = 1
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = 'left'
			tc.left = -46.000
			tc.right = -32.000
			tc.bottom = -234.000
			tc.top = -214.000
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
			tc.name = 'left1'
			tc.left = 329.000
			tc.right = 371.000
			tc.bottom = 60.000
			tc.top = 120.000
			tc.rotation = 90.000
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
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = 'right'
			tc.left = 44.000
			tc.right = 58.000
			tc.bottom = -234.000
			tc.top = -214.000
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
			tc.name = 'right1'
			tc.left = 329.000
			tc.right = 371.000
			tc.bottom = -140.000
			tc.top = -80.000
			tc.rotation = -90.000
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
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'data'
			tc.left = -42.000
			tc.right = 58.000
			tc.bottom = -242.000
			tc.top = -202.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '1'
			tc.font = 0x61380000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '设置'
		tc.visible = false
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '战斗速度'
			tc.left = -200.000
			tc.right = 200.000
			tc.bottom = 121.000
			tc.top = 221.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '战斗速度'
			tc.font = 0x61400000
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '游戏音量'
			tc.left = -200.000
			tc.right = 200.000
			tc.bottom = 18.000
			tc.top = 118.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '游戏音量'
			tc.font = 0x61400000
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '说明'
			tc.pivotX = 0.000
			tc.left = -257.000
			tc.right = 833.000
			tc.bottom = -245.000
			tc.top = -59.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '[08]【说明】：[0a]战斗速度数值[03]越小越快[0a]；游戏声音数值越大音量越大，为[03]0[0a]时则为关闭音量，5为最大！'
			tc.wrap = true
			tc.font = 0x61300000
			tc.align = 1
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'data'
			tc.left = -50.000
			tc.right = 50.000
			tc.bottom = 90.000
			tc.top = 130.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '4'
			tc.font = 0x61380000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'data1'
			tc.left = -50.000
			tc.right = 50.000
			tc.bottom = -10.000
			tc.top = 30.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '5'
			tc.font = 0x61380000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = 'left'
			tc.left = -117.000
			tc.right = -103.000
			tc.bottom = 100.000
			tc.top = 120.000
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
			tc.name = 'left1'
			tc.left = -117.000
			tc.right = -103.000
			tc.top = 20.000
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
			tc.left = 103.000
			tc.right = 117.000
			tc.bottom = 100.000
			tc.top = 120.000
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
			tc.name = 'right1'
			tc.left = 103.000
			tc.right = 117.000
			tc.top = 20.000
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
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '快'
			tc.left = -220.000
			tc.right = -120.000
			tc.bottom = 92.000
			tc.top = 132.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '快'
			tc.font = 0x61380000
			tc.style = 6
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '小'
			tc.left = -220.000
			tc.right = -120.000
			tc.bottom = -8.000
			tc.top = 32.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '小'
			tc.font = 0x61380000
			tc.style = 6
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '慢'
			tc.left = 120.000
			tc.right = 220.000
			tc.bottom = 92.000
			tc.top = 132.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '慢'
			tc.font = 0x61380000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '大'
			tc.left = 120.000
			tc.right = 220.000
			tc.bottom = -8.000
			tc.top = 32.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '大'
			tc.font = 0x61380000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '确定'
			tc.left = -33.000
			tc.right = 33.000
			tc.bottom = -93.000
			tc.top = -71.000
			tc.visible = false
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
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '重铸'
		tc.visible = false
		tp = tc
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '按钮'
			tc.left = -46.000
			tc.right = 20.000
			tc.bottom = -57.000
			tc.top = -35.000
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
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '文本'
			tc.pivotX = 0.000
			tc.pivotY = 1.000
			tc.left = -304.000
			tc.right = 906.000
			tc.bottom = -266.000
			tc.top = 134.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.wrap = true
			tc.font = 0x61280000
			tc.align = 1
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'script'
			tc.left = -434.000
			tc.right = -340.000
			tc.bottom = -114.000
			tc.top = -30.000
			tc.mouseEnabled = true
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.color = 0xfcfcfc
			tc.font = 0x61400000
			tc.style = 7
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '重生'
		tc.visible = false
		tp = tc
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '按钮'
			tc.left = -46.000
			tc.right = 20.000
			tc.bottom = -57.000
			tc.top = -35.000
			tc.visible = false
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
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '文本'
			tc.pivotX = 0.000
			tc.pivotY = 1.000
			tc.left = -304.000
			tc.right = 906.000
			tc.bottom = -266.000
			tc.top = 134.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.wrap = true
			tc.font = 0x61280000
			tc.align = 1
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '清除周目'
			tc.left = -202.000
			tc.right = -38.000
			tc.bottom = -80.000
			tc.top = -20.000
			tc.mouseEnabled = true
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 1
			tc.text = '清除周目'
			tc.font = 0x61280000
			tc.style = 7
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '清除成就'
			tc.left = -82.000
			tc.right = 82.000
			tc.bottom = -80.000
			tc.top = -20.000
			tc.mouseEnabled = true
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 1
			tc.text = '清除成就'
			tc.font = 0x61280000
			tc.style = 7
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '都不清除'
			tc.left = 38.000
			tc.right = 202.000
			tc.bottom = -80.000
			tc.top = -20.000
			tc.mouseEnabled = true
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 1
			tc.text = '都不清除'
			tc.font = 0x61280000
			tc.style = 7
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '结束'
	tc.left = 283.500
	tc.right = 316.500
	tc.bottom = 204.500
	tc.top = 235.500
	tc.mouseEnabled = true
	tc.visible = false
	tc.img = 0x56160014
	tp = tc
	tp = tp.parent
	--end
	tc = G.loadUI('v_button')
	tp.addChild(tc)
	tc.name = '返回'
	tc.left = -312.000
	tc.right = -262.000
	tc.bottom = -240.000
	tc.top = -190.000
	tc.visible = false
	tp = tc
		tc = tp.getChildByName('img')
		if tc then
		tc.img = 0x33010024
		tp = tc
		end
		tp = tp.parent
		--end
	com = tp.c_button
	com['customsize'] =true
	com['img_normal'] =855703588.000
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '关闭菜单'
	tc.left = 304.000
	tc.right = 448.000
	tc.bottom = -248.000
	tc.top = -112.000
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
tp.c_system = setmetatable({}, c_system)
