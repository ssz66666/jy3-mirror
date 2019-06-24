--[[3005

]]

local G = require "gf"
local t = G.com()
function t:init()
    self.按钮 = self.obj.getChildByName('按钮')
    self.显示 = self.obj.getChildByName('显示')
    self.基础属性1 = self.显示.getChildByName(tostring(1))
    self.基础属性2 = self.显示.getChildByName(tostring(2))
    self.列表 = self.基础属性2.getChildByName('列表')    
    self.称号 = self.列表.getChildByName('称号')
    self.称号list = {}
    self.被动 = self.基础属性1.getChildByName('被动')
    self.门派被动 = self.基础属性2.getChildByName('被动')
   -- G.call('set_point',115,18)
end
function t:start()
    --G.call('指令_存储属性')
    self.基础属性2.getChildByName('姓名').text = G.call('get_fullname')
    self.基础属性2.getChildByName('绰号').text = G.QueryName(0x10030001)[tostring(7)]
    local school = {'无门派','武当派','少林派','华山派','全真教','古墓派','逍遥派','血刀门','桃花岛','丐  帮','星宿派'}
    local skill = {'','侠义','佛法','儒风','养生','寡欲','','软言','怪才','乞讨','谄媚'}
    self.基础属性2.getChildByName('门派').text = school[G.QueryName(0x10030001)[tostring(8)]+1]
    self.基础属性2.getChildByName('技能').text = skill[G.QueryName(0x10030001)[tostring(8)]+1]
    self.基础属性2.getChildByName('技能').getChildByName('等级').text = G.QueryName(0x10030001)[tostring(11)] 
    self.基础属性2.getChildByName('技能').getChildByName('经验').text = '('..G.QueryName(0x10030001)[tostring(107)]..')'
    if G.QueryName(0x10030001)[tostring(11)] >= 10 then 
        self.基础属性2.getChildByName('技能').getChildByName('经验').text = '(-)'
    end     
    self.基础属性2.getChildByName('位阶').text = G.QueryName(0x10030001)[tostring(9)]
    self.基础属性2.getChildByName('师承').text = G.QueryName(0x10030001)[tostring(12)]
    local wife = ''
    if G.QueryName(0x10030001)[tostring(13)] > 0 then 
        wife = G.QueryName(0x10040000+G.QueryName(0x10030001)[tostring(13)]).姓名
        if G.QueryName(0x10030001)[tostring(52)] > 0 then 
            wife = wife..' '..G.QueryName(0x10040000+G.QueryName(0x10030001)[tostring(52)]).姓名
        end    
    end
    self.基础属性2.getChildByName('妻子').text = wife
    local brother = ''
    if G.QueryName(0x10030001)[tostring(70)] > 0 then 
        brother = G.QueryName(0x10040000+G.QueryName(0x10030001)[tostring(70)]).姓名
        if G.QueryName(0x10030001)[tostring(71)] > 0 then 
            brother = brother..' '..G.QueryName(0x10040000+G.QueryName(0x10030001)[tostring(71)]).姓名
        end    
    end    
   
    self.基础属性2.getChildByName('兄弟').text = brother
    self.基础属性2.getChildByName('名望').text = G.QueryName(0x10030001)[tostring(14)]
    self.基础属性2.getChildByName('侠义').text = G.QueryName(0x10030001)[tostring(15)]
    for i = 1,6 do 
        if G.call('get_point',15+i) >= 100 then 
            self.基础属性2.getChildByName('基础属性').getChildByName(tostring(i)).style = 3
        else
            self.基础属性2.getChildByName('基础属性').getChildByName(tostring(i)).style = 10
        end
        self.基础属性2.getChildByName('基础属性').getChildByName(tostring(i)).text =
        G.QueryName(0x10030001)[tostring(i + 15)]
    end
    for i = 7,12 do 
        self.基础属性2.getChildByName('基础属性').getChildByName(tostring(i)).text =
        G.QueryName(0x10030001)[tostring(i + 94)]
    end
    local magic = {'破绽','慈悲','先攻','妙手','急速','冰心','暴击','激励','见切','万毒','强体','回春','强力','强行','复生','奇才','活力','阴毒','舔血','北冥','真武','朱雀','玄武','青龙','白虎','指心','拳劲','剑意','刀魂','奇门','寒气'}
    for i = 1,4 do 
        if G.call('get_point',110+i) > 0 then 
            self.被动.getChildByName(tostring(i)).visible = true
            self.被动.getChildByName(tostring(i)).text = magic[G.call('get_point',110+i)]
        else
            self.被动.getChildByName(tostring(i)).visible = false
        end 
    end  
    if G.call('get_point',115) > 0 then  
        self.门派被动.visible = true  
        self.门派被动.getChildByName('技能').text = magic[G.call('get_point',115)]
    else
        self.门派被动.visible = false
    end
    for x = 1, 3, 1 do
        for y = 1, 10, 1 do
            local ui_sub = G.Clone(self.称号)
            ui_sub.x = -170 + (x - 1) * 170 
            ui_sub.y = 130 + (y - 1) * -30
            self.列表.addChild(ui_sub)
            ui_sub.visible = false
            self.称号list[(y - 1) * 3 + x] = ui_sub
        end
    end
    if G.misc().被动开关 == nil then
        G.misc().被动开关 = 1  
    end
    self:刷新属性()
end
function t:刷新属性()
    local hp = G.QueryName(0x10030001)[tostring(44)]
    local mp = G.QueryName(0x10030001)[tostring(46)]
    local maxhp = G.QueryName(0x10030001)[tostring(217)]
    local maxmp = G.QueryName(0x10030001)[tostring(218)]
    local str_hp = ''
    local str_mp = ''
    local str_maxhp = ''
    local str_maxmp = ''
    if hp < maxhp/10 then
        str_hp = '[03]'..hp
    else
        str_hp = '[01]'..hp
    end
    if mp < maxmp/10 then
        str_mp = '[07]'..mp
    else
        str_mp = '[0a]'..mp
    end
    if G.call('get_point',45) >= 50000 then
        str_maxhp = '[08]'..maxhp
    else 
        str_maxhp = '[0a]'..maxhp
    end
    if G.call('get_point',47) >= 50000 then
        str_maxmp = '[08]'..maxmp
    else
        str_maxmp = '[07]'..maxmp
    end
    self.基础属性1.getChildByName('生命值').text = str_hp..'[01]/'..str_maxhp 
    self.基础属性1.getChildByName('内力值').text = str_mp..'[01]/'..str_maxmp 
    self.基础属性1.getChildByName('等级').text = G.QueryName(0x10030001)[tostring(4)]..' 级' 
    if G.call('get_point',4) < 100 then
        self.基础属性1.getChildByName('当前经验').text = G.QueryName(0x10030001)[tostring(3)]..'/'
    else
        self.基础属性1.getChildByName('当前经验').text = '--/'
    end
    local int_难度 = G.QueryName(0x10160000 +G.call('get_point',143)).难度
    local int_升级经验 = math.floor(15 *G.call('get_point',4)* (G.call('get_point',4)+1) * (int_难度+1)/2   )
    self.基础属性1.getChildByName('升级经验').text = int_升级经验
    if G.QueryName(0x10030001)[tostring(4)] >= 100 then
        self.基础属性1.getChildByName('升级经验').text = '--'  
    end     
    self.基础属性1.getChildByName('修为点').text = G.QueryName(0x10030001)[tostring(5)] 
    for i = 1,16 do
        local int_难度 = G.QueryName(0x10160000 +G.call('get_point',143)).难度
        local int_点数 = 100
        if int_难度 == 1 then 
            int_点数 = 100
        elseif int_难度 == 2 then 
            int_点数 = 120
        elseif int_难度 == 3 then 
            int_点数 = 150
        end
        if G.call('get_point',21+i) >= int_点数 then 
            self.基础属性1.getChildByName('基础属性').getChildByName(tostring(i)).style = 3
        else
            self.基础属性1.getChildByName('基础属性').getChildByName(tostring(i)).style = 10
        end
        self.基础属性1.getChildByName('基础属性').getChildByName(tostring(i)).text = G.QueryName(0x10030001)[tostring(i + 200)]
    end
    for i = 1,4 do
        if G.misc().被动开关 == 1   then 
            self.被动.getChildByName(tostring(i)).style = 10
        else
            self.被动.getChildByName(tostring(i)).style = 9
        end
    end 
    if G.misc().被动开关 == 1   then 
        self.门派被动.getChildByName('技能').style = 10
    else
        self.门派被动.getChildByName('技能').style = 9
    end

end   
function t:rollOver(tar)
    if tar == self.基础属性2.getChildByName('equip') then 
        tar.style  = 1
    end
    for i = 1,30 do 
        if tar == self.称号list[i] then 
            tar.style  = 1
        end
    end
    local magic = {'破绽','慈悲','先攻','妙手','急速','冰心','暴击','激励','见切','万毒','强体','回春','强力','强行','复生','奇才','活力','阴毒','舔血','北冥','真武','朱雀','玄武','青龙','白虎','指心','拳劲','剑意','刀魂','奇门','寒气','绝杀'}
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
    local str16 = '招式武功获得经验翻倍,升级时等级为偶数时修为额外加1,装备爆率+0.5%'
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
    local str27 = '拳法招式攻击后几率下次可立即行动'
    local str28 = '剑法招式攻击后几率下次可立即行动'
    local str29 = '刀法招式攻击后几率下次可立即行动'
    local str30 = '奇门招式攻击后几率下次可立即行动'
    local str31 = '招式攻击几率造成迟缓'
    local str32 = '附加5%比例伤害'
    local str = {str1,str2,str3,str4,str5,str6,str7,str8,str9,str10,str11,str12,str13,str14,str15,str16,str17,str18,str19,str20,str21,str22,str23,str24,str25,str26,str27,str28,str29,str30,str31,str32}
    for i = 1,4 do 
        if tar == self.被动.getChildByName(tostring(i)) then 
            self.被动.getChildByName('显示').visible = true
            self.被动.getChildByName('显示').getChildByName('文本').text = '说明:[br]'..str[G.call('get_point',110+i)]
        end
    end
    if tar == self.门派被动.getChildByName('技能') then 
        self.门派被动.getChildByName('显示').visible = true
        if G.call('get_point',115) == 20 then
            local str_字符串 = ''
            if G.call('get_point',63) < 2500 then
                str_字符串 = '说明:[br]'..str20..'[br]当前境界:[br]初识'..'('..G.call('get_point',63)..'/2500)'
            elseif G.call('get_point',63) < 5000  and G.call('get_point',63) >= 2500 then
                str_字符串 = '说明:[br]'..str20..'[br]当前境界:[br]意境'..'('..G.call('get_point',63)..'/5000)'
            elseif G.call('get_point',63) >= 5000  and G.call('get_point',63) < 7500 then
                str_字符串 = '说明:[br]'..str20..'[br]当前境界:[br]明境'..'('..G.call('get_point',63)..'/7500)'
            elseif G.call('get_point',63) >= 7500  and G.call('get_point',63) < 10000 then
                str_字符串 = '说明:[br]'..str20..'[br]当前境界:[br]暗境'..'('..G.call('get_point',63)..'/10000)'
            elseif G.call('get_point',63) == 10000 then 
                str_字符串 = '说明:[br]'..str20..'[br]当前境界:[br]化境'
            end
            self.门派被动.getChildByName('显示').getChildByName('文本').text = str_字符串
        else
            self.门派被动.getChildByName('显示').getChildByName('文本').text = '说明:[br]'..str[G.call('get_point',115)]
        end
    end     
end     
function t:rollOut(tar)
    if tar == self.基础属性2.getChildByName('equip') then 
        tar.style  = 10
    end
    for i = 1,30 do 
        if tar == self.称号list[i] then 
            tar.style  = 10
        end
    end
    for i = 1,4 do 
        if tar == self.被动.getChildByName(tostring(i)) then 
            self.被动.getChildByName('显示').visible = false  
        end
    end 
    if tar == self.门派被动.getChildByName('技能') then 
        self.门派被动.getChildByName('显示').visible = false
    end  
end
function t:rclick(tar)
    G.Play(0x49011003, 1,false,100) 
    G.removeUI('v_nature')
end
function t:click(tar)
    for i = 1,3 do   --角色菜单三个按钮切换
        if tar == self.按钮.getChildByName(tostring(i)) then
            G.Play(0x49011003, 1,false,100) 
            for n = 1,3 do
                self.显示.getChildByName(tostring(n)).visible = false
            end    
            self.显示.getChildByName(tostring(i)).visible = true 
         end   
    end
    for i = 1,4 do 
        if tar == self.被动.getChildByName(tostring(i)) then 
            if G.misc().被动开关 == 0 then
                G.misc().被动开关 = 1
            else
                G.misc().被动开关 = 0
            end 
        end
    end 
    if tar == self.门派被动.getChildByName('技能') then 
        if G.misc().被动开关 == 0 then
            G.misc().被动开关 = 1
        else
            G.misc().被动开关 = 0
        end 
    end
    if tar == self.按钮.getChildByName(tostring(4)) or tar == self.obj.getChildByName('关闭菜单') then --关闭角色菜单
        G.Play(0x49011003, 1,false,100) 
        G.removeUI('v_nature')
    end 
    if tar == self.基础属性2.getChildByName('equip') then 
        self.门派被动.visible = false
        self.显示.getChildByName('结束图片').visible = false
        self.列表.visible = true
        for i = 1,30 do 
            local o_ch = G.QueryName(0x10140001)[tostring(i)]
            if o_ch ~= nil then 
                self.称号list[i].visible = true 
                self.称号list[i].text = o_ch
            else
                self.称号list[i].visible = false 
            end 
        end      
    elseif tar == self.列表.getChildByName('返回') then
        self.显示.getChildByName('结束图片').visible = true
        self.列表.visible = false
        if G.call('get_point',115) > 0 then  
            self.门派被动.visible = true 
        else
            self.门派被动.visible = false
        end
    end
    for i = 1,30 do 
        if tar == self.称号list[i] then 
            G.QueryName(0x10030001)[tostring(7)] = self.称号list[i].text
            self.基础属性2.getChildByName('绰号').text = G.QueryName(0x10030001)[tostring(7)]
            G.call('notice1','装备称号【'..self.称号list[i].text..'】')
            self.显示.getChildByName('结束图片').visible = true
            self.列表.visible = false
        end 
    end  
    self:刷新属性()   
end     
return t