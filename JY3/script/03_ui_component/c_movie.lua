--[[301a

]]

local G = require "gf"
local t = G.com()
function t:init()
    self.movie = self.obj.getChildByName('movie')
    self.time = self.obj.getChildByName('time')
end
function t:start()
   -- local time = tonumber(self.time.text)

    

end
return t