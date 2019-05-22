--[[2033

]]
local G = require 'gf'
local c_heaven_book = require 'c_heaven_book'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_heaven_book'
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
	tc.mouseEnabled = true
	tc.img = 0x56050054
	tp = tc
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '显示'
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '底层'
		tc.left = -246.000
		tc.right = 254.000
		tc.bottom = 173.000
		tc.top = 233.000
		tc.img = 0x56160065
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '文本'
		tc.pivotX = 0.000
		tc.left = -245.000
		tc.right = 755.000
		tc.bottom = 176.000
		tc.top = 236.000
		tc.mouseEnabled = true
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.text = '请选择需要进行的天书路线'
		tc.font = 0x613c0000
		tc.style = 5
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '按钮'
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'book_1'
		tc.left = -289.500
		tc.right = -210.500
		tc.bottom = 56.500
		tc.top = 143.500
		tc.mouseEnabled = true
		tc.img = 0x560f1001
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'book_2'
		tc.left = -140.000
		tc.right = -60.000
		tc.bottom = 56.000
		tc.top = 144.000
		tc.mouseEnabled = true
		tc.img = 0x560f1002
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'book_3'
		tc.left = 10.000
		tc.right = 90.000
		tc.bottom = 56.000
		tc.top = 144.000
		tc.mouseEnabled = true
		tc.img = 0x560f1003
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'book_4'
		tc.left = 160.000
		tc.right = 240.000
		tc.bottom = 56.000
		tc.top = 144.000
		tc.mouseEnabled = true
		tc.img = 0x560f1004
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'book_5'
		tc.left = -290.000
		tc.right = -210.000
		tc.bottom = -44.000
		tc.top = 44.000
		tc.mouseEnabled = true
		tc.img = 0x560f1005
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'book_6'
		tc.left = -140.000
		tc.right = -60.000
		tc.bottom = -44.000
		tc.top = 44.000
		tc.mouseEnabled = true
		tc.img = 0x560f1006
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'book_7'
		tc.left = 10.000
		tc.right = 90.000
		tc.bottom = -44.000
		tc.top = 44.000
		tc.mouseEnabled = true
		tc.img = 0x560f1007
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'book_8'
		tc.left = 160.000
		tc.right = 240.000
		tc.bottom = -44.000
		tc.top = 44.000
		tc.mouseEnabled = true
		tc.img = 0x560f1008
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'book_9'
		tc.left = -290.000
		tc.right = -210.000
		tc.bottom = -144.000
		tc.top = -56.000
		tc.mouseEnabled = true
		tc.img = 0x560f1009
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'book_10'
		tc.left = -140.000
		tc.right = -60.000
		tc.bottom = -144.000
		tc.top = -56.000
		tc.mouseEnabled = true
		tc.img = 0x560f100a
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'book_11'
		tc.left = 10.000
		tc.right = 90.000
		tc.bottom = -144.000
		tc.top = -56.000
		tc.mouseEnabled = true
		tc.img = 0x560f100b
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'book_12'
		tc.left = 160.000
		tc.right = 240.000
		tc.bottom = -144.000
		tc.top = -56.000
		tc.mouseEnabled = true
		tc.img = 0x560f100c
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'book_13'
		tc.left = -290.000
		tc.right = -210.000
		tc.bottom = -244.000
		tc.top = -156.000
		tc.mouseEnabled = true
		tc.img = 0x560f100d
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'book_14'
		tc.left = -140.000
		tc.right = -60.000
		tc.bottom = -244.000
		tc.top = -156.000
		tc.mouseEnabled = true
		tc.img = 0x560f100e
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '结束'
	tc.left = 263.000
	tc.right = 313.000
	tc.bottom = 187.000
	tc.top = 237.000
	tc.mouseEnabled = true
	tc.img = 0x56160014
	tp = tc
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
tp.c_heaven_book = setmetatable({}, c_heaven_book)
