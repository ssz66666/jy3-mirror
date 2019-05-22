--[[3012

]]

local G = require "gf"
local t = G.com()
function t:init()
    self.按钮 = self.obj.getChildByName('按钮')
    self.显示 = self.obj.getChildByName('显示')
    self.结账 = self.按钮.getChildByName('结账')
    self.退 = self.按钮.getChildByName('退')
    self.总数 = self.obj.getChildByName('总数')
    self.总价 = self.obj.getChildByName('总价')
end
function t:start()
    for i = 1,8  do 
        self.显示.getChildByName(tostring(i)).getChildByName('数量').text = tostring(0) 
    end 
    self.总价.text = tostring(0)
    local int_商店代码 = G.QueryName(0x10030001)[tostring(232)]
    if   int_商店代码 ~= nil and int_商店代码>0  then 
        local item= {'物品1','物品2','物品3','物品4','物品5','物品6','物品7','物品8'}
        local price = {'价格1','价格2','价格3','价格4','价格5','价格6','价格7','价格8'}
        local p = 0
        for i = 1,8 do 
            if G.QueryName(0x10130000+int_商店代码)[item[i]] == nil then 
                p = p +1
            end 
        end 
        local n = 8-p
        self.总数.text = tonumber(n)
        for i = 1,8 do 
            self.按钮.getChildByName(tostring(i)).visible = false
            self.显示.getChildByName(tostring(i)).visible = false
        end     
        for i = 1,n do 
            local o_item_物品 = G.QueryName(G.QueryName(0x10130000+int_商店代码)[item[i]])
            local o_shop_价格 = G.QueryName(0x10130000+int_商店代码)[price[i]]
            self.显示.getChildByName(tostring(i)).getChildByName('名称').text = G.QueryName(G.QueryName(0x10130000+int_商店代码)[item[i]]).名称
            self.显示.getChildByName(tostring(i)).getChildByName('价格').text =  G.call('to_chinese',G.QueryName(0x10130000+int_商店代码)[price[i]]) 
            self.按钮.getChildByName(tostring(i)).visible = true
            self.显示.getChildByName(tostring(i)).visible = true
        end  
    end  
end
function t:update()

end    
function t:rclick(tar)
    G.Play(0x49011003, 1,false,100) 
    G.QueryName(0x10030001)[tostring(233)] = 0
    G.QueryName(0x10030001)[tostring(234)] = 0
    G.trig_event('关闭商店')
end
function t:click(tar)
    local p = tonumber(self.总数.text)
    local zj = 0
    local item= {'物品1','物品2','物品3','物品4','物品5','物品6','物品7','物品8'}
    local 数量 = {'数量1','数量2','数量3','数量4','数量5','数量6','数量7','数量8'}  
    local price = {'价格1','价格2','价格3','价格4','价格5','价格6','价格7','价格8'}
    local int_商店代码 = G.QueryName(0x10030001)[tostring(232)] 
    for  i  =1,p do 
       local item_代码 = G.QueryName(0x10130000 +int_商店代码)[item[i]] - 0x100b0000
       if tar == self.按钮.getChildByName(tostring(i))  then 
            G.Play(0x49011003, 1,false,100) 
            if int_商店代码 ~= 3 and int_商店代码 ~= 7 and int_商店代码 ~= 8 then 
                self.显示.getChildByName(tostring(i)).getChildByName('数量').text = tostring(1+ tonumber(self.显示.getChildByName(tostring(i)).getChildByName('数量').text)          )
            else
                if G.call('get_item',item_代码+1) > 0  and G.call('get_item',item_代码+1) > tonumber(self.显示.getChildByName(tostring(i)).getChildByName('数量').text) then 
                    self.显示.getChildByName(tostring(i)).getChildByName('数量').text = tostring(1+ tonumber(self.显示.getChildByName(tostring(i)).getChildByName('数量').text) )
                end 
            end  
        end 
       if tonumber(self.显示.getChildByName(tostring(i)).getChildByName('数量').text) > 99 then 
          self.显示.getChildByName(tostring(i)).getChildByName('数量').text = tostring(99)
       end 
       G.QueryName(0x10130000 +int_商店代码)[数量[i]] = tonumber(self.显示.getChildByName(tostring(i)).getChildByName('数量').text)
       zj = G.QueryName(0x10130000+int_商店代码)[price[i]] * tonumber(self.显示.getChildByName(tostring(i)).getChildByName('数量').text ) + zj
       self.总价.text = tostring(zj) 
    end 
    if tar == self.结账 then 
        G.Play(0x49011003, 1,false,100) 
        G.QueryName(0x10030001)[tostring(233)] = tonumber(self.总价.text)
        G.QueryName(0x10030001)[tostring(234)] = 1
        G.trig_event('关闭商店')
    elseif tar == self.退 or tar == self.obj.getChildByName('关闭菜单') then 
        G.Play(0x49011003, 1,false,100) 
        G.QueryName(0x10030001)[tostring(233)] = 0
        G.QueryName(0x10030001)[tostring(234)] = 0
        G.trig_event('关闭商店')

    
    end 
end     
return t