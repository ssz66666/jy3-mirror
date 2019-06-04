--[[3009

]]

local G = require "gf"
local t = G.com()
function t:init()
    self.物品 = self.obj.getChildByName('按钮').getChildByName('物品')
    self.页数 = self.obj.getChildByName('页数')
    self.总页数 = self.obj.getChildByName('总页数')
    self.左 = self.obj.getChildByName('按钮').getChildByName('左')
    self.右 = self.obj.getChildByName('按钮').getChildByName('右')
    self.装备图 = self.obj.getChildByName('显示').getChildByName('装备图')
    self.快捷图 = self.obj.getChildByName('显示').getChildByName('快捷')
    self.按钮 = self.obj.getChildByName('按钮')
    self.快捷 = self.obj.getChildByName('快捷')
    self.显示 = self.obj.getChildByName('显示')
    self.说明 = self.obj.getChildByName('说明')
    self.确定 = self.快捷.getChildByName('确定')
    self.总数量 = 24
    self.展示list = {}
    
end
function t:start()
    self.obj.getChildByName('银两').text = tostring(G.QueryName(0x10030001)[tostring(110)])
    if G.QueryName(0x10030001)[tostring(110)] > 999999 then
        self.obj.getChildByName('银两').text = '999999'
    end
    local item =G.DBTable('o_item')
    for i = 1,#item do
		G.QueryName(0x100b0000 + i).图标 = 0x560e0000 + i
	end	
    G.call('指令_存储属性')
    if G.call('get_point',193) ~= nil then 
        self.装备图.getChildByName('武器').getChildByName('图片').img = G.QueryName(G.call('get_point',193)).图标
        self.装备图.getChildByName('武器').getChildByName('黑底').visible = true
    else
        self.装备图.getChildByName('武器').getChildByName('黑底').visible = false
    end
    if G.call('get_point',194) ~= nil then  
        self.装备图.getChildByName('内衣').getChildByName('图片').img = G.QueryName(G.call('get_point',194)).图标
        self.装备图.getChildByName('内衣').getChildByName('黑底').visible = true
    else
        self.装备图.getChildByName('内衣').getChildByName('黑底').visible = false
    end 
    if G.call('get_point',195) ~= nil then 
        self.装备图.getChildByName('外衣').getChildByName('图片').img = G.QueryName(G.call('get_point',195)).图标 
        self.装备图.getChildByName('外衣').getChildByName('黑底').visible = true
    else
        self.装备图.getChildByName('外衣').getChildByName('黑底').visible = false
    end 
    if G.call('get_point',196) ~= nil then 
        self.装备图.getChildByName('内功').getChildByName('图片').img = G.QueryName(G.call('get_point',196)).图像 
        self.装备图.getChildByName('内功').getChildByName('黑底').visible = true
    else
        self.装备图.getChildByName('内功').getChildByName('黑底').visible = false
    end 
    if G.call('get_point',197) ~= nil then 
        self.装备图.getChildByName('轻功').getChildByName('图片').img = G.QueryName(G.call('get_point',197)).图像 
        self.装备图.getChildByName('轻功').getChildByName('黑底').visible = true
    else
        self.装备图.getChildByName('轻功').getChildByName('黑底').visible = false
    end 
    if G.call('get_point',198) ~= nil then 
        self.装备图.getChildByName('暗器').getChildByName('图片').img = G.QueryName(G.call('get_point',198)).图标 
        self.装备图.getChildByName('暗器').getChildByName('黑底').visible = true
    else
        self.装备图.getChildByName('暗器').getChildByName('黑底').visible = false
    end  
  
    for x = 1, 9, 1 do
        for y = 1, 2, 1 do
            local ui_sub = G.Clone(self.物品)
            ui_sub.x = -264 + (x - 1) * 63 
            ui_sub.y = -51 + (y - 1) * -63
            self.obj.getChildByName('按钮').addChild(ui_sub)
            ui_sub.visible = false
            self.展示list[(y - 1) * 9 + x] = ui_sub
        end
    end
    local 快捷 = {'q','w','e','r'}
    local o_hotkey = G.QueryName(0x100c0001)
    for i = 1,4 do 
        if o_hotkey[tostring(10+i)] ~= nil  then 
            self.快捷图.getChildByName(快捷[i]).img =  G.QueryName(o_hotkey[tostring(10+i)]).图标
            self.快捷图.getChildByName(快捷[i]).getChildByName('数量').text = G.QueryName(o_hotkey[tostring(10+i)]).数量 
        end    
    end 
    self:update()
end  
function t:update()
    local 快捷 = {'q','w','e','r'}
    local 装备 = {'头戴','手戴','脚穿','印记'}
    local o_body = G.QueryName(0x10030001)
    local o_hotkey = G.QueryName(0x100c0001)
    for i = 1,4 do 
        if o_body[装备[i]] then 
            self.装备图.getChildByName(装备[i]).img = G.QueryName(o_body[装备[i]]).图片
        else
            self.装备图.getChildByName(装备[i]).img = 0x56161002
        end
    end
    for i = 1,4 do 
        if o_hotkey[tostring(10+i)] ~= nil  then 
            self.快捷图.getChildByName(快捷[i]).img =  G.QueryName(o_hotkey[tostring(10+i)]).图标
            self.快捷图.getChildByName(快捷[i]).getChildByName('数量').text = G.QueryName(o_hotkey[tostring(10+i)]).数量 
        else
            self.快捷图.getChildByName(快捷[i]).img = nil
        end    
    end 
    local n = 0
    local item =G.DBTable('o_item')
    for i = 1,#item do
        if G.QueryName(0x100b0000+i).数量 > 0 then
           n = n + 1
        end
    end
    local zst = math.floor( (n-1)/18 )+1  
    self.总页数.text = tostring(zst)
    self.obj.getChildByName('总个数').text = tostring(n)
    local st = tonumber(self.obj.getChildByName('页数').text)--当前页面
    local item =G.DBTable('o_item')
    local num = 0
    local 显示数量 = 0
    for i = 1,#item do
        local v = G.QueryName(0x100b0000+i)
        if v.数量 > 0 then
            num = num + 1
            for i = 显示数量 + 1, 18, 1 do
                self.展示list[i].visible = false
            end
            if num <= (st - 1) * 18 then
            elseif num > st * 18 then
            else
                --显示物品
                显示数量 = 显示数量 + 1
                self.展示list[显示数量].visible = true
                self.展示list[显示数量].getChildByName('图片').img = G.QueryName(0x100b0000 + i).图标
            end    
            if 显示数量 >= 18 then
                return
            end
        end
    end
end 
function t:rollOver(tar)
    local 类别 = {'武器','内衣','外衣','内功','轻功','暗器','头戴','手戴','脚穿','印记'}
    local o_body = G.QueryName(0x10030001)
    for i = 7,10 do 
        if tar == self.装备图.getChildByName(类别[i]) and self.装备图.getChildByName(类别[i]).img ~= 0x56161002 then
            self.obj.getChildByName('关闭菜单').visible = false
            self.obj.getChildByName('说明').visible = true
            local o_equip = G.QueryName(o_body[类别[i]] )
            self.说明.getChildByName('名称').text = '名称:[07] '..o_equip.名称
            local  str = '说明:[07] '..o_equip.描述..'[br][08]效果: '
            local 效果 = {'生命','内力','拆招','搏击','闪躲','内功','轻身','减伤','左右','斗转'}
            for i = 1,#效果 do 
                if o_equip[效果[i]] and o_equip[效果[i]] > 0 then
                    str = str..'[03]'..效果[i]..'[01] +'..o_equip[效果[i]]..' ' 
                end
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
                local  装备 = {'头戴','手戴','脚穿','印记'}
                local o_role = o_body
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
                        str = str..'[br][07](二件套:)[br][06]'..'生命+2500 内力+2500  出手后集气从10%开始  增加内功【晕眩】几率'
                    else
                        str = str..'[br][09](二件套:)[br][09]'..'生命+2500 内力+2500  出手后集气从10%开始  增加内功【晕眩】几率'
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
                str = str..'[br][07]装备级别:  [01]'..o_equip.级别               
            end
            self.说明.getChildByName('效果').text = str
        end
    end
    local 快捷 = {'q','w','e','r'}
    local o_hotkey = G.QueryName(0x100c0001)
    local o_body = G.QueryName(0x10030001)
    for i = 1,4 do 
        if  tar == self.快捷图.getChildByName(快捷[i])  then 
            if o_hotkey[tostring(10+i)] ~= nil  then 
                self.obj.getChildByName('药果').visible = true
                self.obj.getChildByName('药果').getChildByName('说明').text = '  '..G.QueryName(o_hotkey[tostring(10+i)]).说明
                self.obj.getChildByName('药果').getChildByName('名称').text = '名称:'..G.QueryName(o_hotkey[tostring(10+i)]).名称
            else 
                self.obj.getChildByName('药果').visible = false     

            end     
        end
    end 
    for i = 1,6 do 
        if tar == self.装备图.getChildByName(类别[i]).getChildByName('按钮')  then 
            if   G.call('get_point',192+i) ~= nil then 
                self.obj.getChildByName('效果').getChildByName('有无招式').visible = false
                self.obj.getChildByName('效果').getChildByName('效果').visible = false
                self.obj.getChildByName('效果').visible = true
                self.obj.getChildByName('效果').getChildByName('名称').text = '名称:'..G.QueryName(G.call('get_point',192+i)).名称
                if i == 1  then --
                    self.obj.getChildByName('效果').getChildByName('说明').text = ' 增强伤害'..tostring(G.QueryName(G.call('get_point',192+i)).系数+50)..'%'
                elseif i == 2 then --
                    self.obj.getChildByName('效果').getChildByName('说明').text = ' 减免伤害'..tostring(G.QueryName(G.call('get_point',192+i)).系数-100)..'%'
                elseif i == 3 then --
                    self.obj.getChildByName('效果').getChildByName('说明').text = G.QueryName(G.call('get_point',192+i)).说明
                elseif i == 6  then --
                    self.obj.getChildByName('效果').getChildByName('说明').text = ' 增强伤害'..tostring(G.QueryName(G.call('get_point',192+i)).系数+50)..'%'    
                elseif i == 4 or i == 5 then --
                    self.obj.getChildByName('效果').getChildByName('有无招式').visible = true
                    self.obj.getChildByName('效果').getChildByName('效果').visible = true
                    local lv = G.QueryName(G.call('get_point',192+i)).修为等级
                    local addhp = G.QueryName(G.call('get_point',192+i)).生命加
                    local addmp = G.QueryName(G.call('get_point',192+i)).内力加
                    local addng = G.QueryName(G.call('get_point',192+i)).内功加
                    local addsd = G.QueryName(G.call('get_point',192+i)).闪躲加
                    local addqs = G.QueryName(G.call('get_point',192+i)).轻身加
                    local addcz = G.QueryName(G.call('get_point',192+i)).拆招加
                    local addbj = G.QueryName(G.call('get_point',192+i)).搏击加
                    local addpoint = {addhp,addmp,addng,addsd,addqs,addcz,addbj}
                    local 属性 = {'生命','内力','内功','闪躲','轻身','拆招','搏击'}
                    self.obj.getChildByName('效果').getChildByName('说明').text = '等级:'..tostring(lv)
                    if G.QueryName(G.call('get_point',192+i)).招式 == true then 
                        self.obj.getChildByName('效果').getChildByName('有无招式').text = '招式:'..'[03]有'
                    else
                        self.obj.getChildByName('效果').getChildByName('有无招式').text = '招式:'..'无'     
                    end 
                    local str = ''
                    for j = 1,7 do
                        if addpoint[j] > 0 then 
                           str = str..属性[j]..'+'..lv*addpoint[j]..' ' 
                        end    
                    end 
                    self.obj.getChildByName('效果').getChildByName('效果').text = str
                    -- if i == 4 then 
                    --     self.obj.getChildByName('效果').getChildByName('效果').text  ='效果:'..'生命+'..tostring(lv*addhp)..','..'内力+'..tostring(lv*addmp)..','..'拆招+'..tostring(lv*addcz)..','..'搏击+'..tostring(lv*addbj)..','..'内功+'..tostring(lv*addng)..','..'闪躲+'..tostring(lv*addsd)..','..'轻身+'..tostring(lv*addqs)
                    -- elseif i == 5 then
                    --     self.obj.getChildByName('效果').getChildByName('效果').text  ='效果:'..'拆招+'..tostring(lv*addcz)..','..'搏击+'..tostring(lv*addbj)..','..'内功+'..tostring(lv*addng)..','..'闪躲+'..tostring(lv*addsd)..','..'轻身+'..tostring(lv*addqs)
                    -- end 
                end 
            end        
        end     
    end     
end
function t:rollOut(tar)
    local 类别 = {'武器','暗器','内功','轻功','内衣','外衣','头戴','手戴','脚穿','印记'}
    local 快捷 = {'q','w','e','r'}
    for i = 7,10 do 
        if tar == self.装备图.getChildByName(类别[i]) then
            self.obj.getChildByName('说明').visible = false 
            self.obj.getChildByName('关闭菜单').visible = true
        end
    end
    for i = 1,6 do 
        if tar == self.装备图.getChildByName(类别[i]).getChildByName('按钮')  then 
            self.obj.getChildByName('效果').visible = false
        end     
    end  
    for i = 1,4 do 
        if  tar == self.快捷图.getChildByName(快捷[i])  then 
            
            self.obj.getChildByName('药果').visible = false
          
        end
    end 
end   
function t:rclick(tar)
    G.Play(0x49011003, 1,false,100) 
    G.removeUI('v_item')
end 
function t:click(tar)
    local st  =  tonumber(self.页数.text)
    local zst = tonumber(self.总页数.text)
    if zst > 1 then 
        if tar == self.左  then
            G.Play(0x49011003, 1,false,100) 
            if st > 1 then
                st = st - 1
            elseif st == 1  then 
                st = zst
            end 
            self.obj.getChildByName('文本').visible = false
            self.obj.getChildByName('闪光').visible = false
            self.obj.getChildByName('快捷').visible = false
            self.obj.getChildByName('按钮').getChildByName('指令').visible = false
            self.obj.getChildByName('按钮').getChildByName('快捷').visible = false
            self.obj.getChildByName('文本').getChildByName('内功').visible = false
        elseif tar == self.右 then
            G.Play(0x49011003, 1,false,100) 
            if st < zst then 
                st = st + 1
            elseif st == zst then
                st = 1     
            end
            self.obj.getChildByName('文本').visible = false
            self.obj.getChildByName('闪光').visible = false
            self.obj.getChildByName('快捷').visible = false
            self.按钮.getChildByName('丢弃').visible = false
            self.obj.getChildByName('按钮').getChildByName('指令').visible = false
            self.obj.getChildByName('按钮').getChildByName('快捷').visible = false
            self.obj.getChildByName('文本').getChildByName('内功').visible = false
        end
    end     
    if tar == self.装备图.getChildByName('武器').getChildByName('按钮')  then 
        G.QueryName(0x10030001)[tostring(193)] = nil
        self.装备图.getChildByName('武器').getChildByName('图片').img = nil
        self.装备图.getChildByName('武器').getChildByName('黑底').visible = false
    elseif tar == self.装备图.getChildByName('暗器').getChildByName('按钮')  then 
        G.QueryName(0x10030001)[tostring(198)] = nil
        self.装备图.getChildByName('暗器').getChildByName('图片').img = nil
        self.装备图.getChildByName('暗器').getChildByName('黑底').visible = false
    elseif tar == self.装备图.getChildByName('内衣').getChildByName('按钮')  then 
        G.QueryName(0x10030001)[tostring(194)] = nil
        self.装备图.getChildByName('内衣').getChildByName('图片').img = nil
        self.装备图.getChildByName('内衣').getChildByName('黑底').visible = false
    elseif tar == self.装备图.getChildByName('外衣').getChildByName('按钮')  then 
        G.QueryName(0x10030001)[tostring(195)] = nil
        self.装备图.getChildByName('外衣').getChildByName('图片').img = nil
        self.装备图.getChildByName('外衣').getChildByName('黑底').visible = false
    elseif tar == self.按钮.getChildByName('百宝箱') then 
        G.misc().神奇装备 = 0
        G.addUI('v_equip')
        local  ui = G.getUI('v_equip');
        local c = ui.c_equip
        c:角色操作(0)
    end  
    self.页数.text = tostring(st)
    local n = tonumber(self.obj.getChildByName('总个数').text)
    for i = 1,18 do 
        if  tar == self.展示list[i].getChildByName('图片') then
            self.按钮.getChildByName('丢弃').visible = true
            self.obj.getChildByName('闪光').visible = true
            self.obj.getChildByName('快捷').visible = false
            self.obj.getChildByName('闪光').x = self.展示list[i].x + 20
            self.obj.getChildByName('闪光').y = self.展示list[i].y
            local o_item_物品 = G.QueryName(0x100b0000  + (self.展示list[i].getChildByName('图片').img - 0x560e0000) )
            G.QueryName(0x10030001)[tostring(192)] = 0x100b0000  + (self.展示list[i].getChildByName('图片').img - 0x560e0000) --记录当前选择的物品
            if o_item_物品  ~= nil then 
                self.obj.getChildByName('文本').visible = true 
                if o_item_物品.名称 == '' or o_item_物品.名称 == nil then 
                    self.obj.getChildByName('文本').getChildByName('名称').text = ''
                else  
                     self.obj.getChildByName('文本').getChildByName('名称').text = o_item_物品.名称
                end 
                self.obj.getChildByName('文本').getChildByName('数量').text = tostring(o_item_物品.数量)
                if o_item_物品.说明 == '' or o_item_物品.说明 == nil then 
                    self.obj.getChildByName('文本').getChildByName('说明').text = ''
                else  
                     self.obj.getChildByName('文本').getChildByName('说明').text = o_item_物品.说明
                end
                self.按钮.getChildByName('指令').visible = false
                self.obj.getChildByName('文本').getChildByName('内功').visible = false
                self.按钮.getChildByName('快捷').visible = false
                if o_item_物品.类别 == 1 then 
                    self.obj.getChildByName('文本').getChildByName('类别').text = '武器'
                    self.按钮.getChildByName('指令').getChildByName('名称').text = '装备'
                    self.按钮.getChildByName('指令').visible = true

                elseif  o_item_物品.类别 == 2 then 
                    self.obj.getChildByName('文本').getChildByName('类别').text = '暗器'
                    self.按钮.getChildByName('指令').getChildByName('名称').text = '装备'
                    self.按钮.getChildByName('指令').visible = true
                elseif  o_item_物品.类别 == 3 then 
                    self.obj.getChildByName('文本').getChildByName('类别').text = '内衬'
                    self.按钮.getChildByName('指令').getChildByName('名称').text = '装备'
                    self.按钮.getChildByName('指令').visible = true
                elseif  o_item_物品.类别 == 4 then 
                    self.obj.getChildByName('文本').getChildByName('类别').text = '外衣'
                    self.按钮.getChildByName('指令').getChildByName('名称').text = '装备'
                    self.按钮.getChildByName('指令').visible = true
                elseif  o_item_物品.类别 == 5 then 
                    self.obj.getChildByName('文本').getChildByName('类别').text = '秘籍'
                    self.按钮.getChildByName('指令').getChildByName('名称').text = '研习'
                    self.obj.getChildByName('文本').getChildByName('内功').visible = true
                    self.按钮.getChildByName('指令').visible = true
                    self.obj.getChildByName('文本').getChildByName('内功').getChildByName('需点').text = tostring(o_item_物品.系数)
                    self.obj.getChildByName('文本').getChildByName('内功').getChildByName('修为点').text = tostring(G.QueryName(0x10030001)[tostring(5)])
                elseif  o_item_物品.类别 == 6 then 
                    self.obj.getChildByName('文本').getChildByName('类别').text = '食物'
                    self.按钮.getChildByName('指令').getChildByName('名称').text = '食用'
                    self.按钮.getChildByName('指令').visible = true
                    self.按钮.getChildByName('快捷').visible = true
                elseif  o_item_物品.类别 == 7 then 
                    self.obj.getChildByName('文本').getChildByName('类别').text = '酒'
                    
                elseif  o_item_物品.类别 == 8 then 
                    self.obj.getChildByName('文本').getChildByName('类别').text = '茶'
                    
                elseif  o_item_物品.类别 == 9 then 
                    self.obj.getChildByName('文本').getChildByName('类别').text = '药物'
                    self.按钮.getChildByName('指令').getChildByName('名称').text = '服用'
                    self.按钮.getChildByName('指令').visible = true
                    self.按钮.getChildByName('快捷').visible = true
                elseif  o_item_物品.类别 == 10 then 
                    self.obj.getChildByName('文本').getChildByName('类别').text = '杂物'
                elseif  o_item_物品.类别 == 11 then 
                    self.obj.getChildByName('文本').getChildByName('类别').text = '毒物'
                elseif  o_item_物品.类别 == 12 then 
                    self.obj.getChildByName('文本').getChildByName('类别').text = '食材'
                elseif  o_item_物品.类别 == 13 then 
                    self.obj.getChildByName('文本').getChildByName('类别').text = '材料'
                end
           end     
        end 
    end  
        local i_item_物品 = G.call('get_point',192)   
        local o_item_物品 = G.QueryName(i_item_物品)
        local 快捷 = {'q','w','e','r'}
        local o_hotkey = G.QueryName(0x100c0001)
        local o_body = G.QueryName(0x10030001)
        if tar == self.按钮.getChildByName('快捷') then 
            self.obj.getChildByName('快捷').visible = true
            for i = 1,4 do 
                if o_hotkey[tostring(10+i)] ~= nil then 
                    self.快捷.getChildByName(快捷[i]).c_button.img_normal = G.QueryName(o_hotkey[tostring(10+i)]).图标
                    self.快捷.getChildByName(快捷[i]).getChildByName('数量').text = G.QueryName(o_hotkey[tostring(10+i)]).数量 
                end 
            end    
        end 

        for i = 1,4 do 
            if tar == self.快捷.getChildByName(快捷[i]) then 
                G.Play(0x49011003, 1,false,100) 
                self.快捷.getChildByName(快捷[i]).c_button.img_normal = o_item_物品.图标
                self.快捷.getChildByName(快捷[i]).getChildByName('数量').text = o_item_物品.数量
                o_hotkey[tostring(10+i)] = G.call('get_point',192)
                self.快捷图.getChildByName(快捷[i]).img = o_item_物品.图标
                self.快捷图.getChildByName(快捷[i]).getChildByName('数量').text = o_item_物品.数量 
            end
        end    
        if tar == self.按钮.getChildByName('丢弃') then
            local int_item = i_item_物品 - 0x100b0000 + 1
            if  i_item_物品 == G.call('get_point',193) or i_item_物品 == G.call('get_point',194) or i_item_物品 == G.call('get_point',195) or i_item_物品 == G.call('get_point',198) then
                if G.call('get_item',int_item) > 1 then 
                   G.call('add_item',int_item,-G.call('get_item',int_item)+1)
                end
            else
                G.call('add_item',int_item,-G.call('get_item',int_item))
                self.obj.getChildByName('文本').visible = false
                self.obj.getChildByName('闪光').visible = false
                self.按钮.getChildByName('丢弃').visible = false
                self.obj.getChildByName('按钮').getChildByName('指令').visible = false
                self.obj.getChildByName('按钮').getChildByName('快捷').visible = false
                self.obj.getChildByName('文本').getChildByName('内功').visible = false
            end 
 
        end
       -- 1武器2暗器3内衬4外衣5秘籍6食物7酒8茶9药物10杂物11毒物12食材13材料
        if tar == self.按钮.getChildByName('指令') then
            G.Play(0x49011003, 1,false,100) 
            if o_item_物品.加生命百分比 == nil then 
                o_item_物品.加生命百分比 = 0
            end    
            if o_item_物品.加内力百分比 == nil then 
                o_item_物品.加内力百分比 = 0
            end 
            if o_item_物品.加生命max == nil then 
                o_item_物品.加生命max = 0
            end    
            if o_item_物品.加内力max == nil then 
                o_item_物品.加内力max = 0
            end 
            if o_item_物品.加修为 == nil then 
                o_item_物品.加修为 = 0
            end
            local o_item_物品代码 = G.call('get_point',192)-0x100b0000
            if o_item_物品.类别 == 1  then
                G.QueryName(0x10030001)[tostring(193)] = G.call('get_point',192) 
                self.装备图.getChildByName('武器').getChildByName('图片').img = G.QueryName(G.call('get_point',192)).图标 
                self.装备图.getChildByName('武器').getChildByName('黑底').visible = true
            elseif o_item_物品.类别 == 2  then
                G.QueryName(0x10030001)[tostring(198)] = G.call('get_point',192)
                self.装备图.getChildByName('暗器').getChildByName('图片').img = G.QueryName(G.call('get_point',192)).图标  
                self.装备图.getChildByName('暗器').getChildByName('黑底').visible = true
            elseif o_item_物品.类别 == 3  then
                G.QueryName(0x10030001)[tostring(194)] = G.call('get_point',192)
                self.装备图.getChildByName('内衣').getChildByName('图片').img = G.QueryName(G.call('get_point',192)).图标
                self.装备图.getChildByName('内衣').getChildByName('黑底').visible = true
            elseif o_item_物品.类别 == 4  then
                G.QueryName(0x10030001)[tostring(195)] = G.call('get_point',192)
                self.装备图.getChildByName('外衣').getChildByName('图片').img = G.QueryName(G.call('get_point',192)).图标
                self.装备图.getChildByName('外衣').getChildByName('黑底').visible = true
            elseif o_item_物品.类别 == 5  then
                if G.call('can_use') == true  then
                    if  o_item_物品.武功 ~= nil then
                        if G.QueryName(o_item_物品.武功).等级 >= 1  then
                            G.call('notice','无需重复领悟')
                        else
                            if G.QueryName(0x10030001)[tostring(5)] >= o_item_物品.系数 then 
                                if o_item_物品.自宫 > 0  and G.call('get_point',41) == 0 and G.call('通用_取得套装',0,6) < 3 and not G.misc().太监 then 
                                    --G.removeUI('v_item') 
                                    G.trig_event('自宫') 
                                    self.obj.getChildByName('文本').visible = false
                                    self.obj.getChildByName('闪光').visible = false
                                    self.obj.getChildByName('文本').getChildByName('内功').visible = false
                                    self.obj.getChildByName('按钮').getChildByName('指令').visible = false 
                                else        
                                    G.call('use_item',o_item_物品代码+1,1) 
                                    G.call('add_item',o_item_物品代码+1,1)
                                    G.call('add_point',5,-o_item_物品.系数) 
                                    G.Play(0x4901000f, 1,false,100)
                                    G.call('learn_magic',o_item_物品.武功-0x10050000+1) 
                                    self.obj.getChildByName('文本').visible = false
                                    self.obj.getChildByName('闪光').visible = false
                                    self.obj.getChildByName('文本').getChildByName('内功').visible = false
                                    self.obj.getChildByName('按钮').getChildByName('指令').visible = false    
                                end                     
                            else
                                G.call('notice','修为点不够')     
                            end 
                        end
                    else
                        if G.QueryName(0x10030001)[tostring(5)] >= o_item_物品.系数 then 
                            G.call('notice','恭喜领悟'..o_item_物品.名称) 
                            G.call('use_item',o_item_物品代码+1,1) 
                            G.call('add_point',5,-o_item_物品.系数)
                            self.obj.getChildByName('文本').visible = false
                            self.obj.getChildByName('闪光').visible = false
                            self.obj.getChildByName('文本').getChildByName('内功').visible = false
                            self.obj.getChildByName('按钮').getChildByName('指令').visible = false
                        else
                            G.call('notice','修为点不够')  
                        end     
                    end            
                else
                    G.call('notice','不够条件')
                end      
            elseif o_item_物品.类别 == 6  then
                if o_item_物品.加生命百分比 > 0  and o_item_物品.加内力百分比 == 0 then 
                   if G.QueryName(0x10030001)[tostring(44)]  ==    G.QueryName(0x10030001)[tostring(217)] then 
                      G.call('notice','已经很饱了') 
                    else
                        G.call('use_item',o_item_物品代码+1,1) 
                        
                    end  
                elseif o_item_物品.加生命百分比 == 0  and o_item_物品.加内力百分比 > 0 then
                    if G.QueryName(0x10030001)[tostring(46)]  ==    G.QueryName(0x10030001)[tostring(218)] then 
                        G.call('notice','已经很饱了')  
                    else
                        G.call('use_item',o_item_物品代码+1,1) 
                    end  
                elseif o_item_物品.加生命百分比 > 0  and o_item_物品.加内力百分比 > 0 then
                    if G.QueryName(0x10030001)[tostring(46)]  == G.QueryName(0x10030001)[tostring(218)] and 
                        G.QueryName(0x10030001)[tostring(44)]  ==    G.QueryName(0x10030001)[tostring(217)] then 
                        G.call('notice','已经很饱了') 
                    else
                        G.call('use_item',o_item_物品代码+1,1)                 
                    end  
                end 
                self.obj.getChildByName('文本').visible = false
                self.obj.getChildByName('闪光').visible = false
                self.obj.getChildByName('文本').getChildByName('内功').visible = false
                self.obj.getChildByName('按钮').getChildByName('指令').visible = false      
            elseif o_item_物品.类别 == 9  then
                local 加状态 = {'加生命max','加内力max','加修为','加内力最大值','加生命最大值'}
                for i = 1,#加状态 do 
                    if o_item_物品[加状态[i]] == nil then 
                        o_item_物品[加状态[i]] = 0
                    end
                end
                if  o_item_物品.加生命max > 0 or o_item_物品.加内力max > 0 or o_item_物品.加修为 > 0 or o_item_物品.加内力最大值 >0 or o_item_物品.加生命最大值 >0 then 
                    G.call('use_item',o_item_物品代码+1,1) 
                    if  o_item_物品.加修为 > 0  then 
                        G.call('notice','功力大增') 
                    end     
                else
                    if o_item_物品.加生命百分比 > 0  and o_item_物品.加内力百分比 == 0 then 
                        if  G.QueryName(0x10030001)[tostring(44)]  ==    G.QueryName(0x10030001)[tostring(217)] then 
                            G.call('notice','已经很健康了') 
                        else
                            G.call('use_item',o_item_物品代码+1,1) 
                        end  
                    elseif o_item_物品.加生命百分比 == 0  and o_item_物品.加内力百分比 > 0 then
                        if  G.QueryName(0x10030001)[tostring(46)]  ==    G.QueryName(0x10030001)[tostring(218)] then 
                            G.call('notice','已经健康了') 
                        else
                            G.call('use_item',o_item_物品代码+1,1) 
                        end   
                    elseif o_item_物品.加生命百分比 > 0  and o_item_物品.加内力百分比 > 0 then
                        if  G.QueryName(0x10030001)[tostring(46)]  == G.QueryName(0x10030001)[tostring(218)] and 
                            G.QueryName(0x10030001)[tostring(44)]  ==  G.QueryName(0x10030001)[tostring(217)] then 
                            G.call('notice','已经健康了')      
                        else
                            G.call('use_item',o_item_物品代码+1,1) 
                          
                        end 
                    end
                    if  G.QueryName(0x10030001)[tostring(81)] > 0  and G.QueryName(0x10030001)[tostring(85)] == 0 and  G.QueryName(0x10030001)[tostring(84)] == 0  then 
                        if o_item_物品.解毒 > 0  then 
                            G.call('use_item',o_item_物品代码+1,1) 
                            G.call('notice','中毒已经解除')
                        elseif  o_item_物品.解毒 == 0  and  (o_item_物品.解流血 > 0 or  o_item_物品.解内伤 > 0) then
                            G.call('notice','吃错了吧！')
                        end 
                    elseif  G.QueryName(0x10030001)[tostring(81)] == 0  and G.QueryName(0x10030001)[tostring(85)] > 0 and G.QueryName(0x10030001)[tostring(84)] == 0  then 
                        if o_item_物品.解流血 > 0  then 
                            G.call('use_item',o_item_物品代码+1,1) 
                            G.call('notice','受伤已经解除')
                        elseif  o_item_物品.流血 == 0  and  (o_item_物品.解中毒 > 0 or  o_item_物品.解内伤 > 0) then
                            G.call('notice','吃错了吧！')
                        end 
                    elseif  G.QueryName(0x10030001)[tostring(81)] == 0  and G.QueryName(0x10030001)[tostring(85)] == 0 and  G.QueryName(0x10030001)[tostring(84)] > 0  then 
                        if o_item_物品.解内伤 > 0  then 
                            G.call('use_item',o_item_物品代码+1,1) 
                            G.call('notice','内伤已经解除')
                        elseif  o_item_物品.内伤 == 0  and  (o_item_物品.解中毒 > 0 or  o_item_物品.解流血 > 0) then
                            G.call('notice','吃错了吧！')
                        end  
                    elseif  G.QueryName(0x10030001)[tostring(81)] > 0  and G.QueryName(0x10030001)[tostring(85)] == 0 and G.QueryName(0x10030001)[tostring(84)] > 0  then 
                        if o_item_物品.解内伤 > 0 and o_item_物品.解中毒 == 0  then 
                            G.call('use_item',o_item_物品代码+1,1) 
                            G.call('notice','内伤已经解除')
                        elseif o_item_物品.解中毒 > 0  and o_item_物品.解内伤 == 0  then 
                            G.call('use_item',o_item_物品代码+1,1) 
                            G.call('notice','中毒已经解除')
                        elseif o_item_物品.解中毒 > 0  and o_item_物品.解内伤 > 0  then    
                            G.call('use_item',o_item_物品代码+1,1) 
                            G.call('notice','中毒内伤已经解除')
                        elseif  o_item_物品.解流血 > 0  and  o_item_物品.解中毒 == 0 and  o_item_物品.解内伤 == 0 then
                            G.call('notice','吃错了吧！')
                        end    
                    elseif  G.QueryName(0x10030001)[tostring(81)] > 0  and G.QueryName(0x10030001)[tostring(85)] > 0 and G.QueryName(0x10030001)[tostring(84)] == 0  then 
                        if o_item_物品.解流血 > 0 and o_item_物品.解中毒 == 0  then 
                            G.call('use_item',o_item_物品代码+1,1) 
                            G.call('notice','受伤已经解除')
                        elseif o_item_物品.解中毒 > 0  and o_item_物品.解流血 == 0  then 
                            G.call('use_item',o_item_物品代码+1,1) 
                            G.call('notice','中毒已经解除')
                        elseif o_item_物品.解中毒 > 0  and o_item_物品.解流血 > 0  then    
                            G.call('use_item',o_item_物品代码+1,1) 
                            G.call('notice','中毒受伤已经解除')
                        elseif  o_item_物品.解流血 == 0  and  o_item_物品.解中毒 == 0 and  o_item_物品.解内伤 > 0 then
                            G.call('notice','吃错了吧！')
                        end 
                    elseif G.QueryName(0x10030001)[tostring(81)] == 0  and G.QueryName(0x10030001)[tostring(85)] > 0 and G.QueryName(0x10030001)[tostring(84)] > 0  then 
                        if o_item_物品.解流血 > 0 and o_item_物品.解内伤 == 0  then 
                            G.call('use_item',o_item_物品代码+1,1) 
                            G.call('notice','受伤已经解除')
                        elseif o_item_物品.解内伤 > 0  and o_item_物品.解流血 == 0  then 
                            G.call('use_item',o_item_物品代码+1,1) 
                            G.call('notice','内伤已经解除')
                        elseif o_item_物品.解内伤 > 0  and o_item_物品.解流血 > 0  then    
                            G.call('use_item',o_item_物品代码+1,1) 
                            G.call('notice','内伤受伤已经解除')
                        elseif  o_item_物品.解流血 > 0  and  o_item_物品.解中毒 == 0 and  o_item_物品.解内伤 == 0 then
                            G.call('notice','吃错了吧！')
                        end 
                    elseif  G.QueryName(0x10030001)[tostring(81)] > 0  and G.QueryName(0x10030001)[tostring(85)] > 0 and G.QueryName(0x10030001)[tostring(84)] > 0  then 
                        if o_item_物品.解流血 > 0 and  o_item_物品.解内伤 > 0 and  o_item_物品.解中毒 > 0  then 
                            G.call('use_item',o_item_物品代码+1,1) 
                            G.call('notice','内伤受伤中毒已经解除')
                        elseif o_item_物品.解流血 > 0 and  o_item_物品.解内伤 > 0 and  o_item_物品.解中毒 == 0  then 
                                G.call('use_item',o_item_物品代码+1,1) 
                                G.call('notice','内伤受伤已经解除')
                        elseif o_item_物品.解流血 > 0 and  o_item_物品.解内伤 == 0 and  o_item_物品.解中毒 > 0  then 
                                G.call('use_item',o_item_物品代码+1,1) 
                                G.call('notice','受伤中毒已经解除')
                        elseif o_item_物品.解流血 == 0 and  o_item_物品.解内伤 > 0 and  o_item_物品.解中毒 > 0  then 
                            G.call('use_item',o_item_物品代码+1,1) 
                            G.call('notice','内伤中毒已经解除')
                        elseif o_item_物品.解流血 == 0 and  o_item_物品.解内伤 == 0 and  o_item_物品.解中毒 > 0  then 
                            G.call('use_item',o_item_物品代码+1,1) 
                            G.call('notice','中毒已经解除')
                        elseif o_item_物品.解流血 > 0 and  o_item_物品.解内伤 == 0 and  o_item_物品.解中毒 == 0  then 
                            G.call('use_item',o_item_物品代码+1,1) 
                            G.call('notice','受伤已经解除')
                        elseif o_item_物品.解流血 == 0 and  o_item_物品.解内伤 > 0 and  o_item_物品.解中毒 == 0  then 
                            G.call('use_item',o_item_物品代码+1,1) 
                            G.call('notice','内伤已经解除')        
                        end
                    else 
                        G.call('notice','已经健康了')  
                    end                     
                end
                self.obj.getChildByName('文本').visible = false
                self.obj.getChildByName('闪光').visible = false
                self.按钮.getChildByName('丢弃').visible = false
                self.obj.getChildByName('按钮').getChildByName('快捷').visible = false
                self.obj.getChildByName('文本').getChildByName('内功').visible = false
                self.obj.getChildByName('按钮').getChildByName('指令').visible = false     
            end
            G.call('指令_存储属性')
        end
    if tar == self.确定 then 
        G.Play(0x49011003, 1,false,100) 
        self.快捷.visible = false
    end     
    if tar == self.按钮.getChildByName('结束') or tar == self.obj.getChildByName('关闭菜单')then 
        G.Play(0x49011003, 1,false,100) 
        G.removeUI('v_item')   
    end     
end 
return t