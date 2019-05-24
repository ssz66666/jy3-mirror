--[[3031

]]

local G = require "gf"
local t = G.com()
function t:init()
    self.按钮 = self.obj.getChildByName('按钮')
    self.显示 = self.obj.getChildByName('显示')
    self.标本 = self.显示.getChildByName('标本')
    self.list = {}
    self.页数 = 1
    self.总页数 = 1
    self.当前序号 = 1
    self.显示数量 = 10
    self.总价 = 0 
end
function t:start()
    local o_store = G.QueryName(0x101d0001)
    for i = 1,#o_store.物品 do
        o_store.物品[i].数量 = 0
    end
    for y = 1, 10, 1 do
        local ui_sub = G.Clone(self.标本)
        ui_sub.y = 10 + (y - 1) * -30
        self.显示.addChild(ui_sub)
        ui_sub.visible = false
        self.list[y] = ui_sub
    end
    self:刷新显示(1,1)
end
function t:刷新显示()
    local o_store = G.QueryName(0x101d0001)
    self.总页数 = math.floor((#o_store.物品-1)/10) + 1
    if self.页数 == self.总页数 then
        self.显示数量 = #o_store.物品 - (self.页数 - 1)*10
    else
        self.显示数量 = 10
    end
    local int_讲价 = G.call('get_point',36)/4
    if G.call('通用_取得我方装备特效',411) then 
        int_讲价 = int_讲价 + 25
    end
    for i = 1,10 do
        self.list[i].visible = false
    end
    for i = 1,self.显示数量 do
        self.list[i].visible = true
        local int_id = (self.页数 - 1)*10 + i
        local i_item = o_store.物品[int_id].物品
        local o_item = G.QueryName(i_item)
        local int_item = i_item - 0x100b0000 + 1
        local int_价格 = o_store.物品[int_id].价格
        int_价格 = math.floor(int_价格 *(100-int_讲价)/100)
        self.list[i].getChildByName('名称').text = o_item.名称
        self.list[i].getChildByName('单价').text = int_价格
        self.list[i].getChildByName('买入').text = o_store.物品[int_id].数量
        self.list[i].getChildByName('持有').text = G.call('get_item',int_item)
        self.list[i].getChildByName('价钱').text = int_价格 * o_store.物品[int_id].数量
        if self.当前序号 == i  then 
            self.显示.getChildByName('物品').getChildByName('物品图片').getChildByName('图片').img = o_item.图标
            self.显示.getChildByName('物品').getChildByName('说明').text = o_item.说明
            self.list[i].getChildByName('名称').style = 5 
        else
            self.list[i].getChildByName('名称').style = 1
        end
    end 
    self.显示.getChildByName('银两').text = G.call('get_point',110)
    local int_总价 = 0
    for i = 1,#o_store.物品 do 
        if o_store.物品[i].数量 > 0 then 
            local int_价格 = o_store.物品[i].价格
            int_价格 = math.floor(int_价格 *(100-int_讲价)/100)
            int_总价 = int_总价 + int_价格* o_store.物品[i].数量
        end
    end
    self.显示.getChildByName('总价').text = int_总价
    self.总价 = int_总价
    self.显示.getChildByName('页数').text = self.页数
end
function t:click(tar)
    local o_store = G.QueryName(0x101d0001)
    local int_讲价 = G.call('get_point',36)/4
    if G.call('通用_取得我方装备特效',411) then 
        int_讲价 = int_讲价 + 25
    end
    self.总页数 = math.floor((#o_store.物品-1)/10) + 1
    if tar == self.按钮.getChildByName('上') then
        self.页数 = self.页数 - 1
        self.当前序号 = 1
    elseif tar == self.按钮.getChildByName('下') then 
        self.当前序号 = 1
        self.页数 = self.页数 + 1
    end
    self.页数 = cc.limitX(self.页数, 1, self.总页数)
    if self.页数 == self.总页数 then
        self.显示数量 = #o_store.物品 - (self.页数 - 1)*10
    else
        self.显示数量 = 10
    end
    for i = 1,self.显示数量 do
        local int_id = (self.页数 - 1)*10 + i
        local i_item = o_store.物品[int_id].物品
        local o_item = G.QueryName(i_item)
        local int_item = i_item - 0x100b0000 + 1
        local int_价格 = o_store.物品[int_id].价格
        int_价格 = math.floor(int_价格 *(100-int_讲价)/100)
        if tar == self.list[i].getChildByName('减') then
            self.当前序号 = i
            o_store.物品[int_id].数量 = o_store.物品[int_id].数量 - 1
        elseif tar ==  self.list[i].getChildByName('加') then
            self.当前序号 = i
            o_store.物品[int_id].数量 = o_store.物品[int_id].数量 + 1
        end
        o_store.物品[int_id].数量 = cc.limitX(o_store.物品[int_id].数量, 0, 999)
    end
    if tar == self.按钮.getChildByName('结算') then
        G.trig_event('神秘结算')
    end
    self:刷新显示(self.页数,self.当前序号)
    if tar == self.按钮.getChildByName('离开') then
        G.removeUI('v_mystery_store')
        G.trig_event('神秘结束')
    end
end
return t