--[[3027

]]

local G = require "gf"
local t = G.com()
function t:init()
    self.主菜单 = self.obj.getChildByName('按钮').getChildByName('主菜单')
    self.按钮 = self.obj.getChildByName('按钮')
    self.剧情 = self.obj.getChildByName('按钮').getChildByName('剧情')
    self.主角属性 = self.obj.getChildByName('按钮').getChildByName('主角属性')
    self.NPC属性 = self.obj.getChildByName('按钮').getChildByName('NPC属性')
    self.时间 = self.obj.getChildByName('按钮').getChildByName('时间')
    self.任务 = self.obj.getChildByName('按钮').getChildByName('任务')
    self.返回 = self.obj.getChildByName('按钮').getChildByName('返回')
end
function t:start()
end

function t:rollOver(tar)
    if tar == self.主菜单.getChildByName('剧情')   then 
        tar.style = 1
    end 
    if tar == self.主菜单.getChildByName('主角属性') then 
        tar.style = 1
    end
    if tar == self.主菜单.getChildByName('NPC属性') then 
        tar.style = 1
    end 
    if tar == self.主菜单.getChildByName('物品') then 
        tar.style = 1
    end 
    if tar == self.主菜单.getChildByName('主角技能') then 
        tar.style = 1
    end 
    if tar == self.主菜单.getChildByName('时间') then 
        tar.style = 1
    end 
    if tar == self.主菜单.getChildByName('队友') then 
        tar.style = 1
    end 
    if tar == self.主菜单.getChildByName('任务') then 
        tar.style = 1
    end 
    for i = 1,9 do 
        if tar == self.剧情.getChildByName(tostring(i)) then 
            tar.style = 1
        end
        if tar == self.时间.getChildByName(tostring(i)) then 
            tar.style = 1
        end
    end
    for i = 1,35 do 
        if tar == self.主角属性.getChildByName(tostring(i)) then 
            tar.style = 1
        end
    end
    for i = 1,19 do 
        if tar == self.NPC属性.getChildByName(tostring(i)) then 
            tar.style = 1
        end
    end
end
function t:rollOut(tar)
    if tar == self.主菜单.getChildByName('剧情')   then 
        tar.style = 10
    end 
    if tar == self.主菜单.getChildByName('主角属性') then 
        tar.style = 10
    end
    if tar == self.主菜单.getChildByName('NPC属性') then 
        tar.style = 10
    end 
    if tar == self.主菜单.getChildByName('物品') then 
        tar.style = 10
    end 
    if tar == self.主菜单.getChildByName('主角技能') then 
        tar.style = 10
    end 
    if tar == self.主菜单.getChildByName('时间') then 
        tar.style = 10
    end 
    if tar == self.主菜单.getChildByName('队友') then 
        tar.style = 10
    end 
    if tar == self.主菜单.getChildByName('任务') then 
        tar.style = 10
    end 
    for i = 1,9 do 
        if tar == self.剧情.getChildByName(tostring(i)) then 
            tar.style = 10
        end
        if tar == self.时间.getChildByName(tostring(i)) then 
            tar.style = 10
        end
    end
    for i = 1,35 do 
        if tar == self.主角属性.getChildByName(tostring(i)) then 
            tar.style = 10
        end
    end
    for i = 1,19 do 
        if tar == self.NPC属性.getChildByName(tostring(i)) then 
            tar.style = 10
        end
    end
end
function t:rclick(tar)
    if  self.obj.getChildByName('secret').visible == true then 
        self.按钮.getChildByName('物品').text = 0
        self.按钮.getChildByName('技能').text = 0
        self.obj.getChildByName('secret').visible = false
        self.obj.getChildByName('secret').getChildByName('文本').text = ''
    else
        if self.返回.visible == true then 
            if  self.任务.visible == true then 
                self.返回.visible = false
                self.主菜单.visible = true
                self.任务.visible = false
                self.obj.getChildByName('secret').visible = true
            elseif self.NPC属性.visible == true then
                self.返回.visible = false
                self.主菜单.visible = true
                self.NPC属性.visible = false
                self.obj.getChildByName('secret').visible = true
            else
                self.主菜单.visible = true
                self.返回.visible = false
                self.剧情.visible = false
                self.主角属性.visible = false
                self.NPC属性.visible = false
                self.时间.visible = false
                self.任务.visible = false
            end
        else
            G.removeUI('v_secret') 
            G.call("goto_map",G.QueryName(0x10030001)[tostring(140)]-0x10060000)
        end

    end
end
function t:click(tar)
    if tar == self.主菜单.getChildByName('剧情') then
        if G.misc().作弊菜单 == 1 or G.misc().测试 then 
            self.主菜单.visible = false
            self.返回.visible = true
            self.剧情.visible = true
        else
            G.call('notice1','暂不开放')
        end
    elseif tar == self.主菜单.getChildByName('主角属性') then
        G.misc().作弊 = 1
        self.主菜单.visible = false
        self.返回.visible = true
        self.主角属性.visible = true
    elseif tar == self.主菜单.getChildByName('NPC属性') then
        G.misc().作弊 = 2
        self.obj.getChildByName('secret').visible = true
        self.obj.getChildByName('secret').getChildByName('说明').text = '说明：输入人物代码，数字为(1~223)，输入完成按确定' 
    elseif tar == self.主菜单.getChildByName('物品') then
        G.misc().作弊 = 3
        local item =G.DBTable('o_item')
        self.按钮.getChildByName('物品').text = 0
        self.obj.getChildByName('secret').visible = true
        self.obj.getChildByName('secret').getChildByName('说明').text = '说明：输入物品代码，数字为(1~'..#item..')，输入完成按确定' 
    elseif tar == self.主菜单.getChildByName('主角技能') then
        local skill =G.DBTable('o_skill')
        G.misc().作弊 = 4
        self.按钮.getChildByName('技能').text = 0
        self.obj.getChildByName('secret').visible = true
        self.obj.getChildByName('secret').getChildByName('说明').text = '说明：输入技能代码，数字为(1~'..#skill..')，输入完成按确定' 
    elseif tar == self.主菜单.getChildByName('时间') then
        if G.misc().作弊菜单 == 1 or G.misc().测试 then
            G.misc().作弊 = 5
            self.主菜单.visible = false
            self.返回.visible = true
            self.时间.visible = true
        else
            G.call('notice1','暂不开放')
        end
    elseif tar == self.主菜单.getChildByName('队友') then
        if G.misc().作弊菜单 == 1 or G.misc().测试 then 
            G.misc().作弊 = 6
            self.obj.getChildByName('secret').visible = true
            self.obj.getChildByName('secret').getChildByName('说明').text = '说明：输入人物代码，数字为(1~40)，输入完成按确定' 
        else
            G.call('notice1','暂不开放')
        end
    elseif tar == self.主菜单.getChildByName('任务') then
        if G.misc().作弊菜单 == 1 or G.misc().测试  then 
            G.misc().作弊 = 7
            self.obj.getChildByName('secret').visible = true
            self.obj.getChildByName('secret').getChildByName('说明').text = '说明：输入任务代码，数字为(1~47)，输入完成按确定[br]特别说明:接受任务无论是否爱完成将会跳转至聚贤庄' 
        else
            G.call('notice1','暂不开放')
        end   
    end
    for i = 1,9 do --剧情跳转
        if tar == self.剧情.getChildByName(tostring(i)) then 
            if G.call('get_year') < 2 then 
                G.removeUI('v_secret') 
                G.call("goto_map",G.QueryName(0x10030001)[tostring(140)]-0x10060000)
                if i == 1 then
                    G.trig_event('初入武当')
                elseif i == 2 then  
                    G.trig_event('初入少林')
                elseif i == 3 then 
                    G.trig_event('初入华山')
                elseif i == 4 then 
                    G.trig_event('初入全真')
                elseif i == 5 then 
                    G.trig_event('初入古墓')
                elseif i == 6 then 
                    G.trig_event('初入血刀门')
                elseif i == 7 then 
                    G.trig_event('初入桃花岛')
                elseif i == 8 then 
                    G.trig_event('初入丐帮')
                elseif i == 9 then 
                    G.trig_event('初入星宿')
                end  
            else
                G.call('notice1','已经出师无法跳转')
            end
        end       
    end 
    for i = 1,35 do 
        if tar == self.主角属性.getChildByName(tostring(i)) then 
            G.misc().序号 = i
            self.obj.getChildByName('secret').visible = true
            if i > 31 then 
                self.obj.getChildByName('secret').getChildByName('说明').text = '说明：输入被动技能代码，代码为(1~21)数字，输入完成按确定'
            elseif i == 31 then 
                self.obj.getChildByName('secret').getChildByName('说明').text = '说明：输入大于0的整数按确定'
            else
                self.obj.getChildByName('secret').getChildByName('说明').text = '说明：输入增加或者减少的数字后按确定'
            end
        end 
    end 
    for i = 1,19 do 
        if tar == self.NPC属性.getChildByName(tostring(i)) then 
            local skill =G.DBTable('o_skill')
            G.misc().序号 = i
            self.obj.getChildByName('secret').visible = true
            if i < 13 then 
                self.obj.getChildByName('secret').getChildByName('说明').text = '说明：输入增加或者减少的数字后按确定'
            elseif i >= 13 and i <= 15 then 
                self.obj.getChildByName('secret').getChildByName('说明').text = '说明：输入技能代码，数字为(1~'..#skill..')，输入完成按确定' 
            elseif i > 15 then 
                self.obj.getChildByName('secret').getChildByName('说明').text = '说明：输入被动技能代码，代码为(1~21)数字，输入完成按确定'    
            end
        end 
    end    
    for i = 1,5 do 
       if tar ==  self.时间.getChildByName(tostring(i)) then 
            G.misc().序号 = i
            self.obj.getChildByName('secret').visible = true
            if i == 1 then 
                self.obj.getChildByName('secret').getChildByName('说明').text = '说明：请输入年份代码后按确定'
            elseif i == 2 then 
                self.obj.getChildByName('secret').getChildByName('说明').text = '说明：输入月份代码，代码为(1~12)数字，输入完成按确定'  
            elseif i == 3 then 
                self.obj.getChildByName('secret').getChildByName('说明').text = '说明：输入日期代码，代码为(1~30)数字，输入完成按确定'  
            elseif i == 4 then 
                self.obj.getChildByName('secret').getChildByName('说明').text = '说明：输入时辰代码，代码为(1~12)数字，输入完成按确定'  
            elseif i == 5 then 
                self.obj.getChildByName('secret').getChildByName('说明').text = '说明：输入时刻代码，代码为(1~8)数字，输入完成按确定'  
            end
        end
    end
    if tar == self.obj.getChildByName('secret').getChildByName('返回') then
        self.按钮.getChildByName('物品').text = 0
        self.按钮.getChildByName('技能').text = 0
        self.obj.getChildByName('secret').visible = false
        self.obj.getChildByName('secret').getChildByName('文本').text = ''
    end      
    if tar ==  self.返回   then
        if  self.任务.visible == true then 
            self.主菜单.visible = true
            self.任务.visible = false
            self.返回.visible = false
            self.obj.getChildByName('secret').visible = true
        elseif self.NPC属性.visible == true then
            self.主菜单.visible = true
            self.NPC属性.visible = false
            self.返回.visible = false
            self.obj.getChildByName('secret').visible = true
        else
            self.主菜单.visible = true
            self.返回.visible = false
            self.剧情.visible = false
            self.主角属性.visible = false
            self.NPC属性.visible = false
            self.时间.visible = false
            self.任务.visible = false
        end
    end   
    if tar ==  self.obj.getChildByName('结束') then
        G.removeUI('v_secret') 
        G.call("goto_map",G.QueryName(0x10030001)[tostring(140)]-0x10060000)
    end  
    if tar ==  self.任务.getChildByName('接受')  then 
        local o_Gut = G.QueryName(0x10080000+G.misc().序号)
        if o_Gut.任务需求属性 == nil then 
            G.removeUI('v_secret') 
            G.trig_event('聚贤庄任务_'..o_Gut.任务名称)
        else
            if o_Gut.任务需求属性 == '声望' then 
                if G.call('get_point',14) >= o_Gut.需求属性值 then 
                    G.removeUI('v_secret') 
                    G.trig_event('聚贤庄任务_'..o_Gut.任务名称)
                else
                    G.call('notice','声望不够')
                end 
             elseif o_Gut.任务需求属性 == '医疗' then 
                if G.call('get_point',33) >= o_Gut.需求属性值 then 
                    G.removeUI('v_secret') 
                    G.trig_event('聚贤庄任务_'..o_Gut.任务名称)
                else
                    G.call('notice','医疗不够')
                end 
             end     
        end
    end   
    if tar == self.obj.getChildByName('secret').getChildByName('确定') then 
        local n = tonumber(self.obj.getChildByName('secret').getChildByName('文本').text)
        if self.obj.getChildByName('secret').getChildByName('文本').text == '' then
            n = 0
        end 
        n = math.floor(n)  
        if G.misc().作弊 == 7  then
            if  n == nil or n < 1 or n > 47 then
                G.call('notice1','请输入数字(1~47)')
            else 
                local o_Gut_任务 = G.QueryName(0x10080000+n)
                if o_Gut_任务.是否完成 == false then 
                    G.misc().序号 = n   
                    self.obj.getChildByName('secret').getChildByName('文本').text = ''
                    self.obj.getChildByName('secret').visible = false 
                    self.任务.visible = true
                    self.任务.getChildByName('内容').text = o_Gut_任务.任务注释
                    if o_Gut_任务.任务需求属性 ~= nil then 
                        self.任务.getChildByName('条件').text = o_Gut_任务.任务需求属性..tostring(o_Gut_任务.需求属性值) 
                    elseif  o_Gut_任务.任务需求属性 == nil then 
                        self.任务.getChildByName('条件').text = '无'
                    end 
                    self.任务.getChildByName('耗时').text = o_Gut_任务.需求天数..'天'
                    self.任务.getChildByName('文本').text = '任务:'..o_Gut_任务.任务名称
                    self.返回.visible = true
                    self.主菜单.visible = false
                else
                    local str = o_Gut_任务.任务名称
                    G.call('notice1','【'..str..'】已经完成，请输入其他编号')
                end  
            end
        end   
        if G.misc().作弊 == 6  then
            if  n == nil or n < 1 or (n > 40 and n ~= 252 and n ~= 179 and n ~= 391 and n ~= 248) then
                G.call('notice1','请输入数字(1~40)')
            else  
                local o_role = G.QueryName(0x10040000 + n) 
                if n == 11 or n == 21 or n == 23 then 
                    G.call('notice1','【'..o_role.姓名..'】无法参战，请输入其他序号')
                else
                    if G.call('team_full') == false then 
                        if G.call('in_team',n) == false then
                           G.call('join',n)
                        else   
                           G.call('notice1','【'..o_role.姓名..'】已在队伍，请输入其他序号')
                        end
                    else
                        G.call('notice1','队伍人数已满')
                        self.obj.getChildByName('secret').getChildByName('文本').text = ''
                        self.obj.getChildByName('secret').visible = false 
                    end    
            
                end    
            end
        end
        if G.misc().作弊 == 5  then
            if G.misc().序号 == 1 then 
                if   n == nil  then 
                    G.call('notice1','请输入大于0的数字')
                else
                    G.call('set_year',n)
                    self.obj.getChildByName('secret').getChildByName('文本').text = ''
                    self.obj.getChildByName('secret').visible = false 
                end
            elseif G.misc().序号 == 2 then
                if  n == nil or n < 0  or n > 12 then 
                    G.call('notice1','请输入不大于12的自然数')
                else
                    G.call('set_month',n)
                    self.obj.getChildByName('secret').getChildByName('文本').text = ''
                    self.obj.getChildByName('secret').visible = false 
                end
            elseif G.misc().序号 == 3 then
                if  n == nil or n < 0  or n > 30 then 
                    G.call('notice1','请输入不大于30的自然数')
                else
                    G.call('set_day',n)
                    self.obj.getChildByName('secret').getChildByName('文本').text = ''
                    self.obj.getChildByName('secret').visible = false 
                end
            elseif G.misc().序号 == 4 then
                if  n == nil or n < 0  or n > 12 then 
                    G.call('notice1','请输入不大于12的自然数')
                else
                    G.call('set_hour',n)
                    self.obj.getChildByName('secret').getChildByName('文本').text = ''
                    self.obj.getChildByName('secret').visible = false 
                end
            elseif G.misc().序号 == 5 then
                if n < 0  or n == nil  or n > 8 then 
                    G.call('notice1','请输入不大于8的自然数')
                else
                    G.call('set_time',n)
                    self.obj.getChildByName('secret').getChildByName('文本').text = ''
                    self.obj.getChildByName('secret').visible = false 
                end
            end
        end
        if G.misc().作弊 == 4  then
            if tonumber(self.按钮.getChildByName('技能').text) == 0 then
                local skill =G.DBTable('o_skill')
                if  n == nil or n < 0  or n > #skill then 
                    G.call('notice1','请输入（1~'..#skill..'）的整数数字')
                else
                    G.misc().技能代码 = n + 1
                    local str = G.QueryName(0x10050000+n).名称
                    self.按钮.getChildByName('技能').text = 1
                    self.obj.getChildByName('secret').getChildByName('文本').text = ''
                    self.obj.getChildByName('secret').getChildByName('说明').text = '说明：输入需要增加的【'..str..'】技能熟练度'
                end    
            else
                if n <= 0 or n == nil then
                    G.call('notice1','请输入大于0的整数数字')
                else
                    G.call('learnmagic',G.misc().技能代码)
                    G.call('add_magicexp',G.misc().技能代码,n )
                    self.obj.getChildByName('secret').getChildByName('文本').text = ''
                    self.obj.getChildByName('secret').visible = false 
                    self.按钮.getChildByName('技能').text = 0
                end
            end
        end    
        if G.misc().作弊 == 3  then
            if tonumber(self.按钮.getChildByName('物品').text) == 0 then
                local item =G.DBTable('o_item')
                if n < 0  or n == nil  or n > #item then 
                    G.call('notice1','请输入（1~'..#item..'）的整数数字')
                else
                    G.misc().物品代码 = n + 1
                    local str = G.QueryName(0x100b0000+n).名称
                    self.按钮.getChildByName('物品').text = 1
                    self.obj.getChildByName('secret').getChildByName('文本').text = ''
                    self.obj.getChildByName('secret').getChildByName('说明').text = '说明：输入需要增加的【'..str..'】数量'
                end
            else
                if n == 0 or n == nil then
                    G.call('notice1','请输入不等于0的整数数字')
                else
                    G.call('add_item',G.misc().物品代码,n)
                    self.obj.getChildByName('secret').getChildByName('文本').text = ''
                    self.obj.getChildByName('secret').visible = false 
                    self.按钮.getChildByName('物品').text = 0
                end    
            end 
        end
        if  G.misc().作弊 == 2    then 
            if self.NPC属性.visible == false then 
                if n == nil or n < 0  or n > 223 then 
                    G.call('notice1','请输入（1~223）的整数数字')
                else
                    G.misc().人物代码 = n 
                    self.主菜单.visible = false
                    self.返回.visible = true
                    self.NPC属性.visible = true 
                    self.obj.getChildByName('secret').getChildByName('文本').text = ''
                    self.obj.getChildByName('secret').visible = false 
                    local str = G.QueryName(0x10040000+n).姓名
                    self.NPC属性.getChildByName('文本').text = '请选择修改【'..str..'】的属性'
                end
            else  
                if G.misc().序号 < 13 then
                    if n == nil    then 
                        G.call('notice1','请输入不等于0的整数数字')
                    else
                        G.call('add_role',G.misc().人物代码,G.misc().序号,n)
                        self.obj.getChildByName('secret').getChildByName('文本').text = ''
                        self.obj.getChildByName('secret').visible = false 
                    end
                elseif G.misc().序号 >= 13 and G.misc().序号 < 16 then
                    local skill =G.DBTable('o_skill')
                    if   n == nil or n < 0  or n > #skill then 
                        G.call('notice1','请输入（1~'..#skill..'）的整数数字')
                    else
                        G.call('set_roleskill',G.misc().人物代码,G.misc().序号-12,n+1)
                        self.obj.getChildByName('secret').getChildByName('文本').text = ''
                        self.obj.getChildByName('secret').visible = false 
                    end
                elseif G.misc().序号 >= 16 then    
                    if  n == nil or n < 0  or n > 21 then 
                        G.call('notice1','请输入1~21整数数字') 
                    else 
                        G.QueryName(0x10040000+G.misc().人物代码)[tostring(G.misc().序号-15+110)] = n   
                        self.obj.getChildByName('secret').getChildByName('文本').text = ''
                        self.obj.getChildByName('secret').visible = false 
                    end  
                end
            end
        end    
        if G.misc().作弊 == 1 then 
            if G.misc().序号 < 31 then
                if  n == nil   then 
                    G.call('notice1','请输入不等于0的整数数字')
                else
                    if G.misc().序号 == 1 then 
                        G.call('add_point',3,n)
                    elseif  G.misc().序号 == 2 then 
                        if n >= 200 then
                            n = 200 
                        end 
                        G.call('add_point',5,n)  
                    elseif  G.misc().序号 == 3 then 
                        if G.call('get_point',8) > 0 then  
                            G.call('add_point',107,n)
                        else
                            G.call('notice1','尚未加入任何门派')
                        end
                    elseif  G.misc().序号 == 4 then  
                        G.call('add_point',15,n)
                    elseif  G.misc().序号 == 5 then  
                        G.call('add_point',14,n)
                    elseif  G.misc().序号 >= 5 and G.misc().序号 <= 27 then 
                        G.call('add_point',G.misc().序号+10,n)
                    elseif  G.misc().序号 == 28 then  
                        G.call('add_point',45,n)
                    elseif  G.misc().序号 == 29 then  
                        G.call('add_point',47,n)
                    elseif  G.misc().序号 == 30 then  
                        G.call('add_money',n)
                    end
                    self.obj.getChildByName('secret').getChildByName('文本').text = ''
                    self.obj.getChildByName('secret').visible = false 
                end
            elseif G.misc().序号 == 31 then
                if G.call('get_point',41) == 0 then 
                    G.call('notice1','自宫成功') 
                    G.QueryName(0x10030001)[tostring(41)] = 1
                else
                    G.call('notice1','又可以娶媳妇了') 
                    G.QueryName(0x10030001)[tostring(41)] = 0
                end
                self.obj.getChildByName('secret').getChildByName('文本').text = ''
                self.obj.getChildByName('secret').visible = false 
            elseif  G.misc().序号 > 31 then 
                if  n == nil or n <= 0  or n > 21 then 
                    G.call('notice1','请输入(1~21)整数数字') 
                else 
                    G.QueryName(0x10030001)[tostring(G.misc().序号-31+110)] = n   
                    self.obj.getChildByName('secret').getChildByName('文本').text = ''
                    self.obj.getChildByName('secret').visible = false 
                end   
            end    
        end   
    end    
end




return t