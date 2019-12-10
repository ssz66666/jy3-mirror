--[[200f

]]
local G = require 'gf'
local c_lackes_notice = require 'c_lackes_notice'
local c_button = require 'c_button'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_lakes_notice'
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
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '背景'
	tc.left = -320.000
	tc.right = 320.000
	tc.bottom = -240.000
	tc.top = 240.000
	tc.img = 0x5616003d
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
		tc.pivotY = 1.000
		tc.left = 131.000
		tc.right = 161.000
		tc.bottom = -156.000
		tc.top = 194.000
		tc.visible = false
		tc.alpha = 100
		tp = tc
		com = tp.c_button
		com['customsize'] =true
		com['img_hover'] =1443495957.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '2'
		tc.pivotY = 1.000
		tc.left = 71.000
		tc.right = 101.000
		tc.bottom = -156.000
		tc.top = 194.000
		tc.visible = false
		tc.alpha = 100
		tp = tc
		com = tp.c_button
		com['customsize'] =true
		com['img_hover'] =1443495957.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '3'
		tc.pivotY = 1.000
		tc.left = 11.000
		tc.right = 41.000
		tc.bottom = -156.000
		tc.top = 194.000
		tc.visible = false
		tc.alpha = 100
		tp = tc
		com = tp.c_button
		com['customsize'] =true
		com['img_hover'] =1443495957.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '4'
		tc.pivotY = 1.000
		tc.left = -49.000
		tc.right = -19.000
		tc.bottom = -156.000
		tc.top = 194.000
		tc.visible = false
		tc.alpha = 100
		tp = tc
		com = tp.c_button
		com['customsize'] =true
		com['img_hover'] =1443495957.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '5'
		tc.pivotY = 1.000
		tc.left = -109.000
		tc.right = -79.000
		tc.bottom = -156.000
		tc.top = 194.000
		tc.visible = false
		tc.alpha = 100
		tp = tc
		com = tp.c_button
		com['customsize'] =true
		com['img_hover'] =1443495957.000
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
		tc.name = 'data'
		tc.left = -229.000
		tc.right = -189.000
		tc.bottom = -137.000
		tc.top = 103.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '十二月'
		tc.wrap = true
		tc.font = 0x61380000
		tc.style = 3
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '1'
		tc.pivotY = 1.000
		tc.left = 120.000
		tc.right = 180.000
		tc.bottom = -406.000
		tc.top = 194.000
		tc.visible = false
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '少林与武当'
		tc.wrap = true
		tc.font = 0x61280000
		tc.align = 3
		tc.style = 10
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '2'
		tc.pivotY = 1.000
		tc.left = 60.000
		tc.right = 120.000
		tc.bottom = -405.000
		tc.top = 195.000
		tc.visible = false
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '少林与武当'
		tc.wrap = true
		tc.font = 0x61280000
		tc.align = 3
		tc.style = 3
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '3'
		tc.pivotY = 1.000
		tc.right = 60.000
		tc.bottom = -404.000
		tc.top = 196.000
		tc.visible = false
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '少林与武当'
		tc.wrap = true
		tc.font = 0x61280000
		tc.align = 3
		tc.style = 3
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '4'
		tc.pivotY = 1.000
		tc.left = -60.000
		tc.right = 0.000
		tc.bottom = -403.000
		tc.top = 197.000
		tc.visible = false
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '少林与武当'
		tc.wrap = true
		tc.font = 0x61280000
		tc.align = 3
		tc.style = 3
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '5'
		tc.pivotY = 1.000
		tc.left = -120.000
		tc.right = -60.000
		tc.bottom = -403.000
		tc.top = 197.000
		tc.visible = false
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '少林与武当'
		tc.wrap = true
		tc.font = 0x61280000
		tc.align = 3
		tc.style = 3
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '说明'
	tc.left = -241.500
	tc.right = 259.500
	tc.bottom = -176.500
	tc.top = -47.500
	tc.visible = false
	tc.img = 0x5616003e
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'c1'
		tc.pivotX = 0.000
		tc.left = -222.000
		tc.right = -122.000
		tc.bottom = 15.000
		tc.top = 55.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '内容:'
		tc.font = 0x61240000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '内容'
		tc.pivotX = 0.000
		tc.pivotY = 1.000
		tc.left = -176.000
		tc.right = 550.000
		tc.bottom = -79.000
		tc.top = 41.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '我给你那个送  搜方式耐腐蚀安抚啊功夫奥丹电脑灯个个 '
		tc.wrap = true
		tc.font = 0x611c0000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'c2'
		tc.pivotX = 0.000
		tc.left = -224.000
		tc.right = -124.000
		tc.bottom = -44.000
		tc.top = -4.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '要求:'
		tc.font = 0x61240000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '条件'
		tc.pivotX = 0.000
		tc.left = -173.000
		tc.right = 227.000
		tc.bottom = -45.000
		tc.top = -5.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '无'
		tc.font = 0x61240000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'c3'
		tc.pivotX = 0.000
		tc.left = -225.000
		tc.right = -175.000
		tc.bottom = -52.000
		tc.top = -32.000
		tc.text = '耗时:'
		tc.font = 0x61120000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '耗时'
		tc.pivotX = 0.000
		tc.left = -173.000
		tc.right = -73.000
		tc.bottom = -62.000
		tc.top = -22.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '15天'
		tc.font = 0x61240000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '接受'
		tc.left = -59.500
		tc.right = 29.500
		tc.bottom = -117.500
		tc.top = -82.500
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x56160040
			tp = tc
			end
			tp = tp.parent
			--end
		com = tp.c_button
		com['img_normal'] =1444282432.000
		com['img_hover'] =1444282431.000
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '1号任务'
	tc.left = -200.000
	tc.right = 200.000
	tc.bottom = -100.000
	tc.visible = false
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.text = '0'
	tc.font = 0x61400000
	tp = tc
	tp = tp.parent
	--end
	tc = G.loadUI('v_button')
	tp.addChild(tc)
	tc.name = '结束'
	tc.left = 282.500
	tc.right = 315.500
	tc.bottom = 206.500
	tc.top = 237.500
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
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '任务'
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
	tc.name = '关闭菜单'
	tc.left = 304.000
	tc.right = 448.000
	tc.bottom = -248.000
	tc.top = -112.000
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
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '版本'
	tc.left = -468.000
	tc.right = -268.000
	tc.bottom = -268.000
	tc.top = -168.000
	tc.text = 'ver3.02'
	tc.font = 0x61200041
	tc.style = 3
	tp = tc
	tp = tp.parent
	--end
tp.c_lackes_notice = setmetatable({}, c_lackes_notice)
