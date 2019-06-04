--[[3032

]]

local G = require "gf"
local t = G.com()
function t:init()
    self.选择 = 0
end
function t:start()
    self.输入框 = self.obj.getChildByName('输入框')
    self.按钮 = self.obj.getChildByName('按钮')
end
function t:显示(string_文本)
    self.输入框.visible = true
    self.输入框.getChildByName('文本').text = string_文本
end
function t:click(tar)
    if tar == self.按钮.getChildByName('是') then
        self.选择 = 1
        G.trig_event('选择结束') 
    elseif tar == self.按钮.getChildByName('否') then
        self.选择 = 0
        G.trig_event('选择结束') 
    end
end
return t