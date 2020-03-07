--[[2024

]]
local G = require 'gf'
local c_load = require 'c_load'
local c_button = require 'c_button'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_load'
tc.left = -640.000
tc.right = 640.000
tc.bottom = -360.000
tc.top = 360.000
tp = tc
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = 'c5'
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
	tc.name = 'c4'
	tc.left = -426.500
	tc.right = 426.500
	tc.bottom = -240.000
	tc.top = 240.000
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = 'c2'
	tc.left = -258.000
	tc.right = 262.000
	tc.bottom = -229.000
	tc.top = -129.000
	tc.img = 0x56160020
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = 'c1'
	tc.left = -265.000
	tc.right = 255.000
	tc.bottom = -129.000
	tc.top = 231.000
	tc.img = 0x56160074
	tp = tc
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = 'save'
	tc.left = -7.000
	tc.right = -7.000
	tp = tc
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = 'save1'
		tc.left = -210.000
		tc.right = -90.000
		tc.bottom = -75.000
		tc.top = 95.000
		tc.mouseEnabled = true
		tp = tc
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = 'true'
			tc.visible = false
			tp = tc
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '周目'
				tc.left = -70.000
				tc.right = 70.000
				tc.bottom = 65.000
				tc.top = 85.000
				tc.text = '周目二'
				tc.font = 0x61140000
				tc.style = 2
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '难度'
				tc.left = -50.000
				tc.right = 50.000
				tc.bottom = 45.000
				tc.top = 65.000
				tc.text = '难度;休闲'
				tc.font = 0x61140000
				tc.style = 2
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '门派'
				tc.left = -50.000
				tc.right = 50.000
				tc.bottom = 25.000
				tc.top = 45.000
				tc.text = '无门派'
				tc.font = 0x61140000
				tc.style = 2
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '等级'
				tc.left = -65.000
				tc.right = 65.000
				tc.bottom = 5.000
				tc.top = 25.000
				tc.text = '还施水阁1级'
				tc.font = 0x61120000
				tc.style = 2
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '时间'
				tc.pivotY = 1.000
				tc.left = -50.000
				tc.right = 50.000
				tc.bottom = -55.000
				tc.top = 5.000
				tc.wrap = true
				tc.font = 0x61140000
				tc.align = 1
				tc.style = 2
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '次数'
				tc.pivotY = 1.000
				tc.left = -52.000
				tc.right = 48.000
				tc.bottom = -75.000
				tc.top = -55.000
				tc.wrap = true
				tc.font = 0x61140000
				tc.style = 2
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'false'
			tc.left = -59.000
			tc.right = 61.000
			tc.bottom = -21.000
			tc.top = 49.000
			tc.text = '无存档'
			tc.font = 0x61200041
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'over'
			tc.left = -93.000
			tc.right = 107.000
			tc.bottom = 164.000
			tc.top = 264.000
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
		tc.name = 'save2'
		tc.left = -53.000
		tc.right = 67.000
		tc.bottom = -75.000
		tc.top = 95.000
		tc.mouseEnabled = true
		tp = tc
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = 'true'
			tc.visible = false
			tp = tc
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '周目'
				tc.left = -70.000
				tc.right = 70.000
				tc.bottom = 65.000
				tc.top = 85.000
				tc.text = '周目一'
				tc.font = 0x61140000
				tc.style = 2
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '难度'
				tc.left = -50.000
				tc.right = 50.000
				tc.bottom = 45.000
				tc.top = 65.000
				tc.text = '难度;休闲'
				tc.font = 0x61140000
				tc.style = 2
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '门派'
				tc.left = -50.000
				tc.right = 50.000
				tc.bottom = 25.000
				tc.top = 45.000
				tc.text = '无门派'
				tc.font = 0x61140000
				tc.style = 2
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '等级'
				tc.left = -65.000
				tc.right = 65.000
				tc.bottom = 5.000
				tc.top = 25.000
				tc.text = '1级'
				tc.font = 0x61120000
				tc.style = 2
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '时间'
				tc.pivotY = 1.000
				tc.left = -50.000
				tc.right = 50.000
				tc.bottom = -55.000
				tc.top = 5.000
				tc.wrap = true
				tc.font = 0x61140000
				tc.align = 1
				tc.style = 2
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '次数'
				tc.pivotY = 1.000
				tc.left = -52.000
				tc.right = 48.000
				tc.bottom = -75.000
				tc.top = -55.000
				tc.wrap = true
				tc.font = 0x61140000
				tc.style = 2
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'false'
			tc.left = -59.000
			tc.right = 61.000
			tc.bottom = -21.000
			tc.top = 49.000
			tc.text = '无存档'
			tc.font = 0x61200041
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'over'
			tc.left = -93.000
			tc.right = 107.000
			tc.bottom = 164.000
			tc.top = 264.000
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
		tc.name = 'save3'
		tc.left = 104.000
		tc.right = 224.000
		tc.bottom = -75.000
		tc.top = 95.000
		tc.mouseEnabled = true
		tp = tc
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = 'true'
			tc.visible = false
			tp = tc
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '周目'
				tc.left = -70.000
				tc.right = 70.000
				tc.bottom = 65.000
				tc.top = 85.000
				tc.text = '周目一'
				tc.font = 0x61140000
				tc.style = 2
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '难度'
				tc.left = -50.000
				tc.right = 50.000
				tc.bottom = 45.000
				tc.top = 65.000
				tc.text = '难度;休闲'
				tc.font = 0x61140000
				tc.style = 2
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '门派'
				tc.left = -50.000
				tc.right = 50.000
				tc.bottom = 25.000
				tc.top = 45.000
				tc.text = '无门派'
				tc.font = 0x61140000
				tc.style = 2
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '等级'
				tc.left = -65.000
				tc.right = 65.000
				tc.bottom = 5.000
				tc.top = 25.000
				tc.text = '1级'
				tc.font = 0x61120000
				tc.style = 2
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '时间'
				tc.pivotY = 1.000
				tc.left = -50.000
				tc.right = 50.000
				tc.bottom = -55.000
				tc.top = 5.000
				tc.wrap = true
				tc.font = 0x61140000
				tc.align = 1
				tc.style = 2
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '次数'
				tc.pivotY = 1.000
				tc.left = -52.000
				tc.right = 48.000
				tc.bottom = -75.000
				tc.top = -55.000
				tc.wrap = true
				tc.font = 0x61140000
				tc.style = 2
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'false'
			tc.left = -59.000
			tc.right = 61.000
			tc.bottom = -21.000
			tc.top = 49.000
			tc.text = '无存档'
			tc.font = 0x61200041
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'over'
			tc.left = -93.000
			tc.right = 107.000
			tc.bottom = 164.000
			tc.top = 264.000
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
		tc.name = 'save4'
		tc.left = -253.000
		tc.right = 267.000
		tc.bottom = -229.000
		tc.top = -129.000
		tc.mouseEnabled = true
		tp = tc
			tc = G.loadUI('v_empty')
			tp.addChild(tc)
			tc.name = 'true'
			tc.visible = false
			tp = tc
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '周目'
				tc.left = -245.000
				tc.right = -95.000
				tc.bottom = 20.000
				tc.top = 40.000
				tc.text = '周目二十'
				tc.font = 0x61140000
				tc.style = 2
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '难度'
				tc.left = -82.000
				tc.right = 18.000
				tc.bottom = 20.000
				tc.top = 40.000
				tc.text = '难度;休闲'
				tc.font = 0x61140000
				tc.style = 2
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '门派'
				tc.left = 43.000
				tc.right = 143.000
				tc.bottom = 20.000
				tc.top = 40.000
				tc.font = 0x61140000
				tc.style = 2
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '等级'
				tc.left = 120.000
				tc.right = 250.000
				tc.bottom = 20.000
				tc.top = 40.000
				tc.text = '1级'
				tc.font = 0x61120000
				tc.style = 2
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '时间'
				tc.left = -148.000
				tc.right = 152.000
				tc.bottom = -2.000
				tc.top = 18.000
				tc.font = 0x61140000
				tc.style = 2
				tp = tc
				tp = tp.parent
				--end
				tc = G.TextQuad()
				tp.addChild(tc)
				tc.name = '次数'
				tc.pivotY = 1.000
				tc.left = -54.000
				tc.right = 46.000
				tc.bottom = -23.000
				tc.top = -3.000
				tc.wrap = true
				tc.font = 0x61140000
				tc.style = 2
				tp = tc
				tp = tp.parent
				--end
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'false'
			tc.left = -60.000
			tc.right = 60.000
			tc.bottom = -36.000
			tc.top = 34.000
			tc.text = '无存档'
			tc.font = 0x61200041
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'over'
			tc.left = -93.000
			tc.right = 107.000
			tc.bottom = 164.000
			tc.top = 264.000
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61200041
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = 'c3'
	tc.left = -100.000
	tc.bottom = -222.000
	tc.top = -202.000
	tc.text = '自动记录档位'
	tc.font = 0x61140000
	tc.style = 10
	tp = tc
	tp = tp.parent
	--end
	tc = G.loadUI('v_button')
	tp.addChild(tc)
	tc.name = '结束'
	tc.left = 200.500
	tc.right = 233.500
	tc.bottom = 195.500
	tc.top = 226.500
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
	tc.text = 'ver3.10'
	tc.font = 0x61200041
	tc.style = 3
	tp = tc
	tp = tp.parent
	--end
tp.c_load = setmetatable({}, c_load)
