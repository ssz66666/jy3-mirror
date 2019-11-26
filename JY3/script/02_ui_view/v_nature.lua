--[[2013

]]
local G = require 'gf'
local c_button = require 'c_button'
local c_nature = require 'c_nature'
local c_jm = require 'c_jm'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_nature'
tc.left = -320.000
tc.right = 320.000
tc.bottom = -240.000
tc.top = 240.000
tp = tc
	tc = G.loadUI('v_button')
	tp.addChild(tc)
	tc.name = '防下层点击11'
	tc.left = -320.000
	tc.right = 320.000
	tc.bottom = -240.000
	tc.top = 240.000
	tp = tc
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '按钮'
	tp = tc
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '1'
		tc.left = -153.000
		tc.right = -73.000
		tc.bottom = 139.000
		tc.top = 163.000
		tp = tc
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '2'
		tc.left = -56.000
		tc.right = 24.000
		tc.bottom = 139.000
		tc.top = 163.000
		tp = tc
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '3'
		tc.left = 55.000
		tc.right = 135.000
		tc.bottom = 141.000
		tc.top = 165.000
		tp = tc
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '4'
		tc.left = 119.500
		tc.right = 152.500
		tc.bottom = 174.500
		tc.top = 205.500
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '显示'
	tp = tc
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '1'
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '图1'
			tc.left = -184.000
			tc.right = 164.000
			tc.bottom = -217.000
			tc.top = 211.000
			tc.img = 0x560a0019
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '图2'
			tc.pivotX = 0.000
			tc.left = 38.000
			tc.right = 150.000
			tc.bottom = 142.000
			tc.top = 170.000
			tc.img = 0x560a001b
			tp = tc
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '基础属性'
			tc.left = 50.000
			tc.right = 50.000
			tc.bottom = -8.000
			tc.top = -8.000
			tp = tc
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '1'
				tc.left = -115.000
				tc.right = -35.000
				tc.bottom = -18.000
				tc.top = 2.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '0'
				tc.font = 0x612d0000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '2'
				tc.left = 23.000
				tc.right = 103.000
				tc.bottom = -18.000
				tc.top = 2.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '0'
				tc.font = 0x612d0000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '3'
				tc.left = -115.000
				tc.right = -35.000
				tc.bottom = -41.000
				tc.top = -21.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '0'
				tc.font = 0x612d0000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '4'
				tc.left = 23.000
				tc.right = 103.000
				tc.bottom = -41.000
				tc.top = -21.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '0'
				tc.font = 0x612d0000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '5'
				tc.left = -115.000
				tc.right = -35.000
				tc.bottom = -64.000
				tc.top = -44.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '0'
				tc.font = 0x612d0000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '6'
				tc.left = 23.000
				tc.right = 103.000
				tc.bottom = -64.000
				tc.top = -44.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '0'
				tc.font = 0x612d0000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '7'
				tc.left = -115.000
				tc.right = -35.000
				tc.bottom = -87.000
				tc.top = -67.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '0'
				tc.font = 0x612d0000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '8'
				tc.left = 23.000
				tc.right = 103.000
				tc.bottom = -87.000
				tc.top = -67.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '0'
				tc.font = 0x612d0000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '9'
				tc.left = -115.000
				tc.right = -35.000
				tc.bottom = -110.000
				tc.top = -90.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '0'
				tc.font = 0x612d0000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '10'
				tc.left = 23.000
				tc.right = 103.000
				tc.bottom = -110.000
				tc.top = -90.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '0'
				tc.font = 0x612d0000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '11'
				tc.left = -115.000
				tc.right = -35.000
				tc.bottom = -133.000
				tc.top = -113.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '0'
				tc.font = 0x612d0000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '12'
				tc.left = 23.000
				tc.right = 103.000
				tc.bottom = -133.000
				tc.top = -113.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '0'
				tc.font = 0x612d0000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '13'
				tc.left = -115.000
				tc.right = -35.000
				tc.bottom = -156.000
				tc.top = -136.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '0'
				tc.font = 0x612d0000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '14'
				tc.left = 23.000
				tc.right = 103.000
				tc.bottom = -156.000
				tc.top = -136.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '0'
				tc.font = 0x612d0000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '15'
				tc.left = -115.000
				tc.right = -35.000
				tc.bottom = -179.000
				tc.top = -159.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '0'
				tc.font = 0x612d0000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '16'
				tc.left = 23.000
				tc.right = 103.000
				tc.bottom = -179.000
				tc.top = -159.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '0'
				tc.font = 0x612d0000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '生命值'
			tc.pivotX = 0.000
			tc.left = -37.000
			tc.right = 241.000
			tc.bottom = 101.000
			tc.top = 141.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 1
			tc.text = '999999/999999'
			tc.font = 0x61280000
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '内力值'
			tc.pivotX = 0.000
			tc.left = -36.000
			tc.right = 242.000
			tc.bottom = 78.000
			tc.top = 118.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 1
			tc.text = '999999/999999'
			tc.font = 0x61280000
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '等级'
			tc.left = -56.000
			tc.right = 44.000
			tc.bottom = 52.000
			tc.top = 92.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '150'
			tc.font = 0x61280000
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '升级经验'
			tc.pivotX = 0.000
			tc.left = 42.000
			tc.right = 84.000
			tc.bottom = 30.000
			tc.top = 70.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 1
			tc.text = '30'
			tc.font = 0x61280000
			tc.align = 1
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '当前经验'
			tc.pivotX = 1.000
			tc.left = -8.500
			tc.right = 38.500
			tc.bottom = 30.000
			tc.top = 70.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 1
			tc.text = '0/'
			tc.font = 0x61280000
			tc.align = 3
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '修为点'
			tc.pivotX = 0.000
			tc.left = -37.000
			tc.right = 89.000
			tc.bottom = 8.000
			tc.top = 48.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 1
			tc.text = '999999'
			tc.font = 0x61280000
			tc.align = 1
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '被动'
			tc.left = -23.000
			tc.right = 27.000
			tc.bottom = 55.000
			tc.top = 105.000
			tp = tc
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '标签'
				tc.pivotX = 0.000
				tc.left = -149.000
				tc.right = 81.000
				tc.bottom = -93.000
				tc.top = -53.000
				tc.mouseEnabled = true
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.autosize = 1
				tc.text = '被动技能：'
				tc.font = 0x612d0000
				tc.style = 2
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '1'
				tc.pivotX = 0.000
				tc.left = -50.000
				tc.right = 50.000
				tc.bottom = -95.000
				tc.top = -55.000
				tc.mouseEnabled = true
				tc.visible = false
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '破绽'
				tc.font = 0x61280000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '2'
				tc.pivotX = 0.000
				tc.left = -5.000
				tc.right = 95.000
				tc.bottom = -95.000
				tc.top = -55.000
				tc.mouseEnabled = true
				tc.visible = false
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '破绽'
				tc.font = 0x61280000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '3'
				tc.pivotX = 0.000
				tc.left = 40.000
				tc.right = 140.000
				tc.bottom = -95.000
				tc.top = -55.000
				tc.mouseEnabled = true
				tc.visible = false
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '破绽'
				tc.font = 0x61280000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '4'
				tc.pivotX = 0.000
				tc.left = 85.000
				tc.right = 185.000
				tc.bottom = -95.000
				tc.top = -55.000
				tc.mouseEnabled = true
				tc.visible = false
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '破绽'
				tc.font = 0x61280000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '显示'
				tc.bottom = -172.000
				tc.top = -172.000
				tc.visible = false
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = 'c1'
					tc.left = -275.500
					tc.right = -176.500
					tc.bottom = -120.500
					tc.top = 22.500
					tc.img = 0x56160044
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '文本'
					tc.left = -319.000
					tc.right = -129.000
					tc.bottom = -189.000
					tc.top = 87.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '123'
					tc.wrap = true
					tc.font = 0x611e0000
					tc.align = 1
					tc.style = 2
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '2'
		tc.visible = false
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '图1'
			tc.left = -184.000
			tc.right = 164.000
			tc.bottom = -217.000
			tc.top = 211.000
			tc.img = 0x560a001a
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '图2'
			tc.pivotX = 0.000
			tc.left = 39.000
			tc.right = 151.000
			tc.bottom = 142.000
			tc.top = 170.000
			tc.img = 0x560a001b
			tp = tc
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '基础属性'
			tc.left = 4.000
			tc.right = 4.000
			tp = tc
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '1'
				tc.left = -107.000
				tc.right = -27.000
				tc.bottom = -140.000
				tc.top = -120.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '100'
				tc.font = 0x61280000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '2'
				tc.left = 14.000
				tc.right = 94.000
				tc.bottom = -140.000
				tc.top = -120.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '100'
				tc.font = 0x612d0000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '3'
				tc.left = -106.000
				tc.right = -26.000
				tc.bottom = -160.000
				tc.top = -140.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '100'
				tc.font = 0x612d0000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '4'
				tc.left = 14.000
				tc.right = 94.000
				tc.bottom = -160.000
				tc.top = -140.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '100'
				tc.font = 0x612d0000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '5'
				tc.left = -107.000
				tc.right = -27.000
				tc.bottom = -180.000
				tc.top = -160.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '100'
				tc.font = 0x612d0000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '6'
				tc.left = 14.000
				tc.right = 94.000
				tc.bottom = -180.000
				tc.top = -160.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '100'
				tc.font = 0x612d0000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '7'
				tc.left = -68.000
				tc.right = 12.000
				tc.bottom = -140.000
				tc.top = -120.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '100'
				tc.font = 0x612c0000
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '8'
				tc.left = 50.000
				tc.right = 130.000
				tc.bottom = -140.000
				tc.top = -120.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '100'
				tc.font = 0x612d0000
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '10'
				tc.left = -68.000
				tc.right = 12.000
				tc.bottom = -161.000
				tc.top = -141.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '100'
				tc.font = 0x612d0000
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '11'
				tc.left = 51.000
				tc.right = 131.000
				tc.bottom = -161.000
				tc.top = -141.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '100'
				tc.font = 0x612d0000
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '9'
				tc.left = -68.000
				tc.right = 12.000
				tc.bottom = -181.000
				tc.top = -161.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '100'
				tc.font = 0x612d0000
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '12'
				tc.left = 51.000
				tc.right = 131.000
				tc.bottom = -181.000
				tc.top = -161.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '100'
				tc.font = 0x612d0000
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '000'
				tc.left = -52.000
				tc.right = -6.000
				tc.bottom = -142.000
				tc.top = -122.000
				tc.autosize = 1
				tc.text = '(    )'
				tc.font = 0x61110000
				tc.align = 1
				tc.style = 2
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '001'
				tc.left = 68.000
				tc.right = 114.000
				tc.bottom = -164.000
				tc.top = -144.000
				tc.autosize = 1
				tc.text = '(    )'
				tc.font = 0x61110000
				tc.align = 1
				tc.style = 2
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '001'
				tc.left = 68.000
				tc.right = 114.000
				tc.bottom = -182.000
				tc.top = -162.000
				tc.autosize = 1
				tc.text = '(    )'
				tc.font = 0x61110000
				tc.align = 1
				tc.style = 2
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '001'
				tc.left = -52.000
				tc.right = -6.000
				tc.bottom = -163.000
				tc.top = -143.000
				tc.autosize = 1
				tc.text = '(    )'
				tc.font = 0x61110000
				tc.align = 1
				tc.style = 2
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '0011'
				tc.left = -52.000
				tc.right = -6.000
				tc.bottom = -184.000
				tc.top = -164.000
				tc.autosize = 1
				tc.text = '(    )'
				tc.font = 0x61110000
				tc.align = 1
				tc.style = 2
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '0011'
				tc.left = 68.000
				tc.right = 114.000
				tc.bottom = -140.000
				tc.top = -120.000
				tc.autosize = 1
				tc.text = '(    )'
				tc.font = 0x61110000
				tc.align = 1
				tc.style = 2
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '姓名'
			tc.pivotX = 0.000
			tc.left = -30.000
			tc.right = 200.000
			tc.bottom = 95.500
			tc.top = 140.500
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 1
			tc.text = '半瓶神仙醋'
			tc.font = 0x612d0000
			tc.align = 1
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '绰号'
			tc.pivotX = 0.000
			tc.left = -30.000
			tc.right = 292.000
			tc.bottom = 78.000
			tc.top = 118.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 1
			tc.text = '南少林第一武僧'
			tc.font = 0x612d0000
			tc.align = 1
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '门派'
			tc.left = -81.000
			tc.right = 119.000
			tc.bottom = 55.000
			tc.top = 95.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '无门派'
			tc.font = 0x612d0000
			tc.align = 1
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '位阶'
			tc.pivotX = 0.000
			tc.left = -28.000
			tc.right = 91.000
			tc.bottom = 29.000
			tc.top = 69.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 1
			tc.text = '副帮主'
			tc.font = 0x61280000
			tc.align = 1
			tc.wordSpace = -2
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '技能'
			tc.left = -44.000
			tc.right = 48.000
			tc.bottom = 11.000
			tc.top = 45.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 1
			tc.font = 0x612d0000
			tc.align = 1
			tc.style = 2
			tp = tc
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '等级'
				tc.left = -44.000
				tc.right = 156.000
				tc.bottom = -34.000
				tc.top = 34.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '0'
				tc.font = 0x61500000
				tc.align = 3
				tc.style = 2
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '经验'
				tc.left = 44.000
				tc.right = 244.000
				tc.bottom = -35.000
				tc.top = 33.000
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '(0)'
				tc.font = 0x61500000
				tc.lineSpace = -2
				tc.style = 2
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '师承'
			tc.pivotX = 0.000
			tc.left = -31.000
			tc.right = 199.000
			tc.bottom = -15.000
			tc.top = 25.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 1
			tc.text = '半瓶神仙醋'
			tc.font = 0x612d0000
			tc.align = 1
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '妻子'
			tc.pivotX = 0.000
			tc.left = -29.000
			tc.right = 265.000
			tc.bottom = -40.000
			tc.top = 0.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 1
			tc.font = 0x61280000
			tc.align = 1
			tc.wordSpace = -2
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '兄弟'
			tc.pivotX = 0.000
			tc.left = -29.000
			tc.right = 211.000
			tc.bottom = -112.000
			tc.top = -72.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.font = 0x61280000
			tc.align = 1
			tc.wordSpace = -2
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '条目'
			tc.pivotX = 0.000
			tc.left = -142.000
			tc.right = 98.000
			tc.bottom = -111.000
			tc.top = -71.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '结义兄弟：'
			tc.font = 0x612d0000
			tc.align = 1
			tc.wordSpace = -2
			tc.lineSpace = -2
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '名望'
			tc.pivotX = 0.000
			tc.left = -24.500
			tc.right = 44.500
			tc.bottom = -63.000
			tc.top = -23.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 1
			tc.text = '999'
			tc.font = 0x612d0000
			tc.align = 1
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '侠义'
			tc.pivotX = 0.000
			tc.left = -28.000
			tc.right = 41.000
			tc.bottom = -88.000
			tc.top = -48.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 1
			tc.text = '100'
			tc.font = 0x612d0000
			tc.align = 1
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'c1'
			tc.left = 59.500
			tc.right = 134.500
			tc.bottom = 63.000
			tc.top = 87.000
			tc.img = 0x56030020
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'equip'
			tc.left = 27.000
			tc.right = 165.000
			tc.bottom = 55.000
			tc.top = 95.000
			tc.mouseEnabled = true
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 1
			tc.text = '称号薄'
			tc.font = 0x612d0000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '列表'
			tc.left = -211.500
			tc.right = 339.500
			tc.bottom = -177.000
			tc.top = 173.000
			tc.mouseEnabled = true
			tc.visible = false
			tc.img = 0x56160020
			tp = tc
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '称号'
				tc.left = -320.000
				tc.right = -20.000
				tc.bottom = 110.000
				tc.top = 150.000
				tc.mouseEnabled = true
				tc.visible = false
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '南少林第一武僧'
				tc.font = 0x61280000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '1'
				tc.left = -245.000
				tc.right = -95.000
				tc.bottom = 120.000
				tc.top = 140.000
				tc.mouseEnabled = true
				tc.visible = false
				tc.text = '南少林第一武僧'
				tc.font = 0x61140000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '2'
				tc.left = -75.000
				tc.right = 75.000
				tc.bottom = 120.000
				tc.top = 140.000
				tc.mouseEnabled = true
				tc.visible = false
				tc.text = '南少林第一武僧'
				tc.font = 0x61140000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '3'
				tc.left = 95.000
				tc.right = 245.000
				tc.bottom = 120.000
				tc.top = 140.000
				tc.mouseEnabled = true
				tc.visible = false
				tc.text = '南少林第一武僧'
				tc.font = 0x61140000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '4'
				tc.left = -245.000
				tc.right = -95.000
				tc.bottom = 90.000
				tc.top = 110.000
				tc.mouseEnabled = true
				tc.visible = false
				tc.text = '南少林第一武僧'
				tc.font = 0x61140000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '5'
				tc.left = -75.000
				tc.right = 75.000
				tc.bottom = 90.000
				tc.top = 110.000
				tc.mouseEnabled = true
				tc.visible = false
				tc.text = '南少林第一武僧'
				tc.font = 0x61140000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '6'
				tc.left = 95.000
				tc.right = 245.000
				tc.bottom = 90.000
				tc.top = 110.000
				tc.mouseEnabled = true
				tc.visible = false
				tc.text = '南少林第一武僧'
				tc.font = 0x61140000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '7'
				tc.left = -245.000
				tc.right = -95.000
				tc.bottom = 60.000
				tc.top = 80.000
				tc.mouseEnabled = true
				tc.visible = false
				tc.text = '南少林第一武僧'
				tc.font = 0x61140000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '8'
				tc.left = -75.000
				tc.right = 75.000
				tc.bottom = 60.000
				tc.top = 80.000
				tc.mouseEnabled = true
				tc.visible = false
				tc.text = '南少林第一武僧'
				tc.font = 0x61140000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '9'
				tc.left = 95.000
				tc.right = 245.000
				tc.bottom = 60.000
				tc.top = 80.000
				tc.mouseEnabled = true
				tc.visible = false
				tc.text = '南少林第一武僧'
				tc.font = 0x61140000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '10'
				tc.left = -245.000
				tc.right = -95.000
				tc.bottom = 30.000
				tc.top = 50.000
				tc.mouseEnabled = true
				tc.visible = false
				tc.text = '南少林第一武僧'
				tc.font = 0x61140000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '11'
				tc.left = -75.000
				tc.right = 75.000
				tc.bottom = 30.000
				tc.top = 50.000
				tc.mouseEnabled = true
				tc.visible = false
				tc.text = '南少林第一武僧'
				tc.font = 0x61140000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '12'
				tc.left = 95.000
				tc.right = 245.000
				tc.bottom = 30.000
				tc.top = 50.000
				tc.mouseEnabled = true
				tc.visible = false
				tc.text = '南少林第一武僧'
				tc.font = 0x61140000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '13'
				tc.left = -245.000
				tc.right = -95.000
				tc.top = 20.000
				tc.mouseEnabled = true
				tc.visible = false
				tc.text = '南少林第一武僧'
				tc.font = 0x61140000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '14'
				tc.left = -75.000
				tc.right = 75.000
				tc.top = 20.000
				tc.mouseEnabled = true
				tc.visible = false
				tc.text = '南少林第一武僧'
				tc.font = 0x61140000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '15'
				tc.left = 95.000
				tc.right = 245.000
				tc.top = 20.000
				tc.mouseEnabled = true
				tc.visible = false
				tc.text = '南少林第一武僧'
				tc.font = 0x61140000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '16'
				tc.left = -245.000
				tc.right = -95.000
				tc.bottom = -30.000
				tc.top = -10.000
				tc.mouseEnabled = true
				tc.visible = false
				tc.text = '南少林第一武僧'
				tc.font = 0x61140000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '17'
				tc.left = -75.000
				tc.right = 75.000
				tc.bottom = -30.000
				tc.top = -10.000
				tc.mouseEnabled = true
				tc.visible = false
				tc.text = '南少林第一武僧'
				tc.font = 0x61140000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '18'
				tc.left = 95.000
				tc.right = 245.000
				tc.bottom = -30.000
				tc.top = -10.000
				tc.mouseEnabled = true
				tc.visible = false
				tc.text = '南少林第一武僧'
				tc.font = 0x61140000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '19'
				tc.left = -245.000
				tc.right = -95.000
				tc.bottom = -60.000
				tc.top = -40.000
				tc.mouseEnabled = true
				tc.visible = false
				tc.text = '南少林第一武僧'
				tc.font = 0x61140000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '20'
				tc.left = -75.000
				tc.right = 75.000
				tc.bottom = -60.000
				tc.top = -40.000
				tc.mouseEnabled = true
				tc.visible = false
				tc.text = '南少林第一武僧'
				tc.font = 0x61140000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '21'
				tc.left = 95.000
				tc.right = 245.000
				tc.bottom = -60.000
				tc.top = -40.000
				tc.mouseEnabled = true
				tc.visible = false
				tc.text = '南少林第一武僧'
				tc.font = 0x61140000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '22'
				tc.left = -245.000
				tc.right = -95.000
				tc.bottom = -90.000
				tc.top = -70.000
				tc.mouseEnabled = true
				tc.visible = false
				tc.text = '南少林第一武僧'
				tc.font = 0x61140000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '23'
				tc.left = -75.000
				tc.right = 75.000
				tc.bottom = -90.000
				tc.top = -70.000
				tc.mouseEnabled = true
				tc.visible = false
				tc.text = '南少林第一武僧'
				tc.font = 0x61140000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '24'
				tc.left = 95.000
				tc.right = 245.000
				tc.bottom = -90.000
				tc.top = -70.000
				tc.mouseEnabled = true
				tc.visible = false
				tc.text = '南少林第一武僧'
				tc.font = 0x61140000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '25'
				tc.left = -245.000
				tc.right = -95.000
				tc.bottom = -120.000
				tc.top = -100.000
				tc.mouseEnabled = true
				tc.visible = false
				tc.text = '南少林第一武僧'
				tc.font = 0x61140000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '26'
				tc.left = -75.000
				tc.right = 75.000
				tc.bottom = -120.000
				tc.top = -100.000
				tc.mouseEnabled = true
				tc.visible = false
				tc.text = '南少林第一武僧'
				tc.font = 0x61140000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '27'
				tc.left = 95.000
				tc.right = 245.000
				tc.bottom = -120.000
				tc.top = -100.000
				tc.mouseEnabled = true
				tc.visible = false
				tc.text = '南少林第一武僧'
				tc.font = 0x61140000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '28'
				tc.left = -245.000
				tc.right = -95.000
				tc.bottom = -150.000
				tc.top = -130.000
				tc.mouseEnabled = true
				tc.visible = false
				tc.text = '南少林第一武僧'
				tc.font = 0x61140000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '29'
				tc.left = -75.000
				tc.right = 75.000
				tc.bottom = -150.000
				tc.top = -130.000
				tc.mouseEnabled = true
				tc.visible = false
				tc.text = '南少林第一武僧'
				tc.font = 0x61140000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '30'
				tc.left = 95.000
				tc.right = 245.000
				tc.bottom = -150.000
				tc.top = -130.000
				tc.mouseEnabled = true
				tc.visible = false
				tc.text = '南少林第一武僧'
				tc.font = 0x61140000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '返回'
				tc.left = -279.000
				tc.right = -239.000
				tc.bottom = -181.000
				tc.top = -141.000
				tc.mouseEnabled = true
				tc.img = 0x33010024
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '被动'
			tc.left = 15.000
			tc.right = 115.000
			tc.bottom = -28.000
			tc.top = 72.000
			tc.visible = false
			tp = tc
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '技能'
				tc.pivotX = 0.000
				tc.left = 21.000
				tc.right = 121.000
				tc.bottom = -39.000
				tc.top = 1.000
				tc.mouseEnabled = true
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '破绽'
				tc.font = 0x612d0000
				tc.style = 10
				tp = tc
				tp = tp.parent
				--end
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '显示'
				tc.left = -66.000
				tc.right = -66.000
				tc.bottom = -111.000
				tc.top = -111.000
				tc.visible = false
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = 'c1'
					tc.left = -275.500
					tc.right = -176.500
					tc.bottom = -120.500
					tc.top = 22.500
					tc.img = 0x56160044
					tp = tc
					tp = tp.parent
					--end
					tc = G.TextQuad()
					tp.addChild(tc)
					tc.name = '文本'
					tc.left = -319.000
					tc.right = -129.000
					tc.bottom = -189.000
					tc.top = 87.000
					tc.scaleX = 0.500
					tc.scaleY = 0.500
					tc.text = '123'
					tc.wrap = true
					tc.font = 0x611e0000
					tc.align = 1
					tc.style = 2
					tp = tc
					tp = tp.parent
					--end
				tp = tp.parent
				--end
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '3'
		tc.visible = false
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '按钮'
			tc.left = -184.000
			tc.right = 164.000
			tc.bottom = -217.000
			tc.top = 211.000
			tc.img = 0x560a001e
			tp = tc
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = 'tab1'
				tc.left = 286.000
				tc.right = 486.000
				tc.bottom = -20.000
				tc.top = 40.000
				tc.mouseEnabled = true
				tc.scaleX = 0.500
				tc.scaleY = 0.500
				tc.text = '通脉'
				tc.font = 0x61400000
				tc.style = 8
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'c11'
			tc.pivotX = 0.000
			tc.left = -162.500
			tc.right = 150.500
			tc.bottom = 138.000
			tc.top = 172.000
			tc.img = 0x560a001c
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '经脉进度'
			tc.pivotX = 0.000
			tc.left = -132.500
			tc.right = -132.500
			tc.bottom = 57.000
			tc.top = 71.000
			tc.img = 0x560a0020
			tp = tc
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '经脉按钮'
			tp = tc
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '1'
				tc.left = -146.000
				tc.right = -96.000
				tc.bottom = 110.000
				tc.top = 130.000
				tc.alpha = 150
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '闪光'
					tc.left = -29.000
					tc.right = 29.000
					tc.bottom = -15.000
					tc.top = 15.000
					tc.img = 0x33010001
					tp = tc
						tc = G.Quad()
						tp.addChild(tc)
						tc.name = '遮罩'
						tc.left = -25.000
						tc.right = 25.000
						tc.bottom = -10.000
						tc.top = 10.000
						tc.alpha = 150
						tc.img = 0x560a0016
						tp = tc
						tp = tp.parent
						--end
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '打通'
					tc.left = -25.000
					tc.right = 25.000
					tc.bottom = -15.000
					tc.top = 15.000
					tc.img = 0x33010029
					tp = tc
					tp = tp.parent
					--end
				com = tp.c_button
				com['btn_class'] =0.000
				com['customsize'] =true
				com['img_hover'] =1443495957.000
				com['img_toggle'] =1443495958.000
				com['img_togEx'] =0.000
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '5'
				tc.left = -146.000
				tc.right = -96.000
				tc.bottom = 82.000
				tc.top = 102.000
				tc.alpha = 150
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '闪光'
					tc.left = -29.000
					tc.right = 29.000
					tc.bottom = -15.000
					tc.top = 15.000
					tc.visible = false
					tc.img = 0x33010001
					tp = tc
						tc = G.Quad()
						tp.addChild(tc)
						tc.name = '遮罩'
						tc.left = -25.000
						tc.right = 25.000
						tc.bottom = -10.000
						tc.top = 10.000
						tc.alpha = 150
						tc.img = 0x560a0016
						tp = tc
						tp = tp.parent
						--end
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '打通'
					tc.left = -25.000
					tc.right = 25.000
					tc.bottom = -15.000
					tc.top = 15.000
					tc.img = 0x33010029
					tp = tc
					tp = tp.parent
					--end
				com = tp.c_button
				com['btn_class'] =0.000
				com['customsize'] =true
				com['img_hover'] =1443495957.000
				com['img_toggle'] =1443495958.000
				com['img_togEx'] =0.000
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '6'
				tc.left = -91.000
				tc.right = -41.000
				tc.bottom = 82.000
				tc.top = 102.000
				tc.alpha = 150
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '闪光'
					tc.left = -29.000
					tc.right = 29.000
					tc.bottom = -15.000
					tc.top = 15.000
					tc.visible = false
					tc.img = 0x33010001
					tp = tc
						tc = G.Quad()
						tp.addChild(tc)
						tc.name = '遮罩'
						tc.left = -25.000
						tc.right = 25.000
						tc.bottom = -10.000
						tc.top = 10.000
						tc.alpha = 150
						tc.img = 0x560a0016
						tp = tc
						tp = tp.parent
						--end
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '打通'
					tc.left = -25.000
					tc.right = 25.000
					tc.bottom = -15.000
					tc.top = 15.000
					tc.img = 0x33010029
					tp = tc
					tp = tp.parent
					--end
				com = tp.c_button
				com['btn_class'] =0.000
				com['customsize'] =true
				com['img_hover'] =1443495957.000
				com['img_toggle'] =1443495958.000
				com['img_togEx'] =0.000
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '7'
				tc.left = -35.000
				tc.right = 15.000
				tc.bottom = 82.000
				tc.top = 102.000
				tc.alpha = 150
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '闪光'
					tc.left = -29.000
					tc.right = 29.000
					tc.bottom = -15.000
					tc.top = 15.000
					tc.visible = false
					tc.img = 0x33010001
					tp = tc
						tc = G.Quad()
						tp.addChild(tc)
						tc.name = '遮罩'
						tc.left = -25.000
						tc.right = 25.000
						tc.bottom = -10.000
						tc.top = 10.000
						tc.alpha = 150
						tc.img = 0x560a0016
						tp = tc
						tp = tp.parent
						--end
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '打通'
					tc.left = -25.000
					tc.right = 25.000
					tc.bottom = -15.000
					tc.top = 15.000
					tc.img = 0x33010029
					tp = tc
					tp = tp.parent
					--end
				com = tp.c_button
				com['btn_class'] =0.000
				com['customsize'] =true
				com['img_hover'] =1443495957.000
				com['img_toggle'] =1443495958.000
				com['img_togEx'] =0.000
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '8'
				tc.left = 21.000
				tc.right = 71.000
				tc.bottom = 82.000
				tc.top = 102.000
				tc.alpha = 150
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '闪光'
					tc.left = -29.000
					tc.right = 29.000
					tc.bottom = -15.000
					tc.top = 15.000
					tc.visible = false
					tc.img = 0x33010001
					tp = tc
						tc = G.Quad()
						tp.addChild(tc)
						tc.name = '遮罩'
						tc.left = -25.000
						tc.right = 25.000
						tc.bottom = -10.000
						tc.top = 10.000
						tc.alpha = 150
						tc.img = 0x560a0016
						tp = tc
						tp = tp.parent
						--end
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '打通'
					tc.left = -25.000
					tc.right = 25.000
					tc.bottom = -15.000
					tc.top = 15.000
					tc.img = 0x33010029
					tp = tc
					tp = tp.parent
					--end
				com = tp.c_button
				com['btn_class'] =0.000
				com['customsize'] =true
				com['img_hover'] =1443495957.000
				com['img_toggle'] =1443495958.000
				com['img_togEx'] =0.000
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '2'
				tc.left = -91.000
				tc.right = -41.000
				tc.bottom = 110.000
				tc.top = 130.000
				tc.alpha = 150
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '闪光'
					tc.left = -29.000
					tc.right = 29.000
					tc.bottom = -15.000
					tc.top = 15.000
					tc.visible = false
					tc.img = 0x33010001
					tp = tc
						tc = G.Quad()
						tp.addChild(tc)
						tc.name = '遮罩'
						tc.left = -25.000
						tc.right = 25.000
						tc.bottom = -10.000
						tc.top = 10.000
						tc.alpha = 150
						tc.img = 0x560a0016
						tp = tc
						tp = tp.parent
						--end
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '打通'
					tc.left = -25.000
					tc.right = 25.000
					tc.bottom = -15.000
					tc.top = 15.000
					tc.img = 0x33010029
					tp = tc
					tp = tp.parent
					--end
				com = tp.c_button
				com['btn_class'] =0.000
				com['customsize'] =true
				com['img_hover'] =1443495957.000
				com['img_toggle'] =1443495958.000
				com['img_togEx'] =0.000
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '3'
				tc.left = -35.000
				tc.right = 15.000
				tc.bottom = 108.000
				tc.top = 128.000
				tc.alpha = 150
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '闪光'
					tc.left = -29.000
					tc.right = 29.000
					tc.bottom = -15.000
					tc.top = 15.000
					tc.visible = false
					tc.img = 0x33010001
					tp = tc
						tc = G.Quad()
						tp.addChild(tc)
						tc.name = '遮罩'
						tc.left = -25.000
						tc.right = 25.000
						tc.bottom = -10.000
						tc.top = 10.000
						tc.alpha = 150
						tc.img = 0x560a0016
						tp = tc
						tp = tp.parent
						--end
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '打通'
					tc.left = -25.000
					tc.right = 25.000
					tc.bottom = -15.000
					tc.top = 15.000
					tc.img = 0x33010029
					tp = tc
					tp = tp.parent
					--end
				com = tp.c_button
				com['btn_class'] =0.000
				com['customsize'] =true
				com['img_hover'] =1443495957.000
				com['img_toggle'] =1443495958.000
				com['img_togEx'] =0.000
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '4'
				tc.left = 21.000
				tc.right = 71.000
				tc.bottom = 108.000
				tc.top = 128.000
				tc.alpha = 150
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '闪光'
					tc.left = -29.000
					tc.right = 29.000
					tc.bottom = -15.000
					tc.top = 15.000
					tc.visible = false
					tc.img = 0x33010001
					tp = tc
						tc = G.Quad()
						tp.addChild(tc)
						tc.name = '遮罩'
						tc.left = -25.000
						tc.right = 25.000
						tc.bottom = -10.000
						tc.top = 10.000
						tc.alpha = 150
						tc.img = 0x560a0016
						tp = tc
						tp = tp.parent
						--end
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '打通'
					tc.left = -25.000
					tc.right = 25.000
					tc.bottom = -15.000
					tc.top = 15.000
					tc.img = 0x33010029
					tp = tc
					tp = tp.parent
					--end
				com = tp.c_button
				com['btn_class'] =0.000
				com['customsize'] =true
				com['img_hover'] =1443495957.000
				com['img_toggle'] =1443495958.000
				com['img_togEx'] =0.000
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '9'
				tc.left = 78.500
				tc.right = 131.500
				tc.bottom = 80.500
				tc.top = 133.500
				tc.alpha = 100
				tp = tc
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '闪光'
					tc.left = -26.500
					tc.right = 26.500
					tc.bottom = -26.500
					tc.top = 26.500
					tc.visible = false
					tc.img = 0x33010001
					tp = tc
						tc = G.Quad()
						tp.addChild(tc)
						tc.name = '遮罩1'
						tc.left = -26.500
						tc.right = 26.500
						tc.bottom = -26.500
						tc.top = 26.500
						tc.alpha = 150
						tc.img = 0x560a0016
						tp = tc
						tp = tp.parent
						--end
					tp = tp.parent
					--end
					tc = G.Quad()
					tp.addChild(tc)
					tc.name = '打通'
					tc.left = -27.500
					tc.right = 27.500
					tc.bottom = -27.500
					tc.top = 27.500
					tc.img = 0x33010029
					tp = tc
					tp = tp.parent
					--end
				com = tp.c_button
				com['customsize'] =true
				com['img_hover'] =1443495957.000
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '经脉系统'
			tp = tc
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '图片'
				tc.left = -37.000
				tc.right = -37.000
				tc.bottom = -13.000
				tc.top = -13.000
				tp = tc
					tc = G.loadUI('v_empty')
					tp.addChild(tc)
					tc.name = '1'
					tp = tc
						tc = G.Quad()
						tp.addChild(tc)
						tc.name = 'c1'
						tc.left = -60.000
						tc.right = -36.000
						tc.bottom = -140.000
						tc.top = 30.000
						tc.img = 0x560a0024
						tp = tc
						tp = tp.parent
						--end
						tc = G.Quad()
						tp.addChild(tc)
						tc.name = 'c2'
						tc.left = 25.000
						tc.right = 169.000
						tc.bottom = -173.500
						tc.top = 51.500
						tc.img = 0x560a002c
						tp = tc
						tp = tp.parent
						--end
					tp = tp.parent
					--end
					tc = G.loadUI('v_empty')
					tp.addChild(tc)
					tc.name = '2'
					tc.visible = false
					tp = tc
						tc = G.Quad()
						tp.addChild(tc)
						tc.name = 'c1'
						tc.left = -60.000
						tc.right = -36.000
						tc.bottom = -140.000
						tc.top = 30.000
						tc.img = 0x560a0025
						tp = tc
						tp = tp.parent
						--end
						tc = G.Quad()
						tp.addChild(tc)
						tc.name = 'c2'
						tc.left = 25.000
						tc.right = 169.000
						tc.bottom = -173.500
						tc.top = 51.500
						tc.img = 0x560a0036
						tp = tc
						tp = tp.parent
						--end
					tp = tp.parent
					--end
					tc = G.loadUI('v_empty')
					tp.addChild(tc)
					tc.name = '3'
					tc.visible = false
					tp = tc
						tc = G.Quad()
						tp.addChild(tc)
						tc.name = 'c1'
						tc.left = -63.000
						tc.right = -33.000
						tc.bottom = -115.000
						tc.top = 5.000
						tc.img = 0x560a0026
						tp = tc
						tp = tp.parent
						--end
						tc = G.Quad()
						tp.addChild(tc)
						tc.name = 'c2'
						tc.left = 25.000
						tc.right = 169.000
						tc.bottom = -173.500
						tc.top = 51.500
						tc.img = 0x560a002f
						tp = tc
						tp = tp.parent
						--end
					tp = tp.parent
					--end
					tc = G.loadUI('v_empty')
					tp.addChild(tc)
					tc.name = '4'
					tc.visible = false
					tp = tc
						tc = G.Quad()
						tp.addChild(tc)
						tc.name = 'c1'
						tc.left = -51.500
						tc.right = -44.500
						tc.bottom = -140.000
						tc.top = 30.000
						tc.img = 0x560a0027
						tp = tc
						tp = tp.parent
						--end
						tc = G.Quad()
						tp.addChild(tc)
						tc.name = 'c2'
						tc.left = 25.000
						tc.right = 169.000
						tc.bottom = -173.500
						tc.top = 51.500
						tc.img = 0x560a0032
						tp = tc
						tp = tp.parent
						--end
					tp = tp.parent
					--end
					tc = G.loadUI('v_empty')
					tp.addChild(tc)
					tc.name = '5'
					tc.visible = false
					tp = tc
						tc = G.Quad()
						tp.addChild(tc)
						tc.name = 'c1'
						tc.left = -60.000
						tc.right = -36.000
						tc.bottom = -140.000
						tc.top = 30.000
						tc.img = 0x560a0028
						tp = tc
						tp = tp.parent
						--end
						tc = G.Quad()
						tp.addChild(tc)
						tc.name = 'c2'
						tc.left = 25.000
						tc.right = 169.000
						tc.bottom = -173.500
						tc.top = 51.500
						tc.img = 0x560a002c
						tp = tc
						tp = tp.parent
						--end
					tp = tp.parent
					--end
					tc = G.loadUI('v_empty')
					tp.addChild(tc)
					tc.name = '6'
					tc.visible = false
					tp = tc
						tc = G.Quad()
						tp.addChild(tc)
						tc.name = 'c1'
						tc.left = -60.000
						tc.right = -36.000
						tc.bottom = -140.000
						tc.top = 30.000
						tc.img = 0x560a0029
						tp = tc
						tp = tp.parent
						--end
						tc = G.Quad()
						tp.addChild(tc)
						tc.name = 'c2'
						tc.left = 25.000
						tc.right = 169.000
						tc.bottom = -173.500
						tc.top = 51.500
						tc.img = 0x560a0036
						tp = tc
						tp = tp.parent
						--end
					tp = tp.parent
					--end
					tc = G.loadUI('v_empty')
					tp.addChild(tc)
					tc.name = '7'
					tc.visible = false
					tp = tc
						tc = G.Quad()
						tp.addChild(tc)
						tc.name = 'c1'
						tc.left = -63.000
						tc.right = -33.000
						tc.bottom = -115.000
						tc.top = 5.000
						tc.img = 0x560a002a
						tp = tc
						tp = tp.parent
						--end
						tc = G.Quad()
						tp.addChild(tc)
						tc.name = 'c2'
						tc.left = 25.000
						tc.right = 169.000
						tc.bottom = -173.500
						tc.top = 51.500
						tc.img = 0x560a0037
						tp = tc
						tp = tp.parent
						--end
					tp = tp.parent
					--end
					tc = G.loadUI('v_empty')
					tp.addChild(tc)
					tc.name = '8'
					tc.visible = false
					tp = tc
						tc = G.Quad()
						tp.addChild(tc)
						tc.name = 'c1'
						tc.left = -51.500
						tc.right = -44.500
						tc.bottom = -140.000
						tc.top = 30.000
						tc.img = 0x560a0027
						tp = tc
						tp = tp.parent
						--end
						tc = G.Quad()
						tp.addChild(tc)
						tc.name = 'c2'
						tc.left = 25.000
						tc.right = 169.000
						tc.bottom = -173.500
						tc.top = 51.500
						tc.img = 0x560a0031
						tp = tc
						tp = tp.parent
						--end
					tp = tp.parent
					--end
					tc = G.loadUI('v_empty')
					tp.addChild(tc)
					tc.name = '9'
					tc.visible = false
					tp = tc
						tc = G.Quad()
						tp.addChild(tc)
						tc.name = 'c1'
						tc.left = -70.500
						tc.right = -25.500
						tc.bottom = -140.000
						tc.top = 30.000
						tc.img = 0x560a002b
						tp = tc
						tp = tp.parent
						--end
						tc = G.Quad()
						tp.addChild(tc)
						tc.name = 'c2'
						tc.left = 25.000
						tc.right = 169.000
						tc.bottom = -173.500
						tc.top = 51.500
						tc.img = 0x560a003a
						tp = tc
						tp = tp.parent
						--end
					tp = tp.parent
					--end
				tp = tp.parent
				--end
				tc = G.loadUI('v_empty')
				tp.addChild(tc)
				tc.name = '按钮'
				tp = tc
					tc = G.loadUI('v_empty')
					tp.addChild(tc)
					tc.name = '1'
					tc.left = -36.000
					tc.right = -36.000
					tc.bottom = -14.000
					tc.top = -14.000
					tp = tc
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '1'
						tc.left = -44.000
						tc.right = -38.000
						tc.bottom = 13.000
						tc.top = 19.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '2'
						tc.left = -45.000
						tc.right = -39.000
						tc.bottom = 20.000
						tc.top = 26.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '3'
						tc.left = -48.000
						tc.right = -42.000
						tc.bottom = 26.000
						tc.top = 32.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '4'
						tc.left = -54.000
						tc.right = -48.000
						tc.bottom = 26.000
						tc.top = 32.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '5'
						tc.left = -60.000
						tc.right = -54.000
						tc.bottom = 23.000
						tc.top = 29.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '6'
						tc.left = -61.000
						tc.right = -55.000
						tc.bottom = 17.000
						tc.top = 23.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '7'
						tc.left = -53.000
						tc.right = -47.000
						tc.bottom = 20.000
						tc.top = 26.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '8'
						tc.left = -51.000
						tc.right = -45.000
						tc.bottom = 13.000
						tc.top = 19.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '9'
						tc.left = -52.000
						tc.right = -44.000
						tc.bottom = 5.000
						tc.top = 13.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '10'
						tc.left = -44.000
						tc.right = -36.000
						tc.bottom = -4.000
						tc.top = 4.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '11'
						tc.left = -44.000
						tc.right = -36.000
						tc.bottom = -13.000
						tc.top = -5.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '12'
						tc.left = -46.000
						tc.right = -38.000
						tc.bottom = -22.000
						tc.top = -14.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '13'
						tc.left = -47.000
						tc.right = -39.000
						tc.bottom = -31.000
						tc.top = -23.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '14'
						tc.left = -48.000
						tc.right = -40.000
						tc.bottom = -40.000
						tc.top = -32.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '15'
						tc.left = -48.000
						tc.right = -40.000
						tc.bottom = -49.000
						tc.top = -41.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '16'
						tc.left = -49.000
						tc.right = -41.000
						tc.bottom = -58.000
						tc.top = -50.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '17'
						tc.left = -52.000
						tc.right = -44.000
						tc.bottom = -67.000
						tc.top = -59.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '18'
						tc.left = -52.000
						tc.right = -44.000
						tc.bottom = -76.000
						tc.top = -68.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '19'
						tc.left = -53.000
						tc.right = -45.000
						tc.bottom = -85.000
						tc.top = -77.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '20'
						tc.left = -53.000
						tc.right = -45.000
						tc.bottom = -96.000
						tc.top = -88.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '21'
						tc.left = -48.000
						tc.right = -40.000
						tc.bottom = -104.000
						tc.top = -96.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '22'
						tc.left = -47.000
						tc.right = -39.000
						tc.bottom = -113.000
						tc.top = -105.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '23'
						tc.left = -49.000
						tc.right = -41.000
						tc.bottom = -124.000
						tc.top = -116.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '24'
						tc.left = -51.000
						tc.right = -43.000
						tc.bottom = -137.000
						tc.top = -129.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.color = 0xe38959
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						tp = tp.parent
						--end
					tp = tp.parent
					--end
					tc = G.loadUI('v_empty')
					tp.addChild(tc)
					tc.name = '2'
					tc.left = -36.000
					tc.right = -36.000
					tc.bottom = -13.000
					tc.top = -13.000
					tc.visible = false
					tp = tc
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '1'
						tc.left = -45.000
						tc.right = -37.000
						tc.bottom = 23.000
						tc.top = 31.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '2'
						tc.left = -48.000
						tc.right = -40.000
						tc.bottom = 13.000
						tc.top = 21.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '3'
						tc.left = -52.000
						tc.right = -44.000
						tc.bottom = 3.000
						tc.top = 11.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '4'
						tc.left = -51.000
						tc.right = -43.000
						tc.bottom = -7.000
						tc.top = 1.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '5'
						tc.left = -50.000
						tc.right = -42.000
						tc.bottom = -17.000
						tc.top = -9.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '6'
						tc.left = -52.000
						tc.right = -44.000
						tc.bottom = -27.000
						tc.top = -19.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '7'
						tc.left = -52.000
						tc.right = -44.000
						tc.bottom = -37.000
						tc.top = -29.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '8'
						tc.left = -53.000
						tc.right = -45.000
						tc.bottom = -47.000
						tc.top = -39.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '9'
						tc.left = -56.000
						tc.right = -48.000
						tc.bottom = -57.000
						tc.top = -49.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '10'
						tc.left = -60.000
						tc.right = -52.000
						tc.bottom = -67.000
						tc.top = -59.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '11'
						tc.left = -61.000
						tc.right = -53.000
						tc.bottom = -77.000
						tc.top = -69.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '12'
						tc.left = -61.000
						tc.right = -53.000
						tc.bottom = -87.000
						tc.top = -79.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '13'
						tc.left = -60.000
						tc.right = -52.000
						tc.bottom = -97.000
						tc.top = -89.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '14'
						tc.left = -62.000
						tc.right = -54.000
						tc.bottom = -109.000
						tc.top = -101.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '15'
						tc.left = -62.000
						tc.right = -54.000
						tc.bottom = -124.000
						tc.top = -116.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '16'
						tc.left = -61.000
						tc.right = -53.000
						tc.bottom = -137.000
						tc.top = -129.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.color = 0xe38959
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
					tp = tp.parent
					--end
					tc = G.loadUI('v_empty')
					tp.addChild(tc)
					tc.name = '3'
					tc.left = -36.000
					tc.right = -36.000
					tc.bottom = -12.000
					tc.top = -12.000
					tc.visible = false
					tp = tc
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '1'
						tc.left = -68.000
						tc.right = -60.000
						tc.bottom = -25.000
						tc.top = -17.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '2'
						tc.left = -62.000
						tc.right = -54.000
						tc.bottom = -19.000
						tc.top = -11.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '3'
						tc.left = -56.000
						tc.right = -48.000
						tc.bottom = -12.000
						tc.top = -4.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '4'
						tc.left = -48.500
						tc.right = -41.500
						tc.bottom = -6.500
						tc.top = 0.500
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '5'
						tc.left = -42.500
						tc.right = -35.500
						tc.bottom = -10.500
						tc.top = -3.500
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '6'
						tc.left = -40.000
						tc.right = -32.000
						tc.bottom = -19.000
						tc.top = -11.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '7'
						tc.left = -40.000
						tc.right = -32.000
						tc.bottom = -27.000
						tc.top = -19.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '8'
						tc.left = -41.000
						tc.right = -33.000
						tc.bottom = -35.000
						tc.top = -27.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '9'
						tc.left = -42.000
						tc.right = -34.000
						tc.bottom = -43.000
						tc.top = -35.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '10'
						tc.left = -42.000
						tc.right = -34.000
						tc.bottom = -51.000
						tc.top = -43.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '11'
						tc.left = -42.000
						tc.right = -34.000
						tc.bottom = -59.000
						tc.top = -51.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '12'
						tc.left = -42.000
						tc.right = -34.000
						tc.bottom = -67.000
						tc.top = -59.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '13'
						tc.left = -41.000
						tc.right = -33.000
						tc.bottom = -75.000
						tc.top = -67.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '14'
						tc.left = -40.000
						tc.right = -32.000
						tc.bottom = -83.000
						tc.top = -75.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '15'
						tc.left = -41.000
						tc.right = -33.000
						tc.bottom = -91.000
						tc.top = -83.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '16'
						tc.left = -40.000
						tc.right = -32.000
						tc.bottom = -100.000
						tc.top = -92.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '17'
						tc.left = -46.000
						tc.right = -38.000
						tc.bottom = -105.000
						tc.top = -97.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '18'
						tc.left = -51.000
						tc.right = -43.000
						tc.bottom = -111.000
						tc.top = -103.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '19'
						tc.left = -50.000
						tc.right = -42.000
						tc.bottom = -118.000
						tc.top = -110.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.color = 0xe38959
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						com['color_disable'] =0.000
						tp = tp.parent
						--end
					tp = tp.parent
					--end
					tc = G.loadUI('v_empty')
					tp.addChild(tc)
					tc.name = '4'
					tc.left = -37.000
					tc.right = -37.000
					tc.bottom = -14.000
					tc.top = -14.000
					tc.visible = false
					tp = tc
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '1'
						tc.left = -52.500
						tc.right = -45.500
						tc.bottom = 24.500
						tc.top = 31.500
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '2'
						tc.left = -52.500
						tc.right = -45.500
						tc.bottom = 17.500
						tc.top = 24.500
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '3'
						tc.left = -52.500
						tc.right = -45.500
						tc.bottom = 10.500
						tc.top = 17.500
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '4'
						tc.left = -52.500
						tc.right = -45.500
						tc.bottom = 3.500
						tc.top = 10.500
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '5'
						tc.left = -52.500
						tc.right = -45.500
						tc.bottom = -3.500
						tc.top = 3.500
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '6'
						tc.left = -52.500
						tc.right = -45.500
						tc.bottom = -10.500
						tc.top = -3.500
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '7'
						tc.left = -52.500
						tc.right = -45.500
						tc.bottom = -17.500
						tc.top = -10.500
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '8'
						tc.left = -52.500
						tc.right = -45.500
						tc.bottom = -24.500
						tc.top = -17.500
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '9'
						tc.left = -52.500
						tc.right = -45.500
						tc.bottom = -31.500
						tc.top = -24.500
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '10'
						tc.left = -52.500
						tc.right = -45.500
						tc.bottom = -38.500
						tc.top = -31.500
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '11'
						tc.left = -52.500
						tc.right = -45.500
						tc.bottom = -45.500
						tc.top = -38.500
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '12'
						tc.left = -52.500
						tc.right = -45.500
						tc.bottom = -52.500
						tc.top = -45.500
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '13'
						tc.left = -52.500
						tc.right = -45.500
						tc.bottom = -59.500
						tc.top = -52.500
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '14'
						tc.left = -52.500
						tc.right = -45.500
						tc.bottom = -66.500
						tc.top = -59.500
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '15'
						tc.left = -52.500
						tc.right = -45.500
						tc.bottom = -73.500
						tc.top = -66.500
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '16'
						tc.left = -52.500
						tc.right = -45.500
						tc.bottom = -80.500
						tc.top = -73.500
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '17'
						tc.left = -52.500
						tc.right = -45.500
						tc.bottom = -87.500
						tc.top = -80.500
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '18'
						tc.left = -52.500
						tc.right = -45.500
						tc.bottom = -94.500
						tc.top = -87.500
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '19'
						tc.left = -52.500
						tc.right = -45.500
						tc.bottom = -101.500
						tc.top = -94.500
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '20'
						tc.left = -52.500
						tc.right = -45.500
						tc.bottom = -108.500
						tc.top = -101.500
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '21'
						tc.left = -52.500
						tc.right = -45.500
						tc.bottom = -115.500
						tc.top = -108.500
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '22'
						tc.left = -52.500
						tc.right = -45.500
						tc.bottom = -122.500
						tc.top = -115.500
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '23'
						tc.left = -52.500
						tc.right = -45.500
						tc.bottom = -129.500
						tc.top = -122.500
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '24'
						tc.left = -53.000
						tc.right = -45.000
						tc.bottom = -137.000
						tc.top = -129.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.color = 0xe38959
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['color_disable'] =4657524.000
						tp = tp.parent
						--end
					tp = tp.parent
					--end
					tc = G.loadUI('v_empty')
					tp.addChild(tc)
					tc.name = '5'
					tc.left = -37.000
					tc.right = -37.000
					tc.bottom = -15.000
					tc.top = -15.000
					tc.visible = false
					tp = tc
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '1'
						tc.left = -44.000
						tc.right = -36.000
						tc.bottom = 16.000
						tc.top = 24.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '2'
						tc.left = -53.000
						tc.right = -45.000
						tc.bottom = 25.000
						tc.top = 33.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '3'
						tc.left = -61.000
						tc.right = -53.000
						tc.bottom = 23.000
						tc.top = 31.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '4'
						tc.left = -61.000
						tc.right = -53.000
						tc.bottom = 15.000
						tc.top = 23.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '5'
						tc.left = -58.000
						tc.right = -50.000
						tc.bottom = 7.000
						tc.top = 15.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '6'
						tc.left = -49.000
						tc.right = -41.000
						tc.bottom = -1.000
						tc.top = 7.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '7'
						tc.left = -46.000
						tc.right = -38.000
						tc.bottom = -9.000
						tc.top = -1.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '8'
						tc.left = -46.000
						tc.right = -38.000
						tc.bottom = -17.000
						tc.top = -9.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '9'
						tc.left = -47.000
						tc.right = -39.000
						tc.bottom = -25.000
						tc.top = -17.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '10'
						tc.left = -48.000
						tc.right = -40.000
						tc.bottom = -34.000
						tc.top = -26.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '11'
						tc.left = -54.000
						tc.right = -46.000
						tc.bottom = -41.000
						tc.top = -33.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '12'
						tc.left = -52.000
						tc.right = -44.000
						tc.bottom = -136.000
						tc.top = -128.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '13'
						tc.left = -61.000
						tc.right = -53.000
						tc.bottom = -53.000
						tc.top = -45.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '14'
						tc.left = -60.000
						tc.right = -52.000
						tc.bottom = -61.000
						tc.top = -53.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '15'
						tc.left = -60.000
						tc.right = -52.000
						tc.bottom = -69.000
						tc.top = -61.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '16'
						tc.left = -59.000
						tc.right = -51.000
						tc.bottom = -76.000
						tc.top = -68.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '17'
						tc.left = -54.000
						tc.right = -46.000
						tc.bottom = -84.000
						tc.top = -76.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '18'
						tc.left = -52.000
						tc.right = -44.000
						tc.bottom = -92.000
						tc.top = -84.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '19'
						tc.left = -52.000
						tc.right = -44.000
						tc.bottom = -100.000
						tc.top = -92.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '20'
						tc.left = -51.000
						tc.right = -43.000
						tc.bottom = -108.000
						tc.top = -100.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '21'
						tc.left = -51.000
						tc.right = -43.000
						tc.bottom = -116.000
						tc.top = -108.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '22'
						tc.left = -52.000
						tc.right = -44.000
						tc.bottom = -126.000
						tc.top = -118.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '23'
						tc.left = -61.000
						tc.right = -53.000
						tc.bottom = -137.000
						tc.top = -129.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.color = 0xe38959
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						tp = tp.parent
						--end
					tp = tp.parent
					--end
					tc = G.loadUI('v_empty')
					tp.addChild(tc)
					tc.name = '6'
					tc.left = -37.000
					tc.right = -37.000
					tc.bottom = -15.000
					tc.top = -15.000
					tc.visible = false
					tp = tc
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '1'
						tc.left = -42.000
						tc.right = -34.000
						tc.bottom = 25.000
						tc.top = 33.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '2'
						tc.left = -46.000
						tc.right = -38.000
						tc.bottom = 18.000
						tc.top = 26.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '3'
						tc.left = -45.000
						tc.right = -37.000
						tc.bottom = 10.000
						tc.top = 18.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '4'
						tc.left = -46.000
						tc.right = -38.000
						tc.bottom = 2.000
						tc.top = 10.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '5'
						tc.left = -53.000
						tc.right = -45.000
						tc.bottom = -119.000
						tc.top = -111.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '6'
						tc.left = -47.000
						tc.right = -39.000
						tc.bottom = -11.000
						tc.top = -3.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '7'
						tc.left = -46.000
						tc.right = -38.000
						tc.bottom = -20.000
						tc.top = -12.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '8'
						tc.left = -44.000
						tc.right = -36.000
						tc.bottom = -27.000
						tc.top = -19.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '9'
						tc.left = -54.000
						tc.right = -46.000
						tc.bottom = -104.000
						tc.top = -96.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '10'
						tc.left = -55.000
						tc.right = -47.000
						tc.bottom = -130.000
						tc.top = -122.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '11'
						tc.left = -46.000
						tc.right = -38.000
						tc.bottom = -51.000
						tc.top = -43.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '12'
						tc.left = -46.000
						tc.right = -38.000
						tc.bottom = -59.000
						tc.top = -51.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '13'
						tc.left = -48.000
						tc.right = -40.000
						tc.bottom = -66.000
						tc.top = -58.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '14'
						tc.left = -50.000
						tc.right = -42.000
						tc.bottom = -73.000
						tc.top = -65.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '15'
						tc.left = -52.000
						tc.right = -44.000
						tc.bottom = -80.000
						tc.top = -72.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '16'
						tc.left = -43.000
						tc.right = -35.000
						tc.bottom = -40.000
						tc.top = -32.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '17'
						tc.left = -52.000
						tc.right = -44.000
						tc.bottom = -94.000
						tc.top = -86.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '18'
						tc.left = -62.000
						tc.right = -54.000
						tc.bottom = -137.000
						tc.top = -129.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.color = 0xe38959
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						tp = tp.parent
						--end
					tp = tp.parent
					--end
					tc = G.loadUI('v_empty')
					tp.addChild(tc)
					tc.name = '7'
					tc.left = -36.000
					tc.right = -36.000
					tc.bottom = -14.000
					tc.top = -14.000
					tc.visible = false
					tp = tc
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '1'
						tc.left = -64.000
						tc.right = -56.000
						tc.bottom = 7.000
						tc.top = 15.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '2'
						tc.left = -64.000
						tc.right = -56.000
						tc.top = 8.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '3'
						tc.left = -57.000
						tc.right = -49.000
						tc.bottom = -4.000
						tc.top = 4.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '4'
						tc.left = -50.000
						tc.right = -42.000
						tc.bottom = -10.000
						tc.top = -2.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '5'
						tc.left = -48.000
						tc.right = -40.000
						tc.bottom = -17.000
						tc.top = -9.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '6'
						tc.left = -50.000
						tc.right = -42.000
						tc.bottom = -24.000
						tc.top = -16.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '7'
						tc.left = -49.000
						tc.right = -41.000
						tc.bottom = -32.000
						tc.top = -24.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '8'
						tc.left = -55.000
						tc.right = -47.000
						tc.bottom = -38.000
						tc.top = -30.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '9'
						tc.left = -62.000
						tc.right = -54.000
						tc.bottom = -45.000
						tc.top = -37.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '10'
						tc.left = -64.000
						tc.right = -56.000
						tc.bottom = -53.000
						tc.top = -45.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '11'
						tc.left = -65.000
						tc.right = -57.000
						tc.bottom = -61.000
						tc.top = -53.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '12'
						tc.left = -61.000
						tc.right = -53.000
						tc.bottom = -69.000
						tc.top = -61.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '13'
						tc.left = -60.000
						tc.right = -52.000
						tc.bottom = -77.000
						tc.top = -69.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '14'
						tc.left = -62.000
						tc.right = -54.000
						tc.bottom = -85.000
						tc.top = -77.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '15'
						tc.left = -62.000
						tc.right = -54.000
						tc.bottom = -93.000
						tc.top = -85.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '16'
						tc.left = -64.000
						tc.right = -56.000
						tc.bottom = -100.000
						tc.top = -92.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '17'
						tc.left = -59.000
						tc.right = -51.000
						tc.bottom = -106.000
						tc.top = -98.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '18'
						tc.left = -52.000
						tc.right = -44.000
						tc.bottom = -113.000
						tc.top = -105.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '19'
						tc.left = -52.000
						tc.right = -44.000
						tc.bottom = -94.000
						tc.top = -86.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '20'
						tc.left = -52.000
						tc.right = -44.000
						tc.bottom = -104.000
						tc.top = -96.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '21'
						tc.left = -42.000
						tc.right = -34.000
						tc.bottom = -113.000
						tc.top = -105.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '22'
						tc.left = -44.000
						tc.right = -36.000
						tc.bottom = -90.000
						tc.top = -82.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '23'
						tc.left = -44.000
						tc.right = -36.000
						tc.bottom = -100.000
						tc.top = -92.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '24'
						tc.left = -44.000
						tc.right = -36.000
						tc.bottom = -80.000
						tc.top = -72.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.color = 0xe38959
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						tp = tp.parent
						--end
					tp = tp.parent
					--end
					tc = G.loadUI('v_empty')
					tp.addChild(tc)
					tc.name = '8'
					tc.left = -37.000
					tc.right = -37.000
					tc.bottom = -12.000
					tc.top = -12.000
					tc.visible = false
					tp = tc
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '1'
						tc.left = -52.500
						tc.right = -45.500
						tc.bottom = 24.500
						tc.top = 31.500
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '2'
						tc.left = -52.500
						tc.right = -45.500
						tc.bottom = 17.500
						tc.top = 24.500
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '3'
						tc.left = -52.500
						tc.right = -45.500
						tc.bottom = 10.500
						tc.top = 17.500
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '4'
						tc.left = -52.500
						tc.right = -45.500
						tc.bottom = 3.500
						tc.top = 10.500
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '5'
						tc.left = -52.500
						tc.right = -45.500
						tc.bottom = -3.500
						tc.top = 3.500
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '6'
						tc.left = -52.500
						tc.right = -45.500
						tc.bottom = -10.500
						tc.top = -3.500
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '7'
						tc.left = -52.500
						tc.right = -45.500
						tc.bottom = -17.500
						tc.top = -10.500
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '8'
						tc.left = -52.500
						tc.right = -45.500
						tc.bottom = -24.500
						tc.top = -17.500
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '9'
						tc.left = -52.500
						tc.right = -45.500
						tc.bottom = -31.500
						tc.top = -24.500
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '10'
						tc.left = -52.500
						tc.right = -45.500
						tc.bottom = -38.500
						tc.top = -31.500
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '11'
						tc.left = -52.500
						tc.right = -45.500
						tc.bottom = -45.500
						tc.top = -38.500
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '12'
						tc.left = -52.500
						tc.right = -45.500
						tc.bottom = -52.500
						tc.top = -45.500
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '13'
						tc.left = -52.500
						tc.right = -45.500
						tc.bottom = -59.500
						tc.top = -52.500
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '14'
						tc.left = -52.500
						tc.right = -45.500
						tc.bottom = -66.500
						tc.top = -59.500
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '15'
						tc.left = -52.500
						tc.right = -45.500
						tc.bottom = -73.500
						tc.top = -66.500
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '16'
						tc.left = -52.500
						tc.right = -45.500
						tc.bottom = -80.500
						tc.top = -73.500
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '17'
						tc.left = -52.500
						tc.right = -45.500
						tc.bottom = -87.500
						tc.top = -80.500
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '18'
						tc.left = -52.500
						tc.right = -45.500
						tc.bottom = -94.500
						tc.top = -87.500
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '19'
						tc.left = -52.500
						tc.right = -45.500
						tc.bottom = -101.500
						tc.top = -94.500
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '20'
						tc.left = -52.500
						tc.right = -45.500
						tc.bottom = -108.500
						tc.top = -101.500
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '21'
						tc.left = -52.500
						tc.right = -45.500
						tc.bottom = -115.500
						tc.top = -108.500
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '22'
						tc.left = -52.500
						tc.right = -45.500
						tc.bottom = -122.500
						tc.top = -115.500
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '23'
						tc.left = -52.500
						tc.right = -45.500
						tc.bottom = -129.500
						tc.top = -122.500
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '24'
						tc.left = -53.000
						tc.right = -45.000
						tc.bottom = -137.000
						tc.top = -129.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.color = 0xe38959
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['color_disable'] =4657524.000
						tp = tp.parent
						--end
					tp = tp.parent
					--end
					tc = G.loadUI('v_empty')
					tp.addChild(tc)
					tc.name = '9'
					tc.left = -38.000
					tc.right = -38.000
					tc.bottom = -10.000
					tc.top = -10.000
					tc.visible = false
					tp = tc
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '1'
						tc.left = -52.000
						tc.right = -44.000
						tc.bottom = 24.000
						tc.top = 32.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '2'
						tc.left = -74.000
						tc.right = -66.000
						tc.bottom = -65.000
						tc.top = -57.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '3'
						tc.left = -32.000
						tc.right = -24.000
						tc.bottom = -64.000
						tc.top = -56.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '4'
						tc.left = -64.000
						tc.right = -56.000
						tc.bottom = -140.000
						tc.top = -132.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '5'
						tc.left = -41.000
						tc.right = -33.000
						tc.bottom = -140.000
						tc.top = -132.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '6'
						tc.left = -52.000
						tc.right = -44.000
						tc.bottom = -4.000
						tc.top = 4.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '7'
						tc.left = -52.000
						tc.right = -44.000
						tc.bottom = 17.000
						tc.top = 25.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '8'
						tc.left = -52.000
						tc.right = -44.000
						tc.bottom = 10.000
						tc.top = 18.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '9'
						tc.left = -52.000
						tc.right = -44.000
						tc.bottom = 3.000
						tc.top = 11.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '10'
						tc.left = -62.000
						tc.right = -54.000
						tc.bottom = -96.000
						tc.top = -88.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '11'
						tc.left = -42.000
						tc.right = -34.000
						tc.bottom = -96.000
						tc.top = -88.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '12'
						tc.left = -36.000
						tc.right = -28.000
						tc.bottom = -36.000
						tc.top = -28.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '13'
						tc.left = -73.000
						tc.right = -65.000
						tc.bottom = -51.000
						tc.top = -43.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '14'
						tc.left = -34.000
						tc.right = -26.000
						tc.bottom = -51.000
						tc.top = -43.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '15'
						tc.left = -70.000
						tc.right = -62.000
						tc.bottom = -36.000
						tc.top = -28.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '16'
						tc.left = -67.000
						tc.right = -59.000
						tc.bottom = -17.000
						tc.top = -9.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '17'
						tc.left = -38.000
						tc.right = -30.000
						tc.bottom = -17.000
						tc.top = -9.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '18'
						tc.left = -52.000
						tc.right = -44.000
						tc.bottom = -12.000
						tc.top = -4.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '19'
						tc.left = -52.000
						tc.right = -44.000
						tc.bottom = -20.000
						tc.top = -12.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '20'
						tc.left = -52.000
						tc.right = -44.000
						tc.bottom = -28.000
						tc.top = -20.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '21'
						tc.left = -52.000
						tc.right = -44.000
						tc.bottom = -36.000
						tc.top = -28.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '22'
						tc.left = -52.000
						tc.right = -44.000
						tc.bottom = -44.000
						tc.top = -36.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						com['img_disable'] =1443495970.000
						tp = tp.parent
						--end
						tc = G.loadUI('v_button')
						tp.addChild(tc)
						tc.name = '23'
						tc.left = -52.000
						tc.right = -44.000
						tc.bottom = -56.000
						tc.top = -48.000
						tp = tc
							tc = tp.getChildByName('img')
							if tc then
							tc.color = 0xe38959
							tc.img = 0x560a0021
							tp = tc
							end
							tp = tp.parent
							--end
						com = tp.c_button
						com['customsize'] =true
						com['img_normal'] =1443495969.000
						tp = tp.parent
						--end
					tp = tp.parent
					--end
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'c1'
			tc.left = -50.000
			tc.right = 50.000
			tc.bottom = -202.000
			tc.top = -162.000
			tc.img = 0x560a001f
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'c1'
			tc.left = -63.500
			tc.right = 29.500
			tc.bottom = -201.000
			tc.top = -161.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 1
			tc.text = '修为点'
			tc.font = 0x611e0000
			tc.style = 9
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '修为点'
			tc.left = 1.000
			tc.right = 49.000
			tc.bottom = -202.000
			tc.top = -162.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 1
			tc.text = '999'
			tc.font = 0x611e0000
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = 'c1'
			tp = tc
			tp = tp.parent
			--end
		tp.c_jm = setmetatable({}, c_jm)
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '结束图片'
		tc.left = 117.500
		tc.right = 150.500
		tc.bottom = 173.500
		tc.top = 204.500
		tc.img = 0x560a001d
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '关闭菜单'
	tc.left = 304.000
	tc.right = 448.000
	tc.bottom = -198.000
	tc.top = -62.000
	tc.mouseEnabled = true
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.text = '关闭菜单'
	tc.wrap = true
	tc.font = 0x61400000
	tc.style = 8
	tp = tc
	tp = tp.parent
	--end
tp.c_nature = setmetatable({}, c_nature)
