--[[3006

]]

local G = require "gf"
local t = G.com()
function t:init()
    self.按钮 = self.obj.getChildByName('经脉按钮')
    self.图片 = self.obj.getChildByName('经脉系统').getChildByName('图片')
    self.经脉 = self.obj.getChildByName('经脉系统').getChildByName('按钮')
    self.阳维 = self.obj.getChildByName('经脉系统').getChildByName('按钮').getChildByName(tostring(1))
    self.阴维 = self.obj.getChildByName('经脉系统').getChildByName('按钮').getChildByName(tostring(2))
    self.带脉 = self.obj.getChildByName('经脉系统').getChildByName('按钮').getChildByName(tostring(3))
    self.任脉 = self.obj.getChildByName('经脉系统').getChildByName('按钮').getChildByName(tostring(4))
    self.阳跷 = self.obj.getChildByName('经脉系统').getChildByName('按钮').getChildByName(tostring(5))
    self.阴跷 = self.obj.getChildByName('经脉系统').getChildByName('按钮').getChildByName(tostring(6))
    self.冲脉 = self.obj.getChildByName('经脉系统').getChildByName('按钮').getChildByName(tostring(7))
    self.督脉 = self.obj.getChildByName('经脉系统').getChildByName('按钮').getChildByName(tostring(8))
    self.奇脉 = self.obj.getChildByName('经脉系统').getChildByName('按钮').getChildByName(tostring(9))
    self.修为点 = self.obj.getChildByName('修为点')
    self.经脉进度 = self.obj.getChildByName('经脉进度')
    self.通脉 = self.obj.getChildByName('按钮').getChildByName('tab1')
end
function t:start()
    self:刷新显示()
    --self:update()
 end
function t:刷新显示()
    if G.getUI('v_battle') then
        self.通脉.visible = false
        self.经脉.mouseEnabled = false
    else 
        self.通脉.mouseEnabled = true
        self.经脉.visible = true 
    end
    self.修为点.text = G.QueryName(0x10030001)[tostring(5)]
    local  jmdtsl = 0
    local jmzl = 0
    for i = 1,9 do 
        jmdtsl = jmdtsl + G.QueryName(0x100a0000 +i).打通数量  
        jmzl = jmzl + G.QueryName(0x100a0000 +i).经脉数量
    end     
    self.经脉进度.width = 179 * jmdtsl/jmzl
    for i = 1,9 do 
        local o_jm = 0x100a0000 
        local dtsl = G.QueryName(o_jm+i).打通数量
        for n = 1,dtsl do 
            --self.经脉.getChildByName(tostring(i)).getChildByName(tostring(n)).c_button:disable()
            self.经脉.getChildByName(tostring(i)).getChildByName(tostring(n)).state = 'd'
            self.经脉.getChildByName(tostring(i)).getChildByName(tostring(n)).mouseEnabled = false
        end 
        if G.QueryName(o_jm+i).是否打通 then
            self.按钮.getChildByName(tostring(i)).getChildByName('打通').visible = true
        else
            self.按钮.getChildByName(tostring(i)).getChildByName('打通').visible = false
        end
    end     
end 
function t:rollOver(tar)
    if tar == self.通脉 then
        tar.style  = 2
    end

end 
function t:rollOut(tar)
    if tar == self.通脉 then
        tar.style  = 8
    end
end
function t:click(tar)
    for i = 1,9 do
        if tar == self.按钮.getChildByName(tostring(i)) then
            G.Play(0x49011003, 1,false,100) 
            for n = 1,9 do
                self.按钮.getChildByName(tostring(n)).getChildByName('闪光').visible = false
                self.图片.getChildByName(tostring(n)).visible = false
                self.obj.getChildByName('经脉系统').getChildByName('按钮').getChildByName(tostring(n)).visible = false
            end 
            self.按钮.getChildByName(tostring(i)).getChildByName('闪光').visible = true
            self.图片.getChildByName(tostring(i)).visible = true
            self.obj.getChildByName('经脉系统').getChildByName('按钮').getChildByName(tostring(i)).visible = true
        end    
    end
    local o_jm = 0x100a0000 
    local o_body = G.QueryName(0x10030001)
    for i = 1,9 do 
        local jmzl = G.QueryName(o_jm+i).经脉数量
        for n = 1,jmzl-1 do
            if tar == self.经脉.getChildByName(tostring(i)).getChildByName(tostring(n)) then 
               
                if G.call('get_point',5) > 0 then 
                    G.QueryName(o_jm+i).打通数量 = G.QueryName(o_jm+i).打通数量 + 1
                    G.call('add_point',27,1) 
                    G.call('add_point',5,-1) 
                else
                    G.call('notice','修行点不足')
                end 
            end 
        
        end 
        if tar == self.经脉.getChildByName(tostring(i)).getChildByName(tostring(jmzl))  then 
           if G.QueryName(o_jm+i).打通数量 == jmzl - 1 then 
                if G.call('get_point',5) > 0 then
                    G.call('add_point',5,-1) 
                    G.call('add_point',27,1) 
                    G.QueryName(o_jm+i).打通数量 = jmzl
                    G.QueryName(o_jm+i).是否打通 = true
                    G.call('set_point',220+i,1)
                    G.Play(0x4901000f, 1,false,100)
                    G.call('notice','恭喜打通'..G.QueryName(o_jm+i).经脉名称)
                else    
                    G.call('notice','修行点不足')
                end 
            else
               G.call('notice','还没打通')

           end 
        end 
    end 
    for i = 1,9 do
        if self.obj.getChildByName('经脉系统').getChildByName('按钮').getChildByName(tostring(i)).visible == true then 
            local jmzl = G.QueryName(o_jm+i).经脉数量
            local dtsl = G.QueryName(o_jm+i).打通数量
            if tar == self.通脉 then
                if G.call('get_point',5) > 0 then
                    if dtsl < jmzl -1 then 
                        G.call('add_point',27,1) 
                        G.QueryName(o_jm+i).打通数量 = G.QueryName(o_jm+i).打通数量 + 1
                        G.call('add_point',5,-1)
                    elseif dtsl == jmzl -1 then 
                        G.call('add_point',27,1) 
                        G.call('add_point',5,-1)
                        G.QueryName(o_jm+i).打通数量 = jmzl
                        G.QueryName(o_jm+i).是否打通 = true
                        G.call('set_point',220+i,1)
                        G.Play(0x4901000f, 1,false,100)
                        G.call('notice','恭喜打通'..G.QueryName(o_jm+i).经脉名称)
                    elseif dtsl == jmzl  then  
                        G.call('notice','该经脉已经打通')   
                    end     
                else
                    G.call('notice','修行点不足')
                end
            end 
        end   
    end    
    G.call('指令_存储属性')
    local ui = G.getUI('v_nature')
    local c = ui.c_nature
    c:刷新属性()
    self:刷新显示()
end    
return t