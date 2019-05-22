--[[2006

]]
local G = require 'gf'
local c_button = require 'c_button'
local c_citymap_system_city = require 'c_citymap_system_city'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_citymap_system_city'
tc.left = -50.000
tc.right = 50.000
tc.bottom = -50.000
tc.top = 50.000
tp = tc
	tc = G.loadUI('v_button')
	tp.addChild(tc)
	tc.name = '按钮'
	tc.left = -23.000
	tc.right = 23.000
	tc.bottom = -11.000
	tc.top = 11.000
	tp = tc
		tc = tp.getChildByName('img')
		if tc then
		tc.img = 0x56061001
		tp = tc
		end
		tp = tp.parent
		--end
	com = tp.c_button
	com['text'] =''
	com['img_normal'] =1443237889.000
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '锁'
	tc.left = -7.500
	tc.right = 7.500
	tc.bottom = -9.500
	tc.top = 9.500
	tc.img = 0x56060004
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '方框'
	tc.left = -30.250
	tc.right = 30.250
	tc.bottom = -35.750
	tc.top = 35.750
	tc.visible = false
	tc.img = 0x560b0016
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '名称'
	tc.left = -80.000
	tc.right = 80.000
	tc.bottom = -20.000
	tc.top = 20.000
	tc.visible = false
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.text = '名称'
	tc.font = 0x61280000
	tc.style = 2
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '闪名'
	tc.left = -81.000
	tc.right = 79.000
	tc.bottom = -21.000
	tc.top = 19.000
	tc.visible = false
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.text = '名称'
	tc.font = 0x611e0000
	tc.style = 4
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '闪名框'
	tc.left = -139.000
	tc.right = 141.000
	tc.bottom = -40.000
	tc.top = 40.000
	tc.visible = false
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.img = 0x560a0014
	tp = tc
	tp = tp.parent
	--end
tp.c_citymap_system_city = setmetatable({}, c_citymap_system_city)
