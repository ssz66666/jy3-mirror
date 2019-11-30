--[[4007

]]
local G = require "gf"
local L = {}
local t = G.api
t['地图事件_逻辑处理'] = function()
    local int_map = G.QueryName(0x10030001)[tostring(140)] - 0x10060000   --当前地图
    local o_map = G.QueryName(0x10030001)[tostring(140)]
    local g_map = G.QueryName(G.QueryName(0x10030001)[tostring(140)])
    local ui_map = G.getUI('v_citymap_system_map');
    local c = ui_map .c_citymap_system_map;
    --游戏结局逻辑
    local int_year = G.QueryName(0x10030001)[tostring(66)] 
    if G.call('get_year') == 1 and   G.call('get_month') == 1 and  G.call('get_day') < 7  then     --初始牛家村逻辑
        if G.call('get_day') >= 2  and G.call('get_day') <= 5 then   
            G.QueryName(0x10060002).城市列表[10].隐藏 = nil
        else
            G.QueryName(0x10060002).城市列表[10].隐藏 = 1 
        end
        if G.QueryName(0x10030001).性别 == 1 then 
            G.QueryName(0x10060002).城市列表[10].城市 = 0x1007002f
        elseif G.QueryName(0x10030001).性别 == 0 then
            G.QueryName(0x10060002).城市列表[10].城市 = 0x100700a1
        else
            G.QueryName(0x10060002).城市列表[10].隐藏 = nil
        end
        if G.call('get_hour') > 3 and G.call('get_hour') < 10  then --判断破庙乞丐丙和何红药出现事件
            G.QueryName(0x10060015).城市列表[3].隐藏 = nil
            G.QueryName(0x10060015).城市列表[2].隐藏 = nil
        else     
            G.QueryName(0x10060015).城市列表[3].隐藏 = 1
            G.QueryName(0x10060015).城市列表[2].隐藏 = 1
            if int_map == 21 then
                if G.call('get_day') == 3 and G.call('get_story',3) == 0 then 
                    G.trig_event('途径牛家村-破庙分赃')
                elseif G.call('get_day') >= 4  and G.call('get_story',5) == 0 and G.call('get_hour') >= 10 then 
                    G.trig_event('途径牛家村-木高峰行凶')      
                else
                    G.trig_event('途径牛家村-破庙无人')    
                end        
            end 
        end  
        if G.call('get_day') == 1 and  G.call('get_hour') > 6 and G.call('get_hour') < 10  then 
            if int_map == 2 and G.call('get_story',2) == 0 then 
                G.trig_event('途径牛家村-李捕头索债')
            end
        end
        if int_map == 20 and   G.call('get_story',2) == 2 and G.call('get_day') < 2  then  
            G.trig_event('途径牛家村-丘处机入全真')
        end
        if int_map == 20 and   G.call('get_story',2) == 3 and G.call('get_day') < 2  then 
            G.trig_event('途径牛家村-丘处机2')
        end
        if G.call('get_day') == 3 and G.call('get_story',4) < 4 then 
            if int_map == 2 and G.call('get_hour') > 3 and G.call('get_hour') < 10 then
                G.trig_event('途径牛家村-半瓶神仙醋')
            end
        end
        if G.call('get_day') == 4 and  G.call('get_hour') > 6 and  G.call('get_story',3) == 4 and int_map == 2 then  
            G.trig_event('途径牛家村-强盗屠村')
        end
        if G.call('get_day') == 4  and int_map == 20 and G.call('get_story',52) == 0 and (G.call('get_point',237) > 1  or G.misc().测试  ) then  
            G.trig_event('途径牛家村-水笙与血刀僧')
        end
        if G.call('get_day') >= 5 and G.QueryName(0x10030001)[tostring(8)] == 0 then 
           G.trig_event('途径牛家村-超时')
        end
    end 
    if G.call('get_school') == 4 and G.call('get_year') == 1   then     --全真事件逻辑逻辑
        if G.call('get_year') < 2 then 
            if G.call('get_month') == 3 and G.call('get_story',13) == 0  then 
                G.call('set_story',13,1) 
                G.trig_event('初入全真-三月大比较') 
            elseif G.call('get_month') == 6 and G.call('get_story',13) == 1  then 
                G.call('set_story',13,2) 
                G.trig_event('初入全真-六月大比较') 
            elseif G.call('get_month') == 9 and G.call('get_story',13) == 2  then 
                G.call('set_story',13,3) 
                G.trig_event('初入全真-九月大比较') 
            elseif G.call('get_month') == 12 and G.call('get_day') >= 14 and not G.misc().出师 then
                G.misc().出师 = 1
                G.trig_event('初入全真-出师') 
            end   
        end  
    end
    if G.call('get_school') == 5 and G.call('get_year') == 1   then   --古墓事件逻辑
        if G.call('get_month') == 12 and G.call('get_day') >= 14 and not G.misc().出师 then
            G.misc().出师 = 1
            G.trig_event('初入古墓-李莫愁来访') 
        end   

    end 
    if G.call('get_school') == 1  and G.call('get_year') == 1  then     --武当事件逻辑
        if G.call('get_month') == 12 and G.call('get_day') >= 14 and not G.misc().出师 then
            G.misc().出师 = 1
            G.trig_event('初入武当-出师') 
        end   

    end 
    if G.call('get_school') == 2  and G.call('get_year') == 1  then   --少林事件逻辑
        if  G.call('get_month') == 3 and  G.call('get_story',7) == 0 and G.call('get_story',49) == 0 then 
            G.call('set_story',7,1)  
            G.trig_event('初入少林-测试') 
        elseif  G.call('get_month') == 6 and  G.call('get_story',8) == 0 and G.call('get_story',49) == 0 then 
            G.call('set_story',8,1)  
            G.trig_event('初入少林-测试') 
        elseif  G.call('get_month') == 9 and  G.call('get_story',9) == 0 and G.call('get_story',49) == 0 then 
            G.call('set_story',9,1) 
            G.trig_event('初入少林-测试') 
        elseif  G.call('get_month') == 12 and G.call('get_day') >= 1 and int_map == 31  then
            G.trig_event('初入少林-出南少林') 
        elseif  G.call('get_month') == 12 and G.call('get_day') >= 14 and not G.misc().出师 then
            G.misc().出师 = 1
            G.trig_event('初入少林-出师')   
        end     
    end  
    if G.call('get_school') == 7  and G.call('get_year') == 1  then --血刀门事件逻辑
        if G.call('get_story',53) == 2  or G.call('get_story',53) == 4 then  --狄云是否出现
            G.QueryName(0x1006002e).城市列表[4].隐藏 = nil
        else
            G.QueryName(0x1006002e).城市列表[4].隐藏 = 1
        end  
        if  G.call('get_month') == 12 and G.call('get_day') >= 14 and not G.misc().出师 then
            G.misc().出师 = 1
            G.trig_event('初入血刀门-出师')
        end   
    end
    if G.call('get_school') == 8  and G.call('get_year') == 1  then --桃花岛事件逻辑
        if  G.call('get_month') == 12 and G.call('get_day') >= 14 and not G.misc().出师 then
            G.misc().出师 = 1
            G.trig_event('初入桃花岛-出师')
        end  
    end
    if G.call('get_school') == 10  and G.call('get_year') == 1  then --星宿派事件逻辑
        if G.call('get_month') == 3 and G.call('get_story',58) == 0  then 
            G.call('set_story',58,1) 
            G.trig_event('初入星宿-三月大比较') 
        elseif G.call('get_month') == 6 and G.call('get_story',58) == 1  then 
            G.call('set_story',58,2) 
            G.trig_event('初入星宿-六月大比较') 
        elseif G.call('get_month') == 9 and G.call('get_story',58) == 2  then 
            G.call('set_story',58,3) 
            G.trig_event('初入星宿-九月大比较') 
        elseif G.call('get_month') == 12 and G.call('get_day') >= 14 and not G.misc().出师 then 
            G.misc().出师 = 1
            G.trig_event('初入星宿-出师') 
        end  
    end
    if G.call('get_school') == 9  and G.call('get_year') == 1  then --丐帮事件逻辑
        if (G.call('get_day') == 1 or G.call('get_day') == 15) and G.call('get_month') < 12  then 
            G.QueryName(0x10060049).城市列表[1].隐藏 = nil
        else
            G.QueryName(0x10060049).城市列表[1].隐藏 = 1
            if int_map == 73  then 
                G.trig_event('初入丐帮-帮主不见')
            end
        end
        if G.call('get_month') < 12 and G.call('get_day') == 28 and G.misc().丐帮弟子 < 9 then 
            G.trig_event('初入丐帮-升袋比试')
        end  
        if G.call('get_story',57) == 0 and G.call('get_month') == 12  and G.misc().丐帮弟子 == 9  and  G.call('get_day') >= 10 and G.call('get_day') < 28 then
            G.trig_event('初入丐帮-轩辕台')
        end  
        if  G.call('get_month') == 12 and G.call('get_day') >= 14 and not G.misc().出师 then
            G.misc().出师 = 1
            G.trig_event('初入丐帮-出师')
        end  
    end
    if G.call('get_school') == 11  and G.call('get_year') == 1  then   --峨嵋事件逻辑
        if G.call('get_month') == 3 and G.call('get_day') >= 15 and G.call('get_story',61) == 0 then
            G.call('set_story',61,1) 
            G.trig_event('初入峨嵋派-三月大比较')
        elseif G.call('get_month') == 6 and G.call('get_day') >= 15 and G.call('get_story',62) == 0 then
            G.call('set_story',62,1) 
            G.trig_event('初入峨嵋派-六月大比较')
        elseif G.call('get_month') == 9 and G.call('get_day') >= 15 and G.call('get_story',63) == 0 then
            G.call('set_story',63,1) 
            G.trig_event('初入峨嵋派-九月大比较')
        end 
        if  G.call('get_month') == 12 and G.call('get_day') >= 14  and not G.misc().出师 then
            G.misc().出师 = 1
            G.trig_event('初入峨嵋派-出师')
        end  
    end
    if G.call('get_school') == 3  and G.call('get_year') == 1  then   --华山事件逻辑
        if G.call('get_month') == 3 or  G.call('get_month') == 6 or G.call('get_month') == 9 then   --令狐冲去思过崖月份
            G.QueryName(0x10060026).城市列表[7].隐藏 = 1
        else
            G.QueryName(0x10060026).城市列表[7].隐藏 = nil 
        end 
        if  G.call('get_month') == 12 and G.call('get_day') >= 14 and not G.misc().出师 then
            G.misc().出师 = 1
            G.trig_event('初入华山-出师')
        end    
    end 
    if int_map == 3 and G.call('get_story',3) == 5 then
        G.trig_event('牛家村-破败')  
    end     
    --if (_root.Js[12].m_nFavour>=75 && _root.body[52] != 12 && _root.body[53] != 12 && _root.body[54] != 12 && _root.body[55] == 0) 
    if G.call('get_love',12) >= 75 and G.call('in_team',12) == false  and G.call('get_story',50) == 0 and G.call('get_point',115) ~= 20 then --好感度>=75河边出现黄蓉
        G.QueryName(0x10060022).城市列表[3].隐藏 = 0
    else
        G.QueryName(0x10060022).城市列表[3].隐藏 = 1
    end   
    if G.call('in_team',130) == false then --穆念慈是否出现
        G.QueryName(0x10060003).城市列表[8].隐藏 = 0
    else
        G.QueryName(0x10060003).城市列表[8].隐藏 = 1
    end 
    if int_map == 3 then 
        if math.random(6) == 1 then 
            G.trig_event('牛家村-秀才') 
        end 
    end 
    if G.call('get_point',237) > 1 or  G.misc().测试 then 
        G.QueryName(0x1007006d).锁定 = false
        G.QueryName(0x1007006e).锁定 = false
    else
        G.QueryName(0x1007006d).锁定 = true
        G.QueryName(0x1007006e).锁定 = true
    end
    if g_map.关联事件 ~= nil then    --地图事件判断
        G.trig_event(G.QueryName(g_map.关联事件).名称)
    else
        if G.misc().密令 == '十年生死两茫茫' and G.call('get_year') ~= G.misc().密令年数 and G.misc().密令年数 < 16 then 
            G.trig_event('特别剧情-十年生死两茫茫') 
        end
    end 
    if not G.misc().出师 and int_map ~= 4 then 
        local str_事件 = {'初入武当-出师','初入少林-出师','初入华山-出师','初入全真-出师','初入古墓-李莫愁来访','','初入血刀门-出师','初入桃花岛-出师','初入丐帮-出师','初入星宿-出师'} 
        if G.call('get_point',8) == 0  and G.call('get_year') >= 1 and G.call('get_day') >= 5   then
            G.trig_event('途径牛家村-超时') 
        elseif G.call('get_point',8) > 0 and G.call('get_point',8) ~= 6 and G.call('get_year') > 1  and not G.misc().出师 then
            G.misc().出师 = 1
            G.trig_event(str_事件[G.call('get_point',8)]) 
        end 
    end
    if int_year > 0 then  
        if G.call('get_year') == (int_year + 1) and G.call('get_month') >= 1 and G.call('get_day') >= 1 and G.call('get_story',47) == 0  then 
            G.removeUI('v_teammate')
            G.trig_event('聚贤庄-结局')
        end    
        if G.call('get_year') == int_year   and G.call('get_month') == 12 and G.call('get_day') >= 1 and G.call('get_story',46) == 0  then 
            G.removeUI('v_teammate')
            G.call('set_story',46,1)
            G.trig_event('聚贤庄-应劫')
        end
    end 
    if G.call('get_point',14) >= 999 and int_map == 1 and G.call('get_story',47) == 0  then 
        G.removeUI('v_teammate')
        G.call('set_story',47,1)
        G.trig_event('聚贤庄-华山论剑')
    end  
   

end