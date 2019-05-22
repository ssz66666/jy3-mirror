--[[202a

]]
local G = require 'gf'
local c_input = require 'c_input'
local c_button = require 'c_button'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_input'
tc.left = -426.500
tc.right = 426.500
tc.bottom = -240.000
tc.top = 240.000
tp = tc
	tc = G.loadUI('v_button')
	tp.addChild(tc)
	tc.name = 'c1'
	tc.left = -426.500
	tc.right = 426.500
	tc.bottom = -240.000
	tc.top = 240.000
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = 'secret'
	tc.left = -192.500
	tc.right = 212.500
	tc.bottom = -71.500
	tc.top = 161.500
	tc.mouseEnabled = true
	tc.img = 0x56160020
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '提示框'
		tc.left = -85.000
		tc.right = 91.000
		tc.bottom = 43.000
		tc.top = 87.000
		tc.img = 0x56160065
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '提示'
			tc.left = -199.000
			tc.right = 201.000
			tc.bottom = -43.000
			tc.top = 45.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '请输入4位数字'
			tc.font = 0x61240000
			tc.style = 5
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'c1'
		tc.left = -126.000
		tc.right = 124.000
		tc.bottom = -21.500
		tc.top = 33.500
		tc.img = 0x5603001e
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '文本'
		tc.left = -253.000
		tc.right = 247.000
		tc.bottom = -50.000
		tc.top = 60.000
		tc.mouseEnabled = true
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.readOnly = false
		tc.font = 0x61300000
		tc.style = 4
		tp = tc
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '确定'
		tc.left = -39.000
		tc.right = 27.000
		tc.bottom = -75.000
		tc.top = -53.000
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
	tp = tp.parent
	--end
tp.c_input = setmetatable({}, c_input)
