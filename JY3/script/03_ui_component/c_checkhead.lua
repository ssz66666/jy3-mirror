--[[3004

]]

local G = require "gf"
local t = G.com()





function t:init()
    self.按钮 = self.obj.getChildByName('按钮')
    
    self.名称 = self.obj.getChildByName('名称')
end

function t:setData(name)
    self.名称.text = name.名称
    self.按钮.c_button.img_normal = name.图标
   

    self.name = name


end

function t:click(tar)

    G.call(self.名称.text)
 
end

return t