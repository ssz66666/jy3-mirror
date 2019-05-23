--[[2025

]]
local G = require 'gf'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_cheat'
tc.left = -640.000
tc.right = 640.000
tc.bottom = -360.000
tc.top = 360.000
tc.mouseEnabled = true
tp = tc
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = 'c1'
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
	tc.left = -640.000
	tc.right = 640.000
	tc.bottom = -631.714
	tc.top = 0.000
	tc.anchor = 0x64643232
	tc.color = 0x171719
	tc.text = '123'
	tc.font = 0x60160000
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
	tc.top = 57.143
	tc.anchor = 0x0
	tc.mouseEnabled = true
	tc.color = 0x0
	tc.text = '123'
	tc.img = 0x56160003
	tc.readOnly = false
	tc.font = 0x60320000
	tc.align = 4
	tc.alignOffset = 14
	tp = tc
	tp = tp.parent
	--end
