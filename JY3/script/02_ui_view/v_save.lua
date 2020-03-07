--[[203a

]]
local G = require 'gf'
local c_save = require 'c_save'
local c_button = require 'c_button'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_save'
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
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = 'save'
	tc.left = -3.000
	tc.right = -3.000
	tc.bottom = -17.000
	tc.top = -17.000
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'c11'
		tc.left = -262.000
		tc.right = 258.000
		tc.bottom = -161.000
		tc.top = 199.000
		tc.img = 0x56160048
		tp = tc
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = 'save1'
		tc.left = -209.000
		tc.right = -89.000
		tc.bottom = -105.000
		tc.top = 65.000
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
		tc.bottom = -105.000
		tc.top = 65.000
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
		tc.bottom = -105.000
		tc.top = 65.000
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
	tp = tp.parent
	--end
	tc = G.loadUI('v_button')
	tp.addChild(tc)
	tc.name = '结束'
	tc.left = 211.500
	tc.right = 244.500
	tc.bottom = 141.500
	tc.top = 172.500
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
	tc.name = '确认'
	tc.left = -421.000
	tc.right = 433.000
	tc.bottom = -223.000
	tc.top = 257.000
	tc.mouseEnabled = true
	tc.visible = false
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '背景'
		tc.left = -107.000
		tc.right = 87.000
		tc.bottom = -141.000
		tc.top = 13.000
		tc.img = 0x560a003b
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '输入框'
		tc.left = -253.000
		tc.right = 247.000
		tc.bottom = 23.000
		tc.top = 73.000
		tc.img = 0x56160065
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '文本'
			tc.left = -229.500
			tc.right = 229.500
			tc.bottom = -25.000
			tc.top = 25.000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 1
			tc.text = '是否覆盖当前存档？'
			tc.font = 0x61320000
			tc.style = 8
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '按钮'
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '是'
			tc.left = -100.000
			tc.right = 0.000
			tc.bottom = -90.000
			tc.top = 10.000
			tc.mouseEnabled = true
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '是'
			tc.font = 0x613c0000
			tc.style = 3
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '否'
			tc.left = -20.000
			tc.right = 80.000
			tc.bottom = -89.000
			tc.top = 11.000
			tc.mouseEnabled = true
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '否'
			tc.font = 0x613c0000
			tc.style = 6
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
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
tp.c_save = setmetatable({}, c_save)
