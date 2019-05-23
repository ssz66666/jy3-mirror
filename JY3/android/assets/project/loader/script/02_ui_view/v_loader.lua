--[[2001

]]
local G = require 'gf'
local c_loader = require 'c_loader'
local c_button = require 'c_button'
local c_layout_v = require 'c_layout_v'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_loader'
tc.left = -640.000
tc.right = 640.000
tc.bottom = -360.000
tc.top = 360.000
tp = tc
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '背景'
	tc.right = 0.000
	tc.top = 0.000
	tc.anchor = 0x64006400
	tc.color = 0x0
	tc.img = 0x56000001
	tp = tc
	tp = tp.parent
	--end
	tc = G.Entity()
	tp.addChild(tc)
	tc.name = '项目选择'
	tc.left = -50.000
	tc.right = 50.000
	tc.bottom = -50.000
	tc.top = 50.000
	tc.visible = false
	tp = tc
		tc = G.Entity()
		tp.addChild(tc)
		tc.name = '项目按钮'
		tc.left = -200.000
		tc.right = -100.000
		tc.bottom = -50.000
		tc.top = 50.000
		tp = tc
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '项目'
			tc.pivotX = 0.000
			tc.pivotY = 1.000
			tc.right = 400.000
			tc.bottom = -120.000
			tc.top = 0.000
			tc.anchor = 0x64640000
			tp = tc
				tc = tp.getChildByName('text')
				if tc then
				tc.color = 0xffffff
				tc.text = '项目'
				tc.wrap = true
				tc.font = 0x60440000
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['text'] ='项目'
			com['customsize'] =true
			com['color_normal'] =16777215.000
			tp = tp.parent
			--end
		tp.c_layout_v = setmetatable({}, c_layout_v)
		com = tp.c_layout_v
		com['alignment_h'] =1.000
		com['alignment_v'] =1.000
		com['ColSpace'] =10.000
		com['startSpaceX'] =0.000
		com['startSpaceY'] =0.000
		com['changePivot'] =false
		com['changeAnchor'] =false
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '当前进度'
	tc.left = -101.000
	tc.right = 99.000
	tc.bottom = 10.000
	tc.top = 110.000
	tc.visible = false
	tc.text = '0 %'
	tc.font = 0x60500000
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '进度说明'
	tc.right = 0.000
	tc.bottom = -110.000
	tc.top = -10.000
	tc.anchor = 0x32326400
	tc.text = '正在检查更新'
	tc.font = 0x60300000
	tp = tc
	tp = tp.parent
	--end
tp.c_loader = setmetatable({}, c_loader)
