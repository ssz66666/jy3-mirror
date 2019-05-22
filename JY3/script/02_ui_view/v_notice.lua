--[[202c

]]
local G = require 'gf'
local c_webview = require 'c_webview'
local c_button = require 'c_button'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_notice'
tc.left = -426.500
tc.right = 426.500
tc.bottom = -239.500
tc.top = 239.500
tc.sample = -1
tp = tc
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = 'BG'
	tc.left = -213.250
	tc.right = 213.250
	tc.bottom = -119.750
	tc.top = 119.750
	tc.sample = 0
	tc.img = 0x5616003d
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = 'c1'
	tc.left = -426.500
	tc.right = 426.500
	tc.bottom = -240.000
	tc.top = 240.000
	tc.img = 0x56050054
	tp = tc
	tp = tp.parent
	--end
	tc = G.loadUI('v_button')
	tp.addChild(tc)
	tc.name = 'close'
	tc.left = 389.500
	tc.right = 422.500
	tc.bottom = 205.500
	tc.top = 236.500
	tp = tc
		tc = tp.getChildByName('img')
		if tc then
		tc.img = 0x56160014
		tp = tc
		end
		tp = tp.parent
		--end
	com = tp.c_button
	com['img_normal'] =1444282388.000
	tp = tp.parent
	--end
tp.c_webview = setmetatable({}, c_webview)
com = tp.c_webview
com['url'] ='https://action.17m3.com/mjh/j3/'
