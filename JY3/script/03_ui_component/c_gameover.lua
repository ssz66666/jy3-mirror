--[[301b

]]

local G = require "gf"
local t = G.com()
function t:init()
end
function t:click(tar)
    if tar == self.obj.getChildByName('按钮')  then
        G.trig_event('game_over')

    end     
end    
return t