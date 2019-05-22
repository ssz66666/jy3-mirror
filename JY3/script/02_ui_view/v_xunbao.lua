--[[2025

]]
local G = require 'gf'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_xunbao'
tc.left = -320.000
tc.right = 320.000
tc.bottom = -240.000
tc.top = 240.000
tp = tc
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '背景'
	tc.left = -212.000
	tc.right = 218.000
	tc.bottom = -137.500
	tc.top = 155.500
	tc.img = 0x560b1001
	tp = tc
	tp = tp.parent
	--end
