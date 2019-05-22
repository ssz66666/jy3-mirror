--[[2021

]]
local G = require 'gf'
local c_battle = require 'c_battle'
local c_button = require 'c_button'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_battle'
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
	tc.bottom = -240.000
	tc.top = 240.000
	tc.mouseEnabled = true
	tc.img = 0x56050058
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = 'note'
	tc.left = 303.000
	tc.right = 447.000
	tc.bottom = 134.000
	tc.top = 270.000
	tc.mouseEnabled = true
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.text = '即时记录'
	tc.wrap = true
	tc.font = 0x61400000
	tc.style = 11
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
	tc.img = 0x5605000a
	tp = tc
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = 'tab0'
	tp = tc
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = 'team1'
		tc.left = -197.500
		tc.right = 283.500
		tc.bottom = -219.000
		tc.top = 147.000
		tc.visible = false
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x33039099
			tp = tc
			end
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'hp'
			tc.pivotX = 0.000
			tc.left = 56.000
			tc.right = 16056.000
			tc.bottom = -109.500
			tc.top = -102.500
			tc.visible = false
			tc.alpha = 150
			tc.img = 0x560a0015
			tp = tc
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = 'yc'
			tc.left = 51.000
			tc.right = 101.000
			tc.bottom = -25.000
			tc.top = 25.000
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y1'
				tc.left = -16.000
				tc.right = 16.000
				tc.bottom = -17.000
				tc.top = 17.000
				tc.visible = false
				tc.img = 0x33010015
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y2'
				tc.left = -16.000
				tc.right = 16.000
				tc.bottom = -17.000
				tc.top = 17.000
				tc.visible = false
				tc.img = 0x33010014
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y3'
				tc.left = -16.000
				tc.right = 16.000
				tc.bottom = -17.000
				tc.top = 17.000
				tc.visible = false
				tc.img = 0x33010013
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y4'
				tc.left = -20.000
				tc.right = 20.000
				tc.bottom = -22.500
				tc.top = 22.500
				tc.visible = false
				tc.img = 0x56160052
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = 'flash'
			tc.left = 64.000
			tc.right = 80.000
			tc.bottom = -64.000
			tc.top = -20.000
			tc.visible = false
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x33010020
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['img_normal'] =855703584.000
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'over'
			tc.left = -60.000
			tc.right = 140.000
			tc.bottom = 652.000
			tc.top = 752.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61200041
			tp = tc
			tp = tp.parent
			--end
		com = tp.c_button
		com['img_normal'] =855871641.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = 'team2'
		tc.left = 124.000
		tc.right = 250.000
		tc.bottom = -121.000
		tc.top = 5.000
		tc.visible = false
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x33070002
			tp = tc
			end
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'hp'
			tc.pivotX = 0.000
			tc.left = -34.000
			tc.right = 46.000
			tc.bottom = -56.500
			tc.top = -49.500
			tc.alpha = 150
			tc.img = 0x560a0015
			tp = tc
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = 'yc'
			tc.left = -12.000
			tc.right = -12.000
			tc.bottom = 5.000
			tc.top = 5.000
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y1'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010015
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y2'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010014
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y3'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010013
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y4'
				tc.left = -8.000
				tc.right = 32.000
				tc.bottom = 42.500
				tc.top = 87.500
				tc.visible = false
				tc.img = 0x56160052
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = 'flash'
			tc.left = -8.000
			tc.right = 8.000
			tc.bottom = 6.000
			tc.top = 50.000
			tc.visible = false
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x33010020
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['img_normal'] =855703584.000
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'over'
			tc.left = -60.000
			tc.right = 140.000
			tc.bottom = 652.000
			tc.top = 752.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61200041
			tp = tc
			tp = tp.parent
			--end
		com = tp.c_button
		com['img_normal'] =856096770.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = 'team3'
		tc.left = -1.000
		tc.right = 125.000
		tc.bottom = -190.000
		tc.top = -64.000
		tc.visible = false
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x33070002
			tp = tc
			end
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'hp'
			tc.pivotX = 0.000
			tc.left = -20.000
			tc.right = 60.000
			tc.bottom = -58.500
			tc.top = -51.500
			tc.alpha = 150
			tc.img = 0x560a0015
			tp = tc
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = 'yc'
			tc.left = -12.000
			tc.right = -12.000
			tc.bottom = 5.000
			tc.top = 5.000
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y1'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010015
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y2'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010014
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y3'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010013
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y4'
				tc.left = -8.000
				tc.right = 32.000
				tc.bottom = 42.500
				tc.top = 87.500
				tc.visible = false
				tc.img = 0x56160052
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = 'flash'
			tc.left = -8.000
			tc.right = 8.000
			tc.bottom = 6.000
			tc.top = 50.000
			tc.visible = false
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x33010020
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['img_normal'] =855703584.000
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'over'
			tc.left = -60.000
			tc.right = 140.000
			tc.bottom = 652.000
			tc.top = 752.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61200041
			tp = tc
			tp = tp.parent
			--end
		com = tp.c_button
		com['img_normal'] =856096770.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = 'team4'
		tc.left = 195.000
		tc.right = 321.000
		tc.bottom = -66.000
		tc.top = 60.000
		tc.visible = false
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x33070002
			tp = tc
			end
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'hp'
			tc.pivotX = 0.000
			tc.left = -34.000
			tc.right = 46.000
			tc.bottom = -56.500
			tc.top = -49.500
			tc.alpha = 150
			tc.img = 0x560a0015
			tp = tc
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = 'yc'
			tc.left = -12.000
			tc.right = -12.000
			tc.bottom = 5.000
			tc.top = 5.000
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y1'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010015
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y2'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010014
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y3'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010013
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y4'
				tc.left = -8.000
				tc.right = 32.000
				tc.bottom = 42.500
				tc.top = 87.500
				tc.visible = false
				tc.img = 0x56160052
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = 'flash'
			tc.left = -8.000
			tc.right = 8.000
			tc.bottom = 6.000
			tc.top = 50.000
			tc.visible = false
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x33010020
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['img_normal'] =855703584.000
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'over'
			tc.left = -60.000
			tc.right = 140.000
			tc.bottom = 652.000
			tc.top = 752.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61200041
			tp = tc
			tp = tp.parent
			--end
		com = tp.c_button
		com['img_normal'] =856096770.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = 'team5'
		tc.left = -76.000
		tc.right = 50.000
		tc.bottom = -233.000
		tc.top = -107.000
		tc.visible = false
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x33070002
			tp = tc
			end
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'hp'
			tc.pivotX = 0.000
			tc.left = -34.000
			tc.right = 46.000
			tc.bottom = -65.500
			tc.top = -58.500
			tc.alpha = 150
			tc.img = 0x560a0015
			tp = tc
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = 'yc'
			tc.left = -12.000
			tc.right = -12.000
			tc.bottom = 5.000
			tc.top = 5.000
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y1'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010015
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y2'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010014
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y3'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010013
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y4'
				tc.left = -8.000
				tc.right = 32.000
				tc.bottom = 42.500
				tc.top = 87.500
				tc.visible = false
				tc.img = 0x56160052
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = 'flash'
			tc.left = -8.000
			tc.right = 8.000
			tc.bottom = 6.000
			tc.top = 50.000
			tc.visible = false
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x33010020
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['img_normal'] =855703584.000
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'over'
			tc.left = -60.000
			tc.right = 140.000
			tc.bottom = 652.000
			tc.top = 752.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61200041
			tp = tc
			tp = tp.parent
			--end
		com = tp.c_button
		com['img_normal'] =856096770.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = 'enemy1'
		tc.left = -201.500
		tc.right = -88.500
		tc.bottom = 20.000
		tc.top = 112.000
		tc.visible = false
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x33060001
			tp = tc
			end
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'hp'
			tc.pivotX = 0.000
			tc.left = -32.000
			tc.right = 48.000
			tc.bottom = -63.500
			tc.top = -56.500
			tc.alpha = 150
			tc.img = 0x560a0015
			tp = tc
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = 'yc'
			tc.left = -12.000
			tc.right = -12.000
			tc.bottom = 5.000
			tc.top = 5.000
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y1'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010015
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y2'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010014
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y3'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010013
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y4'
				tc.left = -8.000
				tc.right = 32.000
				tc.bottom = 42.500
				tc.top = 87.500
				tc.visible = false
				tc.img = 0x56160052
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = 'flash'
			tc.left = -8.000
			tc.right = 8.000
			tc.bottom = 6.000
			tc.top = 50.000
			tc.visible = false
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x33010020
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['img_normal'] =855703584.000
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'over'
			tc.left = -60.000
			tc.right = 140.000
			tc.bottom = 652.000
			tc.top = 752.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61200041
			tp = tc
			tp = tp.parent
			--end
		com = tp.c_button
		com['img_normal'] =856031233.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = 'enemy2'
		tc.left = -225.000
		tc.right = -99.000
		tc.bottom = -129.500
		tc.top = -34.500
		tc.visible = false
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x33060001
			tp = tc
			end
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'hp'
			tc.pivotX = 0.000
			tc.left = -34.000
			tc.right = 46.000
			tc.bottom = -63.500
			tc.top = -56.500
			tc.alpha = 150
			tc.img = 0x560a0015
			tp = tc
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = 'yc'
			tc.left = -12.000
			tc.right = -12.000
			tc.bottom = 5.000
			tc.top = 5.000
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y1'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010015
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y2'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010014
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y3'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010013
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y4'
				tc.left = -8.000
				tc.right = 32.000
				tc.bottom = 42.500
				tc.top = 87.500
				tc.visible = false
				tc.img = 0x56160052
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = 'flash'
			tc.left = -8.000
			tc.right = 8.000
			tc.bottom = 6.000
			tc.top = 50.000
			tc.visible = false
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x33010020
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['img_normal'] =855703584.000
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'over'
			tc.left = -60.000
			tc.right = 140.000
			tc.bottom = 652.000
			tc.top = 752.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61200041
			tp = tc
			tp = tp.parent
			--end
		com = tp.c_button
		com['img_normal'] =856031233.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = 'enemy3'
		tc.left = -50.000
		tc.right = 80.000
		tc.bottom = -21.000
		tc.top = 131.000
		tc.visible = false
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x33060001
			tp = tc
			end
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'hp'
			tc.pivotX = 0.000
			tc.left = -30.000
			tc.right = 50.000
			tc.bottom = -63.500
			tc.top = -56.500
			tc.alpha = 150
			tc.img = 0x560a0015
			tp = tc
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = 'yc'
			tc.left = -12.000
			tc.right = -12.000
			tc.bottom = 5.000
			tc.top = 5.000
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y1'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010015
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y2'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010014
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y3'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010013
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y4'
				tc.left = -8.000
				tc.right = 32.000
				tc.bottom = 42.500
				tc.top = 87.500
				tc.visible = false
				tc.img = 0x56160052
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = 'flash'
			tc.left = -8.000
			tc.right = 8.000
			tc.bottom = 6.000
			tc.top = 50.000
			tc.visible = false
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x33010020
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['img_normal'] =855703584.000
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'over'
			tc.left = -60.000
			tc.right = 140.000
			tc.bottom = 652.000
			tc.top = 752.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61200041
			tp = tc
			tp = tp.parent
			--end
		com = tp.c_button
		com['img_normal'] =856031233.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = 'enemy4'
		tc.left = -315.500
		tc.right = -166.500
		tc.bottom = -73.000
		tc.top = 59.000
		tc.visible = false
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x33060001
			tp = tc
			end
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'hp'
			tc.pivotX = 0.000
			tc.left = -31.000
			tc.right = 49.000
			tc.bottom = -63.500
			tc.top = -56.500
			tc.alpha = 150
			tc.img = 0x560a0015
			tp = tc
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = 'yc'
			tc.left = -12.000
			tc.right = -12.000
			tc.bottom = 5.000
			tc.top = 5.000
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y1'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010015
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y2'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010014
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y3'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010013
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y4'
				tc.left = -8.000
				tc.right = 32.000
				tc.bottom = 42.500
				tc.top = 87.500
				tc.visible = false
				tc.img = 0x56160052
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = 'flash'
			tc.left = -8.000
			tc.right = 8.000
			tc.bottom = 6.000
			tc.top = 50.000
			tc.visible = false
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x33010020
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['img_normal'] =855703584.000
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'over'
			tc.left = -60.000
			tc.right = 140.000
			tc.bottom = 652.000
			tc.top = 752.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61200041
			tp = tc
			tp = tp.parent
			--end
		com = tp.c_button
		com['img_normal'] =856031233.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = 'enemy5'
		tc.left = -136.000
		tc.right = 20.000
		tc.bottom = 35.500
		tc.top = 202.500
		tc.visible = false
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x33060001
			tp = tc
			end
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'hp'
			tc.pivotX = 0.000
			tc.left = -34.000
			tc.right = 46.000
			tc.bottom = -63.500
			tc.top = -56.500
			tc.alpha = 150
			tc.img = 0x560a0015
			tp = tc
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = 'yc'
			tc.left = -12.000
			tc.right = -12.000
			tc.bottom = 5.000
			tc.top = 5.000
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y1'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010015
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y2'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010014
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y3'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010013
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y4'
				tc.left = -8.000
				tc.right = 32.000
				tc.bottom = 42.500
				tc.top = 87.500
				tc.visible = false
				tc.img = 0x56160052
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = 'flash'
			tc.left = -8.000
			tc.right = 8.000
			tc.bottom = 6.000
			tc.top = 50.000
			tc.visible = false
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x33010020
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['img_normal'] =855703584.000
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'over'
			tc.left = -60.000
			tc.right = 140.000
			tc.bottom = 652.000
			tc.top = 752.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61200041
			tp = tc
			tp = tp.parent
			--end
		com = tp.c_button
		com['img_normal'] =856031233.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = 'enemy6'
		tc.left = -153.000
		tc.right = 3.000
		tc.bottom = -71.500
		tc.top = 57.500
		tc.visible = false
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x33060001
			tp = tc
			end
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'hp'
			tc.pivotX = 0.000
			tc.left = -34.000
			tc.right = 46.000
			tc.bottom = -63.500
			tc.top = -56.500
			tc.alpha = 120
			tc.img = 0x560a0015
			tp = tc
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = 'yc'
			tc.left = -12.000
			tc.right = -12.000
			tc.bottom = 5.000
			tc.top = 5.000
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y1'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010015
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y2'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010014
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y3'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010013
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y4'
				tc.left = -8.000
				tc.right = 32.000
				tc.bottom = 42.500
				tc.top = 87.500
				tc.visible = false
				tc.img = 0x56160052
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = 'flash'
			tc.left = -8.000
			tc.right = 8.000
			tc.bottom = 6.000
			tc.top = 50.000
			tc.visible = false
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x33010020
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['img_normal'] =855703584.000
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'over'
			tc.left = -60.000
			tc.right = 140.000
			tc.bottom = 652.000
			tc.top = 752.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61200041
			tp = tc
			tp = tp.parent
			--end
		com = tp.c_button
		com['img_normal'] =856031233.000
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '参考'
		tc.left = -71.000
		tc.right = 71.000
		tc.bottom = -62.500
		tc.top = 62.500
		tc.visible = false
		tc.img = 0x52030002
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '对象'
		tc.left = -71.000
		tc.right = 71.000
		tc.bottom = -62.500
		tc.top = 62.500
		tc.visible = false
		tc.img = 0x59080001
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = 'tab'
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'team1'
		tc.left = -178.000
		tc.right = -78.000
		tc.bottom = -206.000
		tc.top = -106.000
		tc.img = 0x33039998
		tp = tc
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = 'yc'
			tc.left = 229.000
			tc.right = 279.000
			tc.bottom = 117.000
			tc.top = 167.000
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y1'
				tc.left = -16.000
				tc.right = 16.000
				tc.bottom = -17.000
				tc.top = 17.000
				tc.visible = false
				tc.img = 0x33010015
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y2'
				tc.left = -16.000
				tc.right = 16.000
				tc.bottom = -17.000
				tc.top = 17.000
				tc.visible = false
				tc.img = 0x33010014
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y3'
				tc.left = -16.000
				tc.right = 16.000
				tc.bottom = -17.000
				tc.top = 17.000
				tc.visible = false
				tc.img = 0x33010013
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y4'
				tc.left = -20.000
				tc.right = 20.000
				tc.bottom = -22.500
				tc.top = 22.500
				tc.visible = false
				tc.img = 0x56160052
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'over'
			tc.left = -60.000
			tc.right = 140.000
			tc.bottom = 652.000
			tc.top = 752.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61200041
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'team2'
		tc.left = 68.000
		tc.right = 168.000
		tc.bottom = -121.000
		tc.top = -21.000
		tc.img = 0x33079999
		tp = tc
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = 'yc'
			tc.left = -78.000
			tc.right = -28.000
			tc.top = 50.000
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y1'
				tc.left = -16.000
				tc.right = 16.000
				tc.bottom = -17.000
				tc.top = 17.000
				tc.visible = false
				tc.img = 0x33010015
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y2'
				tc.left = -16.000
				tc.right = 16.000
				tc.bottom = -17.000
				tc.top = 17.000
				tc.visible = false
				tc.img = 0x33010014
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y3'
				tc.left = -16.000
				tc.right = 16.000
				tc.bottom = -17.000
				tc.top = 17.000
				tc.visible = false
				tc.img = 0x33010013
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y4'
				tc.left = -20.000
				tc.right = 20.000
				tc.bottom = -22.500
				tc.top = 22.500
				tc.visible = false
				tc.img = 0x56160052
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'over'
			tc.left = -60.000
			tc.right = 140.000
			tc.bottom = 652.000
			tc.top = 752.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61200041
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'hp'
			tc.pivotX = 0.000
			tc.left = -80.000
			tc.right = 0.000
			tc.bottom = -112.500
			tc.top = -105.500
			tc.alpha = 150
			tc.img = 0x560a0015
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'team3'
		tc.left = 190.000
		tc.right = 290.000
		tc.bottom = -55.000
		tc.top = 45.000
		tc.img = 0x33079999
		tp = tc
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = 'yc'
			tc.left = -78.000
			tc.right = -28.000
			tc.top = 50.000
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y1'
				tc.left = -16.000
				tc.right = 16.000
				tc.bottom = -17.000
				tc.top = 17.000
				tc.visible = false
				tc.img = 0x33010015
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y2'
				tc.left = -16.000
				tc.right = 16.000
				tc.bottom = -17.000
				tc.top = 17.000
				tc.visible = false
				tc.img = 0x33010014
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y3'
				tc.left = -16.000
				tc.right = 16.000
				tc.bottom = -17.000
				tc.top = 17.000
				tc.visible = false
				tc.img = 0x33010013
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y4'
				tc.left = -20.000
				tc.right = 20.000
				tc.bottom = -22.500
				tc.top = 22.500
				tc.visible = false
				tc.img = 0x56160052
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'over'
			tc.left = -60.000
			tc.right = 140.000
			tc.bottom = 652.000
			tc.top = 752.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61200041
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'hp'
			tc.pivotX = 0.000
			tc.left = -80.000
			tc.right = 0.000
			tc.bottom = -112.500
			tc.top = -105.500
			tc.alpha = 150
			tc.img = 0x560a0015
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'team4'
		tc.left = 266.000
		tc.right = 366.000
		tc.bottom = -5.000
		tc.top = 95.000
		tc.img = 0x33079999
		tp = tc
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = 'yc'
			tc.left = -78.000
			tc.right = -28.000
			tc.top = 50.000
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y1'
				tc.left = -16.000
				tc.right = 16.000
				tc.bottom = -17.000
				tc.top = 17.000
				tc.visible = false
				tc.img = 0x33010015
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y2'
				tc.left = -16.000
				tc.right = 16.000
				tc.bottom = -17.000
				tc.top = 17.000
				tc.visible = false
				tc.img = 0x33010014
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y3'
				tc.left = -16.000
				tc.right = 16.000
				tc.bottom = -17.000
				tc.top = 17.000
				tc.visible = false
				tc.img = 0x33010013
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y4'
				tc.left = -20.000
				tc.right = 20.000
				tc.bottom = -22.500
				tc.top = 22.500
				tc.visible = false
				tc.img = 0x56160052
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'over'
			tc.left = -60.000
			tc.right = 140.000
			tc.bottom = 652.000
			tc.top = 752.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61200041
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'hp'
			tc.pivotX = 0.000
			tc.left = -80.000
			tc.right = 0.000
			tc.bottom = -112.500
			tc.top = -105.500
			tc.alpha = 150
			tc.img = 0x560a0015
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'team5'
		tc.left = -19.000
		tc.right = 81.000
		tc.bottom = -173.000
		tc.top = -73.000
		tc.img = 0x33079999
		tp = tc
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = 'yc'
			tc.left = -78.000
			tc.right = -28.000
			tc.top = 50.000
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y1'
				tc.left = -16.000
				tc.right = 16.000
				tc.bottom = -17.000
				tc.top = 17.000
				tc.visible = false
				tc.img = 0x33010015
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y2'
				tc.left = -16.000
				tc.right = 16.000
				tc.bottom = -17.000
				tc.top = 17.000
				tc.visible = false
				tc.img = 0x33010014
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y3'
				tc.left = -16.000
				tc.right = 16.000
				tc.bottom = -17.000
				tc.top = 17.000
				tc.visible = false
				tc.img = 0x33010013
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y4'
				tc.left = -20.000
				tc.right = 20.000
				tc.bottom = -22.500
				tc.top = 22.500
				tc.visible = false
				tc.img = 0x56160052
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'over'
			tc.left = -60.000
			tc.right = 140.000
			tc.bottom = 652.000
			tc.top = 752.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61200041
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'hp'
			tc.pivotX = 0.000
			tc.left = -80.000
			tc.right = 0.000
			tc.bottom = -112.500
			tc.top = -105.500
			tc.alpha = 150
			tc.img = 0x560a0015
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'enemy1'
		tc.left = -170.000
		tc.right = -70.000
		tc.bottom = 51.000
		tc.top = 151.000
		tc.img = 0x33069998
		tp = tc
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = 'yc'
			tc.left = -67.000
			tc.right = -17.000
			tc.bottom = 10.000
			tc.top = 60.000
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y1'
				tc.left = -16.000
				tc.right = 16.000
				tc.bottom = -17.000
				tc.top = 17.000
				tc.visible = false
				tc.img = 0x33010015
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y2'
				tc.left = -16.000
				tc.right = 16.000
				tc.bottom = -17.000
				tc.top = 17.000
				tc.visible = false
				tc.img = 0x33010014
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y3'
				tc.left = -16.000
				tc.right = 16.000
				tc.bottom = -17.000
				tc.top = 17.000
				tc.visible = false
				tc.img = 0x33010013
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y4'
				tc.left = -20.000
				tc.right = 20.000
				tc.bottom = -22.500
				tc.top = 22.500
				tc.visible = false
				tc.img = 0x56160052
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'over'
			tc.left = -60.000
			tc.right = 140.000
			tc.bottom = 652.000
			tc.top = 752.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61200041
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'hp'
			tc.pivotX = 0.000
			tc.left = -55.000
			tc.right = 25.000
			tc.bottom = -100.500
			tc.top = -93.500
			tc.alpha = 150
			tc.img = 0x560a0015
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'enemy2'
		tc.left = -168.000
		tc.right = -68.000
		tc.bottom = -72.000
		tc.top = 28.000
		tc.visible = false
		tc.img = 0x33069998
		tp = tc
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = 'yc'
			tc.left = -67.000
			tc.right = -17.000
			tc.bottom = 10.000
			tc.top = 60.000
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y1'
				tc.left = -16.000
				tc.right = 16.000
				tc.bottom = -17.000
				tc.top = 17.000
				tc.visible = false
				tc.img = 0x33010015
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y2'
				tc.left = -16.000
				tc.right = 16.000
				tc.bottom = -17.000
				tc.top = 17.000
				tc.visible = false
				tc.img = 0x33010014
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y3'
				tc.left = -16.000
				tc.right = 16.000
				tc.bottom = -17.000
				tc.top = 17.000
				tc.visible = false
				tc.img = 0x33010013
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y4'
				tc.left = -20.000
				tc.right = 20.000
				tc.bottom = -22.500
				tc.top = 22.500
				tc.visible = false
				tc.img = 0x56160052
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'over'
			tc.left = -60.000
			tc.right = 140.000
			tc.bottom = 652.000
			tc.top = 752.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61200041
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'hp'
			tc.pivotX = 0.000
			tc.left = -55.000
			tc.right = 25.000
			tc.bottom = -100.500
			tc.top = -93.500
			tc.alpha = 150
			tc.img = 0x560a0015
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'enemy3'
		tc.left = 32.000
		tc.right = 132.000
		tc.bottom = 51.000
		tc.top = 151.000
		tc.visible = false
		tc.img = 0x33069998
		tp = tc
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = 'yc'
			tc.left = -67.000
			tc.right = -17.000
			tc.bottom = 10.000
			tc.top = 60.000
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y1'
				tc.left = -16.000
				tc.right = 16.000
				tc.bottom = -17.000
				tc.top = 17.000
				tc.visible = false
				tc.img = 0x33010015
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y2'
				tc.left = -16.000
				tc.right = 16.000
				tc.bottom = -17.000
				tc.top = 17.000
				tc.visible = false
				tc.img = 0x33010014
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y3'
				tc.left = -16.000
				tc.right = 16.000
				tc.bottom = -17.000
				tc.top = 17.000
				tc.visible = false
				tc.img = 0x33010013
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y4'
				tc.left = -20.000
				tc.right = 20.000
				tc.bottom = -22.500
				tc.top = 22.500
				tc.visible = false
				tc.img = 0x56160052
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'over'
			tc.left = -60.000
			tc.right = 140.000
			tc.bottom = 652.000
			tc.top = 752.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61200041
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'hp'
			tc.pivotX = 0.000
			tc.left = -55.000
			tc.right = 25.000
			tc.bottom = -100.500
			tc.top = -93.500
			tc.alpha = 150
			tc.img = 0x560a0015
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'enemy4'
		tc.left = -268.000
		tc.right = -168.000
		tc.bottom = -10.000
		tc.top = 90.000
		tc.visible = false
		tc.img = 0x33069998
		tp = tc
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = 'yc'
			tc.left = -67.000
			tc.right = -17.000
			tc.bottom = 10.000
			tc.top = 60.000
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y1'
				tc.left = -16.000
				tc.right = 16.000
				tc.bottom = -17.000
				tc.top = 17.000
				tc.visible = false
				tc.img = 0x33010015
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y2'
				tc.left = -16.000
				tc.right = 16.000
				tc.bottom = -17.000
				tc.top = 17.000
				tc.visible = false
				tc.img = 0x33010014
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y3'
				tc.left = -16.000
				tc.right = 16.000
				tc.bottom = -17.000
				tc.top = 17.000
				tc.visible = false
				tc.img = 0x33010013
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y4'
				tc.left = -20.000
				tc.right = 20.000
				tc.bottom = -22.500
				tc.top = 22.500
				tc.visible = false
				tc.img = 0x56160052
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'over'
			tc.left = -60.000
			tc.right = 140.000
			tc.bottom = 652.000
			tc.top = 752.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61200041
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'hp'
			tc.pivotX = 0.000
			tc.left = -55.000
			tc.right = 25.000
			tc.bottom = -100.500
			tc.top = -93.500
			tc.alpha = 150
			tc.img = 0x560a0015
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'enemy5'
		tc.left = -68.000
		tc.right = 32.000
		tc.bottom = 96.000
		tc.top = 196.000
		tc.visible = false
		tc.img = 0x33069998
		tp = tc
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = 'yc'
			tc.left = -67.000
			tc.right = -17.000
			tc.bottom = 10.000
			tc.top = 60.000
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y1'
				tc.left = -16.000
				tc.right = 16.000
				tc.bottom = -17.000
				tc.top = 17.000
				tc.visible = false
				tc.img = 0x33010015
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y2'
				tc.left = -16.000
				tc.right = 16.000
				tc.bottom = -17.000
				tc.top = 17.000
				tc.visible = false
				tc.img = 0x33010014
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y3'
				tc.left = -16.000
				tc.right = 16.000
				tc.bottom = -17.000
				tc.top = 17.000
				tc.visible = false
				tc.img = 0x33010013
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y4'
				tc.left = -20.000
				tc.right = 20.000
				tc.bottom = -22.500
				tc.top = 22.500
				tc.visible = false
				tc.img = 0x56160052
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'over'
			tc.left = -60.000
			tc.right = 140.000
			tc.bottom = 652.000
			tc.top = 752.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61200041
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'hp'
			tc.pivotX = 0.000
			tc.left = -55.000
			tc.right = 25.000
			tc.bottom = -100.500
			tc.top = -93.500
			tc.alpha = 150
			tc.img = 0x560a0015
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'enemy6'
		tc.left = -68.000
		tc.right = 32.000
		tc.bottom = -10.000
		tc.top = 90.000
		tc.visible = false
		tc.img = 0x33069998
		tp = tc
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = 'yc'
			tc.left = -67.000
			tc.right = -17.000
			tc.bottom = 10.000
			tc.top = 60.000
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y1'
				tc.left = -16.000
				tc.right = 16.000
				tc.bottom = -17.000
				tc.top = 17.000
				tc.visible = false
				tc.img = 0x33010015
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y2'
				tc.left = -16.000
				tc.right = 16.000
				tc.bottom = -17.000
				tc.top = 17.000
				tc.visible = false
				tc.img = 0x33010014
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y3'
				tc.left = -16.000
				tc.right = 16.000
				tc.bottom = -17.000
				tc.top = 17.000
				tc.visible = false
				tc.img = 0x33010013
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y4'
				tc.left = -20.000
				tc.right = 20.000
				tc.bottom = -22.500
				tc.top = 22.500
				tc.visible = false
				tc.img = 0x56160052
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'over'
			tc.left = -60.000
			tc.right = 140.000
			tc.bottom = 652.000
			tc.top = 752.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61200041
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'hp'
			tc.pivotX = 0.000
			tc.left = -55.000
			tc.right = 25.000
			tc.bottom = -100.500
			tc.top = -93.500
			tc.alpha = 150
			tc.img = 0x560a0015
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = 'select'
	tc.left = 80.000
	tc.right = 380.000
	tc.bottom = -201.000
	tc.top = -141.000
	tc.mouseEnabled = true
	tc.visible = false
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.text = '自动选择目标ON'
	tc.font = 0x61260000
	tc.style = 8
	tp = tc
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = 'talk'
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'team1'
		tc.left = 89.000
		tc.right = 265.000
		tc.bottom = -154.500
		tc.top = -81.500
		tc.visible = false
		tc.img = 0x5616004b
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'head'
			tc.left = -67.500
			tc.right = -34.500
			tc.bottom = -28.000
			tc.top = 12.000
			tc.img = 0x56080001
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'text'
			tc.left = -75.000
			tc.right = 125.000
			tc.bottom = -47.000
			tc.top = 33.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '还没有觉悟吗'
			tc.wrap = true
			tc.font = 0x611a0000
			tc.align = 1
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'team2'
		tc.left = 139.000
		tc.right = 315.000
		tc.bottom = -97.500
		tc.top = -24.500
		tc.visible = false
		tc.img = 0x5616004b
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'head'
			tc.left = -67.500
			tc.right = -34.500
			tc.bottom = -28.000
			tc.top = 12.000
			tc.img = 0x56080001
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'text'
			tc.left = -75.000
			tc.right = 125.000
			tc.bottom = -47.000
			tc.top = 33.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '还没有觉悟吗'
			tc.wrap = true
			tc.font = 0x611a0000
			tc.align = 1
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'team3'
		tc.left = 47.000
		tc.right = 223.000
		tc.bottom = -206.500
		tc.top = -133.500
		tc.visible = false
		tc.img = 0x5616004b
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'head'
			tc.left = -67.500
			tc.right = -34.500
			tc.bottom = -28.000
			tc.top = 12.000
			tc.img = 0x56080001
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'text'
			tc.left = -75.000
			tc.right = 125.000
			tc.bottom = -47.000
			tc.top = 33.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '还没有觉悟吗'
			tc.wrap = true
			tc.font = 0x611a0000
			tc.align = 1
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'team4'
		tc.left = 118.500
		tc.right = 295.500
		tc.bottom = 59.500
		tc.top = 132.500
		tc.visible = false
		tc.img = 0x5616004a
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'head'
			tc.left = -70.500
			tc.right = -37.500
			tc.bottom = -12.000
			tc.top = 28.000
			tc.img = 0x56080001
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'text'
			tc.left = -81.000
			tc.right = 119.000
			tc.bottom = -32.000
			tc.top = 48.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '还没有觉悟吗'
			tc.wrap = true
			tc.font = 0x611a0000
			tc.align = 1
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'team5'
		tc.left = -180.500
		tc.right = -3.500
		tc.bottom = -164.500
		tc.top = -91.500
		tc.visible = false
		tc.img = 0x5616004a
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'head'
			tc.left = -70.500
			tc.right = -37.500
			tc.bottom = -12.000
			tc.top = 28.000
			tc.img = 0x56080001
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'text'
			tc.left = -82.000
			tc.right = 118.000
			tc.bottom = -33.000
			tc.top = 47.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '还没有觉悟吗'
			tc.wrap = true
			tc.font = 0x611a0000
			tc.align = 1
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'enemy1'
		tc.left = -182.000
		tc.right = -6.000
		tc.bottom = 27.500
		tc.top = 100.500
		tc.visible = false
		tc.img = 0x5616004b
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'head'
			tc.left = -67.500
			tc.right = -34.500
			tc.bottom = -28.000
			tc.top = 12.000
			tc.img = 0x56080001
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'text'
			tc.left = -75.000
			tc.right = 125.000
			tc.bottom = -47.000
			tc.top = 33.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '还没有觉悟吗'
			tc.wrap = true
			tc.font = 0x611a0000
			tc.align = 1
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'enemy2'
		tc.left = -196.000
		tc.right = -20.000
		tc.bottom = -94.500
		tc.top = -21.500
		tc.visible = false
		tc.img = 0x5616004b
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'head'
			tc.left = -67.500
			tc.right = -34.500
			tc.bottom = -28.000
			tc.top = 12.000
			tc.img = 0x56080001
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'text'
			tc.left = -75.000
			tc.right = 125.000
			tc.bottom = -47.000
			tc.top = 33.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '还没有觉悟吗'
			tc.wrap = true
			tc.font = 0x611a0000
			tc.align = 1
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'enemy3'
		tc.right = 176.000
		tc.bottom = 33.500
		tc.top = 106.500
		tc.visible = false
		tc.img = 0x5616004b
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'head'
			tc.left = -67.500
			tc.right = -34.500
			tc.bottom = -28.000
			tc.top = 12.000
			tc.img = 0x56080001
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'text'
			tc.left = -75.000
			tc.right = 125.000
			tc.bottom = -47.000
			tc.top = 33.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '还没有觉悟吗'
			tc.wrap = true
			tc.font = 0x611a0000
			tc.align = 1
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'enemy4'
		tc.left = -262.000
		tc.right = -86.000
		tc.bottom = -35.500
		tc.top = 37.500
		tc.visible = false
		tc.img = 0x5616004b
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'head'
			tc.left = -67.500
			tc.right = -34.500
			tc.bottom = -28.000
			tc.top = 12.000
			tc.img = 0x56080001
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'text'
			tc.left = -75.000
			tc.right = 125.000
			tc.bottom = -47.000
			tc.top = 33.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '还没有觉悟吗'
			tc.wrap = true
			tc.font = 0x611a0000
			tc.align = 1
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'enemy5'
		tc.left = -83.000
		tc.right = 93.000
		tc.bottom = 78.500
		tc.top = 151.500
		tc.visible = false
		tc.img = 0x5616004b
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'head'
			tc.left = -67.500
			tc.right = -34.500
			tc.bottom = -28.000
			tc.top = 12.000
			tc.img = 0x56080001
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'text'
			tc.left = -75.000
			tc.right = 125.000
			tc.bottom = -47.000
			tc.top = 33.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '还没有觉悟吗'
			tc.wrap = true
			tc.font = 0x611a0000
			tc.align = 1
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'enemy6'
		tc.left = -102.000
		tc.right = 74.000
		tc.bottom = -52.500
		tc.top = 20.500
		tc.visible = false
		tc.img = 0x5616004b
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'head'
			tc.left = -67.500
			tc.right = -34.500
			tc.bottom = -28.000
			tc.top = 12.000
			tc.img = 0x56080001
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'text'
			tc.left = -75.000
			tc.right = 125.000
			tc.bottom = -47.000
			tc.top = 33.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '还没有觉悟吗'
			tc.wrap = true
			tc.font = 0x611a0000
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
	tc.name = '集气条'
	tc.pivotX = 0.000
	tc.left = -319.000
	tc.right = 81.000
	tc.bottom = 202.250
	tc.top = 239.750
	tc.img = 0x56160069
	tp = tc
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = 'map'
	tc.left = -301.000
	tc.right = -251.000
	tc.bottom = 207.000
	tc.top = 257.000
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'team1'
		tc.left = -7.500
		tc.right = 7.500
		tc.bottom = -8.875
		tc.top = 8.875
		tc.img = 0x56080001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'team2'
		tc.left = -7.500
		tc.right = 7.500
		tc.bottom = -8.875
		tc.top = 8.875
		tc.img = 0x56080001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'team3'
		tc.left = -7.500
		tc.right = 7.500
		tc.bottom = -8.875
		tc.top = 8.875
		tc.img = 0x56080001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'team4'
		tc.left = -7.500
		tc.right = 7.500
		tc.bottom = -8.875
		tc.top = 8.875
		tc.img = 0x56080001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'team5'
		tc.left = -7.500
		tc.right = 7.500
		tc.bottom = -8.875
		tc.top = 8.875
		tc.img = 0x56080001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'enemy1'
		tc.left = -7.500
		tc.right = 7.500
		tc.bottom = -40.875
		tc.top = -23.125
		tc.img = 0x56080001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'enemy2'
		tc.left = -7.500
		tc.right = 7.500
		tc.bottom = -40.875
		tc.top = -23.125
		tc.visible = false
		tc.img = 0x56080001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'enemy3'
		tc.left = -7.500
		tc.right = 7.500
		tc.bottom = -40.875
		tc.top = -23.125
		tc.visible = false
		tc.img = 0x56080001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'enemy4'
		tc.left = -7.500
		tc.right = 7.500
		tc.bottom = -40.875
		tc.top = -23.125
		tc.visible = false
		tc.img = 0x56080001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'enemy5'
		tc.left = -7.500
		tc.right = 7.500
		tc.bottom = -40.875
		tc.top = -23.125
		tc.visible = false
		tc.img = 0x56080001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'enemy6'
		tc.left = -7.500
		tc.right = 7.500
		tc.bottom = -40.875
		tc.top = -23.125
		tc.visible = false
		tc.img = 0x56080001
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '主菜单'
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
			tc.bottom = 16.000
			tc.top = 26.000
			tc.mouseEnabled = true
			tc.alpha = 180
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
			tc.alpha = 180
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
			tc.bottom = -12.000
			tc.top = -2.000
			tc.alpha = 180
			tc.img = 0x560a0017
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'hp'
			tc.left = -74.000
			tc.right = 126.000
			tc.bottom = 6.000
			tc.top = 34.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.alpha = 180
			tc.text = '200/1'
			tc.font = 0x611c0000
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'mp'
			tc.left = -74.000
			tc.right = 126.000
			tc.bottom = -9.000
			tc.top = 19.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.alpha = 180
			tc.text = '200/0'
			tc.font = 0x611c0000
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'tl'
			tc.left = -74.000
			tc.right = 126.000
			tc.bottom = -22.000
			tc.top = 6.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.alpha = 180
			tc.text = '0/100'
			tc.font = 0x611c0000
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
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '显示'
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'c1'
		tc.left = -318.000
		tc.right = -52.000
		tc.bottom = -240.500
		tc.top = -145.500
		tc.img = 0x56160067
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'c11'
		tc.left = 153.000
		tc.right = 549.000
		tc.bottom = -58.750
		tc.top = -9.250
		tc.rotation = -90.000
		tc.img = 0x560a0003
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = 'flash1'
	tc.visible = false
	tp = tc
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = 'team1'
		tc.left = 55.000
		tc.right = 197.000
		tc.bottom = -156.500
		tc.top = -31.500
		tc.visible = false
		tc.blend = 1
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.blend = 1
			tc.img = 0x33070001
			tp = tc
			end
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'hp'
			tc.pivotX = 0.000
			tc.left = 56.000
			tc.right = 136.000
			tc.bottom = -109.500
			tc.top = -102.500
			tc.visible = false
			tc.img = 0x560a0015
			tp = tc
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = 'yc'
			tc.left = 51.000
			tc.right = 101.000
			tc.bottom = -25.000
			tc.top = 25.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y1'
				tc.left = -16.000
				tc.right = 16.000
				tc.bottom = -17.000
				tc.top = 17.000
				tc.visible = false
				tc.img = 0x33010015
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y2'
				tc.left = -16.000
				tc.right = 16.000
				tc.bottom = -17.000
				tc.top = 17.000
				tc.visible = false
				tc.img = 0x33010014
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y3'
				tc.left = -16.000
				tc.right = 16.000
				tc.bottom = -17.000
				tc.top = 17.000
				tc.visible = false
				tc.img = 0x33010013
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y4'
				tc.left = -20.000
				tc.right = 20.000
				tc.bottom = -22.500
				tc.top = 22.500
				tc.visible = false
				tc.img = 0x56160052
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = 'flash'
			tc.left = 64.000
			tc.right = 80.000
			tc.bottom = -64.000
			tc.top = -20.000
			tc.visible = false
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x33010020
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['img_normal'] =855703584.000
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'over'
			tc.left = -60.000
			tc.right = 140.000
			tc.bottom = 652.000
			tc.top = 752.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61200041
			tp = tc
			tp = tp.parent
			--end
		com = tp.c_button
		com['img_normal'] =856096769.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = 'team2'
		tc.left = 124.000
		tc.right = 250.000
		tc.bottom = -121.000
		tc.top = 5.000
		tc.visible = false
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x33070002
			tp = tc
			end
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'hp'
			tc.pivotX = 0.000
			tc.left = -34.000
			tc.right = 46.000
			tc.bottom = -56.500
			tc.top = -49.500
			tc.visible = false
			tc.img = 0x560a0015
			tp = tc
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = 'yc'
			tc.left = -12.000
			tc.right = -12.000
			tc.bottom = 5.000
			tc.top = 5.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y1'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010015
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y2'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010014
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y3'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010013
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y4'
				tc.left = -8.000
				tc.right = 32.000
				tc.bottom = 42.500
				tc.top = 87.500
				tc.visible = false
				tc.img = 0x56160052
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = 'flash'
			tc.left = -8.000
			tc.right = 8.000
			tc.bottom = 6.000
			tc.top = 50.000
			tc.visible = false
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x33010020
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['img_normal'] =855703584.000
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'over'
			tc.left = -60.000
			tc.right = 140.000
			tc.bottom = 652.000
			tc.top = 752.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61200041
			tp = tc
			tp = tp.parent
			--end
		com = tp.c_button
		com['img_normal'] =856096770.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = 'team3'
		tc.left = -1.000
		tc.right = 125.000
		tc.bottom = -190.000
		tc.top = -64.000
		tc.visible = false
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x33070002
			tp = tc
			end
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'hp'
			tc.pivotX = 0.000
			tc.left = -20.000
			tc.right = 60.000
			tc.bottom = -58.500
			tc.top = -51.500
			tc.visible = false
			tc.img = 0x560a0015
			tp = tc
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = 'yc'
			tc.left = -12.000
			tc.right = -12.000
			tc.bottom = 5.000
			tc.top = 5.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y1'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010015
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y2'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010014
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y3'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010013
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y4'
				tc.left = -8.000
				tc.right = 32.000
				tc.bottom = 42.500
				tc.top = 87.500
				tc.visible = false
				tc.img = 0x56160052
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = 'flash'
			tc.left = -8.000
			tc.right = 8.000
			tc.bottom = 6.000
			tc.top = 50.000
			tc.visible = false
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x33010020
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['img_normal'] =855703584.000
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'over'
			tc.left = -60.000
			tc.right = 140.000
			tc.bottom = 652.000
			tc.top = 752.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61200041
			tp = tc
			tp = tp.parent
			--end
		com = tp.c_button
		com['img_normal'] =856096770.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = 'team4'
		tc.left = 195.000
		tc.right = 321.000
		tc.bottom = -66.000
		tc.top = 60.000
		tc.visible = false
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x33070002
			tp = tc
			end
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'hp'
			tc.pivotX = 0.000
			tc.left = -34.000
			tc.right = 46.000
			tc.bottom = -56.500
			tc.top = -49.500
			tc.visible = false
			tc.img = 0x560a0015
			tp = tc
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = 'yc'
			tc.left = -12.000
			tc.right = -12.000
			tc.bottom = 5.000
			tc.top = 5.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y1'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010015
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y2'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010014
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y3'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010013
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y4'
				tc.left = -8.000
				tc.right = 32.000
				tc.bottom = 42.500
				tc.top = 87.500
				tc.visible = false
				tc.img = 0x56160052
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = 'flash'
			tc.left = -8.000
			tc.right = 8.000
			tc.bottom = 6.000
			tc.top = 50.000
			tc.visible = false
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x33010020
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['img_normal'] =855703584.000
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'over'
			tc.left = -60.000
			tc.right = 140.000
			tc.bottom = 652.000
			tc.top = 752.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61200041
			tp = tc
			tp = tp.parent
			--end
		com = tp.c_button
		com['img_normal'] =856096770.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = 'team5'
		tc.left = -76.000
		tc.right = 50.000
		tc.bottom = -233.000
		tc.top = -107.000
		tc.visible = false
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x33070002
			tp = tc
			end
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'hp'
			tc.pivotX = 0.000
			tc.left = -34.000
			tc.right = 46.000
			tc.bottom = -65.500
			tc.top = -58.500
			tc.visible = false
			tc.img = 0x560a0015
			tp = tc
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = 'yc'
			tc.left = -12.000
			tc.right = -12.000
			tc.bottom = 5.000
			tc.top = 5.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y1'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010015
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y2'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010014
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y3'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010013
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y4'
				tc.left = -8.000
				tc.right = 32.000
				tc.bottom = 42.500
				tc.top = 87.500
				tc.visible = false
				tc.img = 0x56160052
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = 'flash'
			tc.left = -8.000
			tc.right = 8.000
			tc.bottom = 6.000
			tc.top = 50.000
			tc.visible = false
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x33010020
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['img_normal'] =855703584.000
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'over'
			tc.left = -60.000
			tc.right = 140.000
			tc.bottom = 652.000
			tc.top = 752.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61200041
			tp = tc
			tp = tp.parent
			--end
		com = tp.c_button
		com['img_normal'] =856096770.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = 'enemy1'
		tc.left = -201.500
		tc.right = -88.500
		tc.bottom = 20.000
		tc.top = 112.000
		tc.visible = false
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x33060003
			tp = tc
			end
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'hp'
			tc.pivotX = 0.000
			tc.left = -32.000
			tc.right = 48.000
			tc.bottom = -63.500
			tc.top = -56.500
			tc.visible = false
			tc.img = 0x560a0015
			tp = tc
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = 'yc'
			tc.left = -12.000
			tc.right = -12.000
			tc.bottom = 5.000
			tc.top = 5.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y1'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010015
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y2'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010014
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y3'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010013
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y4'
				tc.left = -8.000
				tc.right = 32.000
				tc.bottom = 42.500
				tc.top = 87.500
				tc.visible = false
				tc.img = 0x56160052
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = 'flash'
			tc.left = -8.000
			tc.right = 8.000
			tc.bottom = 6.000
			tc.top = 50.000
			tc.visible = false
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x33010020
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['img_normal'] =855703584.000
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'over'
			tc.left = -60.000
			tc.right = 140.000
			tc.bottom = 652.000
			tc.top = 752.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61200041
			tp = tc
			tp = tp.parent
			--end
		com = tp.c_button
		com['img_normal'] =856031235.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = 'enemy2'
		tc.left = -225.000
		tc.right = -99.000
		tc.bottom = -129.500
		tc.top = -34.500
		tc.visible = false
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x33060004
			tp = tc
			end
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'hp'
			tc.pivotX = 0.000
			tc.left = -34.000
			tc.right = 46.000
			tc.bottom = -63.500
			tc.top = -56.500
			tc.visible = false
			tc.img = 0x560a0015
			tp = tc
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = 'yc'
			tc.left = -12.000
			tc.right = -12.000
			tc.bottom = 5.000
			tc.top = 5.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y1'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010015
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y2'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010014
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y3'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010013
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y4'
				tc.left = -8.000
				tc.right = 32.000
				tc.bottom = 42.500
				tc.top = 87.500
				tc.visible = false
				tc.img = 0x56160052
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = 'flash'
			tc.left = -8.000
			tc.right = 8.000
			tc.bottom = 6.000
			tc.top = 50.000
			tc.visible = false
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x33010020
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['img_normal'] =855703584.000
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'over'
			tc.left = -60.000
			tc.right = 140.000
			tc.bottom = 652.000
			tc.top = 752.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61200041
			tp = tc
			tp = tp.parent
			--end
		com = tp.c_button
		com['img_normal'] =856031236.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = 'enemy3'
		tc.left = -50.000
		tc.right = 80.000
		tc.bottom = -21.000
		tc.top = 131.000
		tc.visible = false
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x33060005
			tp = tc
			end
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'hp'
			tc.pivotX = 0.000
			tc.left = -30.000
			tc.right = 59.600
			tc.bottom = -63.500
			tc.top = -56.500
			tc.visible = false
			tc.img = 0x560a0015
			tp = tc
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = 'yc'
			tc.left = -12.000
			tc.right = -12.000
			tc.bottom = 5.000
			tc.top = 5.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y1'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010015
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y2'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010014
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y3'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010013
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y4'
				tc.left = -8.000
				tc.right = 32.000
				tc.bottom = 42.500
				tc.top = 87.500
				tc.visible = false
				tc.img = 0x56160052
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = 'flash'
			tc.left = -8.000
			tc.right = 8.000
			tc.bottom = 6.000
			tc.top = 50.000
			tc.visible = false
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x33010020
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['img_normal'] =855703584.000
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'over'
			tc.left = -60.000
			tc.right = 140.000
			tc.bottom = 652.000
			tc.top = 752.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61200041
			tp = tc
			tp = tp.parent
			--end
		com = tp.c_button
		com['img_normal'] =856031237.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = 'enemy4'
		tc.left = -298.500
		tc.right = -183.500
		tc.bottom = -65.500
		tc.top = 51.500
		tc.visible = false
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x33060006
			tp = tc
			end
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'hp'
			tc.pivotX = 0.000
			tc.left = -31.000
			tc.right = 49.000
			tc.bottom = -63.500
			tc.top = -56.500
			tc.visible = false
			tc.img = 0x560a0015
			tp = tc
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = 'yc'
			tc.left = -12.000
			tc.right = -12.000
			tc.bottom = 5.000
			tc.top = 5.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y1'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010015
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y2'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010014
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y3'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010013
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y4'
				tc.left = -8.000
				tc.right = 32.000
				tc.bottom = 42.500
				tc.top = 87.500
				tc.visible = false
				tc.img = 0x56160052
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = 'flash'
			tc.left = -8.000
			tc.right = 8.000
			tc.bottom = 6.000
			tc.top = 50.000
			tc.visible = false
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x33010020
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['img_normal'] =855703584.000
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'over'
			tc.left = -60.000
			tc.right = 140.000
			tc.bottom = 652.000
			tc.top = 752.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61200041
			tp = tc
			tp = tp.parent
			--end
		com = tp.c_button
		com['img_normal'] =856031238.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = 'enemy5'
		tc.left = -136.000
		tc.right = 20.000
		tc.bottom = 35.500
		tc.top = 202.500
		tc.visible = false
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x33060007
			tp = tc
			end
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'hp'
			tc.pivotX = 0.000
			tc.left = -34.000
			tc.right = 46.000
			tc.bottom = -63.500
			tc.top = -56.500
			tc.visible = false
			tc.img = 0x560a0015
			tp = tc
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = 'yc'
			tc.left = -12.000
			tc.right = -12.000
			tc.bottom = 5.000
			tc.top = 5.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y1'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010015
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y2'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010014
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y3'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010013
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y4'
				tc.left = -8.000
				tc.right = 32.000
				tc.bottom = 42.500
				tc.top = 87.500
				tc.visible = false
				tc.img = 0x56160052
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = 'flash'
			tc.left = -8.000
			tc.right = 8.000
			tc.bottom = 6.000
			tc.top = 50.000
			tc.visible = false
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x33010020
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['img_normal'] =855703584.000
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'over'
			tc.left = -60.000
			tc.right = 140.000
			tc.bottom = 652.000
			tc.top = 752.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61200041
			tp = tc
			tp = tp.parent
			--end
		com = tp.c_button
		com['img_normal'] =856031239.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = 'enemy6'
		tc.left = -153.000
		tc.right = 3.000
		tc.bottom = -71.500
		tc.top = 57.500
		tc.visible = false
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x33060001
			tp = tc
			end
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'hp'
			tc.pivotX = 0.000
			tc.left = -34.000
			tc.right = 46.000
			tc.bottom = -63.500
			tc.top = -56.500
			tc.visible = false
			tc.img = 0x560a0015
			tp = tc
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = 'yc'
			tc.left = -12.000
			tc.right = -12.000
			tc.bottom = 5.000
			tc.top = 5.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y1'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010015
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y2'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010014
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y3'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010013
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y4'
				tc.left = -8.000
				tc.right = 32.000
				tc.bottom = 42.500
				tc.top = 87.500
				tc.visible = false
				tc.img = 0x56160052
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = 'flash'
			tc.left = -8.000
			tc.right = 8.000
			tc.bottom = 6.000
			tc.top = 50.000
			tc.visible = false
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x33010020
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['img_normal'] =855703584.000
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'over'
			tc.left = -60.000
			tc.right = 140.000
			tc.bottom = 652.000
			tc.top = 752.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61200041
			tp = tc
			tp = tp.parent
			--end
		com = tp.c_button
		com['img_normal'] =856031233.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = 'all1'
		tc.left = -228.000
		tc.right = -72.000
		tc.bottom = 5.500
		tc.top = 134.500
		tc.visible = false
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.blend = 1
			tc.img = 0x33060001
			tp = tc
			end
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'hp'
			tc.pivotX = 0.000
			tc.left = -34.000
			tc.right = 46.000
			tc.bottom = -63.500
			tc.top = -56.500
			tc.visible = false
			tc.img = 0x560a0015
			tp = tc
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = 'yc'
			tc.left = -12.000
			tc.right = -12.000
			tc.bottom = 5.000
			tc.top = 5.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y1'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010015
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y2'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010014
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y3'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010013
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y4'
				tc.left = -8.000
				tc.right = 32.000
				tc.bottom = 42.500
				tc.top = 87.500
				tc.visible = false
				tc.img = 0x56160052
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = 'flash'
			tc.left = -8.000
			tc.right = 8.000
			tc.bottom = 6.000
			tc.top = 50.000
			tc.visible = false
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x33010020
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['img_normal'] =855703584.000
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'over'
			tc.left = -60.000
			tc.right = 140.000
			tc.bottom = 652.000
			tc.top = 752.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61200041
			tp = tc
			tp = tp.parent
			--end
		com = tp.c_button
		com['img_normal'] =856031233.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = 'all2'
		tc.left = 32.000
		tc.right = 188.000
		tc.bottom = -104.500
		tc.top = 24.500
		tc.visible = false
		tc.blend = 1
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.blend = 1
			tc.img = 0x33060001
			tp = tc
			end
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'hp'
			tc.pivotX = 0.000
			tc.left = -34.000
			tc.right = 46.000
			tc.bottom = -63.500
			tc.top = -56.500
			tc.visible = false
			tc.img = 0x560a0015
			tp = tc
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = 'yc'
			tc.left = -12.000
			tc.right = -12.000
			tc.bottom = 5.000
			tc.top = 5.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y1'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010015
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y2'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010014
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y3'
				tc.left = -4.000
				tc.right = 28.000
				tc.bottom = 48.000
				tc.top = 82.000
				tc.visible = false
				tc.img = 0x33010013
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = 'y4'
				tc.left = -8.000
				tc.right = 32.000
				tc.bottom = 42.500
				tc.top = 87.500
				tc.visible = false
				tc.img = 0x56160052
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = 'flash'
			tc.left = -8.000
			tc.right = 8.000
			tc.bottom = 6.000
			tc.top = 50.000
			tc.visible = false
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x33010020
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['img_normal'] =855703584.000
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'over'
			tc.left = -60.000
			tc.right = 140.000
			tc.bottom = 652.000
			tc.top = 752.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61200041
			tp = tc
			tp = tp.parent
			--end
		com = tp.c_button
		com['img_normal'] =856031233.000
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = 'flash'
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'team1'
		tc.left = 123.000
		tc.right = 223.000
		tc.bottom = -63.000
		tc.top = 37.000
		tc.blend = 1
		tc.img = 0x33049999
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'team2'
		tc.left = 58.000
		tc.right = 158.000
		tc.bottom = -94.000
		tc.top = 6.000
		tc.blend = 1
		tc.img = 0x33049999
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'team3'
		tc.left = 188.000
		tc.right = 288.000
		tc.bottom = -30.000
		tc.top = 70.000
		tc.blend = 1
		tc.img = 0x33049999
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'team4'
		tc.left = 260.000
		tc.right = 360.000
		tc.bottom = 20.000
		tc.top = 120.000
		tc.blend = 1
		tc.img = 0x33049999
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'team5'
		tc.left = -21.000
		tc.right = 79.000
		tc.bottom = -143.000
		tc.top = -43.000
		tc.blend = 1
		tc.img = 0x33049999
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'enemy1'
		tc.left = -161.000
		tc.right = -61.000
		tc.bottom = 78.000
		tc.top = 178.000
		tc.blend = 1
		tc.img = 0x33049999
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'enemy2'
		tc.left = -161.000
		tc.right = -61.000
		tc.bottom = -42.000
		tc.top = 58.000
		tc.blend = 1
		tc.img = 0x33049999
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'enemy3'
		tc.left = 41.000
		tc.right = 141.000
		tc.bottom = 78.000
		tc.top = 178.000
		tc.blend = 1
		tc.img = 0x33049999
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'enemy4'
		tc.left = -256.000
		tc.right = -156.000
		tc.bottom = 28.000
		tc.top = 128.000
		tc.blend = 1
		tc.img = 0x33049999
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'enemy5'
		tc.left = -58.000
		tc.right = 42.000
		tc.bottom = 136.000
		tc.top = 236.000
		tc.blend = 1
		tc.img = 0x33049999
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'enemy6'
		tc.left = -59.000
		tc.right = 41.000
		tc.bottom = 28.000
		tc.top = 128.000
		tc.blend = 1
		tc.img = 0x33049999
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'all1'
		tc.left = -191.000
		tc.right = -91.000
		tc.bottom = 80.000
		tc.top = 180.000
		tc.blend = 1
		tc.img = 0x33049999
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'all2'
		tc.left = 81.000
		tc.right = 181.000
		tc.bottom = -45.000
		tc.top = 55.000
		tc.blend = 1
		tc.img = 0x33049999
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '按钮'
	tp = tc
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '1'
		tc.left = -314.000
		tc.right = -286.000
		tc.bottom = -221.000
		tc.top = -193.000
		tc.mouseEnabled = false
		tc.visible = false
		tc.alpha = 100
		tp = tc
		com = tp.c_button
		com['customsize'] =true
		com['img_normal'] =0.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '2'
		tc.left = -281.000
		tc.right = -253.000
		tc.bottom = -221.000
		tc.top = -193.000
		tc.mouseEnabled = false
		tc.visible = false
		tc.alpha = 100
		tp = tc
		com = tp.c_button
		com['customsize'] =true
		com['img_normal'] =0.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '3'
		tc.left = -248.000
		tc.right = -220.000
		tc.bottom = -221.000
		tc.top = -193.000
		tc.mouseEnabled = false
		tc.visible = false
		tc.alpha = 100
		tp = tc
		com = tp.c_button
		com['customsize'] =true
		com['img_normal'] =0.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '4'
		tc.left = -215.000
		tc.right = -187.000
		tc.bottom = -221.000
		tc.top = -193.000
		tc.mouseEnabled = false
		tc.visible = false
		tc.alpha = 100
		tp = tc
		com = tp.c_button
		com['customsize'] =true
		com['img_normal'] =0.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '5'
		tc.left = -182.000
		tc.right = -154.000
		tc.bottom = -221.000
		tc.top = -193.000
		tc.mouseEnabled = false
		tc.visible = false
		tc.alpha = 100
		tp = tc
		com = tp.c_button
		com['customsize'] =true
		com['img_normal'] =0.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '6'
		tc.left = -149.000
		tc.right = -121.000
		tc.bottom = -221.000
		tc.top = -193.000
		tc.mouseEnabled = false
		tc.visible = false
		tc.alpha = 100
		tp = tc
		com = tp.c_button
		com['customsize'] =true
		com['img_normal'] =0.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '7'
		tc.left = -116.000
		tc.right = -88.000
		tc.bottom = -221.000
		tc.top = -193.000
		tc.visible = false
		tp = tc
		com = tp.c_button
		com['customsize'] =true
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '8'
		tc.left = -83.000
		tc.right = -55.000
		tc.bottom = -221.000
		tc.top = -193.000
		tc.visible = false
		tp = tc
		com = tp.c_button
		com['customsize'] =true
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = 'q'
		tc.left = -301.000
		tc.right = -271.000
		tc.bottom = -181.000
		tc.top = -151.000
		tc.visible = false
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x560e00df
			tp = tc
			end
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '数量'
			tc.left = -6.500
			tc.right = 18.500
			tc.bottom = -18.000
			tc.top = 2.000
			tc.text = '0'
			tc.font = 0x61140000
			tc.align = 3
			tp = tc
			tp = tp.parent
			--end
		com = tp.c_button
		com['customsize'] =true
		com['img_normal'] =1443758303.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = 'w'
		tc.left = -265.000
		tc.right = -235.000
		tc.bottom = -181.000
		tc.top = -151.000
		tc.visible = false
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '数量'
			tc.left = -6.500
			tc.right = 18.500
			tc.bottom = -18.000
			tc.top = 2.000
			tc.text = '0'
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
		tc.left = -229.000
		tc.right = -199.000
		tc.bottom = -181.000
		tc.top = -151.000
		tc.visible = false
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '数量'
			tc.left = -6.500
			tc.right = 18.500
			tc.bottom = -18.000
			tc.top = 2.000
			tc.text = '0'
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
		tc.left = -193.000
		tc.right = -163.000
		tc.bottom = -181.000
		tc.top = -151.000
		tc.visible = false
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '数量'
			tc.left = -6.500
			tc.right = 18.500
			tc.bottom = -18.000
			tc.top = 2.000
			tc.text = '0'
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
	tc.name = '按钮1'
	tp = tc
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '1'
		tc.left = 329.000
		tc.right = 371.000
		tc.bottom = -231.000
		tc.top = -189.000
		tc.mouseEnabled = false
		tc.visible = false
		tc.alpha = 100
		tp = tc
		com = tp.c_button
		com['customsize'] =true
		com['img_normal'] =0.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '2'
		tc.left = 329.000
		tc.right = 371.000
		tc.bottom = -181.000
		tc.top = -139.000
		tc.mouseEnabled = false
		tc.visible = false
		tc.alpha = 100
		tp = tc
		com = tp.c_button
		com['customsize'] =true
		com['img_normal'] =0.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '3'
		tc.left = 329.000
		tc.right = 371.000
		tc.bottom = -131.000
		tc.top = -89.000
		tc.mouseEnabled = false
		tc.visible = false
		tc.alpha = 100
		tp = tc
		com = tp.c_button
		com['customsize'] =true
		com['img_normal'] =0.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '4'
		tc.left = 329.000
		tc.right = 371.000
		tc.bottom = -81.000
		tc.top = -39.000
		tc.mouseEnabled = false
		tc.visible = false
		tc.alpha = 100
		tp = tc
		com = tp.c_button
		com['customsize'] =true
		com['img_normal'] =0.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '5'
		tc.left = 329.000
		tc.right = 371.000
		tc.bottom = -31.000
		tc.top = 11.000
		tc.mouseEnabled = false
		tc.visible = false
		tc.alpha = 100
		tp = tc
		com = tp.c_button
		com['customsize'] =true
		com['img_normal'] =0.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '6'
		tc.left = 329.000
		tc.right = 371.000
		tc.bottom = 19.000
		tc.top = 61.000
		tc.mouseEnabled = false
		tc.visible = false
		tc.alpha = 100
		tp = tc
		com = tp.c_button
		com['customsize'] =true
		com['img_normal'] =0.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '7'
		tc.left = 329.000
		tc.right = 371.000
		tc.bottom = 69.000
		tc.top = 111.000
		tc.visible = false
		tp = tc
		com = tp.c_button
		com['customsize'] =true
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '8'
		tc.left = 329.000
		tc.right = 371.000
		tc.bottom = 119.000
		tc.top = 161.000
		tc.visible = false
		tp = tc
		com = tp.c_button
		com['customsize'] =true
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_button')
	tp.addChild(tc)
	tc.name = '逃跑'
	tc.left = -135.500
	tc.right = -104.500
	tc.bottom = -181.500
	tc.top = -144.500
	tp = tc
		tc = tp.getChildByName('img')
		if tc then
		tc.img = 0x33010012
		tp = tc
		end
		tp = tp.parent
		--end
	com = tp.c_button
	com['img_normal'] =855703570.000
	tp = tp.parent
	--end
	tc = G.loadUI('v_button')
	tp.addChild(tc)
	tc.name = '纵三'
	tc.left = -115.000
	tc.right = 85.000
	tc.bottom = 28.000
	tc.top = 108.000
	tc.rotation = 45.000
	tc.alpha = 100
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '图片'
		tc.left = -100.000
		tc.bottom = -40.000
		tc.top = 40.000
		tc.visible = false
		tc.img = 0x560a0016
		tp = tc
		tp = tp.parent
		--end
	com = tp.c_button
	com['customsize'] =true
	tp = tp.parent
	--end
	tc = G.loadUI('v_button')
	tp.addChild(tc)
	tc.name = '纵二'
	tc.left = -205.000
	tc.right = -5.000
	tc.bottom = -32.000
	tc.top = 48.000
	tc.rotation = 45.000
	tc.alpha = 100
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '图片'
		tc.left = -100.000
		tc.bottom = -40.000
		tc.top = 40.000
		tc.visible = false
		tc.img = 0x560a0016
		tp = tc
		tp = tp.parent
		--end
	com = tp.c_button
	com['customsize'] =true
	tp = tp.parent
	--end
	tc = G.loadUI('v_button')
	tp.addChild(tc)
	tc.name = '纵一'
	tc.left = -295.000
	tc.right = -95.000
	tc.bottom = -102.000
	tc.top = -22.000
	tc.rotation = 45.000
	tc.alpha = 100
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '图片'
		tc.left = -100.000
		tc.bottom = -40.000
		tc.top = 40.000
		tc.visible = false
		tc.img = 0x560a0016
		tp = tc
		tp = tp.parent
		--end
	com = tp.c_button
	com['customsize'] =true
	tp = tp.parent
	--end
	tc = G.loadUI('v_button')
	tp.addChild(tc)
	tc.name = '横二'
	tc.left = -215.000
	tc.right = 65.000
	tc.bottom = -58.000
	tc.top = 22.000
	tc.rotation = -225.000
	tc.alpha = 100
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '图片'
		tc.left = -140.000
		tc.right = 140.000
		tc.bottom = -40.000
		tc.top = 40.000
		tc.visible = false
		tc.img = 0x560a0016
		tp = tc
		tp = tp.parent
		--end
	com = tp.c_button
	com['customsize'] =true
	tp = tp.parent
	--end
	tc = G.loadUI('v_button')
	tp.addChild(tc)
	tc.name = '横一'
	tc.left = -310.000
	tc.right = -30.000
	tc.bottom = -2.000
	tc.top = 78.000
	tc.rotation = -225.000
	tc.alpha = 100
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '图片'
		tc.left = -140.000
		tc.right = 140.000
		tc.bottom = -40.000
		tc.top = 40.000
		tc.visible = false
		tc.img = 0x560a0016
		tp = tc
		tp = tp.parent
		--end
	com = tp.c_button
	com['customsize'] =true
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = 'hurt'
	tp = tc
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = 'team1'
		tc.left = 134.000
		tc.right = 134.000
		tc.bottom = -79.000
		tc.top = -79.000
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '加生命'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -20.000
			tc.top = 20.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 6
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '减生命'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -20.000
			tc.top = 20.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.font = 0x61300000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '加体力'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -66.000
			tc.top = -26.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 5
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '减体力'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -66.000
			tc.top = -26.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 9
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '加内力'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -43.000
			tc.top = -3.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '减内力'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -43.000
			tc.top = -3.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 7
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '闪避'
			tc.left = -34.000
			tc.right = 28.000
			tc.bottom = -9.500
			tc.top = 17.500
			tc.visible = false
			tc.img = 0x56160070
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = 'team2'
		tc.left = 201.000
		tc.right = 201.000
		tc.bottom = -47.000
		tc.top = -47.000
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '加生命'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -20.000
			tc.top = 20.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 6
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '减生命'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -20.000
			tc.top = 20.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.font = 0x61300000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '加体力'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -66.000
			tc.top = -26.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 5
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '减体力'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -66.000
			tc.top = -26.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 9
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '加内力'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -43.000
			tc.top = -3.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '减内力'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -43.000
			tc.top = -3.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 7
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '闪避'
			tc.left = -34.000
			tc.right = 28.000
			tc.bottom = -9.500
			tc.top = 17.500
			tc.visible = false
			tc.img = 0x56160070
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = 'team3'
		tc.left = 71.000
		tc.right = 71.000
		tc.bottom = -110.000
		tc.top = -110.000
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '加生命'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -20.000
			tc.top = 20.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 6
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '减生命'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -20.000
			tc.top = 20.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.font = 0x61300000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '加体力'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -66.000
			tc.top = -26.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 5
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '减体力'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -66.000
			tc.top = -26.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 9
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '加内力'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -43.000
			tc.top = -3.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '减内力'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -43.000
			tc.top = -3.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 7
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '闪避'
			tc.left = -34.000
			tc.right = 28.000
			tc.bottom = -9.500
			tc.top = 17.500
			tc.visible = false
			tc.img = 0x56160070
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = 'team4'
		tc.left = 275.000
		tc.right = 275.000
		tc.bottom = -7.000
		tc.top = -7.000
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '加生命'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -20.000
			tc.top = 20.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 6
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '减生命'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -20.000
			tc.top = 20.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.font = 0x61300000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '加体力'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -66.000
			tc.top = -26.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 5
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '减体力'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -66.000
			tc.top = -26.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 9
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '加内力'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -43.000
			tc.top = -3.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '减内力'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -43.000
			tc.top = -3.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 7
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '闪避'
			tc.left = -34.000
			tc.right = 28.000
			tc.bottom = -9.500
			tc.top = 17.500
			tc.visible = false
			tc.img = 0x56160070
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = 'team5'
		tc.left = -20.000
		tc.right = -20.000
		tc.bottom = -147.000
		tc.top = -147.000
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '加生命'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -20.000
			tc.top = 20.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 6
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '减生命'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -20.000
			tc.top = 20.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.font = 0x61300000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '加体力'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -66.000
			tc.top = -26.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 5
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '减体力'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -66.000
			tc.top = -26.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 9
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '加内力'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -43.000
			tc.top = -3.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '减内力'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -43.000
			tc.top = -3.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 7
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '闪避'
			tc.left = -34.000
			tc.right = 28.000
			tc.bottom = -9.500
			tc.top = 17.500
			tc.visible = false
			tc.img = 0x56160070
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = 'enemy1'
		tc.left = -150.000
		tc.right = -150.000
		tc.bottom = 80.000
		tc.top = 80.000
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '加生命'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -20.000
			tc.top = 20.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 6
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '减生命'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -20.000
			tc.top = 20.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.font = 0x61300000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '加体力'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -66.000
			tc.top = -26.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 5
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '减体力'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -66.000
			tc.top = -26.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 9
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '加内力'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -43.000
			tc.top = -3.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '减内力'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -43.000
			tc.top = -3.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 7
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '闪避'
			tc.left = -34.000
			tc.right = 28.000
			tc.bottom = -9.500
			tc.top = 17.500
			tc.visible = false
			tc.img = 0x56160070
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = 'enemy2'
		tc.left = -150.000
		tc.right = -150.000
		tc.bottom = -40.000
		tc.top = -40.000
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '加生命'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -20.000
			tc.top = 20.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 6
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '减生命'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -20.000
			tc.top = 20.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.font = 0x61300000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '加体力'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -66.000
			tc.top = -26.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 5
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '减体力'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -66.000
			tc.top = -26.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 9
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '加内力'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -43.000
			tc.top = -3.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '减内力'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -43.000
			tc.top = -3.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 7
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '闪避'
			tc.left = -34.000
			tc.right = 28.000
			tc.bottom = -9.500
			tc.top = 17.500
			tc.visible = false
			tc.img = 0x56160070
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = 'enemy3'
		tc.left = 45.000
		tc.right = 45.000
		tc.bottom = 80.000
		tc.top = 80.000
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '加生命'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -20.000
			tc.top = 20.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 6
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '减生命'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -20.000
			tc.top = 20.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.font = 0x61300000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '加体力'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -66.000
			tc.top = -26.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 5
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '减体力'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -66.000
			tc.top = -26.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 9
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '加内力'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -43.000
			tc.top = -3.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '减内力'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -43.000
			tc.top = -3.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 7
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '闪避'
			tc.left = -34.000
			tc.right = 28.000
			tc.bottom = -9.500
			tc.top = 17.500
			tc.visible = false
			tc.img = 0x56160070
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = 'enemy4'
		tc.left = -258.000
		tc.right = -258.000
		tc.bottom = 17.000
		tc.top = 17.000
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '加生命'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -20.000
			tc.top = 20.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 6
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '减生命'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -20.000
			tc.top = 20.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.font = 0x61300000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '加体力'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -66.000
			tc.top = -26.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 5
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '减体力'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -66.000
			tc.top = -26.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 9
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '加内力'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -43.000
			tc.top = -3.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '减内力'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -43.000
			tc.top = -3.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 7
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '闪避'
			tc.left = -34.000
			tc.right = 28.000
			tc.bottom = -9.500
			tc.top = 17.500
			tc.visible = false
			tc.img = 0x56160070
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = 'enemy5'
		tc.left = -55.000
		tc.right = -55.000
		tc.bottom = 131.000
		tc.top = 131.000
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '加生命'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -20.000
			tc.top = 20.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 6
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '减生命'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -20.000
			tc.top = 20.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.font = 0x61300000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '加体力'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -66.000
			tc.top = -26.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 5
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '减体力'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -66.000
			tc.top = -26.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 9
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '加内力'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -43.000
			tc.top = -3.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '减内力'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -43.000
			tc.top = -3.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 7
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '闪避'
			tc.left = -34.000
			tc.right = 28.000
			tc.bottom = -9.500
			tc.top = 17.500
			tc.visible = false
			tc.img = 0x56160070
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = 'enemy6'
		tc.left = -55.000
		tc.right = -55.000
		tc.bottom = 17.000
		tc.top = 17.000
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '加生命'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -20.000
			tc.top = 20.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 6
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '减生命'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -20.000
			tc.top = 20.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.font = 0x61300000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '加体力'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -66.000
			tc.top = -26.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 5
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '减体力'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -66.000
			tc.top = -26.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 9
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '加内力'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -43.000
			tc.top = -3.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '减内力'
			tc.left = -80.000
			tc.right = 80.000
			tc.bottom = -43.000
			tc.top = -3.000
			tc.visible = false
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '0'
			tc.font = 0x61300000
			tc.style = 7
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '闪避'
			tc.left = -34.000
			tc.right = 28.000
			tc.bottom = -9.500
			tc.top = 17.500
			tc.visible = false
			tc.img = 0x56160070
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '代码'
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'team1'
		tc.left = 87.000
		tc.right = 167.000
		tc.bottom = -90.000
		tc.top = -70.000
		tc.visible = false
		tc.text = '0'
		tc.font = 0x61180000
		tc.style = 3
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'min'
			tc.left = 87.000
			tc.right = 167.000
			tc.bottom = -90.000
			tc.top = -70.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61180000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'id'
			tc.left = 87.000
			tc.right = 167.000
			tc.bottom = -90.000
			tc.top = -70.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61180000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'team2'
		tc.left = 159.000
		tc.right = 239.000
		tc.bottom = -70.000
		tc.top = -50.000
		tc.visible = false
		tc.text = '0'
		tc.font = 0x61180000
		tc.style = 3
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'min'
			tc.left = 87.000
			tc.right = 167.000
			tc.bottom = -90.000
			tc.top = -70.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61180000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'id'
			tc.left = 87.000
			tc.right = 167.000
			tc.bottom = -90.000
			tc.top = -70.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61180000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'team3'
		tc.left = 31.000
		tc.right = 111.000
		tc.bottom = -120.000
		tc.top = -100.000
		tc.visible = false
		tc.text = '0'
		tc.font = 0x61180000
		tc.style = 3
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'min'
			tc.left = 87.000
			tc.right = 167.000
			tc.bottom = -90.000
			tc.top = -70.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61180000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'id'
			tc.left = 87.000
			tc.right = 167.000
			tc.bottom = -90.000
			tc.top = -70.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61180000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'team4'
		tc.left = 234.000
		tc.right = 314.000
		tc.bottom = 8.000
		tc.top = 28.000
		tc.visible = false
		tc.text = '0'
		tc.font = 0x61180000
		tc.style = 3
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'min'
			tc.left = 87.000
			tc.right = 167.000
			tc.bottom = -90.000
			tc.top = -70.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61180000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'id'
			tc.left = 87.000
			tc.right = 167.000
			tc.bottom = -90.000
			tc.top = -70.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61180000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'team5'
		tc.left = -38.000
		tc.right = 42.000
		tc.bottom = -183.000
		tc.top = -163.000
		tc.visible = false
		tc.text = '0'
		tc.font = 0x61180000
		tc.style = 3
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'min'
			tc.left = 87.000
			tc.right = 167.000
			tc.bottom = -90.000
			tc.top = -70.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61180000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'id'
			tc.left = 87.000
			tc.right = 167.000
			tc.bottom = -90.000
			tc.top = -70.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61180000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'enemy1'
		tc.left = -215.000
		tc.right = -135.000
		tc.bottom = 68.000
		tc.top = 88.000
		tc.visible = false
		tc.text = '0'
		tc.font = 0x61180000
		tc.style = 3
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'min'
			tc.left = 87.000
			tc.right = 167.000
			tc.bottom = -90.000
			tc.top = -70.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61180000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'id'
			tc.left = 87.000
			tc.right = 167.000
			tc.bottom = -90.000
			tc.top = -70.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61180000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'enemy2'
		tc.left = -210.000
		tc.right = -130.000
		tc.bottom = -51.000
		tc.top = -31.000
		tc.visible = false
		tc.text = '0'
		tc.font = 0x61180000
		tc.style = 3
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'min'
			tc.left = 87.000
			tc.right = 167.000
			tc.bottom = -90.000
			tc.top = -70.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61180000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'id'
			tc.left = 87.000
			tc.right = 167.000
			tc.bottom = -90.000
			tc.top = -70.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61180000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'enemy3'
		tc.left = -20.000
		tc.right = 60.000
		tc.bottom = 75.000
		tc.top = 95.000
		tc.visible = false
		tc.text = '0'
		tc.font = 0x61180000
		tc.style = 3
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'min'
			tc.left = 87.000
			tc.right = 167.000
			tc.bottom = -90.000
			tc.top = -70.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61180000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'id'
			tc.left = 87.000
			tc.right = 167.000
			tc.bottom = -90.000
			tc.top = -70.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61180000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'enemy4'
		tc.left = -277.000
		tc.right = -197.000
		tc.bottom = 22.000
		tc.top = 42.000
		tc.visible = false
		tc.text = '0'
		tc.font = 0x61180000
		tc.style = 3
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'min'
			tc.left = 87.000
			tc.right = 167.000
			tc.bottom = -90.000
			tc.top = -70.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61180000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'id'
			tc.left = 87.000
			tc.right = 167.000
			tc.bottom = -90.000
			tc.top = -70.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61180000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'enemy5'
		tc.left = -108.000
		tc.right = -28.000
		tc.bottom = 119.000
		tc.top = 139.000
		tc.visible = false
		tc.text = '0'
		tc.font = 0x61180000
		tc.style = 3
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'min'
			tc.left = 87.000
			tc.right = 167.000
			tc.bottom = -90.000
			tc.top = -70.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61180000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'id'
			tc.left = 87.000
			tc.right = 167.000
			tc.bottom = -90.000
			tc.top = -70.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61180000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'enemy6'
		tc.left = -128.000
		tc.right = -48.000
		tc.bottom = 11.000
		tc.top = 31.000
		tc.visible = false
		tc.text = '0'
		tc.font = 0x61180000
		tc.style = 3
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'min'
			tc.left = 87.000
			tc.right = 167.000
			tc.bottom = -90.000
			tc.top = -70.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61180000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'id'
			tc.left = 87.000
			tc.right = 167.000
			tc.bottom = -90.000
			tc.top = -70.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61180000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '状态'
	tc.left = -149.000
	tc.right = 51.000
	tc.bottom = -49.000
	tc.top = 51.000
	tc.visible = false
	tc.text = '0'
	tc.font = 0x61200041
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '战斗说明'
	tc.pivotX = 0.000
	tc.left = -300.000
	tc.right = -300.000
	tc.bottom = 158.000
	tc.top = 198.000
	tc.visible = false
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.autosize = 1
	tc.font = 0x61280000
	tc.style = 8
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '图表'
	tc.pivotX = 0.000
	tc.left = -45.000
	tc.right = 135.000
	tc.bottom = 146.000
	tc.top = 190.000
	tc.visible = false
	tc.img = 0x56160066
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '文字'
		tc.pivotX = 0.000
		tc.left = -82.000
		tc.right = 258.000
		tc.bottom = -18.000
		tc.top = 22.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '天罡北斗七星阵'
		tc.font = 0x61240000
		tc.style = 5
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '图标'
	tc.left = -42.000
	tc.right = 58.000
	tc.bottom = 145.000
	tc.top = 245.000
	tc.img = 0x33030020
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = 'num'
	tc.left = -100.000
	tc.bottom = -50.000
	tc.top = 50.000
	tc.visible = false
	tc.text = '1'
	tc.font = 0x61200041
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = 'num0'
	tc.left = 34.000
	tc.right = 234.000
	tc.bottom = -35.000
	tc.top = 65.000
	tc.visible = false
	tc.text = '5'
	tc.font = 0x61200041
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '单目标'
	tc.left = 45.000
	tc.right = 245.000
	tc.bottom = 58.000
	tc.top = 158.000
	tc.visible = false
	tc.text = '0'
	tc.font = 0x61200041
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = 'boss'
	tc.pivotX = 0.000
	tc.left = -299.000
	tc.right = -274.000
	tc.bottom = 149.000
	tc.top = 189.000
	tc.visible = false
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.autosize = 1
	tc.font = 0x61300000
	tc.style = 10
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '横目标'
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
	tc.name = '纵目标'
	tc.left = -100.000
	tc.bottom = -50.000
	tc.top = 50.000
	tc.visible = false
	tc.text = '0'
	tc.font = 0x61200041
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '胜利'
	tc.left = -176.500
	tc.right = 134.500
	tc.bottom = 13.000
	tc.top = 185.000
	tc.visible = false
	tc.img = 0x5616004c
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '失败'
	tc.left = -182.500
	tc.right = 140.500
	tc.bottom = 18.500
	tc.top = 179.500
	tc.visible = false
	tc.img = 0x5616004d
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '时间'
	tc.pivotX = 0.000
	tc.left = 75.000
	tc.right = 215.000
	tc.bottom = 192.000
	tc.top = 232.000
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.text = '00:00:00'
	tc.font = 0x611e0000
	tc.align = 1
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = 'c1'
	tc.left = -188.000
	tc.right = -112.000
	tc.bottom = 29.000
	tc.top = 105.000
	tc.visible = false
	tc.img = 0x33010001
	tp = tc
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '异常'
	tc.visible = false
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '状态'
		tc.pivotX = 0.000
		tc.pivotY = 1.000
		tc.left = -417.000
		tc.right = -237.000
		tc.bottom = 135.000
		tc.top = 231.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 2
		tc.wrap = true
		tc.font = 0x61200041
		tc.align = 1
		tc.style = 8
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '版本'
	tc.left = -468.000
	tc.right = -268.000
	tc.bottom = -268.000
	tc.top = -168.000
	tc.text = 'ver2.052'
	tc.font = 0x61200041
	tc.style = 3
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '返回'
	tc.left = 327.000
	tc.right = 377.000
	tc.bottom = 183.000
	tc.top = 233.000
	tc.visible = false
	tc.img = 0x33010024
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '层数'
	tc.pivotX = 0.000
	tc.left = -309.000
	tc.right = 51.000
	tc.bottom = 158.000
	tc.top = 198.000
	tc.visible = false
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.text = '无尽战斗第100层'
	tc.font = 0x61280000
	tc.style = 8
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '阵法'
	tc.pivotX = 0.000
	tc.left = 128.000
	tc.right = 488.000
	tc.bottom = -196.000
	tc.top = -156.000
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.font = 0x61300000
	tc.style = 8
	tp = tc
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '记事本'
	tc.visible = false
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '背景'
		tc.left = 47.500
		tc.right = 316.500
		tc.bottom = -194.000
		tc.top = 206.000
		tc.alpha = 180
		tc.img = 0x56160044
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '记录'
		tc.pivotX = 0.000
		tc.pivotY = 1.000
		tc.left = 59.000
		tc.right = 565.000
		tc.bottom = 178.000
		tc.top = 194.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 2
		tc.wrap = true
		tc.font = 0x611e0000
		tc.align = 1
		tc.style = 10
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
tp.c_battle = setmetatable({}, c_battle)
