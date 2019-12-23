--[[203f

]]
local G = require 'gf'
local c_card_select = require 'c_card_select'
local c_button = require 'c_button'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_card_select'
tc.left = -640.000
tc.right = 640.000
tc.bottom = -360.000
tc.top = 360.000
tp = tc
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '前景'
	tc.left = -426.500
	tc.right = 426.500
	tc.bottom = -240.000
	tc.top = 240.000
	tc.mouseEnabled = true
	tc.img = 0x56050058
	tp = tc
	tp = tp.parent
	--end
	tc = G.Entity()
	tp.addChild(tc)
	tc.name = '提示'
	tc.left = -50.000
	tc.right = 50.000
	tc.bottom = 200.000
	tc.top = 220.000
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '背景'
		tc.left = -225.000
		tc.right = 225.000
		tc.bottom = -22.000
		tc.top = 22.000
		tc.img = 0x56160065
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '文本'
		tc.left = -307.500
		tc.right = 303.500
		tc.bottom = -25.000
		tc.top = 25.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 1
		tc.text = '恭喜你，可以选择一张卡片！'
		tc.font = 0x60320000
		tc.style = 5
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.Entity()
	tp.addChild(tc)
	tc.name = '卡区'
	tc.left = -50.000
	tc.right = 50.000
	tc.bottom = -90.000
	tc.top = 10.000
	tc.mouseEnabled = true
	tp = tc
		tc = G.Entity()
		tp.addChild(tc)
		tc.name = 'card_1'
		tc.left = -380.000
		tc.right = -260.000
		tc.bottom = 49.000
		tc.top = 191.000
		tc.mouseEnabled = true
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '图片'
			tc.left = -60.000
			tc.right = 60.000
			tc.bottom = -71.000
			tc.top = 71.000
			tc.mouseEnabled = true
			tc.img = 0x56080001
			tp = tc
			tp = tp.parent
			--end
			tc = G.Entity()
			tp.addChild(tc)
			tc.name = '属性'
			tc.left = -50.000
			tc.right = 50.000
			tc.bottom = -50.000
			tc.top = 50.000
			tp = tc
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '力量'
				tc.left = -60.000
				tc.right = 0.000
				tc.bottom = 46.000
				tc.top = 86.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '10'
				tc.font = 0x603c0000
				tc.style = 4
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '智慧'
				tc.left = -60.000
				tc.right = 0.000
				tc.bottom = 14.000
				tc.top = 54.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '10'
				tc.font = 0x603c0000
				tc.style = 4
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '速度'
				tc.left = -80.000
				tc.right = -20.000
				tc.bottom = 30.000
				tc.top = 70.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '10'
				tc.font = 0x603c0000
				tc.style = 4
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '防御'
				tc.left = -40.000
				tc.right = 20.000
				tc.bottom = 30.000
				tc.top = 70.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '10'
				tc.font = 0x603c0000
				tc.style = 4
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '名称'
			tc.left = -76.500
			tc.right = 76.500
			tc.bottom = -118.000
			tc.top = -58.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 1
			tc.text = '王语嫣'
			tc.font = 0x60370000
			tc.style = 5
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '背景'
			tc.left = -60.000
			tc.right = 60.000
			tc.bottom = -71.000
			tc.top = 71.000
			tc.visible = false
			tc.img = 0x56160044
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Entity()
		tp.addChild(tc)
		tc.name = 'card_2'
		tc.left = -220.000
		tc.right = -100.000
		tc.bottom = 49.000
		tc.top = 191.000
		tc.mouseEnabled = true
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '图片'
			tc.left = -60.000
			tc.right = 60.000
			tc.bottom = -71.000
			tc.top = 71.000
			tc.mouseEnabled = true
			tc.img = 0x56080001
			tp = tc
			tp = tp.parent
			--end
			tc = G.Entity()
			tp.addChild(tc)
			tc.name = '属性'
			tc.left = -50.000
			tc.right = 50.000
			tc.bottom = -50.000
			tc.top = 50.000
			tp = tc
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '力量'
				tc.left = -60.000
				tc.right = 0.000
				tc.bottom = 46.000
				tc.top = 86.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '10'
				tc.font = 0x603c0000
				tc.style = 4
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '智慧'
				tc.left = -60.000
				tc.right = 0.000
				tc.bottom = 14.000
				tc.top = 54.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '10'
				tc.font = 0x603c0000
				tc.style = 4
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '速度'
				tc.left = -80.000
				tc.right = -20.000
				tc.bottom = 30.000
				tc.top = 70.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '10'
				tc.font = 0x603c0000
				tc.style = 4
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '防御'
				tc.left = -40.000
				tc.right = 20.000
				tc.bottom = 30.000
				tc.top = 70.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '10'
				tc.font = 0x603c0000
				tc.style = 4
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '名称'
			tc.left = -76.500
			tc.right = 76.500
			tc.bottom = -118.000
			tc.top = -58.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 1
			tc.text = '王语嫣'
			tc.font = 0x60370000
			tc.style = 5
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '背景'
			tc.left = -60.000
			tc.right = 60.000
			tc.bottom = -71.000
			tc.top = 71.000
			tc.visible = false
			tc.img = 0x56160044
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Entity()
		tp.addChild(tc)
		tc.name = 'card_3'
		tc.left = -60.000
		tc.right = 60.000
		tc.bottom = 49.000
		tc.top = 191.000
		tc.mouseEnabled = true
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '图片'
			tc.left = -60.000
			tc.right = 60.000
			tc.bottom = -71.000
			tc.top = 71.000
			tc.mouseEnabled = true
			tc.img = 0x56080001
			tp = tc
			tp = tp.parent
			--end
			tc = G.Entity()
			tp.addChild(tc)
			tc.name = '属性'
			tc.left = -50.000
			tc.right = 50.000
			tc.bottom = -50.000
			tc.top = 50.000
			tp = tc
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '力量'
				tc.left = -60.000
				tc.right = 0.000
				tc.bottom = 46.000
				tc.top = 86.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '10'
				tc.font = 0x603c0000
				tc.style = 4
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '智慧'
				tc.left = -60.000
				tc.right = 0.000
				tc.bottom = 14.000
				tc.top = 54.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '10'
				tc.font = 0x603c0000
				tc.style = 4
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '速度'
				tc.left = -80.000
				tc.right = -20.000
				tc.bottom = 30.000
				tc.top = 70.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '10'
				tc.font = 0x603c0000
				tc.style = 4
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '防御'
				tc.left = -40.000
				tc.right = 20.000
				tc.bottom = 30.000
				tc.top = 70.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '10'
				tc.font = 0x603c0000
				tc.style = 4
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '名称'
			tc.left = -76.500
			tc.right = 76.500
			tc.bottom = -118.000
			tc.top = -58.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 1
			tc.text = '王语嫣'
			tc.font = 0x60370000
			tc.style = 5
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '背景'
			tc.left = -60.000
			tc.right = 60.000
			tc.bottom = -71.000
			tc.top = 71.000
			tc.visible = false
			tc.img = 0x56160044
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Entity()
		tp.addChild(tc)
		tc.name = 'card_4'
		tc.left = 100.000
		tc.right = 220.000
		tc.bottom = 49.000
		tc.top = 191.000
		tc.mouseEnabled = true
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '图片'
			tc.left = -60.000
			tc.right = 60.000
			tc.bottom = -71.000
			tc.top = 71.000
			tc.mouseEnabled = true
			tc.img = 0x56080001
			tp = tc
			tp = tp.parent
			--end
			tc = G.Entity()
			tp.addChild(tc)
			tc.name = '属性'
			tc.left = -50.000
			tc.right = 50.000
			tc.bottom = -50.000
			tc.top = 50.000
			tp = tc
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '力量'
				tc.left = -60.000
				tc.right = 0.000
				tc.bottom = 46.000
				tc.top = 86.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '10'
				tc.font = 0x603c0000
				tc.style = 4
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '智慧'
				tc.left = -60.000
				tc.right = 0.000
				tc.bottom = 14.000
				tc.top = 54.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '10'
				tc.font = 0x603c0000
				tc.style = 4
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '速度'
				tc.left = -80.000
				tc.right = -20.000
				tc.bottom = 30.000
				tc.top = 70.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '10'
				tc.font = 0x603c0000
				tc.style = 4
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '防御'
				tc.left = -40.000
				tc.right = 20.000
				tc.bottom = 30.000
				tc.top = 70.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '10'
				tc.font = 0x603c0000
				tc.style = 4
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '名称'
			tc.left = -76.500
			tc.right = 76.500
			tc.bottom = -118.000
			tc.top = -58.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 1
			tc.text = '王语嫣'
			tc.font = 0x60370000
			tc.style = 5
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '背景'
			tc.left = -60.000
			tc.right = 60.000
			tc.bottom = -71.000
			tc.top = 71.000
			tc.visible = false
			tc.img = 0x56160044
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Entity()
		tp.addChild(tc)
		tc.name = 'card_5'
		tc.left = 260.000
		tc.right = 380.000
		tc.bottom = 49.000
		tc.top = 191.000
		tc.mouseEnabled = true
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '图片'
			tc.left = -60.000
			tc.right = 60.000
			tc.bottom = -71.000
			tc.top = 71.000
			tc.mouseEnabled = true
			tc.img = 0x56080001
			tp = tc
			tp = tp.parent
			--end
			tc = G.Entity()
			tp.addChild(tc)
			tc.name = '属性'
			tc.left = -50.000
			tc.right = 50.000
			tc.bottom = -50.000
			tc.top = 50.000
			tp = tc
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '力量'
				tc.left = -60.000
				tc.right = 0.000
				tc.bottom = 46.000
				tc.top = 86.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '10'
				tc.font = 0x603c0000
				tc.style = 4
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '智慧'
				tc.left = -60.000
				tc.right = 0.000
				tc.bottom = 14.000
				tc.top = 54.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '10'
				tc.font = 0x603c0000
				tc.style = 4
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '速度'
				tc.left = -80.000
				tc.right = -20.000
				tc.bottom = 30.000
				tc.top = 70.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '10'
				tc.font = 0x603c0000
				tc.style = 4
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '防御'
				tc.left = -40.000
				tc.right = 20.000
				tc.bottom = 30.000
				tc.top = 70.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '10'
				tc.font = 0x603c0000
				tc.style = 4
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '名称'
			tc.left = -76.500
			tc.right = 76.500
			tc.bottom = -118.000
			tc.top = -58.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 1
			tc.text = '王语嫣'
			tc.font = 0x60370000
			tc.style = 5
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '背景'
			tc.left = -60.000
			tc.right = 60.000
			tc.bottom = -71.000
			tc.top = 71.000
			tc.visible = false
			tc.img = 0x56160044
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '闪光'
		tc.left = -392.000
		tc.right = -248.000
		tc.bottom = 37.500
		tc.top = 202.500
		tc.visible = false
		tc.img = 0x33010001
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_button')
	tp.addChild(tc)
	tc.name = '确定'
	tc.left = -50.000
	tc.right = 50.000
	tc.bottom = -90.000
	tc.top = -50.000
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
	com['customsize'] =true
	com['img_normal'] =1444282412.000
	com['img_hover'] =1444282414.000
	com['img_press'] =1444282412.000
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '确认'
	tc.left = -427.000
	tc.right = 427.000
	tc.bottom = -240.000
	tc.top = 240.000
	tc.mouseEnabled = true
	tc.visible = false
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '背景'
		tc.left = -107.000
		tc.right = 87.000
		tc.bottom = -141.000
		tc.top = 13.000
		tc.img = 0x560a003b
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '输入框'
		tc.left = -253.000
		tc.right = 247.000
		tc.bottom = 23.000
		tc.top = 73.000
		tc.img = 0x56160065
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '文本'
			tc.left = -178.500
			tc.right = 178.500
			tc.bottom = -25.000
			tc.top = 25.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 1
			tc.text = '退出即是认输？'
			tc.font = 0x61320000
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
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '是'
			tc.left = -100.000
			tc.right = 0.000
			tc.bottom = -90.000
			tc.top = 10.000
			tc.mouseEnabled = true
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '是'
			tc.font = 0x613c0000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '否'
			tc.left = -20.000
			tc.right = 80.000
			tc.bottom = -89.000
			tc.top = 11.000
			tc.mouseEnabled = true
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '否'
			tc.font = 0x613c0000
			tc.style = 6
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
	tp = tp.parent
	--end
tp.c_card_select = setmetatable({}, c_card_select)
