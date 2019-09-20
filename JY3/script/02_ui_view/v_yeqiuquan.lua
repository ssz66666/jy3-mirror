--[[2037

]]
local G = require 'gf'
local c_yeqiuquan = require 'c_yeqiuquan'
local tp,tc,com,tk
tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_yeqiuquan'
tc.left = -640.000
tc.right = 640.000
tc.bottom = -360.000
tc.top = 360.000
tp = tc
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '标签一'
	tc.pivotY = 1.000
	tc.left = -390.000
	tc.right = -190.000
	tc.bottom = 50.000
	tc.top = 150.000
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.text = '体力:[br]怒气:'
	tc.font = 0x61320000
	tc.style = 3
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '标签二'
	tc.pivotY = 1.000
	tc.left = -390.000
	tc.right = -190.000
	tc.bottom = -240.000
	tc.top = -140.000
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.text = '体力:[br]怒气:'
	tc.font = 0x61320000
	tc.style = 3
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '怒气二'
	tc.left = -340.000
	tc.right = -140.000
	tc.bottom = 60.000
	tc.top = 160.000
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.text = '0'
	tc.font = 0x61300000
	tc.style = 5
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '体力二'
	tc.pivotY = 1.000
	tc.left = -340.000
	tc.right = -140.000
	tc.bottom = 60.000
	tc.top = 160.000
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.text = '100'
	tc.font = 0x61300000
	tc.style = 4
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '体力一'
	tc.pivotY = 1.000
	tc.left = -340.000
	tc.right = -140.000
	tc.bottom = -230.000
	tc.top = -130.000
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.text = '100'
	tc.font = 0x61300000
	tc.style = 4
	tp = tc
	tp = tp.parent
	--end
	tc = G.TextQuad()
	tp.addChild(tc)
	tc.name = '怒气一'
	tc.left = -340.000
	tc.right = -140.000
	tc.bottom = -230.000
	tc.top = -130.000
	tc.scaleX = 0.500
	tc.scaleY = 0.500
	tc.text = '0'
	tc.font = 0x61300000
	tc.style = 5
	tp = tc
	tp = tp.parent
	--end
tp.c_yeqiuquan = setmetatable({}, c_yeqiuquan)
