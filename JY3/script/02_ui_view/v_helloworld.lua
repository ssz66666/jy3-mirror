--[[2001

]]
local G = require 'gf'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_helloworld'
tc.left = -640.000
tc.right = 640.000
tc.bottom = -360.000
tc.top = 360.000
tp = tc
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '标题'
	tc.right = 0.000
	tc.bottom = -50.000
	tc.top = 50.000
	tc.anchor = 0x32326400
	tc.text = '欢迎使用梦江湖编辑器'
	tc.font = 0x60300000
	tp = tc
	tp = tp.parent
	--end
