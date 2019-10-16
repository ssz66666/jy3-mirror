--[[3034

]]

local G = require "gf"
local t = G.com()
function t:init()
    self.按钮 = self.obj.getChildByName('按钮')
    self.背景 = self.obj.getChildByName('背景')
    self.确定 = self.按钮.getChildByName('接受')
    self.重选 = self.按钮.getChildByName('重选')
    self.被动组 = {0,0,0,0}
    self.剩余次数 = G.call('get_point',237) * 2
    self.剩余次数校验 = -999 - G.call('get_point',237) * 2
end
function t:start()
    self.背景.getChildByName('说明').shadowX = 1
    self.背景.getChildByName('说明').shadowAlpha = 120
    self.背景.getChildByName('标签').shadowX = 1
    self.背景.getChildByName('标签').shadowAlpha = 120
    self.背景.getChildByName('标签2').shadowX = 1
    self.背景.getChildByName('标签2').shadowAlpha = 120
    self.obj.getChildByName('被动').shadowX = 1
    self.obj.getChildByName('被动').shadowAlpha = 120
    self.obj.getChildByName('被动说明').shadowX = 1
    self.obj.getChildByName('被动说明').shadowAlpha = 120
    self.obj.getChildByName('剩余次数').shadowX = 1
    self.obj.getChildByName('剩余次数').shadowAlpha = 120
    self:刷新显示()
end
function t:刷新显示()
    local magic = {'破绽','慈悲','先攻','妙手','急速','冰心','暴击','激励','见切','万毒','强体','回春','强力','强行','复生','奇才','活力','阴毒','舔血','北冥','真武','朱雀','玄武','青龙','白虎','指心','拳劲','剑意','刀魂','奇门','寒气','绝杀','剑神'}
    local magic_1= {1,4,5,7,8,10,11,12,13,14}
    local magic_2= {2,3,6,9,15,16,17,18,19,20,21}
    local magic_3 = {22,23,24,25,26,27,28,29,30}
    local len = #magic_1
    local  r = math.ceil(len*G.call('通用_取随机')/100)
    self.被动组[1] = magic_1[r]
    table.remove(magic_1, r)
    len = #magic_1
    r = math.ceil(len*G.call('通用_取随机')/100)
    self.被动组[2] = magic_1[r]
    len = #magic_2
    r = math.ceil(len*G.call('通用_取随机')/100)
    self.被动组[3] = magic_2[r]
    len = #magic_3
    r = math.ceil(len*G.call('通用_取随机')/100)
    self.被动组[4] = magic_3[r]
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
    local str16 = '武功获得经验翻倍,升级时偶尔增加修为点,装备爆率+0.5%'
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
    local str33 = '任意剑法全体攻击,附加斩杀效果'
    local str = {str1,str2,str3,str4,str5,str6,str7,str8,str9,str10,str11,str12,str13,str14,str15,str16,str17,str18,str19,str20,str21,str22,str23,str24,str25,str26,str27,str28,str29,str30,str31,str32,str33}
    local str_字符串_1 = ''
    local str_字符串_2 = ''
    -- for i = 1,G.misc().被动个数 do
    --     if i < 4 then
    --         self.被动组[i] = math.random((i-1)*8+1,i*8)
    --     else
    --         self.被动组[i] = math.random((i-1)*8+1,31)
    --     end
      
    -- end
    if G.misc().奇才 == 1 then
        self.被动组[2] = 16
    end
    for i = 1,G.misc().被动个数 do
        str_字符串_1 = str_字符串_1..magic[self.被动组[i]]..'[br]'
        str_字符串_2 = str_字符串_2..'[05]'..magic[self.被动组[i]]..':[0a]'..str[self.被动组[i]]..'[br]'
    end
    self.obj.getChildByName('被动').text = str_字符串_1 
    self.obj.getChildByName('被动说明').text = str_字符串_2 
    self.obj.getChildByName('剩余次数').text = self.剩余次数 - 1
    print(self.剩余次数,self.剩余次数校验)
end
function t:click(tar)
    if tar == self.重选 then
        self.剩余次数 = self.剩余次数 - 1 
        self.剩余次数校验 = self.剩余次数校验 + 1
        if self.剩余次数 == 0 or self.剩余次数 ~= math.abs(self.剩余次数校验 + 999) then
            print(self.剩余次数,self.剩余次数校验)
            for i = 1,G.misc().被动个数 do
                G.QueryName(0x10030001)[tostring(110+i)] = self.被动组[i]
                G.call('set_newpoint',110+i,-10-self.被动组[i]) 
            end
            G.trig_event('选择被动结束')  
        else
           self:刷新显示()
        end
      
    elseif tar == self.确定 then 
        for i = 1,G.misc().被动个数 do
            G.QueryName(0x10030001)[tostring(110+i)] = self.被动组[i]
            G.call('set_newpoint',110+i,-10-self.被动组[i]) 
        end
        G.trig_event('选择被动结束') 
    end
end
return t