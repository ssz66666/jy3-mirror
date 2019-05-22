--[[3029

]]

local G = require "gf"
local t = G.com()
function t:init()
    self.提示 = self.obj.getChildByName('secret').getChildByName('提示框').getChildByName('提示')
end
function t:start()
    G.misc().number = 0
    G.misc().自创武功名字 = '绝世武功'
    if G.misc().自创武功 == 1 then
        self.提示.text = '请输入自创武功名称'
        self.obj.getChildByName('secret').getChildByName('文本').text = '绝世武功'
        G.call('notice1','请输入不超过7个汉字的自创武功名称')  
    elseif   G.misc().猜数字 == 1 then
        self.提示.text = '请输入4位数字'
    end    
end
function t:输入字符()
    G.SetFocus(self.obj.getChildByName('secret').getChildByName('文本'));
    while self.obj.visible do
        local name = self.obj.getChildByName('secret').getChildByName('文本').text
        G.wait1('姓名输入结束');
        return name;
     
    end
end
function t:click(tar)
    if tar == self.obj.getChildByName('secret').getChildByName('确定')  then 
        if G.misc().猜数字 == 1 then
            local int_no =tonumber(self.obj.getChildByName('secret').getChildByName('文本').text) 
            if int_no ~= nil  then     
                if int_no > 10000 then 
                    G.call('notice1','输入数字超过四位数')
                else
                    int_no = math.floor(int_no)
                    G.misc().number = int_no
                    G.trig_event('input_over')
                end
            else
                G.call('notice1','输入无效')
            end  
        elseif G.misc().自创武功 == 1 then
           local  str = self.obj.getChildByName('secret').getChildByName('文本').text
            if G.getStrLen(str) <= 7 then
                G.misc().自创武功名字 = str
                G.trig_event('input_over')
            else
                G.call('notice1','请输入不超过7个汉字字符')
            end
        end  
    end    
end
return t