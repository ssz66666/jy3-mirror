--[[201a

]]
local G = require 'gf'
local c_button = require 'c_button'
local c_gameover = require 'c_gameover'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_gameover'
tc.left = -640.000
tc.right = 640.000
tc.bottom = -360.000
tc.top = 360.000
tp = tc
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = 'c2'
	tc.left = -426.500
	tc.right = 426.500
	tc.bottom = -240.000
	tc.top = 240.000
	tc.mouseEnabled = true
	tc.visible = false
	tc.img = 0x56050058
	tp = tc
	tp = tp.parent
	--end
	tc = G.loadUI('v_button')
	tp.addChild(tc)
	tc.name = '按钮'
	tc.left = -426.500
	tc.right = 426.500
	tc.bottom = -240.000
	tc.top = 240.000
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = 'c1'
	tc.left = -89.500
	tc.right = 89.500
	tc.bottom = -203.500
	tc.top = 203.500
	tc.img = 0x560b0017
	tp = tc
	tp = tp.parent
	--end
tp.c_gameover = setmetatable({}, c_gameover)
