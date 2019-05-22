--[[200b

]]
local G = require 'gf'
local c_button = require 'c_button'
local c_checkhead = require 'c_checkhead'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_checkhead'
tc.left = -32.500
tc.right = 32.500
tc.bottom = -37.500
tc.top = 37.500
tp = tc
	tc = G.loadUI('v_button')
	tp.addChild(tc)
	tc.name = '按钮'
	tc.left = -32.000
	tc.right = 32.000
	tc.bottom = -37.500
	tc.top = 37.500
	tp = tc
		tc = tp.getChildByName('img')
		if tc then
		tc.img = 0x56080001
		tp = tc
		end
		tp = tp.parent
		--end
	com = tp.c_button
	com['img_normal'] =1443364865.000
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '名称'
	tc.left = -25.000
	tc.right = 25.000
	tc.bottom = -10.000
	tc.top = 10.000
	tc.visible = false
	tc.font = 0x61200041
	tp = tc
	tp = tp.parent
	--end
tp.c_checkhead = setmetatable({}, c_checkhead)
