--[[2022

]]
local G = require 'gf'
local c_select = require 'c_select'
local c_button = require 'c_button'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_select'
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
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '显示'
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'c1'
		tc.left = -320.000
		tc.right = 320.000
		tc.bottom = -240.000
		tc.top = 240.000
		tc.img = 0x56050007
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'c4'
		tc.left = -272.000
		tc.right = 28.000
		tc.bottom = 187.000
		tc.top = 231.000
		tc.img = 0x56160066
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'c5'
			tc.left = -120.000
			tc.right = 120.000
			tc.bottom = -9.000
			tc.top = 11.000
			tc.text = '请选择参战队友(最多四名)'
			tc.font = 0x61130000
			tc.style = 5
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'c3'
		tc.left = -297.000
		tc.right = 53.000
		tc.bottom = -118.000
		tc.top = 182.000
		tc.alpha = 120
		tc.img = 0x56160071
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_button')
	tp.addChild(tc)
	tc.name = '确定'
	tc.left = -178.500
	tc.right = -79.500
	tc.bottom = -165.500
	tc.top = -132.500
	tp = tc
		tc = tp.getChildByName('img_ex')
		if tc then
		tc.left = -33.000
		tc.right = 33.000
		tc.bottom = -11.000
		tc.top = 11.000
		tc.img = 0x5616002c
		tp = tc
		end
		tp = tp.parent
		--end
		tc = tp.getChildByName('img')
		if tc then
		tc.img = 0x5616002c
		tp = tc
		end
		tp = tp.parent
		--end
	com = tp.c_button
	com['customsize'] =true
	com['img_normal'] =1444282412.000
	com['img_hover'] =1444282414.000
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '1'
	tc.pivotX = 0.000
	tc.left = -248.000
	tc.right = -98.000
	tc.bottom = 137.500
	tc.top = 162.500
	tc.mouseEnabled = true
	tc.text = '王语嫣'
	tc.font = 0x61180000
	tc.align = 1
	tc.style = 2
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '是'
		tc.left = -99.000
		tc.right = -69.000
		tc.bottom = -15.000
		tc.top = 15.000
		tc.img = 0x56160072
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '否'
		tc.left = -99.000
		tc.right = -69.000
		tc.bottom = -15.000
		tc.top = 15.000
		tc.img = 0x56160073
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '2'
	tc.pivotX = 0.000
	tc.left = -102.000
	tc.right = 48.000
	tc.bottom = 137.500
	tc.top = 162.500
	tc.mouseEnabled = true
	tc.text = '令狐冲'
	tc.font = 0x61180000
	tc.align = 1
	tc.style = 2
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '是'
		tc.left = -99.000
		tc.right = -69.000
		tc.bottom = -15.000
		tc.top = 15.000
		tc.img = 0x56160072
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '否'
		tc.left = -99.000
		tc.right = -69.000
		tc.bottom = -15.000
		tc.top = 15.000
		tc.img = 0x56160073
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '3'
	tc.pivotX = 0.000
	tc.left = -248.000
	tc.right = -98.000
	tc.bottom = 91.500
	tc.top = 116.500
	tc.mouseEnabled = true
	tc.text = '张无忌'
	tc.font = 0x61180000
	tc.align = 1
	tc.style = 2
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '是'
		tc.left = -99.000
		tc.right = -69.000
		tc.bottom = -15.000
		tc.top = 15.000
		tc.img = 0x56160072
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '否'
		tc.left = -99.000
		tc.right = -69.000
		tc.bottom = -15.000
		tc.top = 15.000
		tc.img = 0x56160073
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '4'
	tc.pivotX = 0.000
	tc.left = -102.000
	tc.right = 48.000
	tc.bottom = 91.500
	tc.top = 116.500
	tc.mouseEnabled = true
	tc.text = '胡  斐'
	tc.font = 0x61180000
	tc.align = 1
	tc.style = 2
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '是'
		tc.left = -99.000
		tc.right = -69.000
		tc.bottom = -15.000
		tc.top = 15.000
		tc.img = 0x56160072
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '否'
		tc.left = -99.000
		tc.right = -69.000
		tc.bottom = -15.000
		tc.top = 15.000
		tc.img = 0x56160073
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '5'
	tc.pivotX = 0.000
	tc.left = -248.000
	tc.right = -98.000
	tc.bottom = 45.500
	tc.top = 70.500
	tc.mouseEnabled = true
	tc.visible = false
	tc.text = '东方不败'
	tc.font = 0x61180000
	tc.align = 1
	tc.style = 2
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '是'
		tc.left = -99.000
		tc.right = -69.000
		tc.bottom = -15.000
		tc.top = 15.000
		tc.img = 0x56160072
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '否'
		tc.left = -99.000
		tc.right = -69.000
		tc.bottom = -15.000
		tc.top = 15.000
		tc.img = 0x56160073
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '6'
	tc.pivotX = 0.000
	tc.left = -102.000
	tc.right = 48.000
	tc.bottom = 45.500
	tc.top = 70.500
	tc.mouseEnabled = true
	tc.visible = false
	tc.text = '东方不败'
	tc.font = 0x61180000
	tc.align = 1
	tc.style = 2
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '是'
		tc.left = -99.000
		tc.right = -69.000
		tc.bottom = -15.000
		tc.top = 15.000
		tc.img = 0x56160072
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '否'
		tc.left = -99.000
		tc.right = -69.000
		tc.bottom = -15.000
		tc.top = 15.000
		tc.img = 0x56160073
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '7'
	tc.pivotX = 0.000
	tc.left = -248.000
	tc.right = -98.000
	tc.bottom = -0.500
	tc.top = 24.500
	tc.mouseEnabled = true
	tc.visible = false
	tc.text = '东方不败'
	tc.font = 0x61180000
	tc.align = 1
	tc.style = 2
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '是'
		tc.left = -99.000
		tc.right = -69.000
		tc.bottom = -15.000
		tc.top = 15.000
		tc.img = 0x56160072
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '否'
		tc.left = -99.000
		tc.right = -69.000
		tc.bottom = -15.000
		tc.top = 15.000
		tc.img = 0x56160073
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '8'
	tc.pivotX = 0.000
	tc.left = -102.000
	tc.right = 48.000
	tc.bottom = -0.500
	tc.top = 24.500
	tc.mouseEnabled = true
	tc.visible = false
	tc.text = '东方不败'
	tc.font = 0x61180000
	tc.align = 1
	tc.style = 2
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '是'
		tc.left = -99.000
		tc.right = -69.000
		tc.bottom = -15.000
		tc.top = 15.000
		tc.img = 0x56160072
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '否'
		tc.left = -99.000
		tc.right = -69.000
		tc.bottom = -15.000
		tc.top = 15.000
		tc.img = 0x56160073
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '9'
	tc.pivotX = 0.000
	tc.left = -248.000
	tc.right = -98.000
	tc.bottom = -46.500
	tc.top = -21.500
	tc.mouseEnabled = true
	tc.visible = false
	tc.text = '东方不败'
	tc.font = 0x61180000
	tc.align = 1
	tc.style = 2
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '是'
		tc.left = -99.000
		tc.right = -69.000
		tc.bottom = -15.000
		tc.top = 15.000
		tc.img = 0x56160072
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '否'
		tc.left = -99.000
		tc.right = -69.000
		tc.bottom = -15.000
		tc.top = 15.000
		tc.img = 0x56160073
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '10'
	tc.pivotX = 0.000
	tc.left = -102.000
	tc.right = 48.000
	tc.bottom = -46.500
	tc.top = -21.500
	tc.mouseEnabled = true
	tc.visible = false
	tc.text = '东方不败'
	tc.font = 0x61180000
	tc.align = 1
	tc.style = 2
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '是'
		tc.left = -99.000
		tc.right = -69.000
		tc.bottom = -15.000
		tc.top = 15.000
		tc.img = 0x56160072
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '否'
		tc.left = -99.000
		tc.right = -69.000
		tc.bottom = -15.000
		tc.top = 15.000
		tc.img = 0x56160073
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '11'
	tc.pivotX = 0.000
	tc.left = -248.000
	tc.right = -98.000
	tc.bottom = -92.500
	tc.top = -67.500
	tc.mouseEnabled = true
	tc.visible = false
	tc.text = '东方不败'
	tc.font = 0x61180000
	tc.align = 1
	tc.style = 2
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '是'
		tc.left = -99.000
		tc.right = -69.000
		tc.bottom = -15.000
		tc.top = 15.000
		tc.img = 0x56160072
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '否'
		tc.left = -99.000
		tc.right = -69.000
		tc.bottom = -15.000
		tc.top = 15.000
		tc.img = 0x56160073
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '12'
	tc.pivotX = 0.000
	tc.left = -102.000
	tc.right = 48.000
	tc.bottom = -92.500
	tc.top = -67.500
	tc.mouseEnabled = true
	tc.visible = false
	tc.text = '东方不败'
	tc.font = 0x61180000
	tc.align = 1
	tc.style = 2
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '是'
		tc.left = -99.000
		tc.right = -69.000
		tc.bottom = -15.000
		tc.top = 15.000
		tc.img = 0x56160072
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '否'
		tc.left = -99.000
		tc.right = -69.000
		tc.bottom = -15.000
		tc.top = 15.000
		tc.img = 0x56160073
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '存储'
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '1'
		tc.left = -100.000
		tc.bottom = -21.000
		tc.top = 79.000
		tc.visible = false
		tc.text = '0'
		tc.font = 0x61200041
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '2'
		tc.left = -100.000
		tc.bottom = -21.000
		tc.top = 79.000
		tc.visible = false
		tc.text = '0'
		tc.font = 0x61200041
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '3'
		tc.left = -100.000
		tc.bottom = -21.000
		tc.top = 79.000
		tc.visible = false
		tc.text = '0'
		tc.font = 0x61200041
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '4'
		tc.left = -100.000
		tc.bottom = -21.000
		tc.top = 79.000
		tc.visible = false
		tc.text = '0'
		tc.font = 0x61200041
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = 'team2'
	tc.left = 121.000
	tc.right = 221.000
	tc.bottom = 124.000
	tc.top = 224.000
	tc.img = 0x33079999
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = 'team3'
	tc.left = 234.000
	tc.right = 334.000
	tc.bottom = 126.000
	tc.top = 226.000
	tc.img = 0x33079999
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = 'team4'
	tc.left = 116.000
	tc.right = 216.000
	tc.bottom = 4.000
	tc.top = 104.000
	tc.img = 0x33079999
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = 'team5'
	tc.left = 238.000
	tc.right = 338.000
	tc.bottom = 4.000
	tc.top = 104.000
	tc.img = 0x33079999
	tp = tc
	tp = tp.parent
	--end
tp.c_select = setmetatable({}, c_select)
