--[[3038

]]

local G = require "gf"
local t = G.com()
function t:init()
    self.详细 = self.obj.getChildByName('详细')
    self.按钮 = self.obj.getChildByName('按钮')
    self.卡组 = self.obj.getChildByName('卡组')
    self.展示卡组 = {}
    self.卡组_1 = {}
    self.卡组_2 = {}
    self.卡组_3 = {}
    self.卡组_4 = {}
    self.卡组_5 = {}
    self.卡组_6 = {}
    self.卡片组 = 0
    self.当前卡片 = 0
    self.显示数量 = 0
end
function t:start()
    local o_cardhouse = G.QueryName(0x10220001)
    local int_数量 = 0
    for i = 1,#o_cardhouse.卡片 do
        local o_card = G.QueryName(o_cardhouse.卡片[i].卡片)
        if o_cardhouse.卡片[i]['hold']  then
            int_数量 = int_数量 + 1
        end
        table.insert(self['卡组_'..o_card.品级], i) 
    end
    self.obj.getChildByName('数量').text = '[05]总数：[03]'..int_数量..'[04]/'..#o_cardhouse.卡片
end
function t:刷新显示()
    local o_cardhouse = G.QueryName(0x10220001)
    if self.卡片组 <= 0 then
        self.卡组.visible = false
        self.详细.visible = false
        self.卡组.getChildByName('content').getChildByName('闪光').visible = false
        return 
    end
    local 卡片组 = self['卡组_'..self.卡片组]
    if #卡片组 <= 0 then 
        self.详细.visible = false
        self.卡组.getChildByName('content').getChildByName('闪光').visible = false
        return 
    end
    local h = math.floor(#self['卡组_'..self.卡片组]/8 + 1)
    self.卡组.getChildByName('content').height = 71*(h + 1) + (h - 1)*5
    local height = self.卡组.getChildByName('content').height/2
    self.显示数量 = #卡片组
    self.展示卡组 = {}
    for x = 1, 8, 1 do
        for y = 1, 30, 1 do
            local ui_sub = G.Clone(self.卡组.getChildByName('卡片底'))
            ui_sub.x = -250 + (x - 1) * 70 
            ui_sub.y = -60 + height + (y - 1) * -80
            self.卡组.getChildByName('content').addChild(ui_sub)
            ui_sub.visible = false
            self.展示卡组[(y - 1) * 8 + x] = ui_sub
        end
    end
    for i = 1,#self.展示卡组 do 
        self.展示卡组[i].visible = false
    end
    for i  = 1,#卡片组 do 
        self.展示卡组[i].visible = true 
        self.展示卡组[i].getChildByName('卡片').img = G.QueryName(o_cardhouse.卡片[卡片组[i]].卡片).头像     
    end
end
function t:详细显示()
    local o_cardhouse = G.QueryName(0x10220001)
    local 卡片组 = self['卡组_'..self.卡片组]
    if self.当前卡片 <= 0 then 
        self.详细.visible = false
        self.卡组.getChildByName('content').getChildByName('闪光').visible = false
        return 
    end
    local o_card = G.QueryName(o_cardhouse.卡片[卡片组[self.当前卡片]].卡片)
    self.详细.getChildByName('头像').img = o_card.头像 
    local 属性 = {'力量','智慧','防御','速度'}
    for i = 1,#属性 do
        if o_card[属性[i]] == 10 then
            self.详细.getChildByName(属性[i]).text = '[03]'..o_card[属性[i]]
        elseif  o_card[属性[i]] <= 5 then
            self.详细.getChildByName(属性[i]).text = '[01]'..o_card[属性[i]] 
        else
            self.详细.getChildByName(属性[i]).text = o_card[属性[i]] 
        end 
    end
    if o_cardhouse.卡片[卡片组[self.当前卡片]].数量 > 0 then 
        self.详细.getChildByName('名称').text = '[05]名称：[04]'..o_card.姓名
        self.详细.getChildByName('品级').text = '[05]品级：[04]'..G.call('to_chinese',o_card.品级)..'[05]星'
        self.详细.getChildByName('持有数量').text = '[05]持有数量：[04]'..o_cardhouse.卡片[卡片组[self.当前卡片]].数量
    else
        self.详细.getChildByName('名称').text = '[05]名称：[09]'..o_card.姓名
        self.详细.getChildByName('品级').text = '[05]品级：[09]'..G.call('to_chinese',o_card.品级)..'[05]星'
        self.详细.getChildByName('持有数量').text = '[05]持有数量：[09]'..o_cardhouse.卡片[卡片组[self.当前卡片]].数量 
    end

end
function t:click(tar)
    local 品级 = {'传奇','宗师','英雄','优秀','一般','普通'}
    for i = 1,#品级 do
        if tar ==  self.按钮.getChildByName(品级[i]) then
            self.按钮.getChildByName('闪光').visible = true
            self.按钮.getChildByName('闪光').x = self.按钮.getChildByName(品级[i]).x 
            self.按钮.getChildByName('闪光').y = self.按钮.getChildByName(品级[i]).y 
            self.卡片组 = i
            self.详细.visible = false
            self.卡组.visible = true
            self.卡组.getChildByName('content').y = 0
            self.卡组.getChildByName('content').removeAllChildren()
            self:刷新显示()
        end
    end
    if tar == self.obj.getChildByName('关闭') then
        G.removeUI('v_card')  
    end
    if self.显示数量 > 0 then
        for i =  1,self.显示数量 do
            if tar == self.展示卡组[i].getChildByName('卡片') then
                if self.当前卡片 > 0 then 
                    self.展示卡组[self.当前卡片].getChildByName('闪光').visible = false
                end
                self.展示卡组[i].getChildByName('闪光').visible = true
                self.当前卡片 = i
                self.详细.visible = true
                self:详细显示()
            end
        end
    end

end
return t