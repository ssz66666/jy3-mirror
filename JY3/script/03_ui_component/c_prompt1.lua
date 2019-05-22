--[[3017

]]
local G = require "gf"
local t = G.com()
function t:init()
    self.按钮 = self.obj.getChildByName('按钮')
end
function t:start()
    self.obj.getChildByName('提示').shadowX = 1
    self.obj.getChildByName('提示').shadowAlpha = 255 
    
end
function t:click(tar)
    if tar == self.按钮 then
        G.Play(0x49011003, 1,false,100) 
       -- G.trig_event('提示结束')
      
    end        
    
end    
return t