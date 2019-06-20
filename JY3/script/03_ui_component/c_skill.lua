--[[300a

]]

local G = require "gf"
local t = G.com()
function t:init()
    self.武功 = self.obj.getChildByName('子菜单').getChildByName('按钮')
    self.展示list = {}
    self.文本 = self.obj.getChildByName('文本')
    self.子菜单 = self.obj.getChildByName('子菜单')
    self.快捷键 = self.子菜单.getChildByName('快捷').getChildByName('图片')
    self.阵法 = self.子菜单.getChildByName('阵法')
    self.升级 = self.子菜单.getChildByName('招式').getChildByName('升级')
    self.装备 = self.子菜单.getChildByName('招式').getChildByName('装备')
    G.misc().skill_to = 0
    G.misc().skill_显示数量 = 0
    G.misc().skill_data_i = 1
    G.misc().skill_data_z = 1
    G.misc().skill_io = 1
    G.misc().skill_to = 0
    G.misc().item_0 = {} --
    G.misc().item_1 = {} --
    G.misc().item_2 = {} --
    G.misc().item_3 = {} --
    G.misc().item_4 = {} --
    G.misc().item_5 = {} --
    G.misc().item_6 = {} --
    G.misc().item_7 = {} --
    G.misc().item_8 = {} --
    G.misc().item_9 = {}
end
function t:start()
    G.call('指令_存储属性')
    G.call('逻辑整理-武功等级')
    for x = 1, 6, 1 do
        for y = 1, 5, 1 do
            local ui_sub = G.Clone(self.武功)
            ui_sub.x = 70 + (x - 1) * 34 
            ui_sub.y = 45 + (y - 1) * -37.5
            self.obj.getChildByName('子菜单').addChild(ui_sub)
            ui_sub.visible = false
            self.展示list[(y - 1) * 6 + x] = ui_sub
        end
    end 
    local item = {G.misc().item_0,G.misc().item_1,G.misc().item_2,G.misc().item_3,G.misc().item_4,G.misc().item_5,G.misc().item_6,G.misc().item_7,G.misc().item_8,G.misc().item_9}
    local skill = G.DBTable('o_skill')
    for i = 1,#skill do 
        local o_skill = G.QueryName(0x10050000+i)
        for j = 1,10 do 
           if o_skill.类别 == j-1 and (o_skill.当前熟练度 > 0 or o_skill.等级 > 0) then 
               table.insert(item[j], 0x10050000+i)   
           end
        end       
    end  
    if G.misc().测试 then
        self.obj.getChildByName('按钮').getChildByName(tostring(8)).mouseEnabled = true 
    else 
        self.obj.getChildByName('按钮').getChildByName(tostring(8)).mouseEnabled = true 
    end
    self:update()
end 
function t:update()
    self.obj.c_skill:更新菜单()  
end   
function t:更新菜单()
    if G.getUI('v_battle') then
        self.升级.mouseEnabled = false
    else 
        self.升级.mouseEnabled = true
    end
    if  G.misc().skill_to > 0 then 
        local item = G.misc()['item_'..(G.misc().skill_to-1)]
        for i = 1,30 do 
            self.展示list[i].visible = false
        end  
        if #item > 0 then 
            G.misc().skill_data_z = math.floor((#item - 1)/30) + 1
            G.misc().skill_显示数量 = #item - (G.misc().skill_data_i-1)*30
            if G.misc().skill_显示数量 > 30 then 
                G.misc().skill_显示数量 = 30
            end    
            for i = 1,G.misc().skill_显示数量  do 
                self.展示list[i].visible = true
                self.展示list[i].c_button.img =   G.QueryName(item[(G.misc().skill_data_i-1)*30 + i      ]).图像            
            end    
        end
    end  
end
function t:rclick(tar)
    G.Play(0x49011003, 1,false,100) 
    G.removeUI('v_skill') 
end
function t:click(tar)
    if tar == self.obj.getChildByName('结束') or tar == self.obj.getChildByName('关闭菜单')then 
        G.Play(0x49011003, 1,false,100) 
        --G.call('notice','修行点不足')
        G.removeUI('v_skill')
    end 
   -- local ys = G.misc().skill_data_z  --当前页面
    if  tar == self.obj.getChildByName('左') then 
        G.Play(0x49011003, 1,false,100) 
        if G.misc().skill_data_i > 1 then
            G.misc().skill_data_i = G.misc().skill_data_i - 1
        elseif G.misc().skill_data_i == 1 then
            G.misc().skill_data_i = G.misc().skill_data_z
        end
        self.obj.c_skill:更新菜单()
        self.obj.getChildByName('闪光2').visible = false 
        self.文本.visible = false 
        self.子菜单.getChildByName('招式').visible = false
        self.子菜单.getChildByName('快捷').visible = false  
    elseif tar == self.obj.getChildByName('右') then 
        G.Play(0x49011003, 1,false,100) 
        if G.misc().skill_data_i < G.misc().skill_data_z then
            G.misc().skill_data_i = G.misc().skill_data_i + 1
        elseif G.misc().skill_data_i == 2 then
            G.misc().skill_data_i = 1
        end
        self.obj.c_skill:更新菜单()
        self.obj.getChildByName('闪光2').visible = false
        self.文本.visible = false 
        self.子菜单.getChildByName('招式').visible = false
        self.子菜单.getChildByName('快捷').visible = false   
    end 
    self.obj.getChildByName('页数').text = G.misc().skill_data_i
    if G.misc().skill_显示数量 > 0 then 
        for i = 1,G.misc().skill_显示数量  do 
            if tar == self.展示list[i] then 
                G.Play(0x49011003, 1,false,100)  
                local item = G.misc()['item_'..(G.misc().skill_to-1)]
                local i_skill = item[(G.misc().skill_data_i-1)*30 + i      ]
                local o_skill_武功 = G.QueryName( i_skill )
                G.QueryName(0x10030001)[tostring(191)] = i_skill
                self.obj.getChildByName('闪光2').x = self.展示list[i].x
                self.obj.getChildByName('闪光2').y = self.展示list[i].y
                self.obj.getChildByName('闪光2').visible = true
                self.文本.getChildByName('经验').visible = true
                self.文本.visible = true
                self.子菜单.getChildByName('招式').visible = false
                self.子菜单.getChildByName('快捷').visible = false
                self.文本.getChildByName('名称').text = o_skill_武功.名称
                self.文本.getChildByName('说明').text = '  '..o_skill_武功.说明一
                local int_等级 = o_skill_武功.等级 
                local int_熟练度 = 0
                if int_等级 == 1 then 
                    int_熟练度 = 10*o_skill_武功.满级熟练度/450
                elseif int_等级 == 2 then 
                    int_熟练度 = 30*o_skill_武功.满级熟练度/450
                elseif int_等级 == 3 then 
                    int_熟练度 = 60*o_skill_武功.满级熟练度/450
                elseif int_等级 == 4 then 
                    int_熟练度 = 100*o_skill_武功.满级熟练度/450
                elseif int_等级 == 5 then 
                    int_熟练度 = 150*o_skill_武功.满级熟练度/450
                elseif int_等级 == 6 then 
                    int_熟练度 = 210*o_skill_武功.满级熟练度/450
                elseif int_等级 == 7 then 
                    int_熟练度 = 280*o_skill_武功.满级熟练度/450
                elseif int_等级 == 8 then 
                    int_熟练度 = 360*o_skill_武功.满级熟练度/450
                elseif int_等级 == 9 then 
                    int_熟练度 = 450*o_skill_武功.满级熟练度/450
                end
                int_熟练度 = math.floor(int_熟练度 + 0.5)
                if o_skill_武功.等级 == 10 then 
                    int_熟练度 = o_skill_武功.满级熟练度
                end
                --local int_熟练度_0 = o_skill_武功.当前熟练度 - (o_skill_武功.等级 - 1)*int_熟练度
                self.文本.getChildByName('经验').text = o_skill_武功.当前熟练度..'/'..int_熟练度
                if o_skill_武功.当前熟练度 > o_skill_武功.满级熟练度 then
                    self.文本.getChildByName('经验').text = '__'..'/'..int_熟练度  
                end  
                for p = 1,7 do 
                    if G.QueryName(0x100c0001)[tostring(p)] ~= nil then 
                        self.快捷键.getChildByName(tostring(p)).c_button.img_normal = G.QueryName(G.QueryName(0x100c0001)[tostring(p)]).图像
                    end 
                end     
                self.文本.getChildByName('等级').text = o_skill_武功.等级
                if o_skill_武功.修为等级 == nil then 
                    o_skill_武功.修为等级 = 0
                end 
                if o_skill_武功.类别 ~= 9 then
                    self.子菜单.getChildByName('快捷').visible = false
                    self.子菜单.getChildByName('阵法').visible = false
                else
                    self.子菜单.getChildByName('快捷').visible = false
                    self.子菜单.getChildByName('阵法').visible = true
                    if G.QueryName(0x100c0001)[tostring(15)] == nil then 
                        self.阵法.getChildByName('名称').text = ''
                    else
                        self.阵法.getChildByName('图片').getChildByName(tostring(1)).c_button.img_normal = G.QueryName(G.QueryName(0x100c0001)[tostring(15)]).图像 
                        self.阵法.getChildByName('名称').text = G.QueryName(G.QueryName(0x100c0001)[tostring(15)]).名称
                    end
                end     
                if o_skill_武功.类别 == 0 then 
                    self.文本.getChildByName('类别').text = '指法'
                    self.子菜单.getChildByName('快捷').visible = true
                elseif   o_skill_武功.类别 == 1 then   
                    self.文本.getChildByName('类别').text = '拳法'
                    self.子菜单.getChildByName('快捷').visible = true
                elseif   o_skill_武功.类别 == 2 then   
                    self.文本.getChildByName('类别').text = '剑法'
                    self.子菜单.getChildByName('快捷').visible = true
                elseif   o_skill_武功.类别 == 3 then   
                    self.文本.getChildByName('类别').text = '刀法'
                    self.子菜单.getChildByName('快捷').visible = true
                elseif   o_skill_武功.类别 == 4 then   
                    self.文本.getChildByName('类别').text = '奇门'
                    self.子菜单.getChildByName('快捷').visible = true
                elseif   o_skill_武功.类别 == 5 then   
                    self.文本.getChildByName('类别').text = '暗器'
                    self.子菜单.getChildByName('快捷').visible = true 
                elseif   o_skill_武功.类别 == 6 then   
                    self.文本.getChildByName('类别').text = '内功'
                    if  i_skill == 0x100500bd or i_skill == 0x10050097 or i_skill == 0x100500f0 then
                        self.文本.getChildByName('类别').text = '被动技能'
                    end
                    self.文本.getChildByName('等级').text = o_skill_武功.修为等级
                    self.文本.getChildByName('经验').visible = false
                    self.子菜单.getChildByName('招式').visible = true
                elseif   o_skill_武功.类别 == 7 then   
                    self.文本.getChildByName('类别').text = '轻功'
                    self.文本.getChildByName('等级').text = o_skill_武功.修为等级
                    self.文本.getChildByName('经验').visible = false
                    self.子菜单.getChildByName('招式').visible = true
                elseif   o_skill_武功.类别 == 8 then   
                    self.文本.getChildByName('类别').text = '绝招'
                    self.文本.getChildByName('等级').text = '极'
                    self.文本.getChildByName('经验').visible = false
                    self.子菜单.getChildByName('招式').visible = true 
                elseif   o_skill_武功.类别 == 9 then   
                    self.文本.getChildByName('类别').text = '阵法'
                    self.文本.getChildByName('等级').text = '极'
                    self.文本.getChildByName('经验').visible = false
                    self.子菜单.getChildByName('招式').visible = true 
                end
                local hurt = 0
                if o_skill_武功.类别 < 6 then 
                    hurt = math.floor(o_skill_武功.等级*o_skill_武功.伤害倍数/10)
                else
                    if o_skill_武功.招式 then 
                       hurt = math.floor(o_skill_武功.修为等级*o_skill_武功.伤害倍数/5)
                    end
                end
                self.文本.getChildByName('伤害').text = hurt
            end    
        end
    end    
    local o_skill_武功= G.QueryName(G.call('get_point',191))
    for i = 1,6 do 
        if tar == self.快捷键.getChildByName(tostring(i)) then 
            G.Play(0x49011003, 1,false,100) 
            self.快捷键.getChildByName(tostring(i)).c_button.img_normal = o_skill_武功.图像
            G.QueryName(0x100c0001)[tostring(i)] = G.call('get_point',191)
        end 
    end 
    if tar == self.升级 then
        if  o_skill_武功.类别 == 9 then
            G.call('notice','阵法已经登峰造极！')
        elseif o_skill_武功.类别 == 8 then
            G.call('notice','绝招无需升级！')
        else  
            if  o_skill_武功.修为等级 >= 5 then 
                G.Play(0x49011003, 1,false,100) 
                G.call('notice','已经登峰造极')
            else 
                if G.QueryName(0x10030001)[tostring(5)] < 1 then
                    G.Play(0x49011003, 1,false,100) 
                    G.call('notice','修为点不够')
                else 
                    if  o_skill_武功.修为等级 >= 1 then   
                        G.Play(0x4901000f, 1,false,100)    
                        o_skill_武功.修为等级 = o_skill_武功.修为等级 + 1
                        G.call('notice','修为提升')
                        self.文本.getChildByName('等级').text = o_skill_武功.修为等级
                        G.call('add_point',5,-1)
                    else
                        if G.call('can_equip') == true then --判断是否满足条件
                            G.Play(0x4901000f, 1,false,100) 
                            o_skill_武功.修为等级 = o_skill_武功.修为等级 + 1
                            G.call('notice','修为提升')
                            self.文本.getChildByName('等级').text = o_skill_武功.修为等级
                            G.call('add_point',5,-1)
                        else
                            G.Play(0x49011003, 1,false,100) 
                            G.call('notice','条件不够')
                        end
                    end
                end  
            end
        end
        local hurt = 0
        if o_skill_武功.类别 < 6 then 
            hurt = math.floor(o_skill_武功.等级*o_skill_武功.伤害倍数/10)
        else
            if o_skill_武功.招式 then 
               hurt = math.floor(o_skill_武功.修为等级*o_skill_武功.伤害倍数/5)
            end
        end
        self.文本.getChildByName('伤害').text = hurt
    elseif tar == self.装备 then
        G.Play(0x49011003, 1,false,100)
        local i_skill = G.call('get_point',191)
        if  i_skill ~= 0x100500bd and  i_skill ~= 0x10050097 and  i_skill ~= 0x100500f0 and o_skill_武功.类别 < 8  then
            if o_skill_武功.修为等级 > 0 then 
                if o_skill_武功.招式 == true then 
                    self.快捷键.getChildByName(tostring(7)).visible = true
                    G.QueryName(0x100c0001)[tostring(7)] = i_skill
                    self.快捷键.getChildByName(tostring(7)).c_button.img_normal = o_skill_武功.图像
                else
                    G.QueryName(0x100c0001)[tostring(7)] = nil
                    self.快捷键.getChildByName(tostring(7)).visible = false
                    self.快捷键.getChildByName(tostring(7)).c_button.img_normal = nil
                end    
                if  o_skill_武功.类别 == 6 then 
                    G.QueryName(0x10030001)[(tostring(196))] = i_skill
                elseif  o_skill_武功.类别 == 7 then
                    G.QueryName(0x10030001)[(tostring(197))] = i_skill
                end 
            else
                G.call('notice','修为等级不够装备')
            end   
        elseif o_skill_武功.类别 == 8  then 
            self.快捷键.getChildByName(tostring(8)).visible = true
            G.QueryName(0x100c0001)[tostring(8)] = i_skill
            self.快捷键.getChildByName(tostring(8)).c_button.img_normal = o_skill_武功.图像
        elseif o_skill_武功.类别 == 9  then
            self.阵法.getChildByName('图片').getChildByName(tostring(1)).visible = true
            G.QueryName(0x100c0001)[tostring(15)] = i_skill
            self.阵法.getChildByName('图片').getChildByName(tostring(1)).c_button.img_normal = o_skill_武功.图像 
            self.阵法.getChildByName('名称').text = G.QueryName(G.QueryName(0x100c0001)[tostring(15)]).名称
        end    
        

    end
    for n = 1,10 do 
        if tar == self.obj.getChildByName('按钮').getChildByName(tostring(n-1)) then 
           G.misc().skill_to = n
           G.Play(0x49011003, 1,false,100) 
           G.misc().skill_data_i = 1
           self.obj.getChildByName('种类').text = tostring(n - 1)
           self.obj.getChildByName('闪光1').x = self.obj.getChildByName('按钮').getChildByName(tostring(n-1)).x + 10
           self.obj.getChildByName('闪光1').y =self.obj.getChildByName('按钮').getChildByName(tostring(n-1)).y+35
           self.obj.getChildByName('页数').text = 1
           self.obj.getChildByName('闪光2').visible = false
           self.子菜单.getChildByName('招式').visible = false
           self.子菜单.getChildByName('快捷').visible = false
           self.obj.getChildByName('闪光1').visible = true
           self.文本.visible = false
           




        
        end 
    end
    

    G.call('指令_存储属性')
    

end 



return t