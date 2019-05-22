--[[2014

]]
local G = require 'gf'
local c_prompt1 = require 'c_prompt1'
local c_button = require 'c_button'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_prompt1'
tc.left = -640.000
tc.right = 640.000
tc.bottom = -360.000
tc.top = 360.000
tp = tc
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '提示框'
	tc.left = -97.000
	tc.right = 97.000
	tc.bottom = -77.000
	tc.top = 77.000
	tc.visible = false
	tc.img = 0x560a003b
	tp = tc
	tp = tp.parent
	--end
	tc = G.loadUI('v_button')
	tp.addChild(tc)
	tc.name = '按钮'
	tc.left = -33.000
	tc.right = 33.000
	tc.bottom = -37.000
	tc.top = -15.000
	tc.visible = false
	tp = tc
		tc = tp.getChildByName('img')
		if tc then
		tc.img = 0x5616002c
		tp = tc
		end
		tp = tp.parent
		--end
	com = tp.c_button
	com['img_normal'] =1444282412.000
	com['img_hover'] =1444282414.000
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '提示'
	tc.left = -133.000
	tc.right = 227.000
	tc.bottom = 155.000
	tc.top = 227.000
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.autosize = 2
	tc.text = '修为点真的不够，请提升再来'
	tc.wrap = true
	tc.font = 0x60240000
	tc.align = 1
	tp = tc
	tp = tp.parent
	--end
tp.c_prompt1 = setmetatable({}, c_prompt1)
