local G = require "gf"
local noti = G.notify

function noti.地图系统_进入地图UI(o_citymap_system_map_地图)
    local ui_obj

    if not o_citymap_system_map_地图 then
        return
    end
    G.addUI('v_citymap_system_map')
    ui_obj = G.getUI('v_citymap_system_map')
    
    if not ui_obj then
        return
    end
    G.QueryName(0x10030001)[tostring(140)] = o_citymap_system_map_地图.name
    
    if ui_obj.c_citymap_system_map then
        ui_obj.c_citymap_system_map:setData(o_citymap_system_map_地图)
    end
end
function noti.地图_进入地图UI(string_地图名称,int_map,int_地图)
    local ui_obj
    G.addUI('v_citymap_system_map')
    ui_obj = G.getUI('v_citymap_system_map')
    local c = ui_obj.c_citymap_system_map;
    if not ui_obj then
        return
    end
    if ui_obj.c_citymap_system_map then
        ui_obj.c_citymap_system_map:刷新地图(string_地图名称,int_map,int_地图)
    end
end

function noti.地图系统_离开地图UI()
    
    G.removeUI('v_citymap_system_map')
end


--[[getUI('ui_name')
if not exist:
    addUI


getUI-> get control
ui
control

local self = G.getUI('v_citymap_system_map').c_citymap_system_map]]