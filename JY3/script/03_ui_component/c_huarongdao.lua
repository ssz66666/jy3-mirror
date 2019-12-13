--[[3037

]]

local G = require "gf"
local t = G.com()
function t:init()
    self.x = -152
    self.y = 78
    self.w = 60
    self.h = 45
    self.按钮内 = self.obj.getChildByName('底层按键')
    self.按钮外 = self.obj.getChildByName('外层按键')
    self.板块_1 = 2
    self.板块_2 = 1
    self.板块_3 = 4
    self.板块_4 = 9
    self.板块_5 = 12
    self.板块_6 = 10
    self.板块_7 = 14
    self.板块_8 = 15
    self.板块_9 = 17
    self.板块_10 = 20
    self.当前按钮 = 0
    self.模式 = 1
end
function t:start()
    self.模式 = math.ceil(math.random(100)/20)
    if self.模式 == 2  then
        self.板块_7 = 9
        self.板块_8 = 12
        self.板块_9 = 13
        self.板块_10 = 16
        self.板块_4 = 14
        self.板块_5 = 18
        for i = 4,5 do
            self.按钮外.getChildByName(tostring(i)).width = 128
            self.按钮外.getChildByName(tostring(i)).height = 46
            self.按钮外.getChildByName(tostring(i)).getChildByName('闪光').width = 156
            self.按钮外.getChildByName(tostring(i)).getChildByName('闪光').height = 58  
        end
    elseif self.模式 == 3  then
        self.板块_5 = 14
        self.板块_7 = 12
        self.板块_8 = 16
        self.按钮外.getChildByName(tostring(5)).width = 128
        self.按钮外.getChildByName(tostring(5)).height = 46
        self.按钮外.getChildByName(tostring(5)).getChildByName('闪光').width = 156
        self.按钮外.getChildByName(tostring(5)).getChildByName('闪光').height = 58
    elseif self.模式 == 4  then
        self.板块_1 = 1
        self.板块_4 = 3
        self.板块_3 = 7
        self.板块_2 = 9
        self.板块_5 = 14
        self.板块_7 = 12
        self.板块_8 = 16
        for i = 3,5 do
            self.按钮外.getChildByName(tostring(i)).width = 128
            self.按钮外.getChildByName(tostring(i)).height = 46
            self.按钮外.getChildByName(tostring(i)).getChildByName('闪光').width = 156
            self.按钮外.getChildByName(tostring(i)).getChildByName('闪光').height = 58  
        end
    elseif self.模式 == 5  then
        self.板块_1 = 1
        self.板块_2 = 3
        self.板块_3 = 7
        self.板块_6 = 14
        self.板块_4 = 9
        self.板块_5 = 11
        self.板块_7 = 13
        self.板块_8 = 16
        for i = 2,5 do
            self.按钮外.getChildByName(tostring(i)).width = 128
            self.按钮外.getChildByName(tostring(i)).height = 46
            self.按钮外.getChildByName(tostring(i)).getChildByName('闪光').width = 156
            self.按钮外.getChildByName(tostring(i)).getChildByName('闪光').height = 58  
        end
    end
    self:刷新显示()
end
function t:刷新显示()
    self.按钮外.getChildByName(tostring(1)).x = -150 + math.floor(self.板块_1%4)*63
    self.按钮外.getChildByName(tostring(1)).y = 79 - math.floor(self.板块_1/4 + 1)*48
    if self.模式 == 1 then 
        self.按钮外.getChildByName(tostring(6)).x = -150 + math.floor(self.板块_6%4)*63
        self.按钮外.getChildByName(tostring(6)).y = 79 - math.floor(self.板块_6/4)*48 - 24
        for i = 2,5 do
            self.按钮外.getChildByName(tostring(i)).x = -150 + math.floor((self['板块_'..tostring(i)] - 1)%4)*63 + 31.5
            self.按钮外.getChildByName(tostring(i)).y = 79 - math.floor((self['板块_'..tostring(i)] -1 )/4 + 1)*48 
        end
    elseif self.模式 == 2 then 
        for i = 4,6 do
            self.按钮外.getChildByName(tostring(i)).x = -150 + math.floor(self['板块_'..tostring(i)]%4)*63
            self.按钮外.getChildByName(tostring(i)).y = 79 - math.floor(self['板块_'..tostring(i)]/4)*48 - 24
        end 
        for i = 2,3 do
            self.按钮外.getChildByName(tostring(i)).x = -150 + math.floor((self['板块_'..tostring(i)] - 1)%4)*63 + 31.5
            self.按钮外.getChildByName(tostring(i)).y = 79 - math.floor((self['板块_'..tostring(i)] -1 )/4 + 1)*48 
        end 
    elseif self.模式 == 3 then
        for i = 5,6 do
            self.按钮外.getChildByName(tostring(i)).x = -150 + math.floor(self['板块_'..tostring(i)]%4)*63
            self.按钮外.getChildByName(tostring(i)).y = 79 - math.floor(self['板块_'..tostring(i)]/4)*48 - 24
        end 
        for i = 2,4 do
            self.按钮外.getChildByName(tostring(i)).x = -150 + math.floor((self['板块_'..tostring(i)] - 1)%4)*63 + 31.5
            self.按钮外.getChildByName(tostring(i)).y = 79 - math.floor((self['板块_'..tostring(i)] -1 )/4 + 1)*48 
        end 
    elseif self.模式 == 4 then
        for i = 3,6 do
            self.按钮外.getChildByName(tostring(i)).x = -150 + math.floor(self['板块_'..tostring(i)]%4)*63
            self.按钮外.getChildByName(tostring(i)).y = 79 - math.floor(self['板块_'..tostring(i)]/4)*48 - 24
        end 
        for i = 2,2 do
            self.按钮外.getChildByName(tostring(i)).x = -150 + math.floor((self['板块_'..tostring(i)] - 1)%4)*63 + 31.5
            self.按钮外.getChildByName(tostring(i)).y = 79 - math.floor((self['板块_'..tostring(i)] -1 )/4 + 1)*48 
        end 
    elseif self.模式 == 5 then
        for i = 2,6 do
            self.按钮外.getChildByName(tostring(i)).x = -150 + math.floor(self['板块_'..tostring(i)]%4)*63
            self.按钮外.getChildByName(tostring(i)).y = 79 - math.floor(self['板块_'..tostring(i)]/4)*48 - 24
        end 
    end
    for i = 7,10 do
        self.按钮外.getChildByName(tostring(i)).x = -150 + math.floor((self['板块_'..tostring(i)] - 1)%4)*63 + 31.5
        self.按钮外.getChildByName(tostring(i)).y = 79 - math.floor((self['板块_'..tostring(i)] -1 )/4 )*48 - 24
    end
    for i = 1,10 do 
        self.按钮外.getChildByName(tostring(i)).getChildByName('闪光').visible = false
    end
    if self.当前按钮 > 0 then
        self.按钮外.getChildByName(tostring(self.当前按钮)).getChildByName('闪光').visible = true 
    end
    if self.板块_1 == 14 then 
        G.misc().拼图结果 = 1
        G.trig_event('huarongdao_over')
    end
end
function t:click(tar)
    for i = 1,10 do 
        if tar == self.按钮外.getChildByName(tostring(i)) then 
            self.当前按钮 = i
        end
    end
    if self.当前按钮 == 1 then 
        if self.板块_1 == 1 then
            if tar == self.按钮内.getChildByName(tostring(9)) or tar == self.按钮内.getChildByName(tostring(10)) then
                if G.call('通用_华容道版块可移动',9) and  G.call('通用_华容道版块可移动',10) then
                    self.板块_1 = 5
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(3)) or tar == self.按钮内.getChildByName(tostring(7)) then
                if G.call('通用_华容道版块可移动',3) and  G.call('通用_华容道版块可移动',7) then
                    self.板块_1 = 2
                    self.当前按钮 = 0 
                end
            end
        elseif self.板块_1 == 2 then
            if tar == self.按钮内.getChildByName(tostring(1)) or tar == self.按钮内.getChildByName(tostring(5)) then
                if G.call('通用_华容道版块可移动',1) and  G.call('通用_华容道版块可移动',5) then
                    self.板块_1 = 1
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(4)) or tar == self.按钮内.getChildByName(tostring(8)) then
                if G.call('通用_华容道版块可移动',4) and  G.call('通用_华容道版块可移动',8) then
                    self.板块_1 = 3
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(10)) or tar == self.按钮内.getChildByName(tostring(11)) then
                if G.call('通用_华容道版块可移动',10) and  G.call('通用_华容道版块可移动',11) then
                    self.板块_1 = 6
                    self.当前按钮 = 0 
                end
            end
        elseif self.板块_1 == 3 then
            if tar == self.按钮内.getChildByName(tostring(2)) or tar == self.按钮内.getChildByName(tostring(6)) then
                if G.call('通用_华容道版块可移动',2) and  G.call('通用_华容道版块可移动',6) then
                    self.板块_1 = 2
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(11)) or tar == self.按钮内.getChildByName(tostring(12)) then
                if G.call('通用_华容道版块可移动',11) and  G.call('通用_华容道版块可移动',12) then
                    self.板块_1 = 7
                    self.当前按钮 = 0 
                end
            end
        elseif self.板块_1 == 5 then
            if tar == self.按钮内.getChildByName(tostring(7)) or tar == self.按钮内.getChildByName(tostring(11)) then
                if G.call('通用_华容道版块可移动',7) and  G.call('通用_华容道版块可移动',11) then
                    self.板块_1 = 6
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(13)) or tar == self.按钮内.getChildByName(tostring(14)) then
                if G.call('通用_华容道版块可移动',13) and  G.call('通用_华容道版块可移动',14) then
                    self.板块_1 = 9
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(1)) or tar == self.按钮内.getChildByName(tostring(2)) then
                if G.call('通用_华容道版块可移动',1) and  G.call('通用_华容道版块可移动',2) then
                    self.板块_1 = 1
                    self.当前按钮 = 0 
                end
            end
        elseif self.板块_1 == 6 then
            if tar == self.按钮内.getChildByName(tostring(8)) or tar == self.按钮内.getChildByName(tostring(12)) then
                if G.call('通用_华容道版块可移动',8) and  G.call('通用_华容道版块可移动',12) then
                    self.板块_1 = 7
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(15)) or tar == self.按钮内.getChildByName(tostring(14)) then
                if G.call('通用_华容道版块可移动',15) and  G.call('通用_华容道版块可移动',14) then
                    self.板块_1 = 10
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(5)) or tar == self.按钮内.getChildByName(tostring(9)) then
                if G.call('通用_华容道版块可移动',5) and  G.call('通用_华容道版块可移动',9) then
                    self.板块_1 = 5
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(2)) or tar == self.按钮内.getChildByName(tostring(3)) then
                if G.call('通用_华容道版块可移动',2) and  G.call('通用_华容道版块可移动',3) then
                    self.板块_1 = 2
                    self.当前按钮 = 0 
                end
            end
        elseif self.板块_1 == 7 then
            if tar == self.按钮内.getChildByName(tostring(10)) or tar == self.按钮内.getChildByName(tostring(6)) then
                if G.call('通用_华容道版块可移动',10) and  G.call('通用_华容道版块可移动',6) then
                    self.板块_1 = 6
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(15)) or tar == self.按钮内.getChildByName(tostring(16)) then
                if G.call('通用_华容道版块可移动',15) and  G.call('通用_华容道版块可移动',16) then
                    self.板块_1 = 11
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(3)) or tar == self.按钮内.getChildByName(tostring(4)) then
                if G.call('通用_华容道版块可移动',3) and  G.call('通用_华容道版块可移动',4) then
                    self.板块_1 = 3
                    self.当前按钮 = 0 
                end
            end
        elseif self.板块_1 == 9 then
            if tar == self.按钮内.getChildByName(tostring(15)) or tar == self.按钮内.getChildByName(tostring(11)) then
                if G.call('通用_华容道版块可移动',15) and  G.call('通用_华容道版块可移动',11) then
                    self.板块_1 = 10
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(17)) or tar == self.按钮内.getChildByName(tostring(18)) then
                if G.call('通用_华容道版块可移动',17) and  G.call('通用_华容道版块可移动',18) then
                    self.板块_1 = 13
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(5)) or tar == self.按钮内.getChildByName(tostring(6)) then
                if G.call('通用_华容道版块可移动',5) and  G.call('通用_华容道版块可移动',6) then
                    self.板块_1 = 5
                    self.当前按钮 = 0 
                end
            end
        elseif self.板块_1 == 10 then
            if tar == self.按钮内.getChildByName(tostring(16)) or tar == self.按钮内.getChildByName(tostring(12)) then
                if G.call('通用_华容道版块可移动',16) and  G.call('通用_华容道版块可移动',12) then
                    self.板块_1 = 11
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(18)) or tar == self.按钮内.getChildByName(tostring(19)) then
                if G.call('通用_华容道版块可移动',18) and  G.call('通用_华容道版块可移动',19) then
                    self.板块_1 = 14
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(13)) or tar == self.按钮内.getChildByName(tostring(9)) then
                if G.call('通用_华容道版块可移动',13) and  G.call('通用_华容道版块可移动',9) then
                    self.板块_1 = 9
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(6)) or tar == self.按钮内.getChildByName(tostring(7)) then
                if G.call('通用_华容道版块可移动',6) and  G.call('通用_华容道版块可移动',7) then
                    self.板块_1 = 6
                    self.当前按钮 = 0 
                end
            end
        elseif self.板块_1 == 11 then
            if tar == self.按钮内.getChildByName(tostring(10)) or tar == self.按钮内.getChildByName(tostring(14)) then
                if G.call('通用_华容道版块可移动',10) and  G.call('通用_华容道版块可移动',14) then
                    self.板块_1 = 10
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(19)) or tar == self.按钮内.getChildByName(tostring(20)) then
                if G.call('通用_华容道版块可移动',19) and  G.call('通用_华容道版块可移动',20) then
                    self.板块_1 = 15
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(7)) or tar == self.按钮内.getChildByName(tostring(8)) then
                if G.call('通用_华容道版块可移动',7) and  G.call('通用_华容道版块可移动',8) then
                    self.板块_1 = 7
                    self.当前按钮 = 0 
                end
            end
        elseif self.板块_1 == 13 then
            if tar == self.按钮内.getChildByName(tostring(15)) or tar == self.按钮内.getChildByName(tostring(19)) then
                if G.call('通用_华容道版块可移动',15) and  G.call('通用_华容道版块可移动',19) then
                    self.板块_1 = 14
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(9)) or tar == self.按钮内.getChildByName(tostring(10)) then
                if G.call('通用_华容道版块可移动',5) and  G.call('通用_华容道版块可移动',6) then
                    self.板块_1 = 9
                    self.当前按钮 = 0 
                end
            end
        elseif self.板块_1 == 14 then
            if tar == self.按钮内.getChildByName(tostring(16)) or tar == self.按钮内.getChildByName(tostring(20)) then
                if G.call('通用_华容道版块可移动',16) and  G.call('通用_华容道版块可移动',20) then
                    self.板块_1 = 15
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(13)) or tar == self.按钮内.getChildByName(tostring(17)) then
                if G.call('通用_华容道版块可移动',13) and  G.call('通用_华容道版块可移动',17) then
                    self.板块_1 = 13
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(10)) or tar == self.按钮内.getChildByName(tostring(11)) then
                if G.call('通用_华容道版块可移动',10) and  G.call('通用_华容道版块可移动',11) then
                    self.板块_1 = 10
                    self.当前按钮 = 0 
                end
            end
        elseif self.板块_1 == 15 then
            if tar == self.按钮内.getChildByName(tostring(14)) or tar == self.按钮内.getChildByName(tostring(18)) then
                if G.call('通用_华容道版块可移动',14) and  G.call('通用_华容道版块可移动',18) then
                    self.板块_1 = 14
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(11)) or tar == self.按钮内.getChildByName(tostring(12)) then
                if G.call('通用_华容道版块可移动',11) and  G.call('通用_华容道版块可移动',12) then
                    self.板块_1 = 11
                    self.当前按钮 = 0 
                end
            end
        end
    elseif (self.模式 == 1 and  self.当前按钮 == 6) or (self.模式 == 2 and (self.当前按钮 == 4 or self.当前按钮 == 5 or self.当前按钮 == 6) ) or (self.模式 == 3 and ( self.当前按钮 == 5 or self.当前按钮 == 6) ) or (self.模式 == 4 and (self.当前按钮 == 3 or self.当前按钮 == 4 or self.当前按钮 == 5 or self.当前按钮 == 6) ) or (self.模式 == 5 and (self.当前按钮 == 2 or self.当前按钮 == 3 or self.当前按钮 == 4 or self.当前按钮 == 5 or self.当前按钮 == 6) ) then
        if self['板块_'..tostring(self.当前按钮)] == 1 then
            if tar == self.按钮内.getChildByName(tostring(5)) or tar == self.按钮内.getChildByName(tostring(6)) then
                if G.call('通用_华容道版块可移动',5) and  G.call('通用_华容道版块可移动',6) then
                    self['板块_'..tostring(self.当前按钮)] = 5
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(3))  then
                if G.call('通用_华容道版块可移动',3)  then
                    self['板块_'..tostring(self.当前按钮)] = 2
                    self.当前按钮 = 0 
                end
            end
        elseif self['板块_'..tostring(self.当前按钮)] == 2 then
            if tar == self.按钮内.getChildByName(tostring(1)) then
                if G.call('通用_华容道版块可移动',1)  then
                    self['板块_'..tostring(self.当前按钮)] = 1
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(4)) then
                if G.call('通用_华容道版块可移动',4) then
                    self['板块_'..tostring(self.当前按钮)] = 3
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(6)) or tar == self.按钮内.getChildByName(tostring(7)) then
                if G.call('通用_华容道版块可移动',6) and  G.call('通用_华容道版块可移动',7) then
                    self['板块_'..tostring(self.当前按钮)] = 6
                    self.当前按钮 = 0 
                end
            end
        elseif self['板块_'..tostring(self.当前按钮)] == 3 then
            if tar == self.按钮内.getChildByName(tostring(2))  then
                if G.call('通用_华容道版块可移动',2) then
                    self['板块_'..tostring(self.当前按钮)] = 2
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(7)) or tar == self.按钮内.getChildByName(tostring(8)) then
                if G.call('通用_华容道版块可移动',7) and  G.call('通用_华容道版块可移动',8) then
                    self['板块_'..tostring(self.当前按钮)] = 7
                    self.当前按钮 = 0 
                end
            end
        elseif self['板块_'..tostring(self.当前按钮)] == 5 then
            if tar == self.按钮内.getChildByName(tostring(7))  then
                if G.call('通用_华容道版块可移动',7)  then
                    self['板块_'..tostring(self.当前按钮)] = 6
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(9)) or tar == self.按钮内.getChildByName(tostring(10)) then
                if G.call('通用_华容道版块可移动',9) and  G.call('通用_华容道版块可移动',10) then
                    self['板块_'..tostring(self.当前按钮)] = 9
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(1)) or tar == self.按钮内.getChildByName(tostring(2)) then
                if G.call('通用_华容道版块可移动',1) and  G.call('通用_华容道版块可移动',2) then
                    self['板块_'..tostring(self.当前按钮)] = 1
                    self.当前按钮 = 0 
                end
            end
        elseif self['板块_'..tostring(self.当前按钮)] == 6 then
            if tar == self.按钮内.getChildByName(tostring(8))  then
                if G.call('通用_华容道版块可移动',8)  then
                    self['板块_'..tostring(self.当前按钮)] = 7
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(11)) or tar == self.按钮内.getChildByName(tostring(10)) then
                if G.call('通用_华容道版块可移动',11) and  G.call('通用_华容道版块可移动',10) then
                    self['板块_'..tostring(self.当前按钮)] = 10
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(5))  then
                if G.call('通用_华容道版块可移动',5)  then
                    self['板块_'..tostring(self.当前按钮)] = 5
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(2)) or tar == self.按钮内.getChildByName(tostring(3)) then
                if G.call('通用_华容道版块可移动',2) and  G.call('通用_华容道版块可移动',3) then
                    self['板块_'..tostring(self.当前按钮)] = 2
                    self.当前按钮 = 0 
                end
            end
        elseif self['板块_'..tostring(self.当前按钮)] == 7 then
            if  tar == self.按钮内.getChildByName(tostring(6)) then
                if   G.call('通用_华容道版块可移动',6) then
                    self['板块_'..tostring(self.当前按钮)] = 6
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(11)) or tar == self.按钮内.getChildByName(tostring(12)) then
                if G.call('通用_华容道版块可移动',11) and  G.call('通用_华容道版块可移动',12) then
                    self['板块_'..tostring(self.当前按钮)] = 11
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(3)) or tar == self.按钮内.getChildByName(tostring(4)) then
                if G.call('通用_华容道版块可移动',3) and  G.call('通用_华容道版块可移动',4) then
                    self['板块_'..tostring(self.当前按钮)] = 3
                    self.当前按钮 = 0 
                end
            end
        elseif self['板块_'..tostring(self.当前按钮)] == 9 then
            if tar == self.按钮内.getChildByName(tostring(11)) then
                if  G.call('通用_华容道版块可移动',11) then
                    self['板块_'..tostring(self.当前按钮)] = 10
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(13)) or tar == self.按钮内.getChildByName(tostring(14)) then
                if G.call('通用_华容道版块可移动',13) and  G.call('通用_华容道版块可移动',14) then
                    self['板块_'..tostring(self.当前按钮)] = 13
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(5)) or tar == self.按钮内.getChildByName(tostring(6)) then
                if G.call('通用_华容道版块可移动',5) and  G.call('通用_华容道版块可移动',6) then
                    self['板块_'..tostring(self.当前按钮)] = 5
                    self.当前按钮 = 0 
                end
            end
        elseif self['板块_'..tostring(self.当前按钮)] == 10 then
            if  tar == self.按钮内.getChildByName(tostring(12)) then
                if  G.call('通用_华容道版块可移动',12) then
                    self['板块_'..tostring(self.当前按钮)] = 11
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(14)) or tar == self.按钮内.getChildByName(tostring(15)) then
                if G.call('通用_华容道版块可移动',14) and  G.call('通用_华容道版块可移动',15) then
                    self['板块_'..tostring(self.当前按钮)] = 14
                    self.当前按钮 = 0 
                end
            elseif  tar == self.按钮内.getChildByName(tostring(9)) then
                if  G.call('通用_华容道版块可移动',9) then
                    self['板块_'..tostring(self.当前按钮)] = 9
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(6)) or tar == self.按钮内.getChildByName(tostring(7)) then
                if G.call('通用_华容道版块可移动',6) and  G.call('通用_华容道版块可移动',7) then
                    self['板块_'..tostring(self.当前按钮)] = 6
                    self.当前按钮 = 0 
                end
            end
        elseif self['板块_'..tostring(self.当前按钮)] == 11 then
            if tar == self.按钮内.getChildByName(tostring(10)) then
                if G.call('通用_华容道版块可移动',10) then
                    self['板块_'..tostring(self.当前按钮)] = 10
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(15)) or tar == self.按钮内.getChildByName(tostring(16)) then
                if G.call('通用_华容道版块可移动',15) and  G.call('通用_华容道版块可移动',16) then
                    self['板块_'..tostring(self.当前按钮)] = 15
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(7)) or tar == self.按钮内.getChildByName(tostring(8)) then
                if G.call('通用_华容道版块可移动',7) and  G.call('通用_华容道版块可移动',8) then
                    self['板块_'..tostring(self.当前按钮)] = 7
                    self.当前按钮 = 0 
                end
            end
        elseif self['板块_'..tostring(self.当前按钮)] == 13 then
            if tar == self.按钮内.getChildByName(tostring(15))  then
                if G.call('通用_华容道版块可移动',15)  then
                    self['板块_'..tostring(self.当前按钮)] = 14
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(9)) or tar == self.按钮内.getChildByName(tostring(10)) then
                if G.call('通用_华容道版块可移动',5) and  G.call('通用_华容道版块可移动',6) then
                    self['板块_'..tostring(self.当前按钮)] = 9
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(17)) or tar == self.按钮内.getChildByName(tostring(18)) then
                if G.call('通用_华容道版块可移动',17) and  G.call('通用_华容道版块可移动',18) then
                    self['板块_'..tostring(self.当前按钮)] = 17
                    self.当前按钮 = 0 
                end
            end
        elseif self['板块_'..tostring(self.当前按钮)] == 14 then
            if tar == self.按钮内.getChildByName(tostring(16))  then
                if G.call('通用_华容道版块可移动',16)  then
                    self['板块_'..tostring(self.当前按钮)] = 15
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(15))  then
                if G.call('通用_华容道版块可移动',15) then 
                    self['板块_'..tostring(self.当前按钮)] = 15
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(10)) or tar == self.按钮内.getChildByName(tostring(11)) then
                if G.call('通用_华容道版块可移动',10) and  G.call('通用_华容道版块可移动',11) then
                    self['板块_'..tostring(self.当前按钮)] = 10
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(18)) or tar == self.按钮内.getChildByName(tostring(19)) then
                if G.call('通用_华容道版块可移动',18) and  G.call('通用_华容道版块可移动',19) then
                    self['板块_'..tostring(self.当前按钮)] = 18
                    self.当前按钮 = 0 
                end
            end
        elseif self['板块_'..tostring(self.当前按钮)] == 15 then
            if tar == self.按钮内.getChildByName(tostring(14)) then
                if G.call('通用_华容道版块可移动',14)  then
                    self['板块_'..tostring(self.当前按钮)] = 14
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(11)) or tar == self.按钮内.getChildByName(tostring(12)) then
                if G.call('通用_华容道版块可移动',11) and  G.call('通用_华容道版块可移动',12) then
                    self['板块_'..tostring(self.当前按钮)] = 11
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(19)) or tar == self.按钮内.getChildByName(tostring(20)) then
                if G.call('通用_华容道版块可移动',19) and  G.call('通用_华容道版块可移动',20) then
                    self['板块_'..tostring(self.当前按钮)] = 19
                    self.当前按钮 = 0 
                end
            end
        elseif self['板块_'..tostring(self.当前按钮)] == 17 then
            if tar == self.按钮内.getChildByName(tostring(19))  then
                if G.call('通用_华容道版块可移动',19)  then
                    self['板块_'..tostring(self.当前按钮)] = 18
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(13)) or tar == self.按钮内.getChildByName(tostring(14)) then
                if G.call('通用_华容道版块可移动',13) and  G.call('通用_华容道版块可移动',14) then
                    self['板块_'..tostring(self.当前按钮)] = 13
                    self.当前按钮 = 0 
                end
            end
        elseif self['板块_'..tostring(self.当前按钮)] == 18 then
            if tar == self.按钮内.getChildByName(tostring(20))  then
                if G.call('通用_华容道版块可移动',20)  then
                    self['板块_'..tostring(self.当前按钮)] = 19
                    self.当前按钮 = 0 
                end
            elseif  tar == self.按钮内.getChildByName(tostring(17)) then
                if  G.call('通用_华容道版块可移动',17) then
                    self['板块_'..tostring(self.当前按钮)] = 17
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(14)) or tar == self.按钮内.getChildByName(tostring(15)) then
                if G.call('通用_华容道版块可移动',14) and  G.call('通用_华容道版块可移动',15) then
                    self['板块_'..tostring(self.当前按钮)] = 14
                    self.当前按钮 = 0 
                end
            end
        elseif self['板块_'..tostring(self.当前按钮)] == 19 then
            if tar == self.按钮内.getChildByName(tostring(18)) then
                if G.call('通用_华容道版块可移动',18)  then
                    self['板块_'..tostring(self.当前按钮)] = 18
                    self.当前按钮 = 0 
                end
            elseif tar == self.按钮内.getChildByName(tostring(15)) or tar == self.按钮内.getChildByName(tostring(16)) then
                if G.call('通用_华容道版块可移动',15) and  G.call('通用_华容道版块可移动',16) then
                    self['板块_'..tostring(self.当前按钮)] = 15
                    self.当前按钮 = 0 
                end
            end    
        end
    elseif ((self.当前按钮 == 2 or self.当前按钮 == 3 or self.当前按钮 == 4 or self.当前按钮 == 5) and self.模式 == 1) or ((self.当前按钮 == 2 or self.当前按钮 == 3 ) and self.模式 == 2) or ((self.当前按钮 == 2 or self.当前按钮 == 3 or self.当前按钮 == 4) and self.模式 == 3) or (self.当前按钮 == 2  and self.模式 == 4) then    
        local int_版块 = self['板块_'..tostring(self.当前按钮)]
        local int_减 = self['板块_'..tostring(self.当前按钮)] - 1
        local int_加 = self['板块_'..tostring(self.当前按钮)] + 1
        local int_上 = self['板块_'..tostring(self.当前按钮)] - 4
        local int_下 = self['板块_'..tostring(self.当前按钮)] + 8
        if int_减 > 0 and (int_版块-1)%4 > 0 then
            if tar == self.按钮内.getChildByName(tostring(int_减)) or tar == self.按钮内.getChildByName(tostring(int_减+4))  then
                if G.call('通用_华容道版块可移动',int_减) and G.call('通用_华容道版块可移动',int_减+4) then 
                    self['板块_'..tostring(self.当前按钮)] = int_减
                    self.当前按钮 = 0 
                end
            end
        end
        if int_加 <= 20  and int_版块%4 > 0 then
            if tar == self.按钮内.getChildByName(tostring(int_加)) or tar == self.按钮内.getChildByName(tostring(int_加+4))  then
                if G.call('通用_华容道版块可移动',int_加) and G.call('通用_华容道版块可移动',int_加+4) then 
                    self['板块_'..tostring(self.当前按钮)] = int_加
                    self.当前按钮 = 0 
                end
            end
        end
        if int_上 > 0  then
            if tar == self.按钮内.getChildByName(tostring(int_上)) then
                if G.call('通用_华容道版块可移动',int_上) then 
                    self['板块_'..tostring(self.当前按钮)] = int_上 
                    self.当前按钮 = 0 
                end
            end
        end
        if int_下 <= 20  then
            if tar == self.按钮内.getChildByName(tostring(int_下)) then
                if G.call('通用_华容道版块可移动',int_下) then 
                    self['板块_'..tostring(self.当前按钮)] = int_下 - 4
                    self.当前按钮 = 0 
                end
            end
        end
    elseif self.当前按钮 == 7 or self.当前按钮 == 8 or self.当前按钮 == 9 or self.当前按钮 == 10  then  
        local int_版块 = self['板块_'..tostring(self.当前按钮)]
        local int_减 = self['板块_'..tostring(self.当前按钮)] - 1
        local int_加 = self['板块_'..tostring(self.当前按钮)] + 1
        local int_上 = self['板块_'..tostring(self.当前按钮)] - 4
        local int_下 = self['板块_'..tostring(self.当前按钮)] + 4
        if int_减 > 0 and (int_版块-1)%4 > 0 then
            if tar == self.按钮内.getChildByName(tostring(int_减)) then
                if G.call('通用_华容道版块可移动',int_减) then 
                    self['板块_'..tostring(self.当前按钮)] = int_减
                    self.当前按钮 = 0 
                end
            end
        end
        if int_加 <= 20  and int_版块%4 > 0 then
            if tar == self.按钮内.getChildByName(tostring(int_加)) then
                if G.call('通用_华容道版块可移动',int_加) then 
                    self['板块_'..tostring(self.当前按钮)] = int_加
                    self.当前按钮 = 0 
                end
            end
        end
        if int_上 > 0  then
            if tar == self.按钮内.getChildByName(tostring(int_上)) then
                if G.call('通用_华容道版块可移动',int_上) then 
                    self['板块_'..tostring(self.当前按钮)] = int_上
                    self.当前按钮 = 0 
                end
            end
        end
        if int_下 <= 20  then
            if tar == self.按钮内.getChildByName(tostring(int_下)) then
                if G.call('通用_华容道版块可移动',int_下) then 
                    self['板块_'..tostring(self.当前按钮)] = int_下
                    self.当前按钮 = 0 
                end
            end
        end
    end
    if tar == self.obj.getChildByName('认输') then 
        G.misc().拼图结果 = 0
        G.trig_event('huarongdao_over')
    end

    self:刷新显示()
end

return t