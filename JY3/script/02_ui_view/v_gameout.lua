--[[2026

]]
local G = require 'gf'
local c_button = require 'c_button'
local c_gameout = require 'c_gameout'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_gameout'
tc.left = -320.000
tc.right = 320.000
tc.bottom = -240.000
tc.top = 240.000
tc.mouseEnabled = true
tp = tc
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = 'c1'
	tc.left = -426.500
	tc.right = 426.500
	tc.bottom = -240.000
	tc.top = 240.000
	tc.img = 0x56050058
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '背景'
	tc.left = -320.000
	tc.right = 320.000
	tc.bottom = -240.000
	tc.top = 240.000
	tc.img = 0x56050052
	tp = tc
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '通关提示'
	tc.left = -6.000
	tc.right = -6.000
	tc.bottom = -148.000
	tc.top = -148.000
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '通关提示'
		tc.left = -266.500
		tc.right = 284.500
		tc.bottom = -91.500
		tc.top = 91.500
		tc.alpha = 130
		tc.img = 0x56160020
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '提示'
		tc.pivotX = 0.000
		tc.left = -245.000
		tc.right = 771.000
		tc.bottom = -141.000
		tc.top = 127.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '[0a]通关后还有[03]下一周目[0a]等着你，点击到标题读取[03]通关标识[0a]存档！'
		tc.wrap = true
		tc.font = 0x61320000
		tc.align = 1
		tc.style = 3
		tp = tc
		tp = tp.parent
		--end
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
tp.c_gameout = setmetatable({}, c_gameout)
