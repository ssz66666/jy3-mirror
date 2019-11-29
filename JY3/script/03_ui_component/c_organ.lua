--[[3030

]]

local G = require "gf"
local t = G.com()
function t:init()
    self.机关 = self.obj.getChildByName('机关')
    self.list = {}
    self.完成 = 0
end
function t:start()
    while true do
        local int_list = 0 
        for i = 1,9 do
            self.list[i] = math.random(4) 
        end
        self.list[5] = 1
        for i = 1,9 do
            int_list = int_list + self.list[i] 
        end   
        if (int_list-1)%8 > 0 then 
            break
        end 
    end
    for i =1,9 do
        --print('self.list'..i..'='..self.list[i])
        self.机关.getChildByName('tab_'..i).img = 0x56150000+i*4096+ self.list[i]
    end
end
function t:click(tar)
    if tar ==  self.机关.getChildByName('tab_1') then
        if self.list[1] < 4 then 
            self.list[1] =  self.list[1] + 1
        else
            self.list[1] =  1
        end
        if self.list[3] < 4 then 
            self.list[3] =  self.list[3] + 1
        else
            self.list[3] =  1
        end
        if self.list[8] > 1 then 
            self.list[8] =  self.list[8] - 1
        else
            self.list[8] =  4
        end
    elseif tar ==  self.机关.getChildByName('tab_3') then
        if self.list[9] < 4 then 
            self.list[9] =  self.list[9] + 1
        else
            self.list[9] =  1
        end
        if self.list[3] < 4 then 
            self.list[3] =  self.list[3] + 1
        else
            self.list[3] =  1
        end
        if self.list[4] > 1 then 
            self.list[4] =  self.list[4] - 1
        else
            self.list[4] =  4
        end
    elseif tar ==  self.机关.getChildByName('tab_7') then
        if self.list[7] < 4 then 
            self.list[7] =  self.list[7] + 1
        else
            self.list[7] =  1
        end
        if self.list[1] < 4 then 
            self.list[1] =  self.list[1] + 1
        else
            self.list[1] =  1
        end
        if self.list[6] > 1 then 
            self.list[6] =  self.list[6] - 1
        else
            self.list[6] =  4
        end
    elseif tar ==  self.机关.getChildByName('tab_9') then
        if self.list[9] < 4 then 
            self.list[9] =  self.list[9] + 1
        else
            self.list[9] =  1
        end
        if self.list[7] < 4 then 
            self.list[7] =  self.list[7] + 1
        else
            self.list[7] =  1
        end
        if self.list[2] > 1 then 
            self.list[2] =  self.list[2] - 1
        else
            self.list[2] =  4
        end
    elseif tar ==  self.机关.getChildByName('tab_2') then
        if self.list[2] < 4 then 
            self.list[2] =  self.list[2] + 1
        else
            self.list[2] =  1
        end
        if self.list[6] < 4 then 
            self.list[6] =  self.list[6] + 1
        else
            self.list[6] =  1
        end
        if self.list[7] > 1 then 
            self.list[7] =  self.list[7] - 1
        else
            self.list[7] =  4
        end
    elseif tar ==  self.机关.getChildByName('tab_4') then
        if self.list[2] < 4 then 
            self.list[2] =  self.list[2] + 1
        else
            self.list[2] =  1
        end
        if self.list[4] < 4 then 
            self.list[4] =  self.list[4] + 1
        else
            self.list[4] =  1
        end
        if self.list[9] > 1 then 
            self.list[9] =  self.list[9] - 1
        else
            self.list[9] =  4
        end
    elseif tar ==  self.机关.getChildByName('tab_6') then
        if self.list[6] < 4 then 
            self.list[6] =  self.list[6] + 1
        else
            self.list[6] =  1
        end
        if self.list[8] < 4 then 
            self.list[8] =  self.list[8] + 1
        else
            self.list[8] =  1
        end
        if self.list[1] > 1 then 
            self.list[1] =  self.list[1] - 1
        else
            self.list[1] =  4
        end
    elseif tar ==  self.机关.getChildByName('tab_8') then
        if self.list[4] < 4 then 
            self.list[4] =  self.list[4] + 1
        else
            self.list[4] =  1
        end
        if self.list[8] < 4 then 
            self.list[8] =  self.list[8] + 1
        else
            self.list[8] =  1
        end
        if self.list[3] > 1 then 
            self.list[3] =  self.list[3] - 1
        else
            self.list[3] =  4
        end
    elseif tar ==  self.机关.getChildByName('tab_5') then
        local int_list = 0
        for i = 1,9 do 
           if  self.list[i] == 1 then
               int_list = int_list + 1
           end 
        end 
        if int_list == 8 then
            for i = 1,9 do
                if  self.list[i] > 1 then
                    int_list = i
                    break
                end 
            end
            self.list[int_list] = self.list[int_list] - 1 
        end
        
    end
    for i =1,9 do
        self.机关.getChildByName('tab_'..i).img = 0x56150000+i*4096+ self.list[i]
    end
    if tar == self.obj.getChildByName('完成') then
        local reuslt = true 
        for i = 1,9 do 
            if self.list[i] > 1 then 
                reuslt = false
                break
            end
        end
        if reuslt == true then
            self.完成 = 1
        end
        G.trig_event('organ_over')
    end
end
return t