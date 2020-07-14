--[[301f

]]

local G = require "gf"
local t = G.com()
function t:init()
end
function t:start()
    self.obj.getChildByName('显示').getChildByName('姓名').text =  G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]
    self.obj.getChildByName('显示').getChildByName('头像').img = G.QueryName(0x10030001)[tostring(119)]
    G.misc().模式 = 1
    --self:update()
    self.obj.getChildByName('射箭').width = 60
    self.obj.getChildByName('射箭').height = 60
    self.obj.getChildByName('捕猎').width = 60
    self.obj.getChildByName('捕猎').height = 60
    --G.misc().小游戏时间 = self.obj.getChildByName('时间').width
end
function t:update()
 

end  
function t:keyDown(tar,info)
    local key = string.byte(info)
    if key == 49 then 
        self.obj.getChildByName('射箭').img = 0x56100041
        self.obj.getChildByName('捕猎').img = 0x56100042
        G.misc().模式 = 1
    end
    if key == 50 then 
        self.obj.getChildByName('射箭').img = 0x56100040
        self.obj.getChildByName('捕猎').img = 0x56100043
        G.misc().模式 = 2
             
  
        
    end     
end     

function t:click(tar)
    if tar == self.obj.getChildByName('射箭') then 
        self.obj.getChildByName('射箭').img = 0x56100041
        self.obj.getChildByName('捕猎').img = 0x56100042
        G.misc().模式 = 1
    end 
    if tar == self.obj.getChildByName('捕猎') then   
        self.obj.getChildByName('射箭').img = 0x56100040
        self.obj.getChildByName('捕猎').img = 0x56100043
        G.misc().模式 = 2    
    end 
    for i = 1,8 do 
        for n = 1,4 do 
            if tar == self.obj.getChildByName('猎物').getChildByName(tostring(i)).getChildByName(tostring(n)).getChildByName(tostring(0))  then 
                self.obj.getChildByName('目标').text = tostring(i)
                self.obj.getChildByName('位置').text = tostring(n)
                if self.obj.getChildByName('时间').width > 0 then
                    if self.obj.getChildByName('猎物').getChildByName(tostring(i)).getChildByName(tostring(n)).getChildByName('dead').text == '0' then  
                         G.trig_event('打猎')
                    end
                end
            end     
        end 
    end 
    for i = 1,2 do   
        if tar == self.obj.getChildByName('猎物').getChildByName(tostring(9)).getChildByName(tostring(i)).getChildByName(tostring(0))  then 
            self.obj.getChildByName('目标').text = tostring(9)
            self.obj.getChildByName('位置').text = tostring(i)
            if self.obj.getChildByName('时间').width > 0 then
                if self.obj.getChildByName('猎物').getChildByName(tostring(9)).getChildByName(tostring(i)).getChildByName('dead').text == '0' then  
                    G.trig_event('打猎')
                end
            end
       end  

    end    
    for i = 10,11 do   
        if tar == self.obj.getChildByName('猎物').getChildByName(tostring(i)).getChildByName(tostring(1)).getChildByName(tostring(0))  then 
            self.obj.getChildByName('目标').text = tostring(i)
            self.obj.getChildByName('位置').text = tostring(1)
            if self.obj.getChildByName('时间').width > 0 then
                if self.obj.getChildByName('猎物').getChildByName(tostring(i)).getChildByName(tostring(1)).getChildByName('dead').text == '0' then  
                    G.trig_event('打猎')
                end
            end
       end  

    end  
end   
return t