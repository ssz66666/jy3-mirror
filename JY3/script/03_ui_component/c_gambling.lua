--[[301c

]]

local G = require "gf"
local t = G.com()
function t:init()
    self.显示 = self.obj.getChildByName('显示')
    self.银两 = self.obj.getChildByName('显示').getChildByName('银两')
    self.本金 = self.obj.getChildByName('显示').getChildByName('本金')
    self.单 = self.obj.getChildByName('显示').getChildByName('单')
    self.双 = self.obj.getChildByName('显示').getChildByName('双')
    self.大 = self.obj.getChildByName('显示').getChildByName('大')
    self.小 = self.obj.getChildByName('显示').getChildByName('小')
    self.开始 = self.obj.getChildByName('开始')
    self.结束 = self.obj.getChildByName('结束')
    self.一 = self.obj.getChildByName('开始').getChildByName('一')
    self.二 = self.obj.getChildByName('开始').getChildByName('二')
    self.提示1 = self.obj.getChildByName('提示1')
    self.提示2 = self.obj.getChildByName('提示2')
    self.下注 = self.obj.getChildByName('下注')
end
function t:start()
    self.提示2.getChildByName(tostring(1)).text = '其他人下完注请您下注'
    local a1 = math.random(3) - 1
    local a2 = math.random(3) - 1
    local a3 = math.random(3) - 1
    local a4 = math.random(3) - 1
    local a = {a1,a2,a3,a4}
    for i = 1,4 do 
   
        self.obj.getChildByName(tostring(i)).getChildByName('注数').text = a[i]
    end     
    G.misc().下注 = 0
    self:update()
end
function t:update()
    self.银两.text = tonumber( G.call('get_point',110))
    self.本金.text = tonumber (G.call('get_point',130))
    self.一.img = 0x56100000 + tonumber( self.obj.getChildByName('一').text)
    self.二.img = 0x56100000 + tonumber( self.obj.getChildByName('二').text)
    for i = 1,4 do 
        local zzs = tonumber(self.obj.getChildByName(tostring(i)).getChildByName('注数').text )
        for n = 1,5 do 
            self.obj.getChildByName(tostring(i)).getChildByName(tostring(n)).visible = false  
        end 
   
        if zzs > 0 then 

            for n = 1,zzs  do 
                self.obj.getChildByName(tostring(i)).getChildByName(tostring(n)).visible = true  
            end 

        end    
    end 
       
end 
function t:rollOver(tar)
    if tar == self.开始 then
        self.提示1.visible = true
        self.提示2.visible = false
    end     
end 
function t:rollOut(tar)
    if tar == self.开始 then
        self.提示1.visible = false  
    end 
end  
function t:rclick(tar)
    local xzs = 0
    local p= {'单','双','小','大'}
    for i = 1,4 do 
        xzs = xzs + tonumber(self.obj.getChildByName('显示').getChildByName(p[i]).text )
    end 
    G.call('add_money',5*xzs)
    G.trig_event('赌博结束')
end       
function t:click(tar)
    local p= {'单','双','小','大'}
    if tar == self.开始 and G.misc().下注 == 0 then
        self.提示1.visible = false
        G.misc().下注 = 1
        G.trig_event('跳骰')
    end
    for i = 1,4 do 
        local zzs = tonumber(self.obj.getChildByName(tostring(i)).getChildByName('注数').text )
        local zs = tonumber(self.obj.getChildByName('显示').getChildByName(p[i]).text )
        if tar ==  self.下注.getChildByName(p[i]) and G.misc().下注 == 0 then
            if G.call('get_point',130) >= 5 and zzs*5 < G.call('get_point',130) then  
                if  G.call('get_money') < 5 then 
                    G.call('notice','您的钱不够下注')
                else
                    if  zzs >= 5 then 
                        G.call('notice','每项最多下5注')
                    else
                        G.call('add_money',-5)
                        zs = zs + 1
                        zzs = zzs + 1
                    end 
                end 
                self.obj.getChildByName(tostring(i)).getChildByName('注数').text = tostring(zzs) 
                self.obj.getChildByName('显示').getChildByName(p[i]).text = tostring(zs) 
            else
                G.call('notice','再下我就米本钱赔了')
            end         
        end 
    end 
    local xzs = 0
    if tar == self.结束 and G.misc().下注 == 0 then
       for i = 1,4 do 
           xzs = xzs + tonumber(self.obj.getChildByName('显示').getChildByName(p[i]).text )
       end 
       G.call('add_money',5*xzs)
       G.trig_event('赌博结束')
    end  

end
return t