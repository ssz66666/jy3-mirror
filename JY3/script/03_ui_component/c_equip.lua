--[[302e

]]

local G = require "gf"
local t = G.com()
function t:init()
    self.显示 = self.obj.getChildByName('显示')
    self.按钮 = self.obj.getChildByName('按钮')
    self.说明 = self.obj.getChildByName('说明')
    self.装备_list = {}
end
function t:start()
    G.misc().队员编号 = 0
    G.misc().显示数量 = 0
    G.misc().equip_data = 1
    G.misc().equip_data_i = 1
    G.misc().equip_data_m = 1
    --G.misc().神奇装备 = 0
    G.misc().equip_队员编号 = 0
    self.按钮.getChildByName('特殊').visible = true
    if G.misc().神奇装备 == 1 then 
        self.按钮.getChildByName('特殊').text = '分解装备'
    elseif G.misc().神奇装备 == 2 then 
        self.按钮.getChildByName('特殊').text = '转换装备'
    else
        self.按钮.getChildByName('特殊').visible = false
    end
    for x = 1, 6, 1 do
        for y = 1, 3, 1 do
            local ui_sub = G.Clone(self.按钮.getChildByName('标本'))
            ui_sub.x = -375 + (x - 1) * 90 
            ui_sub.y = -5 + (y - 1) * -90
            self.按钮.getChildByName('装备').addChild(ui_sub)
            ui_sub.visible = false
            self.装备_list [(y - 1) * 6 + x] = ui_sub
        end
    end
    self:显示装备()
end
function t:角色操作(int_队员编号)
    local str = ''
    local 装备 = {'头戴','手戴','脚穿','印记'}
    local o_body = G.QueryName(0x10030001)
    local o_role = o_body
    G.misc().equip_队员编号 = int_队员编号
    if G.misc().equip_队员编号 > 0 then
        o_role = G.QueryName(0x10040000 + G.misc().equip_队员编号)
    end
    local int_生命 = 0
    local int_内力 = 0
    local int_内功 = 0
    local int_拆招 = 0
    local int_搏击 = 0
    local int_闪躲 = 0
    local int_轻身 = 0
    local int_套装号 = 0
    local int_套装数 = 0
    local str_1 = ''
    local str_2 = ''
    if int_队员编号 == 0 then
        self.显示.getChildByName('头像').img = G.call('get_point',119)
        str = ''
        for i = 1,4 do 
            if o_body[装备[i]] then
                local o_equip = G.QueryName(o_body[装备[i]]) 
                str = str..o_equip.名称..'[br]'
            else
                str = str..'无'..'[br]'
            end 
        end
        self.显示.getChildByName('属性4').text = str
        local int_属性 = {int_内功,int_拆招,int_搏击,int_闪躲,int_轻身}
        if G.misc().显示数量 > 0 then 
            local o_equip_2 = G.QueryName(   G.misc().equip[(G.misc().equip_data_i - 1)*18 + G.misc().equip_data ]    ) 
            local 效果 = {'内功','拆招','搏击','闪躲','轻身'}
            if o_body[装备[o_equip_2.类型]] then
                local o_equip_1 = G.QueryName(o_body[装备[o_equip_2.类型]])
                for i = 1,#效果 do
                    int_属性[i] = o_equip_2[效果[i]] - o_equip_1[效果[i]]
                end
            else
                for i = 1,#效果 do
                    int_属性[i] = o_equip_2[效果[i]] 
                end 
            end
            for i = 2,4 do 
                if int_属性[i] > 0 then
                    str_1 = str_1..'[06]+'..int_属性[i]..'[br]' 
                elseif int_属性[i] < 0 then
                    str_1 = str_1..'[03]'..int_属性[i]..'[br]'
                else
                    str_1 = str_1..'[br]'  
                end
            end
            if int_属性[1] > 0 then
                str_2 = str_2..'[06]+'..int_属性[1]..'[br]' 
            elseif int_属性[1] < 0 then
                str_2 = str_2..'[03]'..int_属性[1]..'[br]'
            else
                str_2 = str_2..'[br]'  
            end
            if int_属性[5] > 0 then
                str_2 = str_2..'[06]+'..int_属性[5]..'[br]' 
            elseif int_属性[5] < 0 then
                str_2 = str_2..'[03]'..int_属性[5]..'[br]'
            else
                str_2 = str_2..'[br]'  
            end
        end
        G.call('指令_存储属性')
        str = G.call('get_fullname')..'[br]'..G.call('get_point',44)..'/'..G.call('get_point',217)..'[br]'..G.call('get_point',46)..'/'..G.call('get_point',218)
        self.显示.getChildByName('属性1').text = str 
        str = G.call('get_point',207)..'[br]'..G.call('get_point',208)..'[br]'..G.call('get_point',209)
        self.显示.getChildByName('属性2').text = str 
        str = G.call('get_point',206)..'[br]'..G.call('get_point',210)
        self.显示.getChildByName('属性3').text = str 
        self.显示.getChildByName('属性5').text = str_1 
        self.显示.getChildByName('属性6').text = str_2 
    else
        str = ''
        self.显示.getChildByName('头像').img = o_role.头像
        local 效果 = {'生命','内力','拆招','搏击','闪躲','内功','轻身'}
        local int_属性 = {int_生命,int_内力,int_拆招,int_搏击,int_闪躲,int_内功,int_轻身}
        if G.misc().显示数量 > 0 then 
            local o_equip_2 = G.QueryName(   G.misc().equip[(G.misc().equip_data_i - 1)*18 + G.misc().equip_data ]    ) 
            if o_role[装备[o_equip_2.类型]] then
                local o_equip_1 = G.QueryName(o_role[装备[o_equip_2.类型]])
                for i = 3,7 do
                    int_属性[i] = o_equip_2[效果[i]] - o_equip_1[效果[i]]
                end
            else
                for i = 3,7 do
                    int_属性[i] = o_equip_2[效果[i]] 
                end 
            end
            for i = 3,5 do 
                if int_属性[i] > 0 then
                    str_1 = str_1..'[06]+'..int_属性[i]..'[br]' 
                elseif int_属性[i] < 0 then
                    str_1 = str_1..'[03]'..int_属性[i]..'[br]'
                else
                    str_1 = str_1..'[br]'  
                end
            end
            if int_属性[6] > 0 then
                str_2 = str_2..'[06]+'..int_属性[6]..'[br]' 
            elseif int_属性[6] < 0 then
                str_2 = str_2..'[03]'..int_属性[6]..'[br]'
            else
                str_2 = str_2..'[br]'  
            end
            if int_属性[7] > 0 then
                str_2 = str_2..'[06]+'..int_属性[7]..'[br]' 
            elseif int_属性[7] < 0 then
                str_2 = str_2..'[03]'..int_属性[7]..'[br]'
            else
                str_2 = str_2..'[br]'  
            end
        end
        for i = 1,4 do 
            if o_role[装备[i]] then
                local o_equip = G.QueryName(o_role[装备[i]]) 
                str = str..o_equip.名称..'[br]'
            else
                str = str..'无'..'[br]'
            end 
        end
        self.显示.getChildByName('属性4').text = str
        str = o_role.姓名..'[br]'..G.call('get_role',int_队员编号,13)..'/'..(G.call('get_role',int_队员编号,1) )..'[br]'..G.call('get_role',int_队员编号,14)..'/'..(G.call('get_role',int_队员编号,2))
        self.显示.getChildByName('属性1').text = str 
        str = (G.call('get_role',int_队员编号,3))..'[br]'..(G.call('get_role',int_队员编号,4))..'[br]'..(G.call('get_role',int_队员编号,5))
        self.显示.getChildByName('属性2').text = str 
        str = (G.call('get_role',int_队员编号,6))..'[br]'..(G.call('get_role',int_队员编号,8))
        self.显示.getChildByName('属性3').text = str 
        self.显示.getChildByName('属性5').text = str_1 
        self.显示.getChildByName('属性6').text = str_2 
    end
end
function t:显示装备()
    local o_store = G.QueryName(0x10190001)
    local int_数量 = 0
    local o_body = G.QueryName(0x10030001)
    self.按钮.getChildByName('data').text = G.misc().equip_data_i
    local 装备组 = {}
    G.misc().equip = {}
    G.deepcopy( G.misc().equip,装备组)
    if #o_store.装备 > 0 then 
        for i = 1,#o_store.装备 do 
            if o_store.装备[i].数量 > 0 then 
                int_数量 = int_数量 + 1
                table.insert(G.misc().equip,o_store.装备[i].代码)
            end
        end
    end
    if int_数量 > 0  then
        G.misc().equip_data_m = math.floor((int_数量 - 1)/18) + 1 
        G.misc().显示数量 = int_数量 - (G.misc().equip_data_i - 1)*18
        if G.misc().显示数量  > 18 then 
            G.misc().显示数量 = 18 
        end
        if G.misc().显示数量 > 0  then
            if G.misc().equip_data >  G.misc().显示数量 then 
                if G.misc().equip_data == G.misc().显示数量 + 1 then  
                    G.misc().equip_data = G.misc().显示数量
                else
                    G.misc().equip_data = 1
                end
            end
        else
            G.misc().显示数量 = 18
            G.misc().equip_data_i = G.misc().equip_data_i - 1 
            G.misc().equip_data = 18
        end
        self.按钮.getChildByName('装备').visible = true
        self.按钮.getChildByName('闪光').visible = true
        self.按钮.getChildByName('闪光').x = self.装备_list[G.misc().equip_data].x
        self.按钮.getChildByName('闪光').y = self.装备_list[G.misc().equip_data].y
        for i = 1,18 do
            self.装备_list[i].visible = false 
        end
        for i = 1,G.misc().显示数量 do 
            self.装备_list[i].visible = true
            local i_equip = G.misc().equip[(G.misc().equip_data_i - 1)*18 + i ]
            local o_equip = G.QueryName( i_equip      ) 
            self.装备_list[i].getChildByName('图片').img =  o_equip.图片
            if o_equip.套装 > 0 then
                self.装备_list[i].getChildByName('品质').img = 0x560f2008
            else
                self.装备_list[i].getChildByName('品质').img = 0x560f2000 + o_equip.品质
            end
            if G.misc().equip_data == i then
                local int_装备数量 = 0 
                for i = 1,#o_store.装备 do 
                    if o_store.装备[i].代码 == i_equip then
                        int_装备数量 = o_store.装备[i].数量
                        break 
                    end
                end
                self.说明.getChildByName('名称').text = '名称:[07] '..o_equip.名称
                local  str = '说明:[07] '..o_equip.描述..'[br][08]效果: '
                local 效果 = {'生命','内力','拆招','搏击','闪躲','内功','轻身','减伤','左右','斗转'}
                for i = 1,#效果 do 
                    if o_equip[效果[i]] and o_equip[效果[i]] > 0 then
                        str = str..'[03]'..效果[i]..'[01] +'..o_equip[效果[i]]..' ' 
                    end
                end
                if G.misc().神奇装备 > 0 and o_equip.类型 < 4 then 
                    self.按钮.getChildByName('特殊').visible = true
                else
                    self.按钮.getChildByName('特殊').visible = false
                end
                if o_equip.特效 > 0 then 
                    local 特效说明_1 = {'附加额外生命上限','附加额外内力上限','附加额外生命内力上限','附加被动【回春】','附加被动【强体】','附加被动【白虎】'}
                    local 特效说明_2 = {'附加被动【妙手】','附加被动【破绽】','附加被动【暴击】','附加被动【强力】','附加被动【万毒】','附加被动【朱雀】','附加被动【玄武】'}
                    local 特效说明_3 = {'附加被动【激励】','附加被动【强行】','附加被动【急速】','附加被动【青龙】'}
                    local 特效说明_4 = {'附加被动【指心】','附加被动【拳劲】','附加被动【剑意】','附加被动【刀魂】','附加被动【奇门】','附加被动【暗日】','附加被动【激励】','附加被动【寒气】','附加被动【强行】','附加被动【暴击】','附加额外生命内力与被动【口才】'}
                    local str_特效说明 = ''
                    if o_equip.类型 == 1 then
                        str_特效说明 =  特效说明_1[o_equip.特效 - 100]
                    elseif o_equip.类型 == 2 then
                        str_特效说明 =  特效说明_2[o_equip.特效 - 200]
                    elseif o_equip.类型 == 3 then
                        str_特效说明 =  特效说明_3[o_equip.特效 - 300]
                    elseif o_equip.类型 == 4 then
                        str_特效说明 =  特效说明_4[o_equip.特效 - 400]
                    end
                    if o_equip.类型 == 4 and o_equip.转换次数 == 0 then
                        str = str..'[br][07]特效[08]:'..str_特效说明..'[03](未实现，需完成对应梦幻剧情)'
                    else
                        str = str..'[br][07]特效[08]:'..str_特效说明
                    end   
                end
                if o_equip.套装 > 0 then 
                    local 装备 = {'头戴','手戴','脚穿','印记'}
                    local o_role = o_body
                    if G.misc().equip_队员编号 > 0 then
                        o_role = G.QueryName(0x10040000 + G.misc().equip_队员编号)
                    end
                    str = str..'[br][08]套装:'
                    if o_equip.套装 == 1 then
                        if o_role.头戴 and G.QueryName(o_role.头戴).套装 == 1 then    
                            str = str..'[br][06]游俠之浩然無塵冠'
                        else
                            str = str..'[br][09]游俠之浩然無塵冠' 
                        end
                        if o_role.手戴 and G.QueryName(o_role.手戴).套装 == 1 then    
                            str = str..'[br][06]游俠之战神护腕'
                        else
                            str = str..'[br][09]游俠之战神护腕' 
                        end
                        if o_role.脚穿 and G.QueryName(o_role.脚穿).套装 == 1 then    
                            str = str..'[br][06]游俠之御风追日'
                        else
                            str = str..'[br][09]游俠之御风追日' 
                        end
                        str = str..'[br]'
                        if G.call('通用_取得套装',G.misc().equip_队员编号,o_equip.套装) >= 2 then
                            str = str..'[br][07](二件套:)[br][06]'..'生命+2500 内力+2500 闪避率UP'
                        else
                            str = str..'[br][09](二件套:)[br][09]'..'生命+2500 内力+2500 闪避率UP'
                        end
                        str = str..'[br]'
                        if G.call('通用_取得套装',G.misc().equip_队员编号,o_equip.套装) >= 3 then
                            str = str..'[br][07](三件套:)[br][06]'..'生命+5000 内力+5000 闪避率UP 武功出招速度+1'
                        else
                            str = str..'[br][09](三件套:)[br][09]'..'生命+5000 内力+5000 闪避率UP 武功出招速度+1'
                        end
                    elseif o_equip.套装 == 2 then
                        if o_role.头戴 and G.QueryName(o_role.头戴).套装 == 2 then    
                            str = str..'[br][07]學士之獬豸忠正帽'
                        else
                            str = str..'[br][09]學士之獬豸忠正帽' 
                        end
                        if o_role.手戴 and G.QueryName(o_role.手戴).套装 == 2 then    
                            str = str..'[br][07]學士之丹石戒'
                        else
                            str = str..'[br][09]學士之丹石戒' 
                        end
                        if o_role.脚穿 and G.QueryName(o_role.脚穿).套装 == 2 then    
                            str = str..'[br][07]學士之皂白躍淵靴'
                        else
                            str = str..'[br][09]學士之皂白躍淵靴' 
                        end
                        str = str..'[br]'
                        if G.call('通用_取得套装',G.misc().equip_队员编号,o_equip.套装) >= 2 then
                            str = str..'[br][07](二件套:)[br][06]'..'生命+2500 内力+2500 修炼武功速度加速，可以和奇才叠加'
                        else
                            str = str..'[br][09](二件套:)[br][09]'..'生命+2500 内力+2500 修炼武功速度加速，可以和奇才叠加'
                        end
                        str = str..'[br]'
                        if G.call('通用_取得套装',G.misc().equip_队员编号,o_equip.套装) >= 3 then
                            str = str..'[br][07](三件套:)[br][06]'..'生命+5000 内力+5000 修炼武功速度翻倍，可以和奇才叠加，升级获得修为点额外+1'
                        else
                            str = str..'[br][09](三件套:)[br][09]'..'生命+5000 内力+5000 修炼武功速度翻倍，可以和奇才叠加，升级获得修为点额外+1'
                        end
                    elseif o_equip.套装 == 3 then
                        if o_role.头戴 and G.QueryName(o_role.头戴).套装 == 3 then    
                            str = str..'[br][07]霸王之烈殺霸王盔'
                        else
                            str = str..'[br][09]霸王之烈殺霸王盔' 
                        end
                        if o_role.手戴 and G.QueryName(o_role.手戴).套装 == 3 then    
                            str = str..'[br][07]霸王之玄铁戒'
                        else
                            str = str..'[br][09]霸王之玄铁戒' 
                        end
                        if o_role.脚穿 and G.QueryName(o_role.脚穿).套装 == 3 then    
                            str = str..'[br][07]霸王之烏騅踏雪靴'
                        else
                            str = str..'[br][09]霸王之烏騅踏雪靴' 
                        end
                        str = str..'[br]'
                        if G.call('通用_取得套装',G.misc().equip_队员编号,o_equip.套装) >= 2 then
                            str = str..'[br][07](二件套:)[br][06]'..'生命+2500 内力+2500  伤害+10%，治疗效果+5%'
                        else
                            str = str..'[br][09](二件套:)[br][09]'..'生命+2500 内力+2500  伤害+10%，治疗效果+5%'
                        end
                        str = str..'[br]'
                        if G.call('通用_取得套装',G.misc().equip_队员编号,o_equip.套装) >= 3 then
                            str = str..'[br][07](三件套:)[br][06]'..'生命+5000 内力+5000 伤害+20%，治疗效果+10%，可以突破治疗上限9999 队友可以突破伤害上限9999'
                        else
                            str = str..'[br][09](三件套:)[br][09]'..'生命+5000 内力+5000 伤害+20%，治疗效果+10%，可以突破治疗上限9999 队友可以突破伤害上限9999'
                        end
                    elseif o_equip.套装 == 4 then
                        if o_role.头戴 and G.QueryName(o_role.头戴).套装 == 4 then    
                            str = str..'[br][07]修羅之寒殺鬼面盔'
                        else
                            str = str..'[br][09]修羅之寒殺鬼面盔' 
                        end
                        if o_role.手戴 and G.QueryName(o_role.手戴).套装 == 4 then    
                            str = str..'[br][07]修羅之青冥护腕'
                        else
                            str = str..'[br][09]修羅之青冥护腕' 
                        end
                        if o_role.脚穿 and G.QueryName(o_role.脚穿).套装 == 4 then    
                            str = str..'[br][07]修羅之鎮獄'
                        else
                            str = str..'[br][09]修羅之鎮獄' 
                        end
                        str = str..'[br]'
                        if G.call('通用_取得套装',G.misc().equip_队员编号,o_equip.套装) >= 2 then
                            str = str..'[br][07](二件套:)[br][06]'..'生命+2500 内力+2500  降低伤害10% 怒气增加速度UP 暴击伤害+50% 异常抵抗率UP'
                        else
                            str = str..'[br][09](二件套:)[br][09]'..'生命+2500 内力+2500  降低伤害10% 怒气增加速度UP 暴击伤害+50% 异常抵抗率UP'
                        end
                        str = str..'[br]'
                        if G.call('通用_取得套装',G.misc().equip_队员编号,o_equip.套装) >= 3 then
                            str = str..'[br][07](三件套:)[br][06]'..'生命+5000 内力+5000 降低伤害20% 怒气恢复速度翻倍 暴击伤害+100% 完全免疫全部异常状态'
                        else
                            str = str..'[br][09](三件套:)[br][09]'..'生命+5000 内力+5000 降低伤害20% 怒气恢复速度翻倍 暴击伤害+100% 完全免疫全部异常状态'
                        end
                    elseif o_equip.套装 == 5 then
                        if o_role.头戴 and G.QueryName(o_role.头戴).套装 == 5 then    
                            str = str..'[br][07]淑女之明霞紅玉簪'
                        else
                            str = str..'[br][09]淑女之明霞紅玉簪' 
                        end
                        if o_role.手戴 and G.QueryName(o_role.手戴).套装 == 5 then    
                            str = str..'[br][07]淑女之海晶花戒'
                        else
                            str = str..'[br][09]淑女之海晶花戒' 
                        end
                        if o_role.脚穿 and G.QueryName(o_role.脚穿).套装 == 5 then    
                            str = str..'[br][07]淑女之寸金生蓮鞋'
                        else
                            str = str..'[br][09]淑女之寸金生蓮鞋' 
                        end
                        str = str..'[br]'
                        if G.call('通用_取得套装',G.misc().equip_队员编号,o_equip.套装) >= 2 then
                            str = str..'[br][07](二件套:)[br][06]'..'生命+2500 内力+2500  出手后集气从10%开始 增加内功【晕眩】几率'
                        else
                            str = str..'[br][09](二件套:)[br][09]'..'生命+2500 内力+2500  出手后集气从10%开始 增加内功【晕眩】几率'
                        end
                        str = str..'[br]'
                        if G.call('通用_取得套装',G.misc().equip_队员编号,o_equip.套装) >= 3 then
                            str = str..'[br][07](三件套:)[br][06]'..'生命+5000 内力+5000 出手后集气从30%开始 攻击附加【晕眩】'
                        else
                            str = str..'[br][09](三件套:)[br][09]'..'生命+5000 内力+5000 出手后集气从30%开始 攻击附加【晕眩】'
                        end
                    elseif o_equip.套装 == 6 then
                        if o_role.头戴 and G.QueryName(o_role.头戴).套装 == 6 then    
                            str = str..'[br][07]傳奇之猛虎嘯日冠'
                        else
                            str = str..'[br][09]傳奇之猛虎嘯日冠' 
                        end
                        if o_role.手戴 and G.QueryName(o_role.手戴).套装 == 6 then    
                            str = str..'[br][07]傳奇之紫晶神戒'
                        else
                            str = str..'[br][09]傳奇之紫晶神戒' 
                        end
                        if o_role.脚穿 and G.QueryName(o_role.脚穿).套装 == 6 then    
                            str = str..'[br][07]傳奇之火鳳煌羽靴'
                        else
                            str = str..'[br][09]傳奇之火鳳煌羽靴' 
                        end
                        str = str..'[br]'
                        if G.call('通用_取得套装',G.misc().equip_队员编号,o_equip.套装) >= 2 then
                            str = str..'[br][07](二件套:)[br][06]'..'生命+2500 内力+2500  左右和斗转效果+25%'
                        else
                            str = str..'[br][09](二件套:)[br][09]'..'生命+2500 内力+2500  左右和斗转效果+25%'
                        end
                        str = str..'[br]'
                        if G.call('通用_取得套装',G.misc().equip_队员编号,o_equip.套装) >= 3 then
                            str = str..'[br][07](三件套:)[br][06]'..'生命+5000 内力+5000 左右和斗转效果+50%，无视条件修炼武学和装备内功'
                        else
                            str = str..'[br][09](三件套:)[br][09]'..'生命+5000 内力+5000 左右和斗转效果+50%，无视条件修炼武学和装备内功'
                        end
                    end
                end
                if not o_equip.转换次数 then 
                    o_equip.转换次数 = 0
                end
                if o_equip.套装 == 0  and o_equip.类型 ~= 4  then 
                    str = str..'[br][07]转换次数:  [01]'..o_equip.转换次数                  
                end
                self.说明.getChildByName('效果').text = str
            end
        end
    else 
        G.misc().显示数量 = 0
        self.按钮.getChildByName('装备').visible = false
        self.按钮.getChildByName('闪光').visible = false
        self.说明.visible = false
    end
end 
function t:click(tar)
    if tar == self.按钮.getChildByName('left') then
        G.Play(0x49011003, 1,false,100) 
        if G.misc().equip_data_i > 1 then 
            G.misc().equip_data_i = G.misc().equip_data_i - 1
        else
            G.misc().equip_data_i = G.misc().equip_data_m
        end
        self.obj.c_equip:显示装备()
        self.obj.c_equip:角色操作(G.misc().equip_队员编号)
    elseif tar == self.按钮.getChildByName('right') then 
        G.Play(0x49011003, 1,false,100) 
        if G.misc().equip_data_i < G.misc().equip_data_m then 
            G.misc().equip_data_i = G.misc().equip_data_i + 1
        else
            G.misc().equip_data_i = 1
        end
        self.obj.c_equip:显示装备()
        self.obj.c_equip:角色操作(G.misc().equip_队员编号)
    elseif tar == self.按钮.getChildByName('特殊') then
        local i_equip = G.misc().equip[(G.misc().equip_data_i - 1)*18 + G.misc().equip_data ] 
        if G.misc().神奇装备 == 1 then 
            G.call('add_equip',i_equip,-1)
            G.call('add_item',340,1)
        elseif G.misc().神奇装备 == 2 then 
            G.misc().转换装备 = i_equip 
            G.trig_event('转换装备')  
        end
        self.obj.c_equip:显示装备()  
        self.obj.c_equip:角色操作(G.misc().equip_队员编号)
    elseif tar == self.按钮.getChildByName('佩戴') then 
        local 装备 = {'头戴','手戴','脚穿','印记'}
        local i_equip = G.misc().equip[(G.misc().equip_data_i - 1)*18 + G.misc().equip_data ] 
        local o_equip = G.QueryName( i_equip     ) 
        if i_equip  then 
            if G.misc().equip_队员编号 == 0 then 
                if o_equip.需求性别 == 0 and G.call('get_point',41) == 0 then 
                    G.call('notice1','[03]无法装备此装备！')
                else
                    local o_body = G.QueryName(0x10030001)
                    if o_body[装备[o_equip.类型]] then 
                        G.call('add_equip',o_body[装备[o_equip.类型]],1)  
                    end
                    o_body[装备[o_equip.类型]] = i_equip
                    G.call('add_equip',i_equip,-1)  
                    
                end
            else
                local i_role = 0x10040000 + G.misc().equip_队员编号
                local o_role = G.QueryName(i_role)
                if o_equip.需求性别 == 0 and o_role.性别 == 1 then
                    G.call('notice1','[03]无法装备此装备！')
                else
                    if o_role[装备[o_equip.类型]] then 
                        G.call('add_equip',o_role[装备[o_equip.类型]],1)  
                    end
                    G.call('通用_替换装备',i_role,i_equip)
                    G.call('add_equip',i_equip,-1) 
                end
            end
            self.obj.c_equip:显示装备()  
            self.obj.c_equip:角色操作(G.misc().equip_队员编号)  
        end
    end
    local 装备 = {'头戴','手戴','脚穿','印记'}
    for i = 1,4 do 
        if tar == self.按钮.getChildByName(装备[i]) then
            if G.misc().equip_队员编号 == 0 then
                local o_body = G.QueryName(0x10030001)
                if o_body[装备[i]] then
                    local i_equip = o_body[装备[i]]
                    o_body[装备[i]] = nil 
                    G.call('add_equip',i_equip,1) 
                end
            else
                local i_role = 0x10040000 + G.misc().equip_队员编号
                local o_role = G.QueryName(i_role)
                if o_role[装备[i]] then
                    local i_equip = o_role[装备[i]]
                    G.call('add_equip',i_equip,1) 
                    G.call('通用_卸下装备',i_role,i_equip)    
                end
            end
            self:显示装备() 
            self:角色操作(G.misc().equip_队员编号)
        end
      
         
    end
    for i = 1,18 do 
        if tar == self.装备_list[i].getChildByName('图片') then
            G.misc().equip_data = i
            self.obj.c_equip:显示装备()
            self.obj.c_equip:角色操作(G.misc().equip_队员编号)
        end
    end
    if tar == self.按钮.getChildByName('关闭') then 
        G.removeUI('v_equip')
        if G.misc().equip_队员编号 > 0 then 
            local ui = G.getUI('v_teammate')
            local c = ui.c_teammate
            c:显示更新(G.misc().队友) 
        end
        G.trig_event('锻造装备结束')  
    end
end  
return t