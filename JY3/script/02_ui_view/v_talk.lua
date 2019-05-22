--[[2017

]]
local G = require 'gf'
local c_talk = require 'c_talk'
local c_button = require 'c_button'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_talk'
tc.left = -320.000
tc.right = 320.000
tc.bottom = -240.000
tc.top = 240.000
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
	tc.left = -68.000
	tc.right = 292.000
	tc.bottom = 94.000
	tc.top = 186.000
	tc.img = 0x56160045
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '姓名'
		tc.left = 71.000
		tc.right = 203.000
		tc.bottom = 8.000
		tc.top = 44.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '张三'
		tc.font = 0x61180000
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '文字'
		tc.pivotX = 0.000
		tc.left = -171.000
		tc.right = 369.000
		tc.bottom = -112.000
		tc.top = 88.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '你们在'
		tc.wrap = true
		tc.font = 0x61200000
		tc.align = 1
		tc.wordSpace = -3
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'c1'
		tc.left = 157.000
		tc.right = 171.000
		tc.bottom = -37.000
		tc.top = -21.000
		tc.img = 0x33010002
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
tp.c_talk = setmetatable({}, c_talk)
