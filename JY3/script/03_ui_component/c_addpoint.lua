--[[3013

]]

local G = require "gf"
local t = G.com()
function t:init()
    self.按钮 = self.obj.getChildByName('按钮')
    self.确定 = self.按钮.getChildByName('确定')
    self.重选 = self.按钮.getChildByName('重选')
    self.左 = self.按钮.getChildByName('左')
    self.右 = self.按钮.getChildByName('右')
    self.显示 = self.obj.getChildByName('显示')
    self.余点 = self.显示.getChildByName('余点')
    self.头像 = self.obj.getChildByName('图像')
    self.序号 = self.obj.getChildByName('序号')
end
function t:start()
    if G.misc().code == 4 then 
        self.obj.getChildByName('secret_order').visible = true
    else
        self.obj.getChildByName('secret_order').visible = true
    end
    self.头像.img = 0x56081001
    self.显示.getChildByName('姓').text = '醋'
    self.显示.getChildByName('名').text = '小侠'
    local power = math.random(5,28) 
    G.QueryName(0x10030001)[tostring(101)] = power
    local root = math.random(5,28) 
    G.QueryName(0x10030001)[tostring(102)] = root
    local savvy = math.random(5,28) 
    G.QueryName(0x10030001)[tostring(103)] = savvy 
    local speed = math.random(5,28) 
    G.QueryName(0x10030001)[tostring(104)] = speed
    local luck = math.random(5,28) 
    G.QueryName(0x10030001)[tostring(105)] = luck
    if power+root+savvy+luck+speed >= 140 then 
        self.余点.text = tostring(0)
    else
        self.余点.text = tostring(140 - power-root-savvy-luck-speed )
    end      
    self.显示.getChildByName(tostring(1)).text = tostring(power)
    self.显示.getChildByName(tostring(2)).text = tostring(root)
    self.显示.getChildByName(tostring(3)).text = tostring(savvy)
    self.显示.getChildByName(tostring(4)).text = tostring(speed)
    self.显示.getChildByName(tostring(5)).text = tostring(luck)
end 
function t:update()

end  
function t:rollOver(tar)
    if tar == self.obj.getChildByName('secret_order') then 
        tar.style  = 1
    end
end
function t:rollOut(tar)
    if tar == self.obj.getChildByName('secret_order') then 
        tar.style  = 8
    end
end
function t:click(tar)
    if tar == self.obj.getChildByName('secret_order') then 
        self.obj.getChildByName('secret_order') .visible = false
        self.obj.getChildByName('secret').visible = true
    end    
    if tar == self.重选 then 
        G.Play(0x49011003, 1,false,100) 
        local power = math.random(5,28) 
        G.QueryName(0x10030001)[tostring(101)] = power
        local root = math.random(5,28) 
        G.QueryName(0x10030001)[tostring(102)] = root
        local savvy = math.random(5,28) 
        G.QueryName(0x10030001)[tostring(103)] = savvy 
        local speed = math.random(5,28) 
        G.QueryName(0x10030001)[tostring(104)] = speed
        local luck = math.random(5,28) 
        G.QueryName(0x10030001)[tostring(105)] = luck
        if power+root+savvy+luck+speed >= 140 then 
            self.余点.text = tostring(0)
        else
            self.余点.text = tostring(140 - power-root-savvy-luck-speed )
        end  
        self.显示.getChildByName(tostring(1)).text = tostring(power)
        self.显示.getChildByName(tostring(2)).text = tostring(root)
        self.显示.getChildByName(tostring(3)).text = tostring(savvy)
        self.显示.getChildByName(tostring(4)).text = tostring(speed)
        self.显示.getChildByName(tostring(5)).text = tostring(luck)
    end 
    local p = tonumber(self.序号.text)
    if tar == self.右 then 
       if p < 14 then 
          p = p + 1
       else      
          p = 1 
       end 
    elseif tar == self.左 then
        if p > 1 then 
            p = p - 1
        else      
            p = 14 
        end 
    end
    self.序号.text = tostring(p)
    local p = tonumber(self.序号.text)
    self.头像.img = 0x56081000 + p
    local a = G.QueryName(0x10030001)[tostring(101)]
    local b = G.QueryName(0x10030001)[tostring(102)] 
    local c = G.QueryName(0x10030001)[tostring(103)]  
    local d = G.QueryName(0x10030001)[tostring(104)] 
    local e = G.QueryName(0x10030001)[tostring(105)] 
    local a0 = tonumber(self.显示.getChildByName(tostring(1)).text )
    local b0 = tonumber(self.显示.getChildByName(tostring(2)).text )
    local c0 = tonumber(self.显示.getChildByName(tostring(3)).text )
    local d0 = tonumber(self.显示.getChildByName(tostring(4)).text ) 
    local e0 = tonumber(self.显示.getChildByName(tostring(5)).text ) 
    local n = tonumber(self.余点.text)
    local m = {a0,b0,c0,d0,e0}
    local o = {a,b,c,d,e}
    local str = {'力道','根骨','悟性','灵敏','福缘'}
    for i = 1,5 do 
        if tar == self.按钮.getChildByName(tostring(i)).getChildByName('left') then 
            G.Play(0x49011003, 1,false,100) 
           if m[i] > o[i]  then
            m[i] = m[i] - 1
            n = n + 1
           elseif m[i] == o[i] then 
              G.call('notice1',str[i]..'不能低于'..tostring(o[i]))
           end 
        elseif tar == self.按钮.getChildByName(tostring(i)).getChildByName('right') then 
            G.Play(0x49011003, 1,false,100) 
            if n > 0 and m[i] < 70 then 
                m[i] = m[i] + 1
                n = n - 1
            elseif m[i] == 70 then
                G.call('notice1',str[i]..'不能高于'..tostring(70))
            end 
        end 
        self.显示.getChildByName(tostring(i)).text = tostring(m[i])   
    end 
    if tar == self.确定 then 
        if #self.obj.getChildByName('显示').getChildByName('姓').text > 6 then 
            G.call('notice','姓超过字符长度')
        else
            if #self.obj.getChildByName('显示').getChildByName('名').text > 12 then 
                G.call('notice','名超过字符长度')
            else
                G.Play(0x49011000f, 1,false,100) 
                G.QueryName(0x10030001)[tostring(101)] = 0
                G.QueryName(0x10030001)[tostring(102)] = 0
                G.QueryName(0x10030001)[tostring(103)] = 0 
                G.QueryName(0x10030001)[tostring(104)] = 0
                G.QueryName(0x10030001)[tostring(105)] = 0
                local point = 0
                local point1 = 0
                local point2 = 0
                local point3 = 0
                local point4 = 0
                local point5 = 0
                if n > 0 then 
                    point = math.floor(n/5)
                    point1 = math.floor(n%5/4)
                    point2 = math.floor(n%5%4/3)
                    point3 = math.floor(n%5%4%3/2)
                    point4 = math.floor(n%5%4%3%2)
                end     
                G.call('set_point',16,a0 +point +point1+point2+point3+point4)
                G.call('set_point',17,b0+point +point1+point2+point3)
                G.call('set_point',18,c0+point +point1+point2)
                G.call('set_point',20,d0+point +point1)
                G.call('set_point',19,e0+point)
                for i = 16,20 do 
                    if G.call('get_point',i) > 70 then
                        G.call('set_point',i,70)
                    end
                end   
                local p = tonumber(self.序号.text)
                G.QueryName(0x10030001)[tostring(119)] = 0x56081000 + p 
                G.QueryName(0x10030001)[tostring(1)] = self.obj.getChildByName('显示').getChildByName('姓').text
                G.QueryName(0x10030001)[tostring(2)] = self.obj.getChildByName('显示').getChildByName('名').text
                local str = self.obj.getChildByName('密令').text
                if str == '铁血丹心' then
                    for i = 16,20 do --基础属性全+10
                        G.call('add_point',i,10)
                    end  
                    G.QueryName(0x10030001)[tostring(1)] = '铁血'
                    G.QueryName(0x10030001)[tostring(2)] = '丹心'
                elseif str == '一天二十个游戏' then
                    G.QueryName(0x10030001)[tostring(41)] = 1 --设定为自宫状态
                    G.QueryName(0x10030001)[tostring(1)] = '东厂'
                    G.QueryName(0x10030001)[tostring(2)] = '厂公'
                    G.QueryName(0x10030001)[tostring(119)] = 0x560800e2 --设定头像
                    G.call('learnmagic',140) --学会葵花神功
                elseif str == '十年生死两茫茫' then
                    G.misc().密令 = '十年生死两茫茫'
                    G.misc().密令年数 = 1
                    for i = 16,37 do --基础属性全+1
                        G.call('add_point',i,1)
                    end  
                    G.call('add_point',14,50)
                    G.call('add_point',15,10)
                    G.QueryName(0x10030001)[tostring(1)] = '神'
                    G.QueryName(0x10030001)[tostring(2)] = '雕侠'
                    G.call('set_CH','神雕大侠')
                    G.QueryName(0x10030001)[tostring(119)] = 0x56089008 --设定头像
                elseif str == '十年磨一剑' then
                    for i = 16,20 do --基础属性全+1
                        G.call('set_point',i,1)
                    end 
                    for i = 22,26 do --兵器值全+100
                        G.call('set_point',i,75)
                    end 
                    for i = 27,37 do --基础属性全+1
                        G.call('set_point',i,1)
                    end 
                    G.call('set_point',31,10)
                    G.QueryName(0x10030001)[tostring(1)] = '十'
                    G.QueryName(0x10030001)[tostring(2)] = '年磨一剑'
                    G.QueryName(0x10030001)[tostring(119)] = 0x56089006 --设定头像
                    G.call('learnmagic',190)
                elseif str == '名字就叫狗狗' then
                    G.QueryName(0x10030001)[tostring(1)] = '狗'
                    G.QueryName(0x10030001)[tostring(2)] = '狗'
                    G.QueryName(0x10030001)[tostring(119)] = 0x56089007 --设定头像
                    local int_magic = {183,184,185,186,219,220,221}
                    G.call('set_magic',int_magic[math.random(#int_magic)])
                elseif str == '天宇妹妹最靓了' then
                    G.QueryName(0x10030001)[tostring(50)] = 2 --二次结义机会
                elseif str == '自古红颜多离人' then
                    G.QueryName(0x10030001)[tostring(51)] = 2 --二次结婚机会
                elseif str == '半瓶神仙醋' then
                    G.QueryName(0x10030001)[tostring(1)] = '半瓶'
                    G.QueryName(0x10030001)[tostring(2)] = '神仙醋'
                    G.QueryName(0x10030001)[tostring(119)] = 0x56080026 --设定头像
                    for i = 16,20 do --基础属性全+5
                        G.call('add_point',i,5)
                    end  
                elseif str == '春风得意马蹄疾，一日看尽长安花' then
                    G.QueryName(0x10030001)[tostring(1)] = '心猿'
                    G.QueryName(0x10030001)[tostring(2)] = '意马'
                    G.QueryName(0x10030001)[tostring(119)] = 0x56089004 --设定头像
                    G.call('add_point',32,15)
                elseif str == '狂躁' then
                    G.QueryName(0x10030001)[tostring(1)] = '魔王'
                    G.QueryName(0x10030001)[tostring(2)] = '美娜'
                    G.QueryName(0x10030001)[tostring(119)] = 0x56089001 --设定头像
                    G.call('learnmagic',190) --
                elseif str == '裘球' then
                    G.QueryName(0x10030001)[tostring(1)] = '白'
                    G.QueryName(0x10030001)[tostring(2)] = '喵'
                    for i = 16,20 do --基础属性全+5
                        G.call('add_point',i,5)
                    end  
                    G.misc().太监 = 0
                    G.QueryName(0x10030001)[tostring(119)] = 0x56089005 --设定头像
                elseif str == '犹吊遗踪一泫然' then
                    G.call('set_point',110,17)
                elseif str == '天残地缺' then
                    G.QueryName(0x10030001)[tostring(1)] = '落'
                    G.QueryName(0x10030001)[tostring(2)] = '萧'
                    G.QueryName(0x10030001)[tostring(119)] = 0x56089003 --设定头像
                    G.call('add_point',19,30)
                    G.call('add_point',5,10)
                elseif str == '程灵素' then
                    G.QueryName(0x10030001)[tostring(119)] = 0x56089002 --设定头像
                    G.call('add_point',22,20)
                elseif str == '一剑曾当百万师' then
                    G.call('add_point',24,20)
                    G.call('add_point',5,10)
                    G.QueryName(0x10030001)[tostring(1)] = ''
                    G.QueryName(0x10030001)[tostring(2)] = '无名'
                elseif str == '一点意思一壶酒' then
                    G.call('add_money',5000) 
                elseif str == '书中自有颜如玉' then
                    local  wife = {1,3,6,8,12,14,15,16,18,19,20,22,24,25,26,28,39,40,130,252}
                    local n = wife[math.random(20)]
                    local m = 0
                    for i = 1,#wife do 
                        if G.call('in_team',wife[i]) == true then 
                           m = m + 1 
                        end    
                    end  
                    if m < 19 then
                        local o_team = G.QueryName(0x10110001)
                        for i = 1,12 do
                            if o_team[tostring(i)] then 
                                o_team[tostring(12+i)] =   0x10040000 - o_team[tostring(i)] - 10
                            else
                                o_team[tostring(12+i)] = -10
                            end
                        end   
                        while true do
                            if G.call('in_team',n) == false then 
                                G.call('join',n)
                                break
                            else
                                n = wife[math.random(19)]
                            end     
                        end
                    end
                end 
                G.QueryName(0x10030001)[tostring(6)] = G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)] 
                G.trig_event('建立角色结束')
            end
        end
    end 
    if tar == self.obj.getChildByName('secret').getChildByName('确定') then
        self.obj.getChildByName('密令').text = self.obj.getChildByName('secret').getChildByName('文本').text
        self.obj.getChildByName('secret_order') .visible = true
        self.obj.getChildByName('secret').visible = false
        local str = self.obj.getChildByName('密令').text
        if str == '铁血丹心' then
            self.obj.getChildByName('显示').getChildByName('姓').text = '铁血'
            self.obj.getChildByName('显示').getChildByName('名').text = '丹心'
            G.Play(0x4901000f, 1,false,100) 
        elseif str == '一天二十个游戏' then
            self.obj.getChildByName('显示').getChildByName('姓').text = '东厂'
            self.obj.getChildByName('显示').getChildByName('名').text = '厂公'
            self.头像.img = 0x560800e2
            G.Play(0x4901000f, 1,false,100) 
        elseif str == '天宇妹妹最靓了' then
            G.Play(0x4901000f, 1,false,100) 
        elseif str == '自古红颜多离人' then
            G.Play(0x4901000f, 1,false,100) 
        elseif str == '半瓶神仙醋' then
            self.obj.getChildByName('显示').getChildByName('姓').text = '半瓶'
            self.obj.getChildByName('显示').getChildByName('名').text = '神仙醋'
            self.头像.img = 0x56080026
            G.Play(0x4901000f, 1,false,100) 
        elseif str == '名字就叫狗狗' then
            self.头像.img = 0x560899007
            self.obj.getChildByName('显示').getChildByName('姓').text = '狗'
            self.obj.getChildByName('显示').getChildByName('名').text = '狗'
            G.Play(0x4901000f, 1,false,100) 
        elseif str == '十年生死两茫茫' then
            self.头像.img = 0x560899008
            self.obj.getChildByName('显示').getChildByName('姓').text = '神'
            self.obj.getChildByName('显示').getChildByName('名').text = '雕侠'
            G.Play(0x4901000f, 1,false,100) 
        elseif str == '十年磨一剑' then
            self.头像.img = 0x560899006
            self.obj.getChildByName('显示').getChildByName('姓').text = '十'
            self.obj.getChildByName('显示').getChildByName('名').text = '年磨一剑'
            G.Play(0x4901000f, 1,false,100) 
        elseif str == '天残地缺' then
            self.头像.img = 0x560899003
            self.obj.getChildByName('显示').getChildByName('姓').text = '落'
            self.obj.getChildByName('显示').getChildByName('名').text = '萧'
            G.Play(0x4901000f, 1,false,100) 
        elseif str == '一剑曾当百万狮' then
            self.obj.getChildByName('显示').getChildByName('姓').text = ''
            self.obj.getChildByName('显示').getChildByName('名').text = '无名'
            G.Play(0x4901000f, 1,false,100) 
        elseif str == '程灵素' then
            self.头像.img = 0x560899002
            self.obj.getChildByName('显示').getChildByName('姓').text = '程'
            self.obj.getChildByName('显示').getChildByName('名').text = '灵素'
            G.Play(0x4901000f, 1,false,100) 
        elseif str == '狂躁' then
            self.obj.getChildByName('显示').getChildByName('姓').text = '魔王'
            self.obj.getChildByName('显示').getChildByName('名').text = '美娜'
            self.头像.img = 0x56089001
            G.Play(0x4901000f, 1,false,100) 
        elseif str == '春风得意马蹄疾，一日看尽长安花' then
            self.obj.getChildByName('显示').getChildByName('姓').text = '心猿'
            self.obj.getChildByName('显示').getChildByName('名').text = '意马'
            self.头像.img = 0x56089004
            G.Play(0x4901000f, 1,false,100) 
        elseif str == '裘球' then
            self.obj.getChildByName('显示').getChildByName('姓').text = '白'
            self.obj.getChildByName('显示').getChildByName('名').text = '喵'
            self.头像.img = 0x56089005
            G.Play(0x4901000f, 1,false,100) 
        elseif str == '一点意思一壶酒' then
            G.Play(0x4901000f, 1,false,100) 
        elseif str == '书中自有颜如玉' then  
            G.Play(0x4901000f, 1,false,100) 
        end   
    end      
    local a0 = tonumber(self.显示.getChildByName(tostring(1)).text )
    local b0 = tonumber(self.显示.getChildByName(tostring(2)).text )
    local c0 = tonumber(self.显示.getChildByName(tostring(3)).text )
    local d0 = tonumber(self.显示.getChildByName(tostring(4)).text ) 
    local e0 = tonumber(self.显示.getChildByName(tostring(5)).text ) 
    self.余点.text = tostring(140-a0-b0-c0-d0-e0)








end     
return t