local G = require "gf"
local noti = G.notify

function noti.对话系统_显示对话上ui(string_名字,int_编号,string_对话,int_位置)
    local ui_story
    ui_story = G.getUI('v_dialogue_system_story')
    if not ui_story then
        ui_story = G.addUI('v_dialogue_system_story')
    end
    ui_story.visible = true
    if ui_story.c_dialogue_system_story then
        ui_story.c_dialogue_system_story:setData(string_名字,int_编号,string_对话,int_位置)
    end
end
function noti.对话系统_显示对话大ui(string_名字,int_编号,string_对话,int_位置)
    local ui_story
    ui_story = G.getUI('v_dialogue_system_story3')
    if not ui_story then
        ui_story = G.addUI('v_dialogue_system_story3')
    end
    ui_story.visible = true
    if ui_story.c_dialogue_system_story3 then
        ui_story.c_dialogue_system_story3:setData(string_名字,int_编号,string_对话,int_位置)
    end
end
function noti.对话系统_显示对话下ui(string_名字,int_编号,string_对话,int_位置)
    local ui_story
    ui_story = G.getUI('v_dialogue_system_story1')
    if not ui_story then
        ui_story = G.addUI('v_dialogue_system_story1')
    end
    ui_story.visible = true
    if ui_story.c_dialogue_system_story1 then
        ui_story.c_dialogue_system_story1:setData(string_名字,int_编号,string_对话,int_位置)
    end
end


function noti.对话系统_显示选择上ui(int_位置,_string_选项)
    local ui_select
    ui_select = G.getUI('v_dialogue_system_select')
    if not ui_select then
        ui_select = G.addUI('v_dialogue_system_select')
    end
    ui_select.visible = true
    if ui_select.c_dialogue_system_select then
        ui_select.c_dialogue_system_select:setData(int_位置,_string_选项)
    end
end
function noti.对话系统_显示选择下ui(int_位置,_string_选项)
    local ui_select
    ui_select = G.getUI('v_dialogue_system_select1')
    if not ui_select then
        ui_select = G.addUI('v_dialogue_system_select1')
    end
    ui_select.visible = true
    if ui_select.c_dialogue_system_select1 then
        ui_select.c_dialogue_system_select1:setData(int_位置,_string_选项)
    end
end

function noti.对话2结束end()
    local ui_story
    ui_story = G.getUI('v_dialogue_system_story1')
    if ui_story then
        ui_story.visible = true 
    end

end
function noti.对话3结束end()
    local ui_story
    ui_story = G.getUI('v_dialogue_system_story3')
    if ui_story then
        ui_story.visible = true 
    end

end

function noti.建立角色结束end()
    local ui
    ui= G.getUI('v_addpoint')
    if ui then
        G.removeUI('v_addpoint')    
    end

end
function noti.对话1结束end()
    local ui_story
    ui_story = G.getUI('v_dialogue_system_story')
    if ui_story then
        ui_story.visible = true
        
    end

end

function noti.选择1结束end()
    local ui_select
    ui_select = G.getUI('v_dialogue_system_select')
    if ui_select then
        ui_select.visible = true
    end
    noti.对话1结束end()
end


function noti.选择2结束end()
    local ui_select
    ui_select = G.getUI('v_dialogue_system_select1')
    if ui_select then
        ui_select.visible = true
    end
    noti.对话3结束end()
end