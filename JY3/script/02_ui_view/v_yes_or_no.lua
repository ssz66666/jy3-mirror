--[[2036

]]
local G = require 'gf'
local c_yes_or_no = require 'c_yes_or_no'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_yes_or_no'
tc.left = -640.000
tc.right = 640.000
tc.bottom = -360.000
tc.top = 360.000
tp = tc
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '前景'
	tc.left = -427.000
	tc.right = 427.000
	tc.bottom = -240.000
	tc.top = 240.000
	tc.mouseEnabled = true
	tp = tc
	tp = tp.parent
	--end
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
	tc.left = -262.000
	tc.right = 238.000
	tc.bottom = 102.000
	tc.top = 152.000
	tc.visible = false
	tc.img = 0x56160065
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '文本'
		tc.left = -204.000
		tc.right = 204.000
		tc.bottom = -25.000
		tc.top = 25.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 1
		tc.text = '真的需要自宫吗？'
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
tp.c_yes_or_no = setmetatable({}, c_yes_or_no)
