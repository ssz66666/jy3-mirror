--[[2030

]]
local G = require 'gf'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_background'
tc.left = -160.000
tc.right = 160.000
tc.bottom = -120.000
tc.top = 120.000
tc.sample = 0
tp = tc
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '右下遮罩'
	tc.pivotX = 1.000
	tc.pivotY = 0.000
	tc.right = 0.000
	tc.top = 0.000
	tc.anchor = 0x32006432
	tc.sample = 0
	tc.mask = 10
	tc.img = 0x56161003
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '右下'
	tc.pivotX = 1.000
	tc.pivotY = 0.000
	tc.left = -640.000
	tc.right = 0.000
	tc.top = 640.000
	tc.anchor = 0x6464
	tc.sample = 0
	tc.autosize = 3
	tc.img = 0x56161001
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '左下遮罩'
	tc.pivotX = 0.000
	tc.pivotY = 0.000
	tc.right = 0.000
	tc.top = 0.000
	tc.anchor = 0x32003200
	tc.sample = 0
	tc.mask = 10
	tc.img = 0x56161003
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '左下'
	tc.pivotX = 0.000
	tc.pivotY = 0.000
	tc.right = 640.000
	tc.top = 640.000
	tc.anchor = 0x0
	tc.sample = 0
	tc.autosize = 3
	tc.img = 0x56161001
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '左上遮罩'
	tc.pivotX = 0.000
	tc.pivotY = 1.000
	tc.right = 0.000
	tc.top = 0.000
	tc.anchor = 0x64323200
	tc.sample = 0
	tc.mask = 10
	tc.img = 0x56161003
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '左上'
	tc.pivotX = 0.000
	tc.pivotY = 1.000
	tc.right = 640.000
	tc.bottom = -640.000
	tc.top = 0.000
	tc.anchor = 0x64640000
	tc.sample = 0
	tc.autosize = 3
	tc.img = 0x56161001
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '右上遮罩'
	tc.pivotX = 1.000
	tc.pivotY = 1.000
	tc.right = 0.000
	tc.top = 0.000
	tc.anchor = 0x64326432
	tc.sample = 0
	tc.mask = 10
	tc.img = 0x56161003
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '右上'
	tc.pivotX = 1.000
	tc.pivotY = 1.000
	tc.left = -640.000
	tc.right = 0.000
	tc.bottom = -640.000
	tc.top = 0.000
	tc.anchor = 0x64646464
	tc.sample = 0
	tc.autosize = 3
	tc.img = 0x56161001
	tp = tc
	tp = tp.parent
	--end
