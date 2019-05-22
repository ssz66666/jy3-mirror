--[[3014

]]

local G = require "gf"
local t = G.com()
function t:init()



end
function t:start()
    --待插入刷新判断
    self:update()
    math.randomseed(tostring(os.time()):reverse():sub(1, 6)) 
    local p = math.random(8) + 39
    self.obj.getChildByName('1号任务').text = tostring(p) 
    self.obj.getChildByName('说明').visible = false
    local month = {'一','二','三','四','五','六','七','八','九','十','十一','十二'}
    self.obj.getChildByName('显示').getChildByName('data').text = month[G.QueryName(0x10030001)[tostring(121)]]..'月' 
    if G.call('get_month') ~= G.QueryName(0x10030001)[tostring(146)]  then    --隔月取任务
        local t = {}
        for i =1,39 do 
            if G.QueryName(0x10080000+i).是否完成 == false then 
                table.insert(t, i)    
            end 
        end 
        local a1 = 0
        local a2 = 0
        local a3 = 0
        local a4 = 0 
        if  #t > 3 then 
            local len = #t
            local r = math.random(len)	-- 1~len
            a1 =t[r]
            table.remove(t, r)
            len = #t
            r = math.random(len)	
            a2 =t[r]
            table.remove(t, r)
            len = #t
            r = math.random(len)	
            a3 =t[r]
            table.remove(t, r)
            len = #t
            r = math.random(len)	
            a4 =t[r]
            table.remove(t, r)
        else
            a1 = t[1]
            a2 = t[2]
            a3 = t[3]
            a4 = t[4]
        end 	
        G.QueryName(0x10030001)[tostring(147)] = a1
        G.QueryName(0x10030001)[tostring(148)] = a2
        G.QueryName(0x10030001)[tostring(149)] = a3
        G.QueryName(0x10030001)[tostring(150)] = a4
        G.QueryName(0x10030001)[tostring(146)] = G.QueryName(0x10030001)[tostring(121)]
    end     
end
function t:update()
    local b1 = tonumber(self.obj.getChildByName('1号任务').text) 
    local b2 = G.QueryName(0x10030001)[tostring(147)]
    local b3 = G.QueryName(0x10030001)[tostring(148)]
    local b4 = G.QueryName(0x10030001)[tostring(149)]
    local b5 = G.QueryName(0x10030001)[tostring(150)]
    local b = {b1,b2,b3,b4,b5}
    for i = 1,5 do 
        if  b[i] ~= nil then 
            if b[i] > 0 then  
                self.obj.getChildByName('按钮').getChildByName(tostring(i)).visible = true
                self.obj.getChildByName('显示').getChildByName(tostring(i)).visible = true
                if G.QueryName(0x10080000+b[i]).是否完成 == true then 
                    self.obj.getChildByName('显示').getChildByName(tostring(i)).text = G.QueryName(0x10080000+b[i]).任务名称..'**完成**'
                    self.obj.getChildByName('按钮').getChildByName(tostring(i)).mouseEnabled = false 
                elseif G.QueryName(0x10080000+b[i]).是否完成 == false then
                    self.obj.getChildByName('按钮').getChildByName(tostring(i)).mouseEnabled = true
                    self.obj.getChildByName('显示').getChildByName(tostring(i)).text = G.QueryName(0x10080000+b[i]).任务名称..'**未完成**'   
                end     
            else
                self.obj.getChildByName('按钮').getChildByName(tostring(i)).visible = false
                self.obj.getChildByName('显示').getChildByName(tostring(i)).visible = false
            end 
        else    
            self.obj.getChildByName('按钮').getChildByName(tostring(i)).visible = false
            self.obj.getChildByName('显示').getChildByName(tostring(i)).visible = false
        end 
    end      
end     
function t:click(tar)
    local c1 = tonumber(self.obj.getChildByName('1号任务').text) 
    local c2 = G.QueryName(0x10030001)[tostring(147)]
    local c3 = G.QueryName(0x10030001)[tostring(148)]
    local c4 = G.QueryName(0x10030001)[tostring(149)]
    local c5 = G.QueryName(0x10030001)[tostring(150)]
    local c = {c1,c2,c3,c4,c5} 
    for i = 1,5 do 
        if c[i] ~= nil and c[i] > 0   then 
            local o_Gut_任务 = G.QueryName(0x10080000+c[i]) 
            if tar == self.obj.getChildByName('按钮').getChildByName(tostring(i)) then 
                self.obj.getChildByName('说明').visible = true 
                self.obj.getChildByName('说明').getChildByName('内容').text = o_Gut_任务.任务注释
                if o_Gut_任务.任务需求属性 ~= nil then 
                    self.obj.getChildByName('说明').getChildByName('条件').text = o_Gut_任务.任务需求属性..tostring(o_Gut_任务.需求属性值) 
                elseif  o_Gut_任务.任务需求属性 == nil then 
                    self.obj.getChildByName('说明').getChildByName('条件').text = '无'
                end 
                self.obj.getChildByName('说明').getChildByName('耗时').text = o_Gut_任务.需求天数..'天'
                self.obj.getChildByName('任务').text = tostring(i)
            end 
        end 
    end 
    if tar == self.obj.getChildByName('结束') or tar == self.obj.getChildByName('关闭菜单')then
        G.Play(0x49011003, 1,false,100) 
        G.removeUI('v_lakes_notice') 
        G.trig_event('关闭公告')
    elseif tar == self.obj.getChildByName('说明').getChildByName('接受') then 
        G.Play(0x49011003, 1,false,100) 
        local n = tonumber(self.obj.getChildByName('任务').text )
        local m = 0
        local p = {G.QueryName(0x10030001)[tostring(147)],G.QueryName(0x10030001)[tostring(148)],G.QueryName(0x10030001)[tostring(149)],G.QueryName(0x10030001)[tostring(150)]}
        if n > 0 then 
            if n == 1 then 
               m = tonumber(self.obj.getChildByName('1号任务').text) 
           end
           if n > 1 then  
               m = p[n-1]
            end  
        end  
        local o_Gut = G.QueryName(0x10080000+m) 
        if m > 0 then 
            if o_Gut.任务需求属性 == nil then 
               G.trig_event('关闭公告')
               G.trig_event('聚贤庄任务_'..o_Gut.任务名称)
            else
               if o_Gut.任务需求属性 == '声望' then 
                    if G.call('get_point',14) >= o_Gut.需求属性值 then 
                        G.trig_event('关闭公告')
                        G.trig_event('聚贤庄任务_'..o_Gut.任务名称)
                    else
                        G.call('notice','声望不够')
                    end 
                elseif o_Gut.任务需求属性 == '医疗' then 
                    if G.call('get_point',33) >= o_Gut.需求属性值 then 
                        G.trig_event('关闭公告')
                        G.trig_event('聚贤庄任务_'..o_Gut.任务名称)
                    else
                        G.call('notice','医疗不够')
                    end 
                end     
            end     
        end        
    end
end     
return t