--[[4002

]]
local G = require "gf"
local L = {}
local t = G.api
t['地图系统_初始化地图系统'] = function()
    local o_citymap_system_city_城市
    local o_citymap_system_eventinfo_事件信息
    local o_citymap_system_map_地图
    while true do
		G.wait1("点击城市事件")
        o_citymap_system_city_城市,o_citymap_system_eventinfo_事件信息 = G.event_info()

        if o_citymap_system_city_城市 and o_citymap_system_eventinfo_事件信息.是否进入 then
            if o_citymap_system_city_城市.关联地图 and not o_citymap_system_city_城市.锁定 then
                o_citymap_system_map_地图 = G.QueryName(o_citymap_system_city_城市.关联地图)
                if o_citymap_system_map_地图 then
                    G.call('地图系统_进入地图', o_citymap_system_map_地图)
                end
            end
        end
    end
end

--type=地图系统
--private=true
--hide=true
t['地图系统_进入地图'] = function(o_citymap_system_map_地图)
    G.trig_event('进入地图事件', o_citymap_system_map_地图)
    G.misc().当前地图 = o_citymap_system_map_地图.name
    G.misc().music = 0
    G.call('地图系统_进入地图UI', o_citymap_system_map_地图)
    G.call('地图事件_逻辑处理')
    local int_music = G.QueryName(G.QueryName(0x10030001)[tostring(140)]).音乐
    local music
    G.Stop(1)
    if int_music ~= nil then 
        if int_music > 0 and int_music < 98 then 
            music = 0x49010000 + int_music
        elseif int_music == 0 then 
            music = 0x49010000 + math.random(22,24)
        elseif int_music == 98 then 
            music = 0x49010000 + math.random(25,30) 
        elseif int_music == 99 then 
            music = 0x49010000 + math.random(17,21)    
        end 
        G.Play(music, 1,true,1)
        local ui ;
        if not G.getUI('v_citymap_system_map') then 
            return
        end 
        ui = G.getUI('v_citymap_system_map');
        local c = ui.c_citymap_system_map;
        ui.getChildByName('no').text = int_music
        G.misc().music = int_music
    end        
end
--type=地图系统
--private=true
--hide=true
t['地图系统_刷新地图'] = function(o_citymap_system_map_地图)
    G.trig_event('进入地图事件', o_citymap_system_map_地图)
    G.misc().当前地图 = o_citymap_system_map_地图.name
    G.misc().music = 0
    G.call('地图系统_进入地图UI', o_citymap_system_map_地图)
    --G.call('地图事件_逻辑处理')
    local int_music = G.QueryName(G.QueryName(0x10030001)[tostring(140)]).音乐
    local music
    G.Stop(1)
    if int_music ~= nil then 
        if int_music > 0 and int_music < 98 then 
            music = 0x49010000 + int_music
        elseif int_music == 0 then 
            music = 0x49010000 + math.random(22,24)
        elseif int_music == 98 then 
            music = 0x49010000 + math.random(25,30) 
        elseif int_music == 99 then 
            music = 0x49010000 + math.random(17,21)    
        end 
        G.Play(music, 1,true,1)
        local ui ;
        if not G.getUI('v_citymap_system_map') then 
            return
        end 
        ui = G.getUI('v_citymap_system_map');
        local c = ui.c_citymap_system_map;
        ui.getChildByName('no').text = int_music
        G.misc().music = int_music
    end        
end
--type=地图系统
--private=true
--hide=true
t['地图_进入地图'] = function(string_地图名称,int_map,int_music,int_地图)
    local ui ;
    if not G.getUI('v_citymap_system_map') then 
        return
    end 
    ui = G.getUI('v_citymap_system_map');
    local c = ui.c_citymap_system_map;
    G.trig_event('进入地图事件', G.QueryName(0x10060030))
    G.misc().当前地图 = G.QueryName(0x10060030).name
    G.misc().music = 0
    if  not int_地图 then
        int_地图 = 0
    end
    G.call('地图_进入地图UI', string_地图名称,int_map,int_地图)
    G.call('mapon')
    G.Stop(1)
    G.Play(0x49010000 + int_music, 1,true,1)
    ui.getChildByName('no').text = int_music
    G.misc().music = int_music       
end
--type=地图系统
--private=true
--hide=true
t['地图系统_离开地图'] = function()
    if G.misc().当前地图 then
        
        G.trig_event('离开地图事件', G.QueryName(G.misc().当前地图))
        G.misc().当前地图 = nil
    else
        G.trig_event('离开地图事件', nil)
    end
    G.call('地图系统_离开地图UI')
   
end