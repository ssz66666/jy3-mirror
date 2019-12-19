--[[303a

]]

local G = require "gf"
local t = G.com()
function t:init()
    self.提示 = self.obj.getChildByName('提示')
    self.确认 = self.obj.getChildByName('确认')
    self.类型 = 1
    self.卡区 = self.obj.getChildByName('卡区')
    self.卡片 = 0
end
function t:start()
end
function t:卡片显示(int_显示类型)
    local 属性 = {'力量','智慧','防御','速度'}
    local o_cardlist = G.QueryName(0x10200001)
    local o_cardhouse = G.QueryName(0x10220001)
    local int_序列 = 1
    if int_显示类型 == 1 then 
        self.提示.getChildByName('文本').text = '恭喜你，可以选择一张卡片！'
        int_序列 = 6
    elseif int_显示类型 == 2 then 
        self.提示.getChildByName('文本').text = '等待对方抽取卡片！'
    end
    for i = int_序列,int_序列 + 4 do 
        local i_card = o_cardhouse.卡片[o_cardlist['位置_'..i]].卡片
        local o_card = G.QueryName(i_card)
        local p = i
        if int_显示类型 == 1 then
            p = p - 5 
        end
        self.卡区.getChildByName('card_'..p).getChildByName('图片').img = o_card.头像
        if o_cardhouse.卡片[o_cardlist['位置_'..i]]['hold'] and o_cardhouse.卡片[o_cardlist['位置_'..i]].数量 == 0 then 
            self.卡区.getChildByName('card_'..p).getChildByName('名称').text = '[04]'..o_card.姓名
        elseif not o_cardhouse.卡片[o_cardlist['位置_'..i]]['hold'] and o_cardhouse.卡片[o_cardlist['位置_'..i]].数量 == 0 then 
            self.卡区.getChildByName('card_'..p).getChildByName('名称').text = '[03]'..o_card.姓名
        elseif o_cardhouse.卡片[o_cardlist['位置_'..i]].数量 > 0 then 
            self.卡区.getChildByName('card_'..p).getChildByName('名称').text = '[05]'..o_card.姓名
        end
        for j = 1,4 do 
            if o_card[属性[j]] == 10 then
                self.卡区.getChildByName('card_'..p).getChildByName('属性').getChildByName(属性[j]).text = '[03]'..o_card[属性[j]]
            elseif  o_card[属性[j]] <= 5 then
                self.卡区.getChildByName('card_'..p).getChildByName('属性').getChildByName(属性[j]).text = '[01]'..o_card[属性[j]] 
            else
                self.卡区.getChildByName('card_'..p).getChildByName('属性').getChildByName(属性[j]).text = o_card[属性[j]] 
            end 
        end
    end
end
function t:click(tar)
    if self.类型 == 1 then
        for i = 1,5 do 
            --print(self.卡区.getChildByName('card_'..i).getChildByName('图片'))
            if tar == self.obj.getChildByName('卡区').getChildByName('card_'..i).getChildByName('图片') then 
                self.obj.getChildByName('确定').visible = true 
                self.obj.getChildByName('卡区').getChildByName('闪光').visible = true
                self.obj.getChildByName('卡区').getChildByName('闪光').x = self.卡区.getChildByName('card_'..i).x
                self.卡片 = i
            end
        end 
    end
    if tar == self.obj.getChildByName('确定') then
        self.确认.visible = true
        self.obj.getChildByName('确定').visible = false
        self.确认.getChildByName('输入框').getChildByName('文本').text = '确认选择这张卡片？' 
    end
    if tar == self.确认.getChildByName('按钮').getChildByName('是') then 
        G.trig_event('card_select_over')  
    elseif tar == self.确认.getChildByName('按钮').getChildByName('否') then 
        self.obj.getChildByName('确定').visible = true
        self.确认.visible = false
    end
end
return t