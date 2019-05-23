require 'strict'
require 'require_a_n'
local G = require "gf"
local t = G.api

-- 主入口
t.init = function()
    G.call('loader_init')
end

-- 游戏主入口,进入init函数
G.start_program('init')