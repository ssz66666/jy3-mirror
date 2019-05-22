--[[5002

]]

local G = require "gf"
local t = G.act

--hide=true
--private=false
t['对话系统_图片震动'] = function(o_node_主体,int_振幅, number_持续时间,number_延迟)
    number_延迟 = number_延迟 or 0
    G.shake(o_node_主体, int_振幅, number_持续时间 * 1000)
    G.wait_time((number_延迟+number_持续时间)*1000)
end

--hide=true
--private=false
t['对话系统_图片移动'] = function(o_node_主体,o_vector_起始位置,o_vector_结束位置,number_持续时间,number_延迟)
    number_延迟 = number_延迟 or 0
    o_node_主体.x = o_vector_起始位置.x - 309
    o_node_主体.y = o_vector_起始位置.y
    G.Tween("x",number_持续时间 * 1000,o_node_主体,o_vector_结束位置.x - 309)
    G.Tween("y",number_持续时间 * 1000,o_node_主体,o_vector_结束位置.y)
    G.wait_time((number_延迟+number_持续时间)*1000)
end

--hide=true
--private=false
t['对话系统_图片透明度变化'] = function(o_node_主体,percent_起始透明度,percent_结束透明度,number_持续时间,number_延迟)
    number_延迟 = number_延迟 or 0
    o_node_主体.alpha = (1 - percent_起始透明度) * 255
    G.Tween("alpha",number_持续时间 * 1000,o_node_主体, (1 - percent_结束透明度) * 255)
    G.wait_time((number_延迟+number_持续时间)*1000)
end

--hide=true
--private=false
t['对话系统_图片颜色变化'] = function(o_node_主体,color_起始颜色,color_结束颜色,number_持续时间,number_延迟)
    number_延迟 = number_延迟 or 0
    o_node_主体.color = color_起始颜色
    G.Tween("color",number_持续时间 * 1000,o_node_主体, color_结束颜色)
    G.wait_time((number_延迟+number_持续时间)*1000)
end

--hide=true
--private=false
t['对话系统_图片X轴压缩'] = function(o_node_主体,number_起始比例,number_结束比例,number_持续时间,number_延迟)
    number_延迟 = number_延迟 or 0
    o_node_主体.scaleX = number_起始比例
    G.Tween("scaleX",number_持续时间 * 1000,o_node_主体, number_结束比例)
    G.wait_time((number_延迟+number_持续时间)*1000)
end