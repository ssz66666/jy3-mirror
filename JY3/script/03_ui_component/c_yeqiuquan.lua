--[[3033

]]

local G = require "gf"
local t = G.com()
function t:init()
    self.体力一 = 100.0
    self.体力二 = 100.0
    self.怒气一 = 0.0
    self.怒气二 = 0.0
end
function t:start()
    local 显示 = {'标签一','标签二','体力一','体力二','怒气一','怒气二'}
    for i = 1,#显示 do 
        self.obj.getChildByName(显示[i]).shadowX = 1
        self.obj.getChildByName(显示[i]).shadowY = 0
        self.obj.getChildByName(显示[i]).shadowAlpha = 180
    end
    self:刷新显示()
end
function t:刷新显示()
    self.obj.getChildByName('体力一').text = math.floor(self.体力一)
    self.obj.getChildByName('体力二').text = math.floor(self.体力二)
    self.obj.getChildByName('怒气一').text = math.floor(self.怒气一)
    self.obj.getChildByName('怒气二').text = math.floor(self.怒气二)
end
return t