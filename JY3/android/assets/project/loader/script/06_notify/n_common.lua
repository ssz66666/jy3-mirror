local G = require "gf"
local noti = G.notify

function noti.loader_init()
    G.addUI('v_loader')
end

function noti.update_process_ui(percent, curr_size, tips, chk_percent)
    local ui_obj
    local script
    ui_obj = G.getUI('v_loader')
    if not ui_obj then
        return
    end
    script = ui_obj.c_loader
    if not script then
        return
    end
    script:setData(percent, curr_size, tips, chk_percent)
end