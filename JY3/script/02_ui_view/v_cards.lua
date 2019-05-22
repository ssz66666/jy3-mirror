--[[2031

]]
local G = require 'gf'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_cards'
tc.left = -735.000
tc.right = 545.000
tc.bottom = -249.000
tc.top = 471.000
tp = tc
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = 'c1'
	tc.left = -45.000
	tc.right = 45.000
	tc.bottom = -53.250
	tc.top = 53.250
	tc.img = 0x56080001
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = 'c2'
	tc.pivotX = 0.000
	tc.pivotY = 1.000
	tc.left = -43.500
	tc.right = 58.500
	tc.bottom = -45.000
	tc.top = 51.000
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.autosize = 3
	tc.text = '  10[br]10  10[br]  10'
	tc.font = 0x61200000
	tc.style = 3
	tp = tc
	tp = tp.parent
	--end
