--[[3001

]]

local G = require "gf"
local t = G.com()

function t:init()
    self.背景 = self.obj.getChildByName('背景')
    self.当前进度 = self.obj.getChildByName('当前进度')
    self.进度说明 = self.obj.getChildByName('进度说明')
    self.项目选择界面 = self.obj.getChildByName('项目选择')
    self.项目按钮 = {}
    self.项目按钮[1] = self.项目选择界面.getChildByName('项目按钮').getChildByName('项目')
    self.项目选择界面.visible = false
end

function t:setData(percent, curr_size, tips, chk_percent)
    local size_gb
    local size_mb
    local size_kb
    local str
    if not (percent and curr_size) then
        if tips then
            self.进度说明.text = tostring(tips)
        end
        return
    end
    self.当前进度.visible = true
    if chk_percent > 0 then
        percent = chk_percent
    end
    self.当前进度.text = tostring(percent)..' %'
    curr_size = tonumber(curr_size)
    if curr_size >= 1024 * 1024 then
        size_gb = math.floor(curr_size / (1024 * 1024))
        curr_size = math.floor(curr_size % (1024 * 1024))
        size_mb = math.floor(curr_size / 1024)
        size_kb = math.floor(curr_size % 1024)
    elseif curr_size >= 1024 then
        size_mb = math.floor(curr_size / 1024)
        size_kb = math.floor(curr_size % 1024)
    else
        size_kb = curr_size
    end
    if chk_percent > 0 then
        str = '正在校验本地文件'
    else
        str = '已下载 '
        if size_gb then
            str = str..tostring(size_gb)..' GB '
        end
        if size_mb then
            str = str..tostring(size_mb)..' MB '
        end
        if size_kb then
            str = str..tostring(size_kb)..' KB '
        end
    end
    self.进度说明.text = str
end

return t