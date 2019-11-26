--[[3035

]]

local G = require "gf"
local t = G.com()
function t:init()
    self.页面 = self.obj.getChildByName('页面').getChildByName('content')
end
function t:start()
    self.obj.getChildByName('背景').getChildByName('标题').shadowX = 1
    self.obj.getChildByName('背景').getChildByName('标题').shadowAlpha = 180
    self.页面.getChildByName('内容').shadowX = 1
    self.页面.getChildByName('内容').shadowAlpha = 180
    self.页面.getChildByName('更新说明').shadowX = 1
    self.页面.getChildByName('更新说明').shadowAlpha = 180
    self.页面.getChildByName('更新标题').shadowX = 1
    self.页面.getChildByName('更新标题').shadowAlpha = 180
end
function t:click(tar)
    if tar == self.obj.getChildByName('关闭') then
        G.removeUI('v_bulletin') 
    end
end
return t