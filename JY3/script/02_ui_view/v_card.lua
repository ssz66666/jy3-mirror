--[[203c

]]
local G = require 'gf'
local c_scrollview = require 'c_scrollview'
local c_card = require 'c_card'
local c_button = require 'c_button'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_card'
tc.left = -640.000
tc.right = 640.000
tc.bottom = -360.000
tc.top = 360.000
tp = tc
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '前景'
	tc.left = -426.500
	tc.right = 426.500
	tc.bottom = -240.000
	tc.top = 240.000
	tc.mouseEnabled = true
	tc.img = 0x56059002
	tp = tc
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '显示'
	tc.left = 50.000
	tc.right = 50.000
	tp = tc
		tc = G.loadUI('v_background')
		tp.addChild(tc)
		tc.name = '底板1'
		tc.pivotX = 0.000
		tc.pivotY = 1.000
		tc.left = -476.500
		tc.right = 113.500
		tc.bottom = 155.000
		tc.top = 235.000
		tp = tc
		tp = tp.parent
		--end
		tc = G.loadUI('v_background')
		tp.addChild(tc)
		tc.name = '底板2'
		tc.pivotX = 0.000
		tc.pivotY = 1.000
		tc.left = 114.500
		tc.right = 372.500
		tc.bottom = -235.000
		tc.top = 235.000
		tp = tc
		tp = tp.parent
		--end
		tc = G.loadUI('v_background')
		tp.addChild(tc)
		tc.name = '底板3'
		tc.pivotX = 0.000
		tc.pivotY = 1.000
		tc.left = -476.500
		tc.right = 113.500
		tc.bottom = -231.000
		tc.top = 148.000
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '关闭'
	tc.pivotX = 0.000
	tc.pivotY = 1.000
	tc.left = 355.000
	tc.right = 499.000
	tc.bottom = -253.000
	tc.top = -117.000
	tc.mouseEnabled = true
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.text = '关闭菜单'
	tc.wrap = true
	tc.font = 0x61400000
	tc.style = 11
	tp = tc
	tp = tp.parent
	--end
	tc = G.Entity()
	tp.addChild(tc)
	tc.name = '详细'
	tc.left = -50.000
	tc.right = 50.000
	tc.bottom = -50.000
	tc.top = 50.000
	tc.visible = false
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '头像'
		tc.left = 181.000
		tc.right = 301.000
		tc.bottom = 54.000
		tc.top = 198.000
		tc.img = 0x56080001
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '力量'
		tc.left = 326.000
		tc.right = 386.000
		tc.bottom = 160.000
		tc.top = 200.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '10'
		tc.font = 0x60400000
		tc.style = 4
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '智慧'
		tc.left = 326.000
		tc.right = 386.000
		tc.bottom = 60.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '10'
		tc.font = 0x60400000
		tc.style = 4
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '速度'
		tc.left = 290.000
		tc.right = 350.000
		tc.bottom = 110.000
		tc.top = 150.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '10'
		tc.font = 0x60400000
		tc.style = 4
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '防御'
		tc.left = 362.000
		tc.right = 422.000
		tc.bottom = 110.000
		tc.top = 150.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '10'
		tc.font = 0x60400000
		tc.style = 4
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '名称'
		tc.pivotX = 0.000
		tc.left = 180.000
		tc.right = 534.000
		tc.bottom = 10.000
		tc.top = 50.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 1
		tc.text = '[05]名称：[04]王语嫣'
		tc.font = 0x60400000
		tc.style = 4
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '品级'
		tc.pivotX = 0.000
		tc.left = 180.000
		tc.right = 416.000
		tc.bottom = -30.000
		tc.top = 10.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 1
		tc.text = '星级：一'
		tc.font = 0x60400000
		tc.style = 4
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '持有数量'
		tc.pivotX = 0.000
		tc.left = 180.000
		tc.right = 519.000
		tc.bottom = -70.000
		tc.top = -30.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 1
		tc.text = '持有数量： 0'
		tc.font = 0x60400000
		tc.style = 4
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_scrollview')
	tp.addChild(tc)
	tc.name = '卡组'
	tc.left = -414.500
	tc.right = 156.500
	tc.bottom = -228.500
	tc.top = 138.500
	tc.visible = false
	tp = tc
		tc = tp.getChildByName('content')
		if tc then
		tc.left = 1.000
		tc.right = 1.000
		tc.bottom = -300.000
		tc.anchor = 0x64646400
		tp = tc
			tc = G.Entity()
			tp.addChild(tc)
			tc.name = '卡片底'
			tc.left = -50.000
			tc.right = 50.000
			tc.bottom = 40.000
			tc.top = 140.000
			tc.visible = false
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '卡片'
				tc.left = -30.000
				tc.right = 30.000
				tc.bottom = -12.500
				tc.top = 58.500
				tc.mouseEnabled = true
				tc.img = 0x56080001
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '闪光'
				tc.left = -38.000
				tc.right = 38.000
				tc.bottom = -22.000
				tc.top = 68.000
				tc.visible = false
				tc.img = 0x33010001
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
		end
		tp = tp.parent
		--end
		tc = tp.getChildByName('slider')
		if tc then
		tc.left = -30.000
		tc.right = -24.000
		tp = tc
			tc = tp.getChildByName('按钮')
			if tc then
			tc.bottom = -247.295
			tc.color = 0xb2b2b2
			tp = tc
			end
			tp = tp.parent
			--end
		end
		tp = tp.parent
		--end
		tc = G.Entity()
		tp.addChild(tc)
		tc.name = '卡片底'
		tc.left = -660.000
		tc.right = -560.000
		tc.bottom = 290.000
		tc.top = 390.000
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '卡片'
			tc.left = -30.000
			tc.right = 30.000
			tc.bottom = -12.500
			tc.top = 58.500
			tc.mouseEnabled = true
			tc.img = 0x56080001
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '闪光'
			tc.left = -38.000
			tc.right = 38.000
			tc.bottom = -22.000
			tc.top = 68.000
			tc.visible = false
			tc.img = 0x33010001
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '闪光'
		tc.left = -38.000
		tc.right = 38.000
		tc.bottom = -45.000
		tc.top = 45.000
		tc.visible = false
		tc.img = 0x33010001
		tp = tc
		tp = tp.parent
		--end
	com = tp.c_scrollview
	com['autoMove'] =false
	com['hideSlider'] =true
	tp = tp.parent
	--end
	tc = G.Entity()
	tp.addChild(tc)
	tc.name = '按钮'
	tc.left = -50.000
	tc.right = 50.000
	tc.bottom = -50.000
	tc.top = 50.000
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '普通'
		tc.left = -450.000
		tc.right = -270.000
		tc.bottom = 140.000
		tc.top = 240.000
		tc.mouseEnabled = true
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '普通'
		tc.font = 0x60370000
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '一般'
		tc.left = -360.000
		tc.right = -180.000
		tc.bottom = 140.000
		tc.top = 240.000
		tc.mouseEnabled = true
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '一般'
		tc.font = 0x60370000
		tc.style = 6
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '优秀'
		tc.left = -270.000
		tc.right = -90.000
		tc.bottom = 140.000
		tc.top = 240.000
		tc.mouseEnabled = true
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '优秀'
		tc.font = 0x60370000
		tc.style = 4
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '英雄'
		tc.left = -180.000
		tc.right = 0.000
		tc.bottom = 139.000
		tc.top = 239.000
		tc.mouseEnabled = true
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '英雄'
		tc.font = 0x60370000
		tc.style = 7
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '宗师'
		tc.left = -90.000
		tc.right = 90.000
		tc.bottom = 140.000
		tc.top = 240.000
		tc.mouseEnabled = true
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '宗师'
		tc.font = 0x60370000
		tc.style = 8
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '传奇'
		tc.right = 180.000
		tc.bottom = 140.000
		tc.top = 240.000
		tc.mouseEnabled = true
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '传奇'
		tc.font = 0x60370000
		tc.style = 5
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '闪光'
		tc.left = -410.000
		tc.right = -310.000
		tc.bottom = 170.000
		tc.top = 210.000
		tc.visible = false
		tc.img = 0x33010001
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '总数'
	tc.pivotX = 0.000
	tc.left = 170.000
	tc.right = 467.000
	tc.bottom = -237.000
	tc.top = -197.000
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.autosize = 1
	tc.text = '总数：[04]241/241'
	tc.font = 0x60320000
	tc.style = 5
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '数量'
	tc.pivotX = 0.000
	tc.left = 170.000
	tc.right = 467.000
	tc.bottom = -216.000
	tc.top = -176.000
	tc.visible = false
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.autosize = 1
	tc.text = '总数：[04]241/241'
	tc.font = 0x60320000
	tc.style = 5
	tp = tc
	tp = tp.parent
	--end
tp.c_card = setmetatable({}, c_card)
