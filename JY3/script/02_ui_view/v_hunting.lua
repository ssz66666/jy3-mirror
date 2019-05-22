--[[201e

]]
local G = require 'gf'
local c_hunting = require 'c_hunting'
local c_button = require 'c_button'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_hunting'
tc.left = -320.000
tc.right = 320.000
tc.bottom = -240.000
tc.top = 240.000
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
	tc.name = '背景'
	tc.left = -320.000
	tc.right = 320.000
	tc.bottom = -240.000
	tc.top = 240.000
	tp = tc
		tc = tp.getChildByName('img')
		if tc then
		tc.img = 0x56050005
		tp = tc
		end
		tp = tp.parent
		--end
	com = tp.c_button
	com['img_normal'] =1443168261.000
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '开始'
	tc.left = -218.500
	tc.right = 222.500
	tc.bottom = -146.500
	tc.top = 196.500
	tc.mouseEnabled = true
	tc.img = 0x5610001d
	tp = tc
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '显示'
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'c3'
		tc.left = -45.000
		tc.right = 315.000
		tc.bottom = -238.500
		tc.top = -147.500
		tc.img = 0x5616002b
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'c4'
		tc.left = 293.000
		tc.right = 307.000
		tc.bottom = -228.000
		tc.top = -212.000
		tc.img = 0x33010002
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '头像'
		tc.left = -32.000
		tc.right = 16.000
		tc.bottom = -220.500
		tc.top = -163.500
		tc.img = 0x56080001
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '姓名'
		tc.left = -16.000
		tc.right = 144.000
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
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'c1'
		tc.left = -261.000
		tc.right = -61.000
		tc.bottom = 138.000
		tc.top = 178.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '目前得分:'
		tc.font = 0x61280000
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'c1'
		tc.left = -221.000
		tc.right = 225.000
		tc.bottom = 197.000
		tc.top = 239.000
		tc.img = 0x5610000c
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '时间'
	tc.pivotX = 0.000
	tc.left = -118.000
	tc.right = 172.000
	tc.bottom = 178.000
	tc.top = 188.000
	tc.img = 0x5610003e
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '得分'
	tc.left = -161.000
	tc.right = 39.000
	tc.bottom = 137.000
	tc.top = 177.000
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.text = '0'
	tc.font = 0x61280000
	tc.align = 1
	tc.style = 3
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '口白'
	tc.pivotX = 0.000
	tc.left = 29.000
	tc.right = 553.000
	tc.bottom = -264.000
	tc.top = -162.000
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
	tc.name = '提示'
	tc.left = -400.000
	tc.right = 400.000
	tc.bottom = 182.000
	tc.top = 242.000
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.font = 0x61280000
	tc.align = 1
	tc.style = 2
	tp = tc
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '猎物'
	tp = tc
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '1'
		tp = tc
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '1'
			tc.left = 112.500
			tc.right = 161.500
			tc.bottom = -32.000
			tc.top = 18.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '1'
				tc.left = -19.500
				tc.right = 19.500
				tc.bottom = -15.000
				tc.top = 15.000
				tc.mouseEnabled = true
				tc.img = 0x56100023
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '2'
				tc.left = -22.500
				tc.right = 20.500
				tc.bottom = -17.500
				tc.top = 19.500
				tc.visible = false
				tc.img = 0x33020008
				tp = tc
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '0'
				tc.left = -24.500
				tc.right = 14.500
				tc.bottom = -14.000
				tc.top = 16.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '3'
					tc.left = -10.000
					tc.right = 10.000
					tc.bottom = -8.000
					tc.top = 8.000
					tc.visible = false
					tc.img = 0x5610001f
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = 'dead'
				tc.left = -111.000
				tc.right = -11.000
				tc.bottom = 147.000
				tc.top = 167.000
				tc.visible = false
				tc.text = '0'
				tc.font = 0x61140000
				tc.align = 1
				tc.style = 3
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '2'
			tc.left = 176.500
			tc.right = 225.500
			tc.top = 50.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '1'
				tc.left = -19.500
				tc.right = 19.500
				tc.bottom = -15.000
				tc.top = 15.000
				tc.mouseEnabled = true
				tc.img = 0x56100023
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '2'
				tc.left = -22.500
				tc.right = 20.500
				tc.bottom = -17.500
				tc.top = 19.500
				tc.visible = false
				tc.img = 0x33020008
				tp = tc
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '0'
				tc.left = -24.500
				tc.right = 14.500
				tc.bottom = -14.000
				tc.top = 16.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '3'
					tc.left = -10.000
					tc.right = 10.000
					tc.bottom = -8.000
					tc.top = 8.000
					tc.visible = false
					tc.img = 0x5610001f
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = 'dead'
				tc.left = -111.000
				tc.right = -11.000
				tc.bottom = 147.000
				tc.top = 167.000
				tc.visible = false
				tc.text = '0'
				tc.font = 0x61140000
				tc.align = 1
				tc.style = 3
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '3'
			tc.left = -156.500
			tc.right = -107.500
			tc.bottom = -80.000
			tc.top = -30.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '1'
				tc.left = -19.500
				tc.right = 19.500
				tc.bottom = -15.000
				tc.top = 15.000
				tc.mouseEnabled = true
				tc.img = 0x56100023
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '2'
				tc.left = -22.500
				tc.right = 20.500
				tc.bottom = -17.500
				tc.top = 19.500
				tc.visible = false
				tc.img = 0x33020008
				tp = tc
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '0'
				tc.left = -24.500
				tc.right = 14.500
				tc.bottom = -14.000
				tc.top = 16.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '3'
					tc.left = -10.000
					tc.right = 10.000
					tc.bottom = -8.000
					tc.top = 8.000
					tc.visible = false
					tc.img = 0x5610001f
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = 'dead'
				tc.left = -111.000
				tc.right = -11.000
				tc.bottom = 147.000
				tc.top = 167.000
				tc.visible = false
				tc.text = '0'
				tc.font = 0x61140000
				tc.align = 1
				tc.style = 3
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '4'
			tc.left = -5.500
			tc.right = 43.500
			tc.bottom = -15.000
			tc.top = 35.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '1'
				tc.left = -19.500
				tc.right = 19.500
				tc.bottom = -15.000
				tc.top = 15.000
				tc.img = 0x56100023
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '2'
				tc.left = -22.500
				tc.right = 20.500
				tc.bottom = -17.500
				tc.top = 19.500
				tc.visible = false
				tc.img = 0x33020008
				tp = tc
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '0'
				tc.left = -24.500
				tc.right = 14.500
				tc.bottom = -14.000
				tc.top = 16.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '3'
					tc.left = -10.000
					tc.right = 10.000
					tc.bottom = -8.000
					tc.top = 8.000
					tc.visible = false
					tc.img = 0x5610001f
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = 'dead'
				tc.left = -111.000
				tc.right = -11.000
				tc.bottom = 147.000
				tc.top = 167.000
				tc.visible = false
				tc.text = '0'
				tc.font = 0x61140000
				tc.align = 1
				tc.style = 3
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '2'
		tc.left = 38.000
		tc.right = 38.000
		tc.bottom = -12.000
		tc.top = -12.000
		tp = tc
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '1'
			tc.left = 131.500
			tc.right = 180.500
			tc.bottom = 55.000
			tc.top = 105.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '1'
				tc.left = -22.000
				tc.right = 22.000
				tc.bottom = -33.500
				tc.top = 33.500
				tc.mouseEnabled = true
				tc.img = 0x56100021
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '2'
				tc.left = -30.000
				tc.right = 31.000
				tc.bottom = -34.500
				tc.top = 36.500
				tc.visible = false
				tc.img = 0x3302000b
				tp = tc
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '0'
				tc.left = -18.000
				tc.right = 22.000
				tc.bottom = -24.000
				tc.top = 26.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '3'
					tc.left = -12.500
					tc.right = 12.500
					tc.bottom = -10.000
					tc.top = 10.000
					tc.visible = false
					tc.img = 0x5610001f
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = 'dead'
				tc.left = -111.000
				tc.right = -11.000
				tc.bottom = 147.000
				tc.top = 167.000
				tc.visible = false
				tc.text = '0'
				tc.font = 0x61140000
				tc.align = 1
				tc.style = 3
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '2'
			tc.left = -111.000
			tc.right = -61.000
			tc.bottom = -51.000
			tc.top = -1.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '1'
				tc.left = -22.000
				tc.right = 22.000
				tc.bottom = -33.500
				tc.top = 33.500
				tc.mouseEnabled = true
				tc.img = 0x56100021
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '2'
				tc.left = -30.000
				tc.right = 31.000
				tc.bottom = -34.500
				tc.top = 36.500
				tc.visible = false
				tc.img = 0x3302000b
				tp = tc
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '0'
				tc.left = -18.000
				tc.right = 22.000
				tc.bottom = -24.000
				tc.top = 26.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '3'
					tc.left = -12.500
					tc.right = 12.500
					tc.bottom = -10.000
					tc.top = 10.000
					tc.visible = false
					tc.img = 0x5610001f
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = 'dead'
				tc.left = -111.000
				tc.right = -11.000
				tc.bottom = 147.000
				tc.top = 167.000
				tc.visible = false
				tc.text = '0'
				tc.font = 0x61140000
				tc.align = 1
				tc.style = 3
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '3'
			tc.left = -257.000
			tc.right = -207.000
			tc.bottom = -3.000
			tc.top = 47.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '1'
				tc.left = -17.600
				tc.right = 17.600
				tc.bottom = -26.800
				tc.top = 26.800
				tc.mouseEnabled = true
				tc.img = 0x56100021
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '2'
				tc.left = -23.900
				tc.right = 24.900
				tc.bottom = -27.400
				tc.top = 29.400
				tc.visible = false
				tc.img = 0x3302000b
				tp = tc
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '0'
				tc.left = -18.000
				tc.right = 22.000
				tc.bottom = -24.000
				tc.top = 26.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '3'
					tc.left = -12.500
					tc.right = 12.500
					tc.bottom = -10.000
					tc.top = 10.000
					tc.visible = false
					tc.img = 0x5610001f
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = 'dead'
				tc.left = -111.000
				tc.right = -11.000
				tc.bottom = 147.000
				tc.top = 167.000
				tc.visible = false
				tc.text = '0'
				tc.font = 0x61140000
				tc.align = 1
				tc.style = 3
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '4'
			tc.left = 87.000
			tc.right = 137.000
			tc.bottom = 11.000
			tc.top = 61.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '1'
				tc.left = -17.600
				tc.right = 17.600
				tc.bottom = -26.800
				tc.top = 26.800
				tc.mouseEnabled = true
				tc.img = 0x56100021
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '2'
				tc.left = -23.900
				tc.right = 24.900
				tc.bottom = -27.400
				tc.top = 29.400
				tc.visible = false
				tc.img = 0x3302000b
				tp = tc
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '0'
				tc.left = -18.000
				tc.right = 22.000
				tc.bottom = -24.000
				tc.top = 26.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '3'
					tc.left = -12.500
					tc.right = 12.500
					tc.bottom = -10.000
					tc.top = 10.000
					tc.visible = false
					tc.img = 0x5610001f
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = 'dead'
				tc.left = -111.000
				tc.right = -11.000
				tc.bottom = 147.000
				tc.top = 167.000
				tc.visible = false
				tc.text = '0'
				tc.font = 0x61140000
				tc.align = 1
				tc.style = 3
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '3'
		tp = tc
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '1'
			tc.left = 137.500
			tc.right = 186.500
			tc.bottom = 130.000
			tc.top = 180.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '1'
				tc.left = -15.500
				tc.right = 15.500
				tc.bottom = -18.500
				tc.top = 18.500
				tc.mouseEnabled = true
				tc.img = 0x56100025
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '2'
				tc.left = -24.000
				tc.right = 22.000
				tc.bottom = -22.000
				tc.top = 24.000
				tc.visible = false
				tc.img = 0x3302000a
				tp = tc
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '0'
				tc.left = -14.000
				tc.right = 16.000
				tc.bottom = -18.500
				tc.top = 16.500
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '3'
					tc.left = -11.000
					tc.right = 9.000
					tc.bottom = -9.000
					tc.top = 7.000
					tc.visible = false
					tc.img = 0x5610001f
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = 'dead'
				tc.left = -111.000
				tc.right = -11.000
				tc.bottom = 147.000
				tc.top = 167.000
				tc.visible = false
				tc.text = '0'
				tc.font = 0x61140000
				tc.align = 1
				tc.style = 3
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '2'
			tc.left = 146.500
			tc.right = 195.500
			tc.bottom = 65.000
			tc.top = 115.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '1'
				tc.left = -15.500
				tc.right = 15.500
				tc.bottom = -18.500
				tc.top = 18.500
				tc.mouseEnabled = true
				tc.img = 0x56100025
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '2'
				tc.left = -24.000
				tc.right = 22.000
				tc.bottom = -22.000
				tc.top = 24.000
				tc.visible = false
				tc.img = 0x3302000a
				tp = tc
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '0'
				tc.left = -14.500
				tc.right = 16.500
				tc.bottom = -18.500
				tc.top = 16.500
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '3'
					tc.left = -11.000
					tc.right = 9.000
					tc.bottom = -9.000
					tc.top = 7.000
					tc.visible = false
					tc.img = 0x5610001f
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = 'dead'
				tc.left = -111.000
				tc.right = -11.000
				tc.bottom = 147.000
				tc.top = 167.000
				tc.visible = false
				tc.text = '0'
				tc.font = 0x61140000
				tc.align = 1
				tc.style = 3
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '3'
			tc.left = -113.500
			tc.right = -64.500
			tc.bottom = 62.000
			tc.top = 112.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '1'
				tc.left = -15.500
				tc.right = 15.500
				tc.bottom = -18.500
				tc.top = 18.500
				tc.mouseEnabled = true
				tc.img = 0x56100025
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '2'
				tc.left = -24.000
				tc.right = 22.000
				tc.bottom = -22.000
				tc.top = 24.000
				tc.visible = false
				tc.img = 0x3302000a
				tp = tc
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '0'
				tc.left = -14.500
				tc.right = 16.500
				tc.bottom = -18.500
				tc.top = 16.500
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '3'
					tc.left = -11.000
					tc.right = 9.000
					tc.bottom = -9.000
					tc.top = 7.000
					tc.visible = false
					tc.img = 0x5610001f
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = 'dead'
				tc.left = -111.000
				tc.right = -11.000
				tc.bottom = 147.000
				tc.top = 167.000
				tc.visible = false
				tc.text = '0'
				tc.font = 0x61140000
				tc.align = 1
				tc.style = 3
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '4'
			tc.left = -194.500
			tc.right = -145.500
			tc.bottom = 109.000
			tc.top = 159.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '1'
				tc.left = -15.500
				tc.right = 15.500
				tc.bottom = -18.500
				tc.top = 18.500
				tc.mouseEnabled = true
				tc.img = 0x56100025
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '2'
				tc.left = -24.000
				tc.right = 22.000
				tc.bottom = -22.000
				tc.top = 24.000
				tc.visible = false
				tc.img = 0x3302000a
				tp = tc
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '0'
				tc.left = -14.000
				tc.right = 16.000
				tc.bottom = -18.500
				tc.top = 16.500
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '3'
					tc.left = -11.000
					tc.right = 9.000
					tc.bottom = -9.000
					tc.top = 7.000
					tc.visible = false
					tc.img = 0x5610001f
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = 'dead'
				tc.left = -111.000
				tc.right = -11.000
				tc.bottom = 147.000
				tc.top = 167.000
				tc.visible = false
				tc.text = '0'
				tc.font = 0x61140000
				tc.align = 1
				tc.style = 3
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '4'
		tp = tc
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '1'
			tc.left = -202.000
			tc.right = -152.000
			tc.bottom = -76.000
			tc.top = -30.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '1'
				tc.left = -26.000
				tc.right = 26.000
				tc.bottom = -18.000
				tc.top = 18.000
				tc.mouseEnabled = true
				tc.img = 0x5610001e
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '2'
				tc.left = -26.000
				tc.right = 26.000
				tc.bottom = -20.000
				tc.top = 26.000
				tc.mouseEnabled = true
				tc.visible = false
				tc.img = 0x33020001
				tp = tc
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '0'
				tc.left = -26.000
				tc.right = 26.000
				tc.bottom = -18.000
				tc.top = 18.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '3'
					tc.left = -12.500
					tc.right = 12.500
					tc.bottom = -10.000
					tc.top = 10.000
					tc.visible = false
					tc.img = 0x5610001f
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = 'dead'
				tc.left = -111.000
				tc.right = -11.000
				tc.bottom = 147.000
				tc.top = 167.000
				tc.visible = false
				tc.text = '0'
				tc.font = 0x61140000
				tc.align = 1
				tc.style = 3
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '2'
			tc.left = -149.000
			tc.right = -99.000
			tc.bottom = -33.000
			tc.top = 13.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '1'
				tc.left = -26.000
				tc.right = 26.000
				tc.bottom = -18.000
				tc.top = 18.000
				tc.mouseEnabled = true
				tc.img = 0x5610001e
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '2'
				tc.left = -26.000
				tc.right = 26.000
				tc.bottom = -20.000
				tc.top = 26.000
				tc.mouseEnabled = true
				tc.visible = false
				tc.img = 0x33020001
				tp = tc
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '0'
				tc.left = -26.000
				tc.right = 26.000
				tc.bottom = -18.000
				tc.top = 18.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '3'
					tc.left = -12.500
					tc.right = 12.500
					tc.bottom = -10.000
					tc.top = 10.000
					tc.visible = false
					tc.img = 0x5610001f
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = 'dead'
				tc.left = -111.000
				tc.right = -11.000
				tc.bottom = 147.000
				tc.top = 167.000
				tc.visible = false
				tc.text = '0'
				tc.font = 0x61140000
				tc.align = 1
				tc.style = 3
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '3'
			tc.left = 154.000
			tc.right = 204.000
			tc.bottom = -24.000
			tc.top = 22.000
			tc.visible = false
			tc.scaleX = -1.000
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '1'
				tc.left = -26.000
				tc.right = 26.000
				tc.bottom = -18.000
				tc.top = 18.000
				tc.mouseEnabled = true
				tc.img = 0x5610001e
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '2'
				tc.left = -26.000
				tc.right = 26.000
				tc.bottom = -20.000
				tc.top = 26.000
				tc.mouseEnabled = true
				tc.visible = false
				tc.img = 0x33020001
				tp = tc
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '0'
				tc.left = -26.000
				tc.right = 26.000
				tc.bottom = -18.000
				tc.top = 18.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '3'
					tc.left = -12.500
					tc.right = 12.500
					tc.bottom = -10.000
					tc.top = 10.000
					tc.visible = false
					tc.img = 0x5610001f
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = 'dead'
				tc.left = -111.000
				tc.right = -11.000
				tc.bottom = 147.000
				tc.top = 167.000
				tc.visible = false
				tc.text = '0'
				tc.font = 0x61140000
				tc.align = 1
				tc.style = 3
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '4'
			tc.left = 131.000
			tc.right = 171.000
			tc.bottom = 42.000
			tc.top = 78.000
			tc.visible = false
			tc.scaleX = -1.000
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '1'
				tc.left = -20.800
				tc.right = 20.800
				tc.bottom = -14.400
				tc.top = 14.400
				tc.mouseEnabled = true
				tc.img = 0x5610001e
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '2'
				tc.left = -20.800
				tc.right = 20.800
				tc.bottom = -15.400
				tc.top = 21.400
				tc.mouseEnabled = true
				tc.visible = false
				tc.img = 0x33020001
				tp = tc
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '0'
				tc.left = -26.000
				tc.right = 26.000
				tc.bottom = -18.000
				tc.top = 18.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '3'
					tc.left = -12.500
					tc.right = 12.500
					tc.bottom = -10.000
					tc.top = 10.000
					tc.visible = false
					tc.img = 0x5610001f
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = 'dead'
				tc.left = -111.000
				tc.right = -11.000
				tc.bottom = 147.000
				tc.top = 167.000
				tc.visible = false
				tc.text = '0'
				tc.font = 0x61140000
				tc.align = 1
				tc.style = 3
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '5'
		tp = tc
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '1'
			tc.left = -191.000
			tc.right = -141.000
			tc.bottom = 54.000
			tc.top = 100.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '1'
				tc.left = -31.500
				tc.right = 31.500
				tc.bottom = -38.000
				tc.top = 38.000
				tc.mouseEnabled = true
				tc.img = 0x5610002b
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '2'
				tc.left = -41.500
				tc.right = 31.500
				tc.bottom = -39.000
				tc.top = 45.000
				tc.mouseEnabled = true
				tc.visible = false
				tc.img = 0x33020002
				tp = tc
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '0'
				tc.left = -31.000
				tc.right = -1.000
				tc.bottom = -33.500
				tc.top = 31.500
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '3'
					tc.left = -15.000
					tc.right = 15.000
					tc.bottom = -12.000
					tc.top = 12.000
					tc.visible = false
					tc.img = 0x5610001f
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '3'
				tc.left = -31.000
				tc.right = 37.000
				tc.bottom = -46.750
				tc.top = 22.750
				tc.visible = false
				tc.img = 0x33021001
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = 'dead'
				tc.left = -111.000
				tc.right = -11.000
				tc.bottom = 147.000
				tc.top = 167.000
				tc.visible = false
				tc.text = '0'
				tc.font = 0x61140000
				tc.align = 1
				tc.style = 3
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '2'
			tc.left = -121.000
			tc.right = -71.000
			tc.bottom = 66.000
			tc.top = 112.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '1'
				tc.left = -47.250
				tc.right = 47.250
				tc.bottom = -57.000
				tc.top = 57.000
				tc.mouseEnabled = true
				tc.img = 0x5610002b
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '2'
				tc.left = -59.750
				tc.right = 49.750
				tc.bottom = -60.000
				tc.top = 66.000
				tc.mouseEnabled = true
				tc.visible = false
				tc.img = 0x33020002
				tp = tc
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '0'
				tc.left = -43.000
				tc.right = -7.000
				tc.bottom = -58.000
				tc.top = 48.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '3'
					tc.left = -19.000
					tc.right = 11.000
					tc.bottom = -32.000
					tc.top = -8.000
					tc.visible = false
					tc.img = 0x5610001f
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '3'
				tc.left = -65.000
				tc.right = 71.000
				tc.bottom = -81.500
				tc.top = 57.500
				tc.visible = false
				tc.img = 0x33021001
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = 'dead'
				tc.left = -111.000
				tc.right = -11.000
				tc.bottom = 147.000
				tc.top = 167.000
				tc.visible = false
				tc.text = '0'
				tc.font = 0x61140000
				tc.align = 1
				tc.style = 3
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '3'
			tc.left = 82.000
			tc.right = 132.000
			tc.bottom = 97.000
			tc.top = 143.000
			tc.visible = false
			tc.scaleX = -1.000
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '1'
				tc.left = -31.500
				tc.right = 31.500
				tc.bottom = -38.000
				tc.top = 38.000
				tc.mouseEnabled = true
				tc.img = 0x5610002b
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '2'
				tc.left = -39.500
				tc.right = 33.500
				tc.bottom = -39.000
				tc.top = 45.000
				tc.mouseEnabled = true
				tc.visible = false
				tc.img = 0x33020002
				tp = tc
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '0'
				tc.left = -27.000
				tc.right = -3.000
				tc.bottom = -34.500
				tc.top = 30.500
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '3'
					tc.left = -7.500
					tc.right = 17.500
					tc.bottom = -37.000
					tc.top = -17.000
					tc.visible = false
					tc.img = 0x5610001f
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '3'
				tc.left = -31.000
				tc.right = 37.000
				tc.bottom = -46.750
				tc.top = 22.750
				tc.visible = false
				tc.img = 0x33021001
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = 'dead'
				tc.left = -111.000
				tc.right = -11.000
				tc.bottom = 147.000
				tc.top = 167.000
				tc.visible = false
				tc.text = '0'
				tc.font = 0x61140000
				tc.align = 1
				tc.style = 3
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '4'
			tc.left = 159.000
			tc.right = 209.000
			tc.bottom = 117.000
			tc.top = 163.000
			tc.visible = false
			tc.scaleX = -1.000
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '1'
				tc.left = -25.200
				tc.right = 25.200
				tc.bottom = -30.400
				tc.top = 30.400
				tc.mouseEnabled = true
				tc.img = 0x5610002b
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '2'
				tc.left = -33.200
				tc.right = 25.200
				tc.bottom = -31.600
				tc.top = 35.600
				tc.mouseEnabled = true
				tc.visible = false
				tc.img = 0x33020002
				tp = tc
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '0'
				tc.left = -26.000
				tc.right = -2.000
				tc.bottom = -30.500
				tc.top = 34.500
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '3'
					tc.left = -8.500
					tc.right = 16.500
					tc.bottom = -31.000
					tc.top = -11.000
					tc.visible = false
					tc.img = 0x5610001f
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '3'
				tc.left = -31.000
				tc.right = 37.000
				tc.bottom = -46.750
				tc.top = 22.750
				tc.visible = false
				tc.img = 0x33021001
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = 'dead'
				tc.left = -111.000
				tc.right = -11.000
				tc.bottom = 147.000
				tc.top = 167.000
				tc.visible = false
				tc.text = '0'
				tc.font = 0x61140000
				tc.align = 1
				tc.style = 3
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '6'
		tp = tc
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '1'
			tc.left = -43.000
			tc.right = 7.000
			tc.bottom = 43.000
			tc.top = 93.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '1'
				tc.left = -28.800
				tc.right = 28.800
				tc.bottom = -36.800
				tc.top = 36.800
				tc.mouseEnabled = true
				tc.img = 0x56100027
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '2'
				tc.left = -33.300
				tc.right = 36.300
				tc.bottom = -36.800
				tc.top = 36.800
				tc.visible = false
				tc.img = 0x33020006
				tp = tc
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '0'
				tc.left = -21.000
				tc.right = 19.000
				tc.bottom = -16.000
				tc.top = 24.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '3'
					tc.left = -12.500
					tc.right = 12.500
					tc.bottom = -15.000
					tc.top = 5.000
					tc.visible = false
					tc.img = 0x5610001f
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = 'dead'
				tc.left = -111.000
				tc.right = -11.000
				tc.bottom = 147.000
				tc.top = 167.000
				tc.visible = false
				tc.text = '0'
				tc.font = 0x61140000
				tc.align = 1
				tc.style = 3
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '2'
			tc.left = 15.000
			tc.right = 65.000
			tc.bottom = 40.000
			tc.top = 90.000
			tc.visible = false
			tc.scaleX = -1.000
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '1'
				tc.left = -28.800
				tc.right = 28.800
				tc.bottom = -36.800
				tc.top = 36.800
				tc.mouseEnabled = true
				tc.img = 0x56100027
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '2'
				tc.left = -33.300
				tc.right = 36.300
				tc.bottom = -36.800
				tc.top = 36.800
				tc.visible = false
				tc.img = 0x33020006
				tp = tc
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '0'
				tc.left = -21.000
				tc.right = 19.000
				tc.bottom = -16.000
				tc.top = 24.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '3'
					tc.left = -12.500
					tc.right = 12.500
					tc.bottom = -15.000
					tc.top = 5.000
					tc.visible = false
					tc.img = 0x5610001f
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = 'dead'
				tc.left = -111.000
				tc.right = -11.000
				tc.bottom = 147.000
				tc.top = 167.000
				tc.visible = false
				tc.text = '0'
				tc.font = 0x61140000
				tc.align = 1
				tc.style = 3
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '3'
			tc.left = 77.000
			tc.right = 127.000
			tc.bottom = 14.000
			tc.top = 64.000
			tc.visible = false
			tc.scaleX = -1.000
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '1'
				tc.left = -36.000
				tc.right = 36.000
				tc.bottom = -46.000
				tc.top = 46.000
				tc.mouseEnabled = true
				tc.img = 0x56100027
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '2'
				tc.left = -42.000
				tc.right = 45.000
				tc.bottom = -46.000
				tc.top = 46.000
				tc.visible = false
				tc.img = 0x33020006
				tp = tc
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '0'
				tc.left = -21.000
				tc.right = 19.000
				tc.bottom = -17.000
				tc.top = 23.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '3'
					tc.left = -12.500
					tc.right = 12.500
					tc.bottom = -15.000
					tc.top = 5.000
					tc.visible = false
					tc.img = 0x5610001f
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = 'dead'
				tc.left = -111.000
				tc.right = -11.000
				tc.bottom = 147.000
				tc.top = 167.000
				tc.visible = false
				tc.text = '0'
				tc.font = 0x61140000
				tc.align = 1
				tc.style = 3
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '4'
			tc.left = -92.000
			tc.right = -42.000
			tc.bottom = -8.000
			tc.top = 42.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '1'
				tc.left = -36.000
				tc.right = 36.000
				tc.bottom = -46.000
				tc.top = 46.000
				tc.mouseEnabled = true
				tc.img = 0x56100027
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '2'
				tc.left = -42.000
				tc.right = 45.000
				tc.bottom = -46.000
				tc.top = 46.000
				tc.visible = false
				tc.img = 0x33020006
				tp = tc
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '0'
				tc.left = -21.000
				tc.right = 19.000
				tc.bottom = -17.000
				tc.top = 23.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '3'
					tc.left = -12.500
					tc.right = 12.500
					tc.bottom = -15.000
					tc.top = 5.000
					tc.visible = false
					tc.img = 0x5610001f
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = 'dead'
				tc.left = -111.000
				tc.right = -11.000
				tc.bottom = 147.000
				tc.top = 167.000
				tc.visible = false
				tc.text = '0'
				tc.font = 0x61140000
				tc.align = 1
				tc.style = 3
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '7'
		tp = tc
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '1'
			tc.left = -129.000
			tc.right = -79.000
			tc.bottom = -70.000
			tc.top = -20.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '1'
				tc.left = -11.000
				tc.right = 11.000
				tc.bottom = -25.500
				tc.top = 25.500
				tc.mouseEnabled = true
				tc.img = 0x56100029
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '2'
				tc.left = -26.000
				tc.right = 20.000
				tc.bottom = -28.000
				tc.top = 26.000
				tc.visible = false
				tc.img = 0x33020007
				tp = tc
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '0'
				tc.left = -16.000
				tc.right = 14.000
				tc.bottom = -21.000
				tc.top = 19.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '3'
					tc.left = -12.500
					tc.right = 12.500
					tc.bottom = -15.000
					tc.top = 5.000
					tc.visible = false
					tc.img = 0x5610001f
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = 'dead'
				tc.left = -111.000
				tc.right = -11.000
				tc.bottom = 147.000
				tc.top = 167.000
				tc.visible = false
				tc.text = '0'
				tc.font = 0x61140000
				tc.align = 1
				tc.style = 3
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '2'
			tc.left = -101.000
			tc.right = -51.000
			tc.bottom = -87.000
			tc.top = -37.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '1'
				tc.left = -11.000
				tc.right = 11.000
				tc.bottom = -25.500
				tc.top = 25.500
				tc.mouseEnabled = true
				tc.img = 0x56100029
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '2'
				tc.left = -26.000
				tc.right = 20.000
				tc.bottom = -28.000
				tc.top = 26.000
				tc.visible = false
				tc.img = 0x33020007
				tp = tc
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '0'
				tc.left = -16.000
				tc.right = 14.000
				tc.bottom = -20.000
				tc.top = 20.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '3'
					tc.left = -12.500
					tc.right = 12.500
					tc.bottom = -15.000
					tc.top = 5.000
					tc.visible = false
					tc.img = 0x5610001f
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = 'dead'
				tc.left = -111.000
				tc.right = -11.000
				tc.bottom = 147.000
				tc.top = 167.000
				tc.visible = false
				tc.text = '0'
				tc.font = 0x61140000
				tc.align = 1
				tc.style = 3
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '3'
			tc.left = -38.000
			tc.right = 12.000
			tc.bottom = -15.000
			tc.top = 35.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '1'
				tc.left = -8.800
				tc.right = 8.800
				tc.bottom = -20.400
				tc.top = 20.400
				tc.mouseEnabled = true
				tc.img = 0x56100029
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '2'
				tc.left = -21.400
				tc.right = 15.400
				tc.bottom = -22.600
				tc.top = 20.600
				tc.visible = false
				tc.img = 0x33020007
				tp = tc
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '0'
				tc.left = -16.000
				tc.right = 14.000
				tc.bottom = -20.000
				tc.top = 20.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '3'
					tc.left = -12.500
					tc.right = 12.500
					tc.bottom = -15.000
					tc.top = 5.000
					tc.visible = false
					tc.img = 0x5610001f
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = 'dead'
				tc.left = -111.000
				tc.right = -11.000
				tc.bottom = 147.000
				tc.top = 167.000
				tc.visible = false
				tc.text = '0'
				tc.font = 0x61140000
				tc.align = 1
				tc.style = 3
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '4'
			tc.left = 19.000
			tc.right = 69.000
			tc.bottom = -9.000
			tc.top = 41.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '1'
				tc.left = -8.800
				tc.right = 8.800
				tc.bottom = -20.400
				tc.top = 20.400
				tc.mouseEnabled = true
				tc.img = 0x56100029
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '2'
				tc.left = -21.400
				tc.right = 15.400
				tc.bottom = -22.600
				tc.top = 20.600
				tc.visible = false
				tc.img = 0x33020007
				tp = tc
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '0'
				tc.left = -16.000
				tc.right = 14.000
				tc.bottom = -20.000
				tc.top = 20.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '3'
					tc.left = -12.500
					tc.right = 12.500
					tc.bottom = -15.000
					tc.top = 5.000
					tc.visible = false
					tc.img = 0x5610001f
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = 'dead'
				tc.left = -111.000
				tc.right = -11.000
				tc.bottom = 147.000
				tc.top = 167.000
				tc.visible = false
				tc.text = '0'
				tc.font = 0x61140000
				tc.align = 1
				tc.style = 3
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '8'
		tp = tc
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '1'
			tc.left = 44.000
			tc.right = 94.000
			tc.bottom = 125.000
			tc.top = 175.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '1'
				tc.left = -24.250
				tc.right = 24.250
				tc.bottom = -14.000
				tc.top = 14.000
				tc.mouseEnabled = true
				tc.img = 0x5610002d
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '2'
				tc.left = -24.250
				tc.right = 24.250
				tc.bottom = -18.500
				tc.top = 12.500
				tc.visible = false
				tc.img = 0x33020005
				tp = tc
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '0'
				tc.left = -24.250
				tc.right = 24.250
				tc.bottom = -15.000
				tc.top = 15.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '3'
					tc.left = -5.500
					tc.right = 19.500
					tc.bottom = -14.000
					tc.top = 6.000
					tc.visible = false
					tc.img = 0x5610001f
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = 'dead'
				tc.left = -111.000
				tc.right = -11.000
				tc.bottom = 147.000
				tc.top = 167.000
				tc.visible = false
				tc.text = '0'
				tc.font = 0x61140000
				tc.align = 1
				tc.style = 3
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '2'
			tc.left = -15.000
			tc.right = 35.000
			tc.bottom = 129.000
			tc.top = 179.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '1'
				tc.left = -24.250
				tc.right = 24.250
				tc.bottom = -14.000
				tc.top = 14.000
				tc.mouseEnabled = true
				tc.img = 0x5610002d
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '2'
				tc.left = -24.250
				tc.right = 24.250
				tc.bottom = -18.500
				tc.top = 12.500
				tc.visible = false
				tc.img = 0x33020005
				tp = tc
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '0'
				tc.left = -24.250
				tc.right = 24.250
				tc.bottom = -15.000
				tc.top = 15.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '3'
					tc.left = -5.500
					tc.right = 19.500
					tc.bottom = -14.000
					tc.top = 6.000
					tc.visible = false
					tc.img = 0x5610001f
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = 'dead'
				tc.left = -111.000
				tc.right = -11.000
				tc.bottom = 147.000
				tc.top = 167.000
				tc.visible = false
				tc.text = '0'
				tc.font = 0x61140000
				tc.align = 1
				tc.style = 3
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '3'
			tc.left = -82.000
			tc.right = -32.000
			tc.bottom = 105.000
			tc.top = 155.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '1'
				tc.left = -48.500
				tc.right = 48.500
				tc.bottom = -28.000
				tc.top = 28.000
				tc.mouseEnabled = true
				tc.img = 0x5610002d
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '2'
				tc.left = -48.500
				tc.right = 48.500
				tc.bottom = -34.000
				tc.top = 28.000
				tc.visible = false
				tc.img = 0x33020005
				tp = tc
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '0'
				tc.left = -48.500
				tc.right = 48.500
				tc.bottom = -15.000
				tc.top = 15.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '3'
					tc.left = -5.500
					tc.right = 19.500
					tc.bottom = -20.000
					tc.top = 0.000
					tc.visible = false
					tc.img = 0x5610001f
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = 'dead'
				tc.left = -111.000
				tc.right = -11.000
				tc.bottom = 147.000
				tc.top = 167.000
				tc.visible = false
				tc.text = '0'
				tc.font = 0x61140000
				tc.align = 1
				tc.style = 3
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '4'
			tc.left = 29.000
			tc.right = 79.000
			tc.bottom = 93.000
			tc.top = 143.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '1'
				tc.left = -48.500
				tc.right = 48.500
				tc.bottom = -28.000
				tc.top = 28.000
				tc.mouseEnabled = true
				tc.img = 0x5610002d
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '2'
				tc.left = -48.500
				tc.right = 48.500
				tc.bottom = -34.000
				tc.top = 28.000
				tc.visible = false
				tc.img = 0x33020005
				tp = tc
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '0'
				tc.left = -48.500
				tc.right = 48.500
				tc.bottom = -15.000
				tc.top = 15.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '3'
					tc.left = -5.500
					tc.right = 19.500
					tc.bottom = -20.000
					tc.top = 0.000
					tc.visible = false
					tc.img = 0x5610001f
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = 'dead'
				tc.left = -111.000
				tc.right = -11.000
				tc.bottom = 147.000
				tc.top = 167.000
				tc.visible = false
				tc.text = '0'
				tc.font = 0x61140000
				tc.align = 1
				tc.style = 3
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '9'
		tp = tc
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '1'
			tc.left = 67.000
			tc.right = 117.000
			tc.bottom = -61.000
			tc.top = -11.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '1'
				tc.left = -45.500
				tc.right = 45.500
				tc.bottom = -28.500
				tc.top = 28.500
				tc.mouseEnabled = true
				tc.img = 0x5610002f
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '2'
				tc.left = -50.000
				tc.right = 46.000
				tc.bottom = -34.500
				tc.top = 30.500
				tc.visible = false
				tc.img = 0x33020009
				tp = tc
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '0'
				tc.left = -26.000
				tc.right = 24.000
				tc.bottom = -22.000
				tc.top = 28.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '3'
					tc.left = -18.000
					tc.right = 32.000
					tc.bottom = -19.000
					tc.top = 21.000
					tc.visible = false
					tc.img = 0x5610001f
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '3'
				tc.left = -55.000
				tc.right = 53.000
				tc.bottom = -67.500
				tc.top = 37.500
				tc.visible = false
				tc.scaleX = -1.000
				tc.img = 0x33021004
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = 'dead'
				tc.left = -111.000
				tc.right = -11.000
				tc.bottom = 147.000
				tc.top = 167.000
				tc.visible = false
				tc.text = '0'
				tc.font = 0x61140000
				tc.align = 1
				tc.style = 3
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '2'
			tc.left = -22.000
			tc.right = 28.000
			tc.bottom = -64.000
			tc.top = -14.000
			tc.visible = false
			tc.scaleX = -1.000
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '1'
				tc.left = -45.500
				tc.right = 45.500
				tc.bottom = -28.500
				tc.top = 28.500
				tc.mouseEnabled = true
				tc.img = 0x5610002f
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '2'
				tc.left = -50.000
				tc.right = 46.000
				tc.bottom = -34.500
				tc.top = 30.500
				tc.visible = false
				tc.img = 0x33020009
				tp = tc
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '0'
				tc.left = -26.000
				tc.right = 24.000
				tc.bottom = -22.000
				tc.top = 28.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '3'
					tc.left = -18.000
					tc.right = 32.000
					tc.bottom = -19.000
					tc.top = 21.000
					tc.visible = false
					tc.img = 0x5610001f
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '3'
				tc.left = -56.000
				tc.right = 52.000
				tc.bottom = -54.500
				tc.top = 50.500
				tc.visible = false
				tc.img = 0x33021004
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = 'dead'
				tc.left = -111.000
				tc.right = -11.000
				tc.bottom = 147.000
				tc.top = 167.000
				tc.visible = false
				tc.text = '0'
				tc.font = 0x61140000
				tc.align = 1
				tc.style = 3
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '11'
		tp = tc
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '1'
			tc.left = 141.000
			tc.right = 191.000
			tc.bottom = -83.000
			tc.top = -33.000
			tc.visible = false
			tc.scaleX = -1.000
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '1'
				tc.left = -52.600
				tc.right = 46.600
				tc.bottom = -83.200
				tc.top = 55.200
				tc.mouseEnabled = true
				tc.img = 0x56100031
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '2'
				tc.left = -55.200
				tc.right = 55.200
				tc.bottom = -90.200
				tc.top = 56.200
				tc.visible = false
				tc.img = 0x33020003
				tp = tc
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '0'
				tc.left = -30.000
				tc.right = 22.000
				tc.bottom = -57.000
				tc.top = 43.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '3'
					tc.left = -39.500
					tc.right = 35.500
					tc.bottom = -30.000
					tc.top = 30.000
					tc.visible = false
					tc.img = 0x5610001f
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '3'
				tc.left = -47.800
				tc.right = 45.800
				tc.bottom = -85.400
				tc.top = 55.400
				tc.visible = false
				tc.scaleX = -1.000
				tc.img = 0x33021005
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = 'dead'
				tc.left = -111.000
				tc.right = -11.000
				tc.bottom = 147.000
				tc.top = 167.000
				tc.visible = false
				tc.text = '0'
				tc.font = 0x61140000
				tc.align = 1
				tc.style = 3
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '10'
		tp = tc
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '1'
			tc.left = -15.000
			tc.right = 35.000
			tc.bottom = -116.000
			tc.top = -66.000
			tc.visible = false
			tc.scaleX = -1.000
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '1'
				tc.left = -128.500
				tc.right = 128.500
				tc.bottom = -45.000
				tc.top = 45.000
				tc.img = 0x56100033
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '2'
				tc.left = -128.500
				tc.right = 128.500
				tc.bottom = -45.500
				tc.top = 45.500
				tc.visible = false
				tc.img = 0x33020004
				tp = tc
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '0'
				tc.left = -62.000
				tc.right = 38.000
				tc.bottom = -37.000
				tc.top = 13.000
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '3'
					tc.left = -30.500
					tc.right = 44.500
					tc.bottom = -29.000
					tc.top = 31.000
					tc.visible = false
					tc.img = 0x5610001f
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '3'
				tc.left = -214.000
				tc.right = 222.000
				tc.bottom = -51.500
				tc.top = 285.500
				tc.visible = false
				tc.img = 0x33021003
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = 'dead'
				tc.left = -111.000
				tc.right = -11.000
				tc.bottom = 147.000
				tc.top = 167.000
				tc.visible = false
				tc.text = '0'
				tc.font = 0x61140000
				tc.align = 1
				tc.style = 3
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '模式'
	tc.left = -100.000
	tc.bottom = -50.000
	tc.top = 50.000
	tc.visible = false
	tc.text = '1'
	tc.font = 0x61200041
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '射箭'
	tc.left = -208.000
	tc.right = -148.000
	tc.bottom = -136.000
	tc.top = -76.000
	tc.mouseEnabled = true
	tc.img = 0x56100041
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '捕猎'
	tc.left = -142.000
	tc.right = -82.000
	tc.bottom = -138.000
	tc.top = -78.000
	tc.mouseEnabled = true
	tc.img = 0x56100042
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '目标'
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
	tc.name = '位置'
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
	tc.name = '总分'
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
	tc.name = '等级1'
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
	tc.name = '等级2'
	tc.left = -100.000
	tc.bottom = -50.000
	tc.top = 50.000
	tc.visible = false
	tc.text = '0'
	tc.font = 0x61200041
	tp = tc
	tp = tp.parent
	--end
tp.c_hunting = setmetatable({}, c_hunting)
