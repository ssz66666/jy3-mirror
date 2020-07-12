--[[301e

]]

local G = require "gf"
local t = G.com()
function t:init()
end
function t:start()
    --self.obj.getChildByName('开始时间').text = tostring(os.time())
    --self.obj.getChildByName('姓名').text =  G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]
    self.obj.getChildByName('头像').img = G.QueryName(0x10030001)[tostring(119)]
    self.obj.getChildByName('显示').getChildByName('蚯蚓').text = G.QueryName(0x100b013d).数量 
    if G.QueryName(0x100b013d).数量  > 9999 then 
        self.obj.getChildByName('显示').getChildByName('蚯蚓').text = '????'
    end
    G.misc().小游戏时间 = self.obj.getChildByName('时间').width
    G.misc().钓鱼 = 0
end
function t:update()
    
   


end  
function t:click(tar)
    if tar == self.obj.getChildByName('开始') and G.misc().钓鱼 == 0 then 
        if self.obj.getChildByName('时间').width > 0  and G.QueryName(0x100b013d).数量 > 0  then
            G.trig_event('钓鱼')
        end
    end    
end  
return t