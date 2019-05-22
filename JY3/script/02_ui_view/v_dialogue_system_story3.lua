--[[2010

]]
local G = require 'gf'
local c_dialogue_system_story3 = require 'c_dialogue_system_story3'
local c_button = require 'c_button'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_dialogue_system_story3'
tc.left = -320.000
tc.right = 320.000
tc.bottom = -240.000
tc.top = 240.000
tp = tc
	tc = G.loadUI('v_button')
	tp.addChild(tc)
	tc.name = '背景'
	tc.left = -426.500
	tc.right = 426.500
	tc.bottom = -240.000
	tc.top = 240.000
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '编号'
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
	tc.name = '位置'
	tc.left = -100.000
	tc.bottom = -50.000
	tc.top = 50.000
	tc.visible = false
	tc.text = '1'
	tc.font = 0x61200041
	tp = tc
	tp = tp.parent
	--end
	tc = G.loadUI('v_button')
	tp.addChild(tc)
	tc.name = '移动'
	tc.left = -50.000
	tc.right = 50.000
	tc.bottom = -50.000
	tc.top = 50.000
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '对话框'
		tc.left = -271.000
		tc.right = 271.000
		tc.bottom = -105.500
		tc.top = 155.500
		tc.mouseEnabled = true
		tc.img = 0x56160041
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '文字'
			tc.left = -502.000
			tc.right = 498.000
			tc.bottom = 68.000
			tc.top = 128.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.sample = 0
			tc.text = '   不知公子有什么事情发过火和会很反感和刚好分工会更好'
			tc.wrap = true
			tc.font = 0x61280000
			tc.align = 1
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Entity()
		tp.addChild(tc)
		tc.name = '角色名称'
		tc.left = -50.000
		tc.right = 50.000
		tc.bottom = -50.000
		tc.top = 50.000
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '背景'
			tc.left = -314.000
			tc.right = 326.000
			tc.bottom = -170.000
			tc.top = 310.000
			tc.mouseEnabled = true
			tc.visible = false
			tc.img = 0x56010004
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '姓名'
			tc.left = -193.000
			tc.right = -123.000
			tc.bottom = -158.500
			tc.top = -143.500
			tc.sample = 0
			tc.text = '半瓶神仙醋'
			tc.font = 0x610c0000
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '角色'
		tc.pivotY = 0.000
		tc.left = -475.000
		tc.right = -415.000
		tc.bottom = 100.000
		tc.top = 171.000
		tc.anchor = 0x6464
		tc.mouseEnabled = true
		tc.visible = false
		tc.img = 0x56080027
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '闪点'
		tc.left = 164.000
		tc.right = 178.000
		tc.bottom = -173.000
		tc.top = -157.000
		tc.visible = false
		tc.img = 0x33010002
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
tp.c_dialogue_system_story3 = setmetatable({}, c_dialogue_system_story3)
