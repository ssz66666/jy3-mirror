--[[2039

]]
local G = require 'gf'
local c_button = require 'c_button'
local c_scrollview = require 'c_scrollview'
local c_bulletin = require 'c_bulletin'
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
			tc.left = 13.000
			tc.right = 1673.000
			tc.bottom = -1061.000
			tc.top = -311.000
			tc.anchor = 0x64640000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 2
			tc.text = '[04]一，开局增加女性角色系统，将原有结义成绩和结婚成就分离平分（更新后会出现总成就点降低，需完成女性结婚结义成就）；[br]二，峨嵋派剧情加入：第二日女性角色加入峨嵋，男性角色入少林;[br]三，取消狗狗密令获得阵法效果，取而代之加入门派宗师完美成就开启，如果完美门派宗师，则在进入聚贤庄时该完美门派宗师会自动习得该门派阵法和绝招；[br]四，队友经验系统植入，没满属性队友战斗可以获得经验，每满10000经验则全属性提升，可在战斗中关闭队友获得经验，原队友切磋将随机获得1000-3000经验;[br]五，增加主角自动攻击设置；[br]六，取消原增加二次结义与结婚密令，增加密令“我的侠客”，效果：随机添加一名队友，随机获得二次结义或者结婚效果；[br]七，增加小游戏华容道、卡牌游戏，卡牌游戏机器猫处进行，并增加卡牌收集成就；[br]八，开放礼包，领取密令：happy new year;[br]九，增加生存模式(必须二周目才会出现)以及更新生存模式成就，生存模式死亡重生和主动重生不会继承装备，且不可重铸；'
			tc.wrap = true
			tc.font = 0x60320000
			tc.style = 5
			tp = tc
			tp = tp.parent
			--end
			tc = G.TextQuad()
			tp.addChild(tc)
			tc.name = '更新标题'
			tc.left = 191.000
			tc.right = 669.000
			tc.bottom = -316.000
			tc.top = -256.000
			tc.anchor = 0x64640000
			tc.scaleX = 0.500
			tc.scaleY = 0.500
			tc.autosize = 3
			tc.text = 'V3.01-3.10详细更新说明'
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
tp.c_bulletin = setmetatable({}, c_bulletin)
