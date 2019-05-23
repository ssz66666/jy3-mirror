--[[3150
,
]]
local G = require('gf')
local t = {}

function t.login(msg)
    local c_login = G.getUI('v_login').c_login
    c_login:login(msg)
end 

function t.chat(msg)
    local c_chat_box = G.getUI('v_chat_box').c_chat_box
    c_chat_box:chat(msg)
end
return t