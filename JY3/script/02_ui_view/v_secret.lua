--[[2028

]]
local G = require 'gf'
local c_secret = require 'c_secret'
local c_button = require 'c_button'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_secret'
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
	tc.mouseEnabled = true
	tc.img = 0x56160020
	tp = tc
	tp = tp.parent
	--end
	tc = G.loadUI('v_empty')
	tp.addChild(tc)
	tc.name = '按钮'
	tp = tc
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '主菜单'
		tc.bottom = -50.000
		tc.top = -50.000
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'c111'
			tc.left = -260.000
			tc.right = 240.000
			tc.bottom = 190.000
			tc.top = 250.000
			tc.img = 0x56160065
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '文本'
			tc.pivotX = 0.000
			tc.left = -270.000
			tc.right = 730.000
			tc.bottom = 190.000
			tc.top = 250.000
			tc.mouseEnabled = true
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '请选择需要修改的项目'
			tc.font = 0x613c0000
			tc.style = 5
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '说明'
			tc.pivotX = 0.000
			tc.left = -258.000
			tc.right = 654.000
			tc.bottom = 141.000
			tc.top = 201.000
			tc.mouseEnabled = true
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 1
			tc.text = '部分修改项目为测试用，暂不开放！'
			tc.font = 0x61380000
			tc.style = 11
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '剧情'
			tc.pivotX = 0.000
			tc.left = -260.000
			tc.right = 740.000
			tc.bottom = 110.000
			tc.top = 170.000
			tc.mouseEnabled = true
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '1，初始门派剧情跳转'
			tc.font = 0x61380000
			tc.align = 1
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '主角属性'
			tc.pivotX = 0.000
			tc.left = -260.000
			tc.right = 740.000
			tc.bottom = 75.000
			tc.top = 135.000
			tc.mouseEnabled = true
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '2，主角属性'
			tc.font = 0x61380000
			tc.align = 1
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'NPC属性'
			tc.pivotX = 0.000
			tc.left = -260.000
			tc.right = 740.000
			tc.bottom = 40.000
			tc.mouseEnabled = true
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '3，NPC属性'
			tc.font = 0x61380000
			tc.align = 1
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '物品'
			tc.pivotX = 0.000
			tc.left = -260.000
			tc.right = 740.000
			tc.bottom = 5.000
			tc.top = 65.000
			tc.mouseEnabled = true
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '4，物品'
			tc.font = 0x61380000
			tc.align = 1
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '主角技能'
			tc.pivotX = 0.000
			tc.left = -260.000
			tc.right = 740.000
			tc.bottom = -30.000
			tc.top = 30.000
			tc.mouseEnabled = true
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '5，主角技能'
			tc.font = 0x61380000
			tc.align = 1
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '时间'
			tc.pivotX = 0.000
			tc.left = -260.000
			tc.right = 740.000
			tc.bottom = -65.000
			tc.top = -5.000
			tc.mouseEnabled = true
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '6，时间调节'
			tc.font = 0x61380000
			tc.align = 1
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '队友'
			tc.pivotX = 0.000
			tc.left = -260.000
			tc.right = 740.000
			tc.bottom = -100.000
			tc.top = -40.000
			tc.mouseEnabled = true
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '7，加入队友'
			tc.font = 0x61380000
			tc.align = 1
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '任务'
			tc.pivotX = 0.000
			tc.left = -260.000
			tc.right = 740.000
			tc.bottom = -135.000
			tc.top = -75.000
			tc.mouseEnabled = true
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.text = '8，聚贤庄任务'
			tc.font = 0x61380000
			tc.align = 1
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '剧情'
		tc.bottom = -50.000
		tc.top = -50.000
		tc.visible = false
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'c11'
			tc.left = -260.000
			tc.right = 240.000
			tc.bottom = 190.000
			tc.top = 250.000
			tc.img = 0x56160065
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '1'
			tc.pivotX = 0.000
			tc.left = -260.000
			tc.right = -129.000
			tc.bottom = 145.000
			tc.top = 175.000
			tc.mouseEnabled = true
			tc.autosize = 1
			tc.text = '1，武当派'
			tc.font = 0x611c0000
			tc.align = 1
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '2'
			tc.pivotX = 0.000
			tc.left = 50.000
			tc.right = 181.000
			tc.bottom = 145.000
			tc.top = 175.000
			tc.mouseEnabled = true
			tc.autosize = 1
			tc.text = '2，少林寺'
			tc.font = 0x611c0000
			tc.align = 1
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '3'
			tc.pivotX = 0.000
			tc.left = -260.000
			tc.right = -129.000
			tc.bottom = 105.000
			tc.top = 135.000
			tc.mouseEnabled = true
			tc.autosize = 1
			tc.text = '3，华山派'
			tc.font = 0x611c0000
			tc.align = 1
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '4'
			tc.pivotX = 0.000
			tc.left = 50.000
			tc.right = 181.000
			tc.bottom = 105.000
			tc.top = 135.000
			tc.mouseEnabled = true
			tc.autosize = 1
			tc.text = '4，全真教'
			tc.font = 0x611c0000
			tc.align = 1
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '5'
			tc.pivotX = 0.000
			tc.left = -260.000
			tc.right = -129.000
			tc.bottom = 65.000
			tc.top = 95.000
			tc.mouseEnabled = true
			tc.autosize = 1
			tc.text = '5，古墓派'
			tc.font = 0x611c0000
			tc.align = 1
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '6'
			tc.pivotX = 0.000
			tc.left = 50.000
			tc.right = 181.000
			tc.bottom = 65.000
			tc.top = 95.000
			tc.mouseEnabled = true
			tc.autosize = 1
			tc.text = '6，血刀门'
			tc.font = 0x611c0000
			tc.align = 1
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '7'
			tc.pivotX = 0.000
			tc.left = -260.000
			tc.right = -129.000
			tc.bottom = 25.000
			tc.top = 55.000
			tc.mouseEnabled = true
			tc.autosize = 1
			tc.text = '7，桃花岛'
			tc.font = 0x611c0000
			tc.align = 1
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '8'
			tc.pivotX = 0.000
			tc.left = 50.000
			tc.right = 182.000
			tc.bottom = 25.000
			tc.top = 55.000
			tc.mouseEnabled = true
			tc.autosize = 1
			tc.text = '8，丐  帮'
			tc.font = 0x611c0000
			tc.align = 1
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '9'
			tc.pivotX = 0.000
			tc.left = -260.000
			tc.right = -129.000
			tc.bottom = -15.000
			tc.top = 15.000
			tc.mouseEnabled = true
			tc.autosize = 1
			tc.text = '9，星宿派'
			tc.font = 0x611c0000
			tc.align = 1
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '文本'
			tc.pivotX = 0.000
			tc.left = -270.000
			tc.right = 230.000
			tc.bottom = 205.000
			tc.top = 235.000
			tc.mouseEnabled = true
			tc.text = '请选择需要跳转的门派剧情'
			tc.font = 0x611e0000
			tc.style = 5
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '主角属性'
		tc.bottom = -50.000
		tc.top = -50.000
		tc.visible = false
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '记录'
			tc.pivotX = 0.000
			tc.left = -260.000
			tc.right = -180.000
			tc.bottom = 145.000
			tc.top = 175.000
			tc.mouseEnabled = true
			tc.visible = false
			tc.text = '0'
			tc.font = 0x61120000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '1'
			tc.pivotX = 0.000
			tc.left = -260.000
			tc.right = -180.000
			tc.bottom = 145.000
			tc.top = 175.000
			tc.mouseEnabled = true
			tc.text = '经验'
			tc.font = 0x61120000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '2'
			tc.pivotX = 0.000
			tc.left = -160.000
			tc.right = -80.000
			tc.bottom = 145.000
			tc.top = 175.000
			tc.mouseEnabled = true
			tc.text = '修为点'
			tc.font = 0x61120000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '3'
			tc.pivotX = 0.000
			tc.left = -60.000
			tc.right = 20.000
			tc.bottom = 145.000
			tc.top = 175.000
			tc.mouseEnabled = true
			tc.text = '门派经验'
			tc.font = 0x61120000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '4'
			tc.pivotX = 0.000
			tc.left = 40.000
			tc.right = 120.000
			tc.bottom = 145.000
			tc.top = 175.000
			tc.mouseEnabled = true
			tc.text = '善恶'
			tc.font = 0x61120000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '5'
			tc.pivotX = 0.000
			tc.left = 140.000
			tc.right = 220.000
			tc.bottom = 145.000
			tc.top = 175.000
			tc.mouseEnabled = true
			tc.text = '名望'
			tc.font = 0x61120000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '6'
			tc.pivotX = 0.000
			tc.left = -260.000
			tc.right = -180.000
			tc.bottom = 115.000
			tc.top = 145.000
			tc.mouseEnabled = true
			tc.text = '力道'
			tc.font = 0x61120000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '7'
			tc.pivotX = 0.000
			tc.left = -160.000
			tc.right = -80.000
			tc.bottom = 115.000
			tc.top = 145.000
			tc.mouseEnabled = true
			tc.text = '根骨'
			tc.font = 0x61120000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '8'
			tc.pivotX = 0.000
			tc.left = -60.000
			tc.right = 20.000
			tc.bottom = 115.000
			tc.top = 145.000
			tc.mouseEnabled = true
			tc.text = '悟性'
			tc.font = 0x61120000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '9'
			tc.pivotX = 0.000
			tc.left = 40.000
			tc.right = 120.000
			tc.bottom = 115.000
			tc.top = 145.000
			tc.mouseEnabled = true
			tc.text = '福缘'
			tc.font = 0x61120000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '10'
			tc.pivotX = 0.000
			tc.left = 140.000
			tc.right = 220.000
			tc.bottom = 115.000
			tc.top = 145.000
			tc.mouseEnabled = true
			tc.text = '灵敏'
			tc.font = 0x61120000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '11'
			tc.pivotX = 0.000
			tc.left = -260.000
			tc.right = -180.000
			tc.bottom = 85.000
			tc.top = 115.000
			tc.mouseEnabled = true
			tc.text = '定力'
			tc.font = 0x61120000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '12'
			tc.pivotX = 0.000
			tc.left = -160.000
			tc.right = -80.000
			tc.bottom = 85.000
			tc.top = 115.000
			tc.mouseEnabled = true
			tc.text = '拳掌'
			tc.font = 0x61120000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '13'
			tc.pivotX = 0.000
			tc.left = -60.000
			tc.right = 20.000
			tc.bottom = 85.000
			tc.top = 115.000
			tc.mouseEnabled = true
			tc.text = '弹指'
			tc.font = 0x61120000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '14'
			tc.pivotX = 0.000
			tc.left = 40.000
			tc.right = 120.000
			tc.bottom = 85.000
			tc.top = 115.000
			tc.mouseEnabled = true
			tc.text = '御剑'
			tc.font = 0x61120000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '15'
			tc.pivotX = 0.000
			tc.left = 140.000
			tc.right = 220.000
			tc.bottom = 85.000
			tc.top = 115.000
			tc.mouseEnabled = true
			tc.text = '耍刀'
			tc.font = 0x61120000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '16'
			tc.pivotX = 0.000
			tc.left = -260.000
			tc.right = -180.000
			tc.bottom = 55.000
			tc.top = 85.000
			tc.mouseEnabled = true
			tc.text = '舞棍'
			tc.font = 0x61120000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '17'
			tc.pivotX = 0.000
			tc.left = -160.000
			tc.right = -80.000
			tc.bottom = 55.000
			tc.top = 85.000
			tc.mouseEnabled = true
			tc.text = '内功'
			tc.font = 0x61120000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '18'
			tc.pivotX = 0.000
			tc.left = -60.000
			tc.right = 20.000
			tc.bottom = 55.000
			tc.top = 85.000
			tc.mouseEnabled = true
			tc.text = '拆招'
			tc.font = 0x61120000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '19'
			tc.pivotX = 0.000
			tc.left = 40.000
			tc.right = 120.000
			tc.bottom = 55.000
			tc.top = 85.000
			tc.mouseEnabled = true
			tc.text = '搏击'
			tc.font = 0x61120000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '20'
			tc.pivotX = 0.000
			tc.left = 140.000
			tc.right = 220.000
			tc.bottom = 55.000
			tc.top = 85.000
			tc.mouseEnabled = true
			tc.text = '闪躲'
			tc.font = 0x61120000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '21'
			tc.pivotX = 0.000
			tc.left = -260.000
			tc.right = -180.000
			tc.bottom = 25.000
			tc.top = 55.000
			tc.mouseEnabled = true
			tc.text = '轻身'
			tc.font = 0x61120000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '22'
			tc.pivotX = 0.000
			tc.left = -160.000
			tc.right = -80.000
			tc.bottom = 25.000
			tc.top = 55.000
			tc.mouseEnabled = true
			tc.text = '施毒'
			tc.font = 0x61120000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '23'
			tc.pivotX = 0.000
			tc.left = -60.000
			tc.right = 20.000
			tc.bottom = 25.000
			tc.top = 55.000
			tc.mouseEnabled = true
			tc.text = '医疗'
			tc.font = 0x61120000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '24'
			tc.pivotX = 0.000
			tc.left = 40.000
			tc.right = 120.000
			tc.bottom = 25.000
			tc.top = 55.000
			tc.mouseEnabled = true
			tc.text = '暗器'
			tc.font = 0x61120000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '25'
			tc.pivotX = 0.000
			tc.left = 140.000
			tc.right = 220.000
			tc.bottom = 25.000
			tc.top = 55.000
			tc.mouseEnabled = true
			tc.text = '读书'
			tc.font = 0x61120000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '26'
			tc.pivotX = 0.000
			tc.left = -260.000
			tc.right = -180.000
			tc.bottom = -5.000
			tc.top = 25.000
			tc.mouseEnabled = true
			tc.text = '交易'
			tc.font = 0x61120000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '27'
			tc.pivotX = 0.000
			tc.left = -160.000
			tc.right = -80.000
			tc.bottom = -5.000
			tc.top = 25.000
			tc.mouseEnabled = true
			tc.text = '烹饪'
			tc.font = 0x61120000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '28'
			tc.pivotX = 0.000
			tc.left = -60.000
			tc.right = 20.000
			tc.bottom = -5.000
			tc.top = 25.000
			tc.mouseEnabled = true
			tc.text = '生命'
			tc.font = 0x61120000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '29'
			tc.pivotX = 0.000
			tc.left = 40.000
			tc.right = 120.000
			tc.bottom = -5.000
			tc.top = 25.000
			tc.mouseEnabled = true
			tc.text = '内力'
			tc.font = 0x61120000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '30'
			tc.pivotX = 0.000
			tc.left = 140.000
			tc.right = 220.000
			tc.bottom = -5.000
			tc.top = 25.000
			tc.mouseEnabled = true
			tc.text = '金钱'
			tc.font = 0x61120000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '31'
			tc.pivotX = 0.000
			tc.left = -260.000
			tc.right = -180.000
			tc.bottom = -35.000
			tc.top = -5.000
			tc.mouseEnabled = true
			tc.text = '自宫'
			tc.font = 0x61120000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '32'
			tc.pivotX = 0.000
			tc.left = -160.000
			tc.right = -80.000
			tc.bottom = -35.000
			tc.top = -5.000
			tc.mouseEnabled = true
			tc.text = '被动一'
			tc.font = 0x61120000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '33'
			tc.pivotX = 0.000
			tc.left = -60.000
			tc.right = 20.000
			tc.bottom = -35.000
			tc.top = -5.000
			tc.mouseEnabled = true
			tc.text = '被动二'
			tc.font = 0x61120000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '34'
			tc.pivotX = 0.000
			tc.left = 40.000
			tc.right = 120.000
			tc.bottom = -35.000
			tc.top = -5.000
			tc.mouseEnabled = true
			tc.text = '被动三'
			tc.font = 0x61120000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '35'
			tc.pivotX = 0.000
			tc.left = 140.000
			tc.right = 220.000
			tc.bottom = -35.000
			tc.top = -5.000
			tc.mouseEnabled = true
			tc.text = '被动四'
			tc.font = 0x61120000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'c111'
			tc.left = -260.000
			tc.right = 240.000
			tc.bottom = 190.000
			tc.top = 250.000
			tc.img = 0x56160065
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '文本'
			tc.pivotX = 0.000
			tc.left = -270.000
			tc.right = 230.000
			tc.bottom = 205.000
			tc.top = 235.000
			tc.mouseEnabled = true
			tc.text = '请选择需要修改的主角属性'
			tc.font = 0x611e0000
			tc.style = 5
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = 'NPC属性'
		tc.bottom = -80.000
		tc.top = -80.000
		tc.visible = false
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'c11'
			tc.left = -260.000
			tc.right = 240.000
			tc.bottom = 210.000
			tc.top = 270.000
			tc.img = 0x56160065
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '文本'
			tc.pivotX = 0.000
			tc.left = -270.000
			tc.right = 230.000
			tc.bottom = 225.000
			tc.top = 255.000
			tc.mouseEnabled = true
			tc.text = '请选择修改东方不败的属性'
			tc.font = 0x611e0000
			tc.style = 5
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '1'
			tc.pivotX = 0.000
			tc.left = -260.000
			tc.right = -140.000
			tc.bottom = 145.000
			tc.top = 175.000
			tc.mouseEnabled = true
			tc.text = '生命'
			tc.font = 0x611e0000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '2'
			tc.pivotX = 0.000
			tc.left = -80.000
			tc.right = 40.000
			tc.bottom = 145.000
			tc.top = 175.000
			tc.mouseEnabled = true
			tc.text = '内力'
			tc.font = 0x611e0000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '3'
			tc.pivotX = 0.000
			tc.left = 100.000
			tc.right = 220.000
			tc.bottom = 145.000
			tc.top = 175.000
			tc.mouseEnabled = true
			tc.text = '拆招'
			tc.font = 0x611e0000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '4'
			tc.pivotX = 0.000
			tc.left = -260.000
			tc.right = -140.000
			tc.bottom = 105.000
			tc.top = 135.000
			tc.mouseEnabled = true
			tc.text = '搏击'
			tc.font = 0x611e0000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '5'
			tc.pivotX = 0.000
			tc.left = -80.000
			tc.right = 40.000
			tc.bottom = 105.000
			tc.top = 135.000
			tc.mouseEnabled = true
			tc.text = '闪躲'
			tc.font = 0x611e0000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '6'
			tc.pivotX = 0.000
			tc.left = 100.000
			tc.right = 220.000
			tc.bottom = 105.000
			tc.top = 135.000
			tc.mouseEnabled = true
			tc.text = '内功'
			tc.font = 0x611e0000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '7'
			tc.pivotX = 0.000
			tc.left = -260.000
			tc.right = -140.000
			tc.bottom = 65.000
			tc.top = 95.000
			tc.mouseEnabled = true
			tc.text = '攻击'
			tc.font = 0x611e0000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '8'
			tc.pivotX = 0.000
			tc.left = -80.000
			tc.right = 40.000
			tc.bottom = 65.000
			tc.top = 95.000
			tc.mouseEnabled = true
			tc.text = '速度'
			tc.font = 0x611e0000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '9'
			tc.pivotX = 0.000
			tc.left = 100.000
			tc.right = 220.000
			tc.bottom = 65.000
			tc.top = 95.000
			tc.mouseEnabled = true
			tc.text = '好感'
			tc.font = 0x611e0000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '10'
			tc.pivotX = 0.000
			tc.left = -260.000
			tc.right = -140.000
			tc.bottom = 25.000
			tc.top = 55.000
			tc.mouseEnabled = true
			tc.text = '武功一exp'
			tc.font = 0x61140000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '11'
			tc.pivotX = 0.000
			tc.left = -80.000
			tc.right = 40.000
			tc.bottom = 25.000
			tc.top = 55.000
			tc.mouseEnabled = true
			tc.text = '武功二exp'
			tc.font = 0x61140000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '12'
			tc.pivotX = 0.000
			tc.left = 100.000
			tc.right = 220.000
			tc.bottom = 25.000
			tc.top = 55.000
			tc.mouseEnabled = true
			tc.text = '武功三exp'
			tc.font = 0x61140000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '13'
			tc.pivotX = 0.000
			tc.left = -260.000
			tc.right = -140.000
			tc.bottom = -15.000
			tc.top = 15.000
			tc.mouseEnabled = true
			tc.text = '武功一'
			tc.font = 0x611e0000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '14'
			tc.pivotX = 0.000
			tc.left = -80.000
			tc.right = 40.000
			tc.bottom = -15.000
			tc.top = 15.000
			tc.mouseEnabled = true
			tc.text = '武功二'
			tc.font = 0x611e0000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '15'
			tc.pivotX = 0.000
			tc.left = 100.000
			tc.right = 220.000
			tc.bottom = -15.000
			tc.top = 15.000
			tc.mouseEnabled = true
			tc.text = '武功三'
			tc.font = 0x611e0000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '16'
			tc.pivotX = 0.000
			tc.left = -260.000
			tc.right = -140.000
			tc.bottom = -55.000
			tc.top = -25.000
			tc.mouseEnabled = true
			tc.text = '被动一'
			tc.font = 0x611e0000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '17'
			tc.pivotX = 0.000
			tc.left = -80.000
			tc.right = 40.000
			tc.bottom = -55.000
			tc.top = -25.000
			tc.mouseEnabled = true
			tc.text = '被动二'
			tc.font = 0x611e0000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '18'
			tc.pivotX = 0.000
			tc.left = 100.000
			tc.right = 220.000
			tc.bottom = -55.000
			tc.top = -25.000
			tc.mouseEnabled = true
			tc.text = '被动三'
			tc.font = 0x611e0000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '19'
			tc.pivotX = 0.000
			tc.left = -260.000
			tc.right = -140.000
			tc.bottom = -95.000
			tc.top = -65.000
			tc.mouseEnabled = true
			tc.text = '被动四'
			tc.font = 0x611e0000
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.loadUI('v_empty')
		tp.addChild(tc)
		tc.name = '时间'
		tc.bottom = -50.000
		tc.top = -50.000
		tc.visible = false
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '记录'
			tc.pivotX = 0.000
			tc.left = -260.000
			tc.right = 240.000
			tc.bottom = 145.000
			tc.top = 175.000
			tc.mouseEnabled = true
			tc.visible = false
			tc.text = '0'
			tc.font = 0x611c0000
			tc.align = 1
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '1'
			tc.pivotX = 0.000
			tc.left = -260.000
			tc.right = 240.000
			tc.bottom = 145.000
			tc.top = 175.000
			tc.mouseEnabled = true
			tc.text = '1，年'
			tc.font = 0x611c0000
			tc.align = 1
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '2'
			tc.pivotX = 0.000
			tc.left = -260.000
			tc.right = 240.000
			tc.bottom = 105.000
			tc.top = 135.000
			tc.mouseEnabled = true
			tc.text = '2，月'
			tc.font = 0x611c0000
			tc.align = 1
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '3'
			tc.pivotX = 0.000
			tc.left = -260.000
			tc.right = 240.000
			tc.bottom = 65.000
			tc.top = 95.000
			tc.mouseEnabled = true
			tc.text = '3，日'
			tc.font = 0x611c0000
			tc.align = 1
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '4'
			tc.pivotX = 0.000
			tc.left = -260.000
			tc.right = 240.000
			tc.bottom = 25.000
			tc.top = 55.000
			tc.mouseEnabled = true
			tc.text = '4，时辰'
			tc.font = 0x611c0000
			tc.align = 1
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '5'
			tc.pivotX = 0.000
			tc.left = -260.000
			tc.right = 240.000
			tc.bottom = -15.000
			tc.top = 15.000
			tc.mouseEnabled = true
			tc.text = '5，时刻'
			tc.font = 0x611c0000
			tc.align = 1
			tc.style = 10
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'c1111'
			tc.left = -260.000
			tc.right = 240.000
			tc.bottom = 190.000
			tc.top = 250.000
			tc.img = 0x56160065
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '文本'
			tc.pivotX = 0.000
			tc.left = -270.000
			tc.right = 230.000
			tc.bottom = 205.000
			tc.top = 235.000
			tc.mouseEnabled = true
			tc.text = '请选择需要修改的项目'
			tc.font = 0x611e0000
			tc.style = 5
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '任务'
		tc.left = -249.500
		tc.right = 251.500
		tc.bottom = -61.500
		tc.top = 67.500
		tc.visible = false
		tc.img = 0x5616003e
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'c1'
			tc.pivotX = 0.000
			tc.left = -222.000
			tc.right = -172.000
			tc.bottom = 25.000
			tc.top = 45.000
			tc.text = '内容:'
			tc.font = 0x61120000
			tc.align = 1
			tc.style = 2
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '内容'
			tc.pivotX = 0.000
			tc.left = -173.000
			tc.right = 195.000
			tc.bottom = -14.000
			tc.top = 44.000
			tc.text = '我给你那个送  搜方式耐腐蚀安抚啊功夫奥丹电脑灯个个 '
			tc.wrap = true
			tc.font = 0x610e0000
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
			tc.right = -174.000
			tc.bottom = -34.000
			tc.top = -14.000
			tc.text = '要求:'
			tc.font = 0x61120000
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
			tc.right = 27.000
			tc.bottom = -35.000
			tc.top = -15.000
			tc.text = '无'
			tc.font = 0x61120000
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
			tc.right = -123.000
			tc.bottom = -52.000
			tc.top = -32.000
			tc.text = '15天'
			tc.font = 0x61120000
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
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = 'c11111'
			tc.left = -250.000
			tc.right = 250.000
			tc.bottom = 120.000
			tc.top = 180.000
			tc.img = 0x56160065
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '文本'
			tc.pivotX = 0.000
			tc.left = -238.000
			tc.right = 262.000
			tc.bottom = 136.000
			tc.top = 166.000
			tc.mouseEnabled = true
			tc.text = '请选择需要修改的项目'
			tc.font = 0x611e0000
			tc.style = 5
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '返回'
		tc.left = -314.000
		tc.right = -274.000
		tc.bottom = -238.000
		tc.top = -198.000
		tc.mouseEnabled = true
		tc.visible = false
		tc.img = 0x33010024
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '物品'
		tc.left = 224.000
		tc.right = 424.000
		tc.bottom = -236.000
		tc.top = -136.000
		tc.visible = false
		tc.text = '0'
		tc.font = 0x61200041
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '技能'
		tc.left = 224.000
		tc.right = 424.000
		tc.bottom = -236.000
		tc.top = -136.000
		tc.visible = false
		tc.text = '0'
		tc.font = 0x61200041
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '队友'
		tc.left = 224.000
		tc.right = 424.000
		tc.bottom = -236.000
		tc.top = -136.000
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
	tc.name = 'secret'
	tc.left = -200.000
	tc.right = 200.000
	tc.bottom = -100.000
	tc.mouseEnabled = true
	tc.visible = false
	tc.img = 0x56160020
	tp = tc
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '背景'
		tc.left = -320.000
		tc.right = 320.000
		tc.bottom = -240.000
		tc.top = 240.000
		tc.mouseEnabled = true
		tc.img = 0x56160020
		tp = tc
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'c4'
		tc.left = -88.000
		tc.right = 88.000
		tc.bottom = 101.000
		tc.top = 145.000
		tc.img = 0x56160065
		tp = tc
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = 'c5'
			tc.left = -87.000
			tc.right = 89.000
			tc.bottom = -21.000
			tc.top = 23.000
			tc.text = '请输入数字'
			tc.font = 0x611c0000
			tc.style = 5
			tp = tc
			tp = tp.parent
			--end
		tp = tp.parent
		--end
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = 'c1'
		tc.left = -125.000
		tc.right = 125.000
		tc.bottom = -2.500
		tc.top = 52.500
		tc.img = 0x5603001e
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '文本'
		tc.left = -125.000
		tc.right = 125.000
		tc.bottom = -2.500
		tc.top = 52.500
		tc.mouseEnabled = true
		tc.text = '0'
		tc.readOnly = false
		tc.font = 0x61180000
		tc.style = 4
		tp = tc
		tp = tp.parent
		--end
		tc = G.loadUI('v_button')
		tp.addChild(tc)
		tc.name = '确定'
		tc.left = -34.000
		tc.right = 32.000
		tc.bottom = -65.000
		tc.top = -43.000
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
		tc = G.Quad()
		tp.addChild(tc)
		tc.name = '返回'
		tc.left = -314.000
		tc.right = -274.000
		tc.bottom = -238.000
		tc.top = -198.000
		tc.mouseEnabled = true
		tc.img = 0x33010024
		tp = tc
		tp = tp.parent
		--end
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '说明'
		tc.left = -246.500
		tc.right = 256.500
		tc.bottom = -188.000
		tc.top = -88.000
		tc.wrap = true
		tc.font = 0x61180000
		tc.align = 1
		tc.style = 3
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '结束'
	tc.left = 283.500
	tc.right = 316.500
	tc.bottom = 204.500
	tc.top = 235.500
	tc.mouseEnabled = true
	tc.img = 0x56160014
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '修改说明'
	tc.pivotX = 0.000
	tc.left = -221.000
	tc.right = 634.000
	tc.bottom = -227.000
	tc.top = -167.000
	tc.mouseEnabled = true
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.autosize = 1
	tc.text = '抵制一切所谓的原创修改存档版本'
	tc.font = 0x61380000
	tc.style = 3
	tp = tc
	tp = tp.parent
	--end
tp.c_secret = setmetatable({}, c_secret)
