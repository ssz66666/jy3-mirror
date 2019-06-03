--[[3003

]]

local G = require "gf"
local t = G.com()

function t:init()
    self.背景 = self.obj.getChildByName('背景')
    self.城市 = self.obj.getChildByName('城市')
    self.前景 = self.obj.getChildByName('前景')
    self.标题 = self.obj.getChildByName('标题')
    self.主菜单 = self.obj.getChildByName('主菜单')
    self.菜单 = self.主菜单.getChildByName('菜单')
    self.休息 = self.obj.getChildByName('休息')
    self.木桩 = self.obj.getChildByName('木桩')
    self.河边 = self.obj.getChildByName('河边')
    self.树林 = self.obj.getChildByName('树林')
    self.子菜单 = self.obj.getChildByName('子菜单')
    self.血条 = self.主菜单.getChildByName('状态').getChildByName('血条')
    self.蓝条 = self.主菜单.getChildByName('状态').getChildByName('蓝条')
    self.体力 = self.主菜单.getChildByName('状态').getChildByName('体力')
    self.地图 = self.obj.getChildByName('地图')
    self.标签 = self.obj.getChildByName('标签')
    self.名称 = self.地图.getChildByName('名称')

end
function t:start()
    --G.call('指令_存储属性')
    local str = {'时间标','年','日','月','时','刻','侠义'}
    for i = 1,#str do 
        self.标签.getChildByName(str[i]).shadowX = 1
        self.标签.getChildByName(str[i]).shadowAlpha = 180
    end  
    local str =  {'load','music','book','data'} 
    for i = 1,#str do 
        self.obj.getChildByName(str[i]).shadowX = 1
        self.obj.getChildByName(str[i]).shadowAlpha = 180
    end  
    G.QueryName(0x10030001)[tostring(48)] = 0
    self:update()
end  
function t:update()    
    --self.地图.getChildByName('名称').text = G.QueryName(curremap).名称
    local year = {'一','二','三','四','五','六','七','八','九','十','十一','十二'}
    self.标签.getChildByName('年').text = G.call('to_chinese',G.QueryName(0x10030001)[tostring(120)])
    local month = {'一','二','三','四','五','六','七','八','九','十','十一','十二'}
    self.标签.getChildByName('月').text = month[G.QueryName(0x10030001)[tostring(121)] ] 
    local data = {'初一','初二','初三','初四','初五','初六','初七','初八','初九','初十',
    '十一','十二','十三','十四','十五','十六','十七','十八','十九','廿十',
    '廿一','廿二','廿三','廿四','廿五','廿六','廿七','廿八','廿九','卅十'}
    self.标签.getChildByName('日').text = data[G.QueryName(0x10030001)[tostring(122)] ] 
    local hour = {'子','丑','寅','卯','辰','巳','午','未','申','酉','戌','亥'}
    self.标签.getChildByName('时').text = hour[G.QueryName(0x10030001)[tostring(123)] ] 
    local quarter = {'一','二','三','四','五','六','七','八'}
    self.标签.getChildByName('刻').text = quarter[G.QueryName(0x10030001)[tostring(124)] ]  
    local int_侠义 = math.abs(G.call('get_point',15)) 
    if G.call('get_point',15) > 0 then 
        self.标签.getChildByName('侠义').text  = '[04]'..int_侠义 
    else
        self.标签.getChildByName('侠义').text  = '[03]'..int_侠义 
    end
    local hp = G.QueryName(0x10030001)[tostring(44)]
    local mp = G.QueryName(0x10030001)[tostring(46)]
    local maxhp = G.QueryName(0x10030001)[tostring(217)]
    local maxmp = G.QueryName(0x10030001)[tostring(218)]
    -- 控制主菜单血条蓝条的显示长度
    if maxhp >= hp then 
        if maxhp > 0 and maxhp ~= nil then
            self.血条.width = hp*111/maxhp 
        else
            self.血条.width = 0
        end 
    else
        self.血条.width = 111
    end
    if maxmp >= mp then 
        if maxmp > 0 and maxmp ~= nil then
            self.蓝条.width = mp*111/maxmp 
        else
            self.蓝条.width = 0
        end  
    else
        self.蓝条.width = 111
    end  
    local TL = G.QueryName(0x10030001)[tostring(48)]
    self.体力.width = TL*111/(G.QueryName(0x10030001)[tostring(49)])  
    if G.getUI('v_skill') or G.getUI('v_nature') then
        self.obj.getChildByName('load').visible = false
    else
        self.obj.getChildByName('load').visible = true
    end  
    self.主菜单.getChildByName('状态').getChildByName('头像').img = G.QueryName(0x10030001)[tostring(119)]          
end   
function t:刷新地图(string_地图名称,int_map,int_地图)  
    if int_地图 == 1 then
        self.背景.img = 0x56150000+int_map
    else
        self.背景.img = 0x56050000+int_map
    end
    self.名称.text = string_地图名称
    self.城市.removeAllChildren()
    self.休息.visible = false
    self.木桩.visible = false
    self.主菜单.visible = false
end   
function t:setData(map)
    self.背景.img = map.地图背景
    self.标题.text = map.名称
    self.地图.getChildByName('名称').text = map.名称
    self.主菜单.getChildByName('状态').getChildByName('头像').img = G.QueryName(0x10030001)[tostring(119)]
    self.城市.removeAllChildren()
    local curremap = G.QueryName(0x10030001)[tostring(140)] --取当前主角所在地图
    if  map.显示主菜单 == 1  then 
        self.主菜单.visible = true
    else
        self.主菜单.visible = false
    end        
    if  map.显示休息 == 1 then 
        self.休息.visible = true
        self.木桩.visible = true
    else
        self.休息.visible = false
        self.木桩.visible = false
    end
     
    if  map.显示树林 == 1 then 
        self.树林.visible = true
        if curremap == 0x10060033 or curremap == 0x10060014 then 
            self.树林.getChildByName('砍柴').visible = false
            self.树林.getChildByName('打猎').visible = false
        else
            self.树林.getChildByName('砍柴').visible = true
            self.树林.getChildByName('打猎').visible = true
        end
    else
        self.树林.visible = false
    end
    if  map.显示河边 == 1 then 
        self.河边.visible = true
    else
        self.河边.visible = false
    end
    if  map.名称 == '大地图' then
        self.地图.visible = false
        self.标签.x = -237
        self.标签.y = 215
    elseif map.名称 == '华山之巅' then
        self.地图.visible = true
        self.标签.visible = false
        --self.名称.visible = false
    else
        self.标签.visible = true
        self.地图.visible = true
        --self.名称.visible = true
        self.标签.x = -126
        self.标签.y = 226
    end
    if map.城市列表 then
        for i = 1, #map.城市列表 do
            if map.城市列表[i].城市 and map.城市列表[i].位置 and map.城市列表[i].位置.x and map.城市列表[i].位置.y then
                local ui_city = G.loadUI("v_citymap_system_city")
                ui_city.name = tostring(i)
                ui_city.anchor = 0x0
                local x_位置 = map.城市列表[i].位置.x 
                local y_位置 = map.城市列表[i].位置.y 
                if  map.城市列表[i].隐藏 == 1 then    --列表人物或者场景入口隐藏设定
                    ui_city.x = 1280
                    ui_city.y = 1280 
                    --ui_city.visible = false  
                else
                    ui_city.x = x_位置
                    ui_city.y = y_位置   
                   -- ui_city.visible = true             
                end            
                ui_city.c_citymap_system_city:setData(G.QueryName(map.城市列表[i].城市))
                self.城市.addChild(ui_city)
            end
        end
    end
end
function t:getCityObj(index)
    return self.城市.getChildByName(tostring(index))     
end
function t:rclick(tar)
    if self.子菜单.getChildByName(tostring(5)).visible == true then
        G.Play(0x49011003, 1,false,100) 
        self.子菜单.getChildByName(tostring(5)).visible = false
    end
end
function t:rollOver(tar)
    if tar == self.obj.getChildByName('load') or tar == self.obj.getChildByName('music') or tar == self.obj.getChildByName('book') then 
        tar.style = 2
    end
end
function t:rollOut(tar)
    if tar == self.obj.getChildByName('load') or tar == self.obj.getChildByName('music') or tar == self.obj.getChildByName('book') then 
        tar.style = 11
    end
end
function t:click(tar)
    if tar == self.主菜单.getChildByName('菜单').getChildByName(tostring(1)) then
        G.Play(0x49011003, 1,false,100) 
        G.addUI('v_nature')
    elseif tar == self.主菜单.getChildByName('菜单').getChildByName(tostring(2)) then
        G.Play(0x49011003, 1,false,100) 
        G.addUI('v_item')
    elseif tar == self.主菜单.getChildByName('菜单').getChildByName(tostring(3)) then
        G.Play(0x49011003, 1,false,100) 
        G.addUI('v_skill')
    elseif tar == self.主菜单.getChildByName('菜单').getChildByName(tostring(4)) then
        G.Play(0x49011003, 1,false,100) 
        G.addUI('v_teammate')
    elseif tar == self.主菜单.getChildByName('菜单').getChildByName(tostring(6)) then
        local o_gpmz =  G.QueryName(0x1017000f)
        G.Play(0x49011003, 1,false,100) 
        G.call('mapoff')
        G.Play(0x49011001, 1,true,1) 
        G.addUI('v_system')
    elseif tar == self.主菜单.getChildByName('菜单').getChildByName(tostring(5)) then
        G.Play(0x49011003, 1,false,100) 
        self.子菜单.getChildByName(tostring(5)).visible = true
    end  
    if tar == self.obj.getChildByName('休息') then
        G.trig_event('休息')
        G.call("goto_map",G.QueryName(0x10030001)[tostring(140)]-0x10060000)
    elseif tar == self.obj.getChildByName('河边').getChildByName('钓鱼') then
        G.trig_event('地图钓鱼')     
    elseif tar == self.obj.getChildByName('树林').getChildByName('砍柴') then
        G.trig_event('地图砍柴') 
    elseif tar == self.obj.getChildByName('树林').getChildByName('打猎') then
        G.trig_event('地图打猎') 
    elseif tar == self.obj.getChildByName('树林').getChildByName('抓蚯蚓') then
        G.trig_event('地图抓蚯蚓')  
    elseif tar == self.obj.getChildByName('木桩') then
        G.trig_event('木桩')  
    end  
    if tar == self.obj.getChildByName('book') then 
        G.Play(0x49011003, 1,false,100) 
        G.addUI('v_book')
    end 
    if tar == self.obj.getChildByName('load') then 
        G.call('通用_读档',4)
       -- G.call('通用_读档',G.call('get_point',143))
    end  
    if tar == self.obj.getChildByName('music') then 
        if G.misc().music == nil or G.misc().music >= 67 then
            G.misc().music = 16
        end
        G.misc().music = G.misc().music + 1
        G.Play(0x49010000 + G.misc().music, 1,true,1)
    end  
end
return t