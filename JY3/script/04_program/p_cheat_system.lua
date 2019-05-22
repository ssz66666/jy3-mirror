--[[4001

]]
local G = require "gf"
local t = G.api

--type=作弊系统
--private=true
--hide=true
t['作弊系统_初始化作弊系统'] = function()
    local string_指令 = nil
    G.call('作弊系统_初始化作弊系统ui')
    if not G.misc().作弊指令列表 then
        G.misc().作弊指令列表 = {}
    end
    while true do
        G.wait1('作弊指令')
        string_指令 = G.event_info()
        G.start_program("作弊系统_处理作弊指令", string_指令)
    end
end

--type=作弊系统
--private=true
--hide=true
t['作弊系统_处理作弊指令'] = function(string_作弊指令)
    local _string_作弊指令列表
    local boolean_是否存在
    local _any_参数列表
    local string_函数名称
    boolean_是否存在 = false
    if string_作弊指令 == nil or string_作弊指令 == "" then
        return
    end
    _string_作弊指令列表 = G.misc().作弊指令列表
    for i = 1, #_string_作弊指令列表 do
        if _string_作弊指令列表[i] == string_作弊指令 then
            boolean_是否存在 = true
            break
        end
    end
    if not boolean_是否存在 then
        table.insert(_string_作弊指令列表, string_作弊指令)
        G.call('作弊系统_更新作弊指令列表UI', _string_作弊指令列表)
    end
    _any_参数列表 = G.split(string_作弊指令,' ')
    string_函数名称 = _any_参数列表[1]
    for int_i = 2, #_any_参数列表 do
        if tonumber(_any_参数列表[int_i]) then
            if tonumber(_any_参数列表[int_i]) <= 4294967295 then
                if G.QueryName(tonumber(_any_参数列表[int_i])) then
                    _any_参数列表[int_i] = G.QueryName(tonumber(_any_参数列表[int_i]))
                else
                    _any_参数列表[int_i] = tonumber(_any_参数列表[int_i])
                end
            else
                _any_参数列表[int_i] = tonumber(_any_参数列表[int_i])
            end
        elseif string.find(_any_参数列表[int_i], 'function') then
            _any_参数列表[int_i] = load(_any_参数列表[int_i])
            _any_参数列表[int_i]()
        elseif _any_参数列表[int_i] == "true" then
            _any_参数列表[int_i] = true
        elseif _any_参数列表[int_i] == "false" then
            _any_参数列表[int_i] = false
        end
    end
    table.remove(_any_参数列表,1)

    G.call('作弊系统_执行作弊', string_函数名称, _any_参数列表)
end

--type=作弊系统
--private=true
--hide=true
t['作弊系统_执行作弊'] = function(string_函数名, table_参数列表)
    G.call(string_函数名, table.unpack(table_参数列表))
end