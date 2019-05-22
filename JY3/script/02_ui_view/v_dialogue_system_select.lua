--[[2003

]]
local G = require 'gf'
local c_button = require 'c_button'
local c_layout_v = require 'c_layout_v'
local c_scrollview = require 'c_scrollview'
local c_dialogue_system_select = require 'c_dialogue_system_select'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_dialogue_system_select'
tc.left = -320.000
tc.right = 320.000
tc.bottom = -240.000
tc.top = 240.000
tp = tc
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '位置'
	tc.left = -100.000
	tc.bottom = -50.000
	tc.top = 50.000
	tc.visible = false
	tc.text = '1'
	tc.font = 0x610d0000
	tp = tc
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '移动'
	tc.left = -320.000
	tc.right = 320.000
	tc.bottom = -240.000
	tc.top = 240.000
	tp = tc
		tc = G.loadUI('v_scrollview')
		tp.addChild(tc)
		tc.name = '选项'
		tc.left = -110.000
		tc.right = 220.000
		tc.bottom = -234.000
		tc.top = -114.000
		tp = tc
			tc = tp.getChildByName('content')
			if tc then
			tc.right = 97.000
			tp = tc
			tp.c_layout_v = setmetatable({}, c_layout_v)
			com = tp.c_layout_v
			com['alignment_h'] =0.000
			com['alignment_v'] =1.000
			com['ColSpace'] =10.000
			com['startSpaceX'] =0.000
			com['startSpaceY'] =0.000
			com['changePivot'] =false
			com['changeAnchor'] =false
			end
			tp = tp.parent
			--end
			tc = tp.getChildByName('slider')
			if tc then
			tp = tc
				tc = tp.getChildByName('按钮')
				if tc then
				tc.bottom = -20.000
				tp = tc
					tc = tp.getChildByName('text')
					if tc then
					tc.font = 0x60140000
					tc.align = 1
					tc.style = 2
					tp = tc
					end
					tp = tp.parent
					--end
				end
				tp = tp.parent
				--end
			end
			tp = tp.parent
			--end
		com = tp.c_scrollview
		com['autoMove'] =false
		com['hideSlider'] =false
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '选项原型'
		tc.pivotX = 0.000
		tc.pivotY = 1.000
		tc.left = 207.000
		tc.right = 537.000
		tc.bottom = -347.000
		tc.top = -335.000
		tc.anchor = 0x64640000
		tc.visible = false
		tp = tc
			tc = tp.getChildByName('text')
			if tc then
			tc.left = -180.000
			tc.right = 204.500
			tc.bottom = 1.000
			tc.top = 6.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.sample = 0
			tc.wrap = true
			tc.font = 0x611e0000
			tc.align = 1
			tc.wordSpace = -3
			tp = tc
			end
			tp = tp.parent
			--end
		com = tp.c_button
		com['text'] =''
		com['customsize'] =true
		com['img_hover'] =1443045379.000
		com['audio_hover'] =0.000
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = 'select'
	tc.bottom = -15.000
	tc.top = -15.000
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '1'
		tc.left = 320.000
		tc.right = 420.000
		tc.bottom = 135.000
		tc.top = 165.000
		tc.mouseEnabled = true
		tc.visible = false
		tc.text = '选择一'
		tc.font = 0x61190000
		tc.style = 8
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '2'
		tc.left = 320.000
		tc.right = 420.000
		tc.bottom = 85.000
		tc.top = 115.000
		tc.mouseEnabled = true
		tc.visible = false
		tc.text = '选择二'
		tc.font = 0x61190000
		tc.style = 8
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '3'
		tc.left = 320.000
		tc.right = 420.000
		tc.bottom = 35.000
		tc.top = 65.000
		tc.mouseEnabled = true
		tc.visible = false
		tc.text = '选择三'
		tc.font = 0x61190000
		tc.style = 8
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '4'
		tc.left = 320.000
		tc.right = 420.000
		tc.bottom = -15.000
		tc.top = 15.000
		tc.mouseEnabled = true
		tc.visible = false
		tc.text = '选择四'
		tc.font = 0x61190000
		tc.style = 8
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '5'
		tc.left = 320.000
		tc.right = 420.000
		tc.bottom = -65.000
		tc.top = -35.000
		tc.mouseEnabled = true
		tc.visible = false
		tc.text = '选择五'
		tc.font = 0x61190000
		tc.style = 8
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '6'
		tc.left = 323.000
		tc.right = 423.000
		tc.bottom = -115.000
		tc.top = -85.000
		tc.mouseEnabled = true
		tc.visible = false
		tc.text = '选择六'
		tc.font = 0x61190000
		tc.style = 8
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = 'number'
	tc.left = 115.000
	tc.right = 315.000
	tc.bottom = 107.000
	tc.top = 207.000
	tc.visible = false
	tc.text = '0'
	tc.font = 0x61200041
	tp = tc
	tp = tp.parent
	--end
tp.c_dialogue_system_select = setmetatable({}, c_dialogue_system_select)
