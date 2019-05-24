--[[2035

]]
local G = require 'gf'
local c_mystery_store = require 'c_mystery_store'
local c_button = require 'c_button'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_mystery_store'
tc.left = -426.500
tc.right = 426.500
tc.bottom = -240.000
tc.top = 240.000
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
	tp = tc
		tc = G.loadUI('v_background')
		tp.addChild(tc)
		tc.name = 'c1'
		tc.pivotX = 0.000
		tc.pivotY = 1.000
		tc.left = -390.000
		tc.right = 410.000
		tc.bottom = -140.000
		tc.top = 230.000
		tp = tc
		tp = tp.parent
		--end
		tc = G.loadUI('v_background')
		tp.addChild(tc)
		tc.name = 'c11'
		tc.pivotX = 0.000
		tc.pivotY = 0.000
		tc.left = -393.000
		tc.right = 407.000
		tc.bottom = -235.000
		tc.top = -150.000
		tp = tc
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '标签'
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '1'
			tc.pivotX = 0.000
			tc.pivotY = 1.000
			tc.left = -377.000
			tc.right = 1064.000
			tc.bottom = 170.000
			tc.top = 220.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '       名称        持有数量    单价    买入数量   需用钱'
			tc.font = 0x61320000
			tc.align = 1
			tc.style = 8
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '11'
			tc.pivotX = 0.000
			tc.left = -372.000
			tc.right = 270.000
			tc.bottom = -145.000
			tc.top = -95.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '持有银两：         总价：'
			tc.font = 0x61320000
			tc.align = 1
			tc.style = 8
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '标本'
		tc.bottom = 10.000
		tc.top = 10.000
		tc.visible = false
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '名称'
			tc.left = -461.000
			tc.right = -69.000
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '超级九转熊胆丸会'
			tc.font = 0x61300000
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '持有'
			tc.left = -123.500
			tc.right = -48.500
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '100'
			tc.font = 0x61300000
			tc.style = 5
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '单价'
			tc.left = -19.500
			tc.right = 105.500
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '10000'
			tc.font = 0x61300000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '买入'
			tc.left = 138.500
			tc.right = 213.500
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '999'
			tc.font = 0x61300000
			tc.style = 8
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '价钱'
			tc.left = 238.500
			tc.right = 363.500
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '99999'
			tc.font = 0x61300000
			tc.style = 11
			tp = tc
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '减'
			tc.left = 111.000
			tc.right = 141.000
			tc.bottom = 155.000
			tc.top = 185.000
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x56160037
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['customsize'] =true
			com['img_normal'] =1444282423.000
			com['img_hover'] =1444282424.000
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '加'
			tc.left = 211.000
			tc.right = 241.000
			tc.bottom = 155.000
			tc.top = 185.000
			tc.scaleX = -1.000
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x56160037
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['customsize'] =true
			com['img_normal'] =1444282423.000
			com['img_hover'] =1444282424.000
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '物品1'
		tc.bottom = -20.000
		tc.top = -20.000
		tc.visible = false
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '名称'
			tc.left = -461.000
			tc.right = -69.000
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '超级九转熊胆丸会'
			tc.font = 0x61300000
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '持有'
			tc.left = -123.500
			tc.right = -48.500
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '100'
			tc.font = 0x61300000
			tc.style = 5
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '单价'
			tc.left = -19.500
			tc.right = 105.500
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '10000'
			tc.font = 0x61300000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '买入'
			tc.left = 138.500
			tc.right = 213.500
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '999'
			tc.font = 0x61300000
			tc.style = 8
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '价钱'
			tc.left = 238.500
			tc.right = 363.500
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '99999'
			tc.font = 0x61300000
			tc.style = 11
			tp = tc
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '减'
			tc.left = 111.000
			tc.right = 141.000
			tc.bottom = 155.000
			tc.top = 185.000
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x56160037
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['customsize'] =true
			com['img_normal'] =1444282423.000
			com['img_hover'] =1444282424.000
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '加'
			tc.left = 211.000
			tc.right = 241.000
			tc.bottom = 155.000
			tc.top = 185.000
			tc.scaleX = -1.000
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x56160037
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['customsize'] =true
			com['img_normal'] =1444282423.000
			com['img_hover'] =1444282424.000
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '物品1'
		tc.bottom = -50.000
		tc.top = -50.000
		tc.visible = false
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '名称'
			tc.left = -461.000
			tc.right = -69.000
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '超级九转熊胆丸会'
			tc.font = 0x61300000
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '持有'
			tc.left = -123.500
			tc.right = -48.500
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '100'
			tc.font = 0x61300000
			tc.style = 5
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '单价'
			tc.left = -19.500
			tc.right = 105.500
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '10000'
			tc.font = 0x61300000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '买入'
			tc.left = 138.500
			tc.right = 213.500
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '999'
			tc.font = 0x61300000
			tc.style = 8
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '价钱'
			tc.left = 238.500
			tc.right = 363.500
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '99999'
			tc.font = 0x61300000
			tc.style = 11
			tp = tc
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '减'
			tc.left = 111.000
			tc.right = 141.000
			tc.bottom = 155.000
			tc.top = 185.000
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x56160037
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['customsize'] =true
			com['img_normal'] =1444282423.000
			com['img_hover'] =1444282424.000
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '加'
			tc.left = 211.000
			tc.right = 241.000
			tc.bottom = 155.000
			tc.top = 185.000
			tc.scaleX = -1.000
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x56160037
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['customsize'] =true
			com['img_normal'] =1444282423.000
			com['img_hover'] =1444282424.000
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '物品1'
		tc.bottom = -80.000
		tc.top = -80.000
		tc.visible = false
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '名称'
			tc.left = -461.000
			tc.right = -69.000
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '超级九转熊胆丸会'
			tc.font = 0x61300000
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '持有'
			tc.left = -123.500
			tc.right = -48.500
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '100'
			tc.font = 0x61300000
			tc.style = 5
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '单价'
			tc.left = -19.500
			tc.right = 105.500
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '10000'
			tc.font = 0x61300000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '买入'
			tc.left = 138.500
			tc.right = 213.500
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '999'
			tc.font = 0x61300000
			tc.style = 8
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '价钱'
			tc.left = 238.500
			tc.right = 363.500
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '99999'
			tc.font = 0x61300000
			tc.style = 11
			tp = tc
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '减'
			tc.left = 111.000
			tc.right = 141.000
			tc.bottom = 155.000
			tc.top = 185.000
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x56160037
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['customsize'] =true
			com['img_normal'] =1444282423.000
			com['img_hover'] =1444282424.000
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '加'
			tc.left = 211.000
			tc.right = 241.000
			tc.bottom = 155.000
			tc.top = 185.000
			tc.scaleX = -1.000
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x56160037
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['customsize'] =true
			com['img_normal'] =1444282423.000
			com['img_hover'] =1444282424.000
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '物品11'
		tc.bottom = -110.000
		tc.top = -110.000
		tc.visible = false
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '名称'
			tc.left = -461.000
			tc.right = -69.000
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '超级九转熊胆丸会'
			tc.font = 0x61300000
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '持有'
			tc.left = -123.500
			tc.right = -48.500
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '100'
			tc.font = 0x61300000
			tc.style = 5
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '单价'
			tc.left = -19.500
			tc.right = 105.500
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '10000'
			tc.font = 0x61300000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '买入'
			tc.left = 138.500
			tc.right = 213.500
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '999'
			tc.font = 0x61300000
			tc.style = 8
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '价钱'
			tc.left = 238.500
			tc.right = 363.500
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '99999'
			tc.font = 0x61300000
			tc.style = 11
			tp = tc
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '减'
			tc.left = 111.000
			tc.right = 141.000
			tc.bottom = 155.000
			tc.top = 185.000
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x56160037
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['customsize'] =true
			com['img_normal'] =1444282423.000
			com['img_hover'] =1444282424.000
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '加'
			tc.left = 211.000
			tc.right = 241.000
			tc.bottom = 155.000
			tc.top = 185.000
			tc.scaleX = -1.000
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x56160037
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['customsize'] =true
			com['img_normal'] =1444282423.000
			com['img_hover'] =1444282424.000
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '物品11'
		tc.bottom = -140.000
		tc.top = -140.000
		tc.visible = false
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '名称'
			tc.left = -461.000
			tc.right = -69.000
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '超级九转熊胆丸会'
			tc.font = 0x61300000
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '持有'
			tc.left = -123.500
			tc.right = -48.500
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '100'
			tc.font = 0x61300000
			tc.style = 5
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '单价'
			tc.left = -19.500
			tc.right = 105.500
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '10000'
			tc.font = 0x61300000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '买入'
			tc.left = 138.500
			tc.right = 213.500
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '999'
			tc.font = 0x61300000
			tc.style = 8
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '价钱'
			tc.left = 238.500
			tc.right = 363.500
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '99999'
			tc.font = 0x61300000
			tc.style = 11
			tp = tc
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '减'
			tc.left = 111.000
			tc.right = 141.000
			tc.bottom = 155.000
			tc.top = 185.000
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x56160037
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['customsize'] =true
			com['img_normal'] =1444282423.000
			com['img_hover'] =1444282424.000
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '加'
			tc.left = 211.000
			tc.right = 241.000
			tc.bottom = 155.000
			tc.top = 185.000
			tc.scaleX = -1.000
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x56160037
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['customsize'] =true
			com['img_normal'] =1444282423.000
			com['img_hover'] =1444282424.000
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '物品111'
		tc.bottom = -170.000
		tc.top = -170.000
		tc.visible = false
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '名称'
			tc.left = -461.000
			tc.right = -69.000
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '超级九转熊胆丸会'
			tc.font = 0x61300000
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '持有'
			tc.left = -123.500
			tc.right = -48.500
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '100'
			tc.font = 0x61300000
			tc.style = 5
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '单价'
			tc.left = -19.500
			tc.right = 105.500
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '10000'
			tc.font = 0x61300000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '买入'
			tc.left = 138.500
			tc.right = 213.500
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '999'
			tc.font = 0x61300000
			tc.style = 8
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '价钱'
			tc.left = 238.500
			tc.right = 363.500
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '99999'
			tc.font = 0x61300000
			tc.style = 11
			tp = tc
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '减'
			tc.left = 111.000
			tc.right = 141.000
			tc.bottom = 155.000
			tc.top = 185.000
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x56160037
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['customsize'] =true
			com['img_normal'] =1444282423.000
			com['img_hover'] =1444282424.000
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '加'
			tc.left = 211.000
			tc.right = 241.000
			tc.bottom = 155.000
			tc.top = 185.000
			tc.scaleX = -1.000
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x56160037
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['customsize'] =true
			com['img_normal'] =1444282423.000
			com['img_hover'] =1444282424.000
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '物品1111'
		tc.bottom = -200.000
		tc.top = -200.000
		tc.visible = false
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '名称'
			tc.left = -461.000
			tc.right = -69.000
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '超级九转熊胆丸会'
			tc.font = 0x61300000
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '持有'
			tc.left = -123.500
			tc.right = -48.500
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '100'
			tc.font = 0x61300000
			tc.style = 5
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '单价'
			tc.left = -19.500
			tc.right = 105.500
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '10000'
			tc.font = 0x61300000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '买入'
			tc.left = 138.500
			tc.right = 213.500
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '999'
			tc.font = 0x61300000
			tc.style = 8
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '价钱'
			tc.left = 238.500
			tc.right = 363.500
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '99999'
			tc.font = 0x61300000
			tc.style = 11
			tp = tc
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '减'
			tc.left = 111.000
			tc.right = 141.000
			tc.bottom = 155.000
			tc.top = 185.000
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x56160037
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['customsize'] =true
			com['img_normal'] =1444282423.000
			com['img_hover'] =1444282424.000
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '加'
			tc.left = 211.000
			tc.right = 241.000
			tc.bottom = 155.000
			tc.top = 185.000
			tc.scaleX = -1.000
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x56160037
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['customsize'] =true
			com['img_normal'] =1444282423.000
			com['img_hover'] =1444282424.000
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '物品11111'
		tc.bottom = -230.000
		tc.top = -230.000
		tc.visible = false
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '名称'
			tc.left = -461.000
			tc.right = -69.000
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '超级九转熊胆丸会'
			tc.font = 0x61300000
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '持有'
			tc.left = -123.500
			tc.right = -48.500
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '100'
			tc.font = 0x61300000
			tc.style = 5
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '单价'
			tc.left = -19.500
			tc.right = 105.500
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '10000'
			tc.font = 0x61300000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '买入'
			tc.left = 138.500
			tc.right = 213.500
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '999'
			tc.font = 0x61300000
			tc.style = 8
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '价钱'
			tc.left = 238.500
			tc.right = 363.500
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '99999'
			tc.font = 0x61300000
			tc.style = 11
			tp = tc
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '减'
			tc.left = 111.000
			tc.right = 141.000
			tc.bottom = 155.000
			tc.top = 185.000
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x56160037
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['customsize'] =true
			com['img_normal'] =1444282423.000
			com['img_hover'] =1444282424.000
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '加'
			tc.left = 211.000
			tc.right = 241.000
			tc.bottom = 155.000
			tc.top = 185.000
			tc.scaleX = -1.000
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x56160037
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['customsize'] =true
			com['img_normal'] =1444282423.000
			com['img_hover'] =1444282424.000
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '物品11111'
		tc.bottom = -260.000
		tc.top = -260.000
		tc.visible = false
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '名称'
			tc.left = -461.000
			tc.right = -69.000
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '超级九转熊胆丸会'
			tc.font = 0x61300000
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '持有'
			tc.left = -123.500
			tc.right = -48.500
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '100'
			tc.font = 0x61300000
			tc.style = 5
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '单价'
			tc.left = -19.500
			tc.right = 105.500
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '10000'
			tc.font = 0x61300000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '买入'
			tc.left = 138.500
			tc.right = 213.500
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '999'
			tc.font = 0x61300000
			tc.style = 8
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '价钱'
			tc.left = 238.500
			tc.right = 363.500
			tc.bottom = 146.000
			tc.top = 194.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '99999'
			tc.font = 0x61300000
			tc.style = 11
			tp = tc
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '减'
			tc.left = 111.000
			tc.right = 141.000
			tc.bottom = 155.000
			tc.top = 185.000
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x56160037
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['customsize'] =true
			com['img_normal'] =1444282423.000
			com['img_hover'] =1444282424.000
			tp = tp.parent
			--end
			tc = G.loadUI('v_button')
			tp.addChild(tc)
			tc.name = '加'
			tc.left = 211.000
			tc.right = 241.000
			tc.bottom = 155.000
			tc.top = 185.000
			tc.scaleX = -1.000
			tp = tc
				tc = tp.getChildByName('img')
				if tc then
				tc.img = 0x56160037
				tp = tc
				end
				tp = tp.parent
				--end
			com = tp.c_button
			com['customsize'] =true
			com['img_normal'] =1444282423.000
			com['img_hover'] =1444282424.000
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '页数'
		tc.left = 336.000
		tc.right = 388.000
		tc.bottom = 25.000
		tc.top = 75.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 3
		tc.text = '10'
		tc.font = 0x61320000
		tc.style = 4
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '总价'
		tc.pivotX = 0.000
		tc.left = -66.000
		tc.right = 134.000
		tc.bottom = -144.000
		tc.top = -96.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 3
		tc.text = '99999999'
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
		tc.left = -252.000
		tc.right = -52.000
		tc.bottom = -144.000
		tc.top = -96.000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 3
		tc.text = '99999999'
		tc.font = 0x61300000
		tc.align = 1
		tc.style = 5
		tp = tc
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '物品'
		tc.bottom = -60.000
		tc.top = -60.000
		tp = tc
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = '物品图片'
			tc.left = -375.000
			tc.right = -321.000
			tc.bottom = -156.000
			tc.top = -102.000
			tp = tc
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '黑底'
				tc.left = -27.000
				tc.right = 27.000
				tc.bottom = -27.000
				tc.top = 27.000
				tc.img = 0x560e9999
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '图片'
				tc.left = -28.000
				tc.right = 28.000
				tc.bottom = -28.000
				tc.top = 28.000
				tc.mouseEnabled = true
				tc.img = 0x560e9999
				tp = tc
				tp = tp.parent
				--end
				tc = G.Quad()
				tp.addChild(tc)
				tc.name = '底片'
				tc.left = -28.000
				tc.right = 28.000
				tc.bottom = -28.000
				tc.top = 28.000
				tc.img = 0x56161002
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '说明'
			tc.pivotX = 0.000
			tc.left = -306.000
			tc.right = -153.000
			tc.bottom = -139.000
			tc.top = -89.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = '说明：'
			tc.font = 0x61320000
			tc.align = 1
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
	tc.name = '按钮'
	tp = tc
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '上'
		tc.left = 337.000
		tc.right = 387.000
		tc.bottom = 108.000
		tc.top = 158.000
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
		com['btn_class'] =0.000
		com['customsize'] =true
		com['img_normal'] =1444282398.000
		com['img_hover'] =1444282399.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '下'
		tc.left = 340.000
		tc.right = 390.000
		tc.bottom = -66.000
		tc.top = -16.000
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
		com['btn_class'] =0.000
		com['customsize'] =true
		com['img_normal'] =1444282398.000
		com['img_hover'] =1444282399.000
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '结算'
		tc.left = 241.000
		tc.right = 307.000
		tc.bottom = -132.000
		tc.top = -110.000
		tp = tc
			tc = tp.getChildByName('img')
			if tc then
			tc.img = 0x5616002c
			tp = tc
			end
			tp = tp.parent
			--end
		com = tp.c_button
		com['img_normal'] =1444282412.000
		com['img_hover'] =1444282414.000
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '离开'
		tc.left = 294.000
		tc.right = 426.000
		tc.bottom = -143.000
		tc.top = -99.000
		tc.mouseEnabled = true
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '离开'
		tc.font = 0x61320000
		tc.style = 8
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
tp.c_mystery_store = setmetatable({}, c_mystery_store)
