--[[0

]]
local G = require "gf"
local t = G.api

--type=对话系统
--hide=false
--private=false
--ret=o_dialogue_system_action
t['对话系统_图片震动'] = function(int_振幅,number_持续时间)
    -->G.log("逻辑在 .\\script\\05_anim\\a_dialogue_system.lua 中")
end

--type=对话系统
--hide=true
--private=false
--ret=o_dialogue_system_action
t['对话系统_图片移动'] = function(o_vector_起始位置,o_vector_结束位置,number_持续时间)

end
--type=对话系统
--hide=true
--private=false
--ret=o_dialogue_system_action
t['对话系统_图片透明度变化'] = function(percent_起始透明度,percent_结束透明度,number_持续时间)

end
--type=对话系统
--hide=true
--private=false
--ret=o_dialogue_system_action
t['对话系统_图片颜色变化'] = function(color_起始颜色,color_结束颜色,number_持续时间)

end
--type=对话系统
--hide=true
--private=false
--ret=o_dialogue_system_action
t['对话系统_图片X轴压缩'] = function(number_起始比例,number_结束比例,number_持续时间)

end
--type=对话系统
--hide=true
--private=false
--text=<03>【显示对话】[var:1]："[var:3]"，[var:4]
t['对话系统_显示对话上'] = function(string_名字,int_编号,string_对话,int_位置)
    G.log("通过该接口显示对话")
    G.call('对话系统_显示对话上ui',string_名字,int_编号,string_对话,int_位置)
    G.wait1('对话1结束')
end
t['对话系统_显示对话下'] = function(string_名字,int_编号,string_对话,int_位置)
    G.log("通过该接口显示对话")
    G.call('对话系统_显示对话下ui',string_名字,int_编号,string_对话,int_位置)
    G.wait1('对话2结束')

end
t['对话系统_显示对话大'] = function(string_名字,int_编号,string_对话,int_位置)
    G.log("通过该接口显示对话")
    G.call('对话系统_显示对话大ui',string_名字,int_编号,string_对话,int_位置)
    G.wait1('对话3结束')

end
--type=对话系统
--hide=true
--private=false
--ret=int
--text=<03>【显示对话】[var:1]："[var:3]" [var:4]，[var:5]
t['对话系统_显示对话选择上'] = function(string_名字,int_编号,string_对话,int_对话位置,int_选择位置,_string_选项)
    G.log("通过该接口显示选择并返回选项 id")
    G.call('对话系统_显示对话上ui',string_名字, int_编号,string_对话,int_对话位置)
    G.call('对话系统_显示选择上ui',int_选择位置,_string_选项)
    G.wait1('选择1结束')
    return G.event_info()
end
t['对话系统_显示对话选择下'] = function(string_名字,int_编号,string_对话,int_对话位置,int_选择位置,_string_选项)
    G.log("通过该接口显示选择并返回选项 id")
    G.call('对话系统_显示对话大ui', string_名字,int_编号,string_对话,int_对话位置)
    G.call('对话系统_显示选择下ui',int_选择位置,_string_选项)
    G.wait1('选择2结束')
    return G.event_info()
end