--[[300b

]]

local G = require "gf"
local t = G.com()
function t:init()
    self.队友 = self.obj.getChildByName('队友')
    self.子菜单 = self.obj.getChildByName('子菜单')
    self.属性 = self.obj.getChildByName('属性')
    self.被动 = self.属性.getChildByName('被动')
    self.离开 = self.obj.getChildByName('离开')
    self.结束 = self.属性.getChildByName('结束')
    self.按钮 = self.子菜单.getChildByName('按钮')
    self.队友按钮 = self.obj.getChildByName('按钮')
    self.副按钮 = self.obj.getChildByName('副按钮')
    self.关闭菜单 = self.obj.getChildByName('关闭菜单')
end
function t:start()
    G.misc().队友 = 1
    local str = {'宴请','馈赠','治疗','切磋','离队','没事'}
    for i = 1,#str do
        self.副按钮.getChildByName(str[i]).shadowX = 1 
        self.副按钮.getChildByName(str[i]).shadowAlpha = 180
    end
    self:显示队友()
    G.call('指令_存储属性')
end  
function t:显示队友()
    local o_teammate_队友 = G.QueryName(0x10110001)
    for i  = 1,12 do 
        if o_teammate_队友[tostring(i)] ~= nil then
            self.队友.getChildByName(tostring(i)).visible = true
            self.队友按钮.getChildByName(tostring(i)).visible = true
            local int_队友 =  o_teammate_队友[tostring(i)] - 0x10040000
            self.队友.getChildByName(tostring(i)).frameActionID(int_队友 )
        else
            self.队友.getChildByName(tostring(i)).visible = false
            self.队友按钮.getChildByName(tostring(i)).visible = false
            self.队友.getChildByName(tostring(i)).frameActionID(0 )
        end 
    end     
end 
function t:rollOver(tar)
    local str1 = '增加全队伤害基值'
    local str2 = '降低全队被攻击伤害基值'
    local str3 = '使用武功30%不用读条直接出手'
    local str4 = '增加全队医疗效果20%'
    local str5 = '增加自身集气速度'
    local str6 = '降低受到异常状态几率'
    local str7 = '有20%几率暴击，暴击增加一定伤害基值'
    local str8 = '增加全队集气速度10%'
    local str9 = '10%几率免伤，20%几率降低受到伤害基值'
    local str10 = '增加附加异常状态几率'
    local str11 = '生命低于20%时受到的伤害降低一定伤害基值'
    local str12 = '生命低于30%时时序回血'
    local str13 = '生命低于50%时增加一定伤害基值'
    local str14 = '生命低于20%时集气速度增加30%'
    local str15 = '受到攻击后生命低于20%时有5%几率回满'
    local str16 = '招式武功获得经验翻倍'
    local str17 = '怒气槽增加速度翻倍'
    local str18 = '敌人中毒几率UP和持续时间翻倍'
    local str19 = '血刀门武功附加吸血效果'
    local str20 = '吸取内力上限且恢复当前内力，根据境界增加恢复的内力'
    local str21 = '无视对方20%内功防御造成伤害'
    local str22 = '燃尽一切，几率无视对方一切减伤造成真实伤害'
    local str23 = '招式攻击几率造成混乱'
    local str24 = '龙啸九天，几率下次可立即行动'
    local str25 = '回血效果几率回复双倍'
    local str26 = '指法招式攻击后几率下次可立即行动'
    local str28 = '剑法招式攻击后几率下次可立即行动'
    local str27 = '拳法招式攻击后几率下次可立即行动'
    local str29 = '刀法招式攻击后几率下次可立即行动'
    local str30 = '奇门招式攻击后几率下次可立即行动'
    local str31 = '招式攻击几率造成迟缓'
    local str = {str1,str2,str3,str4,str5,str6,str7,str8,str9,str10,str11,str12,str13,str14,str15,str16,str17,str18,str19,str20,str21,str22,str23,str24,str25,str26,str27,str28,str29,str30,str31}
    local o_role_人物 = G.QueryName(G.QueryName(0x10030001)[tostring(189)])
    for i = 1,5 do 
        if tar == self.被动.getChildByName(tostring(i)) then 
            self.被动.getChildByName('显示').visible = true
            --local str = 'str'..o_role_人物[tostring(110+i)]
            self.被动.getChildByName('显示').getChildByName('文本').text = '说明:[br]'..str[o_role_人物[tostring(110+i)]]
        end
    end
    local str = {'宴请','馈赠','治疗','切磋','离队','没事'}
    for i = 1,#str do
        if tar == self.副按钮.getChildByName(str[i]) then
            self.副按钮.getChildByName(str[i]).style = 1
        end
    end
end
function t:rollOut(tar)
    for i = 1,4 do 
        if tar == self.被动.getChildByName(tostring(i)) then 
            self.被动.getChildByName('显示').visible = false 
        end
    end 
    local str = {'宴请','馈赠','治疗','切磋','离队','没事'}
    for i = 1,#str do
        if tar == self.副按钮.getChildByName(str[i]) then
            self.副按钮.getChildByName(str[i]).style = 8
        end
    end
end
function t:rclick(tar)
    if self.子菜单.visible == true  then
        G.Play(0x49011003, 1,false,100)  
        self.属性.visible = false
        self.子菜单.visible = false
        self.副按钮.visible = false
    else
        G.Play(0x49011003, 1,false,100) 
        G.removeUI('v_teammate')
    end    
end
function t:click(tar)
    local o_teammate_队友 = G.QueryName(0x10110001)
    for i = 1,12 do 
        if  tar == self.队友按钮.getChildByName(tostring(i)) then 
            G.misc().队友 = i
            G.Play(0x49011003, 1,false,100) 
            G.QueryName(0x10030001)[tostring(189)] = o_teammate_队友[tostring(i)]
            self.子菜单.visible = true 
            self.副按钮.visible = true
            self.obj.getChildByName('属性').visible = true 
            self.obj.c_teammate:显示更新(G.misc().队友) 
              
        end     
    end 
    if tar == self.副按钮.getChildByName('百宝箱') then
        G.misc().神奇装备 = 0
        G.addUI('v_equip')
        local  ui = G.getUI('v_equip');
        local c = ui.c_equip
        c:角色操作(G.call('get_point',189) - 0x10040000)
    end
    if tar == self.结束 or tar == self.关闭菜单 then
        G.Play(0x49011003, 1,false,100)  
        self.属性.visible = false
        self.子菜单.visible = false 
        self.副按钮.visible = false
    end   
    if tar == self.离开 then 
        G.Play(0x49011003, 1,false,100) 
        G.removeUI('v_teammate')
    end    
 
    local list = {'宴请','馈赠','治疗','切磋','离队'}
    for i = 1,5 do 
        if tar == self.按钮.getChildByName(tostring(i)) then
            G.Play(0x49011003, 1,false,100) 
            if i >1  then 
               self.副按钮.visible = false 
            end
            G.trig_event(list[i])  
        end
    end 
    local str = {'宴请','馈赠','治疗','切磋','离队','没事'}
    for i = 1,#str do
        if tar == self.副按钮.getChildByName(str[i]) then
            G.Play(0x49011003, 1,false,100)
            if i == 2 or i == 5  then 
                self.副按钮.visible = false 
            else
                self.副按钮.visible = true
            end   
            G.trig_event(list[i]) 
        end
    end
    if tar == self.按钮.getChildByName(tostring(6)) or tar == self.副按钮.getChildByName(str[6])  then 
        G.Play(0x49011003, 1,false,100) 
        self.属性.visible = false
        self.子菜单.visible = false 
        self.副按钮.visible = false    
    end  
    G.call('指令_存储属性')    
end 
function t:显示更新(int_队友序号)
    if G.misc().队友 == 0 then 
        self.子菜单.visible = false 
        self.副按钮.visible = false  
        self.obj.getChildByName('属性').visible = false 
        return 
    end 
    local o_teammate_队友 = G.QueryName(0x10110001)
    if o_teammate_队友[tostring(int_队友序号)] == nil then return end 
    local int_队员编号 = o_teammate_队友[tostring(int_队友序号)] - 0x10040000
    self.obj.getChildByName('属性').x = 0
    self.obj.getChildByName('属性').y = 0
    if  int_队友序号 >=3 and int_队友序号 <=10 and int_队友序号 ~= 6  then 
        self.obj.getChildByName('属性').x = 190
        self.obj.getChildByName('属性').y = 0
    elseif int_队友序号 == 6  then
        self.obj.getChildByName('属性').x = 220
    elseif int_队友序号 > 10 then 
        self.obj.getChildByName('属性').x = -50
        self.obj.getChildByName('属性').y = 0
    end 
    self.子菜单.x = self.队友.getChildByName(tostring(int_队友序号)).x-50
    self.子菜单.y = self.队友.getChildByName(tostring(int_队友序号)).y+20
    local o_role_人物 = G.QueryName(G.QueryName(0x10030001)[tostring(189)])
    if o_role_人物 ~= nil then 
        if o_role_人物.头像 then 
             self.属性.getChildByName('头像').img = o_role_人物.头像
        end 
        self.属性.getChildByName('姓名').text = o_role_人物.姓名
        self.属性.getChildByName('生命').text = tostring(o_role_人物.生命)..'/'..(o_role_人物[tostring(1)] )
        self.属性.getChildByName('内力').text = tostring(o_role_人物.内力)..'/'..(o_role_人物[tostring(2)] )
        self.属性.getChildByName('拆招').text = G.call('get_role',int_队员编号,3)
        self.属性.getChildByName('闪躲').text = G.call('get_role',int_队员编号,5)
        self.属性.getChildByName('搏击').text = G.call('get_role',int_队员编号,4)
        self.属性.getChildByName('内功').text = G.call('get_role',int_队员编号,6)
        self.属性.getChildByName('攻击').text = tostring(o_role_人物[tostring(7)]) 
        self.属性.getChildByName('速度').text = G.call('get_role',int_队员编号,8)
        self.属性.getChildByName('好感度').text = tostring(o_role_人物[tostring(9)]) 
        local magic = {'破绽','慈悲','先攻','妙手','急速','冰心','暴击','激励','见切','万毒','强体','回春','强力','强行','复生','奇才','活力','阴毒','舔血','北冥','真武','朱雀','玄武','青龙','白虎','指心','拳劲','剑意','刀魂','奇门','寒气'}
        for i = 1,5 do 
            if o_role_人物[tostring(110+i)]  and o_role_人物[tostring(110+i)] > 0 then 
                self.被动.getChildByName(tostring(i)).visible = true
                self.被动.getChildByName(tostring(i)).text = magic[o_role_人物[tostring(110+i)]]
            else
                self.被动.getChildByName(tostring(i)).visible = false
            end     
        end     
        local 武功 = {'武功一','武功二','武功三','武功四'} 
        local str = ''
        for i = 1,4 do
            if o_role_人物['技能'..i] ~= nil then 
                local o_skill = G.QueryName(o_role_人物['技能'..i])
                local data = G.QueryName(o_role_人物['技能'..i]).满级熟练度/450
                local o_skill_武功当前熟练度 = tonumber(o_role_人物[tostring(9+i)]) 
                local o_skill_武功等级 = 0
                if o_skill_武功当前熟练度 > 0 then 
                        o_skill_武功等级 = 1
                end     
                if  o_skill_武功当前熟练度 > 10*data then
                    o_skill_武功等级 = 2
                end 
                if  o_skill_武功当前熟练度 > 30*data then
                    o_skill_武功等级 = 3
                end     
                if  o_skill_武功当前熟练度 > 60*data then
                    o_skill_武功等级 = 4
                end 
                if  o_skill_武功当前熟练度 > 100*data then
                    o_skill_武功等级 = 5
                end 
                if  o_skill_武功当前熟练度 > 150*data then
                    o_skill_武功等级 = 6
                end 
                if  o_skill_武功当前熟练度 > 210*data then
                    o_skill_武功等级 = 7
                end 
                if  o_skill_武功当前熟练度 > 280*data then
                    o_skill_武功等级 = 8
                end 
                if  o_skill_武功当前熟练度 > 360*data then
                    o_skill_武功等级 = 9
                end 
                if  o_skill_武功当前熟练度 > 450*data then
                    o_skill_武功等级 = 10
                end 
                if o_skill.类别 > 5 then
                    o_skill_武功等级 = 5
                end
                str = str..G.QueryName(o_role_人物['技能'..i]).名称..' '..tostring(o_skill_武功等级)..'级[br]'
            else
                str = str..''
            end 
        end
        self.属性.getChildByName('武功').text = str
    end
end       

return t