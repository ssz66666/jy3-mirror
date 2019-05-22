--[[2004

]]
local G = require 'gf'
local c_scrollview = require 'c_scrollview'
local c_cheat_system = require 'c_cheat_system'
local c_button = require 'c_button'
local c_mintextquadsize = require 'c_mintextquadsize'
local c_layout_v = require 'c_layout_v'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_cheat_system'
tc.left = -640.000
tc.right = 640.000
tc.bottom = -360.000
tc.top = 360.000
tc.mouseEnabled = true
tp = tc
	tc = G.Entity()
	tp.addChild(tc)
	tc.name = '作弊界面'
	tc.left = -640.000
	tc.right = 640.000
	tc.bottom = -360.000
	tc.top = 360.000
	tc.visible = false
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '背景'
		tc.left = -405.000
		tc.right = 405.000
		tc.bottom = -45.000
		tc.top = 45.000
		tc.anchor = 0x64006400
		tc.alpha = 133
		tc.img = 0x56020003
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '说明'
		tc.pivotY = 1.000
		tc.left = -1.000
		tc.right = -527.500
		tc.bottom = -630.000
		tc.top = 0.000
		tc.anchor = 0x64646400
		tc.color = 0x171719
		tc.text = '输入函数名执行对应函数，使用“空格”分隔输入参数'
		tc.wrap = true
		tc.align = 1
		tc.lineSpace = 10
		tc.alignOffset = 16
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '内容'
		tc.pivotX = 0.000
		tc.pivotY = 0.000
		tc.right = 1280.000
		tc.top = 50.000
		tc.anchor = 0x0
		tc.mouseEnabled = true
		tc.color = 0x0
		tc.img = 0x56160003
		tc.wrap = true
		tc.readOnly = false
		tc.font = 0x60320000
		tc.align = 4
		tc.alignOffset = 14
		tp = tc
		tp.c_mintextquadsize = setmetatable({}, c_mintextquadsize)
		com = tp.c_mintextquadsize
		com['minWidth'] =0.000
		com['autowidth'] =false
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '输入值'
		tc.left = -10.056
		tc.right = 40.944
		tc.bottom = 44.889
		tc.top = 76.889
		tc.mouseEnabled = true
		tc.visible = false
		tc.text = '607'
		tc.readOnly = false
		tc.font = 0x60200041
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.loadUI('v_scrollview')
		tp.addChild(tc)
		tc.name = '作弊条目'
		tc.left = -627.000
		tc.right = 119.000
		tc.bottom = -152.500
		tc.top = 280.500
		tp = tc
			tc = tp.getChildByName('content')
			if tc then
			tp = tc
			tp.c_layout_v = setmetatable({}, c_layout_v)
			com = tp.c_layout_v
			com['alignment_h'] =0.000
			com['alignment_v'] =0.000
			com['ColSpace'] =10.000
			com['startSpaceX'] =0.000
			com['startSpaceY'] =0.000
			com['changePivot'] =false
			com['changeAnchor'] =false
			end
			tp = tp.parent
			--end
		com = tp.c_scrollview
		com['autoMove'] =false
		com['hideSlider'] =false
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = 'cheatlist'
		tc.pivotX = 1.000
		tc.pivotY = 1.000
		tc.left = -473.047
		tc.right = -13.333
		tc.bottom = -656.667
		tc.top = -6.667
		tc.anchor = 0x64646464
		tp = tc
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = 'cheatbutton'
			tc.pivotX = 0.000
			tc.pivotY = 1.000
			tc.left = 15.000
			tc.right = 465.000
			tc.bottom = -48.667
			tc.top = -1.667
			tc.anchor = 0x64640000
			tc.visible = false
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x56160010
				tp = tc
				end
				tp = tp.parent
				--end
				tc = tp.getChildByName('text')
				if tc then
				tc.pivotX = 1.000
				tc.left = -436.333
				tc.right = 6.000
				tc.bottom = -23.500
				tc.top = 23.500
				tc.anchor = 0x32326464
				tc.font = 0x60140000
				tc.align = 4
				tp = tc
				end
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = 'text_count'
				tc.pivotX = 0.000
				tc.left = -39.000
				tc.right = -1.857
				tc.bottom = -23.500
				tc.top = 23.500
				tc.anchor = 0x32320000
				tc.color = 0x0
				tc.align = 6
				tp = tc
				tp = tp.parent
				--end
			com = tp.c_button
			com['customsize'] =true
			com['img_normal'] =1444282384.000
			com['img_hover'] =1444282370.000
			com['img_press'] =1444282384.000
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '提示信息'
		tc.pivotX = 0.000
		tc.pivotY = 1.000
		tc.left = -622.500
		tc.right = -114.500
		tc.bottom = 301.000
		tc.top = 326.000
		tc.autosize = 3
		tc.ignoreLayout = true
		tc.text = '[Ctrl + ↑ / ↓] 指令翻页  [Ctrl + ← / → ] 全选'
		tc.wrap = true
		tc.style = 10
		tp = tc
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '按钮'
		tc.pivotX = 0.000
		tc.pivotY = 1.000
		tc.right = 200.000
		tc.bottom = -134.000
		tc.top = -84.000
		tc.anchor = 0x64640000
		tc.alpha = 250
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x56220008
			tp = tc
			end
			tp = tp.parent
			--end
			tc = tp.getChildByName('text')
			if tc then
			tc.text = '按钮'
			tp = tc
			end
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '背景'
			tc.left = 120.000
			tc.right = 520.000
			tc.bottom = -25.000
			tc.top = 25.000
			tc.color = 0x797979
			tc.img = 0x56000001
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '参数'
			tc.left = 120.000
			tc.right = 520.000
			tc.bottom = -25.000
			tc.top = 25.000
			tc.mouseEnabled = true
			tc.text = '参数'
			tc.readOnly = false
			tc.font = 0x61200041
			tc.align = 4
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
		com = tp.c_button
		com['customsize'] =true
		com['img_normal'] =1445068808.000
		com['img_hover'] =1445068809.000
		com['img_press'] =1445068810.000
		tp = tp.parent
		--end
	tp = tp.parent
	--end
tp.c_cheat_system = setmetatable({}, c_cheat_system)
