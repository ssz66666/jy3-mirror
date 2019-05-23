--[[2023

]]
local G = require 'gf'
local c_animation = require 'c_animation'
local tc = G.Entity()
G.cacheUI(tc)
tc.name = 'v_animation'
tc.x=0
tc.y=0
tc.width=1280
tc.height=720
tp = tc
    tc = G.Quad()
    tp.addChild(tc)
    tc.name = '序列帧动画'
    tc.img = 0x33020001
    tp = tp.parent
tp.c_animation = setmetatable({}, c_animation)