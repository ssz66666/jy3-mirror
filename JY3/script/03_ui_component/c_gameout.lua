--[[3025

]]

local G = require "gf"
local t = G.com()
function t:init()
end
function t:start()
    if G.call('get_point',15) > 0 then 
        self.obj.getChildByName('背景').img = 0x56050052
    else
        self.obj.getChildByName('背景').img = 0x56050053
    end
end
function t:click(tar)
    if tar == self.obj.getChildByName('按钮') then 
        G.trig_event('gameout_over')
    end     
end
return t