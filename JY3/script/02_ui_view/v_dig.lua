--[[201f

]]
local G = require 'gf'
local c_button = require 'c_button'
local c_dig = require 'c_dig'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_dig'
tc.left = -640.000
tc.right = 640.000
tc.bottom = -360.000
tc.top = 360.000
tp = tc
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = 'c1'
	tc.left = -426.500
	tc.right = 426.500
	tc.bottom = -240.000
	tc.top = 240.000
	tc.mouseEnabled = true
	tc.img = 0x56050058
	tp = tc
	tp = tp.parent
	--end
	tc = G.loadUI('v_button')
	tp.addChild(tc)
	tc.name = 'c2'
	tc.left = -320.000
	tc.right = 320.000
	tc.bottom = -240.000
	tc.top = 240.000
	tp = tc
		tc = tp.getChildByName('img')
		if tc then
		tc.img = 0x56050015
		tp = tc
		end
		tp = tp.parent
		--end
	com = tp.c_button
	com['img_normal'] =1443168277.000
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '开始'
	tc.left = -219.500
	tc.right = 219.500
	tc.bottom = -171.000
	tc.top = 171.000
	tc.mouseEnabled = true
	tc.img = 0x56100044
	tp = tc
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '显示'
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'c4'
		tc.left = -42.000
		tc.right = 318.000
		tc.bottom = -239.500
		tc.top = -148.500
		tc.img = 0x5616002b
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'c3'
		tc.left = -224.000
		tc.right = 222.000
		tc.bottom = 172.000
		tc.top = 214.000
		tc.img = 0x5610000c
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '头像'
		tc.left = -29.000
		tc.right = 19.000
		tc.bottom = -223.500
		tc.top = -166.500
		tc.img = 0x56080001
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '姓名'
		tc.left = -4.000
		tc.right = 136.000
		tc.bottom = -194.000
		tc.top = -154.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '半瓶神仙醋'
		tc.font = 0x61180000
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '时间'
	tc.pivotX = 0.000
	tc.left = -118.500
	tc.right = 171.500
	tc.bottom = 150.000
	tc.top = 160.000
	tc.img = 0x5610001c
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '力道'
	tc.pivotX = 0.000
	tc.left = -148.000
	tc.right = -6.000
	tc.bottom = 115.000
	tc.top = 127.000
	tc.img = 0x5610000d
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '气劲'
	tc.pivotX = 0.000
	tc.left = -148.000
	tc.right = -6.000
	tc.bottom = 83.000
	tc.top = 95.000
	tc.img = 0x5610000e
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '提示'
	tc.left = -398.000
	tc.right = 402.000
	tc.bottom = 154.000
	tc.top = 214.000
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
	tc.left = -103.000
	tc.right = 439.000
	tc.bottom = -294.000
	tc.top = -152.000
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.wrap = true
	tc.font = 0x611e0000
	tc.align = 1
	tc.style = 2
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '耐久'
	tc.left = 85.000
	tc.right = 245.000
	tc.bottom = 97.000
	tc.top = 137.000
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.text = '3500'
	tc.font = 0x61280000
	tc.style = 5
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
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '人物'
	tc.left = 9.500
	tc.right = 74.500
	tc.bottom = -102.000
	tc.top = -8.000
	tc.img = 0x560d1101
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '动画'
	tc.left = -264.500
	tc.right = 216.500
	tc.bottom = -175.000
	tc.top = 191.000
	tc.visible = false
	tc.img = 0x33010011
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '击打值'
	tc.left = -105.000
	tc.right = 95.000
	tc.bottom = 2.000
	tc.top = 42.000
	tc.visible = false
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.text = '0'
	tc.font = 0x61400000
	tc.style = 3
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '1'
	tc.left = -154.500
	tc.right = -7.500
	tc.bottom = -167.500
	tc.top = -108.500
	tc.visible = false
	tc.img = 0x5610000a
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '1'
		tc.left = -47.000
		tc.right = 33.000
		tc.bottom = -10.000
		tc.top = 10.000
		tc.visible = false
		tc.text = '时间到！'
		tc.font = 0x6d0f0000
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
tp.c_dig = setmetatable({}, c_dig)
