--[[3039

]]

local G = require "gf"
local t = G.com()
function t:init()
    self.提示 = self.obj.getChildByName('提示')
    self.确认 = self.obj.getChildByName('确认')
    self.一区 = self.obj.getChildByName('一区')
    self.二区 = self.obj.getChildByName('二区')
    self.卡区 = self.obj.getChildByName('卡区')
    self.卡选区 = self.obj.getChildByName('卡选区')
    self.卡组 = self.卡选区.getChildByName('卡组')
    self.展示卡组 = {}
    self.卡片组 = {}
    self.游戏卡组 = {}
    self.进程 = 0
    self.先开 = 0
    self.已放置 = 0
    self.选择卡片 = 0
    self.cardmod = {}
end
function t:start()
    local 属性 = {'力量','智慧','防御','速度'}
    local o_cardhouse = G.QueryName(0x10220001)
    local o_cardlist = G.QueryName(0x10200001)
    for i = 1,#o_cardhouse.卡片 do
        if o_cardhouse.卡片[i].数量 > 0 then 
            local o_card = G.QueryName(o_cardhouse.卡片[i].卡片)
            table.insert(self.卡片组, {
                卡片 = o_cardhouse.卡片[i].卡片,
                数量 = o_cardhouse.卡片[i].数量,
                编号 = i,
            }
        ) 
        end
    end
    for i = 1,5 do 
        local n = i+5
        local i_card = o_cardhouse.卡片[o_cardlist['位置_'..n]].卡片
        local o_card = G.QueryName(i_card)
        self.二区.getChildByName('card_'..i).getChildByName('属性').getChildByName('图片').img = o_card.头像
        for j = 1,4 do 
            if o_card[属性[j]] == 10 then
                self.二区.getChildByName('card_'..i).getChildByName('属性').getChildByName(属性[j]).text = '[03]'..o_card[属性[j]]
            elseif  o_card[属性[j]] <= 5 then
                self.二区.getChildByName('card_'..i).getChildByName('属性').getChildByName(属性[j]).text = '[01]'..o_card[属性[j]] 
            else
                self.二区.getChildByName('card_'..i).getChildByName('属性').getChildByName(属性[j]).text = o_card[属性[j]] 
            end 
        end
    end
    local h = math.floor(#self.卡片组/9 + 1)
    self.卡组.getChildByName('content').height = 71*(h+1) + (h - 1)*4
    local height = self.卡组.getChildByName('content').height/2
    for x = 1, 9, 1 do
        for y = 1, h, 1 do
            local ui_sub = G.Clone(self.卡组.getChildByName('卡底'))
            ui_sub.x = -270 + (x - 1) * 65 
            ui_sub.y = -40  + height +(y - 1) * -75
            self.卡组.getChildByName('content').addChild(ui_sub)
            ui_sub.visible = false
            self.展示卡组[(y - 1) * 9 + x] = ui_sub
        end
    end
    self:卡牌显示()
end
function t:卡牌显示()
    local 属性 = {'力量','智慧','防御','速度'}
    for i  = 1,#self.卡片组 do 
        local i_card = self.卡片组[i].卡片
        local o_card = G.QueryName(i_card)
        self.展示卡组[i].visible = true 
        self.展示卡组[i].getChildByName('图片').img = o_card.头像
        self.展示卡组[i].getChildByName('属性').getChildByName('数量').text = self.卡片组[i].数量
        for j = 1,#属性 do
            if o_card[属性[j]] == 10 then
                self.展示卡组[i].getChildByName('属性').getChildByName(属性[j]).text = '[03]'..o_card[属性[j]]
            elseif  o_card[属性[j]] <= 5 then
                self.展示卡组[i].getChildByName('属性').getChildByName(属性[j]).text = '[01]'..o_card[属性[j]] 
            else
                self.展示卡组[i].getChildByName('属性').getChildByName(属性[j]).text = o_card[属性[j]] 
            end 
        end
    end
    self.进程 = 1
end
function t:卡区刷新()
    for i = 1,9 do
        if self.卡区.getChildByName('card_'..i).getChildByName('卡片').visible then 
            local int_编号 = tonumber(self.卡区.getChildByName('card_'..i).getChildByName('卡片').getChildByName('编号').text)
            if self.cardmod[int_编号].归属 == 1 then
                self.卡区.getChildByName('card_'..i).getChildByName('卡片').getChildByName('边框').img = 0x5603002c
            elseif self.cardmod[int_编号].归属 == 2 then
                self.卡区.getChildByName('card_'..i).getChildByName('卡片').getChildByName('边框').img = 0x5603002e
            end
        end
    end
    local int_红 = 0
    local int_绿 = 0
    for i = 1,10 do
        if self.cardmod[i].归属 == 2 then
            int_红 = int_红 + 1
        elseif self.cardmod[i].归属 == 1 then
            int_绿 = int_绿 + 1
        end
    end
    self.obj.getChildByName('显示').getChildByName('对方').text = '[03]卡数：[05]'..int_红
    self.obj.getChildByName('显示').getChildByName('我方').text = '[04]卡数：[05]'..int_绿
    if self.进程 == 3  then
        self.obj.getChildByName('关闭').visible = true
    else
        self.obj.getChildByName('关闭').visible = false
    end
end
function t:刷新显示()
    if self.进程 == 1 then
        local n = 0
        for i = 1,5 do
            if  self.一区.getChildByName('card_'..i).visible then 
                n = n + 1
            end
        end 
        if n > 0 and n < 5 then
            self.obj.getChildByName('取消').visible = true
        elseif n == 0 then 
            self.obj.getChildByName('取消').visible = false 
        elseif n == 5 then 
            self.确认.visible = true
            self.确认.getChildByName('输入框').getChildByName('文本').text = '选卡结束，是否开始？'
        end
    end
end
function t:click(tar)
    local 属性 = {'力量','智慧','防御','速度'}
    local o_cardhouse = G.QueryName(0x10220001)
    for i  = 1,#self.卡片组 do
        if tar ==  self.展示卡组[i].getChildByName('图片') then
            if self.卡片组[i].数量 > 0 then 
                self.卡片组[i].数量 = self.卡片组[i].数量 - 1
                self:卡牌显示()
                local o_card = G.QueryName(self.卡片组[i].卡片)
                local n = 0
                for j = 1,5 do
                    if  not self.一区.getChildByName('card_'..j).visible then 
                        n = j
                        break
                    end
                end 
                self.一区.getChildByName('card_'..n).visible = true
                self.一区.getChildByName('card_'..n).getChildByName('编号').text = self.卡片组[i].编号
                self.一区.getChildByName('card_'..n).getChildByName('图片').img = o_card.头像
                for j = 1,4 do 
                    if o_card[属性[j]] == 10 then
                        self.一区.getChildByName('card_'..n).getChildByName('属性').getChildByName(属性[j]).text = '[03]'..o_card[属性[j]]
                    elseif  o_card[属性[j]] <= 5 then
                        self.一区.getChildByName('card_'..n).getChildByName('属性').getChildByName(属性[j]).text = '[01]'..o_card[属性[j]] 
                    else
                        self.一区.getChildByName('card_'..n).getChildByName('属性').getChildByName(属性[j]).text = o_card[属性[j]] 
                    end 
                end
            end
        end
    end
    if tar == self.obj.getChildByName('关闭')  then 
        self.确认.visible = true
        self.确认.getChildByName('输入框').getChildByName('文本').text = '退出即认输，是否退出？'
    end
    if self.进程 == 1 then
        if tar == self.确认.getChildByName('按钮').getChildByName('是') then 
            local o_cardlist = G.QueryName(0x10200001)
            for i = 1,5 do
                local int_编号 = tonumber(self.一区.getChildByName('card_'..i).getChildByName('编号').text)
                o_cardlist['位置_'..i] = int_编号
            end 
            local int_归属 = 1
            self.确认.visible = false
            self.卡选区.visible = false
            self.obj.getChildByName('取消').visible = false 
            for i = 1,10 do 
                local i_card = o_cardhouse.卡片[o_cardlist['位置_'..i]].卡片
                local o_card = G.QueryName(i_card)
                if i > 5 then
                    int_归属 = 2 
                end
                local int_第一 = 1
                local int_第二 = 0
                local int_第三 = 0
                local int_属性 = o_card.力量
                if o_card.智慧 - int_属性 > 0 then 
                    int_第一 = 4
                end
                if o_card.防御 - int_属性 > 0 then 
                    int_第一 = 3
                end
                if o_card.速度 - int_属性 > 0 then 
                    int_第一 = 2
                end
                if int_第一 == 1  or int_第一 == 4  then
                    if  o_card.速度 > o_card.防御 then 
                        int_第二 = 2
                    else
                        int_第二 = 3
                    end
                    if int_第一 == 1 then 
                        if o_card.智慧 > int_第二 then
                            int_第三 = 4 
                        end
                    end
                    if int_第一 == 4 then 
                        if o_card.力量 > int_第二 then
                            int_第三 = 1 
                        end
                    end
                elseif int_第一 == 2  or int_第一 == 3 then
                    if  o_card.力量 > o_card.智慧 then 
                        int_第二 = 1
                    else
                        int_第二 = 4
                    end
                    if int_第一 == 2 then 
                        if o_card.防御 > int_第二 then
                            int_第三 = 3 
                        end
                    end
                    if int_第一 == 3 then 
                        if o_card.速度 > int_第二 then
                            int_第三 = 2 
                        end
                    end
                end
                table.insert(self.cardmod, {
                        o_card_卡片 = o_card,
                        卡片 = i_card,
                        编号 = i,
                        力量 = o_card.力量,
                        智慧 = o_card.智慧,
                        速度 = o_card.速度,
                        防御 = o_card.防御,
                        归属 = int_归属,
                        已放置 = 0,
                        第一 = int_第一,
                        第二 = int_第二,
                        第三 = int_第三,
                        总强度 = o_card.力量 + o_card.智慧 + o_card.防御 + o_card.速度,
                    }
                )
            end
            G.trig_event('选择卡牌结束')
            self.进程 = 2
        elseif tar == self.确认.getChildByName('按钮').getChildByName('否') then
            local int_编号五  = tonumber(self.一区.getChildByName('card_5').getChildByName('编号').text)
            local int_位置 = G.call('get_card_dress',int_编号五)
            self.卡片组[int_位置].数量 = self.卡片组[int_位置].数量 + 1
            self:卡牌显示()
            self.一区.getChildByName('card_'..5).visible = false
            self.确认.visible = false
        end
        if tar == self.obj.getChildByName('取消') then
            for i = 5,1,-1 do
                if  self.一区.getChildByName('card_'..i).visible then 
                    local int_编号  = tonumber(self.一区.getChildByName('card_'..i).getChildByName('编号').text)
                    local int_位置 = G.call('get_card_dress',int_编号)
                    self.卡片组[int_位置].数量 = self.卡片组[int_位置].数量 + 1
                    self:卡牌显示()
                    self.一区.getChildByName('card_'..i).visible = false
                    break
                end
            end 
        end
        self:刷新显示()
    elseif self.进程 == 3 then
        if tar == self.确认.getChildByName('按钮').getChildByName('是') then 
            self.进程 = 5
            self.已放置 = 10
        elseif tar == self.确认.getChildByName('按钮').getChildByName('否') then 
            self.确认.visible = false
        end
        for i = 1,5 do
            if   tar == self.一区.getChildByName('card_'..i).getChildByName('图片')   then 
                local int_卡片 =  self.选择卡片
                if self.选择卡片 == i then 
                    return
                end
                self.一区.getChildByName('card_'..i).x = self.一区.getChildByName('card_'..i).x - 20
                self.提示.getChildByName('文本').text = '选择卡片放置位置'
                if int_卡片 > 0 then 
                    self.一区.getChildByName('card_'..int_卡片).x = self.一区.getChildByName('card_'..int_卡片).x + 20
                end
                self.选择卡片 = i
            end
        end
        if self.选择卡片 > 0 then 
            for i = 1,9 do
                if tar == self.卡区.getChildByName('card_'..i).getChildByName('按钮')   then  
                    self.一区.getChildByName('card_'..self.选择卡片).visible = false
                    self.卡区.getChildByName('card_'..i).getChildByName('卡片').visible = true
                    G.call('call_cardgame_pick',self.选择卡片,i)
                    self.进程 = 4
                    self:卡区刷新()
                    self.已放置 = self.已放置 +1
                    if self.已放置 < 9 then 
                        self.obj.getChildByName('轮换').getChildByName('一区').visible = false
                        self.obj.getChildByName('轮换').getChildByName('二区').visible = true
                        self.提示.getChildByName('文本').text = '等待[03]红方'..'[05]进行卡片放置'
                    else
                        self.obj.getChildByName('轮换').getChildByName('一区').visible = false
                        self.obj.getChildByName('轮换').getChildByName('二区').visible = false
                    end
                end
            end
        end
    end
end
return t