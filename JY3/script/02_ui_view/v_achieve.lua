--[[2029

]]
local G = require 'gf'
local c_achieve = require 'c_achieve'
local c_button = require 'c_button'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_achieve'
tc.left = -426.500
tc.right = 426.500
tc.bottom = -240.000
tc.top = 240.000
tp = tc
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '背景'
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
		tc.name = 'c2'
		tc.left = -320.000
		tc.right = 320.000
		tc.bottom = -240.000
		tc.top = 240.000
		tc.color = 0xbac9c2
		tc.img = 0x56160020
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '按钮'
	tp = tc
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '主菜单'
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '列表字符'
			tc.left = -95.000
			tc.right = 85.000
			tc.bottom = 157.000
			tc.top = 201.000
			tc.img = 0x56160066
			tp = tc
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = 'c1'
				tc.left = -153.000
				tc.right = 147.000
				tc.bottom = -27.000
				tc.top = 33.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '成就列表'
				tc.font = 0x63400000
				tc.style = 5
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '列表'
			tc.left = -275.000
			tc.right = -125.000
			tc.bottom = 95.000
			tc.top = 145.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '底色'
				tc.left = -75.000
				tc.right = 75.000
				tc.bottom = -25.000
				tc.top = 25.000
				tc.alpha = 150
				tc.img = 0x5603002c
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '名称'
				tc.left = -107.000
				tc.right = 133.000
				tc.bottom = -51.000
				tc.top = 49.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '小赌怡情'
				tc.font = 0x61300000
				tc.style = 7
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '完成'
				tc.left = -68.000
				tc.right = -38.000
				tc.bottom = -16.000
				tc.top = 14.000
				tc.img = 0x56160073
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '1'
			tc.left = -275.000
			tc.right = -125.000
			tc.bottom = 95.000
			tc.top = 145.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '底色'
				tc.left = -75.000
				tc.right = 75.000
				tc.bottom = -25.000
				tc.top = 25.000
				tc.alpha = 150
				tc.img = 0x5603002c
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '名称'
				tc.left = -107.000
				tc.right = 133.000
				tc.bottom = -51.000
				tc.top = 49.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '小赌怡情'
				tc.font = 0x61300000
				tc.style = 7
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '完成'
				tc.left = -68.000
				tc.right = -38.000
				tc.bottom = -16.000
				tc.top = 14.000
				tc.img = 0x56160073
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '2'
			tc.left = -75.000
			tc.right = 75.000
			tc.bottom = 95.000
			tc.top = 145.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '底色'
				tc.left = -75.000
				tc.right = 75.000
				tc.bottom = -25.000
				tc.top = 25.000
				tc.alpha = 150
				tc.img = 0x5603002c
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '名称'
				tc.left = -107.000
				tc.right = 133.000
				tc.bottom = -51.000
				tc.top = 49.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '小赌怡情'
				tc.font = 0x61300000
				tc.style = 7
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '完成'
				tc.left = -68.000
				tc.right = -38.000
				tc.bottom = -16.000
				tc.top = 14.000
				tc.img = 0x56160073
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '3'
			tc.left = 125.000
			tc.right = 275.000
			tc.bottom = 95.000
			tc.top = 145.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '底色'
				tc.left = -75.000
				tc.right = 75.000
				tc.bottom = -25.000
				tc.top = 25.000
				tc.alpha = 150
				tc.img = 0x5603002c
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '名称'
				tc.left = -107.000
				tc.right = 133.000
				tc.bottom = -51.000
				tc.top = 49.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '小赌怡情'
				tc.font = 0x61300000
				tc.style = 7
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '完成'
				tc.left = -68.000
				tc.right = -38.000
				tc.bottom = -16.000
				tc.top = 14.000
				tc.img = 0x56160073
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '4'
			tc.left = -275.000
			tc.right = -125.000
			tc.bottom = 35.000
			tc.top = 85.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '底色'
				tc.left = -75.000
				tc.right = 75.000
				tc.bottom = -25.000
				tc.top = 25.000
				tc.alpha = 150
				tc.img = 0x5603002c
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '名称'
				tc.left = -107.000
				tc.right = 133.000
				tc.bottom = -51.000
				tc.top = 49.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '小赌怡情'
				tc.font = 0x61300000
				tc.style = 7
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '完成'
				tc.left = -68.000
				tc.right = -38.000
				tc.bottom = -16.000
				tc.top = 14.000
				tc.img = 0x56160073
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '5'
			tc.left = -75.000
			tc.right = 75.000
			tc.bottom = 35.000
			tc.top = 85.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '底色'
				tc.left = -75.000
				tc.right = 75.000
				tc.bottom = -25.000
				tc.top = 25.000
				tc.alpha = 150
				tc.img = 0x5603002c
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '名称'
				tc.left = -107.000
				tc.right = 133.000
				tc.bottom = -51.000
				tc.top = 49.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '小赌怡情'
				tc.font = 0x61300000
				tc.style = 7
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '完成'
				tc.left = -68.000
				tc.right = -38.000
				tc.bottom = -16.000
				tc.top = 14.000
				tc.img = 0x56160073
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '6'
			tc.left = 125.000
			tc.right = 275.000
			tc.bottom = 35.000
			tc.top = 85.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '底色'
				tc.left = -75.000
				tc.right = 75.000
				tc.bottom = -25.000
				tc.top = 25.000
				tc.alpha = 150
				tc.img = 0x5603002c
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '名称'
				tc.left = -107.000
				tc.right = 133.000
				tc.bottom = -51.000
				tc.top = 49.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '小赌怡情'
				tc.font = 0x61300000
				tc.style = 7
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '完成'
				tc.left = -68.000
				tc.right = -38.000
				tc.bottom = -16.000
				tc.top = 14.000
				tc.img = 0x56160073
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '7'
			tc.left = -275.000
			tc.right = -125.000
			tc.bottom = -25.000
			tc.top = 25.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '底色'
				tc.left = -75.000
				tc.right = 75.000
				tc.bottom = -25.000
				tc.top = 25.000
				tc.alpha = 150
				tc.img = 0x5603002c
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '名称'
				tc.left = -107.000
				tc.right = 133.000
				tc.bottom = -51.000
				tc.top = 49.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '小赌怡情'
				tc.font = 0x61300000
				tc.style = 7
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '完成'
				tc.left = -68.000
				tc.right = -38.000
				tc.bottom = -16.000
				tc.top = 14.000
				tc.img = 0x56160073
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '8'
			tc.left = -75.000
			tc.right = 75.000
			tc.bottom = -25.000
			tc.top = 25.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '底色'
				tc.left = -75.000
				tc.right = 75.000
				tc.bottom = -25.000
				tc.top = 25.000
				tc.alpha = 150
				tc.img = 0x5603002c
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '名称'
				tc.left = -107.000
				tc.right = 133.000
				tc.bottom = -51.000
				tc.top = 49.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '小赌怡情'
				tc.font = 0x61300000
				tc.style = 7
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '完成'
				tc.left = -68.000
				tc.right = -38.000
				tc.bottom = -16.000
				tc.top = 14.000
				tc.img = 0x56160073
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '9'
			tc.left = 125.000
			tc.right = 275.000
			tc.bottom = -25.000
			tc.top = 25.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '底色'
				tc.left = -75.000
				tc.right = 75.000
				tc.bottom = -25.000
				tc.top = 25.000
				tc.alpha = 150
				tc.img = 0x5603002c
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '名称'
				tc.left = -107.000
				tc.right = 133.000
				tc.bottom = -51.000
				tc.top = 49.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '小赌怡情'
				tc.font = 0x61300000
				tc.style = 7
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '完成'
				tc.left = -68.000
				tc.right = -38.000
				tc.bottom = -16.000
				tc.top = 14.000
				tc.img = 0x56160073
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '10'
			tc.left = -275.000
			tc.right = -125.000
			tc.bottom = -85.000
			tc.top = -35.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '底色'
				tc.left = -75.000
				tc.right = 75.000
				tc.bottom = -25.000
				tc.top = 25.000
				tc.alpha = 150
				tc.img = 0x5603002c
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '名称'
				tc.left = -107.000
				tc.right = 133.000
				tc.bottom = -51.000
				tc.top = 49.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '小赌怡情'
				tc.font = 0x61300000
				tc.style = 7
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '完成'
				tc.left = -68.000
				tc.right = -38.000
				tc.bottom = -16.000
				tc.top = 14.000
				tc.img = 0x56160073
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '11'
			tc.left = -75.000
			tc.right = 75.000
			tc.bottom = -85.000
			tc.top = -35.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '底色'
				tc.left = -75.000
				tc.right = 75.000
				tc.bottom = -25.000
				tc.top = 25.000
				tc.alpha = 150
				tc.img = 0x5603002c
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '名称'
				tc.left = -107.000
				tc.right = 133.000
				tc.bottom = -51.000
				tc.top = 49.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '小赌怡情'
				tc.font = 0x61300000
				tc.style = 7
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '完成'
				tc.left = -68.000
				tc.right = -38.000
				tc.bottom = -16.000
				tc.top = 14.000
				tc.img = 0x56160073
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '12'
			tc.left = 125.000
			tc.right = 275.000
			tc.bottom = -85.000
			tc.top = -35.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '底色'
				tc.left = -75.000
				tc.right = 75.000
				tc.bottom = -25.000
				tc.top = 25.000
				tc.alpha = 150
				tc.img = 0x5603002c
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '名称'
				tc.left = -107.000
				tc.right = 133.000
				tc.bottom = -51.000
				tc.top = 49.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '小赌怡情'
				tc.font = 0x61300000
				tc.style = 7
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '完成'
				tc.left = -68.000
				tc.right = -38.000
				tc.bottom = -16.000
				tc.top = 14.000
				tc.img = 0x56160073
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '13'
			tc.left = -275.000
			tc.right = -125.000
			tc.bottom = -145.000
			tc.top = -95.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '底色'
				tc.left = -75.000
				tc.right = 75.000
				tc.bottom = -25.000
				tc.top = 25.000
				tc.alpha = 150
				tc.img = 0x5603002c
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '名称'
				tc.left = -107.000
				tc.right = 133.000
				tc.bottom = -51.000
				tc.top = 49.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '小赌怡情'
				tc.font = 0x61300000
				tc.style = 7
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '完成'
				tc.left = -68.000
				tc.right = -38.000
				tc.bottom = -16.000
				tc.top = 14.000
				tc.img = 0x56160073
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '14'
			tc.left = -75.000
			tc.right = 75.000
			tc.bottom = -145.000
			tc.top = -95.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '底色'
				tc.left = -75.000
				tc.right = 75.000
				tc.bottom = -25.000
				tc.top = 25.000
				tc.alpha = 150
				tc.img = 0x5603002c
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '名称'
				tc.left = -107.000
				tc.right = 133.000
				tc.bottom = -51.000
				tc.top = 49.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '小赌怡情'
				tc.font = 0x61300000
				tc.style = 7
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '完成'
				tc.left = -68.000
				tc.right = -38.000
				tc.bottom = -16.000
				tc.top = 14.000
				tc.img = 0x56160073
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '15'
			tc.left = 125.000
			tc.right = 275.000
			tc.bottom = -145.000
			tc.top = -95.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '底色'
				tc.left = -75.000
				tc.right = 75.000
				tc.bottom = -25.000
				tc.top = 25.000
				tc.alpha = 150
				tc.img = 0x5603002c
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '名称'
				tc.left = -107.000
				tc.right = 133.000
				tc.bottom = -51.000
				tc.top = 49.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '小赌怡情'
				tc.font = 0x61300000
				tc.style = 7
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '完成'
				tc.left = -68.000
				tc.right = -38.000
				tc.bottom = -16.000
				tc.top = 14.000
				tc.img = 0x56160073
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '16'
			tc.left = -275.000
			tc.right = -125.000
			tc.bottom = -205.000
			tc.top = -155.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '底色'
				tc.left = -75.000
				tc.right = 75.000
				tc.bottom = -25.000
				tc.top = 25.000
				tc.alpha = 150
				tc.img = 0x5603002c
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '名称'
				tc.left = -107.000
				tc.right = 133.000
				tc.bottom = -51.000
				tc.top = 49.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '小赌怡情'
				tc.font = 0x61300000
				tc.style = 7
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '完成'
				tc.left = -68.000
				tc.right = -38.000
				tc.bottom = -16.000
				tc.top = 14.000
				tc.img = 0x56160073
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '17'
			tc.left = -75.000
			tc.right = 75.000
			tc.bottom = -205.000
			tc.top = -155.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '底色'
				tc.left = -75.000
				tc.right = 75.000
				tc.bottom = -25.000
				tc.top = 25.000
				tc.alpha = 150
				tc.img = 0x5603002c
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '名称'
				tc.left = -107.000
				tc.right = 133.000
				tc.bottom = -51.000
				tc.top = 49.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '小赌怡情'
				tc.font = 0x61300000
				tc.style = 7
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '完成'
				tc.left = -68.000
				tc.right = -38.000
				tc.bottom = -16.000
				tc.top = 14.000
				tc.img = 0x56160073
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '18'
			tc.left = 125.000
			tc.right = 275.000
			tc.bottom = -205.000
			tc.top = -155.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '底色'
				tc.left = -75.000
				tc.right = 75.000
				tc.bottom = -25.000
				tc.top = 25.000
				tc.alpha = 150
				tc.img = 0x5603002c
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '名称'
				tc.left = -107.000
				tc.right = 133.000
				tc.bottom = -51.000
				tc.top = 49.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '小赌怡情'
				tc.font = 0x61300000
				tc.style = 7
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '完成'
				tc.left = -68.000
				tc.right = -38.000
				tc.bottom = -16.000
				tc.top = 14.000
				tc.img = 0x56160073
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '点数'
			tc.left = -3.000
			tc.right = 397.000
			tc.bottom = 147.000
			tc.top = 207.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '点数:9999/9999'
			tc.font = 0x61300000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '结束'
		tc.left = 280.500
		tc.right = 313.500
		tc.bottom = 200.500
		tc.top = 231.500
		tc.mouseEnabled = true
		tc.img = 0x56160014
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '返回'
		tc.left = -315.000
		tc.right = -265.000
		tc.bottom = -236.000
		tc.top = -186.000
		tc.mouseEnabled = true
		tc.img = 0x33010024
		tp = tc
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '子菜单'
		tc.visible = false
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '成就'
			tc.left = -95.000
			tc.right = 85.000
			tc.bottom = 157.000
			tc.top = 201.000
			tc.img = 0x56160066
			tp = tc
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '名称'
				tc.left = -153.000
				tc.right = 147.000
				tc.bottom = -27.000
				tc.top = 33.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '小赌怡情'
				tc.font = 0x63400000
				tc.style = 5
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '说明'
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '背景'
				tc.left = -249.500
				tc.right = 251.500
				tc.bottom = -54.000
				tc.top = 146.000
				tc.img = 0x5616003e
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '详细'
				tc.left = 125.000
				tc.right = 225.000
				tc.bottom = -131.000
				tc.top = -91.000
				tc.mouseEnabled = true
				tc.img = 0x56030020
				tp = tc
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = 'text'
					tc.left = -100.000
					tc.bottom = -40.000
					tc.top = 40.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '详细进度'
					tc.font = 0x61280000
					tc.style = 10
					tp = tc
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
					tc.name = 'c1'
					tc.left = -260.000
					tc.right = -100.000
					tc.bottom = 80.000
					tc.top = 120.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '内容:'
					tc.font = 0x61300000
					tc.align = 1
					tc.style = 2
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = 'c11'
					tc.left = -260.000
					tc.right = -100.000
					tc.bottom = 28.000
					tc.top = 68.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '进度:'
					tc.font = 0x61300000
					tc.align = 1
					tc.style = 2
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '内容'
				tc.pivotX = 0.000
				tc.pivotY = 1.000
				tc.left = -155.500
				tc.right = 549.500
				tc.bottom = 10.000
				tc.top = 110.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '我么都会死的事实不能说记得记得毒经定激动'
				tc.wrap = true
				tc.font = 0x61300000
				tc.align = 1
				tc.style = 2
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '进度'
				tc.pivotX = 0.000
				tc.left = -151.000
				tc.right = 449.000
				tc.bottom = 9.000
				tc.top = 69.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '1000/2000'
				tc.font = 0x61300000
				tc.align = 1
				tc.style = 2
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '完成'
				tc.left = 79.500
				tc.right = 164.500
				tc.bottom = -10.000
				tc.top = 72.000
				tc.img = 0x56160073
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '点数'
			tc.left = -3.000
			tc.right = 397.000
			tc.bottom = 147.000
			tc.top = 207.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '点数:9999/9999'
			tc.font = 0x61300000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '进度'
		tc.visible = false
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '成就'
			tc.left = -95.000
			tc.right = 85.000
			tc.bottom = 157.000
			tc.top = 201.000
			tc.img = 0x56160066
			tp = tc
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '名称'
				tc.left = -153.000
				tc.right = 147.000
				tc.bottom = -27.000
				tc.top = 33.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '小赌怡情'
				tc.font = 0x63400000
				tc.style = 5
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '3'
			tc.left = 10.000
			tc.right = 10.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '1'
				tc.left = -243.500
				tc.right = -176.500
				tc.bottom = 73.000
				tc.top = 157.000
				tc.img = 0x56100011
				tp = tc
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '进度'
					tc.left = -4.000
					tc.right = 196.000
					tc.bottom = -53.000
					tc.top = 7.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '100/100'
					tc.font = 0x61300000
					tc.style = 10
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = 70.000
					tc.right = 120.000
					tc.bottom = -9.000
					tc.top = 41.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.pivotY = 1.000
					tc.left = -79.000
					tc.right = -19.000
					tc.bottom = -156.000
					tc.top = 54.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '河  班'
					tc.wrap = true
					tc.font = 0x61300000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '2'
				tc.left = 46.500
				tc.right = 113.500
				tc.bottom = 73.000
				tc.top = 157.000
				tc.img = 0x56100012
				tp = tc
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '进度'
					tc.left = -4.000
					tc.right = 196.000
					tc.bottom = -53.000
					tc.top = 7.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '100/100'
					tc.font = 0x61300000
					tc.style = 10
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = 70.000
					tc.right = 120.000
					tc.bottom = -9.000
					tc.top = 41.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.pivotY = 1.000
					tc.left = -79.000
					tc.right = -19.000
					tc.bottom = -156.000
					tc.top = 54.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '河  班'
					tc.wrap = true
					tc.font = 0x61300000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '3'
				tc.left = -243.500
				tc.right = -176.500
				tc.bottom = -27.000
				tc.top = 57.000
				tc.img = 0x56100013
				tp = tc
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '进度'
					tc.left = -4.000
					tc.right = 196.000
					tc.bottom = -53.000
					tc.top = 7.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '100/100'
					tc.font = 0x61300000
					tc.style = 10
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = 70.000
					tc.right = 120.000
					tc.bottom = -9.000
					tc.top = 41.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.pivotY = 1.000
					tc.left = -79.000
					tc.right = -19.000
					tc.bottom = -156.000
					tc.top = 54.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '河  班'
					tc.wrap = true
					tc.font = 0x61300000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '4'
				tc.left = 46.500
				tc.right = 113.500
				tc.bottom = -27.000
				tc.top = 57.000
				tc.img = 0x56100014
				tp = tc
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '进度'
					tc.left = -4.000
					tc.right = 196.000
					tc.bottom = -53.000
					tc.top = 7.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '100/100'
					tc.font = 0x61300000
					tc.style = 10
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = 70.000
					tc.right = 120.000
					tc.bottom = -9.000
					tc.top = 41.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.pivotY = 1.000
					tc.left = -79.000
					tc.right = -19.000
					tc.bottom = -156.000
					tc.top = 54.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '河  班'
					tc.wrap = true
					tc.font = 0x61300000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '5'
				tc.left = -229.000
				tc.right = -191.000
				tc.bottom = -131.500
				tc.top = -38.500
				tc.img = 0x56100015
				tp = tc
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '进度'
					tc.left = -4.000
					tc.right = 196.000
					tc.bottom = -53.000
					tc.top = 7.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '100/100'
					tc.font = 0x61300000
					tc.style = 10
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = 70.000
					tc.right = 120.000
					tc.bottom = -9.000
					tc.top = 41.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.pivotY = 1.000
					tc.left = -64.000
					tc.right = -34.000
					tc.bottom = -53.000
					tc.top = 54.000
					tc.text = '河  班'
					tc.wrap = true
					tc.font = 0x61180000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '6'
				tc.left = 59.500
				tc.right = 100.500
				tc.bottom = -135.000
				tc.top = -35.000
				tc.img = 0x56100016
				tp = tc
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '进度'
					tc.left = -4.000
					tc.right = 196.000
					tc.bottom = -53.000
					tc.top = 7.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '100/100'
					tc.font = 0x61300000
					tc.style = 10
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = 70.000
					tc.right = 120.000
					tc.bottom = -9.000
					tc.top = 41.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.pivotY = 1.000
					tc.left = -79.000
					tc.right = -19.000
					tc.bottom = -156.000
					tc.top = 54.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '河  班'
					tc.wrap = true
					tc.font = 0x61300000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '7'
				tc.left = -243.500
				tc.right = -176.500
				tc.bottom = -227.000
				tc.top = -143.000
				tc.img = 0x56100017
				tp = tc
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '进度'
					tc.left = -4.000
					tc.right = 196.000
					tc.bottom = -53.000
					tc.top = 7.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '100/100'
					tc.font = 0x61300000
					tc.style = 10
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = 70.000
					tc.right = 120.000
					tc.bottom = -9.000
					tc.top = 41.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.pivotY = 1.000
					tc.left = -79.000
					tc.right = -19.000
					tc.bottom = -156.000
					tc.top = 54.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '河  班'
					tc.wrap = true
					tc.font = 0x61300000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '8'
				tc.left = 56.500
				tc.right = 103.500
				tc.bottom = -228.000
				tc.top = -142.000
				tc.img = 0x56100018
				tp = tc
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '进度'
					tc.left = -4.000
					tc.right = 196.000
					tc.bottom = -53.000
					tc.top = 7.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '100/100'
					tc.font = 0x61300000
					tc.style = 10
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = 70.000
					tc.right = 120.000
					tc.bottom = -9.000
					tc.top = 41.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.pivotY = 1.000
					tc.left = -79.000
					tc.right = -19.000
					tc.bottom = -156.000
					tc.top = 54.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '河  班'
					tc.wrap = true
					tc.font = 0x61300000
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
			tc.name = '6'
			tc.left = 10.000
			tc.right = 10.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '1'
				tc.left = -240.000
				tc.right = -180.000
				tc.bottom = 85.000
				tc.top = 145.000
				tc.img = 0x560e0135
				tp = tc
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '进度'
					tc.left = -4.000
					tc.right = 196.000
					tc.bottom = -53.000
					tc.top = 7.000
					tc.text = '100/100'
					tc.font = 0x61180000
					tc.style = 10
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = 70.000
					tc.right = 120.000
					tc.bottom = -9.000
					tc.top = 41.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.pivotY = 1.000
					tc.left = -79.000
					tc.right = -19.000
					tc.bottom = -156.000
					tc.top = 54.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '河  班'
					tc.wrap = true
					tc.font = 0x61300000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '2'
				tc.left = 50.000
				tc.right = 110.000
				tc.bottom = 85.000
				tc.top = 145.000
				tc.img = 0x560e0136
				tp = tc
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '进度'
					tc.left = 46.000
					tc.right = 146.000
					tc.bottom = -38.000
					tc.top = -8.000
					tc.text = '100/100'
					tc.font = 0x61180000
					tc.style = 10
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = 70.000
					tc.right = 120.000
					tc.bottom = -9.000
					tc.top = 41.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.pivotY = 1.000
					tc.left = -64.000
					tc.right = -34.000
					tc.bottom = -53.000
					tc.top = 54.000
					tc.text = '河  班'
					tc.wrap = true
					tc.font = 0x61180000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '3'
				tc.left = -240.000
				tc.right = -180.000
				tc.bottom = -15.000
				tc.top = 45.000
				tc.img = 0x560e0137
				tp = tc
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '进度'
					tc.left = 46.000
					tc.right = 146.000
					tc.bottom = -38.000
					tc.top = -8.000
					tc.text = '100/100'
					tc.font = 0x61180000
					tc.style = 10
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = 70.000
					tc.right = 120.000
					tc.bottom = -9.000
					tc.top = 41.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.pivotY = 1.000
					tc.left = -64.000
					tc.right = -34.000
					tc.bottom = -53.000
					tc.top = 54.000
					tc.text = '河  班'
					tc.wrap = true
					tc.font = 0x61180000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '4'
				tc.left = 50.000
				tc.right = 110.000
				tc.bottom = -15.000
				tc.top = 45.000
				tc.img = 0x560e0138
				tp = tc
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '进度'
					tc.left = 46.000
					tc.right = 146.000
					tc.bottom = -38.000
					tc.top = -8.000
					tc.text = '100/100'
					tc.font = 0x61180000
					tc.style = 10
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = 70.000
					tc.right = 120.000
					tc.bottom = -9.000
					tc.top = 41.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.pivotY = 1.000
					tc.left = -64.000
					tc.right = -34.000
					tc.bottom = -53.000
					tc.top = 54.000
					tc.text = '河  班'
					tc.wrap = true
					tc.font = 0x61180000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '5'
				tc.left = -240.000
				tc.right = -180.000
				tc.bottom = -115.000
				tc.top = -55.000
				tc.img = 0x560e0139
				tp = tc
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '进度'
					tc.left = 46.000
					tc.right = 146.000
					tc.bottom = -38.000
					tc.top = -8.000
					tc.text = '100/100'
					tc.font = 0x61180000
					tc.style = 10
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = 70.000
					tc.right = 120.000
					tc.bottom = -9.000
					tc.top = 41.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.pivotY = 1.000
					tc.left = -64.000
					tc.right = -34.000
					tc.bottom = -53.000
					tc.top = 54.000
					tc.text = '河  班'
					tc.wrap = true
					tc.font = 0x61180000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '6'
				tc.left = 50.000
				tc.right = 110.000
				tc.bottom = -115.000
				tc.top = -55.000
				tc.img = 0x560e013a
				tp = tc
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '进度'
					tc.left = 46.000
					tc.right = 146.000
					tc.bottom = -38.000
					tc.top = -8.000
					tc.text = '100/100'
					tc.font = 0x61180000
					tc.style = 10
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = 70.000
					tc.right = 120.000
					tc.bottom = -9.000
					tc.top = 41.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.pivotY = 1.000
					tc.left = -64.000
					tc.right = -34.000
					tc.bottom = -53.000
					tc.top = 54.000
					tc.text = '河  班'
					tc.wrap = true
					tc.font = 0x61180000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '7'
				tc.left = -240.000
				tc.right = -180.000
				tc.bottom = -215.000
				tc.top = -155.000
				tc.img = 0x560e013b
				tp = tc
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '进度'
					tc.left = 46.000
					tc.right = 146.000
					tc.bottom = -38.000
					tc.top = -8.000
					tc.text = '100/100'
					tc.font = 0x61180000
					tc.style = 10
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = 70.000
					tc.right = 120.000
					tc.bottom = -9.000
					tc.top = 41.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.pivotY = 1.000
					tc.left = -64.000
					tc.right = -34.000
					tc.bottom = -53.000
					tc.top = 54.000
					tc.text = '河  班'
					tc.wrap = true
					tc.font = 0x61180000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '8'
				tc.left = 50.000
				tc.right = 110.000
				tc.bottom = -215.000
				tc.top = -155.000
				tc.img = 0x560e013c
				tp = tc
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '进度'
					tc.left = 46.000
					tc.right = 146.000
					tc.bottom = -38.000
					tc.top = -8.000
					tc.text = '100/100'
					tc.font = 0x61180000
					tc.style = 10
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = 70.000
					tc.right = 120.000
					tc.bottom = -9.000
					tc.top = 41.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.pivotY = 1.000
					tc.left = -64.000
					tc.right = -34.000
					tc.bottom = -53.000
					tc.top = 54.000
					tc.text = '河  班'
					tc.wrap = true
					tc.font = 0x61180000
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
			tc.name = '12'
			tc.visible = false
			tp = tc
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '1'
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = 'c1'
					tc.left = -295.000
					tc.right = -155.000
					tc.bottom = 95.000
					tc.top = 145.000
					tc.alpha = 150
					tc.img = 0x5603002b
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.left = -296.000
					tc.right = -166.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.text = '全真'
					tc.font = 0x61280000
					tc.align = 3
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = -292.000
					tc.right = -252.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '2'
				tc.left = 150.000
				tc.right = 150.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = 'c1'
					tc.left = -295.000
					tc.right = -155.000
					tc.bottom = 95.000
					tc.top = 145.000
					tc.alpha = 150
					tc.img = 0x5603002b
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.left = -296.000
					tc.right = -166.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.text = '全真'
					tc.font = 0x61280000
					tc.align = 3
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = -292.000
					tc.right = -252.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '3'
				tc.left = 300.000
				tc.right = 300.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = 'c1'
					tc.left = -295.000
					tc.right = -155.000
					tc.bottom = 95.000
					tc.top = 145.000
					tc.alpha = 150
					tc.img = 0x5603002b
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.left = -296.000
					tc.right = -166.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.text = '全真'
					tc.font = 0x61280000
					tc.align = 3
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = -292.000
					tc.right = -252.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '4'
				tc.left = 450.000
				tc.right = 450.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = 'c1'
					tc.left = -295.000
					tc.right = -155.000
					tc.bottom = 95.000
					tc.top = 145.000
					tc.alpha = 150
					tc.img = 0x5603002b
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.left = -296.000
					tc.right = -166.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.text = '全真'
					tc.font = 0x61280000
					tc.align = 3
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = -292.000
					tc.right = -252.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '5'
				tc.bottom = -60.000
				tc.top = -60.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = 'c1'
					tc.left = -295.000
					tc.right = -155.000
					tc.bottom = 95.000
					tc.top = 145.000
					tc.alpha = 150
					tc.img = 0x5603002b
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.left = -296.000
					tc.right = -166.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.text = '全真'
					tc.font = 0x61280000
					tc.align = 3
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = -292.000
					tc.right = -252.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '6'
				tc.left = 150.000
				tc.right = 150.000
				tc.bottom = -60.000
				tc.top = -60.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = 'c1'
					tc.left = -295.000
					tc.right = -155.000
					tc.bottom = 95.000
					tc.top = 145.000
					tc.alpha = 150
					tc.img = 0x5603002b
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.left = -296.000
					tc.right = -166.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.text = '全真'
					tc.font = 0x61280000
					tc.align = 3
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = -292.000
					tc.right = -252.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '7'
				tc.left = 300.000
				tc.right = 300.000
				tc.bottom = -60.000
				tc.top = -60.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = 'c1'
					tc.left = -295.000
					tc.right = -155.000
					tc.bottom = 95.000
					tc.top = 145.000
					tc.alpha = 150
					tc.img = 0x5603002b
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.left = -296.000
					tc.right = -166.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.text = '全真'
					tc.font = 0x61280000
					tc.align = 3
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = -292.000
					tc.right = -252.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '8'
				tc.left = 450.000
				tc.right = 450.000
				tc.bottom = -60.000
				tc.top = -60.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = 'c1'
					tc.left = -295.000
					tc.right = -155.000
					tc.bottom = 95.000
					tc.top = 145.000
					tc.alpha = 150
					tc.img = 0x5603002b
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.left = -296.000
					tc.right = -166.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.text = '全真'
					tc.font = 0x61280000
					tc.align = 3
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = -292.000
					tc.right = -252.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '9'
				tc.bottom = -120.000
				tc.top = -120.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = 'c1'
					tc.left = -295.000
					tc.right = -155.000
					tc.bottom = 95.000
					tc.top = 145.000
					tc.alpha = 150
					tc.img = 0x5603002b
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.left = -296.000
					tc.right = -166.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.text = '全真'
					tc.font = 0x61280000
					tc.align = 3
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = -292.000
					tc.right = -252.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '10'
				tc.left = 150.000
				tc.right = 150.000
				tc.bottom = -120.000
				tc.top = -120.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = 'c1'
					tc.left = -295.000
					tc.right = -155.000
					tc.bottom = 95.000
					tc.top = 145.000
					tc.alpha = 150
					tc.img = 0x5603002b
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.left = -296.000
					tc.right = -166.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.text = '全真'
					tc.font = 0x61280000
					tc.align = 3
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = -292.000
					tc.right = -252.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '11'
				tc.left = 300.000
				tc.right = 300.000
				tc.bottom = -120.000
				tc.top = -120.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = 'c1'
					tc.left = -295.000
					tc.right = -155.000
					tc.bottom = 95.000
					tc.top = 145.000
					tc.alpha = 150
					tc.img = 0x5603002b
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.left = -296.000
					tc.right = -166.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.text = '全真'
					tc.font = 0x61280000
					tc.align = 3
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = -292.000
					tc.right = -252.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '12'
				tc.left = 450.000
				tc.right = 450.000
				tc.bottom = -120.000
				tc.top = -120.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = 'c1'
					tc.left = -295.000
					tc.right = -155.000
					tc.bottom = 95.000
					tc.top = 145.000
					tc.alpha = 150
					tc.img = 0x5603002b
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.left = -296.000
					tc.right = -166.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.text = '全真'
					tc.font = 0x61280000
					tc.align = 3
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = -292.000
					tc.right = -252.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '13'
				tc.bottom = -180.000
				tc.top = -180.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = 'c1'
					tc.left = -295.000
					tc.right = -155.000
					tc.bottom = 95.000
					tc.top = 145.000
					tc.alpha = 150
					tc.img = 0x5603002b
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.left = -296.000
					tc.right = -166.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.text = '全真'
					tc.font = 0x61280000
					tc.align = 3
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = -292.000
					tc.right = -252.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '14'
				tc.left = 150.000
				tc.right = 150.000
				tc.bottom = -180.000
				tc.top = -180.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = 'c1'
					tc.left = -295.000
					tc.right = -155.000
					tc.bottom = 95.000
					tc.top = 145.000
					tc.alpha = 150
					tc.img = 0x5603002b
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.left = -296.000
					tc.right = -166.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.text = '全真'
					tc.font = 0x61280000
					tc.align = 3
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = -292.000
					tc.right = -252.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '15'
				tc.left = 300.000
				tc.right = 300.000
				tc.bottom = -180.000
				tc.top = -180.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = 'c1'
					tc.left = -295.000
					tc.right = -155.000
					tc.bottom = 95.000
					tc.top = 145.000
					tc.alpha = 150
					tc.img = 0x5603002b
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.left = -296.000
					tc.right = -166.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.text = '全真'
					tc.font = 0x61280000
					tc.align = 3
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = -292.000
					tc.right = -252.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '16'
				tc.left = 450.000
				tc.right = 450.000
				tc.bottom = -180.000
				tc.top = -180.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = 'c1'
					tc.left = -295.000
					tc.right = -155.000
					tc.bottom = 95.000
					tc.top = 145.000
					tc.alpha = 150
					tc.img = 0x5603002b
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.left = -296.000
					tc.right = -166.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.text = '全真'
					tc.font = 0x61280000
					tc.align = 3
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = -292.000
					tc.right = -252.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '17'
				tc.bottom = -240.000
				tc.top = -240.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = 'c1'
					tc.left = -295.000
					tc.right = -155.000
					tc.bottom = 95.000
					tc.top = 145.000
					tc.alpha = 150
					tc.img = 0x5603002b
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.left = -296.000
					tc.right = -166.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.text = '全真'
					tc.font = 0x61280000
					tc.align = 3
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = -292.000
					tc.right = -252.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '18'
				tc.left = 150.000
				tc.right = 150.000
				tc.bottom = -240.000
				tc.top = -240.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = 'c1'
					tc.left = -295.000
					tc.right = -155.000
					tc.bottom = 95.000
					tc.top = 145.000
					tc.alpha = 150
					tc.img = 0x5603002b
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.left = -296.000
					tc.right = -166.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.text = '全真'
					tc.font = 0x61280000
					tc.align = 3
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = -292.000
					tc.right = -252.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '19'
				tc.left = 300.000
				tc.right = 300.000
				tc.bottom = -240.000
				tc.top = -240.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = 'c1'
					tc.left = -295.000
					tc.right = -155.000
					tc.bottom = 95.000
					tc.top = 145.000
					tc.alpha = 150
					tc.img = 0x5603002b
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.left = -296.000
					tc.right = -166.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.text = '全真'
					tc.font = 0x61280000
					tc.align = 3
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = -292.000
					tc.right = -252.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '20'
				tc.left = 450.000
				tc.right = 450.000
				tc.bottom = -240.000
				tc.top = -240.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = 'c1'
					tc.left = -295.000
					tc.right = -155.000
					tc.bottom = 95.000
					tc.top = 145.000
					tc.alpha = 150
					tc.img = 0x5603002b
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.left = -296.000
					tc.right = -166.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.text = '全真'
					tc.font = 0x61280000
					tc.align = 3
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = -292.000
					tc.right = -252.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '21'
				tc.bottom = -300.000
				tc.top = -300.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = 'c1'
					tc.left = -295.000
					tc.right = -155.000
					tc.bottom = 95.000
					tc.top = 145.000
					tc.alpha = 150
					tc.img = 0x5603002b
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.left = -258.000
					tc.right = -158.000
					tc.bottom = 99.000
					tc.top = 139.000
					tc.text = '全真'
					tc.font = 0x611e0000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = -292.000
					tc.right = -252.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '22'
				tc.left = 150.000
				tc.right = 150.000
				tc.bottom = -300.000
				tc.top = -300.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = 'c1'
					tc.left = -295.000
					tc.right = -155.000
					tc.bottom = 95.000
					tc.top = 145.000
					tc.alpha = 150
					tc.img = 0x5603002b
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.left = -258.000
					tc.right = -158.000
					tc.bottom = 99.000
					tc.top = 139.000
					tc.text = '全真'
					tc.font = 0x611e0000
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = -292.000
					tc.right = -252.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '13'
			tc.visible = false
			tp = tc
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '任务'
				tc.left = 10.000
				tc.right = 10.000
				tc.bottom = 20.000
				tc.top = 20.000
				tc.visible = false
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = 'c1'
					tc.left = -304.000
					tc.right = -164.000
					tc.bottom = 86.000
					tc.top = 136.000
					tc.alpha = 150
					tc.img = 0x5603002b
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.left = -321.000
					tc.right = -121.000
					tc.bottom = 74.000
					tc.top = 146.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '全真教与桃花岛的恩怨'
					tc.wrap = true
					tc.font = 0x61240000
					tc.style = 2
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = -300.000
					tc.right = -270.000
					tc.bottom = 96.000
					tc.top = 126.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '19'
			tc.left = -5.000
			tc.right = -5.000
			tc.bottom = -1.000
			tc.top = -1.000
			tc.visible = false
			tp = tc
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '成就'
				tc.left = -200.000
				tc.right = -200.000
				tc.bottom = 120.000
				tc.top = 120.000
				tc.visible = false
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = 'c1'
					tc.left = -75.000
					tc.right = 75.000
					tc.bottom = -20.000
					tc.top = 20.000
					tc.alpha = 150
					tc.img = 0x5603002b
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.left = -110.000
					tc.right = 140.000
					tc.bottom = -36.000
					tc.top = 36.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '初级无尽100层'
					tc.wrap = true
					tc.font = 0x61240000
					tc.style = 2
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = -71.000
					tc.right = -41.000
					tc.bottom = -12.000
					tc.top = 18.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '24'
			tc.left = -5.000
			tc.right = -5.000
			tc.bottom = -1.000
			tc.top = -1.000
			tc.visible = false
			tp = tc
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '周目'
				tc.left = -187.000
				tc.right = -187.000
				tc.bottom = 120.000
				tc.top = 120.000
				tc.visible = false
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = 'c1'
					tc.left = -75.000
					tc.right = 75.000
					tc.bottom = -25.000
					tc.top = 25.000
					tc.alpha = 150
					tc.img = 0x5603002b
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.left = -110.000
					tc.right = 140.000
					tc.bottom = -36.000
					tc.top = 36.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '一往无前'
					tc.wrap = true
					tc.font = 0x61320000
					tc.style = 2
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = -70.000
					tc.right = -30.000
					tc.bottom = -18.000
					tc.top = 22.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '25'
			tc.left = -5.000
			tc.right = -5.000
			tc.bottom = -1.000
			tc.top = -1.000
			tc.visible = false
			tp = tc
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '套装'
				tc.left = -187.000
				tc.right = -187.000
				tc.bottom = 120.000
				tc.top = 120.000
				tc.visible = false
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = 'c1'
					tc.left = -75.000
					tc.right = 75.000
					tc.bottom = -25.000
					tc.top = 25.000
					tc.alpha = 150
					tc.img = 0x5603002b
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.left = -110.000
					tc.right = 140.000
					tc.bottom = -36.000
					tc.top = 36.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '配套成龙'
					tc.wrap = true
					tc.font = 0x61320000
					tc.style = 2
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = -70.000
					tc.right = -30.000
					tc.bottom = -18.000
					tc.top = 22.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '14'
			tc.visible = false
			tp = tc
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '1'
				tc.left = 50.000
				tc.right = 50.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = 'c1'
					tc.left = -325.000
					tc.right = -125.000
					tc.bottom = 95.000
					tc.top = 145.000
					tc.alpha = 150
					tc.img = 0x5603002b
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.left = -278.000
					tc.right = -148.000
					tc.bottom = 96.000
					tc.top = 136.000
					tc.text = '全真宗师'
					tc.font = 0x611e0000
					tc.align = 3
					tc.style = 2
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = -312.000
					tc.right = -272.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '2'
				tc.left = 380.000
				tc.right = 380.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = 'c1'
					tc.left = -325.000
					tc.right = -125.000
					tc.bottom = 95.000
					tc.top = 145.000
					tc.alpha = 150
					tc.img = 0x5603002b
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.left = -278.000
					tc.right = -148.000
					tc.bottom = 96.000
					tc.top = 136.000
					tc.text = '全真宗师'
					tc.font = 0x611e0000
					tc.align = 3
					tc.style = 2
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = -312.000
					tc.right = -272.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '3'
				tc.left = 50.000
				tc.right = 50.000
				tc.bottom = -70.000
				tc.top = -70.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = 'c1'
					tc.left = -325.000
					tc.right = -125.000
					tc.bottom = 95.000
					tc.top = 145.000
					tc.alpha = 150
					tc.img = 0x5603002b
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.left = -278.000
					tc.right = -148.000
					tc.bottom = 96.000
					tc.top = 136.000
					tc.text = '全真宗师'
					tc.font = 0x611e0000
					tc.align = 3
					tc.style = 2
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = -312.000
					tc.right = -272.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '4'
				tc.left = 380.000
				tc.right = 380.000
				tc.bottom = -70.000
				tc.top = -70.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = 'c1'
					tc.left = -325.000
					tc.right = -125.000
					tc.bottom = 95.000
					tc.top = 145.000
					tc.alpha = 150
					tc.img = 0x5603002b
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.left = -278.000
					tc.right = -148.000
					tc.bottom = 96.000
					tc.top = 136.000
					tc.text = '全真宗师'
					tc.font = 0x611e0000
					tc.align = 3
					tc.style = 2
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = -312.000
					tc.right = -272.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '5'
				tc.left = 50.000
				tc.right = 50.000
				tc.bottom = -140.000
				tc.top = -140.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = 'c1'
					tc.left = -325.000
					tc.right = -125.000
					tc.bottom = 95.000
					tc.top = 145.000
					tc.alpha = 150
					tc.img = 0x5603002b
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.left = -278.000
					tc.right = -148.000
					tc.bottom = 96.000
					tc.top = 136.000
					tc.text = '全真宗师'
					tc.font = 0x611e0000
					tc.align = 3
					tc.style = 2
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = -312.000
					tc.right = -272.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '6'
				tc.left = 380.000
				tc.right = 380.000
				tc.bottom = -140.000
				tc.top = -140.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = 'c1'
					tc.left = -325.000
					tc.right = -125.000
					tc.bottom = 95.000
					tc.top = 145.000
					tc.alpha = 150
					tc.img = 0x5603002b
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.left = -281.000
					tc.right = -131.000
					tc.bottom = 98.000
					tc.top = 138.000
					tc.text = '全真宗师'
					tc.font = 0x611e0000
					tc.wordSpace = -2
					tc.lineSpace = -2
					tc.style = 2
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = -312.000
					tc.right = -272.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '7'
				tc.left = 50.000
				tc.right = 50.000
				tc.bottom = -210.000
				tc.top = -210.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = 'c1'
					tc.left = -325.000
					tc.right = -125.000
					tc.bottom = 95.000
					tc.top = 145.000
					tc.alpha = 150
					tc.img = 0x5603002b
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.left = -280.000
					tc.right = -130.000
					tc.bottom = 99.000
					tc.top = 139.000
					tc.text = '全真宗师'
					tc.font = 0x611e0000
					tc.wordSpace = -2
					tc.lineSpace = -2
					tc.style = 2
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = -312.000
					tc.right = -272.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '8'
				tc.left = 380.000
				tc.right = 380.000
				tc.bottom = -210.000
				tc.top = -210.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = 'c1'
					tc.left = -325.000
					tc.right = -125.000
					tc.bottom = 95.000
					tc.top = 145.000
					tc.alpha = 150
					tc.img = 0x5603002b
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.left = -284.000
					tc.right = -134.000
					tc.bottom = 101.000
					tc.top = 141.000
					tc.text = '全真宗师'
					tc.font = 0x611e0000
					tc.wordSpace = -2
					tc.lineSpace = -2
					tc.style = 2
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = -312.000
					tc.right = -272.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '9'
				tc.left = 50.000
				tc.right = 50.000
				tc.bottom = -280.000
				tc.top = -280.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = 'c1'
					tc.left = -325.000
					tc.right = -125.000
					tc.bottom = 95.000
					tc.top = 145.000
					tc.alpha = 150
					tc.img = 0x5603002b
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.left = -287.000
					tc.right = -137.000
					tc.bottom = 101.000
					tc.top = 141.000
					tc.text = '全真宗师'
					tc.font = 0x611e0000
					tc.wordSpace = -2
					tc.lineSpace = -2
					tc.style = 2
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = -312.000
					tc.right = -272.000
					tc.bottom = 100.000
					tc.top = 140.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '15'
			tc.visible = false
			tp = tc
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '人物'
				tc.left = -30.000
				tc.right = -30.000
				tc.bottom = -10.000
				tc.top = -10.000
				tc.visible = false
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '头像'
					tc.left = -253.000
					tc.right = -193.000
					tc.bottom = 85.500
					tc.top = 156.500
					tc.img = 0x56080001
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.left = -247.000
					tc.right = -27.000
					tc.bottom = 66.000
					tc.top = 126.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '半瓶神仙醋'
					tc.font = 0x61280000
					tc.style = 2
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '闪光'
					tc.left = -257.500
					tc.right = -188.500
					tc.bottom = 75.000
					tc.top = 163.000
					tc.visible = false
					tc.img = 0x33010001
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = -166.000
					tc.right = -116.000
					tc.bottom = 105.000
					tc.top = 155.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '16'
			tc.visible = false
			tp = tc
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '人物'
				tc.left = -30.000
				tc.right = -30.000
				tc.bottom = -10.000
				tc.top = -10.000
				tc.visible = false
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '头像'
					tc.left = -253.000
					tc.right = -193.000
					tc.bottom = 85.500
					tc.top = 156.500
					tc.img = 0x56080001
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.left = -247.000
					tc.right = -27.000
					tc.bottom = 66.000
					tc.top = 126.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '半瓶神仙醋'
					tc.font = 0x61280000
					tc.style = 2
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '闪光'
					tc.left = -257.500
					tc.right = -188.500
					tc.bottom = 75.000
					tc.top = 163.000
					tc.visible = false
					tc.img = 0x33010001
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = -166.000
					tc.right = -116.000
					tc.bottom = 105.000
					tc.top = 155.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '22'
			tc.visible = false
			tp = tc
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '人物'
				tc.left = -30.000
				tc.right = -30.000
				tc.bottom = -10.000
				tc.top = -10.000
				tc.visible = false
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '头像'
					tc.left = -253.000
					tc.right = -193.000
					tc.bottom = 85.500
					tc.top = 156.500
					tc.img = 0x56080001
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.left = -247.000
					tc.right = -27.000
					tc.bottom = 66.000
					tc.top = 126.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '半瓶神仙醋'
					tc.font = 0x61280000
					tc.style = 2
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '闪光'
					tc.left = -257.500
					tc.right = -188.500
					tc.bottom = 75.000
					tc.top = 163.000
					tc.visible = false
					tc.img = 0x33010001
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = -166.000
					tc.right = -116.000
					tc.bottom = 105.000
					tc.top = 155.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '23'
			tc.visible = false
			tp = tc
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '印记'
				tc.left = -30.000
				tc.right = -30.000
				tc.bottom = -20.000
				tc.top = -20.000
				tc.visible = false
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '图片'
					tc.left = -262.000
					tc.right = -198.000
					tc.bottom = 91.000
					tc.top = 163.000
					tc.img = 0x560f1001
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.left = -275.000
					tc.right = -55.000
					tc.bottom = 76.000
					tc.top = 136.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '飞狐外传'
					tc.font = 0x61280000
					tc.style = 2
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '闪光'
					tc.left = -267.000
					tc.right = -195.000
					tc.bottom = 93.000
					tc.top = 173.000
					tc.visible = false
					tc.img = 0x33010001
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = -193.000
					tc.right = -143.000
					tc.bottom = 117.000
					tc.top = 167.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '18'
			tc.visible = false
			tp = tc
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '1'
				tc.left = 10.000
				tc.right = 10.000
				tc.bottom = 10.000
				tc.top = 10.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = 'c1'
					tc.left = -302.000
					tc.right = -22.000
					tc.bottom = 44.000
					tc.top = 144.000
					tc.alpha = 150
					tc.img = 0x5603002b
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.left = -220.000
					tc.right = -46.000
					tc.bottom = 97.000
					tc.top = 137.000
					tc.text = '一鸣惊人'
					tc.font = 0x61280000
					tc.align = 3
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = -298.000
					tc.right = -228.000
					tc.bottom = 63.000
					tc.top = 133.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '进度'
					tc.left = -210.000
					tc.right = -60.000
					tc.bottom = 55.000
					tc.top = 85.000
					tc.text = '100/100'
					tc.font = 0x611e0000
					tc.style = 10
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '2'
				tc.left = 310.000
				tc.right = 310.000
				tc.bottom = 10.000
				tc.top = 10.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = 'c1'
					tc.left = -302.000
					tc.right = -22.000
					tc.bottom = 44.000
					tc.top = 144.000
					tc.alpha = 150
					tc.img = 0x5603002b
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.left = -220.000
					tc.right = -46.000
					tc.bottom = 97.000
					tc.top = 137.000
					tc.text = '一鸣惊人'
					tc.font = 0x61280000
					tc.align = 3
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = -298.000
					tc.right = -228.000
					tc.bottom = 63.000
					tc.top = 133.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '进度'
					tc.left = -210.000
					tc.right = -60.000
					tc.bottom = 55.000
					tc.top = 85.000
					tc.text = '100/100'
					tc.font = 0x611e0000
					tc.style = 10
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '3'
				tc.left = 10.000
				tc.right = 10.000
				tc.bottom = -110.000
				tc.top = -110.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = 'c1'
					tc.left = -302.000
					tc.right = -22.000
					tc.bottom = 44.000
					tc.top = 144.000
					tc.alpha = 150
					tc.img = 0x5603002b
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.left = -220.000
					tc.right = -46.000
					tc.bottom = 97.000
					tc.top = 137.000
					tc.text = '一鸣惊人'
					tc.font = 0x61280000
					tc.align = 3
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = -298.000
					tc.right = -228.000
					tc.bottom = 63.000
					tc.top = 133.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '进度'
					tc.left = -210.000
					tc.right = -60.000
					tc.bottom = 55.000
					tc.top = 85.000
					tc.text = '100/100'
					tc.font = 0x611e0000
					tc.style = 10
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '4'
				tc.left = 310.000
				tc.right = 310.000
				tc.bottom = -110.000
				tc.top = -110.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = 'c1'
					tc.left = -302.000
					tc.right = -22.000
					tc.bottom = 44.000
					tc.top = 144.000
					tc.alpha = 150
					tc.img = 0x5603002b
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.left = -220.000
					tc.right = -46.000
					tc.bottom = 97.000
					tc.top = 137.000
					tc.text = '一鸣惊人'
					tc.font = 0x61280000
					tc.align = 3
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = -298.000
					tc.right = -228.000
					tc.bottom = 63.000
					tc.top = 133.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '进度'
					tc.left = -210.000
					tc.right = -60.000
					tc.bottom = 55.000
					tc.top = 85.000
					tc.text = '100/100'
					tc.font = 0x611e0000
					tc.style = 10
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '5'
				tc.left = 10.000
				tc.right = 10.000
				tc.bottom = -230.000
				tc.top = -230.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = 'c1'
					tc.left = -302.000
					tc.right = -22.000
					tc.bottom = 44.000
					tc.top = 144.000
					tc.alpha = 150
					tc.img = 0x5603002b
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.left = -220.000
					tc.right = -46.000
					tc.bottom = 97.000
					tc.top = 137.000
					tc.text = '一鸣惊人'
					tc.font = 0x61280000
					tc.align = 3
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = -298.000
					tc.right = -228.000
					tc.bottom = 63.000
					tc.top = 133.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '进度'
					tc.left = -210.000
					tc.right = -60.000
					tc.bottom = 55.000
					tc.top = 85.000
					tc.text = '100/100'
					tc.font = 0x611e0000
					tc.style = 10
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '6'
				tc.left = 310.000
				tc.right = 310.000
				tc.bottom = -230.000
				tc.top = -230.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = 'c1'
					tc.left = -302.000
					tc.right = -22.000
					tc.bottom = 44.000
					tc.top = 144.000
					tc.alpha = 150
					tc.img = 0x5603002b
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '名称'
					tc.left = -220.000
					tc.right = -46.000
					tc.bottom = 97.000
					tc.top = 137.000
					tc.text = '一鸣惊人'
					tc.font = 0x61280000
					tc.align = 3
					tc.style = 4
					tp = tc
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '完成'
					tc.left = -298.000
					tc.right = -228.000
					tc.bottom = 63.000
					tc.top = 133.000
					tc.img = 0x56160073
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '进度'
					tc.left = -210.000
					tc.right = -60.000
					tc.bottom = 55.000
					tc.top = 85.000
					tc.text = '100/100'
					tc.font = 0x611e0000
					tc.style = 10
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
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
			tc.name = '页数'
			tc.left = -54.000
			tc.right = 66.000
			tc.bottom = -252.000
			tc.top = -192.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '1'
			tc.font = 0x61400000
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '总页数'
			tc.left = -22.500
			tc.right = 34.500
			tc.bottom = -235.500
			tc.top = -208.500
			tc.visible = false
			tc.text = '1'
			tc.font = 0x61200041
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '点数'
			tc.left = -3.000
			tc.right = 397.000
			tc.bottom = 147.000
			tc.top = 207.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '点数:9999/9999'
			tc.font = 0x61300000
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
	tc.name = '主按钮'
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
tp.c_achieve = setmetatable({}, c_achieve)
