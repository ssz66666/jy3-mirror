--[[2032

]]
local G = require 'gf'
local c_equip = require 'c_equip'
local c_button = require 'c_button'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_equip'
tc.left = -640.000
tc.right = 640.000
tc.bottom = -360.000
tc.top = 360.000
tc.mouseEnabled = true
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
		tc.left = -477.500
		tc.right = 112.500
		tc.bottom = 49.000
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
		tc.left = -477.500
		tc.right = 112.500
		tc.bottom = -233.000
		tc.top = 46.000
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '头像'
		tc.left = -463.000
		tc.right = -403.000
		tc.bottom = 151.500
		tc.top = 222.500
		tc.img = 0x56080001
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '标签1'
		tc.pivotX = 0.000
		tc.pivotY = 1.000
		tc.left = -390.000
		tc.right = -290.000
		tc.bottom = 85.000
		tc.top = 220.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 2
		tc.text = '姓名[br]生命[br]内力'
		tc.wrap = true
		tc.font = 0x612d0000
		tc.align = 1
		tc.style = 5
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '标签4'
		tc.pivotX = 0.000
		tc.pivotY = 1.000
		tc.left = -390.000
		tc.right = -240.000
		tc.bottom = -35.000
		tc.top = 145.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 2
		tc.text = '头戴[br]饰品[br]靴子[br]印记'
		tc.wrap = true
		tc.font = 0x612d0000
		tc.align = 1
		tc.style = 5
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '标签2'
		tc.pivotX = 0.000
		tc.pivotY = 1.000
		tc.left = -180.000
		tc.right = -80.000
		tc.bottom = 85.000
		tc.top = 220.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 2
		tc.text = '拆招[br]搏击[br]闪躲'
		tc.wrap = true
		tc.font = 0x612d0000
		tc.align = 1
		tc.style = 5
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '标签3'
		tc.pivotX = 0.000
		tc.pivotY = 1.000
		tc.left = -30.000
		tc.right = 70.000
		tc.bottom = 130.000
		tc.top = 220.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 2
		tc.text = '内功[br]轻身'
		tc.wrap = true
		tc.font = 0x612d0000
		tc.align = 1
		tc.style = 5
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '属性1'
		tc.pivotX = 0.000
		tc.pivotY = 1.000
		tc.left = -330.000
		tc.right = -30.000
		tc.bottom = 85.000
		tc.top = 220.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 2
		tc.text = '半瓶神仙醋[br]99999/99999[br]99999/99999'
		tc.wrap = true
		tc.font = 0x612d0000
		tc.align = 1
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '属性2'
		tc.pivotX = 0.000
		tc.pivotY = 1.000
		tc.left = -120.000
		tc.right = -20.000
		tc.bottom = 85.000
		tc.top = 220.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 2
		tc.text = '220[br]220[br]220'
		tc.wrap = true
		tc.font = 0x612d0000
		tc.align = 1
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '属性3'
		tc.pivotX = 0.000
		tc.pivotY = 1.000
		tc.left = 30.000
		tc.right = 130.000
		tc.bottom = 85.000
		tc.top = 220.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 2
		tc.text = '220[br]220[br]220'
		tc.wrap = true
		tc.font = 0x612d0000
		tc.align = 1
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '属性5'
		tc.pivotX = 0.000
		tc.pivotY = 1.000
		tc.left = -77.000
		tc.right = 23.000
		tc.bottom = 204.000
		tc.top = 220.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 2
		tc.wrap = true
		tc.font = 0x612d0000
		tc.align = 1
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '属性6'
		tc.pivotX = 0.000
		tc.pivotY = 1.000
		tc.left = 70.000
		tc.right = 170.000
		tc.bottom = 204.000
		tc.top = 220.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 2
		tc.wrap = true
		tc.font = 0x612d0000
		tc.align = 1
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '属性4'
		tc.pivotX = 0.000
		tc.pivotY = 1.000
		tc.left = -330.000
		tc.right = -162.000
		tc.bottom = -35.000
		tc.top = 145.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 3
		tc.text = '传奇之冠[br]传奇之戒[br]传奇之靴[br]'
		tc.wrap = true
		tc.font = 0x602d0000
		tc.align = 1
		tp = tc
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
		tc.name = '装备'
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '佩戴'
		tc.pivotX = 0.000
		tc.pivotY = 1.000
		tc.left = -39.000
		tc.right = 111.000
		tc.bottom = 7.000
		tc.top = 135.000
		tc.mouseEnabled = true
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 2
		tc.text = '佩戴装备'
		tc.wrap = true
		tc.font = 0x61400000
		tc.style = 8
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '头戴'
		tc.pivotX = 0.000
		tc.pivotY = 1.000
		tc.left = -420.000
		tc.right = -270.000
		tc.bottom = 100.000
		tc.top = 145.000
		tc.mouseEnabled = true
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 2
		tc.text = '取下'
		tc.wrap = true
		tc.font = 0x612d0000
		tc.style = 8
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '手戴'
		tc.pivotX = 0.000
		tc.pivotY = 1.000
		tc.left = -420.000
		tc.right = -270.000
		tc.bottom = 77.000
		tc.top = 122.000
		tc.mouseEnabled = true
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 2
		tc.text = '取下'
		tc.wrap = true
		tc.font = 0x612d0000
		tc.style = 8
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '脚穿'
		tc.pivotX = 0.000
		tc.pivotY = 1.000
		tc.left = -420.000
		tc.right = -270.000
		tc.bottom = 54.000
		tc.top = 99.000
		tc.mouseEnabled = true
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 2
		tc.text = '取下'
		tc.wrap = true
		tc.font = 0x612d0000
		tc.style = 8
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '印记'
		tc.pivotX = 0.000
		tc.pivotY = 1.000
		tc.left = -420.000
		tc.right = -270.000
		tc.bottom = 31.000
		tc.top = 76.000
		tc.mouseEnabled = true
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 2
		tc.text = '取下'
		tc.wrap = true
		tc.font = 0x612d0000
		tc.style = 8
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '返回'
		tc.left = -417.000
		tc.right = -367.000
		tc.bottom = 61.000
		tc.top = 111.000
		tc.mouseEnabled = true
		tc.visible = false
		tc.img = 0x33010024
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '关闭'
		tc.pivotX = 0.000
		tc.pivotY = 1.000
		tc.left = 340.000
		tc.right = 484.000
		tc.bottom = -294.000
		tc.top = -158.000
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
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '特殊'
		tc.pivotX = 0.000
		tc.pivotY = 1.000
		tc.left = 70.000
		tc.right = 214.000
		tc.bottom = -1.000
		tc.top = 135.000
		tc.mouseEnabled = true
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '分解装备'
		tc.wrap = true
		tc.font = 0x61400000
		tc.style = 11
		tp = tc
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '标本'
		tc.left = -405.000
		tc.right = -315.000
		tc.bottom = -50.000
		tc.top = 40.000
		tc.visible = false
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '品质'
			tc.left = -45.000
			tc.right = 45.000
			tc.bottom = -45.000
			tc.top = 45.000
			tc.img = 0x560f2002
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '图片'
			tc.left = -40.000
			tc.right = 40.000
			tc.bottom = -40.000
			tc.top = 40.000
			tc.mouseEnabled = true
			tc.img = 0x560f0001
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = 'left'
		tc.left = 120.000
		tc.right = 152.000
		tc.bottom = -15.000
		tc.top = 33.000
		tc.rotation = 90.000
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x5616001e
			tp = tc
			end
			tp = tp.parent
			--end
		com = tp.c_button
		com['customsize'] =true
		com['img_normal'] =1444282398.000
		com['img_hover'] =1444282399.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = 'right'
		tc.left = 124.000
		tc.right = 156.000
		tc.bottom = -209.000
		tc.top = -161.000
		tc.rotation = -90.000
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x5616001e
			tp = tc
			end
			tp = tp.parent
			--end
		com = tp.c_button
		com['customsize'] =true
		com['img_normal'] =1444282398.000
		com['img_hover'] =1444282399.000
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'data'
		tc.left = 86.000
		tc.right = 186.000
		tc.bottom = -107.000
		tc.top = -67.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '1'
		tc.font = 0x61380000
		tc.style = 7
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '闪光'
		tc.left = -420.000
		tc.right = -330.000
		tc.bottom = -50.000
		tc.top = 40.000
		tc.img = 0x33010029
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '说明'
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '名称'
		tc.pivotX = 0.000
		tc.pivotY = 1.000
		tc.left = 180.000
		tc.right = 275.000
		tc.bottom = 175.000
		tc.top = 225.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 1
		tc.text = '名称:'
		tc.font = 0x602d0000
		tc.align = 1
		tc.style = 8
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '描述'
		tc.pivotX = 0.000
		tc.pivotY = 1.000
		tc.left = 180.000
		tc.right = 652.000
		tc.bottom = 160.000
		tc.top = 205.000
		tc.visible = false
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 2
		tc.text = '22'
		tc.wrap = true
		tc.font = 0x602d0000
		tc.align = 1
		tc.style = 8
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '效果'
		tc.pivotX = 0.000
		tc.pivotY = 1.000
		tc.left = 180.000
		tc.right = 651.000
		tc.bottom = 155.000
		tc.top = 200.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 2
		tc.text = '效果：'
		tc.wrap = true
		tc.font = 0x602d0000
		tc.align = 1
		tc.style = 8
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '特效'
		tc.pivotX = 0.000
		tc.pivotY = 1.000
		tc.left = 180.000
		tc.right = 651.000
		tc.bottom = 75.000
		tc.top = 125.000
		tc.visible = false
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 2
		tc.text = '特效：'
		tc.font = 0x60320000
		tc.align = 1
		tc.style = 8
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
tp.c_equip = setmetatable({}, c_equip)
