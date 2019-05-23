--[[3022

]]

local G = require "gf"
local t = G.com()
local i_battle = 0x10150001
local o_role = 0x10040000
local 位置 = {'team1','team2','team3','team4','team5','enemy1','enemy2','enemy3','enemy4','enemy5','enemy6'}
local o_hotkey = G.QueryName(0x100c0001)
function t:init()
    self.记事本 = self.obj.getChildByName('记事本')
    self.记录 = self.记事本.getChildByName('记录')
    self.主菜单 = self.obj.getChildByName('主菜单')
    self.菜单 = self.主菜单.getChildByName('菜单')
    self.血条 = self.主菜单.getChildByName('状态').getChildByName('血条')
    self.蓝条 = self.主菜单.getChildByName('状态').getChildByName('蓝条')
    self.hp = self.主菜单.getChildByName('状态').getChildByName('hp')
    self.mp = self.主菜单.getChildByName('状态').getChildByName('mp')
    self.tl = self.主菜单.getChildByName('状态').getChildByName('tl')
    self.体力 = self.主菜单.getChildByName('状态').getChildByName('体力')
    self.按钮  = self.obj.getChildByName('按钮')
    self.说明  = self.obj.getChildByName('战斗说明')
    self.层数  = self.obj.getChildByName('层数')
    self.阵法  = self.obj.getChildByName('阵法')
    self.副按钮  = self.obj.getChildByName('按钮1')
end
function t:刷新记事本()
    local str = ''
    local o_notebook = G.QueryName(0x101a0001)
    local int_记事本 = #o_notebook.记事本 
    if int_记事本 > 0 then
        if int_记事本 > 10 then
            str = ''
            for i = int_记事本 - 9,int_记事本 do 
                str = str..o_notebook.记事本[i].记事..'[br]'
            end
        else
            for i = 1,#o_notebook.记事本 do 
                str = str..o_notebook.记事本[i].记事..'[br]'
            end
        end
    end
    self.记录.text = str
end
function t:onFrameEnd(tar, id)
    for i = 2,11 do 
        if tar == self.obj.getChildByName('tab').getChildByName(位置[i])  then
            if tonumber(id) > 1000 then
                local int_序列帧 = tonumber(id) -1000 
                self.obj.getChildByName('tab').getChildByName(位置[i]).frameActionID(int_序列帧 ) 
            end
        end
    end
    if tar == self.obj.getChildByName('tab').getChildByName(位置[1]) then
        local int_序列帧 = tonumber(id)
        if int_序列帧 == 9002 or   int_序列帧 == 9001 then
        else
            self.obj.getChildByName('tab').getChildByName(位置[1]).frameActionID(0) 
        end
    end
    -- if self.obj.getChildByName('图标') then
    --     self.obj.getChildByName('图标').frameActionID(0) 
    -- end
end
function t:start()
    local i_battle = 0x10150001
    --G.call('指令_存储属性')
    --G.call('set_point',48,100)
    G.call('逻辑整理-武功等级')
    local o_notebook = G.QueryName(0x101a0001)
    o_notebook.记事本 = {}
    --0x33070002 友方
    --0x33060001  敌人
    --以下为备份记录主角怒气、生命、内力
    G.call('set_newpoint',48,-G.call('get_point',48)-math.random(5))
    G.call('set_newpoint',44,-G.call('get_point',44)-math.random(5))
    G.call('set_newpoint',46,-G.call('get_point',46)-math.random(5))
    G.call('set_point',80,0) --时序
    G.misc().自动 = 1
    G.misc().战斗状态 = 0
    G.misc().范围无双 = 0
    self.层数.shadowX = 1
    self.层数.shadowAlpha = 255
    self.阵法.shadowX = 1
    self.阵法.shadowAlpha = 255
    self.说明.shadowX = 1
    self.说明.shadowAlpha = 255
    if G.QueryName(0x100c0001)[tostring(15)] ~= nil then
        self.阵法.text = G.QueryName(G.QueryName(0x100c0001)[tostring(15)]).名称
    else
        self.阵法.text = ''
    end
    if  G.misc().通天塔 == 1 then 
        self.obj.getChildByName('层数').visible = true
        self.obj.getChildByName('层数').text = '[08]无尽挑战第[03]'..G.misc().通天塔层数..'[08]层'
    else
        self.obj.getChildByName('层数').visible = false 
    end
    if G.misc().木桩 == 1 then
        self.说明.visible = true
        self.说明.text = '[08]练习[03]木桩[08]战斗，[03]逃跑[08]可结束战斗'
    else
        self.说明.visible = false
    end 
    self.obj.getChildByName('背景').img = G.QueryName(0x10150001).背景 + 0x56050000
    self.obj.getChildByName('主菜单').getChildByName('状态').getChildByName('头像').img = G.call('get_point',119)
    for i = 2,11 do 
        if G.QueryName(0x10150001)[位置[i]] > 0 then  
            self.obj.getChildByName('tab').getChildByName(位置[i]).visible = true
            self.obj.getChildByName('map').getChildByName(位置[i]).visible = true
            local p = G.QueryName(i_battle)[位置[i]]
            local int_编号 = G.QueryName(o_role +G.QueryName(i_battle)[位置[i]] ).编号
            if p >= 253 and p < 385  then  
                self.obj.getChildByName('talk').getChildByName(位置[i]).getChildByName('head').img = G.QueryName(o_role +int_编号 ).头像
                self.obj.getChildByName('map').getChildByName(位置[i]).img = G.QueryName(o_role +int_编号 ).头像
            else
                self.obj.getChildByName('talk').getChildByName(位置[i]).getChildByName('head').img = G.QueryName(o_role +G.QueryName(i_battle)[位置[i]] ).头像
                self.obj.getChildByName('map').getChildByName(位置[i]).img = G.QueryName(o_role +G.QueryName(i_battle)[位置[i]] ).头像
            end 
        end     
    end 
    self.obj.getChildByName('talk').getChildByName(位置[1]).getChildByName('head').img = G.QueryName(0x10030001)[tostring(119)] 
    self.obj.getChildByName('map').getChildByName(位置[1]).img = G.QueryName(0x10030001)[tostring(119)] 
    for i = 2,11 do 
        if G.QueryName(i_battle)[位置[i]] > 0 then 
            local p = G.QueryName(i_battle)[位置[i]]
            local int_编号 = G.QueryName(o_role +G.QueryName(i_battle)[位置[i]] ).编号
            if p >= 253 and p < 385  then  
                self.obj.getChildByName('tab').getChildByName(位置[i]).frameActionID(int_编号)
            else
                self.obj.getChildByName('tab').getChildByName(位置[i]).frameActionID(p )
            end  

        end 
    end   
    self.obj.getChildByName('select') .shadowX = 1
    self.obj.getChildByName('select') .shadowY = 0
    self.obj.getChildByName('select') .shadowAlpha = 180
    self.obj.getChildByName('时间') .shadowX = 1
    self.obj.getChildByName('时间') .shadowY = 0
    self.obj.getChildByName('时间') .shadowAlpha = 180
    for i = 1,11 do 
        self.obj.getChildByName('hurt').getChildByName(位置[i]).getChildByName('加生命').shadowX = 1
        self.obj.getChildByName('hurt').getChildByName(位置[i]).getChildByName('加生命').shadowY = 0
        self.obj.getChildByName('hurt').getChildByName(位置[i]).getChildByName('加生命').shadowAlpha = 180
        self.obj.getChildByName('hurt').getChildByName(位置[i]).getChildByName('加内力').shadowX = 1
        self.obj.getChildByName('hurt').getChildByName(位置[i]).getChildByName('加内力').shadowY = 0
        self.obj.getChildByName('hurt').getChildByName(位置[i]).getChildByName('加内力').shadowAlpha = 180
        self.obj.getChildByName('hurt').getChildByName(位置[i]).getChildByName('加体力').shadowX = 1
        self.obj.getChildByName('hurt').getChildByName(位置[i]).getChildByName('加体力').shadowY = 0 
        self.obj.getChildByName('hurt').getChildByName(位置[i]).getChildByName('加体力').shadowAlpha = 180
        self.obj.getChildByName('hurt').getChildByName(位置[i]).getChildByName('减生命').shadowX = 1
        self.obj.getChildByName('hurt').getChildByName(位置[i]).getChildByName('减生命').shadowY = 0
        self.obj.getChildByName('hurt').getChildByName(位置[i]).getChildByName('减生命').shadowAlpha = 180
        self.obj.getChildByName('hurt').getChildByName(位置[i]).getChildByName('减内力').shadowX = 1
        self.obj.getChildByName('hurt').getChildByName(位置[i]).getChildByName('减内力').shadowY = 0
        self.obj.getChildByName('hurt').getChildByName(位置[i]).getChildByName('减内力').shadowAlpha = 180
        self.obj.getChildByName('hurt').getChildByName(位置[i]).getChildByName('减体力').shadowX = 1
        self.obj.getChildByName('hurt').getChildByName(位置[i]).getChildByName('减体力').shadowY = 0 
        self.obj.getChildByName('hurt').getChildByName(位置[i]).getChildByName('减体力').shadowAlpha = 180
    end     
    self:update()
end  
function t:update()
    local num = 0
    local num0 = 1  
    local i_battle = 0x10150001
    local o_battle = G.QueryName(0x10150001)
    --self.obj.getChildByName('tab').getChildByName(位置[1]).getChildByName('hp').width = 80*G.QueryName(0x10030001)[tostring(44)]/G.QueryName(0x10030001)[tostring(217)]
    if o_battle.模式 < 4  then 
        if G.call('get_point',44) > 0 then 
            self.obj.getChildByName('tab').getChildByName(位置[1]).visible = true
            self.obj.getChildByName('tab').getChildByName(位置[1]).visible = true
            self.obj.getChildByName('map').getChildByName(位置[1]).visible = true 
        else
            self.obj.getChildByName('talk').getChildByName(位置[1]).visible = false    
            self.obj.getChildByName('tab').getChildByName(位置[1]).visible = false
            self.obj.getChildByName('map').getChildByName(位置[1]).visible = false
            self.obj.getChildByName('map').getChildByName(位置[1]).x = 0
        end
    else
        self.obj.getChildByName('talk').getChildByName(位置[1]).visible = false    
        self.obj.getChildByName('tab').getChildByName(位置[1]).visible = false
        self.obj.getChildByName('map').getChildByName(位置[1]).visible = false
        self.obj.getChildByName('map').getChildByName(位置[1]).x = 0
    end 
    for i = 2,11 do   --显示存活的NPC
        if G.QueryName(i_battle)[位置[i]] > 0 then
            if G.QueryName(o_role +G.QueryName(i_battle)[位置[i]] ).生命 > 0  then 
               self.obj.getChildByName('tab').getChildByName(位置[i]).visible = true
               self.obj.getChildByName('map').getChildByName(位置[i]).visible = true
               self.obj.getChildByName('tab').getChildByName(位置[i]).getChildByName('hp').width = 80*G.QueryName(o_role +G.QueryName(i_battle)[位置[i]] ).生命/G.QueryName(o_role +G.QueryName(i_battle)[位置[i]] )[tostring(1)]
            else  
                self.obj.getChildByName('talk').getChildByName(位置[i]).visible = false    
                self.obj.getChildByName('tab').getChildByName(位置[i]).visible = false
                self.obj.getChildByName('map').getChildByName(位置[i]).visible = false
                self.obj.getChildByName('map').getChildByName(位置[i]).x = 0
            end
        else
            self.obj.getChildByName('tab').getChildByName(位置[i]).visible = false
            self.obj.getChildByName('map').getChildByName(位置[i]).visible = false
            self.obj.getChildByName('map').getChildByName(位置[i]).x = 0
        end       
    end 
    for i = 2,5 do --计算我方存活人数
        if G.QueryName(i_battle)[位置[i]] > 0 then
            if  G.QueryName(o_role +G.QueryName(i_battle)[位置[i]] ).生命 > 0 then 
                num0 = num0 + 1
            end 
        end     
    end 
    self.obj.getChildByName('num0').text = tostring(num0)
    for i = 6,11 do --计算敌人存活人数
        if G.QueryName(i_battle)[位置[i]] > 0 then 
            if  G.QueryName(o_role +G.QueryName(i_battle)[位置[i]] ).生命 > 0 then 
                num = num + 1
            end 
        end     
    end     
    self.obj.getChildByName('num').text = tostring(num)
    local hp = math.floor(G.QueryName(0x10030001)[tostring(44)])
    local mp = math.floor(G.QueryName(0x10030001)[tostring(46)])
    local maxhp = G.QueryName(0x10030001)[tostring(217)]
    local maxmp = G.QueryName(0x10030001)[tostring(218)]
    -- 控制主菜单血条蓝条的显示长度
    if maxhp >= hp then 
        if maxhp > 0 and maxhp ~= nil then
            self.血条.width = hp*111/(maxhp+1) 
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
    self.hp.text = tostring(hp)..'/'..tostring(maxhp) 
    self.mp.text = tostring(mp)..'/'..tostring(maxmp) 
    self.tl.text = tostring(math.floor(G.QueryName(0x10030001)[tostring(48)]))..'/'..tostring(G.QueryName(0x10030001)[tostring(49)]) 
    local TL = G.QueryName(0x10030001)[tostring(48)]
    self.体力.width = TL*111/(G.QueryName(0x10030001)[tostring(49)])   
    local 快捷 = {'q','w','e','r'}
    local o_hotkey = G.QueryName(0x100c0001)
    for i = 1,4 do 
        if o_hotkey[tostring(10+i)] ~= nil and G.QueryName(o_hotkey[tostring(10+i)]).数量 > 0 then 
            self.按钮.getChildByName(快捷[i]).visible = true
            self.按钮.getChildByName(快捷[i]).c_button.img_normal = G.QueryName(o_hotkey[tostring(10+i)]).图标
            self.按钮.getChildByName(快捷[i]).getChildByName('数量').text = G.QueryName(o_hotkey[tostring(10+i)]).数量 
            if G.misc().战斗状态 == 0 and  self.obj.getChildByName('map').getChildByName(位置[1]).x <= 150  and G.call('get_point',87) == 0 and G.call('get_point',44) > 0  and o_battle.模式 < 4   then 
                self.按钮.getChildByName(快捷[i]).alpha= 255
                self.按钮.getChildByName(快捷[i]).mouseEnabled  = true
            else
                self.按钮.getChildByName(快捷[i]).alpha = 100
                self.按钮.getChildByName(快捷[i]).mouseEnabled = false
            end 
        else
            self.按钮.getChildByName(快捷[i]).visible = false
        end 
       
    end 
    for p = 1,8 do 
        if G.QueryName(0x100c0001)[tostring(p)] ~= nil  then 
            self.按钮.getChildByName(tostring(p)).visible = true
            self.按钮.getChildByName(tostring(p)).c_button.img_normal = G.QueryName(G.QueryName(0x100c0001)[tostring(p)]).图像
            self.副按钮.getChildByName(tostring(p)).visible = true
            self.副按钮.getChildByName(tostring(p)).c_button.img_normal = G.QueryName(G.QueryName(0x100c0001)[tostring(p)]).图像
            if G.misc().战斗状态 == 0 and  self.obj.getChildByName('map').getChildByName(位置[1]).x <= 150 and G.call('get_point',87) == 0 and G.call('get_point',44) > 0 and o_battle.模式 < 4  then 
                if (G.QueryName(G.QueryName(0x100c0001)[tostring(p)]).类别 == 5 and G.call('get_point',198) == nil) or (p == 8 and G.call('get_point',48) < 100 )   then
                    self.按钮.getChildByName(tostring(p)).alpha = 100
                    self.按钮.getChildByName(tostring(p)).mouseEnabled = false
                    self.副按钮.getChildByName(tostring(p)).alpha = 100
                    self.副按钮.getChildByName(tostring(p)).mouseEnabled = false
                else  
                    self.按钮.getChildByName(tostring(p)).alpha = 255
                    self.按钮.getChildByName(tostring(p)).mouseEnabled = true
                    self.副按钮.getChildByName(tostring(p)).alpha = 255
                    self.副按钮.getChildByName(tostring(p)).mouseEnabled = true
                    self.obj.getChildByName('逃跑').visible = true   
                end    
            else
                self.按钮.getChildByName(tostring(p)).alpha = 100
                self.按钮.getChildByName(tostring(p)).mouseEnabled = false
                self.副按钮.getChildByName(tostring(p)).alpha = 100
                self.副按钮.getChildByName(tostring(p)).mouseEnabled = false
                self.obj.getChildByName('逃跑').visible = false
            end     
        else
            self.按钮.getChildByName(tostring(p)).visible = false 
            self.副按钮.getChildByName(tostring(p)).visible = false   
        end     

    end 
end  
function t:rollOver(tar)
    local i_battle = 0x10150001
    local int_代码 = tonumber(self.obj.getChildByName('代码').getChildByName(位置[1]).text)
    local int_n = 0 
    if G.QueryName(i_battle)[位置[6]] > 0 then
        if 	G.QueryName(o_role + G.QueryName(i_battle)[位置[6] ]).生命 > 0 then 
           int_n = int_n + 1
        end
    elseif G.QueryName(i_battle)[位置[9]] > 0 then
        if 	G.QueryName(o_role + G.QueryName(i_battle)[位置[9] ]).生命 > 0 then 
            int_n = int_n + 1	
        end
    elseif G.QueryName(i_battle)[位置[10]] > 0 then
        if	G.QueryName(o_role + G.QueryName(i_battle)[位置[10] ]).生命 > 0 then 
            int_n = int_n + 1
        end
    end 		
    local int_m = 0 
    if G.QueryName(i_battle)[位置[7]] > 0 then
        if 	G.QueryName(o_role + G.QueryName(i_battle)[位置[7] ]).生命 > 0 then 
            int_m = int_m + 1
        end
    elseif G.QueryName(i_battle)[位置[8]] > 0 then
        if	G.QueryName(o_role + G.QueryName(i_battle)[位置[8] ]).生命 > 0 then 
            int_m = int_m + 1	
        end
    elseif G.QueryName(i_battle)[位置[11]] > 0 then
        if	G.QueryName(o_role + G.QueryName(i_battle)[位置[11] ]).生命 > 0 then 
           int_m = int_m + 1
        end   
    end 
    local int_a = 0 
    if G.QueryName(i_battle)[位置[6]] > 0 then
        if 	G.QueryName(o_role + G.QueryName(i_battle)[位置[6] ]).生命 > 0 then 
            int_a = int_a + 1
        end
    elseif G.QueryName(i_battle)[位置[11]] > 0 then
        if	G.QueryName(o_role + G.QueryName(i_battle)[位置[11] ]).生命 > 0 then 
            int_a = int_a + 1
        end
    end 		
    local int_b = 0 
    if G.QueryName(i_battle)[位置[7]] > 0 then
        if 	G.QueryName(o_role + G.QueryName(i_battle)[位置[7] ]).生命 > 0 then 
            int_b = int_b + 1
        end
    elseif G.QueryName(i_battle)[位置[9]] > 0 then
        if 	G.QueryName(o_role + G.QueryName(i_battle)[位置[9] ]).生命 > 0 then 
            int_b = int_b + 1
        end
    end 
    local int_c = 0 
    if G.QueryName(i_battle)[位置[8]] > 0 then
        if 	G.QueryName(o_role + G.QueryName(i_battle)[位置[8] ]).生命 > 0 then 
            int_c = int_c + 1
        end
    elseif G.QueryName(i_battle)[位置[10]] > 0 then
        if 	G.QueryName(o_role + G.QueryName(i_battle)[位置[10] ]).生命 > 0 then 
             int_c = int_c + 1
        end
    end 
    local int_d = 0
    if  int_a == 0  then 
        int_d = int_d  + 1
    elseif  int_b == 0  then   
        int_d = int_d  + 1
    elseif  int_c == 0  then   
        int_d = int_d  + 1
    end 
    -- if self.obj.getChildByName('map').getChildByName(位置[1]).x == 150 and self.obj.getChildByName('状态').text == tostring(1) then 
    --     if  G.QueryName(0x10050000+int_代码).范围 == 2 and tonumber(self.obj.getChildByName('num').text) > 1  then 
    --         for i = 6,11 do 
    --             if tar == self.obj.getChildByName('tab').getChildByName(位置[i]) then 
    --                 G.Tween("color", 300,self.obj.getChildByName('tab').getChildByName(位置[i]) , 0x713e21)
    --             end        
    --         end 
    --     elseif G.QueryName(0x10050000+int_代码).范围 == 3 then 
    --         if int_m ~= 0 and  int_n ~= 0 then 
    --             if tar ==  self.obj.getChildByName('横一') then
    --                 self.obj.getChildByName('横一').getChildByName('图片').visible = true
    --             elseif tar ==  self.obj.getChildByName('横二') then   
    --                 self.obj.getChildByName('横二').getChildByName('图片').visible = true
    --             end  
    --         end     
    --     elseif G.QueryName(0x10050000+int_代码).范围 == 4  then 
    --         if int_d < 2 then   
    --             if tar ==  self.obj.getChildByName('纵一') then
    --                 self.obj.getChildByName('纵一').getChildByName('图片').visible = true
    --             elseif tar ==  self.obj.getChildByName('纵二') then   
    --                 self.obj.getChildByName('纵二').getChildByName('图片').visible = true
    --             elseif tar ==  self.obj.getChildByName('纵三') then   
    --                 self.obj.getChildByName('纵三').getChildByName('图片').visible = true
    --             end 
    --         end 
    --     end      
 
    -- end             
end 
function t:rollOut(tar)
    local int_代码 = tonumber(self.obj.getChildByName('代码').getChildByName(位置[1]).text)
    -- if self.obj.getChildByName('map').getChildByName(位置[1]).x == 150 and self.obj.getChildByName('状态').text == tostring(1) then 
    --     if  G.QueryName(0x10050000+int_代码).范围 == 2  then 
    --         for i = 6,11 do 
    --             if tar == self.obj.getChildByName('tab').getChildByName(位置[i]) then 
    --                 G.Tween("color", 300,self.obj.getChildByName('tab').getChildByName(位置[i]) , 0xffffff)
    --                 --self.obj.getChildByName('tab').getChildByName(位置[i]) .color = 0xffffff
    --             end        
    --         end 
    --     elseif G.QueryName(0x10050000+int_代码).范围 == 3  then 
    --         if tar ==  self.obj.getChildByName('横一') then
    --             self.obj.getChildByName('横一').getChildByName('图片').visible = false
    --         elseif tar ==  self.obj.getChildByName('横二') then   
    --             self.obj.getChildByName('横二').getChildByName('图片').visible = false
    --         end 
    --     elseif G.QueryName(0x10050000+int_代码).范围 == 4  then   
    --         if tar ==  self.obj.getChildByName('纵一') then
    --             self.obj.getChildByName('纵一').getChildByName('图片').visible = false
    --         elseif tar ==  self.obj.getChildByName('纵二') then   
    --             self.obj.getChildByName('纵二').getChildByName('图片').visible = false
    --         elseif tar ==  self.obj.getChildByName('纵三') then   
    --             self.obj.getChildByName('纵三').getChildByName('图片').visible = false
    --         end  
    --     end      
 
    -- end 
    
end  
function t:keyDown(tar,info)
    local i_battle = 0x10150001
    local o_battle = G.QueryName(i_battle)
    local 快捷 = {'q','w','e','r'}
    local 键值 = {81,87,69,82}
    local key = string.byte(info)
    if G.misc().战斗状态 == 0 then  
        for i = 1,8 do 
            if key == i + 48 then 
                if self.按钮.getChildByName(tostring(i)).mouseEnabled == true then
                    G.trig_event('监控')
                    if G.QueryName(0x100c0001)[tostring(i)] ~= nil then 
                        if G.call('get_point',84) > 0 then 
                            G.call('notice1','内伤无法使用武功')
                        else
                            G.misc().战斗状态 = 1
                            self.obj.getChildByName('代码').getChildByName(位置[1]).text = tostring(G.QueryName(0x100c0001)[tostring(i)]-0x10050000)
                            local i_skill = G.QueryName(0x100c0001)[tostring(i)]
                            local o_skill = G.QueryName(i_skill)
                            if o_skill.范围 == 0 or o_skill.范围 == 1 then 
                                if G.call('get_point',46) > 0 then 
                                    self.obj.getChildByName('状态').text = tostring(1) 
                                    G.trig_event('主角准备')
                                else
                                    G.misc().战斗状态 = 0
                                    G.call('notice1','内力为0无法使用辅助武功')   
                                end     
                            elseif  o_skill.范围 == 5 then  
                                self.obj.getChildByName('状态').text = tostring(1) 
                                G.trig_event('主角准备')
                            elseif i_magic_阵法 and G.QueryName(i_magic_阵法).附加效果 == 9 and int_队友 >= 4   then
                                self.obj.getChildByName('状态').text = tostring(1) 
                                G.misc().范围无双 = 1
                                G.trig_event('主角准备')
                            else
                                self.obj.getChildByName('状态').text = tostring(1) 
                                G.trig_event('选择攻击目标')
                            end 
                    
                        end   
                    end
                    if i == 8 then --发动绝招后怒气清0
                        G.call('set_point',48,0) 
                        G.call('set_newpoint',48,-math.random(5))
                    end     
                end 
            end             
        end 
    end
    if G.misc().战斗状态 == 0 then 
        for i = 1,4 do 
            if key == 键值[i]  then 
                if self.按钮.getChildByName(快捷[i]).mouseEnabled  == true then  
                    G.misc().战斗状态 = 1
                    if G.QueryName(0x100c0001)[tostring(10+i)] ~= nil and G.QueryName(G.QueryName(0x100c0001)[tostring(10+i)]).数量 > 0 then 
                        self.obj.getChildByName('状态').text = tostring(2) 
                        self.obj.getChildByName('代码').getChildByName(位置[1]).text = tostring(G.QueryName(0x100c0001)[tostring(i+10)]-0x100b0000)
                        G.trig_event('主角准备')
                    end 
                end        
            end 
        end 
    end
end    
function t:click(tar)
    local i_battle = 0x10150001
    local 快捷 = {'q','w','e','r'}
    if tar == self.主菜单.getChildByName('菜单').getChildByName(tostring(1)) then
        G.Play(0x49011003, 1,false,100) 
        G.addUI('v_nature')
    elseif tar == self.主菜单.getChildByName('菜单').getChildByName(tostring(3)) then
        G.Play(0x49011003, 1,false,100) 
        G.addUI('v_skill')
    end 
    if tar == self.obj.getChildByName('逃跑') then
        G.trig_event('逃跑')
  
    end    
    -- if tar == self.obj.getChildByName('返回')   then
    --     self.obj.getChildByName('状态').text = tostring(0) 
    --     --self.obj.getChildByName('select').visible = false
    --     G.trig_event('选择目标')
    --     G.misc().战斗状态 = 0
    -- end 
    if G.misc().战斗状态 == 0 then  
        local int_队友 = 0
        local i_magic_阵法 =  G.QueryName(0x100c0001)[tostring(15)]
        for i = 2,5 do 
            if G.QueryName(0x10150001)[位置[i]] > 0 then 
                if G.QueryName(0x10040000 + G.QueryName(0x10150001)[位置[i]] ).生命 > 0 then 
                    int_队友 = int_队友 + 1
                end
            end
        end
        for i = 1,8 do 
            if tar == self.按钮.getChildByName(tostring(i)) or tar == self.副按钮.getChildByName(tostring(i)) then 
                G.trig_event('监控')
                if G.call('get_point',84) > 0 then 
                    G.call('notice1','内伤无法使用武功')
                else
                    G.misc().战斗状态 = 1
                    self.obj.getChildByName('代码').getChildByName(位置[1]).text = tostring(G.QueryName(0x100c0001)[tostring(i)]-0x10050000)
                    local i_skill = G.QueryName(0x100c0001)[tostring(i)]
                    local o_skill = G.QueryName(i_skill)
                    if o_skill.范围 == 0 or o_skill.范围 == 1 then 
                        if G.call('get_point',46) > 0 then 
                            self.obj.getChildByName('状态').text = tostring(1) 
                            G.trig_event('主角准备')
                        else
                            G.misc().战斗状态 = 0
                            G.call('notice1','内力为0无法使用辅助武功')   
                        end     
                    elseif  o_skill.范围 == 5 then  
                        self.obj.getChildByName('状态').text = tostring(1) 
                        G.trig_event('主角准备')
                    elseif i_magic_阵法 and G.QueryName(i_magic_阵法).附加效果 == 9 and int_队友 >= 4   then
                        self.obj.getChildByName('状态').text = tostring(1) 
                        G.misc().范围无双 = 1
                        G.trig_event('主角准备')
                    else
                        self.obj.getChildByName('状态').text = tostring(1) 
                        G.trig_event('选择攻击目标')
                    end 
                    
                end 
                if i == 8 then --发动绝招后怒气清0
                    G.call('set_point',48,0) 
                    G.call('set_newpoint',48,-math.random(5))
                end   
            end 
        end   
    end
    if G.misc().战斗状态 == 0 then 
        for i = 1,4 do 
            if tar == self.按钮.getChildByName(快捷[i])      then 
                self.obj.getChildByName('状态').text = tostring(2) 
                G.misc().战斗状态 = 1
                self.obj.getChildByName('代码').getChildByName(位置[1]).text = tostring(G.QueryName(0x100c0001)[tostring(i+10)]-0x100b0000 )
                G.trig_event('主角准备')
            end     
        end 
    end
    local int_代码 = tonumber(self.obj.getChildByName('代码').getChildByName(位置[1]).text)
    -- if G.misc().战斗状态 == 0 and  self.obj.getChildByName('map').getChildByName(位置[1]).x <= 150  and self.obj.getChildByName('状态').text == tostring(1) then 
    --     if  G.QueryName(0x10050000+int_代码).范围 == 2  then 
    --         for i = 6,11 do 
    --             if tar == self.obj.getChildByName('tab').getChildByName(位置[i]) then 
    --                 self.obj.getChildByName('单目标').text = tostring(i) 
    --                 G.Tween("color", 300,self.obj.getChildByName('tab').getChildByName(位置[i]) , 0xffffff)
    --                 G.trig_event('选择目标')
    --             end        
    --         end
    --     elseif  G.QueryName(0x10050000+int_代码).范围 == 3  then 
    --         if tar == self.obj.getChildByName('横一') then
    --             self.obj.getChildByName('横目标').text = tostring(1) 
    --             self.obj.getChildByName('横一').getChildByName('图片').visible = false
    --             G.trig_event('选择目标')
    --         elseif  tar == self.obj.getChildByName('横二') then  
    --             self.obj.getChildByName('横目标').text = tostring(2)
    --             self.obj.getChildByName('横二').getChildByName('图片').visible = false
    --             G.trig_event('选择目标')
    --         end 
    --     elseif  G.QueryName(0x10050000+int_代码).范围 == 4  then    
    --         if tar == self.obj.getChildByName('纵一') then
    --             self.obj.getChildByName('纵目标').text = tostring(1) 
    --             self.obj.getChildByName('纵一').getChildByName('图片').visible = false
    --             G.trig_event('选择目标')
    --         elseif  tar == self.obj.getChildByName('纵二') then  
    --             self.obj.getChildByName('纵目标').text = tostring(2)
    --             self.obj.getChildByName('纵二').getChildByName('图片').visible = false
    --             G.trig_event('选择目标')
    --         elseif  tar == self.obj.getChildByName('纵三') then  
    --             self.obj.getChildByName('纵目标').text = tostring(3)
    --             self.obj.getChildByName('纵三').getChildByName('图片').visible = false
    --             G.trig_event('选择目标')
    --         end 

    --     end      
 
    -- end 
    if tar == self.obj.getChildByName('note') then
        if self.记事本.visible == false then 
            self.记事本.visible = true
        else
            self.记事本.visible = false
        end 
    end
    if tar == self.obj.getChildByName('select') then 
        if G.misc().自动 == 0 then 
            G.misc().自动 = 1
            self.obj.getChildByName('select').style = 8
            self.obj.getChildByName('select').text = '自动选择目标ON'
        elseif G.misc().自动 == 1 then 
            G.misc().自动 = 0
            self.obj.getChildByName('select').style = 1
            self.obj.getChildByName('select').text = '自动选择目标OFF'
        end     

    end

end        
return t