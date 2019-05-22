--[[2008

]]
local G = require 'gf'
local c_button = require 'c_button'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_city'
tc.left = -320.000
tc.right = 320.000
tc.bottom = -240.000
tc.top = 240.000
tp = tc
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = 'c1'
	tc.left = -320.000
	tc.right = 320.000
	tc.bottom = -240.000
	tc.top = 240.000
	tc.img = 0x56060001
	tp = tc
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '场景列表'
	tp = tc
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '1'
		tc.left = 89.000
		tc.right = 135.000
		tc.bottom = -176.000
		tc.top = -154.000
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x56061001
			tp = tc
			end
			tp = tp.parent
			--end
			tc = tp.getChildByName('text')
			if tc then
			tc.left = 1.000
			tc.right = 1.000
			tc.bottom = 25.000
			tc.top = 25.000
			tp = tc
			end
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '名称'
			tc.left = -40.000
			tc.right = 40.000
			tc.bottom = 10.000
			tc.top = 30.000
			tc.text = '渡口'
			tc.font = 0x61140000
			tc.align = 2
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
		com = tp.c_button
		com['btn_class'] =0.000
		com['customsize'] =true
		com['img_normal'] =1443237889.000
		com['img_hover'] =1443237889.000
		com['color_hover'] =1579129.000
		tp = tp.parent
		--end
	tp = tp.parent
	--end
