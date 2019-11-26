--[[2039

]]
local G = require 'gf'
local c_scrollview = require 'c_scrollview'
local c_bullletin = require 'c_bullletin'
local c_button = require 'c_button'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_bulletin'
tc.left = -427.000
tc.right = 427.000
tc.bottom = -240.000
tc.top = 240.000
tp = tc
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '背景'
	tc.left = -426.500
	tc.right = 426.500
	tc.bottom = -240.000
	tc.top = 240.000
	tc.mouseEnabled = true
	tc.img = 0x56050054
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = '标题'
		tc.left = 191.500
		tc.right = 668.500
		tc.bottom = -54.000
		tc.top = 6.000
		tc.anchor = 0x64640000
		tc.scaleX = 0.500
		tc.scaleY = 0.500
		tc.autosize = 3
		tc.text = '金庸群侠传3重置版'
		tc.font = 0x603c0000
		tc.style = 5
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.loadUI('v_scrollview')
	tp.addChild(tc)
	tc.name = '页面'
	tc.left = 1.000
	tc.right = 1.000
	tc.bottom = -40.000
	tc.top = -40.000
	tc.anchor = 0x64006400
	tp = tc
		tc = tp.getChildByName('content')
		if tc then
		tc.right = 0.000
		tc.bottom = -800.000
		tc.anchor = 0x64646400
		tp = tc
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '公众号'
			tc.right = 150.000
			tc.bottom = -259.000
			tc.top = -109.000
			tc.anchor = 0x64640000
			tc.img = 0x56040010
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '群号1'
			tc.left = 155.500
			tc.right = 264.500
			tc.bottom = -260.000
			tc.top = -110.000
			tc.anchor = 0x64640000
			tc.img = 0x56040004
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '群号2'
			tc.left = 274.000
			tc.right = 416.000
			tc.bottom = -260.000
			tc.top = -110.000
			tc.anchor = 0x64640000
			tc.img = 0x56040005
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '群号3'
			tc.left = 419.000
			tc.right = 561.000
			tc.bottom = -261.000
			tc.top = -111.000
			tc.anchor = 0x64640000
			tc.img = 0x56040006
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '群号4'
			tc.left = 564.000
			tc.right = 706.000
			tc.bottom = -260.000
			tc.top = -110.000
			tc.anchor = 0x64640000
			tc.img = 0x56040007
			tp = tc
			tp = tp.parent
			--end
			tc = G.Quad()
			tp.addChild(tc)
			tc.name = '群号5'
			tc.left = 709.000
			tc.right = 851.000
			tc.bottom = -260.000
			tc.top = -110.000
			tc.anchor = 0x64640000
			tc.img = 0x56040008
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '内容'
			tc.pivotX = 0.000
			tc.pivotY = 1.000
			tc.left = 17.000
			tc.right = 1617.000
			tc.bottom = -204.000
			tc.top = -4.000
			tc.anchor = 0x64640000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 2
			tc.text = '     《金庸群侠传3》原版是由半瓶神仙醋开发的一款flash角色扮演游戏，于2009年发行。该作品沿袭《金庸群侠传2》采用自由开放的金书世界，该作的故事和门派以及战斗等至今还让人津津乐道。此次的2019版重制是在获得半瓶神仙醋的授权后，由金群mod作者云淡风清精心制作，移植至安卓系统，在保留原游戏内容的基础上，会视情况依照个人所长进行更新维护，并保持免费，绝不开设商城收费。官方微信公众号和官方交流群见下方二维码；'
			tc.wrap = true
			tc.font = 0x60280000
			tc.style = 4
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '更新说明'
			tc.pivotX = 0.000
			tc.pivotY = 1.000
			tc.left = 10.000
			tc.right = 1670.000
			tc.bottom = -1148.000
			tc.top = -308.000
			tc.anchor = 0x64640000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 2
			tc.text = '[04]一，专属适配安卓10的版本出炉，安卓10手机请下载安装安卓10专属版本；旧版本存档依旧支持；[br]二，门派专属特技处理：具体见公众号说明；[br]三，取消难度随周目递增效果，取而代之相对增加多周目的敌人属性，具体可百科全书或者战斗中查看；[br]四，战斗获得经验翻倍；[br]五，门派大招伤害全体增加；[br]六，结婚结义队友可在队伍页面领悟选择一次被动；[br]七，增加越女神剑，效果为攻击必定命中，阿青加入时教会主角；增加被动通明，攻击必定命中，戒指有几率附加；基础闪躲效果翻倍；[br]八，双十一发放礼包，游戏内密令领取，密令“双十一狂欢”，获得999神奇宝石；[br]九，霸王套效果增强；      '
			tc.wrap = true
			tc.font = 0x603c0000
			tc.style = 5
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '更新标题'
			tc.left = 264.000
			tc.right = 596.000
			tc.bottom = -316.000
			tc.top = -256.000
			tc.anchor = 0x64640000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = 'V3.0更新说明'
			tc.font = 0x603c0000
			tc.style = 5
			tp = tc
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
	com = tp.c_scrollview
	com['autoMove'] =false
	com['hideSlider'] =true
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '关闭'
	tc.left = 382.500
	tc.right = 415.500
	tc.bottom = 201.500
	tc.top = 232.500
	tc.mouseEnabled = true
	tc.img = 0x56160014
	tp = tc
	tp = tp.parent
	--end
tp.c_bullletin = setmetatable({}, c_bullletin)
