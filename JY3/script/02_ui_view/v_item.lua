--[[2015

]]
local G = require 'gf'
local c_button = require 'c_button'
local c_item = require 'c_item'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_item'
tc.left = -426.500
tc.right = 426.500
tc.bottom = -240.000
tc.top = 240.000
tp = tc
	tc = G.loadUI('v_button')
	tp.addChild(tc)
	tc.name = '防下层点击'
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
	tc.left = 20.000
	tc.right = 20.000
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '主图'
		tc.left = -319.000
		tc.right = 281.000
		tc.bottom = -222.000
		tc.top = 198.000
		tc.img = 0x56160076
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '人物形象'
		tc.left = -86.000
		tc.right = -38.000
		tc.bottom = 7.500
		tc.top = 92.500
		tc.img = 0x56160033
		tp = tc
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '快捷'
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'q'
			tc.left = -255.500
			tc.right = -200.500
			tc.bottom = -197.500
			tc.top = -162.500
			tc.mouseEnabled = true
			tp = tc
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '数量'
				tc.left = -6.500
				tc.right = 18.500
				tc.bottom = -18.000
				tc.top = 2.000
				tc.font = 0x61140000
				tc.align = 3
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'w'
			tc.left = -191.500
			tc.right = -136.500
			tc.bottom = -197.500
			tc.top = -162.500
			tc.mouseEnabled = true
			tp = tc
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '数量'
				tc.left = -6.500
				tc.right = 18.500
				tc.bottom = -18.000
				tc.top = 2.000
				tc.font = 0x61140000
				tc.align = 3
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'e'
			tc.left = -126.500
			tc.right = -71.500
			tc.bottom = -197.500
			tc.top = -162.500
			tc.mouseEnabled = true
			tp = tc
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '数量'
				tc.left = -6.500
				tc.right = 18.500
				tc.bottom = -18.000
				tc.top = 2.000
				tc.font = 0x61140000
				tc.align = 3
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'r'
			tc.left = -59.500
			tc.right = -4.500
			tc.bottom = -197.500
			tc.top = -162.500
			tc.mouseEnabled = true
			tp = tc
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '数量'
				tc.left = -6.500
				tc.right = 18.500
				tc.bottom = -18.000
				tc.top = 2.000
				tc.font = 0x61140000
				tc.align = 3
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '装备图'
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '武器'
			tc.left = -264.000
			tc.right = -204.000
			tc.bottom = 42.000
			tc.top = 82.000
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '黑底'
				tc.left = -29.000
				tc.right = 29.000
				tc.bottom = -19.000
				tc.top = 19.000
				tc.mouseEnabled = true
				tc.visible = false
				tc.img = 0x560e9999
				tp = tc
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '按钮'
				tc.left = -30.000
				tc.right = 30.000
				tc.bottom = -20.000
				tc.top = 20.000
				tp = tc
				com = tp.c_button
				com['customsize'] =true
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '图片'
				tc.left = -30.000
				tc.right = 30.000
				tc.bottom = -20.000
				tc.top = 20.000
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '轻功'
			tc.left = -182.000
			tc.right = -122.000
			tc.bottom = -4.000
			tc.top = 36.000
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '黑底'
				tc.left = -29.000
				tc.right = 29.000
				tc.bottom = -19.000
				tc.top = 19.000
				tc.mouseEnabled = true
				tc.visible = false
				tc.img = 0x560e9999
				tp = tc
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '按钮'
				tc.left = -30.000
				tc.right = 30.000
				tc.bottom = -20.000
				tc.top = 20.000
				tp = tc
				com = tp.c_button
				com['customsize'] =true
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '图片'
				tc.left = -30.000
				tc.right = 30.000
				tc.bottom = -20.000
				tc.top = 20.000
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '内功'
			tc.left = -264.000
			tc.right = -204.000
			tc.bottom = -4.000
			tc.top = 36.000
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '黑底'
				tc.left = -29.000
				tc.right = 29.000
				tc.bottom = -19.000
				tc.top = 19.000
				tc.mouseEnabled = true
				tc.visible = false
				tc.img = 0x560e9999
				tp = tc
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '按钮'
				tc.left = -30.000
				tc.right = 30.000
				tc.bottom = -20.000
				tc.top = 20.000
				tp = tc
				com = tp.c_button
				com['customsize'] =true
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '图片'
				tc.left = -30.000
				tc.right = 30.000
				tc.bottom = -20.000
				tc.top = 20.000
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '暗器'
			tc.left = -182.000
			tc.right = -122.000
			tc.bottom = 42.000
			tc.top = 82.000
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '黑底'
				tc.left = -29.000
				tc.right = 29.000
				tc.bottom = -19.000
				tc.top = 19.000
				tc.mouseEnabled = true
				tc.visible = false
				tc.img = 0x560e9999
				tp = tc
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '按钮'
				tc.left = -30.000
				tc.right = 30.000
				tc.bottom = -20.000
				tc.top = 20.000
				tp = tc
				com = tp.c_button
				com['customsize'] =true
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '图片'
				tc.left = -30.000
				tc.right = 30.000
				tc.bottom = -20.000
				tc.top = 20.000
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '外衣'
			tc.left = -182.000
			tc.right = -122.000
			tc.bottom = 85.000
			tc.top = 125.000
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '黑底'
				tc.left = -29.000
				tc.right = 29.000
				tc.bottom = -19.000
				tc.top = 19.000
				tc.mouseEnabled = true
				tc.visible = false
				tc.img = 0x560e9999
				tp = tc
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '按钮'
				tc.left = -30.000
				tc.right = 30.000
				tc.bottom = -20.000
				tc.top = 20.000
				tp = tc
				com = tp.c_button
				com['customsize'] =true
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '图片'
				tc.left = -30.000
				tc.right = 30.000
				tc.bottom = -20.000
				tc.top = 20.000
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '内衣'
			tc.left = -264.000
			tc.right = -204.000
			tc.bottom = 85.000
			tc.top = 125.000
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '黑底'
				tc.left = -29.000
				tc.right = 29.000
				tc.bottom = -19.000
				tc.top = 19.000
				tc.mouseEnabled = true
				tc.visible = false
				tc.img = 0x560e9999
				tp = tc
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '按钮'
				tc.left = -30.000
				tc.right = 30.000
				tc.bottom = -20.000
				tc.top = 20.000
				tp = tc
				com = tp.c_button
				com['customsize'] =true
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '图片'
				tc.left = -30.000
				tc.right = 30.000
				tc.bottom = -20.000
				tc.top = 20.000
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '印记'
			tc.left = -7.500
			tc.right = 27.500
			tc.bottom = 112.500
			tc.top = 147.500
			tc.mouseEnabled = true
			tc.img = 0x56161002
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '底'
			tc.left = -7.500
			tc.right = 27.500
			tc.bottom = 112.500
			tc.top = 147.500
			tc.img = 0x56161002
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '头戴'
			tc.left = -7.500
			tc.right = 27.500
			tc.bottom = 72.500
			tc.top = 107.500
			tc.mouseEnabled = true
			tc.img = 0x56161002
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '手戴'
			tc.left = -7.500
			tc.right = 27.500
			tc.bottom = 32.500
			tc.top = 67.500
			tc.mouseEnabled = true
			tc.img = 0x56161002
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '脚穿'
			tc.left = -7.500
			tc.right = 27.500
			tc.bottom = -7.500
			tc.top = 27.500
			tc.mouseEnabled = true
			tc.img = 0x56161002
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '银两'
	tc.left = 82.000
	tc.right = 332.000
	tc.bottom = -214.000
	tc.top = -174.000
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.font = 0x61280000
	tc.style = 2
	tp = tc
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '文本'
	tc.left = 20.000
	tc.right = 20.000
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '名称'
		tc.pivotX = 0.000
		tc.left = 130.000
		tc.right = 130.000
		tc.bottom = 116.000
		tc.top = 156.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 1
		tc.font = 0x611e0000
		tc.align = 1
		tc.wordSpace = -2
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '类别'
		tc.pivotX = 0.000
		tc.left = 130.000
		tc.right = 130.000
		tc.bottom = 96.000
		tc.top = 136.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 1
		tc.font = 0x611e0000
		tc.align = 1
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '说明'
		tc.pivotX = 0.000
		tc.pivotY = 1.000
		tc.left = 127.000
		tc.right = 377.000
		tc.bottom = 5.000
		tc.top = 105.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.wrap = true
		tc.font = 0x611e0000
		tc.align = 1
		tc.wordSpace = -2
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '数量'
		tc.left = 92.000
		tc.right = 232.000
		tc.bottom = 30.000
		tc.top = 70.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.font = 0x611e0000
		tc.align = 1
		tp = tc
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '内功'
		tc.left = 20.000
		tc.right = 20.000
		tc.visible = false
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '修为点'
			tc.left = 163.000
			tc.right = 243.000
			tc.bottom = -21.000
			tc.top = 19.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 1
			tc.font = 0x611e0000
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '需点'
			tc.left = 202.000
			tc.right = 218.000
			tc.bottom = 1.000
			tc.top = 29.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 1
			tc.font = 0x611e0000
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'c1111'
			tc.left = 90.000
			tc.right = 230.000
			tc.bottom = -15.000
			tc.top = 15.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '修为点:'
			tc.font = 0x611e0000
			tc.align = 1
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'c11111'
			tc.left = 90.000
			tc.right = 230.000
			tc.top = 30.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '需修为点:'
			tc.font = 0x611e0000
			tc.align = 1
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '说明书'
	tc.left = 20.000
	tc.right = 20.000
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'c1'
		tc.left = 55.000
		tc.right = 165.000
		tc.bottom = 125.000
		tc.top = 155.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '名称:'
		tc.font = 0x611e0000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'c11'
		tc.left = 55.000
		tc.right = 165.000
		tc.bottom = 50.500
		tc.top = 65.500
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '数量:'
		tc.font = 0x611e0000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'c11'
		tc.left = 55.000
		tc.right = 165.000
		tc.bottom = 105.000
		tc.top = 135.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '类别:'
		tc.font = 0x611e0000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'c111'
		tc.left = 55.000
		tc.right = 165.000
		tc.bottom = 82.000
		tc.top = 112.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '说明:'
		tc.font = 0x611e0000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '按钮'
	tc.left = 20.000
	tc.right = 20.000
	tp = tc
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '物品'
		tc.left = -27.000
		tc.right = 27.000
		tc.bottom = -27.000
		tc.top = 27.000
		tc.visible = false
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '黑底'
			tc.left = -27.000
			tc.right = 27.000
			tc.bottom = -27.000
			tc.top = 27.000
			tc.img = 0x560e9999
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '图片'
			tc.left = -28.000
			tc.right = 28.000
			tc.bottom = -28.000
			tc.top = 28.000
			tc.mouseEnabled = true
			tc.img = 0x560e9999
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '底片'
			tc.left = -28.000
			tc.right = 28.000
			tc.bottom = -28.000
			tc.top = 28.000
			tc.img = 0x56161002
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '结束'
		tc.left = 236.500
		tc.right = 269.500
		tc.bottom = 161.500
		tc.top = 192.500
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x560a001d
			tp = tc
			end
			tp = tp.parent
			--end
		com = tp.c_button
		com['img_normal'] =1443495965.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '指令'
		tc.left = 86.500
		tc.right = 111.500
		tc.bottom = -2.500
		tc.top = 42.500
		tc.visible = false
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x560a0014
			tp = tc
			end
			tp = tp.parent
			--end
			tc = tp.getChildByName('text')
			if tc then
			tc.wrap = true
			tc.font = 0x600f0000
			tc.align = 2
			tc.style = 4
			tp = tc
			end
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '名称'
			tc.left = -20.000
			tc.right = 20.000
			tc.bottom = -40.000
			tc.top = 40.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.wrap = true
			tc.font = 0x61260000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
		com = tp.c_button
		com['text'] =''
		com['customsize'] =true
		com['img_normal'] =1443495956.000
		com['img_hover'] =1443495955.000
		com['color_hover'] =0.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '快捷'
		tc.left = 118.500
		tc.right = 143.500
		tc.bottom = -2.500
		tc.top = 42.500
		tc.visible = false
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x560a0014
			tp = tc
			end
			tp = tp.parent
			--end
			tc = tp.getChildByName('text')
			if tc then
			tc.wrap = true
			tc.font = 0x600f0000
			tc.align = 2
			tc.style = 4
			tp = tc
			end
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '名称'
			tc.left = -18.000
			tc.right = 22.000
			tc.bottom = -39.000
			tc.top = 41.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '快捷'
			tc.wrap = true
			tc.font = 0x61260000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
		com = tp.c_button
		com['text'] =''
		com['customsize'] =true
		com['img_normal'] =1443495956.000
		com['img_hover'] =1443495955.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '传研'
		tc.left = 118.500
		tc.right = 143.500
		tc.bottom = -2.500
		tc.top = 42.500
		tc.visible = false
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x560a0014
			tp = tc
			end
			tp = tp.parent
			--end
			tc = tp.getChildByName('text')
			if tc then
			tc.wrap = true
			tc.font = 0x600f0000
			tc.align = 2
			tc.style = 4
			tp = tc
			end
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '名称'
			tc.left = -18.000
			tc.right = 22.000
			tc.bottom = -39.000
			tc.top = 41.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '传研'
			tc.wrap = true
			tc.font = 0x61260000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
		com = tp.c_button
		com['text'] =''
		com['customsize'] =true
		com['img_normal'] =1443495956.000
		com['img_hover'] =1443495955.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '丢弃'
		tc.left = 23.500
		tc.right = 48.500
		tc.bottom = -201.500
		tc.top = -156.500
		tc.visible = false
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x560a0014
			tp = tc
			end
			tp = tp.parent
			--end
			tc = tp.getChildByName('text')
			if tc then
			tc.wrap = true
			tc.font = 0x600f0000
			tc.align = 2
			tc.style = 4
			tp = tc
			end
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '名称'
			tc.left = -18.000
			tc.right = 22.000
			tc.bottom = -40.000
			tc.top = 40.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '丢弃'
			tc.wrap = true
			tc.font = 0x61260000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
		com = tp.c_button
		com['text'] =''
		com['customsize'] =true
		com['img_normal'] =1443495956.000
		com['img_hover'] =1443495955.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '左'
		tc.left = 116.000
		tc.right = 144.000
		tc.bottom = -185.000
		tc.top = -145.000
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
		tc.name = '右'
		tc.left = 236.000
		tc.right = 264.000
		tc.bottom = -185.000
		tc.top = -145.000
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
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '百宝箱'
		tc.left = -82.000
		tc.right = -42.000
		tc.bottom = 105.000
		tc.top = 145.000
		tc.mouseEnabled = true
		tc.img = 0x560e010a
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '页数'
	tc.left = 162.000
	tc.right = 262.000
	tc.bottom = -183.000
	tc.top = -143.000
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.text = '1'
	tc.font = 0x613c0000
	tc.style = 2
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '总页数'
	tc.left = 73.000
	tc.right = 123.000
	tc.bottom = -148.000
	tc.top = -128.000
	tc.visible = false
	tc.text = '0'
	tc.font = 0x61140000
	tc.style = 2
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '总个数'
	tc.left = 73.000
	tc.right = 123.000
	tc.bottom = -148.000
	tc.top = -128.000
	tc.visible = false
	tc.text = '0'
	tc.font = 0x61140000
	tc.style = 2
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '闪光'
	tc.left = -276.500
	tc.right = -211.500
	tc.bottom = -82.500
	tc.top = -17.500
	tc.visible = false
	tc.img = 0x33010029
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '快捷'
	tc.left = -83.000
	tc.right = 111.000
	tc.bottom = -83.000
	tc.top = 71.000
	tc.visible = false
	tc.img = 0x560a003b
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '图'
		tc.left = -84.500
		tc.right = 84.500
		tc.bottom = -2.500
		tc.top = 38.500
		tc.img = 0x5616002d
		tp = tc
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '确定'
		tc.left = -35.000
		tc.right = 31.000
		tc.bottom = -38.000
		tc.top = -16.000
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
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = 'q'
		tc.left = -71.000
		tc.right = -41.000
		tc.bottom = 4.000
		tc.top = 34.000
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '数量'
			tc.left = -6.500
			tc.right = 18.500
			tc.bottom = -18.000
			tc.top = 2.000
			tc.font = 0x61140000
			tc.align = 3
			tp = tc
			tp = tp.parent
			--end
		com = tp.c_button
		com['customsize'] =true
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = 'w'
		tc.left = -35.000
		tc.right = -5.000
		tc.bottom = 4.000
		tc.top = 34.000
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '数量'
			tc.left = -6.500
			tc.right = 18.500
			tc.bottom = -18.000
			tc.top = 2.000
			tc.font = 0x61140000
			tc.align = 3
			tp = tc
			tp = tp.parent
			--end
		com = tp.c_button
		com['customsize'] =true
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = 'e'
		tc.left = 1.000
		tc.right = 31.000
		tc.bottom = 4.000
		tc.top = 34.000
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '数量'
			tc.left = -6.500
			tc.right = 18.500
			tc.bottom = -18.000
			tc.top = 2.000
			tc.font = 0x61140000
			tc.align = 3
			tp = tc
			tp = tp.parent
			--end
		com = tp.c_button
		com['customsize'] =true
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = 'r'
		tc.left = 38.000
		tc.right = 68.000
		tc.bottom = 4.000
		tc.top = 34.000
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '数量'
			tc.left = -6.500
			tc.right = 18.500
			tc.bottom = -18.000
			tc.top = 2.000
			tc.font = 0x61140000
			tc.align = 3
			tp = tc
			tp = tp.parent
			--end
		com = tp.c_button
		com['customsize'] =true
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '效果'
	tc.left = -383.000
	tc.right = -383.000
	tc.bottom = 4.000
	tc.top = 4.000
	tc.visible = false
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '背景'
		tc.left = 36.500
		tc.right = 135.500
		tc.bottom = -12.500
		tc.top = 130.500
		tc.img = 0x56160044
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '名称'
		tc.pivotX = 0.000
		tc.left = 37.500
		tc.right = 237.500
		tc.bottom = 104.000
		tc.top = 134.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.font = 0x61180000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '说明'
		tc.pivotY = 1.000
		tc.left = -8.000
		tc.right = 180.000
		tc.bottom = 96.000
		tc.top = 112.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 2
		tc.wrap = true
		tc.font = 0x61180000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '有无招式'
		tc.pivotY = 1.000
		tc.left = -8.000
		tc.right = 180.000
		tc.bottom = 56.000
		tc.top = 80.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.wrap = true
		tc.font = 0x61180000
		tc.align = 1
		tc.style = 10
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '效果'
		tc.pivotY = 1.000
		tc.left = -8.000
		tc.right = 180.000
		tc.bottom = -102.000
		tc.top = 68.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.wrap = true
		tc.font = 0x61180000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '药果'
	tc.left = -414.000
	tc.right = -414.000
	tc.bottom = -208.000
	tc.top = -208.000
	tc.visible = false
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '背景'
		tc.left = 36.500
		tc.right = 135.500
		tc.bottom = -12.500
		tc.top = 130.500
		tc.img = 0x56160044
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '名称'
		tc.pivotX = 0.000
		tc.left = 37.500
		tc.right = 237.500
		tc.bottom = 104.000
		tc.top = 134.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '名称'
		tc.font = 0x61180000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'c111'
		tc.left = 10.000
		tc.right = 120.000
		tc.bottom = 87.000
		tc.top = 117.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '说明:'
		tc.font = 0x61180000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '说明'
		tc.pivotY = 1.000
		tc.left = -10.000
		tc.right = 178.000
		tc.bottom = -108.000
		tc.top = 92.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.wrap = true
		tc.font = 0x61180000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '说明'
	tc.visible = false
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '背景'
		tc.left = 166.000
		tc.right = 424.000
		tc.bottom = -235.000
		tc.top = 235.000
		tc.img = 0x56059002
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '名称'
		tc.pivotX = 0.000
		tc.pivotY = 1.000
		tc.left = 180.000
		tc.right = 275.000
		tc.bottom = 175.000
		tc.top = 225.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 1
		tc.text = '名称:'
		tc.font = 0x602d0000
		tc.align = 1
		tc.style = 8
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '描述'
		tc.pivotX = 0.000
		tc.pivotY = 1.000
		tc.left = 180.000
		tc.right = 652.000
		tc.bottom = 160.000
		tc.top = 205.000
		tc.visible = false
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 2
		tc.text = '22'
		tc.wrap = true
		tc.font = 0x602d0000
		tc.align = 1
		tc.style = 8
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '效果'
		tc.pivotX = 0.000
		tc.pivotY = 1.000
		tc.left = 180.000
		tc.right = 651.000
		tc.bottom = 155.000
		tc.top = 200.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 2
		tc.text = '效果：'
		tc.wrap = true
		tc.font = 0x602d0000
		tc.align = 1
		tc.style = 8
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '特效'
		tc.pivotX = 0.000
		tc.pivotY = 1.000
		tc.left = 180.000
		tc.right = 651.000
		tc.bottom = 75.000
		tc.top = 125.000
		tc.visible = false
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 2
		tc.text = '特效：'
		tc.font = 0x60320000
		tc.align = 1
		tc.style = 8
		tp = tc
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
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '队伍'
	tc.visible = false
	tp = tc
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
			tc.mouseEnabled = true
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
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '结束'
			tc.left = 57.000
			tc.right = 87.000
			tc.bottom = 125.000
			tc.top = 155.000
			tc.visible = false
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
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '副按钮'
		tc.bottom = -20.000
		tc.top = -20.000
		tc.visible = false
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '是'
			tc.left = 295.000
			tc.right = 445.000
			tc.bottom = 60.000
			tc.top = 110.000
			tc.mouseEnabled = true
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '确定'
			tc.font = 0x613c0000
			tc.style = 8
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '否'
			tc.left = 295.000
			tc.right = 445.000
			tc.bottom = 4.000
			tc.top = 54.000
			tc.mouseEnabled = true
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '取消'
			tc.font = 0x613c0000
			tc.style = 8
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '输入框'
		tc.left = -247.000
		tc.right = 253.000
		tc.bottom = 165.000
		tc.top = 215.000
		tc.img = 0x56160065
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '文本'
			tc.left = -204.000
			tc.right = 204.000
			tc.bottom = -25.000
			tc.top = 25.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 1
			tc.text = '真的需要自宫吗？'
			tc.font = 0x61280000
			tc.style = 8
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
	tp = tp.parent
	--end
tp.c_item = setmetatable({}, c_item)
