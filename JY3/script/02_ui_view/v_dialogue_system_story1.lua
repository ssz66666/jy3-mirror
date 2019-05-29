--[[2002

]]
local G = require 'gf'
local c_button = require 'c_button'
local c_dialogue_system_story1 = require 'c_dialogue_system_story1'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_dialogue_system_story1'
tc.left = -320.000
tc.right = 320.000
tc.bottom = -240.000
tc.top = 240.000
tp = tc
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = 'c1'
	tc.left = -320.000
	tc.right = 320.000
	tc.bottom = -240.000
	tc.top = 240.000
	tc.visible = false
	tc.img = 0x56160035
	tp = tc
	tp = tp.parent
	--end
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
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '移动'
	tc.left = -320.000
	tc.right = 320.000
	tc.bottom = -200.000
	tc.top = 280.000
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '对话框'
		tc.left = -204.000
		tc.right = 228.000
		tc.bottom = -13.000
		tc.top = 127.000
		tc.mouseEnabled = true
		tc.alpha = 200
		tc.img = 0x56160025
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '角色'
		tc.pivotY = 0.000
		tc.left = -179.000
		tc.right = -107.000
		tc.bottom = 266.000
		tc.top = 351.000
		tc.anchor = 0x6464
		tc.mouseEnabled = true
		tc.img = 0x56080027
		tp = tc
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
			tc.left = 93.000
			tc.right = 261.000
			tc.bottom = -7.000
			tc.top = 29.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.sample = 0
			tc.text = '半瓶神仙醋'
			tc.font = 0x611c0000
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '闪点'
		tc.left = -191.000
		tc.right = -177.000
		tc.top = 16.000
		tc.img = 0x33010002
		tp = tc
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '好感'
		tc.left = 194.000
		tc.right = 194.000
		tc.bottom = 200.000
		tc.top = 200.000
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '图标'
			tc.pivotY = 0.000
			tc.left = -118.500
			tc.right = -91.500
			tc.bottom = -208.000
			tc.top = -182.000
			tc.anchor = 0x6464
			tc.mouseEnabled = true
			tc.img = 0x5616008a
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '好感度'
			tc.left = -111.500
			tc.right = -36.500
			tc.bottom = -213.000
			tc.top = -177.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.sample = 0
			tc.text = '100'
			tc.font = 0x61240000
			tc.align = 1
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '文字'
		tc.left = -356.611
		tc.right = 294.389
		tc.bottom = -80.556
		tc.top = 183.444
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '不知公子有什么事情发过火和会很反感和刚好分工会更好'
		tc.wrap = true
		tc.font = 0x61240000
		tc.align = 1
		tc.wordSpace = -3
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
tp.c_dialogue_system_story1 = setmetatable({}, c_dialogue_system_story1)
