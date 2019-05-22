local G = require "gf"
local noti = G.notify

function noti.作弊系统_更新作弊指令列表UI(_string_cmd)
    local ui_obj
    ui_obj = G.getUI('v_cheat_system')
    if not ui_obj then
        return
    end
    ui_obj.c_cheat_system:更新作弊指令历史ui(_string_cmd)
end

function noti.作弊系统_初始化作弊系统ui()
    local ui_obj
    ui_obj = G.getUI('v_cheat_system')
    if not ui_obj then
        ui_obj = G.addUI('v_cheat_system')
    end
    if ui_obj.c_cheat_system then
        ui_obj.c_cheat_system:隐藏作弊界面()
    end
end
