--[[3023

]]

local G = require "gf"
local t = G.com()

function t:init()
end
function t:start()
    local o_teammate_队友 = G.QueryName(0x10110001) 
    for i  = 1,12 do 
        if o_teammate_队友[tostring(i)] ~= nil then 
            self.obj.getChildByName(tostring(i)).visible = true 
            self.obj.getChildByName(tostring(i)).text = G.QueryName(o_teammate_队友[tostring(i)]).姓名
            
   
        else
            self.obj.getChildByName(tostring(i)).visible  = false 
            
        end 
        
    end  

end  

function t:update()

    --local n = 0
 

end  
function t:onFrameEnd(tar, id)
    local team = {'team2','team3','team4','team5'}
    for i = 1,4 do 
       if tar ==  self.obj.getChildByName(team[i]) then 
            self.obj.getChildByName(team[i]).frameActionID(id)
       end
    end
end 
function t:click(tar)
    local o_teammate_队友 = G.QueryName(0x10110001)
    local n = 0
    for p = 1,12 do 
        if self.obj.getChildByName(tostring(p)).getChildByName('否').visible == false then
            n = n + 1
        end
    end  
    for i = 1,12 do 
        if tar == self.obj.getChildByName(tostring(i)) then  
            if  self.obj.getChildByName(tostring(i)).getChildByName('否').visible == true then 
                if n < 4  then 
                    self.obj.getChildByName(tostring(i)).getChildByName('否').visible = false
                else 
                    G.call('notice','最多只能选取4名队友')
                end      
            elseif self.obj.getChildByName(tostring(i)).getChildByName('否').visible == false then 
                self.obj.getChildByName(tostring(i)).getChildByName('否').visible = true

            end 
            for p = 1,12 do 
                if self.obj.getChildByName(tostring(p)).getChildByName('否').visible == false then
                    self.obj.getChildByName('存储').getChildByName(tostring(1)).text = tostring(p)
                    break
                end
                
            end
            for p = 1,12 do 
                if self.obj.getChildByName(tostring(p)).getChildByName('否').visible == false then
                    if p ~= tonumber(self.obj.getChildByName('存储').getChildByName(tostring(1)).text) then 
                         self.obj.getChildByName('存储').getChildByName(tostring(2)).text = tostring(p)
                    break
                    end 
                end
            end 
            for p = 1,12 do 
                if self.obj.getChildByName(tostring(p)).getChildByName('否').visible == false then
                    if p ~= tonumber(self.obj.getChildByName('存储').getChildByName(tostring(1)).text) and 
                    p ~= tonumber(self.obj.getChildByName('存储').getChildByName(tostring(2)).text)  then 
                         self.obj.getChildByName('存储').getChildByName(tostring(3)).text = tostring(p)
                    break
                    end 
                end
            end 
            for p = 1,12 do 
                if self.obj.getChildByName(tostring(p)).getChildByName('否').visible == false then
                    if p ~= tonumber(self.obj.getChildByName('存储').getChildByName(tostring(1)).text) and 
                    p ~= tonumber(self.obj.getChildByName('存储').getChildByName(tostring(2)).text)  
                    and p ~= tonumber(self.obj.getChildByName('存储').getChildByName(tostring(3)).text)  then 
                         self.obj.getChildByName('存储').getChildByName(tostring(4)).text = tostring(p)
                    break
                    end 
                end
            end 
            n = 0
            for p = 1,12 do 
                if self.obj.getChildByName(tostring(p)).getChildByName('否').visible == false then
                    n = n + 1
                end
            end 
            local team = {'team2','team3','team4','team5'}
            for i = 1,4 do 
                if tonumber(self.obj.getChildByName('存储').getChildByName(tostring(i)).text) > 0 then 
                    local t = tonumber(self.obj.getChildByName('存储').getChildByName(tostring(i)).text)
                    if self.obj.getChildByName(tostring(t)).getChildByName('否').visible == false then
                        self.obj.getChildByName(team[i]).visible = true 
                        self.obj.getChildByName(team[i]).frameActionID(1000 + o_teammate_队友[tostring(t)]- 0x10040000)
                    else
                        self.obj.getChildByName(team[i]).visible = false
                    end 
                end 
            end  
            for i = 1,4 do 
                if i > n then 
                    self.obj.getChildByName(team[i]).visible = false
                end 
            end      

         
            
        end 
    end
    if tar == self.obj.getChildByName('确定') then 
        local team = {'team2','team3','team4','team5'}
        n = 0
        for p = 1,12 do 
            if self.obj.getChildByName(tostring(p)).getChildByName('否').visible == false then
                n = n + 1
            end
        end 
        for i = 1,n do 
            local t = tonumber(self.obj.getChildByName('存储').getChildByName(tostring(i)).text)
            local int_no = o_teammate_队友[tostring(t)] - 0x10040000
            G.QueryName(0x10150001)[team[i]] = int_no
        end 
        for i = 1,4 do 
            if i > n then 
                G.QueryName(0x10150001)[team[i]] = 0
            end 
        end  
        G.trig_event('选择队友结束')

    end  
end              
return t