--[[203d

]]
local G = require 'gf'
local c_scrollview = require 'c_scrollview'
local c_button = require 'c_button'
local c_cardgame = require 'c_cardgame'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_cardgame'
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
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '卡片区域'
	tc.left = -170.000
	tc.right = 170.000
	tc.bottom = -170.500
	tc.top = 170.500
	tc.img = 0x56160077
	tp = tc
	tp = tp.parent
	--end
	tc = G.Entity()
	tp.addChild(tc)
	tc.name = '卡区'
	tc.left = -50.000
	tc.right = 50.000
	tc.bottom = -50.000
	tc.top = 50.000
	tp = tc
		tc = G.Entity()
		tp.addChild(tc)
		tc.name = 'card_1'
		tc.left = -168.000
		tc.right = -62.000
		tc.bottom = 60.000
		tc.top = 170.000
		tc.mouseEnabled = true
		tp = tc
			tc = G.Entity()
			tp.addChild(tc)
			tc.name = '卡片'
			tc.left = -50.000
			tc.right = 50.000
			tc.bottom = -50.000
			tc.top = 50.000
			tc.mouseEnabled = true
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '图片'
				tc.left = -53.000
				tc.right = 53.000
				tc.bottom = -55.000
				tc.top = 55.000
				tc.mouseEnabled = true
				tc.img = 0x56080001
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '边框'
				tc.left = -53.500
				tc.right = 53.500
				tc.bottom = -55.500
				tc.top = 55.500
				tc.mouseEnabled = true
				tc.alpha = 120
				tc.img = 0x5603002b
				tp = tc
				tp = tp.parent
				--end
				tc = G.Entity()
				tp.addChild(tc)
				tc.name = '属性'
				tc.left = -44.000
				tc.right = 56.000
				tc.bottom = -67.000
				tc.top = 33.000
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
				tc.name = '编号'
				tc.left = -30.000
				tc.right = 30.000
				tc.bottom = -20.000
				tc.top = 20.000
				tc.visible = false
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '0'
				tc.font = 0x603c0000
				tc.style = 4
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '按钮'
			tc.left = -53.000
			tc.right = 53.000
			tc.bottom = -55.000
			tc.top = 55.000
			tp = tc
			com = tp.c_button
			com['customsize'] =true
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Entity()
		tp.addChild(tc)
		tc.name = 'card_2'
		tc.left = -53.000
		tc.right = 53.000
		tc.bottom = 60.000
		tc.top = 170.000
		tc.mouseEnabled = true
		tp = tc
			tc = G.Entity()
			tp.addChild(tc)
			tc.name = '卡片'
			tc.left = -50.000
			tc.right = 50.000
			tc.bottom = -50.000
			tc.top = 50.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '图片'
				tc.left = -53.000
				tc.right = 53.000
				tc.bottom = -55.000
				tc.top = 55.000
				tc.mouseEnabled = true
				tc.img = 0x56080001
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '边框'
				tc.left = -53.500
				tc.right = 53.500
				tc.bottom = -55.500
				tc.top = 55.500
				tc.mouseEnabled = true
				tc.alpha = 120
				tc.img = 0x5603002b
				tp = tc
				tp = tp.parent
				--end
				tc = G.Entity()
				tp.addChild(tc)
				tc.name = '属性'
				tc.left = -44.000
				tc.right = 56.000
				tc.bottom = -67.000
				tc.top = 33.000
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
				tc.name = '编号'
				tc.left = -30.000
				tc.right = 30.000
				tc.bottom = -20.000
				tc.top = 20.000
				tc.visible = false
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '0'
				tc.font = 0x603c0000
				tc.style = 4
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '按钮'
			tc.left = -53.000
			tc.right = 53.000
			tc.bottom = -55.000
			tc.top = 55.000
			tp = tc
			com = tp.c_button
			com['customsize'] =true
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Entity()
		tp.addChild(tc)
		tc.name = 'card_3'
		tc.left = 62.000
		tc.right = 168.000
		tc.bottom = 60.000
		tc.top = 170.000
		tc.mouseEnabled = true
		tp = tc
			tc = G.Entity()
			tp.addChild(tc)
			tc.name = '卡片'
			tc.left = -50.000
			tc.right = 50.000
			tc.bottom = -50.000
			tc.top = 50.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '图片'
				tc.left = -53.000
				tc.right = 53.000
				tc.bottom = -55.000
				tc.top = 55.000
				tc.mouseEnabled = true
				tc.img = 0x56080001
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '边框'
				tc.left = -53.500
				tc.right = 53.500
				tc.bottom = -55.500
				tc.top = 55.500
				tc.mouseEnabled = true
				tc.alpha = 120
				tc.img = 0x5603002b
				tp = tc
				tp = tp.parent
				--end
				tc = G.Entity()
				tp.addChild(tc)
				tc.name = '属性'
				tc.left = -44.000
				tc.right = 56.000
				tc.bottom = -67.000
				tc.top = 33.000
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
				tc.name = '编号'
				tc.left = -30.000
				tc.right = 30.000
				tc.bottom = -20.000
				tc.top = 20.000
				tc.visible = false
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '0'
				tc.font = 0x603c0000
				tc.style = 4
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '按钮'
			tc.left = -53.000
			tc.right = 53.000
			tc.bottom = -55.000
			tc.top = 55.000
			tp = tc
			com = tp.c_button
			com['customsize'] =true
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Entity()
		tp.addChild(tc)
		tc.name = 'card_4'
		tc.left = -168.000
		tc.right = -62.000
		tc.bottom = -50.000
		tc.top = 60.000
		tc.mouseEnabled = true
		tp = tc
			tc = G.Entity()
			tp.addChild(tc)
			tc.name = '卡片'
			tc.left = -50.000
			tc.right = 50.000
			tc.bottom = -50.000
			tc.top = 50.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '图片'
				tc.left = -53.000
				tc.right = 53.000
				tc.bottom = -55.000
				tc.top = 55.000
				tc.mouseEnabled = true
				tc.img = 0x56080001
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '边框'
				tc.left = -53.500
				tc.right = 53.500
				tc.bottom = -55.500
				tc.top = 55.500
				tc.mouseEnabled = true
				tc.alpha = 120
				tc.img = 0x5603002b
				tp = tc
				tp = tp.parent
				--end
				tc = G.Entity()
				tp.addChild(tc)
				tc.name = '属性'
				tc.left = -44.000
				tc.right = 56.000
				tc.bottom = -67.000
				tc.top = 33.000
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
				tc.name = '编号'
				tc.left = -30.000
				tc.right = 30.000
				tc.bottom = -20.000
				tc.top = 20.000
				tc.visible = false
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '0'
				tc.font = 0x603c0000
				tc.style = 4
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '按钮'
			tc.left = -53.000
			tc.right = 53.000
			tc.bottom = -55.000
			tc.top = 55.000
			tp = tc
			com = tp.c_button
			com['customsize'] =true
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Entity()
		tp.addChild(tc)
		tc.name = 'card_5'
		tc.left = -53.000
		tc.right = 53.000
		tc.bottom = -50.000
		tc.top = 60.000
		tc.mouseEnabled = true
		tp = tc
			tc = G.Entity()
			tp.addChild(tc)
			tc.name = '卡片'
			tc.left = -50.000
			tc.right = 50.000
			tc.bottom = -50.000
			tc.top = 50.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '图片'
				tc.left = -53.000
				tc.right = 53.000
				tc.bottom = -55.000
				tc.top = 55.000
				tc.mouseEnabled = true
				tc.img = 0x56080001
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '边框'
				tc.left = -53.500
				tc.right = 53.500
				tc.bottom = -55.500
				tc.top = 55.500
				tc.mouseEnabled = true
				tc.alpha = 120
				tc.img = 0x5603002e
				tp = tc
				tp = tp.parent
				--end
				tc = G.Entity()
				tp.addChild(tc)
				tc.name = '属性'
				tc.left = -44.000
				tc.right = 56.000
				tc.bottom = -67.000
				tc.top = 33.000
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
				tc.name = '编号'
				tc.left = -30.000
				tc.right = 30.000
				tc.bottom = -20.000
				tc.top = 20.000
				tc.visible = false
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '0'
				tc.font = 0x603c0000
				tc.style = 4
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '按钮'
			tc.left = -53.000
			tc.right = 53.000
			tc.bottom = -55.000
			tc.top = 55.000
			tp = tc
			com = tp.c_button
			com['customsize'] =true
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Entity()
		tp.addChild(tc)
		tc.name = 'card_6'
		tc.left = 62.000
		tc.right = 168.000
		tc.bottom = -50.000
		tc.top = 60.000
		tc.mouseEnabled = true
		tp = tc
			tc = G.Entity()
			tp.addChild(tc)
			tc.name = '卡片'
			tc.left = -50.000
			tc.right = 50.000
			tc.bottom = -50.000
			tc.top = 50.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '图片'
				tc.left = -53.000
				tc.right = 53.000
				tc.bottom = -55.000
				tc.top = 55.000
				tc.mouseEnabled = true
				tc.img = 0x56080001
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '边框'
				tc.left = -53.500
				tc.right = 53.500
				tc.bottom = -55.500
				tc.top = 55.500
				tc.mouseEnabled = true
				tc.alpha = 120
				tc.img = 0x5603002c
				tp = tc
				tp = tp.parent
				--end
				tc = G.Entity()
				tp.addChild(tc)
				tc.name = '属性'
				tc.left = -44.000
				tc.right = 56.000
				tc.bottom = -67.000
				tc.top = 33.000
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
				tc.name = '编号'
				tc.left = -30.000
				tc.right = 30.000
				tc.bottom = -20.000
				tc.top = 20.000
				tc.visible = false
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '0'
				tc.font = 0x603c0000
				tc.style = 4
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '按钮'
			tc.left = -53.000
			tc.right = 53.000
			tc.bottom = -55.000
			tc.top = 55.000
			tp = tc
			com = tp.c_button
			com['customsize'] =true
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Entity()
		tp.addChild(tc)
		tc.name = 'card_7'
		tc.left = -168.000
		tc.right = -62.000
		tc.bottom = -170.000
		tc.top = -60.000
		tc.mouseEnabled = true
		tp = tc
			tc = G.Entity()
			tp.addChild(tc)
			tc.name = '卡片'
			tc.left = -50.000
			tc.right = 50.000
			tc.bottom = -50.000
			tc.top = 50.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '图片'
				tc.left = -53.000
				tc.right = 53.000
				tc.bottom = -55.000
				tc.top = 55.000
				tc.mouseEnabled = true
				tc.img = 0x56080001
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '边框'
				tc.left = -53.500
				tc.right = 53.500
				tc.bottom = -55.500
				tc.top = 55.500
				tc.mouseEnabled = true
				tc.alpha = 120
				tc.img = 0x5603002b
				tp = tc
				tp = tp.parent
				--end
				tc = G.Entity()
				tp.addChild(tc)
				tc.name = '属性'
				tc.left = -44.000
				tc.right = 56.000
				tc.bottom = -67.000
				tc.top = 33.000
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
				tc.name = '编号'
				tc.left = -30.000
				tc.right = 30.000
				tc.bottom = -20.000
				tc.top = 20.000
				tc.visible = false
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '0'
				tc.font = 0x603c0000
				tc.style = 4
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '按钮'
			tc.left = -53.000
			tc.right = 53.000
			tc.bottom = -55.000
			tc.top = 55.000
			tp = tc
			com = tp.c_button
			com['customsize'] =true
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Entity()
		tp.addChild(tc)
		tc.name = 'card_8'
		tc.left = -53.000
		tc.right = 53.000
		tc.bottom = -170.000
		tc.top = -60.000
		tc.mouseEnabled = true
		tp = tc
			tc = G.Entity()
			tp.addChild(tc)
			tc.name = '卡片'
			tc.left = -50.000
			tc.right = 50.000
			tc.bottom = -50.000
			tc.top = 50.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '图片'
				tc.left = -53.000
				tc.right = 53.000
				tc.bottom = -55.000
				tc.top = 55.000
				tc.mouseEnabled = true
				tc.img = 0x56080001
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '边框'
				tc.left = -53.500
				tc.right = 53.500
				tc.bottom = -55.500
				tc.top = 55.500
				tc.mouseEnabled = true
				tc.alpha = 120
				tc.img = 0x5603002b
				tp = tc
				tp = tp.parent
				--end
				tc = G.Entity()
				tp.addChild(tc)
				tc.name = '属性'
				tc.left = -44.000
				tc.right = 56.000
				tc.bottom = -67.000
				tc.top = 33.000
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
				tc.name = '编号'
				tc.left = -30.000
				tc.right = 30.000
				tc.bottom = -20.000
				tc.top = 20.000
				tc.visible = false
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '0'
				tc.font = 0x603c0000
				tc.style = 4
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '按钮'
			tc.left = -53.000
			tc.right = 53.000
			tc.bottom = -55.000
			tc.top = 55.000
			tp = tc
			com = tp.c_button
			com['customsize'] =true
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Entity()
		tp.addChild(tc)
		tc.name = 'card_9'
		tc.left = 62.000
		tc.right = 168.000
		tc.bottom = -170.000
		tc.top = -60.000
		tc.mouseEnabled = true
		tp = tc
			tc = G.Entity()
			tp.addChild(tc)
			tc.name = '卡片'
			tc.left = -50.000
			tc.right = 50.000
			tc.bottom = -50.000
			tc.top = 50.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '图片'
				tc.left = -53.000
				tc.right = 53.000
				tc.bottom = -55.000
				tc.top = 55.000
				tc.mouseEnabled = true
				tc.img = 0x56080001
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '边框'
				tc.left = -53.500
				tc.right = 53.500
				tc.bottom = -55.500
				tc.top = 55.500
				tc.mouseEnabled = true
				tc.alpha = 120
				tc.img = 0x5603002b
				tp = tc
				tp = tp.parent
				--end
				tc = G.Entity()
				tp.addChild(tc)
				tc.name = '属性'
				tc.left = -44.000
				tc.right = 56.000
				tc.bottom = -67.000
				tc.top = 33.000
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
				tc.name = '编号'
				tc.left = -30.000
				tc.right = 30.000
				tc.bottom = -20.000
				tc.top = 20.000
				tc.visible = false
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '0'
				tc.font = 0x603c0000
				tc.style = 4
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '按钮'
			tc.left = -53.000
			tc.right = 53.000
			tc.bottom = -55.000
			tc.top = 55.000
			tp = tc
			com = tp.c_button
			com['customsize'] =true
			tp = tp.parent
			--end
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.Entity()
	tp.addChild(tc)
	tc.name = '一区'
	tc.left = 670.000
	tc.right = 770.000
	tc.bottom = -70.000
	tc.top = 30.000
	tp = tc
		tc = G.Entity()
		tp.addChild(tc)
		tc.name = 'card_1'
		tc.left = -440.000
		tc.right = -320.000
		tc.bottom = 59.000
		tc.top = 201.000
		tc.mouseEnabled = true
		tc.visible = false
		tc.rotation = 16.000
		tc.scaleX = 1.000
		tc.scaleY = 1.000
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '图片'
			tc.left = -60.000
			tc.right = 60.000
			tc.bottom = -71.000
			tc.top = 71.000
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
			tc.name = '编号'
			tc.left = -30.000
			tc.right = 30.000
			tc.bottom = -20.000
			tc.top = 20.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x603c0000
			tc.style = 4
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Entity()
		tp.addChild(tc)
		tc.name = 'card_2'
		tc.left = -455.000
		tc.right = -335.000
		tc.bottom = -6.000
		tc.top = 136.000
		tc.mouseEnabled = true
		tc.visible = false
		tc.rotation = 8.000
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '图片'
			tc.left = -60.000
			tc.right = 60.000
			tc.bottom = -71.000
			tc.top = 71.000
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
			tc.name = '编号'
			tc.left = -30.000
			tc.right = 30.000
			tc.bottom = -20.000
			tc.top = 20.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x603c0000
			tc.style = 4
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Entity()
		tp.addChild(tc)
		tc.name = 'card_3'
		tc.left = -460.000
		tc.right = -340.000
		tc.bottom = -71.000
		tc.top = 71.000
		tc.mouseEnabled = true
		tc.visible = false
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '图片'
			tc.left = -60.000
			tc.right = 60.000
			tc.bottom = -71.000
			tc.top = 71.000
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
			tc.name = '编号'
			tc.left = -30.000
			tc.right = 30.000
			tc.bottom = -20.000
			tc.top = 20.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x603c0000
			tc.style = 4
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Entity()
		tp.addChild(tc)
		tc.name = 'card_4'
		tc.left = -455.000
		tc.right = -335.000
		tc.bottom = -136.000
		tc.top = 6.000
		tc.mouseEnabled = true
		tc.visible = false
		tc.rotation = -8.000
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '图片'
			tc.left = -60.000
			tc.right = 60.000
			tc.bottom = -71.000
			tc.top = 71.000
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
			tc.name = '编号'
			tc.left = -30.000
			tc.right = 30.000
			tc.bottom = -20.000
			tc.top = 20.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x603c0000
			tc.style = 4
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Entity()
		tp.addChild(tc)
		tc.name = 'card_5'
		tc.left = -440.000
		tc.right = -320.000
		tc.bottom = -201.000
		tc.top = -59.000
		tc.mouseEnabled = true
		tc.visible = false
		tc.rotation = -16.000
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '图片'
			tc.left = -60.000
			tc.right = 60.000
			tc.bottom = -71.000
			tc.top = 71.000
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
			tc.name = '编号'
			tc.left = -30.000
			tc.right = 30.000
			tc.bottom = -20.000
			tc.top = 20.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x603c0000
			tc.style = 4
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '闪光'
		tc.left = 178.000
		tc.right = 322.000
		tc.bottom = 47.500
		tc.top = 212.500
		tc.visible = false
		tc.img = 0x33010001
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.Entity()
	tp.addChild(tc)
	tc.name = '二区'
	tc.left = -770.000
	tc.right = -670.000
	tc.bottom = -70.000
	tc.top = 30.000
	tc.visible = false
	tp = tc
		tc = G.Entity()
		tp.addChild(tc)
		tc.name = 'card_1'
		tc.left = 320.000
		tc.right = 440.000
		tc.bottom = 59.000
		tc.top = 201.000
		tc.rotation = -16.000
		tp = tc
			tc = G.Entity()
			tp.addChild(tc)
			tc.name = '属性'
			tc.left = -50.000
			tc.right = 50.000
			tc.bottom = -50.000
			tc.top = 50.000
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '图片'
				tc.left = -60.000
				tc.right = 60.000
				tc.bottom = -71.000
				tc.top = 71.000
				tc.img = 0x56080001
				tp = tc
				tp = tp.parent
				--end
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
		tc.left = 335.000
		tc.right = 455.000
		tc.bottom = -6.000
		tc.top = 136.000
		tc.rotation = -8.000
		tp = tc
			tc = G.Entity()
			tp.addChild(tc)
			tc.name = '属性'
			tc.left = -50.000
			tc.right = 50.000
			tc.bottom = -50.000
			tc.top = 50.000
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '图片'
				tc.left = -60.000
				tc.right = 60.000
				tc.bottom = -71.000
				tc.top = 71.000
				tc.img = 0x56080001
				tp = tc
				tp = tp.parent
				--end
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
		tc.left = 340.000
		tc.right = 460.000
		tc.bottom = -71.000
		tc.top = 71.000
		tp = tc
			tc = G.Entity()
			tp.addChild(tc)
			tc.name = '属性'
			tc.left = -50.000
			tc.right = 50.000
			tc.bottom = -50.000
			tc.top = 50.000
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '图片'
				tc.left = -60.000
				tc.right = 60.000
				tc.bottom = -71.000
				tc.top = 71.000
				tc.img = 0x56080001
				tp = tc
				tp = tp.parent
				--end
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
		tc.left = 335.000
		tc.right = 455.000
		tc.bottom = -136.000
		tc.top = 6.000
		tc.rotation = 8.000
		tp = tc
			tc = G.Entity()
			tp.addChild(tc)
			tc.name = '属性'
			tc.left = -50.000
			tc.right = 50.000
			tc.bottom = -50.000
			tc.top = 50.000
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '图片'
				tc.left = -60.000
				tc.right = 60.000
				tc.bottom = -71.000
				tc.top = 71.000
				tc.img = 0x56080001
				tp = tc
				tp = tp.parent
				--end
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
		tc.left = 320.000
		tc.right = 440.000
		tc.bottom = -201.000
		tc.top = -59.000
		tc.rotation = 16.000
		tc.scaleX = 1.000
		tc.scaleY = 1.000
		tp = tc
			tc = G.Entity()
			tp.addChild(tc)
			tc.name = '属性'
			tc.left = -50.000
			tc.right = 50.000
			tc.bottom = -50.000
			tc.top = 50.000
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '图片'
				tc.left = -60.000
				tc.right = 60.000
				tc.bottom = -71.000
				tc.top = 71.000
				tc.img = 0x56080001
				tp = tc
				tp = tp.parent
				--end
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
	tp = tp.parent
	--end
	tc = G.Entity()
	tp.addChild(tc)
	tc.name = '显示'
	tc.left = -50.000
	tc.right = 50.000
	tc.bottom = -50.000
	tc.top = 50.000
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '对方'
		tc.left = -217.000
		tc.right = -17.000
		tc.bottom = -260.000
		tc.top = -160.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '[03]卡数：[05]5'
		tc.font = 0x60320000
		tc.style = 3
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '我方'
		tc.left = 22.000
		tc.right = 222.000
		tc.bottom = -260.000
		tc.top = -160.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '[04]卡数：[03]5'
		tc.font = 0x60320000
		tc.style = 4
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.Entity()
	tp.addChild(tc)
	tc.name = '提示'
	tc.left = -50.000
	tc.right = 50.000
	tc.bottom = 160.000
	tc.top = 260.000
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
		tc.left = -269.500
		tc.right = 271.500
		tc.bottom = -25.000
		tc.top = 25.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 1
		tc.text = '选择你要的卡牌，最多5张'
		tc.font = 0x60320000
		tc.style = 5
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.Entity()
	tp.addChild(tc)
	tc.name = '轮换'
	tc.left = -50.000
	tc.right = 50.000
	tc.bottom = -50.000
	tc.top = 50.000
	tc.visible = false
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '一区'
		tc.left = 215.500
		tc.right = 280.500
		tc.bottom = 176.500
		tc.top = 243.500
		tc.visible = false
		tc.rotation = -90.000
		tc.img = 0x33010024
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '二区'
		tc.left = -283.500
		tc.right = -218.500
		tc.bottom = 176.500
		tc.top = 243.500
		tc.visible = false
		tc.rotation = -90.000
		tc.img = 0x33010024
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '取消'
	tc.left = 275.000
	tc.right = 475.000
	tc.bottom = 160.000
	tc.top = 260.000
	tc.mouseEnabled = true
	tc.visible = false
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.text = '取消'
	tc.font = 0x603c0000
	tc.style = 5
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '关闭'
	tc.pivotX = 0.000
	tc.pivotY = 1.000
	tc.left = 191.000
	tc.right = 335.000
	tc.bottom = -303.000
	tc.top = -167.000
	tc.mouseEnabled = true
	tc.visible = false
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.text = '关闭退出'
	tc.wrap = true
	tc.font = 0x61400000
	tc.style = 11
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '规则'
	tc.pivotX = 0.000
	tc.pivotY = 1.000
	tc.left = -247.000
	tc.right = -103.000
	tc.bottom = 44.000
	tc.top = 180.000
	tc.mouseEnabled = true
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.text = '规则说明'
	tc.wrap = true
	tc.font = 0x61400000
	tc.style = 11
	tp = tc
	tp = tp.parent
	--end
	tc = G.Entity()
	tp.addChild(tc)
	tc.name = '筛子区'
	tc.left = -50.000
	tc.right = 50.000
	tc.bottom = -50.000
	tc.top = 50.000
	tc.visible = false
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '动画'
		tc.left = -133.500
		tc.right = 163.500
		tc.bottom = -99.000
		tc.top = 235.000
		tc.img = 0x33010004
		tp = tc
		tp = tp.parent
		--end
		tc = G.Entity()
		tp.addChild(tc)
		tc.name = '点数'
		tc.left = -46.000
		tc.right = 54.000
		tc.bottom = -9.000
		tc.top = 91.000
		tc.visible = false
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '一'
			tc.left = -54.000
			tc.right = -22.000
			tc.bottom = -54.000
			tc.top = -18.000
			tc.img = 0x56100006
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '二'
			tc.left = 9.000
			tc.right = 41.000
			tc.bottom = -56.000
			tc.top = -20.000
			tc.img = 0x56100006
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.Entity()
	tp.addChild(tc)
	tc.name = '卡选区'
	tc.left = -50.000
	tc.right = 50.000
	tc.bottom = -45.000
	tc.top = 55.000
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '前景'
		tc.left = -427.000
		tc.right = 427.000
		tc.bottom = -240.000
		tc.top = 240.000
		tc.alpha = 0
		tc.img = 0x56000001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '背景'
		tc.left = -418.000
		tc.right = 186.000
		tc.bottom = -236.000
		tc.top = 180.000
		tc.img = 0x56059002
		tp = tc
		tp = tp.parent
		--end
		tc = G.loadUI('v_background')
		tp.addChild(tc)
		tc.name = '底板'
		tc.pivotX = 0.000
		tc.pivotY = 1.000
		tc.left = -414.500
		tc.right = 175.500
		tc.bottom = 117.000
		tc.top = 174.000
		tp = tc
		tp = tp.parent
		--end
		tc = G.Entity()
		tp.addChild(tc)
		tc.name = '卡底'
		tc.left = -414.000
		tc.right = -354.000
		tc.bottom = 103.500
		tc.top = 174.500
		tc.visible = false
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '图片'
			tc.left = -30.000
			tc.right = 30.000
			tc.bottom = -35.500
			tc.top = 35.500
			tc.mouseEnabled = true
			tc.img = 0x56080001
			tp = tc
			tp = tp.parent
			--end
			tc = G.Entity()
			tp.addChild(tc)
			tc.name = '属性'
			tc.left = -22.000
			tc.right = 78.000
			tc.bottom = -89.000
			tc.top = 11.000
			tp = tc
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '力量'
				tc.left = -70.000
				tc.right = -10.000
				tc.bottom = 50.000
				tc.top = 90.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '10'
				tc.font = 0x60280000
				tc.style = 4
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '智慧'
				tc.left = -70.000
				tc.right = -10.000
				tc.bottom = 20.000
				tc.top = 60.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '10'
				tc.font = 0x60280000
				tc.style = 4
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '速度'
				tc.left = -80.000
				tc.right = -20.000
				tc.bottom = 35.000
				tc.top = 75.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '10'
				tc.font = 0x60280000
				tc.style = 4
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '防御'
				tc.left = -60.000
				tc.right = 0.000
				tc.bottom = 35.000
				tc.top = 75.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '10'
				tc.font = 0x60280000
				tc.style = 4
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '数量'
				tc.left = -38.000
				tc.right = 22.000
				tc.bottom = -6.000
				tc.top = 34.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '99'
				tc.font = 0x60320000
				tc.style = 5
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_scrollview')
		tp.addChild(tc)
		tc.name = '卡组'
		tc.left = -414.500
		tc.right = 182.500
		tc.bottom = -233.000
		tc.top = 107.000
		tc.visible = false
		tp = tc
			tc = tp.getChildByName('content')
			if tc then
			tc.right = 0.000
			tc.anchor = 0x64646400
			tp = tc
				tc = G.Entity()
				tp.addChild(tc)
				tc.name = '卡底'
				tc.left = -296.000
				tc.right = -236.000
				tc.bottom = -75.500
				tc.top = -4.500
				tc.mouseEnabled = true
				tc.visible = false
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '图片'
					tc.left = -30.000
					tc.right = 30.000
					tc.bottom = -35.500
					tc.top = 35.500
					tc.mouseEnabled = true
					tc.img = 0x56080001
					tp = tc
					tp = tp.parent
					--end
					tc = G.Entity()
					tp.addChild(tc)
					tc.name = '属性'
					tc.left = -22.000
					tc.right = 78.000
					tc.bottom = -89.000
					tc.top = 11.000
					tp = tc
						tc = G.TextQuad()
						tp.addChild(tc)
						tc.name = '力量'
						tc.left = -70.000
						tc.right = -10.000
						tc.bottom = 50.000
						tc.top = 90.000
						tc.scaleX = 0.500
						tc.scaleY = 0.500
						tc.text = '10'
						tc.font = 0x60280000
						tc.style = 4
						tp = tc
						tp = tp.parent
						--end
						tc = G.TextQuad()
						tp.addChild(tc)
						tc.name = '智慧'
						tc.left = -70.000
						tc.right = -10.000
						tc.bottom = 20.000
						tc.top = 60.000
						tc.scaleX = 0.500
						tc.scaleY = 0.500
						tc.text = '10'
						tc.font = 0x60280000
						tc.style = 4
						tp = tc
						tp = tp.parent
						--end
						tc = G.TextQuad()
						tp.addChild(tc)
						tc.name = '速度'
						tc.left = -80.000
						tc.right = -20.000
						tc.bottom = 35.000
						tc.top = 75.000
						tc.scaleX = 0.500
						tc.scaleY = 0.500
						tc.text = '10'
						tc.font = 0x60280000
						tc.style = 4
						tp = tc
						tp = tp.parent
						--end
						tc = G.TextQuad()
						tp.addChild(tc)
						tc.name = '防御'
						tc.left = -60.000
						tc.right = 0.000
						tc.bottom = 35.000
						tc.top = 75.000
						tc.scaleX = 0.500
						tc.scaleY = 0.500
						tc.text = '10'
						tc.font = 0x60280000
						tc.style = 4
						tp = tc
						tp = tp.parent
						--end
						tc = G.TextQuad()
						tp.addChild(tc)
						tc.name = '数量'
						tc.left = -38.000
						tc.right = 22.000
						tc.bottom = -6.000
						tc.top = 34.000
						tc.scaleX = 0.500
						tc.scaleY = 0.500
						tc.text = '99'
						tc.font = 0x60320000
						tc.style = 5
						tp = tc
						tp = tp.parent
						--end
					tp = tp.parent
					--end
				tp = tp.parent
				--end
			end
			tp = tp.parent
			--end
			tc = tp.getChildByName('slider')
			if tc then
			tc.left = -30.000
			tc.right = -24.000
			tp = tc
				tc = tp.getChildByName('按钮')
				if tc then
				tc.bottom = -247.295
				tc.color = 0xb2b2b2
				tp = tc
				end
				tp = tp.parent
				--end
			end
			tp = tp.parent
			--end
			tc = G.Entity()
			tp.addChild(tc)
			tc.name = '卡底'
			tc.left = -235.000
			tc.right = -175.000
			tc.bottom = 129.500
			tc.top = 200.500
			tc.mouseEnabled = true
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '图片'
				tc.left = -30.000
				tc.right = 30.000
				tc.bottom = -35.500
				tc.top = 35.500
				tc.mouseEnabled = true
				tc.img = 0x56080001
				tp = tc
				tp = tp.parent
				--end
				tc = G.Entity()
				tp.addChild(tc)
				tc.name = '属性'
				tc.left = -22.000
				tc.right = 78.000
				tc.bottom = -89.000
				tc.top = 11.000
				tp = tc
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '力量'
					tc.left = -70.000
					tc.right = -10.000
					tc.bottom = 50.000
					tc.top = 90.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '10'
					tc.font = 0x60280000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '智慧'
					tc.left = -70.000
					tc.right = -10.000
					tc.bottom = 20.000
					tc.top = 60.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '10'
					tc.font = 0x60280000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '速度'
					tc.left = -80.000
					tc.right = -20.000
					tc.bottom = 35.000
					tc.top = 75.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '10'
					tc.font = 0x60280000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '防御'
					tc.left = -60.000
					tc.right = 0.000
					tc.bottom = 35.000
					tc.top = 75.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '10'
					tc.font = 0x60280000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '数量'
					tc.left = -38.000
					tc.right = 22.000
					tc.bottom = -6.000
					tc.top = 34.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '99'
					tc.font = 0x60320000
					tc.style = 5
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.Entity()
			tp.addChild(tc)
			tc.name = '卡底1'
			tc.left = -170.000
			tc.right = -110.000
			tc.bottom = 129.500
			tc.top = 200.500
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '图片'
				tc.left = -30.000
				tc.right = 30.000
				tc.bottom = -35.500
				tc.top = 35.500
				tc.mouseEnabled = true
				tc.img = 0x56080001
				tp = tc
				tp = tp.parent
				--end
				tc = G.Entity()
				tp.addChild(tc)
				tc.name = '属性'
				tc.left = -22.000
				tc.right = 78.000
				tc.bottom = -89.000
				tc.top = 11.000
				tp = tc
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '力量'
					tc.left = -70.000
					tc.right = -10.000
					tc.bottom = 50.000
					tc.top = 90.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '10'
					tc.font = 0x60280000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '智慧'
					tc.left = -70.000
					tc.right = -10.000
					tc.bottom = 20.000
					tc.top = 60.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '10'
					tc.font = 0x60280000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '速度'
					tc.left = -80.000
					tc.right = -20.000
					tc.bottom = 35.000
					tc.top = 75.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '10'
					tc.font = 0x60280000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '防御'
					tc.left = -60.000
					tc.right = 0.000
					tc.bottom = 35.000
					tc.top = 75.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '10'
					tc.font = 0x60280000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '数量'
					tc.left = -38.000
					tc.right = 22.000
					tc.bottom = -6.000
					tc.top = 34.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '99'
					tc.font = 0x60320000
					tc.style = 5
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.Entity()
			tp.addChild(tc)
			tc.name = '卡底1'
			tc.left = -105.000
			tc.right = -45.000
			tc.bottom = 129.500
			tc.top = 200.500
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '图片'
				tc.left = -30.000
				tc.right = 30.000
				tc.bottom = -35.500
				tc.top = 35.500
				tc.mouseEnabled = true
				tc.img = 0x56080001
				tp = tc
				tp = tp.parent
				--end
				tc = G.Entity()
				tp.addChild(tc)
				tc.name = '属性'
				tc.left = -22.000
				tc.right = 78.000
				tc.bottom = -89.000
				tc.top = 11.000
				tp = tc
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '力量'
					tc.left = -70.000
					tc.right = -10.000
					tc.bottom = 50.000
					tc.top = 90.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '10'
					tc.font = 0x60280000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '智慧'
					tc.left = -70.000
					tc.right = -10.000
					tc.bottom = 20.000
					tc.top = 60.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '10'
					tc.font = 0x60280000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '速度'
					tc.left = -80.000
					tc.right = -20.000
					tc.bottom = 35.000
					tc.top = 75.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '10'
					tc.font = 0x60280000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '防御'
					tc.left = -60.000
					tc.right = 0.000
					tc.bottom = 35.000
					tc.top = 75.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '10'
					tc.font = 0x60280000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '数量'
					tc.left = -38.000
					tc.right = 22.000
					tc.bottom = -6.000
					tc.top = 34.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '99'
					tc.font = 0x60320000
					tc.style = 5
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.Entity()
			tp.addChild(tc)
			tc.name = '卡底1'
			tc.left = -40.000
			tc.right = 20.000
			tc.bottom = 129.500
			tc.top = 200.500
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '图片'
				tc.left = -30.000
				tc.right = 30.000
				tc.bottom = -35.500
				tc.top = 35.500
				tc.mouseEnabled = true
				tc.img = 0x56080001
				tp = tc
				tp = tp.parent
				--end
				tc = G.Entity()
				tp.addChild(tc)
				tc.name = '属性'
				tc.left = -22.000
				tc.right = 78.000
				tc.bottom = -89.000
				tc.top = 11.000
				tp = tc
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '力量'
					tc.left = -70.000
					tc.right = -10.000
					tc.bottom = 50.000
					tc.top = 90.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '10'
					tc.font = 0x60280000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '智慧'
					tc.left = -70.000
					tc.right = -10.000
					tc.bottom = 20.000
					tc.top = 60.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '10'
					tc.font = 0x60280000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '速度'
					tc.left = -80.000
					tc.right = -20.000
					tc.bottom = 35.000
					tc.top = 75.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '10'
					tc.font = 0x60280000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '防御'
					tc.left = -60.000
					tc.right = 0.000
					tc.bottom = 35.000
					tc.top = 75.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '10'
					tc.font = 0x60280000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '数量'
					tc.left = -38.000
					tc.right = 22.000
					tc.bottom = -6.000
					tc.top = 34.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '99'
					tc.font = 0x60320000
					tc.style = 5
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.Entity()
			tp.addChild(tc)
			tc.name = '卡底1'
			tc.left = 25.000
			tc.right = 85.000
			tc.bottom = 129.500
			tc.top = 200.500
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '图片'
				tc.left = -30.000
				tc.right = 30.000
				tc.bottom = -35.500
				tc.top = 35.500
				tc.mouseEnabled = true
				tc.img = 0x56080001
				tp = tc
				tp = tp.parent
				--end
				tc = G.Entity()
				tp.addChild(tc)
				tc.name = '属性'
				tc.left = -22.000
				tc.right = 78.000
				tc.bottom = -89.000
				tc.top = 11.000
				tp = tc
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '力量'
					tc.left = -70.000
					tc.right = -10.000
					tc.bottom = 50.000
					tc.top = 90.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '10'
					tc.font = 0x60280000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '智慧'
					tc.left = -70.000
					tc.right = -10.000
					tc.bottom = 20.000
					tc.top = 60.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '10'
					tc.font = 0x60280000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '速度'
					tc.left = -80.000
					tc.right = -20.000
					tc.bottom = 35.000
					tc.top = 75.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '10'
					tc.font = 0x60280000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '防御'
					tc.left = -60.000
					tc.right = 0.000
					tc.bottom = 35.000
					tc.top = 75.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '10'
					tc.font = 0x60280000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '数量'
					tc.left = -38.000
					tc.right = 22.000
					tc.bottom = -6.000
					tc.top = 34.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '99'
					tc.font = 0x60320000
					tc.style = 5
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.Entity()
			tp.addChild(tc)
			tc.name = '卡底1'
			tc.left = 90.000
			tc.right = 150.000
			tc.bottom = 129.500
			tc.top = 200.500
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '图片'
				tc.left = -30.000
				tc.right = 30.000
				tc.bottom = -35.500
				tc.top = 35.500
				tc.mouseEnabled = true
				tc.img = 0x56080001
				tp = tc
				tp = tp.parent
				--end
				tc = G.Entity()
				tp.addChild(tc)
				tc.name = '属性'
				tc.left = -22.000
				tc.right = 78.000
				tc.bottom = -89.000
				tc.top = 11.000
				tp = tc
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '力量'
					tc.left = -70.000
					tc.right = -10.000
					tc.bottom = 50.000
					tc.top = 90.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '10'
					tc.font = 0x60280000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '智慧'
					tc.left = -70.000
					tc.right = -10.000
					tc.bottom = 20.000
					tc.top = 60.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '10'
					tc.font = 0x60280000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '速度'
					tc.left = -80.000
					tc.right = -20.000
					tc.bottom = 35.000
					tc.top = 75.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '10'
					tc.font = 0x60280000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '防御'
					tc.left = -60.000
					tc.right = 0.000
					tc.bottom = 35.000
					tc.top = 75.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '10'
					tc.font = 0x60280000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '数量'
					tc.left = -38.000
					tc.right = 22.000
					tc.bottom = -6.000
					tc.top = 34.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '99'
					tc.font = 0x60320000
					tc.style = 5
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.Entity()
			tp.addChild(tc)
			tc.name = '卡底1'
			tc.left = 155.000
			tc.right = 215.000
			tc.bottom = 129.500
			tc.top = 200.500
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '图片'
				tc.left = -30.000
				tc.right = 30.000
				tc.bottom = -35.500
				tc.top = 35.500
				tc.mouseEnabled = true
				tc.img = 0x56080001
				tp = tc
				tp = tp.parent
				--end
				tc = G.Entity()
				tp.addChild(tc)
				tc.name = '属性'
				tc.left = -22.000
				tc.right = 78.000
				tc.bottom = -89.000
				tc.top = 11.000
				tp = tc
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '力量'
					tc.left = -70.000
					tc.right = -10.000
					tc.bottom = 50.000
					tc.top = 90.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '10'
					tc.font = 0x60280000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '智慧'
					tc.left = -70.000
					tc.right = -10.000
					tc.bottom = 20.000
					tc.top = 60.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '10'
					tc.font = 0x60280000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '速度'
					tc.left = -80.000
					tc.right = -20.000
					tc.bottom = 35.000
					tc.top = 75.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '10'
					tc.font = 0x60280000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '防御'
					tc.left = -60.000
					tc.right = 0.000
					tc.bottom = 35.000
					tc.top = 75.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '10'
					tc.font = 0x60280000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '数量'
					tc.left = -38.000
					tc.right = 22.000
					tc.bottom = -6.000
					tc.top = 34.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '99'
					tc.font = 0x60320000
					tc.style = 5
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.Entity()
			tp.addChild(tc)
			tc.name = '卡底1'
			tc.left = 220.000
			tc.right = 280.000
			tc.bottom = 129.500
			tc.top = 200.500
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '图片'
				tc.left = -30.000
				tc.right = 30.000
				tc.bottom = -35.500
				tc.top = 35.500
				tc.mouseEnabled = true
				tc.img = 0x56080001
				tp = tc
				tp = tp.parent
				--end
				tc = G.Entity()
				tp.addChild(tc)
				tc.name = '属性'
				tc.left = -22.000
				tc.right = 78.000
				tc.bottom = -89.000
				tc.top = 11.000
				tp = tc
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '力量'
					tc.left = -70.000
					tc.right = -10.000
					tc.bottom = 50.000
					tc.top = 90.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '10'
					tc.font = 0x60280000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '智慧'
					tc.left = -70.000
					tc.right = -10.000
					tc.bottom = 20.000
					tc.top = 60.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '10'
					tc.font = 0x60280000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '速度'
					tc.left = -80.000
					tc.right = -20.000
					tc.bottom = 35.000
					tc.top = 75.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '10'
					tc.font = 0x60280000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '防御'
					tc.left = -60.000
					tc.right = 0.000
					tc.bottom = 35.000
					tc.top = 75.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '10'
					tc.font = 0x60280000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '数量'
					tc.left = -38.000
					tc.right = 22.000
					tc.bottom = -6.000
					tc.top = 34.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '99'
					tc.font = 0x60320000
					tc.style = 5
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.Entity()
			tp.addChild(tc)
			tc.name = '卡底11'
			tc.left = -300.000
			tc.right = -240.000
			tc.bottom = 54.500
			tc.top = 125.500
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '图片'
				tc.left = -30.000
				tc.right = 30.000
				tc.bottom = -35.500
				tc.top = 35.500
				tc.mouseEnabled = true
				tc.img = 0x56080001
				tp = tc
				tp = tp.parent
				--end
				tc = G.Entity()
				tp.addChild(tc)
				tc.name = '属性'
				tc.left = -22.000
				tc.right = 78.000
				tc.bottom = -89.000
				tc.top = 11.000
				tp = tc
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '力量'
					tc.left = -70.000
					tc.right = -10.000
					tc.bottom = 50.000
					tc.top = 90.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '10'
					tc.font = 0x60280000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '智慧'
					tc.left = -70.000
					tc.right = -10.000
					tc.bottom = 20.000
					tc.top = 60.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '10'
					tc.font = 0x60280000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '速度'
					tc.left = -80.000
					tc.right = -20.000
					tc.bottom = 35.000
					tc.top = 75.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '10'
					tc.font = 0x60280000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '防御'
					tc.left = -60.000
					tc.right = 0.000
					tc.bottom = 35.000
					tc.top = 75.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '10'
					tc.font = 0x60280000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '数量'
					tc.left = -38.000
					tc.right = 22.000
					tc.bottom = -6.000
					tc.top = 34.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '99'
					tc.font = 0x60320000
					tc.style = 5
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
			tp = tp.parent
			--end
		com = tp.c_scrollview
		com['autoMove'] =false
		com['hideSlider'] =true
		tp = tp.parent
		--end
		tc = G.Entity()
		tp.addChild(tc)
		tc.name = '按钮'
		tc.left = -33.000
		tc.right = 67.000
		tc.bottom = -94.000
		tc.top = 6.000
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '普通'
			tc.left = -450.000
			tc.right = -270.000
			tc.bottom = 140.000
			tc.top = 240.000
			tc.mouseEnabled = true
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '普通'
			tc.font = 0x60370000
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '一般'
			tc.left = -360.000
			tc.right = -180.000
			tc.bottom = 140.000
			tc.top = 240.000
			tc.mouseEnabled = true
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '一般'
			tc.font = 0x60370000
			tc.style = 6
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '优秀'
			tc.left = -270.000
			tc.right = -90.000
			tc.bottom = 140.000
			tc.top = 240.000
			tc.mouseEnabled = true
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '优秀'
			tc.font = 0x60370000
			tc.style = 4
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '英雄'
			tc.left = -180.000
			tc.right = 0.000
			tc.bottom = 139.000
			tc.top = 239.000
			tc.mouseEnabled = true
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '英雄'
			tc.font = 0x60370000
			tc.style = 7
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '宗师'
			tc.left = -90.000
			tc.right = 90.000
			tc.bottom = 140.000
			tc.top = 240.000
			tc.mouseEnabled = true
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '宗师'
			tc.font = 0x60370000
			tc.style = 8
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '传奇'
			tc.right = 180.000
			tc.bottom = 140.000
			tc.top = 240.000
			tc.mouseEnabled = true
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '传奇'
			tc.font = 0x60370000
			tc.style = 5
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '闪光'
			tc.left = -410.000
			tc.right = -310.000
			tc.bottom = 170.000
			tc.top = 210.000
			tc.visible = false
			tc.img = 0x33010001
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
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
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '结果'
	tc.left = -189.500
	tc.right = 121.500
	tc.bottom = -10.000
	tc.top = 162.000
	tc.visible = false
	tc.img = 0x5616004c
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '等级'
	tc.pivotX = 0.000
	tc.left = -422.000
	tc.right = -100.000
	tc.bottom = 163.000
	tc.top = 263.000
	tc.mouseEnabled = true
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.autosize = 1
	tc.text = '卡片游戏LV：[07]0'
	tc.font = 0x60320000
	tc.style = 5
	tp = tc
	tp = tp.parent
	--end
	tc = G.Entity()
	tp.addChild(tc)
	tc.name = '说明'
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
		tc.left = -418.000
		tc.right = 186.000
		tc.bottom = -236.000
		tc.top = 180.000
		tc.img = 0x56059002
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '文本'
		tc.pivotX = 0.000
		tc.pivotY = 1.000
		tc.left = -392.000
		tc.right = 678.000
		tc.bottom = -631.000
		tc.top = 169.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '[03]【规则说明】[br][05]比大小：[br][04]        该规则下相邻的卡牌相邻数字进行大小比较，如果是对方卡牌且比对方大则对方卡牌暂时变成本方；[br][05]相同:[br]        [04]该规则下比较放置卡牌区周围上下左右二个范围卡牌数值，如果邻接二个位置数字皆相同，则该位置卡牌都可被翻开；[br][05]相加[br][04]        该规则相对于相同规则不同的是，则是邻接的数字相加，对比二个位置的和，如果和相同则也会被翻；[br][05]胜负说明：[br][04]       当放完卡牌哪方多则哪方胜利，初始只有比大小规则，游戏超过5级追加相同与相加规则；游戏超过9级相加和相同翻开的牌将连锁和周围的卡牌再次进行比大小！'
		tc.wrap = true
		tc.font = 0x602f0000
		tc.align = 1
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '关闭'
		tc.left = 140.500
		tc.right = 173.500
		tc.bottom = 144.500
		tc.top = 175.500
		tc.mouseEnabled = true
		tc.img = 0x56160014
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
tp.c_cardgame = setmetatable({}, c_cardgame)
