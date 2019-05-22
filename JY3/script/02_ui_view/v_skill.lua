--[[2012

]]
local G = require 'gf'
local c_skill = require 'c_skill'
local c_button = require 'c_button'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_skill'
tc.left = -320.000
tc.right = 320.000
tc.bottom = -240.000
tc.top = 240.000
tp = tc
	tc = G.loadUI('v_button')
	tp.addChild(tc)
	tc.name = '防下层点击'
	tc.left = -427.000
	tc.right = 427.000
	tc.bottom = -240.000
	tc.top = 240.000
	tp = tc
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '显示'
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '主图'
		tc.left = -292.500
		tc.right = 292.500
		tc.bottom = -160.000
		tc.top = 160.000
		tc.img = 0x56160013
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '按钮'
	tc.left = -15.000
	tc.right = 35.000
	tc.bottom = 10.000
	tc.top = 60.000
	tp = tc
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '0'
		tc.left = -196.000
		tc.right = -154.000
		tc.bottom = 39.000
		tc.top = 81.000
		tc.scaleX = -1.000
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x56160003
			tp = tc
			end
			tp = tp.parent
			--end
		com = tp.c_button
		com['customsize'] =true
		com['img_normal'] =1444282371.000
		com['img_hover'] =1444282372.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '1'
		tc.left = -246.000
		tc.right = -204.000
		tc.bottom = 39.000
		tc.top = 81.000
		tc.scaleX = -1.000
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x56160001
			tp = tc
			end
			tp = tp.parent
			--end
		com = tp.c_button
		com['customsize'] =true
		com['img_normal'] =1444282369.000
		com['img_hover'] =1444282370.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '2'
		tc.left = -146.000
		tc.right = -104.000
		tc.bottom = 38.000
		tc.top = 80.000
		tc.scaleX = -1.000
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x56160005
			tp = tc
			end
			tp = tp.parent
			--end
		com = tp.c_button
		com['customsize'] =true
		com['img_normal'] =1444282373.000
		com['img_hover'] =1444282374.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '3'
		tc.left = -96.000
		tc.right = -54.000
		tc.bottom = 39.000
		tc.top = 81.000
		tc.scaleX = -1.000
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x56160007
			tp = tc
			end
			tp = tp.parent
			--end
		com = tp.c_button
		com['customsize'] =true
		com['img_normal'] =1444282375.000
		com['img_hover'] =1444282376.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '4'
		tc.left = -46.000
		tc.right = -4.000
		tc.bottom = 39.000
		tc.top = 81.000
		tc.scaleX = -1.000
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x56160009
			tp = tc
			end
			tp = tp.parent
			--end
		com = tp.c_button
		com['customsize'] =true
		com['img_normal'] =1444282377.000
		com['img_hover'] =1444282378.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '5'
		tc.left = 4.000
		tc.right = 46.000
		tc.bottom = 39.000
		tc.top = 81.000
		tc.scaleX = -1.000
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x5616000b
			tp = tc
			end
			tp = tp.parent
			--end
		com = tp.c_button
		com['customsize'] =true
		com['img_normal'] =1444282379.000
		com['img_hover'] =1444282380.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '6'
		tc.left = 54.000
		tc.right = 96.000
		tc.bottom = 40.000
		tc.top = 82.000
		tc.scaleX = -1.000
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x5616000f
			tp = tc
			end
			tp = tp.parent
			--end
		com = tp.c_button
		com['customsize'] =true
		com['img_normal'] =1444282383.000
		com['img_hover'] =1444282384.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '7'
		tc.left = 104.000
		tc.right = 146.000
		tc.bottom = 39.000
		tc.top = 81.000
		tc.scaleX = -1.000
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x5616000d
			tp = tc
			end
			tp = tp.parent
			--end
		com = tp.c_button
		com['customsize'] =true
		com['img_normal'] =1444282381.000
		com['img_hover'] =1444282382.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '8'
		tc.left = 154.000
		tc.right = 196.000
		tc.bottom = 40.000
		tc.top = 82.000
		tc.scaleX = -1.000
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x5616000f
			tp = tc
			end
			tp = tp.parent
			--end
		com = tp.c_button
		com['customsize'] =true
		com['img_normal'] =1444282383.000
		com['img_hover'] =1444282384.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '9'
		tc.left = 204.000
		tc.right = 246.000
		tc.bottom = 40.000
		tc.top = 82.000
		tc.scaleX = -1.000
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x5616000f
			tp = tc
			end
			tp = tp.parent
			--end
		com = tp.c_button
		com['customsize'] =true
		com['img_normal'] =1444282383.000
		com['img_hover'] =1444282384.000
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '子菜单'
	tp = tc
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '按钮'
		tc.left = 55.000
		tc.right = 85.000
		tc.bottom = 30.000
		tc.top = 60.000
		tc.visible = false
		tp = tc
		com = tp.c_button
		com['customsize'] =true
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '招式'
		tc.left = -67.000
		tc.right = -67.000
		tc.bottom = -26.000
		tc.top = -26.000
		tc.visible = false
		tp = tc
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '升级'
			tc.left = -158.500
			tc.right = -101.500
			tc.bottom = -73.500
			tc.top = -46.500
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x5616001a
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['img_normal'] =1444282394.000
			com['img_hover'] =1444282393.000
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '装备'
			tc.left = -158.500
			tc.right = -101.500
			tc.bottom = -103.500
			tc.top = -76.500
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x56160018
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['img_normal'] =1444282392.000
			com['img_hover'] =1444282391.000
			com['color_hover'] =16777215.000
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '快捷'
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '图片'
			tc.left = -249.000
			tc.right = 15.000
			tc.bottom = -191.500
			tc.top = -158.500
			tc.img = 0x56160034
			tp = tc
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '1'
				tc.left = -129.000
				tc.right = -101.000
				tc.bottom = -14.000
				tc.top = 14.000
				tp = tc
				com = tp.c_button
				com['customsize'] =true
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '2'
				tc.left = -96.000
				tc.right = -68.000
				tc.bottom = -14.000
				tc.top = 14.000
				tp = tc
				com = tp.c_button
				com['customsize'] =true
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '3'
				tc.left = -64.000
				tc.right = -36.000
				tc.bottom = -14.000
				tc.top = 14.000
				tp = tc
				com = tp.c_button
				com['customsize'] =true
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '4'
				tc.left = -30.000
				tc.right = -2.000
				tc.bottom = -14.000
				tc.top = 14.000
				tp = tc
				com = tp.c_button
				com['customsize'] =true
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '5'
				tc.left = 2.000
				tc.right = 30.000
				tc.bottom = -14.000
				tc.top = 14.000
				tp = tc
				com = tp.c_button
				com['customsize'] =true
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '6'
				tc.left = 36.000
				tc.right = 64.000
				tc.bottom = -14.000
				tc.top = 14.000
				tp = tc
				com = tp.c_button
				com['customsize'] =true
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '7'
				tc.left = 68.000
				tc.right = 96.000
				tc.bottom = -14.000
				tc.top = 14.000
				tp = tc
				com = tp.c_button
				com['customsize'] =true
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '8'
				tc.left = 101.000
				tc.right = 129.000
				tc.bottom = -14.000
				tc.top = 14.000
				tp = tc
				com = tp.c_button
				com['customsize'] =true
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'c1'
			tc.left = -348.000
			tc.right = 52.000
			tc.bottom = -164.000
			tc.top = -124.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '招式快捷位置设定'
			tc.font = 0x61300000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '阵法'
		tc.visible = false
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '图片'
			tc.left = -249.000
			tc.right = 15.000
			tc.bottom = -191.500
			tc.top = -158.500
			tc.img = 0x56160034
			tp = tc
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '1'
				tc.left = -129.000
				tc.right = -101.000
				tc.bottom = -14.000
				tc.top = 14.000
				tp = tc
				com = tp.c_button
				com['customsize'] =true
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '2'
				tc.left = -96.000
				tc.right = -68.000
				tc.bottom = -14.000
				tc.top = 14.000
				tp = tc
				com = tp.c_button
				com['customsize'] =true
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '3'
				tc.left = -64.000
				tc.right = -36.000
				tc.bottom = -14.000
				tc.top = 14.000
				tp = tc
				com = tp.c_button
				com['customsize'] =true
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '4'
				tc.left = -30.000
				tc.right = -2.000
				tc.bottom = -14.000
				tc.top = 14.000
				tp = tc
				com = tp.c_button
				com['customsize'] =true
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '5'
				tc.left = 2.000
				tc.right = 30.000
				tc.bottom = -14.000
				tc.top = 14.000
				tp = tc
				com = tp.c_button
				com['customsize'] =true
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '6'
				tc.left = 36.000
				tc.right = 64.000
				tc.bottom = -14.000
				tc.top = 14.000
				tp = tc
				com = tp.c_button
				com['customsize'] =true
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '7'
				tc.left = 68.000
				tc.right = 96.000
				tc.bottom = -14.000
				tc.top = 14.000
				tp = tc
				com = tp.c_button
				com['customsize'] =true
				tp = tp.parent
				--end
				tc = G.loadUI('v_button')
				tp.addChild(tc)
				tc.name = '8'
				tc.left = 101.000
				tc.right = 129.000
				tc.bottom = -14.000
				tc.top = 14.000
				tp = tc
				com = tp.c_button
				com['customsize'] =true
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'c1'
			tc.left = -348.000
			tc.right = 52.000
			tc.bottom = -164.000
			tc.top = -124.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '当前装备阵法'
			tc.font = 0x61300000
			tc.align = 1
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '名称'
			tc.pivotX = 0.000
			tc.left = -214.000
			tc.right = 586.000
			tc.bottom = -220.000
			tc.top = -140.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '天罡北斗七星阵'
			tc.font = 0x613c0000
			tc.align = 1
			tc.wordSpace = 2
			tc.style = 8
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '文本'
	tc.visible = false
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '名称'
		tc.left = -229.000
		tc.right = 151.000
		tc.bottom = 23.000
		tc.top = 63.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.font = 0x612c0000
		tc.align = 1
		tc.wordSpace = -3
		tc.lineSpace = -2
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '类别'
		tc.left = -190.000
		tc.right = 50.000
		tc.bottom = -9.000
		tc.top = 31.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.font = 0x61300000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '伤害'
		tc.pivotX = 0.000
		tc.left = -58.000
		tc.right = 242.000
		tc.bottom = -137.000
		tc.top = -97.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '0'
		tc.font = 0x61300000
		tc.align = 1
		tc.wordSpace = -2
		tc.style = 11
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '标签'
		tc.pivotX = 0.000
		tc.left = -169.000
		tc.right = 331.000
		tc.bottom = -135.000
		tc.top = -95.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '基础伤害：'
		tc.font = 0x61300000
		tc.align = 1
		tc.wordSpace = -2
		tc.style = 10
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '说明'
		tc.left = -262.000
		tc.right = 142.000
		tc.bottom = -197.000
		tc.top = 9.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '    ★被攻击闪避率UP每升一级轻身加7,闪躲加3,装备后有效'
		tc.wrap = true
		tc.font = 0x61200000
		tc.align = 1
		tc.wordSpace = -2
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '等级'
		tc.left = -165.000
		tc.right = -105.000
		tc.bottom = -44.000
		tc.top = -4.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '9'
		tc.font = 0x61280000
		tc.align = 3
		tc.style = 2
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '00'
			tc.left = 18.000
			tc.right = 138.000
			tc.bottom = -38.000
			tc.top = 42.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '级'
			tc.font = 0x61500000
			tc.align = 1
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '经验'
		tc.left = -75.000
		tc.right = 85.000
		tc.bottom = -45.000
		tc.top = -5.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '440/450'
		tc.font = 0x61280000
		tc.align = 1
		tc.style = 2
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '001'
			tc.left = -246.000
			tc.right = -6.000
			tc.bottom = -37.000
			tc.top = 43.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '经验:'
			tc.font = 0x61500000
			tc.align = 1
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '页数'
	tc.left = 130.000
	tc.right = 190.000
	tc.bottom = -165.000
	tc.top = -125.000
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.text = '1'
	tc.font = 0x61300000
	tc.style = 8
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '种类'
	tc.left = 141.000
	tc.right = 171.000
	tc.bottom = -79.000
	tc.top = -59.000
	tc.visible = false
	tc.text = '9'
	tc.font = 0x61180000
	tc.style = 8
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '总页数'
	tc.left = 141.000
	tc.right = 171.000
	tc.bottom = -79.000
	tc.top = -59.000
	tc.visible = false
	tc.text = '9'
	tc.font = 0x61180000
	tc.style = 8
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '总个数'
	tc.left = 141.000
	tc.right = 171.000
	tc.bottom = -79.000
	tc.top = -59.000
	tc.visible = false
	tc.text = '0'
	tc.font = 0x61180000
	tc.style = 8
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '闪光1'
	tc.left = -238.000
	tc.right = -190.000
	tc.bottom = 72.000
	tc.top = 120.000
	tc.visible = false
	tc.img = 0x33010001
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '闪光2'
	tc.left = 52.500
	tc.right = 87.500
	tc.bottom = 27.500
	tc.top = 62.500
	tc.visible = false
	tc.img = 0x33010001
	tp = tc
	tp = tp.parent
	--end
	tc = G.loadUI('v_button')
	tp.addChild(tc)
	tc.name = '结束'
	tc.left = 245.500
	tc.right = 278.500
	tc.bottom = 116.500
	tc.top = 147.500
	tp = tc
		tc = tp.getChildByName('img')
		if tc then
		tc.img = 0x560a001d
		tp = tc
		end
		tp = tp.parent
		--end
	com = tp.c_button
	com['img_normal'] =1443495965.000
	tp = tp.parent
	--end
	tc = G.loadUI('v_button')
	tp.addChild(tc)
	tc.name = '右'
	tc.left = 195.000
	tc.right = 225.000
	tc.bottom = -153.000
	tc.top = -137.000
	tp = tc
		tc = tp.getChildByName('img')
		if tc then
		tc.img = 0x56160015
		tp = tc
		end
		tp = tp.parent
		--end
	com = tp.c_button
	com['img_normal'] =1444282389.000
	tp = tp.parent
	--end
	tc = G.loadUI('v_button')
	tp.addChild(tc)
	tc.name = '左'
	tc.left = 95.000
	tc.right = 125.000
	tc.bottom = -153.000
	tc.top = -137.000
	tc.scaleX = -1.000
	tp = tc
		tc = tp.getChildByName('img')
		if tc then
		tc.img = 0x56160015
		tp = tc
		end
		tp = tp.parent
		--end
	com = tp.c_button
	com['img_normal'] =1444282389.000
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
tp.c_skill = setmetatable({}, c_skill)
