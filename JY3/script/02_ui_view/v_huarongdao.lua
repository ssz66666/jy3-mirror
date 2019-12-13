--[[203b

]]
local G = require 'gf'
local c_huarongdao = require 'c_huarongdao'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_huarongdao'
tc.left = -640.000
tc.right = 640.000
tc.bottom = -360.000
tc.top = 360.000
tp = tc
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '前景'
	tc.left = -427.000
	tc.right = 427.000
	tc.bottom = -240.000
	tc.top = 240.000
	tc.mouseEnabled = true
	tc.img = 0x56050058
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '背景'
	tc.left = -320.000
	tc.right = 320.000
	tc.bottom = -240.000
	tc.top = 240.000
	tc.img = 0x56059009
	tp = tc
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '底层按键'
	tc.left = 25.000
	tc.right = 25.000
	tc.bottom = 15.000
	tc.top = 15.000
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '1'
		tc.left = -152.000
		tc.right = -88.000
		tc.bottom = 33.000
		tc.top = 79.000
		tc.mouseEnabled = true
		tc.alpha = 0
		tc.img = 0x56161003
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '2'
		tc.left = -90.000
		tc.right = -26.000
		tc.bottom = 36.000
		tc.top = 82.000
		tc.mouseEnabled = true
		tc.alpha = 0
		tc.img = 0x56000001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '3'
		tc.left = -23.000
		tc.right = 41.000
		tc.bottom = 32.000
		tc.top = 78.000
		tc.mouseEnabled = true
		tc.alpha = 0
		tc.img = 0x56000001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '4'
		tc.left = 42.000
		tc.right = 106.000
		tc.bottom = 32.000
		tc.top = 78.000
		tc.mouseEnabled = true
		tc.alpha = 0
		tc.img = 0x56000001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '5'
		tc.left = -151.000
		tc.right = -87.000
		tc.bottom = -17.000
		tc.top = 29.000
		tc.mouseEnabled = true
		tc.alpha = 0
		tc.img = 0x56000001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '6'
		tc.left = -86.000
		tc.right = -22.000
		tc.bottom = -16.000
		tc.top = 30.000
		tc.mouseEnabled = true
		tc.alpha = 0
		tc.img = 0x56000001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '7'
		tc.left = -23.000
		tc.right = 41.000
		tc.bottom = -16.000
		tc.top = 30.000
		tc.mouseEnabled = true
		tc.alpha = 0
		tc.img = 0x56000001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '8'
		tc.left = 38.000
		tc.right = 102.000
		tc.bottom = -17.000
		tc.top = 29.000
		tc.mouseEnabled = true
		tc.alpha = 0
		tc.img = 0x56000001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '9'
		tc.left = -155.000
		tc.right = -91.000
		tc.bottom = -65.000
		tc.top = -19.000
		tc.mouseEnabled = true
		tc.alpha = 0
		tc.img = 0x56000001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '10'
		tc.left = -87.000
		tc.right = -23.000
		tc.bottom = -67.000
		tc.top = -21.000
		tc.mouseEnabled = true
		tc.alpha = 0
		tc.img = 0x56000001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '11'
		tc.left = -24.000
		tc.right = 40.000
		tc.bottom = -63.000
		tc.top = -17.000
		tc.mouseEnabled = true
		tc.alpha = 0
		tc.img = 0x56000001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '12'
		tc.left = 39.000
		tc.right = 103.000
		tc.bottom = -63.000
		tc.top = -17.000
		tc.mouseEnabled = true
		tc.alpha = 0
		tc.img = 0x56000001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '13'
		tc.left = -152.000
		tc.right = -88.000
		tc.bottom = -112.000
		tc.top = -68.000
		tc.mouseEnabled = true
		tc.alpha = 0
		tc.img = 0x56000001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '14'
		tc.left = -89.000
		tc.right = -25.000
		tc.bottom = -113.000
		tc.top = -67.000
		tc.mouseEnabled = true
		tc.alpha = 0
		tc.img = 0x56000001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '15'
		tc.left = -24.000
		tc.right = 40.000
		tc.bottom = -114.000
		tc.top = -68.000
		tc.mouseEnabled = true
		tc.alpha = 0
		tc.img = 0x56000001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '16'
		tc.left = 41.000
		tc.right = 105.000
		tc.bottom = -112.000
		tc.top = -66.000
		tc.mouseEnabled = true
		tc.alpha = 0
		tc.img = 0x56000001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '17'
		tc.left = -155.000
		tc.right = -91.000
		tc.bottom = -162.000
		tc.top = -116.000
		tc.mouseEnabled = true
		tc.alpha = 0
		tc.img = 0x56000001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '18'
		tc.left = -89.000
		tc.right = -25.000
		tc.bottom = -160.000
		tc.top = -114.000
		tc.mouseEnabled = true
		tc.alpha = 0
		tc.img = 0x56000001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '19'
		tc.left = -25.000
		tc.right = 39.000
		tc.bottom = -160.000
		tc.top = -114.000
		tc.mouseEnabled = true
		tc.alpha = 0
		tc.img = 0x56000001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '20'
		tc.left = 43.000
		tc.right = 105.000
		tc.bottom = -157.000
		tc.top = -113.000
		tc.mouseEnabled = true
		tc.alpha = 0
		tc.img = 0x56000001
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '时间'
	tc.left = 272.000
	tc.right = 472.000
	tc.bottom = 154.000
	tc.top = 254.000
	tc.mouseEnabled = true
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.text = '25:00'
	tc.font = 0x613c0000
	tc.style = 3
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '认输'
	tc.left = 272.000
	tc.right = 472.000
	tc.bottom = -50.000
	tc.top = 50.000
	tc.mouseEnabled = true
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.text = '认输'
	tc.font = 0x613c0000
	tc.style = 8
	tp = tc
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '外层按键'
	tc.left = 26.000
	tc.right = 26.000
	tc.bottom = 17.000
	tc.top = 17.000
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '10'
		tc.left = 39.000
		tc.right = 103.000
		tc.bottom = -160.000
		tc.top = -114.000
		tc.mouseEnabled = true
		tc.img = 0x560800f2
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '闪光'
			tc.left = -37.500
			tc.right = 37.500
			tc.bottom = -30.000
			tc.top = 30.000
			tc.visible = false
			tc.img = 0x33010001
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '9'
		tc.left = -154.000
		tc.right = -90.000
		tc.bottom = -162.000
		tc.top = -116.000
		tc.mouseEnabled = true
		tc.img = 0x560800f3
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '闪光'
			tc.left = -37.500
			tc.right = 37.500
			tc.bottom = -30.000
			tc.top = 30.000
			tc.visible = false
			tc.img = 0x33010001
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '8'
		tc.left = -22.000
		tc.right = 42.000
		tc.bottom = -114.000
		tc.top = -68.000
		tc.mouseEnabled = true
		tc.img = 0x560800f4
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '闪光'
			tc.left = -37.500
			tc.right = 37.500
			tc.bottom = -30.000
			tc.top = 30.000
			tc.visible = false
			tc.img = 0x33010001
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '7'
		tc.left = -88.000
		tc.right = -24.000
		tc.bottom = -113.000
		tc.top = -67.000
		tc.mouseEnabled = true
		tc.img = 0x5608005a
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '闪光'
			tc.left = -37.500
			tc.right = 37.500
			tc.bottom = -30.000
			tc.top = 30.000
			tc.visible = false
			tc.img = 0x33010001
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '6'
		tc.left = -88.000
		tc.right = 40.000
		tc.bottom = -65.000
		tc.top = -19.000
		tc.mouseEnabled = true
		tc.img = 0x560800f7
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '闪光'
			tc.left = -78.000
			tc.right = 78.000
			tc.bottom = -29.000
			tc.top = 29.000
			tc.visible = false
			tc.img = 0x33010001
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '5'
		tc.left = 41.000
		tc.right = 105.000
		tc.bottom = -109.000
		tc.top = -17.000
		tc.mouseEnabled = true
		tc.img = 0x56080087
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '闪光'
			tc.left = -37.500
			tc.right = 37.500
			tc.bottom = -58.500
			tc.top = 58.500
			tc.visible = false
			tc.img = 0x33010001
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '4'
		tc.left = -153.000
		tc.right = -89.000
		tc.bottom = -113.000
		tc.top = -21.000
		tc.mouseEnabled = true
		tc.img = 0x5608200b
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '闪光'
			tc.left = -37.500
			tc.right = 37.500
			tc.bottom = -58.500
			tc.top = 58.500
			tc.visible = false
			tc.img = 0x33010001
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '3'
		tc.left = 41.000
		tc.right = 105.000
		tc.bottom = -15.000
		tc.top = 77.000
		tc.mouseEnabled = true
		tc.img = 0x5608019e
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '闪光'
			tc.left = -37.500
			tc.right = 37.500
			tc.bottom = -58.500
			tc.top = 58.500
			tc.visible = false
			tc.img = 0x33010001
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '2'
		tc.left = -153.000
		tc.right = -89.000
		tc.bottom = -15.000
		tc.top = 77.000
		tc.mouseEnabled = true
		tc.img = 0x560800b3
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '闪光'
			tc.left = -37.500
			tc.right = 37.500
			tc.bottom = -58.500
			tc.top = 58.500
			tc.visible = false
			tc.img = 0x33010001
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '1'
		tc.left = -89.000
		tc.right = 39.000
		tc.bottom = -16.000
		tc.top = 76.000
		tc.mouseEnabled = true
		tc.img = 0x56080026
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '闪光'
			tc.left = -78.000
			tc.right = 78.000
			tc.bottom = -58.000
			tc.top = 58.000
			tc.visible = false
			tc.img = 0x33010001
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
	tp = tp.parent
	--end
tp.c_huarongdao = setmetatable({}, c_huarongdao)
