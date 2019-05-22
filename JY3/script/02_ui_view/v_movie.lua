--[[2019

]]
local G = require 'gf'
local c_button = require 'c_button'
local c_movie = require 'c_movie'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_movie'
tc.left = -640.000
tc.right = 640.000
tc.bottom = -360.000
tc.top = 360.000
tp = tc
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = 'movie0'
	tc.left = -195.000
	tc.right = 211.000
	tc.bottom = 120.000
	tc.top = 180.000
	tc.visible = false
	tc.img = 0x33010003
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = 'time'
	tc.left = -100.000
	tc.bottom = -50.000
	tc.top = 50.000
	tc.visible = false
	tc.text = '1'
	tc.font = 0x61200041
	tp = tc
	tp = tp.parent
	--end
	tc = G.loadUI('v_button')
	tp.addChild(tc)
	tc.name = 'movie'
	tc.left = -66.000
	tc.right = 10.000
	tc.bottom = -66.000
	tc.top = 10.000
	tp = tc
		tc = tp.getChildByName('img')
		if tc then
		tc.img = 0x33010001
		tp = tc
		end
		tp = tp.parent
		--end
	com = tp.c_button
	com['img_normal'] =855703553.000
	tp = tp.parent
	--end
tp.c_movie = setmetatable({}, c_movie)
