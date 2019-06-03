--[[202f

]]
local G = require 'gf'
local c_button = require 'c_button'
local c_book = require 'c_book'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_book'
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
	tc.img = 0x56160020
	tp = tc
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '按钮'
	tp = tc
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '主菜单'
		tc.bottom = -50.000
		tc.top = -50.000
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '底层'
			tc.left = -246.000
			tc.right = 254.000
			tc.bottom = 190.000
			tc.top = 250.000
			tc.img = 0x56160065
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '文本'
			tc.pivotX = 0.000
			tc.left = -247.000
			tc.right = 753.000
			tc.bottom = 191.000
			tc.top = 251.000
			tc.mouseEnabled = true
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '请选择需要查看的内容'
			tc.font = 0x613c0000
			tc.style = 5
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '说明'
			tc.pivotX = 0.000
			tc.left = -258.000
			tc.right = 654.000
			tc.bottom = 141.000
			tc.top = 201.000
			tc.mouseEnabled = true
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 1
			tc.text = '部分修改项目为测试用，暂不开放！'
			tc.font = 0x61380000
			tc.style = 11
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '人物'
			tc.pivotX = 0.000
			tc.left = -240.000
			tc.right = 760.000
			tc.bottom = 120.000
			tc.top = 180.000
			tc.mouseEnabled = true
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '1，人物属性'
			tc.font = 0x61380000
			tc.align = 1
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '物品'
			tc.pivotX = 0.000
			tc.left = -240.000
			tc.right = 760.000
			tc.bottom = 80.000
			tc.top = 140.000
			tc.mouseEnabled = true
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '2，物品说明'
			tc.font = 0x61380000
			tc.align = 1
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '武功'
			tc.pivotX = 0.000
			tc.left = -240.000
			tc.right = 760.000
			tc.bottom = 40.000
			tc.mouseEnabled = true
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '3，武功说明'
			tc.font = 0x61380000
			tc.align = 1
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '子菜单'
		tc.visible = false
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '底层'
			tc.left = -241.000
			tc.right = 259.000
			tc.bottom = 138.000
			tc.top = 198.000
			tc.img = 0x56160065
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '文本'
			tc.pivotX = 0.000
			tc.left = -244.000
			tc.right = 756.000
			tc.bottom = 142.000
			tc.top = 202.000
			tc.mouseEnabled = true
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '请选择需要查看的内容'
			tc.font = 0x613c0000
			tc.style = 5
			tp = tc
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '人物'
			tc.visible = false
			tp = tc
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '物品'
			tc.visible = false
			tp = tc
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '武功'
			tc.visible = false
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '标本'
			tc.pivotX = 0.000
			tc.left = -300.000
			tc.right = 43.000
			tc.bottom = 95.000
			tc.top = 145.000
			tc.mouseEnabled = true
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 1
			tc.text = '天罡北斗七星阵'
			tc.font = 0x61300000
			tc.align = 1
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '返回'
			tc.left = -316.000
			tc.right = -276.000
			tc.bottom = -242.000
			tc.top = -202.000
			tc.mouseEnabled = true
			tc.img = 0x33010024
			tp = tc
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '翻页'
			tp = tc
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
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '显示'
		tc.visible = false
		tp = tc
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '人物'
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '属性'
				tc.left = -135.350
				tc.right = 123.350
				tc.bottom = -207.400
				tc.top = 229.400
				tc.img = 0x56160024
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '头像'
					tc.left = -126.500
					tc.right = -73.500
					tc.bottom = 152.500
					tc.top = 215.500
					tc.img = 0x56080001
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '姓名'
					tc.pivotX = 0.000
					tc.left = -10.000
					tc.right = 185.000
					tc.bottom = 110.000
					tc.top = 150.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.autosize = 1
					tc.text = '半瓶神仙醋'
					tc.font = 0x61260000
					tc.align = 1
					tc.style = 2
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '生命'
					tc.pivotX = 0.000
					tc.left = -10.000
					tc.right = 203.000
					tc.bottom = 90.000
					tc.top = 120.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.autosize = 1
					tc.text = '99999/99999'
					tc.font = 0x61240000
					tc.align = 1
					tc.style = 11
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '内力'
					tc.pivotX = 0.000
					tc.left = -10.000
					tc.right = 203.000
					tc.bottom = 65.000
					tc.top = 95.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.autosize = 1
					tc.text = '99999/99999'
					tc.font = 0x61240000
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
					tc.bottom = 35.000
					tc.top = 75.000
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
					tc.bottom = 10.000
					tc.top = 50.000
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
					tc.bottom = -15.000
					tc.top = 25.000
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
					tc.bottom = -40.000
					tc.top = 0.000
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
					tc.bottom = -65.000
					tc.top = -25.000
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
					tc.bottom = -90.000
					tc.top = -50.000
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
					tc.bottom = -115.000
					tc.top = -75.000
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
					tc.left = -79.000
					tc.right = -79.000
					tc.bottom = -157.000
					tc.top = -117.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.autosize = 1
					tc.font = 0x61240000
					tc.align = 1
					tc.style = 10
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '武功二'
					tc.pivotX = 0.000
					tc.left = -79.000
					tc.right = -79.000
					tc.bottom = -177.000
					tc.top = -137.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.autosize = 1
					tc.font = 0x61240000
					tc.align = 1
					tc.style = 10
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '武功三'
					tc.pivotX = 0.000
					tc.left = -79.000
					tc.right = -79.000
					tc.bottom = -197.000
					tc.top = -157.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.autosize = 1
					tc.font = 0x61240000
					tc.align = 1
					tc.style = 10
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = 'c1'
					tc.left = -10.000
					tc.right = 110.000
					tc.bottom = 37.000
					tc.top = 77.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '被动:'
					tc.font = 0x61280000
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
						tc.left = -5.000
						tc.right = 95.000
						tc.bottom = 10.000
						tc.top = 50.000
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
						tc.left = -5.000
						tc.right = 95.000
						tc.bottom = -15.000
						tc.top = 25.000
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
						tc.name = '3'
						tc.left = -5.000
						tc.right = 95.000
						tc.bottom = -40.000
						tc.top = 0.000
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
						tc.name = '4'
						tc.left = -5.000
						tc.right = 95.000
						tc.bottom = -65.000
						tc.top = -25.000
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
						tc = G.loadUI('v_empty')
						tp.addChild(tc)
						tc.name = '显示'
						tc.left = 319.000
						tc.right = 319.000
						tc.bottom = 182.000
						tc.top = 182.000
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
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '动作'
					tc.left = -261.000
					tc.right = -161.000
					tc.bottom = -173.000
					tc.top = -73.000
					tc.img = 0x33069998
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '动作1'
					tc.left = 209.000
					tc.right = 309.000
					tc.bottom = -173.000
					tc.top = -73.000
					tc.img = 0x33079999
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '掉落物'
					tc.pivotX = 0.000
					tc.left = 138.000
					tc.right = 286.000
					tc.bottom = -232.000
					tc.top = -152.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.autosize = 1
					tc.text = '掉落物：[br][01]无'
					tc.wrap = true
					tc.font = 0x61240000
					tc.align = 1
					tc.style = 3
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '需求'
					tc.pivotX = 0.000
					tc.pivotY = 1.000
					tc.left = -286.000
					tc.right = 28.000
					tc.bottom = 116.000
					tc.top = 188.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.autosize = 2
					tc.text = '掉落物：[br][01]无'
					tc.wrap = true
					tc.font = 0x61240000
					tc.align = 1
					tc.style = 3
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '属性上限'
					tc.pivotX = 0.000
					tc.pivotY = 1.000
					tc.left = 134.000
					tc.right = 448.000
					tc.bottom = -239.000
					tc.top = 140.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.autosize = 2
					tc.text = '属性上限：[br][01]99999[br]99999[br]99999[br]99999[br]99999[br]99999[br]99999'
					tc.wrap = true
					tc.font = 0x61240000
					tc.align = 1
					tc.lineSpace = 13
					tc.style = 3
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '面具'
				tp = tc
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '易容'
					tc.pivotX = 0.000
					tc.left = 125.000
					tc.right = 247.000
					tc.bottom = 150.000
					tc.top = 210.000
					tc.mouseEnabled = true
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.autosize = 1
					tc.text = '易容'
					tc.font = 0x613c0000
					tc.align = 1
					tc.style = 11
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '撤销'
					tc.pivotX = 0.000
					tc.left = 193.000
					tc.right = 315.000
					tc.bottom = 150.000
					tc.top = 210.000
					tc.mouseEnabled = true
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.autosize = 1
					tc.text = '撤销'
					tc.font = 0x613c0000
					tc.align = 1
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '物品'
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '图片'
				tc.left = -296.000
				tc.right = -266.000
				tc.bottom = 168.000
				tc.top = 198.000
				tc.img = 0x560e0001
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '名称'
				tc.pivotX = 0.000
				tc.left = -245.000
				tc.right = -50.000
				tc.bottom = 155.000
				tc.top = 195.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.autosize = 1
				tc.text = '半瓶神仙醋'
				tc.font = 0x61260000
				tc.align = 1
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '持有'
				tc.pivotX = 0.000
				tc.left = -245.000
				tc.right = -50.000
				tc.bottom = 135.000
				tc.top = 175.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.autosize = 1
				tc.text = '半瓶神仙醋'
				tc.font = 0x61260000
				tc.align = 1
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '类型'
				tc.pivotX = 0.000
				tc.left = -245.000
				tc.right = -50.000
				tc.bottom = 115.000
				tc.top = 155.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.autosize = 1
				tc.text = '半瓶神仙醋'
				tc.font = 0x61260000
				tc.align = 1
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '武功'
				tc.pivotX = 0.000
				tc.left = -245.000
				tc.right = -50.000
				tc.bottom = 95.000
				tc.top = 135.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.autosize = 1
				tc.text = '半瓶神仙醋'
				tc.font = 0x61260000
				tc.align = 1
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '系数'
				tc.pivotX = 0.000
				tc.left = -245.000
				tc.right = -50.000
				tc.bottom = 75.000
				tc.top = 115.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.autosize = 1
				tc.text = '半瓶神仙醋'
				tc.font = 0x61260000
				tc.align = 1
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '其他'
				tc.pivotX = 0.000
				tc.pivotY = 1.000
				tc.left = -245.000
				tc.right = 796.000
				tc.bottom = -107.000
				tc.top = 83.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.autosize = 2
				tc.text = '半瓶神仙醋'
				tc.wrap = true
				tc.font = 0x61260000
				tc.align = 1
				tc.style = 7
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '武功'
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '动作'
				tc.left = -248.000
				tc.right = -148.000
				tc.bottom = 54.000
				tc.top = 154.000
				tc.mouseEnabled = true
				tc.blend = 1
				tc.img = 0x33049999
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '图片'
				tc.left = -83.500
				tc.right = -42.500
				tc.bottom = 159.500
				tc.top = 200.500
				tc.img = 0x560c0005
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '名称'
				tc.pivotX = 0.000
				tc.left = -82.000
				tc.right = 113.000
				tc.bottom = 120.000
				tc.top = 160.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.autosize = 1
				tc.text = '半瓶神仙醋'
				tc.font = 0x61260000
				tc.align = 1
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '类别'
				tc.pivotX = 0.000
				tc.left = -82.000
				tc.right = 113.000
				tc.bottom = 100.000
				tc.top = 140.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.autosize = 1
				tc.text = '半瓶神仙醋'
				tc.font = 0x61260000
				tc.align = 1
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '气槽'
				tc.pivotX = 0.000
				tc.left = -82.000
				tc.right = 113.000
				tc.bottom = 80.000
				tc.top = 120.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.autosize = 1
				tc.text = '半瓶神仙醋'
				tc.font = 0x61260000
				tc.align = 1
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '内力'
				tc.pivotX = 0.000
				tc.left = -82.000
				tc.right = 113.000
				tc.bottom = 60.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.autosize = 1
				tc.text = '半瓶神仙醋'
				tc.font = 0x61260000
				tc.align = 1
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '伤害'
				tc.pivotX = 0.000
				tc.left = -82.000
				tc.right = 113.000
				tc.bottom = 40.000
				tc.top = 80.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.autosize = 1
				tc.text = '半瓶神仙醋'
				tc.font = 0x61260000
				tc.align = 1
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '熟练度'
				tc.pivotX = 0.000
				tc.left = -82.000
				tc.right = 113.000
				tc.bottom = 20.000
				tc.top = 60.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.autosize = 1
				tc.text = '半瓶神仙醋'
				tc.font = 0x61260000
				tc.align = 1
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '范围'
				tc.pivotX = 0.000
				tc.left = -82.000
				tc.right = 113.000
				tc.top = 40.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.autosize = 1
				tc.text = '半瓶神仙醋'
				tc.font = 0x61260000
				tc.align = 1
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '配合装备'
				tc.pivotX = 0.000
				tc.left = -284.000
				tc.right = -89.000
				tc.bottom = -40.000
				tc.top = 0.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.autosize = 1
				tc.text = '半瓶神仙醋'
				tc.font = 0x61260000
				tc.align = 1
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '配合内功'
				tc.pivotX = 0.000
				tc.left = -29.000
				tc.right = 166.000
				tc.bottom = -40.000
				tc.top = 0.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.autosize = 1
				tc.text = '半瓶神仙醋'
				tc.font = 0x61260000
				tc.align = 1
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '攻击效果'
				tc.pivotX = 0.000
				tc.left = -284.000
				tc.right = -89.000
				tc.bottom = -60.000
				tc.top = -20.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.autosize = 1
				tc.text = '半瓶神仙醋'
				tc.font = 0x61260000
				tc.align = 1
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '被动效果'
				tc.pivotX = 0.000
				tc.left = -284.000
				tc.right = -89.000
				tc.bottom = -80.000
				tc.top = -40.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.autosize = 1
				tc.text = '半瓶神仙醋'
				tc.font = 0x61260000
				tc.align = 1
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '附加效果'
				tc.pivotX = 0.000
				tc.pivotY = 1.000
				tc.left = -284.000
				tc.right = 877.000
				tc.bottom = -112.000
				tc.top = -74.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.autosize = 2
				tc.text = '半瓶神仙醋'
				tc.wrap = true
				tc.font = 0x61260000
				tc.align = 1
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '翻页'
			tp = tc
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
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '返回'
			tc.left = -316.000
			tc.right = -276.000
			tc.bottom = -242.000
			tc.top = -202.000
			tc.mouseEnabled = true
			tc.img = 0x33010024
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
	tc.left = 266.000
	tc.right = 316.000
	tc.bottom = 181.000
	tc.top = 231.000
	tc.mouseEnabled = true
	tc.img = 0x56160014
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '关闭菜单'
	tc.left = 301.000
	tc.right = 445.000
	tc.bottom = -256.000
	tc.top = -120.000
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
tp.c_book = setmetatable({}, c_book)
