--[[201b

]]
local G = require 'gf'
local c_button = require 'c_button'
local c_gambling = require 'c_gambling'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_gambling'
tc.left = -640.000
tc.right = 640.000
tc.bottom = -360.000
tc.top = 360.000
tp = tc
	tc = G.loadUI('v_button')
	tp.addChild(tc)
	tc.name = 'c1'
	tc.left = -320.000
	tc.right = 320.000
	tc.bottom = -240.000
	tc.top = 240.000
	tp = tc
	com = tp.c_button
	com['audio_press'] =0.000
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = 'c2'
	tc.left = -219.500
	tc.right = 219.500
	tc.bottom = -171.000
	tc.top = 171.000
	tc.img = 0x56100007
	tp = tc
	tp = tp.parent
	--end
	tc = G.loadUI('v_button')
	tp.addChild(tc)
	tc.name = '开始'
	tc.left = -73.000
	tc.right = 77.000
	tc.bottom = -58.000
	tc.top = 92.000
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '二'
		tc.left = 22.000
		tc.right = 48.000
		tc.bottom = -16.500
		tc.top = 14.500
		tc.img = 0x56100001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '一'
		tc.left = -49.000
		tc.right = -23.000
		tc.bottom = -18.500
		tc.top = 12.500
		tc.img = 0x56100001
		tp = tc
		tp = tp.parent
		--end
	com = tp.c_button
	com['img_hover'] =0.000
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '下注'
	tp = tc
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '单'
		tc.left = -186.000
		tc.right = -96.000
		tc.bottom = 60.000
		tc.top = 150.000
		tp = tc
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '小'
		tc.left = 84.000
		tc.right = 174.000
		tc.bottom = 60.000
		tc.top = 150.000
		tp = tc
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '双'
		tc.left = -197.000
		tc.right = -107.000
		tc.bottom = -134.000
		tc.top = -44.000
		tp = tc
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '大'
		tc.left = 106.000
		tc.right = 196.000
		tc.bottom = -133.000
		tc.top = -43.000
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '显示'
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '本金'
		tc.pivotX = 0.000
		tc.left = -6.000
		tc.right = 154.000
		tc.bottom = 121.000
		tc.top = 161.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '2000'
		tc.font = 0x61300000
		tc.align = 1
		tc.style = 5
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '银两'
		tc.pivotX = 0.000
		tc.left = -14.000
		tc.right = 186.000
		tc.bottom = -163.000
		tc.top = -123.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '110'
		tc.font = 0x61280000
		tc.align = 1
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '000'
		tc.pivotX = 0.000
		tc.left = -20.000
		tc.right = 220.000
		tc.bottom = -131.000
		tc.top = -91.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '单 双 大 小'
		tc.font = 0x61200041
		tc.align = 1
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '单'
		tc.pivotX = 0.000
		tc.left = -2.000
		tc.right = 38.000
		tc.bottom = -133.000
		tc.top = -93.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '0'
		tc.font = 0x611e0000
		tc.align = 1
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '双'
		tc.pivotX = 0.000
		tc.left = 27.000
		tc.right = 67.000
		tc.bottom = -133.000
		tc.top = -93.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '0'
		tc.font = 0x611e0000
		tc.align = 1
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '大'
		tc.pivotX = 0.000
		tc.left = 52.000
		tc.right = 92.000
		tc.bottom = -133.000
		tc.top = -93.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '0'
		tc.font = 0x611e0000
		tc.align = 1
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '小'
		tc.pivotX = 0.000
		tc.left = 79.000
		tc.right = 119.000
		tc.bottom = -133.000
		tc.top = -93.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '0'
		tc.font = 0x611e0000
		tc.align = 1
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '1'
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '1'
		tc.left = -152.000
		tc.right = -124.000
		tc.bottom = 96.000
		tc.top = 130.000
		tc.visible = false
		tc.img = 0x56100008
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '2'
		tc.left = -180.000
		tc.right = -152.000
		tc.bottom = 67.000
		tc.top = 101.000
		tc.visible = false
		tc.img = 0x56100008
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '3'
		tc.left = -127.000
		tc.right = -99.000
		tc.bottom = 125.000
		tc.top = 159.000
		tc.visible = false
		tc.img = 0x56100008
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '4'
		tc.left = -171.000
		tc.right = -143.000
		tc.bottom = 125.000
		tc.top = 159.000
		tc.visible = false
		tc.img = 0x56100008
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '5'
		tc.left = -133.000
		tc.right = -105.000
		tc.bottom = 65.000
		tc.top = 99.000
		tc.visible = false
		tc.img = 0x56100008
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '注数'
		tc.left = -88.000
		tc.right = 112.000
		tc.bottom = -50.000
		tc.top = 50.000
		tc.visible = false
		tc.text = '0'
		tc.font = 0x61200041
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '2'
	tc.left = -10.000
	tc.right = -10.000
	tc.bottom = -203.000
	tc.top = -203.000
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '1'
		tc.left = -152.000
		tc.right = -124.000
		tc.bottom = 96.000
		tc.top = 130.000
		tc.visible = false
		tc.img = 0x56100008
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '2'
		tc.left = -180.000
		tc.right = -152.000
		tc.bottom = 67.000
		tc.top = 101.000
		tc.visible = false
		tc.img = 0x56100008
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '3'
		tc.left = -127.000
		tc.right = -99.000
		tc.bottom = 125.000
		tc.top = 159.000
		tc.visible = false
		tc.img = 0x56100008
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '4'
		tc.left = -171.000
		tc.right = -143.000
		tc.bottom = 125.000
		tc.top = 159.000
		tc.visible = false
		tc.img = 0x56100008
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '5'
		tc.left = -133.000
		tc.right = -105.000
		tc.bottom = 65.000
		tc.top = 99.000
		tc.visible = false
		tc.img = 0x56100008
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '注数'
		tc.left = -88.000
		tc.right = 112.000
		tc.bottom = 321.000
		tc.top = 421.000
		tc.visible = false
		tc.text = '0'
		tc.font = 0x61200041
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '3'
	tc.left = 275.000
	tc.right = 275.000
	tc.bottom = -8.000
	tc.top = -8.000
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '1'
		tc.left = -156.000
		tc.right = -128.000
		tc.bottom = 103.000
		tc.top = 137.000
		tc.visible = false
		tc.img = 0x56100008
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '2'
		tc.left = -180.000
		tc.right = -152.000
		tc.bottom = 71.000
		tc.top = 105.000
		tc.visible = false
		tc.img = 0x56100008
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '3'
		tc.left = -135.000
		tc.right = -107.000
		tc.bottom = 129.000
		tc.top = 163.000
		tc.visible = false
		tc.img = 0x56100008
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '4'
		tc.left = -185.000
		tc.right = -157.000
		tc.bottom = 129.000
		tc.top = 163.000
		tc.visible = false
		tc.img = 0x56100008
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '5'
		tc.left = -129.000
		tc.right = -101.000
		tc.bottom = 71.000
		tc.top = 105.000
		tc.visible = false
		tc.img = 0x56100008
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '注数'
		tc.left = -88.000
		tc.right = 112.000
		tc.bottom = 321.000
		tc.top = 421.000
		tc.visible = false
		tc.text = '0'
		tc.font = 0x61200041
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '4'
	tc.left = 292.000
	tc.right = 292.000
	tc.bottom = -204.000
	tc.top = -204.000
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '1'
		tc.left = -156.000
		tc.right = -128.000
		tc.bottom = 103.000
		tc.top = 137.000
		tc.visible = false
		tc.img = 0x56100008
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '2'
		tc.left = -180.000
		tc.right = -152.000
		tc.bottom = 71.000
		tc.top = 105.000
		tc.visible = false
		tc.img = 0x56100008
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '3'
		tc.left = -135.000
		tc.right = -107.000
		tc.bottom = 129.000
		tc.top = 163.000
		tc.visible = false
		tc.img = 0x56100008
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '4'
		tc.left = -185.000
		tc.right = -157.000
		tc.bottom = 129.000
		tc.top = 163.000
		tc.visible = false
		tc.img = 0x56100008
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '5'
		tc.left = -129.000
		tc.right = -101.000
		tc.bottom = 71.000
		tc.top = 105.000
		tc.visible = false
		tc.img = 0x56100008
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '注数'
		tc.left = -88.000
		tc.right = 112.000
		tc.bottom = 321.000
		tc.top = 421.000
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
	tc.name = '提示1'
	tc.left = -65.500
	tc.right = 81.500
	tc.bottom = 93.500
	tc.top = 152.500
	tc.visible = false
	tc.img = 0x5610000a
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'c3'
		tc.left = -198.000
		tc.right = 202.000
		tc.bottom = -94.000
		tc.top = 106.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '开始掷骰吗？'
		tc.font = 0x61240000
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '提示2'
	tc.left = -98.000
	tc.right = 114.000
	tc.bottom = 69.500
	tc.top = 176.500
	tc.img = 0x56100009
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '1'
		tc.left = -96.000
		tc.right = 104.000
		tc.bottom = -60.000
		tc.top = 40.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '其他人下完注请您下注'
		tc.wrap = true
		tc.font = 0x611e0000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '2'
		tc.left = -96.000
		tc.right = 104.000
		tc.bottom = -60.000
		tc.top = 40.000
		tc.visible = false
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '其他人下完注请您下注'
		tc.wrap = true
		tc.font = 0x611e0000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_button')
	tp.addChild(tc)
	tc.name = '结束'
	tc.left = 190.500
	tc.right = 223.500
	tc.bottom = 144.500
	tc.top = 175.500
	tp = tc
		tc = tp.getChildByName('img')
		if tc then
		tc.img = 0x56160014
		tp = tc
		end
		tp = tp.parent
		--end
	com = tp.c_button
	com['img_normal'] =1444282388.000
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = 'c3'
	tc.left = -140.500
	tc.right = 156.500
	tc.bottom = -77.000
	tc.top = 257.000
	tc.visible = false
	tc.img = 0x33010004
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '一'
	tc.left = -100.000
	tc.bottom = -50.000
	tc.top = 50.000
	tc.visible = false
	tc.text = '1'
	tc.font = 0x61200041
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '二'
	tc.left = -100.000
	tc.bottom = -50.000
	tc.top = 50.000
	tc.visible = false
	tc.text = '1'
	tc.font = 0x61200041
	tp = tc
	tp = tp.parent
	--end
tp.c_gambling = setmetatable({}, c_gambling)
