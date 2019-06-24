--[[3020

]]

local G = require "gf"
local t = G.com()
function t:init()

end
function t:start()
    self.obj.getChildByName('显示').getChildByName('姓名').text =  G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]
    self.obj.getChildByName('显示').getChildByName('头像').img = G.QueryName(0x10030001)[tostring(119)]
    local n = math.random(1,100)
    local m = math.random(1,100)
    self.obj.getChildByName('力').text = tostring(n)  
    self.obj.getChildByName('气').text = tostring(m) 
    self.obj.getChildByName('力道').width = 137*n/100
    self.obj.getChildByName('气劲').width = 137*m/100
    self.挖矿 = 0
    self.挖矿值 = -4000
end
function t:click(tar)
    if tar == self.obj.getChildByName('开始')  then 
        if self.obj.getChildByName('时间').width > 0 and tonumber(self.obj.getChildByName('耐久').text)  > 0 and self.挖矿 == 0 then
            G.trig_event('挖矿')
        end
    end     
end     
return t