--[[3028

]]

local G = require "gf"
local t = G.com()
function t:init()
    self.按钮 = self.obj.getChildByName('按钮')
    self.主按钮 = self.obj.getChildByName('主按钮')
    self.成就 = self.obj.getChildByName('按钮').getChildByName('主菜单')   
    self.列表 = self.成就.getChildByName('列表')  
    self.子菜单 = self.obj.getChildByName('按钮').getChildByName('子菜单')  
    self.进度 = self.obj.getChildByName('按钮').getChildByName('进度')  
    self.说明 = self.子菜单.getChildByName('说明')
    self.list_1 = {}
    self.list_13 = {}
    self.list_15 = {}
    self.list_16 = {}
    self.list_19 = {}
    self.list_22 = {}
    self.list_23 = {}
end
function t:start()
    local point = 0
    local maxpoint = 0
    local o_gpmz =  G.QueryName(0x1017000f)
    local achieve = G.DBTable('o_achieve')
    for i = 1,#achieve do 
        local o_achieve = G.QueryName(0x10170000+i)
        for n = 1,#o_achieve.进度列表 do 
            maxpoint = maxpoint + o_achieve.进度列表[n].分数
            if o_achieve.进度列表[n].完成 == 1 then
                point = point + o_achieve.进度列表[n].分数
            end
        end  
        if i >= 12 and i <= 16 then 
            for n = 1,#o_achieve.进度列表 do 
                if o_achieve.进度列表[n].完成 == 1 then 
                    o_achieve.进度列表[n].当前进度 = 1 
                else
                    o_achieve.进度列表[n].当前进度 = 0
                end    
            end
        end
    end   
    G.misc().achieve_data_i = 1  
    G.misc().achieve_data_z = math.floor( (#achieve-1)/18) + 1
    self.成就.getChildByName('点数').text = '点数:'..tostring(point)..'/'..tostring(maxpoint)  
    for x = 1, 3, 1 do
        for y = 1, 6, 1 do
            local ui_sub = G.Clone(self.列表)
            ui_sub.x = -200 + (x - 1) * 200 
            ui_sub.y = 120 + (y - 1) * -60
            self.成就.addChild(ui_sub)
            ui_sub.visible = false
            self.list_1[(y - 1) * 3 + x] = ui_sub
        end
    end 
    for x = 1, 3, 1 do
        for y = 1, 7, 1 do
            local ui_sub = G.Clone(self.进度.getChildByName(tostring(19)).getChildByName('成就'))
            ui_sub.x = -200 + (x - 1) * 200 
            ui_sub.y = 120 + (y - 1) * -50
            self.进度.getChildByName(tostring(19)).addChild(ui_sub)
            ui_sub.visible = false
            self.list_19[(y - 1) * 3 + x] = ui_sub
        end
    end 
    for x = 1, 4, 1 do
        for y = 1, 6, 1 do
            local ui_sub = G.Clone(self.进度.getChildByName(tostring(13)).getChildByName('任务'))
            ui_sub.x = 10 + (x - 1) * 150 
            ui_sub.y = 20 + (y - 1) * -60
            self.进度.getChildByName(tostring(13)).addChild(ui_sub)
            ui_sub.visible = false
            self.list_13[(y - 1) * 4 + x] = ui_sub
        end
    end 
    for x = 1, 3, 1 do
        for y = 1, 4, 1 do
            local ui_sub = G.Clone(self.进度.getChildByName(tostring(15)).getChildByName('人物'))
            ui_sub.x = -30 + (x - 1) * 200 
            ui_sub.y = -10 + (y - 1) * -90
            self.进度.getChildByName(tostring(15)).addChild(ui_sub)
            ui_sub.visible = false
            self.list_15[(y - 1) * 3 + x] = ui_sub
        end
    end 
    for x = 1, 3, 1 do
        for y = 1, 4, 1 do
            local ui_sub = G.Clone(self.进度.getChildByName(tostring(22)).getChildByName('人物'))
            ui_sub.x = -30 + (x - 1) * 200 
            ui_sub.y = -10 + (y - 1) * -90
            self.进度.getChildByName(tostring(22)).addChild(ui_sub)
            ui_sub.visible = false
            self.list_22[(y - 1) * 3 + x] = ui_sub
        end
    end 
    for x = 1, 4, 1 do
        for y = 1, 4, 1 do
            local ui_sub = G.Clone(self.进度.getChildByName(tostring(23)).getChildByName('印记'))
            ui_sub.x = -30 + (x - 1) * 150 
            ui_sub.y = -20 + (y - 1) * -85
            self.进度.getChildByName(tostring(23)).addChild(ui_sub)
            ui_sub.visible = false
            self.list_23[(y - 1) * 4 + x] = ui_sub
        end
    end 
    for x = 1, 3, 1 do
        for y = 1, 4, 1 do
            local ui_sub = G.Clone(self.进度.getChildByName(tostring(16)).getChildByName('人物'))
            ui_sub.x = -30 + (x - 1) * 200 
            ui_sub.y = -10 + (y - 1) * -90
            self.进度.getChildByName(tostring(16)).addChild(ui_sub)
            ui_sub.visible = false
            self.list_16[(y - 1) * 3 + x] = ui_sub
        end
    end 
    G.misc().data = 0
    self.obj.c_achieve:更新()
end
function t:更新()
    local achieve = G.DBTable('o_achieve')
    G.misc().achieve_显示数量 = #achieve- (G.misc().achieve_data_i-1)*18
    if G.misc().achieve_显示数量 > 18 then 
        G.misc().achieve_显示数量 = 18
    end  
    for i = 1,18 do 
        self.list_1[i].visible = false
    end  
    for i = 1,G.misc().achieve_显示数量 do 
        self.list_1[i].visible = true
        local o_achieve = G.QueryName(0x10170000+i + (G.misc().achieve_data_i-1)*18)
        self.list_1[i].getChildByName('名称').text = o_achieve.名称
        self.list_1[i].getChildByName('名称').style = 10
        if o_achieve.完成 == 0 then
            self.list_1[i].getChildByName('完成').img = 0x56160073 
        else
            self.list_1[i].getChildByName('完成').img = 0x56160072 
        end   
    end    
end
function t:rollOver(tar)
    for i = 1,18 do 
        if tar == self.成就.getChildByName(tostring(i)) then 
            self.成就.getChildByName(tostring(i)).getChildByName('名称').style = 1
        end   
    end 
    if tar == self.说明.getChildByName('详细') then 
        self.说明.getChildByName('详细').getChildByName('text').style = 1
    end    
end
function t:rollOut(tar)
    for i = 1,18 do 
        if tar == self.成就.getChildByName(tostring(i)) then 
            self.成就.getChildByName(tostring(i)).getChildByName('名称').style = 10
        end   
    end 
    if tar == self.说明.getChildByName('详细') then 
        self.说明.getChildByName('详细').getChildByName('text').style = 10 
    end  
end
function t:rclick(tar)
    local ui ;
	if not G.getUI('v_system') then 
		return
	end 
    ui = G.getUI('v_system');
    G.Play(0x49011003, 1,false,100) 
    if self.按钮.getChildByName('主菜单').visible == true then 
        G.removeUI('v_achieve')
        ui.getChildByName('按钮').visible = true
    else
       self.按钮.getChildByName('主菜单').visible = true
       self.按钮.getChildByName('子菜单').visible = false  
       self.按钮.getChildByName('进度').visible = false 
    end
end
function t:click(tar)
    local ui ;
	if not G.getUI('v_system') then 
		return
	end 
    ui = G.getUI('v_system');
    local 显示数量 = 0
    if tar == self.按钮.getChildByName('结束')  then 
        G.Play(0x49011003, 1,false,100) 
        G.removeUI('v_system')
        G.removeUI('v_achieve')
        if not G.getUI('v_title')  then
            G.call("goto_map",G.QueryName(0x10030001)[tostring(140)]-0x10060000)
        else
        local ui = G.getUI('v_title')
        ui.alpha = 255
        end
    elseif tar == self.按钮.getChildByName('返回') then
        G.Play(0x49011003, 1,false,100) 
        if self.按钮.getChildByName('主菜单').visible == true then 
            G.removeUI('v_achieve')
            ui.getChildByName('按钮').visible = true
        else
           self.主按钮.visible = true
           self.按钮.getChildByName('主菜单').visible = true
           self.按钮.getChildByName('子菜单').visible = false  
           self.按钮.getChildByName('进度').visible = false 
       end 
    end 
    for i = 1,G.misc().achieve_显示数量 do 
        local o_achieve = G.QueryName(0x10170000+i + (G.misc().achieve_data_i-1)*18)
        local point = 0
        local maxpoint = 0
        if tar == self.list_1[i] then 
            G.Play(0x49011003, 1,false,100) 
            self.进度.getChildByName('总页数').text = 1
            self.进度.getChildByName('页数').text = 1
            G.misc().data = (G.misc().achieve_data_i-1)*18 + i
            self.按钮.getChildByName('主菜单').visible = false
            self.按钮.getChildByName('子菜单').visible = true 
            self.子菜单.getChildByName('成就').getChildByName('名称').text = o_achieve.名称
            self.进度.getChildByName('成就').getChildByName('名称').text = o_achieve.名称
            self.说明.getChildByName('内容').text = o_achieve.内容
            self.说明.getChildByName('详细').visible = false
            for n = 1,#o_achieve.进度列表 do
                maxpoint = maxpoint + o_achieve.进度列表[n].分数
                if o_achieve.进度列表[n].完成 == 1 then
                    point = point + o_achieve.进度列表[n].分数
                end
            end
            self.子菜单.getChildByName('点数').text = '点数:'..tostring(point)..'/'..tostring(maxpoint)  
            if o_achieve.完成 == 0 then
                self.说明.getChildByName('完成').img = 0x56160073 
            else
                self.说明.getChildByName('完成').img = 0x56160072 
            end
            if G.misc().achieve_data_i == 1 then 
                if i == 1 then 
                    local BJ = G.call('get_point',130)
                    self.说明.getChildByName('进度').text = '本金'..tostring(math.floor(BJ))
                elseif i >= 2 then 
                    local dqjd = 0
                    local zjd = 0
                    for n = 1,#o_achieve.进度列表 do 
                        if (i == 3 or i == 6 or i == 18) and  o_achieve.进度列表[n].完成 == 1 then 
                            dqjd = dqjd + o_achieve.进度列表[n].总进度        
                        else
                            dqjd = dqjd + o_achieve.进度列表[n].当前进度       
                        end  
                        zjd = zjd + o_achieve.进度列表[n].总进度  
                    end 
                    self.说明.getChildByName('进度').text = tostring(math.floor(dqjd))..'/'..tostring(zjd)  
                end   
                if i == 3 or i == 6 or i == 18  or (i >= 12 and i <= 16) then
                    self.说明.getChildByName('详细').visible = true 
                end
            elseif G.misc().achieve_data_i == 2 then
                if i == 1  or i == 4 or i == 5 then
                    local dqjd = 0
                    local zjd = 0
                    for n = 1,#o_achieve.进度列表 do 
                        if (i == 1 or i == 4 or i == 5) and  o_achieve.进度列表[n].完成 == 1 then 
                            dqjd = dqjd + o_achieve.进度列表[n].总进度        
                        else
                            dqjd = dqjd + o_achieve.进度列表[n].当前进度       
                        end  
                        zjd = zjd + o_achieve.进度列表[n].总进度  
                    end 
                    self.说明.getChildByName('进度').text = tostring(dqjd)..'/'..tostring(zjd) 
                    self.说明.getChildByName('详细').visible = true 
                elseif i == 2 or i == 3 then 
                    self.说明.getChildByName('详细').visible = false
                    local dqjd = 0
                    local zjd = 0
                    for n = 1,#o_achieve.进度列表 do 
                        if (i == 1) and  o_achieve.进度列表[n].完成 == 1 then 
                            dqjd = dqjd + o_achieve.进度列表[n].总进度        
                        else
                            dqjd = dqjd + o_achieve.进度列表[n].当前进度       
                        end  
                        zjd = zjd + o_achieve.进度列表[n].总进度  
                    end 
                    self.说明.getChildByName('进度').text = tostring(dqjd)..'/'..tostring(zjd) 
                end
            end 
            self.主按钮.visible = false
        end
    end    
    if tar == self.主按钮.getChildByName('left') or tar == self.主按钮.getChildByName('left1') then 
        if G.misc().achieve_data_i > 1 then 
            G.misc().achieve_data_i = G.misc().achieve_data_i - 1
        else
            G.misc().achieve_data_i = G.misc().achieve_data_z
        end
    elseif tar == self.主按钮.getChildByName('right') or tar == self.主按钮.getChildByName('right1') then 
        if G.misc().achieve_data_i < G.misc().achieve_data_z then 
            G.misc().achieve_data_i = G.misc().achieve_data_i + 1
        else
            G.misc().achieve_data_i = 1
        end
    end    
    self.主按钮.getChildByName('data').text = G.misc().achieve_data_i
    if tar == self.说明.getChildByName('详细') then 
        G.Play(0x49011003, 1,false,100) 
        local o_achieve = G.QueryName(0x10170000+G.misc().data)
        self.按钮.getChildByName('子菜单').visible = false 
        self.按钮.getChildByName('进度').visible = true 
        local no = {3,6,12,13,14,15,16,18,19,22,23}
        self.进度.getChildByName('总页数').text = 1
        self.进度.getChildByName('页数').text = 1
        local point = 0
        local maxpoint = 0
        for i = 1,#no do 
            self.进度.getChildByName(tostring(no[i])).visible = false 
        end
        self.进度.getChildByName(tostring(G.misc().data)).visible = true
        if G.misc().data == 3 or G.misc().data == 6 or G.misc().data == 18 or G.misc().data == 12   then
            for i = 1,22 do 
                self.进度.getChildByName(tostring(12)).getChildByName(tostring(i)).visible = false
            end
            for i = 1,#o_achieve.进度列表 do
                if o_achieve.进度列表[i].完成 == 0 then
                    self.进度.getChildByName(tostring(G.misc().data)).getChildByName(tostring(i)).visible = true
                    self.进度.getChildByName(tostring(G.misc().data)).getChildByName(tostring(i)).getChildByName('完成').img = 0x56160073 
                    self.进度.getChildByName(tostring(G.misc().data)).getChildByName(tostring(i)).getChildByName('名称').style = 10
                else
                    self.进度.getChildByName(tostring(G.misc().data)).getChildByName(tostring(i)).visible = true
                    self.进度.getChildByName(tostring(G.misc().data)).getChildByName(tostring(i)).getChildByName('完成').img = 0x56160072
                    self.进度.getChildByName(tostring(G.misc().data)).getChildByName(tostring(i)).getChildByName('名称').style = 5
                end  
                if G.misc().data < 12 or G.misc().data == 18 then 
                    self.进度.getChildByName(tostring(G.misc().data)).getChildByName(tostring(i)).getChildByName('进度').text = o_achieve.进度列表[i].当前进度..'/'..o_achieve.进度列表[i].总进度   
                end
                self.进度.getChildByName(tostring(G.misc().data)).getChildByName(tostring(i)).getChildByName('名称').text = o_achieve.进度列表[i].名称
            end   
        end  
        for i = 1,#o_achieve.进度列表 do
            maxpoint = maxpoint + o_achieve.进度列表[i].分数
            if o_achieve.进度列表[i].完成 == 1 then
                point = point + o_achieve.进度列表[i].分数
            end
        end
        self.进度.getChildByName('点数').text = '点数:'..tostring(point)..'/'..tostring(maxpoint)   
    end 
    if  G.misc().data == 13 then 
        local o_achieve = G.QueryName(0x10170000+G.misc().data) 
        self.进度.getChildByName('总页数').text = math.floor((#o_achieve.进度列表-1)/24) + 1
    end 
    if  G.misc().data == 14 then
        local o_achieve = G.QueryName(0x10170000+G.misc().data) 
        for i = 1,9 do 
            self.进度.getChildByName(tostring(G.misc().data)).getChildByName(tostring(i)).visible = false
        end
        for i = 1,#o_achieve.进度列表 do
            self.进度.getChildByName(tostring(G.misc().data)).getChildByName(tostring(i)).visible = true
            if o_achieve.进度列表[i].完成 == 0 then
                self.进度.getChildByName(tostring(G.misc().data)).getChildByName(tostring(i)).getChildByName('完成').img = 0x56160073 
                self.进度.getChildByName(tostring(G.misc().data)).getChildByName(tostring(i)).getChildByName('名称').style = 10
            else
                self.进度.getChildByName(tostring(G.misc().data)).getChildByName(tostring(i)).getChildByName('完成').img = 0x56160072
                self.进度.getChildByName(tostring(G.misc().data)).getChildByName(tostring(i)).getChildByName('名称').style = 5
            end 
            self.进度.getChildByName(tostring(G.misc().data)).getChildByName(tostring(i)).getChildByName('名称').text = o_achieve.进度列表[i].名称..'宗师'
        end
    end 
    if  G.misc().data == 15 or G.misc().data == 16 or G.misc().data == 22 then 
        local o_achieve = G.QueryName(0x10170000+G.misc().data) 
        self.进度.getChildByName('总页数').text = math.floor((#o_achieve.进度列表-1)/12) + 1
    end 
    -- if  G.misc().data == 16 then 
    --     local o_achieve = G.QueryName(0x10170000+G.misc().data) 
    --     self.进度.getChildByName('总页数').text = math.floor((#o_achieve.进度列表-1)/12) + 1
    -- end 
    local ys = tonumber(self.进度.getChildByName('页数').text)
    local zys = tonumber(self.进度.getChildByName('总页数').text) 
    if zys > 1 then 
        if tar == self.进度.getChildByName('left') or tar == self.进度.getChildByName('left1') then 
            G.Play(0x49011003, 1,false,100) 
            if ys > 1 then
                ys = ys - 1
            elseif ys == 1  then 
                ys = zys
            end 
        elseif tar == self.进度.getChildByName('right') or tar ==  self.进度.getChildByName('right1') then  
            G.Play(0x49011003, 1,false,100) 
            if ys < zys then 
                ys = ys + 1
            elseif ys == zys then
                ys = 1     
            end 
        end   
    end 
    self.进度.getChildByName('页数').text = ys
    if  G.misc().data == 13 then 
        local o_achieve = G.QueryName(0x10170000+G.misc().data) 
        if ys < zys then
            显示数量 = 24
        else
            显示数量 = #o_achieve.进度列表 - 24 *( zys -1) 
        end 
        for i = 1,24 do 
            self.list_13[i].visible = false
        end    
        for i = 1,显示数量 do 
            self.list_13[i].getChildByName('名称').text = o_achieve.进度列表[(ys-1)*24+i].名称
            self.list_13[i].visible = true
            if o_achieve.进度列表[(ys-1)*24+i].完成 == 0 then 
                self.list_13[i].getChildByName('完成').img = 0x56160073
                self.list_13[i].getChildByName('名称').style = 10
            else
                self.list_13[i].getChildByName('完成').img = 0x56160072
                self.list_13[i].getChildByName('名称').style = 5
            end    
        end      
    end  
    if  G.misc().data == 19 then
        local o_achieve = G.QueryName(0x10170000+G.misc().data) 
        for i = 1,#o_achieve.进度列表 do 
            self.list_19[i].getChildByName('名称').text = o_achieve.进度列表[i].名称
            self.list_19[i].visible = true
            if o_achieve.进度列表[i].完成 == 0 then 
                self.list_19[i].getChildByName('完成').img = 0x56160073
                self.list_19[i].getChildByName('名称').style = 10
            else
                self.list_19[i].getChildByName('完成').img = 0x56160072
                self.list_19[i].getChildByName('名称').style = 5
            end  
        end 
    end 
    if  G.misc().data == 15 then
        local o_achieve = G.QueryName(0x10170000+G.misc().data) 
        if ys < zys then
            显示数量 = 12
        else
            显示数量 = #o_achieve.进度列表 - 12 *( zys -1) 
        end 
        for i = 1,12 do 
            self.list_15[i].visible = false
        end  
        for i = 1,显示数量 do 
            self.list_15[i].getChildByName('名称').text = o_achieve.进度列表[(ys-1)*12+i].名称
            self.list_15[i].getChildByName('头像').img = 0x56080000+o_achieve.进度列表[(ys-1)*12+i].编号
            self.list_15[i].visible = true
            if o_achieve.进度列表[(ys-1)*12+i].完成 == 0 then 
                self.list_15[i].getChildByName('完成').img = 0x56160073
                self.list_15[i].getChildByName('名称').style = 10
                self.list_15[i].getChildByName('闪光').visible = false
            else
                self.list_15[i].getChildByName('完成').img = 0x56160072
                self.list_15[i].getChildByName('名称').style = 5
                self.list_15[i].getChildByName('闪光').visible = true
            end    
        end 
    end  
    if  G.misc().data == 16 then
        local o_achieve = G.QueryName(0x10170000+G.misc().data) 
        if ys < zys then
            显示数量 = 12
        else
            显示数量 = #o_achieve.进度列表 - 12 *( zys -1) 
        end 
        for i = 1,12 do 
            self.list_16[i].visible = false
        end  
        for i = 1,显示数量 do 
            self.list_16[i].getChildByName('名称').text = o_achieve.进度列表[(ys-1)*12+i].名称
            self.list_16[i].getChildByName('头像').img = 0x56080000+o_achieve.进度列表[(ys-1)*12+i].编号
            self.list_16[i].visible = true
            if o_achieve.进度列表[(ys-1)*12+i].完成 == 0 then 
                self.list_16[i].getChildByName('完成').img = 0x56160073
                self.list_16[i].getChildByName('名称').style = 10
                self.list_16[i].getChildByName('闪光').visible = false
            else
                self.list_16[i].getChildByName('完成').img = 0x56160072
                self.list_16[i].getChildByName('名称').style = 5
                self.list_16[i].getChildByName('闪光').visible = true
            end    
        end 
    end 
    if  G.misc().data == 22 then
        local o_achieve = G.QueryName(0x10170000+G.misc().data) 
        if ys < zys then
            显示数量 = 12
        else
            显示数量 = #o_achieve.进度列表 - 12 *( zys -1) 
        end 
        for i = 1,12 do 
            self.list_22[i].visible = false
        end  
        for i = 1,显示数量 do 
            self.list_22[i].getChildByName('名称').text = o_achieve.进度列表[(ys-1)*12+i].名称
            self.list_22[i].getChildByName('头像').img = 0x56080000+o_achieve.进度列表[(ys-1)*12+i].编号
            self.list_22[i].visible = true
            if o_achieve.进度列表[(ys-1)*12+i].完成 == 0 then 
                self.list_22[i].getChildByName('完成').img = 0x56160073
                self.list_22[i].getChildByName('名称').style = 10
                self.list_22[i].getChildByName('闪光').visible = false
            else
                self.list_22[i].getChildByName('完成').img = 0x56160072
                self.list_22[i].getChildByName('名称').style = 5
                self.list_22[i].getChildByName('闪光').visible = true
            end    
        end 
    end 
    if  G.misc().data == 23 then
        local o_achieve = G.QueryName(0x10170000+G.misc().data) 
        for i = 1,15 do 
            self.list_23[i].visible = true
        end  
        for i = 1,15 do 
            self.list_23[i].getChildByName('名称').text = o_achieve.进度列表[i].名称
            self.list_23[i].getChildByName('图片').img = 0x560f1000+i
            --self.list_23[i].visible = true
            local o_book_story = G.QueryName(0x101c0000 + i)
            local o_book_story_list = G.QueryName(0x101e0000 + i)
            if o_achieve.进度列表[i].完成 == 0 then 
                self.list_23[i].getChildByName('完成').img = 0x56160073
                self.list_23[i].getChildByName('名称').style = 10
            else
                self.list_23[i].getChildByName('完成').img = 0x56160072
                self.list_23[i].getChildByName('名称').style = 5
            end 
            if  o_book_story_list.完美 == 1 then
                self.list_23[i].getChildByName('闪光').visible = true
            else
                self.list_23[i].getChildByName('闪光').visible = false
            end  
        end 
    end 
    self.obj.c_achieve:更新()
end
return t