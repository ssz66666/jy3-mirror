--[[201d

]]
local G = require 'gf'
local c_fishing = require 'c_fishing'
local c_button = require 'c_button'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_fishing'
tc.left = -321.000
tc.right = 319.000
tc.bottom = -285.000
tc.top = 195.000
tp = tc
	tc = G.loadUI('v_button')
	tp.addChild(tc)
	tc.name = 'c1'
	tc.left = -422.500
	tc.right = 430.500
	tc.bottom = -195.000
	tc.top = 285.000
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
	tc.img = 0x5610000f
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '时间'
	tc.pivotX = 0.000
	tc.left = -120.000
	tc.right = 170.000
	tc.bottom = 152.000
	tc.top = 162.000
	tc.img = 0x5610001c
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '头像'
	tc.left = -206.000
	tc.right = -146.000
	tc.bottom = -159.500
	tc.top = -88.500
	tc.img = 0x56080001
	tp = tc
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '显示'
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '1'
		tc.left = -107.000
		tc.right = -67.000
		tc.bottom = -140.000
		tc.top = -100.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '0'
		tc.font = 0x61280000
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '2'
		tc.left = -48.000
		tc.right = -8.000
		tc.bottom = -140.000
		tc.top = -100.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '0'
		tc.font = 0x61280000
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '3'
		tc.left = 15.000
		tc.right = 55.000
		tc.bottom = -140.000
		tc.top = -100.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '0'
		tc.font = 0x61280000
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '4'
		tc.left = 70.000
		tc.right = 110.000
		tc.bottom = -140.000
		tc.top = -100.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '0'
		tc.font = 0x61280000
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '5'
		tc.left = -107.000
		tc.right = -67.000
		tc.bottom = -166.000
		tc.top = -126.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '0'
		tc.font = 0x61280000
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '6'
		tc.left = -48.000
		tc.right = -8.000
		tc.bottom = -166.000
		tc.top = -126.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '0'
		tc.font = 0x61280000
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '7'
		tc.left = 29.000
		tc.right = 69.000
		tc.bottom = -166.000
		tc.top = -126.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '0'
		tc.font = 0x61280000
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '8'
		tc.left = 105.000
		tc.right = 145.000
		tc.bottom = -166.000
		tc.top = -126.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '0'
		tc.font = 0x61280000
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '积分'
		tc.left = 143.000
		tc.right = 243.000
		tc.bottom = -141.000
		tc.top = -101.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '0'
		tc.font = 0x61280000
		tc.style = 11
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '蚯蚓'
		tc.left = 143.000
		tc.right = 243.000
		tc.bottom = -165.000
		tc.top = -125.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '0'
		tc.font = 0x61280000
		tc.style = 11
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'c4'
		tc.left = -224.000
		tc.right = 222.000
		tc.bottom = 172.000
		tc.top = 214.000
		tc.img = 0x5610000c
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '背景'
	tc.left = -84.000
	tc.right = 116.000
	tc.bottom = -69.000
	tc.top = 135.000
	tc.visible = false
	tc.img = 0x56100010
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '提示'
		tc.left = -70.000
		tc.right = 80.000
		tc.bottom = -82.000
		tc.top = -62.000
		tc.text = '哇！【宝箱】里有口宝剑'
		tc.font = 0x610c0000
		tc.style = 3
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_button')
	tp.addChild(tc)
	tc.name = '动画'
	tc.left = -117.500
	tc.right = 63.500
	tc.bottom = -67.000
	tc.top = -13.000
	tc.mouseEnabled = false
	tc.visible = false
	tp = tc
		tc = tp.getChildByName('img')
		if tc then
		tc.img = 0x33010006
		tp = tc
		end
		tp = tp.parent
		--end
	com = tp.c_button
	com['img_normal'] =855703558.000
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '提示'
	tc.left = -400.000
	tc.right = 400.000
	tc.bottom = 153.000
	tc.top = 213.000
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.font = 0x611e0000
	tc.align = 1
	tc.style = 2
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '物品'
	tc.left = -21.500
	tc.right = 45.500
	tc.bottom = -29.000
	tc.top = 55.000
	tc.visible = false
	tc.img = 0x5610001a
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '3'
	tc.left = -227.000
	tc.right = -15.000
	tc.bottom = -139.500
	tc.top = -32.500
	tc.visible = false
	tc.img = 0x56100009
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '1'
		tc.left = -59.000
		tc.right = 91.000
		tc.bottom = -11.000
		tc.top = 9.000
		tc.text = '  似乎大家伙上钩'
		tc.font = 0x610d0000
		tc.align = 1
		tc.style = 3
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '2'
	tc.left = -196.000
	tc.right = -46.000
	tc.bottom = -119.000
	tc.top = -53.000
	tc.visible = false
	tc.img = 0x5610001b
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '提示3'
		tc.left = -69.000
		tc.right = 81.000
		tc.bottom = -11.000
		tc.top = 9.000
		tc.text = '  钓鱼不能太心急'
		tc.font = 0x610f0000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '1'
	tc.left = -194.500
	tc.right = -47.500
	tc.bottom = -115.500
	tc.top = -56.500
	tc.visible = false
	tc.img = 0x5610000a
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '1'
		tc.left = -59.000
		tc.right = 91.000
		tc.bottom = -11.000
		tc.top = 9.000
		tc.font = 0x610f0000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '结果'
	tc.left = -100.000
	tc.bottom = -50.000
	tc.top = 50.000
	tc.visible = false
	tc.text = '0'
	tc.font = 0x61200041
	tp = tc
	tp = tp.parent
	--end
tp.c_fishing = setmetatable({}, c_fishing)
