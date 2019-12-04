--[[3023

]]

local G = require "gf"
local t = G.com()

function t:init()
    self.默认 = self.obj.getChildByName('默认')
    self.队伍人数 = 0
end
function t:start()
    if not G.misc().默认队伍 then
        G.misc().默认队伍 = {0,0,0,0}
        G.misc().队伍人数 = 0
    end
    local o_teammate_队友 = G.QueryName(0x10110001) 
    for i  = 1,12 do 
        if o_teammate_队友[tostring(i)] ~= nil then 
            self.obj.getChildByName(tostring(i)).visible = true 
            self.obj.getChildByName(tostring(i)).text = G.QueryName(o_teammate_队友[tostring(i)]).姓名
        else
            self.obj.getChildByName(tostring(i)).visible  = false    
        end    
    end  
    for i = 1,4 do
        local int_人数 = 0
        local int_序号 = 0
        for j = 1,4 do
            if G.misc().默认队伍[j] > 0 then 
                int_人数 = int_人数 + 1
            end 
        end
        local result = false
        if G.misc().默认队伍[i] > 0 then
            for j = 1,12 do
                if o_teammate_队友[tostring(j)] then 
                    local int_队友 = o_teammate_队友[tostring(j)]- 0x10040000
                    if G.misc().默认队伍[i] == int_队友 then 
                        result = true
                    end
                end
            end
            if result == false then
                G.misc().默认队伍[i] = 0     
            end
        end 
    end
    self:刷新显示()
    if G.misc().自动战斗 == 1 then 
        local team = {'team2','team3','team4','team5'}
        for i = 1,4 do  
            G.QueryName(0x10150001)[team[i]] = G.misc().默认队伍[i] 
        end 
        G.trig_event('选择队友结束')
    end
end  
function t:onFrameEnd(tar, id)
    local team = {'team2','team3','team4','team5'}
    for i = 1,4 do 
       if tar ==  self.obj.getChildByName(team[i]) then 
            self.obj.getChildByName(team[i]).frameActionID(id)
       end
    end
end 
function t:刷新显示()
    local o_teammate_队友 = G.QueryName(0x10110001)
    for i = 1,12 do
        self.obj.getChildByName(tostring(i)).getChildByName('否').visible = true
        if o_teammate_队友[tostring(i)] then 
            local int_队友 = o_teammate_队友[tostring(i)]- 0x10040000
            for j = 1,4 do
                if int_队友 == G.misc().默认队伍[j] then
                    self.obj.getChildByName(tostring(i)).getChildByName('是').visible = true
                    self.obj.getChildByName(tostring(i)).getChildByName('否').visible = false     
                end
            end 
        end
    end
    for i = 1,4 do
        self.obj.getChildByName('team'..(i+1)).visible = false
        if G.misc().默认队伍[i] > 0 then 
            self.obj.getChildByName('team'..(i+1)).visible = true
            self.obj.getChildByName('team'..(i+1)).frameActionID(1000 + G.misc().默认队伍[i])
        end 
    end
end  
function t:click(tar)
    local o_teammate_队友 = G.QueryName(0x10110001)
    self.队伍人数 = 0
    for i = 1,12 do
        self.obj.getChildByName(tostring(i)).getChildByName('否').visible = true
        if o_teammate_队友[tostring(i)] then 
            local int_队友 = o_teammate_队友[tostring(i)]- 0x10040000
            for j = 1,4 do
                if int_队友 == G.misc().默认队伍[j] then
                    self.队伍人数 = self.队伍人数 + 1    
                end
            end 
        end
    end 
    for i = 1,12 do 
        if tar == self.obj.getChildByName(tostring(i)) then 
            local int_队友 = o_teammate_队友[tostring(i)]- 0x10040000
            local result = true
            local int_序号 = 0
            for j = 1,4 do 
                if  int_队友 == G.misc().默认队伍[j]    then
                    int_序号 = j
                    result = false
                end
            end
            if result == true  then 
                if self.队伍人数 < 4  then 
                    for j = 1,4 do
                        if G.misc().默认队伍[j] == 0 then 
                            G.misc().默认队伍[j] = int_队友
                            break
                        end 
                    end
                else
                    G.call('notice','最多只能选取4名队友') 
                end
            elseif result == false then 
                G.misc().默认队伍[int_序号] = 0
            end 
        end 
    end
    self:刷新显示()
    if tar == self.obj.getChildByName('确定') then 
        local team = {'team2','team3','team4','team5'}
        for i = 1,4 do  
            G.QueryName(0x10150001)[team[i]] = G.misc().默认队伍[i] 
        end 
        G.trig_event('选择队友结束')

    end  
end              
return t