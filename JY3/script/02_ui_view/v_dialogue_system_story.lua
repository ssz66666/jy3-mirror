--[[2002

]]
local G = require 'gf'
local c_button = require 'c_button'
local c_dialogue_system_story = require 'c_dialogue_system_story'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_dialogue_system_story'
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
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '移动'
	tc.left = -320.000
	tc.right = 320.000
	tc.bottom = -240.000
	tc.top = 240.000
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '对话框'
		tc.left = -214.000
		tc.right = 218.000
		tc.bottom = -220.000
		tc.top = -80.000
		tc.mouseEnabled = true
		tc.alpha = 120
		tc.img = 0x56160047
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '角色'
		tc.pivotY = 0.000
		tc.left = -517.000
		tc.right = -445.000
		tc.bottom = 60.000
		tc.top = 145.200
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
		tc.bottom = -60.000
		tc.top = 40.000
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
			tc.left = -246.000
			tc.right = -78.000
			tc.bottom = -205.000
			tc.top = -169.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.sample = 0
			tc.text = '半瓶神仙醋'
			tc.font = 0x61180000
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '闪点'
		tc.left = 192.000
		tc.right = 206.000
		tc.bottom = -210.000
		tc.top = -194.000
		tc.img = 0x33010002
		tp = tc
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '好感'
		tc.left = -5.000
		tc.right = -5.000
		tc.bottom = -10.000
		tc.top = -10.000
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
			tc.img = 0x561601af
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
		tc.left = -282.500
		tc.right = 368.500
		tc.bottom = -289.000
		tc.top = -25.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.sample = 0
		tc.text = '   不知公子有什么事情发过火和会很反感和刚好分工会更好'
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
tp.c_dialogue_system_story = setmetatable({}, c_dialogue_system_story)
