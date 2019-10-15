--[[2007

]]
local G = require 'gf'
local c_newgame = require 'c_newgame'
local c_button = require 'c_button'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_title'
tc.left = -320.000
tc.right = 320.000
tc.bottom = -240.000
tc.top = 240.000
tp = tc
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '背景'
	tc.left = -426.500
	tc.right = 426.500
	tc.bottom = -240.000
	tc.top = 240.000
	tc.img = 0x56050054
	tp = tc
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = 'title'
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'c1'
		tc.left = -427.000
		tc.right = 427.000
		tc.bottom = -240.000
		tc.top = 240.000
		tc.mouseEnabled = true
		tc.img = 0x56044004
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'c2'
		tc.left = -261.000
		tc.right = 165.000
		tc.bottom = 63.000
		tc.top = 201.000
		tc.img = 0x56040002
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'c3'
		tc.left = 141.000
		tc.right = 241.000
		tc.bottom = 42.500
		tc.top = 181.500
		tc.img = 0x56040003
		tp = tc
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '按钮'
		tp = tc
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '开始游戏'
			tc.left = -304.500
			tc.right = -255.500
			tc.bottom = -176.500
			tc.top = 16.500
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x56041001
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['customsize'] =true
			com['img_normal'] =1443106817.000
			com['img_hover'] =1443106818.000
			com['img_press'] =1443106817.000
			com['audio_press'] =1224802319.000
			com['img_toggle'] =1443106817.000
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '继续游戏'
			tc.left = -224.500
			tc.right = -175.500
			tc.bottom = -176.500
			tc.top = 16.500
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x56042001
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['img_normal'] =1443110913.000
			com['img_hover'] =1443110914.000
			com['img_press'] =1443110915.000
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '游戏指引'
			tc.left = -144.000
			tc.right = -96.000
			tc.bottom = -176.500
			tc.top = 16.500
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x56043001
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['img_normal'] =1443115009.000
			com['img_hover'] =1443115010.000
			com['img_press'] =1443115011.000
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '返回标题'
			tc.left = -64.000
			tc.right = -16.000
			tc.bottom = -176.500
			tc.top = 16.500
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x56044001
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['img_normal'] =1443119105.000
			com['img_hover'] =1443119106.000
			com['img_press'] =1443119107.000
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '版本'
		tc.left = -422.000
		tc.right = -222.000
		tc.bottom = 133.000
		tc.top = 233.000
		tc.text = 'ver2.78'
		tc.font = 0x61200041
		tc.style = 3
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = 'build'
	tp = tc
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '进入游戏'
		tc.left = -101.000
		tc.right = 63.000
		tc.bottom = -232.000
		tc.top = -168.000
		tc.visible = false
		tp = tc
		com = tp.c_button
		com['img_hover'] =0.000
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '3'
		tc.left = 232.000
		tc.right = 332.000
		tc.bottom = -39.500
		tc.top = 99.500
		tc.visible = false
		tc.img = 0x56040003
		tp = tc
		tp = tp.parent
		--end
		tc = G.ParticleSystem()
		tp.addChild(tc)
		tc.name = '旋转'
		tc.left = 143.000
		tc.right = 307.000
		tc.bottom = 34.000
		tc.top = 98.000
		tc.img = 0x56000001
		tc.rate = 50
		tc.totalP = 100
		tc.life = 5.000
		tc.mode = 1
		tc.startSize = 5.000
		tc.startSpin = 50.000
		tc.startColor = 0xf7f7f7
		tc.startColVarR = 3
		tc.startColVarG = 3
		tc.startColVarB = 3
		tc.startColVarA = 3
		tc.endColor = 0xffffff
		tc.endAlpha = 0
		tc.endColVarR = 3
		tc.endColVarG = 3
		tc.endColVarB = 3
		tc.startR = 20.000
		tc.startRVar = 1.000
		tc.endR = 100.000
		tc.rotateSpd = 200.000
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = 'code'
	tp = tc
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '飞'
		tc.left = -365.500
		tc.right = -328.500
		tc.bottom = 186.000
		tc.top = 236.000
		tp = tc
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '天'
		tc.left = -354.000
		tc.right = -326.000
		tc.bottom = 57.000
		tc.top = 95.000
		tp = tc
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '神'
		tc.left = -397.500
		tc.right = -362.500
		tc.bottom = 96.500
		tc.top = 131.500
		tp = tc
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '侠'
		tc.left = -430.000
		tc.right = -398.000
		tc.bottom = 196.500
		tc.top = 239.500
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = 'no'
	tc.left = -100.000
	tc.bottom = -50.000
	tc.top = 50.000
	tc.visible = false
	tc.text = '0'
	tc.font = 0x61200041
	tp = tc
	tp = tp.parent
	--end
	tc = G.loadUI('v_button')
	tp.addChild(tc)
	tc.name = '公告'
	tc.left = -423.500
	tc.right = -338.500
	tc.bottom = -236.500
	tc.top = -133.500
	tp = tc
		tc = tp.getChildByName('img')
		if tc then
		tc.img = 0x560400f9
		tp = tc
		end
		tp = tp.parent
		--end
	com = tp.c_button
	com['img_normal'] =1443102969.000
	com['img_hover'] =1443102972.000
	com['img_press'] =1443102969.000
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '清除成就'
	tc.left = 268.000
	tc.right = 468.000
	tc.bottom = -237.000
	tc.top = -137.000
	tc.mouseEnabled = true
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.text = '清除成就'
	tc.font = 0x61300000
	tc.style = 8
	tp = tc
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '提示'
	tc.visible = false
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '背景'
		tc.left = -427.000
		tc.right = 427.000
		tc.bottom = -240.000
		tc.top = 240.000
		tc.mouseEnabled = true
		tc.img = 0x56160020
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '说明'
		tc.pivotX = 0.000
		tc.left = -369.000
		tc.right = 1117.000
		tc.bottom = -158.000
		tc.top = 322.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '    [03]特别说明：[0a]清除成就会将[03]清除[0a]前面完成的成就，不清除成就开始游戏或者周目重开将不会完成后面[03]新出的成就[0a]，请想清楚后点[03]确定[0a]，否则请[03]返回！'
		tc.wrap = true
		tc.font = 0x613c0000
		tc.align = 1
		tc.style = 3
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '返回'
		tc.left = -417.000
		tc.right = -367.000
		tc.bottom = -233.000
		tc.top = -183.000
		tc.mouseEnabled = true
		tc.img = 0x33010024
		tp = tc
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '确定'
		tc.left = -27.000
		tc.right = 39.000
		tc.bottom = -4.000
		tc.top = 18.000
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
		com['color_hover'] =0.000
		com['img_press'] =1444282412.000
		tp = tp.parent
		--end
	tp = tp.parent
	--end
tp.c_newgame = setmetatable({}, c_newgame)
