--[[302f

]]

local G = require "gf"
local t = G.com()
function t:init()
    self.按钮 = self.obj.getChildByName('按钮')
end
function t:start()
    self.天书 = 0
end
function t:click(tar)
    for i = 1,14 do 
        if tar == self.按钮.getChildByName('book_'..i) then
            self.天书 = i
            G.trig_event('选择天书结束') 
        end
    end
    if tar == self.obj.getChildByName('结束') or tar == self.obj.getChildByName('关闭菜单') then
        G.Play(0x49011003, 1,false,100) 
        G.trig_event('选择天书结束') 
    end
end
return t