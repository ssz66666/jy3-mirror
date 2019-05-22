--[[201c

]]
local G = require 'gf'
local c_button = require 'c_button'
local c_logging = require 'c_logging'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_logging'
tc.left = -320.000
tc.right = 320.000
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
	tc.name = '开始'
	tc.left = -220.500
	tc.right = 220.500
	tc.bottom = -171.500
	tc.top = 171.500
	tc.mouseEnabled = true
	tc.img = 0x5610000b
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = 'c3'
	tc.left = -223.000
	tc.right = 223.000
	tc.bottom = 173.000
	tc.top = 215.000
	tc.img = 0x5610000c
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '0000'
	tc.left = 52.000
	tc.right = 172.000
	tc.bottom = 86.000
	tc.top = 126.000
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.text = '体力:'
	tc.font = 0x612c0000
	tc.style = 5
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '力道'
	tc.pivotX = 0.000
	tc.left = -150.500
	tc.right = -13.500
	tc.bottom = 137.000
	tc.top = 149.000
	tc.img = 0x5610000d
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '气劲'
	tc.pivotX = 0.000
	tc.left = -150.500
	tc.right = -13.500
	tc.bottom = 105.000
	tc.top = 117.000
	tc.img = 0x5610000e
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '姓名'
	tc.left = -129.000
	tc.right = 11.000
	tc.bottom = -107.000
	tc.top = -77.000
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.text = '半瓶神仙醋'
	tc.font = 0x61180000
	tc.style = 2
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '头像'
	tc.left = -167.000
	tc.right = -107.000
	tc.bottom = -154.500
	tc.top = -83.500
	tc.img = 0x56080001
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '耐久'
	tc.left = 99.000
	tc.right = 239.000
	tc.bottom = 121.000
	tc.top = 161.000
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.text = '999'
	tc.font = 0x61280000
	tc.style = 5
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '体力'
	tc.left = 108.000
	tc.right = 208.000
	tc.bottom = 86.000
	tc.top = 126.000
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.text = '100'
	tc.font = 0x612c0000
	tc.style = 5
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '伐木值'
	tc.left = -102.000
	tc.right = 98.000
	tc.bottom = 51.000
	tc.top = 91.000
	tc.visible = false
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.text = '123'
	tc.font = 0x61400000
	tc.style = 3
	tp = tc
	tp = tp.parent
	--end
	tc = G.loadUI('v_button')
	tp.addChild(tc)
	tc.name = '砍刀'
	tc.left = -175.000
	tc.right = 177.000
	tc.bottom = -67.000
	tc.top = 111.000
	tc.visible = false
	tp = tc
		tc = tp.getChildByName('img')
		if tc then
		tc.img = 0x33010005
		tp = tc
		end
		tp = tp.parent
		--end
	com = tp.c_button
	com['img_normal'] =855703557.000
	com['img_hover'] =0.000
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '提示'
	tc.pivotX = 0.000
	tc.left = -205.000
	tc.right = 595.000
	tc.bottom = 142.000
	tc.top = 222.000
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.font = 0x611e0000
	tc.align = 1
	tc.style = 2
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '口白'
	tc.pivotX = 0.000
	tc.left = -99.000
	tc.right = 425.000
	tc.bottom = -210.000
	tc.top = -68.000
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.font = 0x611e0000
	tc.align = 1
	tc.style = 2
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '开始时间'
	tc.left = -100.000
	tc.bottom = -50.000
	tc.top = 50.000
	tc.visible = false
	tc.text = '0'
	tc.font = 0x61200041
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '力'
	tc.left = -100.000
	tc.bottom = -50.000
	tc.top = 50.000
	tc.visible = false
	tc.text = '123'
	tc.font = 0x61200041
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '气'
	tc.left = -100.000
	tc.bottom = -50.000
	tc.top = 50.000
	tc.visible = false
	tc.text = '123'
	tc.font = 0x61200041
	tp = tc
	tp = tp.parent
	--end
tp.c_logging = setmetatable({}, c_logging)
