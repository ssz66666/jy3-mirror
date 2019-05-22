--[[200c

]]
local G = require 'gf'
local c_story = require 'c_story'
local c_button = require 'c_button'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_story'
tc.left = -640.000
tc.right = 640.000
tc.bottom = -360.000
tc.top = 360.000
tp = tc
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
	tc.name = '图片'
	tc.left = -275.500
	tc.right = 275.500
	tc.bottom = -91.500
	tc.top = 91.500
	tc.img = 0x56160020
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '闪点'
	tc.left = 240.000
	tc.right = 254.000
	tc.bottom = -75.000
	tc.top = -59.000
	tc.img = 0x33010002
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '文本'
	tc.left = -430.000
	tc.right = 430.000
	tc.bottom = -123.000
	tc.top = 117.000
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.text = '   话说天下大势分久必合，合久必分，请听我细细说来'
	tc.wrap = true
	tc.font = 0x61300000
	tc.align = 1
	tc.style = 2
	tp = tc
	tp = tp.parent
	--end
tp.c_story = setmetatable({}, c_story)
