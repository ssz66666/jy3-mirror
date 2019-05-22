--[[2011

]]
local G = require 'gf'
local c_button = require 'c_button'
local c_list = require 'c_list'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_list'
tc.left = -640.000
tc.right = 640.000
tc.bottom = -360.000
tc.top = 360.000
tp = tc
	tc = G.loadUI('v_button')
	tp.addChild(tc)
	tc.name = '按钮'
	tc.left = -427.000
	tc.right = 427.000
	tc.bottom = -240.000
	tc.top = 240.000
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
	tc.img = 0x56160043
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = 'c2'
	tc.left = -70.000
	tc.right = 30.000
	tc.bottom = 190.500
	tc.top = 215.500
	tc.text = '回答完毕'
	tc.font = 0x61180000
	tc.style = 2
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = 'c3'
	tc.left = -163.500
	tc.right = 141.500
	tc.bottom = 138.500
	tc.top = 185.500
	tc.text = '根据你刚才的回答与选择，系统设定你的初始属性为：'
	tc.wrap = true
	tc.font = 0x61140000
	tc.align = 1
	tc.style = 2
	tp = tc
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = '头像'
	tc.left = 70.000
	tc.right = 130.000
	tc.bottom = 70.500
	tc.top = 141.500
	tc.img = 0x56080002
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '姓名'
	tc.left = -162.000
	tc.right = -82.000
	tc.bottom = 112.500
	tc.top = 127.500
	tc.text = '姓    名：'
	tc.font = 0x610f0000
	tc.align = 1
	tc.style = 2
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'name'
		tc.left = 35.000
		tc.right = 135.000
		tc.bottom = -7.500
		tc.top = 7.500
		tc.text = '令狐冲'
		tc.font = 0x610f0000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '称号'
	tc.left = -162.000
	tc.right = -82.000
	tc.bottom = 92.500
	tc.top = 107.500
	tc.text = '江湖称号:'
	tc.font = 0x610f0000
	tc.align = 1
	tc.style = 2
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'name'
		tc.left = 35.000
		tc.right = 135.000
		tc.bottom = -7.500
		tc.top = 7.500
		tc.text = '令狐冲'
		tc.font = 0x610f0000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = 'C0'
	tc.left = -20.000
	tc.right = 80.000
	tc.bottom = 108.000
	tc.top = 128.000
	tc.text = '你的头像'
	tc.font = 0x61120000
	tc.style = 2
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '15'
	tc.left = -164.000
	tc.right = -84.000
	tc.bottom = 72.500
	tc.top = 87.500
	tc.text = '善    恶:'
	tc.font = 0x610f0000
	tc.align = 1
	tc.style = 2
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'name'
		tc.left = 35.000
		tc.right = 135.000
		tc.bottom = -7.500
		tc.top = 7.500
		tc.text = '令狐冲'
		tc.font = 0x610f0000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '45'
	tc.left = -162.000
	tc.right = -82.000
	tc.bottom = 52.500
	tc.top = 67.500
	tc.text = '生 命 值:'
	tc.font = 0x610f0000
	tc.align = 1
	tc.style = 2
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'name'
		tc.left = 35.000
		tc.right = 135.000
		tc.bottom = -7.500
		tc.top = 7.500
		tc.text = '令狐冲'
		tc.font = 0x610f0000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '16'
	tc.left = -162.000
	tc.right = -82.000
	tc.bottom = 32.500
	tc.top = 47.500
	tc.text = '力    道:'
	tc.font = 0x610f0000
	tc.align = 1
	tc.style = 2
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'name'
		tc.left = 35.000
		tc.right = 135.000
		tc.bottom = -7.500
		tc.top = 7.500
		tc.text = '令狐冲'
		tc.font = 0x610f0000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '18'
	tc.left = -162.000
	tc.right = -82.000
	tc.bottom = 12.500
	tc.top = 27.500
	tc.text = '悟    性:'
	tc.font = 0x610f0000
	tc.align = 1
	tc.style = 2
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'name'
		tc.left = 35.000
		tc.right = 135.000
		tc.bottom = -7.500
		tc.top = 7.500
		tc.text = '令狐冲'
		tc.font = 0x610f0000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '20'
	tc.left = -162.000
	tc.right = -82.000
	tc.bottom = -7.500
	tc.top = 7.500
	tc.text = '灵    敏:'
	tc.font = 0x610f0000
	tc.align = 1
	tc.style = 2
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'name'
		tc.left = 35.000
		tc.right = 135.000
		tc.bottom = -7.500
		tc.top = 7.500
		tc.text = '令狐冲'
		tc.font = 0x610f0000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '22'
	tc.left = -162.000
	tc.right = -82.000
	tc.bottom = -27.500
	tc.top = -12.500
	tc.text = '拳掌之力:'
	tc.font = 0x610f0000
	tc.align = 1
	tc.style = 2
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'name'
		tc.left = 35.000
		tc.right = 135.000
		tc.bottom = -7.500
		tc.top = 7.500
		tc.text = '令狐冲'
		tc.font = 0x610f0000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '24'
	tc.left = -162.000
	tc.right = -82.000
	tc.bottom = -47.500
	tc.top = -32.500
	tc.text = '御剑之术：'
	tc.font = 0x610f0000
	tc.align = 1
	tc.style = 2
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'name'
		tc.left = 35.000
		tc.right = 135.000
		tc.bottom = -7.500
		tc.top = 7.500
		tc.text = '令狐冲'
		tc.font = 0x610f0000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '26'
	tc.left = -162.000
	tc.right = -82.000
	tc.bottom = -67.500
	tc.top = -52.500
	tc.text = '舞棍之能:'
	tc.font = 0x610f0000
	tc.align = 1
	tc.style = 2
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'name'
		tc.left = 35.000
		tc.right = 135.000
		tc.bottom = -7.500
		tc.top = 7.500
		tc.text = '令狐冲'
		tc.font = 0x610f0000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '28'
	tc.left = -162.000
	tc.right = -82.000
	tc.bottom = -87.500
	tc.top = -72.500
	tc.text = '拆招卸力:'
	tc.font = 0x610f0000
	tc.align = 1
	tc.style = 2
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'name'
		tc.left = 35.000
		tc.right = 135.000
		tc.bottom = -7.500
		tc.top = 7.500
		tc.text = '令狐冲'
		tc.font = 0x610f0000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '30'
	tc.left = -162.000
	tc.right = -82.000
	tc.bottom = -107.500
	tc.top = -92.500
	tc.text = '闪躲纵越:'
	tc.font = 0x610f0000
	tc.align = 1
	tc.style = 2
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'name'
		tc.left = 35.000
		tc.right = 135.000
		tc.bottom = -7.500
		tc.top = 7.500
		tc.text = '令狐冲'
		tc.font = 0x610f0000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '32'
	tc.left = -162.000
	tc.right = -82.000
	tc.bottom = -127.500
	tc.top = -112.500
	tc.text = '施毒之术:'
	tc.font = 0x610f0000
	tc.align = 1
	tc.style = 2
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'name'
		tc.left = 35.000
		tc.right = 135.000
		tc.bottom = -7.500
		tc.top = 7.500
		tc.text = '令狐冲'
		tc.font = 0x610f0000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '34'
	tc.left = -162.000
	tc.right = -82.000
	tc.bottom = -147.500
	tc.top = -132.500
	tc.text = '暗器技法:'
	tc.font = 0x610f0000
	tc.align = 1
	tc.style = 2
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'name'
		tc.left = 35.000
		tc.right = 135.000
		tc.bottom = -7.500
		tc.top = 7.500
		tc.text = '令狐冲'
		tc.font = 0x610f0000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '36'
	tc.left = -162.000
	tc.right = -82.000
	tc.bottom = -167.500
	tc.top = -152.500
	tc.text = '交易之道:'
	tc.font = 0x610f0000
	tc.align = 1
	tc.style = 2
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'name'
		tc.left = 35.000
		tc.right = 135.000
		tc.bottom = -7.500
		tc.top = 7.500
		tc.text = '令狐冲'
		tc.font = 0x610f0000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '47'
	tc.left = -10.000
	tc.right = 70.000
	tc.bottom = 52.500
	tc.top = 67.500
	tc.text = '内 力 值:'
	tc.font = 0x610f0000
	tc.align = 1
	tc.style = 2
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'name'
		tc.left = 35.000
		tc.right = 135.000
		tc.bottom = -7.500
		tc.top = 7.500
		tc.text = '令狐冲'
		tc.font = 0x610f0000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '17'
	tc.left = -10.000
	tc.right = 70.000
	tc.bottom = 32.500
	tc.top = 47.500
	tc.text = '根    骨:'
	tc.font = 0x610f0000
	tc.align = 1
	tc.style = 2
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'name'
		tc.left = 35.000
		tc.right = 135.000
		tc.bottom = -7.500
		tc.top = 7.500
		tc.text = '令狐冲'
		tc.font = 0x610f0000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '19'
	tc.left = -10.000
	tc.right = 70.000
	tc.bottom = 12.500
	tc.top = 27.500
	tc.text = '福    缘:'
	tc.font = 0x610f0000
	tc.align = 1
	tc.style = 2
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'name'
		tc.left = 35.000
		tc.right = 135.000
		tc.bottom = -7.500
		tc.top = 7.500
		tc.text = '令狐冲'
		tc.font = 0x610f0000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '21'
	tc.left = -10.000
	tc.right = 70.000
	tc.bottom = -7.500
	tc.top = 7.500
	tc.text = '定    力:'
	tc.font = 0x610f0000
	tc.align = 1
	tc.style = 2
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'name'
		tc.left = 35.000
		tc.right = 135.000
		tc.bottom = -7.500
		tc.top = 7.500
		tc.text = '令狐冲'
		tc.font = 0x610f0000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '23'
	tc.left = -10.000
	tc.right = 70.000
	tc.bottom = -27.500
	tc.top = -12.500
	tc.text = '弹指之力：'
	tc.font = 0x610f0000
	tc.align = 1
	tc.style = 2
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'name'
		tc.left = 35.000
		tc.right = 135.000
		tc.bottom = -7.500
		tc.top = 7.500
		tc.text = '令狐冲'
		tc.font = 0x610f0000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '25'
	tc.left = -10.000
	tc.right = 70.000
	tc.bottom = -47.500
	tc.top = -32.500
	tc.text = '耍刀之法:'
	tc.font = 0x610f0000
	tc.align = 1
	tc.style = 2
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'name'
		tc.left = 35.000
		tc.right = 135.000
		tc.bottom = -7.500
		tc.top = 7.500
		tc.text = '令狐冲'
		tc.font = 0x610f0000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '27'
	tc.left = -10.000
	tc.right = 70.000
	tc.bottom = -67.500
	tc.top = -52.500
	tc.text = '内功修为:'
	tc.font = 0x610f0000
	tc.align = 1
	tc.style = 2
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'name'
		tc.left = 35.000
		tc.right = 135.000
		tc.bottom = -7.500
		tc.top = 7.500
		tc.text = '令狐冲'
		tc.font = 0x610f0000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '29'
	tc.left = -10.000
	tc.right = 70.000
	tc.bottom = -87.500
	tc.top = -72.500
	tc.text = '搏击格斗:'
	tc.font = 0x610f0000
	tc.align = 1
	tc.style = 2
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'name'
		tc.left = 35.000
		tc.right = 135.000
		tc.bottom = -7.500
		tc.top = 7.500
		tc.text = '令狐冲'
		tc.font = 0x610f0000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '31'
	tc.left = -10.000
	tc.right = 70.000
	tc.bottom = -107.500
	tc.top = -92.500
	tc.text = '轻身之法:'
	tc.font = 0x610f0000
	tc.align = 1
	tc.style = 2
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'name'
		tc.left = 35.000
		tc.right = 135.000
		tc.bottom = -7.500
		tc.top = 7.500
		tc.text = '令狐冲'
		tc.font = 0x610f0000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '33'
	tc.left = -10.000
	tc.right = 70.000
	tc.bottom = -127.500
	tc.top = -112.500
	tc.text = '医疗之术:'
	tc.font = 0x610f0000
	tc.align = 1
	tc.style = 2
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'name'
		tc.left = 35.000
		tc.right = 135.000
		tc.bottom = -7.500
		tc.top = 7.500
		tc.text = '令狐冲'
		tc.font = 0x610f0000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '35'
	tc.left = -10.000
	tc.right = 70.000
	tc.bottom = -147.500
	tc.top = -132.500
	tc.text = '读书写字:'
	tc.font = 0x610f0000
	tc.align = 1
	tc.style = 2
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'name'
		tc.left = 35.000
		tc.right = 135.000
		tc.bottom = -7.500
		tc.top = 7.500
		tc.text = '令狐冲'
		tc.font = 0x610f0000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '37'
	tc.left = -11.000
	tc.right = 69.000
	tc.bottom = -167.500
	tc.top = -152.500
	tc.text = '烹饪之道；'
	tc.font = 0x610f0000
	tc.align = 1
	tc.style = 2
	tp = tc
		tc = G.TextQuad()
		tp.addChild(tc)
		tc.name = 'name'
		tc.left = 35.000
		tc.right = 135.000
		tc.bottom = -7.500
		tc.top = 7.500
		tc.text = '令狐冲'
		tc.font = 0x610f0000
		tc.align = 1
		tc.style = 2
		tp = tc
		tp = tp.parent
		--end
	tp = tp.parent
	--end
	tc = G.Quad()
	tp.addChild(tc)
	tc.name = 'c5'
	tc.left = 136.000
	tc.right = 150.000
	tc.bottom = -215.000
	tc.top = -199.000
	tc.img = 0x33010002
	tp = tc
	tp = tp.parent
	--end
tp.c_list = setmetatable({}, c_list)
