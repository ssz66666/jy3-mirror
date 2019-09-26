--[[3026

]]

local G = require "gf"
local t = G.com()
function t:init()
    self.文本 = self.obj.getChildByName('文本')
    self.指引 = self.文本.getChildByName('指引')
    self.关于 = self.文本.getChildByName('关于')
    self.重铸 = self.文本.getChildByName('重铸')
    self.重生 = self.文本.getChildByName('重生')
    self.设置 = self.文本.getChildByName('设置')
    self.按钮 = self.obj.getChildByName('按钮')
end
function t:start()
    G.misc().作弊菜单 = 0
    G.misc().开启 = 0
    G.misc().清除成就 = 0
    if G.misc().切磋开关 == nil  then
        G.misc().切磋开关 = 1  
    end
    self.设置.getChildByName('data2').text = G.misc().切磋开关
    if not G.getUI('v_title')  then
        self.按钮.getChildByName('密令').visible = true
        self.按钮.getChildByName('返回').visible = true
        self.按钮.getChildByName('重铸').visible = true
        self.按钮.getChildByName('重生').visible = false
        if G.call('get_point',237) > 1 then 
           self.按钮.getChildByName('重生').visible = true
        end
    else
        self.按钮.getChildByName('密令').visible = false
        self.按钮.getChildByName('返回').visible = false
        self.按钮.getChildByName('重铸').visible = false
        self.按钮.getChildByName('重生').visible = false
    end  
    self.关于.shadowX = 1
    self.关于.shadowAlpha = 255  
    self.重生.getChildByName('都不清除').shadowX = 1 
    self.重生.getChildByName('都不清除').shadowAlpha = 255
    self.重生.getChildByName('清除周目').shadowX = 1 
    self.重生.getChildByName('清除周目').shadowAlpha = 255
    self.重生.getChildByName('清除成就').shadowX = 1 
    self.重生.getChildByName('清除成就').shadowAlpha = 255
    self.按钮.getChildByName('指引').shadowX = 1
    self.按钮.getChildByName('指引').shadowAlpha = 255
    self.按钮.getChildByName('返回').shadowX = 1
    self.按钮.getChildByName('返回').shadowAlpha = 255
    self.按钮.getChildByName('设置').shadowX = 1
    self.按钮.getChildByName('设置').shadowAlpha = 255
    self.按钮.getChildByName('重铸').shadowX = 1
    self.按钮.getChildByName('重铸').shadowAlpha = 255
    self.按钮.getChildByName('重生').shadowX = 1
    self.按钮.getChildByName('重生').shadowAlpha = 255
    self.按钮.getChildByName('关于').shadowX = 1
    self.按钮.getChildByName('关于').shadowAlpha = 255
    self.按钮.getChildByName('成就').shadowX = 1
    self.按钮.getChildByName('成就').shadowAlpha = 255
    self.设置.getChildByName('战斗速度').shadowX = 1
    self.设置.getChildByName('战斗速度').shadowAlpha = 150
    self.设置.getChildByName('快').shadowX = 1
    self.设置.getChildByName('快').shadowAlpha = 150
    self.设置.getChildByName('慢').shadowX = 1
    self.设置.getChildByName('慢').shadowAlpha = 150
    self.设置.getChildByName('data').text = tostring(math.floor(G.QueryName(0x10030001)[tostring(236)]/10)) 
    self.关于.text = '                   [0a]关于2019版[08]《金庸群侠传3》[0a]说明：[br]    [03]《金庸群侠传3》[0a]原版是由[03]半瓶神仙醋·郭磊[0a]开发的一款角色扮演游戏，于2009年发行。该作品沿袭[03]《金庸群侠传2》[0a]采用自由开放的金书世界，该作的故事和门派以及战斗等至今还让人津津乐道；此次的2019版在获得[03]半瓶神仙醋·郭磊[0a]的授权后精心制作，在保留原游戏内容外增加和改动的有以下内容：[br][02]  1，[0a]原游戏战斗系统采用的是全部人物完全独立的ATB集气，新版改成[03]统一[0a]的集气，和原作不同的是先集气再根据选择的武功招式的气槽进行读条施放；[br][02]  2，[0a]人物增加[03]被动技能[0a]，队友的可在查看状态的时候查看被动效果，马车队友增加到[03]上限12名[0a]，队友可参加的战斗可以选择出战；增加[03]赵敏和小昭[0a]的绿柳山庄剧情，二选一入队；[03]穆念慈[0a]增加喜好物可以培养；[br]  [02]3，[0a]小游戏少林寺[03]藏经阁[0a]简化；另外增加一个[03]猜数字[0a]的小游戏，在游戏后期半瓶神仙醋加入后聚贤庄对话可以游玩；[br][02]  4，[0a]增加[03]周目与成就[0a]系统，神秘商人和铁匠售出打造物品将根据周目数增加；继承通关存档的下周目根据成就积分获得一定的修行点，同时主角根据成就积分随机获得一定个数的被动技能，上限4个；[br][02]  5，[0a]另外有部分隐藏功能等待玩家发掘；[br]    以上是新版改动较多的几点，同时新版根据[03]移动端[0a]做了部分优化，比如增加了侧边栏的选择项，增加了战斗菜单的武功选择侧边框；制作仓促发现BUG可[03]Q群（7197845990）[0a]反映，后续会作持续优化；[br]    最后感谢[03]半瓶神仙醋·郭磊[0a]的付出，感谢[03]QQ1041733430[0a]好友"美娜"的测玩，感谢[03]铁血丹心（大武侠）[0a]论坛朋友们帮助以及对本作的关心与付出的你们，that is all..........'
    self.指引.getChildByName('指引1').text = '                       [0a]【江湖指引】[br][08]【角色属性介绍】[br][02]1,[06]【侠义值】[0a]:角色为人处世[03]善恶[0a]的表现[br][02]2,[06]【江湖名望】[0a]:江湖[03]地位[0a]的反应[br][02]3,[06]【力道】[0a]:影响武功的[03]基础伤害值[0a]与搏击[br][02]4,[06]【根骨】[0a]:根骨成长会提升[03]生命[0a]上限[br][02]5,[06]【悟性】[0a]:影响升级获得的[03]修行点[0a]以及战斗时招式[03]熟练度[0a]提升[br][02]6,[06]【福缘】[0a]:[03]特别事件[0a]需要一定福缘触发[br][02]7,[06]【灵敏】[0a]:影响[03]闪避和轻身[br][02]8,[06]【定力】[0a]:不易受[03]负面状态[0a]影响[br][02]9,[06]【修为点】[0a]:用来打通[03]经脉和学习武功[br][02]10,[06]【拳掌、御剑等】[0a]:提高对应武功的[03]伤害[br][02]11,[06]【搏击】[0a]:影响招式攻击的[03]命中率[br][02]12,[06]【闪躲】[0a]:影响被攻击时的[03]闪躲率[br][02]13,[06]【拆招】[0a]:提供一定的[03]减伤[0a]效果[br][02]14,[06]【内功】[0a]:影响武功的[03]基础伤害[br][02]15,[06]【轻身】[0a]:影响[03]集气速度[br][02]16,[06]【生命值】[0a]:战斗为0则[03]死亡[br][02]17,[06]【内力值】[0a]:发动武功消耗，不够内力计算伤害则没有[03]内功加成[br][02]18,[06]【体力值】[0a]:战斗行动消耗，不够10%时候使用武功招式有机会[03]晕眩           '
    self.指引.getChildByName('指引2').text = '                       [0a]【江湖指引】[br][08]【角色属性提升】[br][02]1,[06]【侠义值】[0a]:为[03]善[0a]则加，反之则减[br][02]2,[06]【江湖名望】[0a]:完成一些[03]江湖事件[br][02]3,[06]【力道】[0a]:小游戏[03]伐木[0a]可增加，上限100[br][02]4,[06]【根骨】[0a]:全真修炼[03]养生、海底采矿、算命[0a]提升,上限100[br][02]5,[06]【悟性】[0a]:华山派修炼[03]儒风[0a]、牛家村[03]书生[03]读书[0a]以及[03]猜字小[0a]游戏提升，上限100[br][02]6,[06]【福缘】[0a]:[03]算命、钓鱼[0a]有机会提升,上限100[br][02]7,[06]【灵敏】[0a]:小游戏[03]打猎[0a]提升,上限100[br][02]8,[06]【定力】[0a]:小游戏[03]钓鱼[0a]和少林寺修炼[03]佛法[0a]提升,上限100[br][02]9,[06]【修为点】[0a]:[03]升级[0a]提升,服用[03]大还丹[0a]一颗提升5点[br][02]10,[06]【拳掌、御剑等】[0a]:通过战斗升级对应[03]武功等级[0a]时提升,拳掌[03]海底采矿[0a]有机会提升,全部上限100[br][02]11,[06]【搏击】[0a]:[03]修为点[0a]兑换[br][02]12,[02][06]【闪躲】[0a]:[03]修为点[0a]兑换[br][02]13,[06]【拆招】[0a]:[03]修为点[0a]兑换[br][02]14,[06]【内功】[0a]:[03]装备内功[0a]附加和[03]打通经脉[0a]增加[br][02]15,[06]【轻身】[0a]:[03]装备轻功[0a]附加[br][06]【特别说明】[0a]:搏击、闪躲、拆招、内功、轻身基础[03]上限100[0a]，装备的内功，轻功[03]附加值[0a]不在100上限计算之内         '
    self.指引.getChildByName('指引3').text = '                       [0a]【江湖指引】[br][08]【其他介绍】:[br][02]1,[06]【时间系统】[0a]:本作事件基本都是通过[03]时间推进[0a]触发，战斗、小游戏这些同样会推进时间；初始村一年[03]初一[0a]开始[03]初五[0a]结束，门派[03]二年十二月十四日[0a]触发出师事件，[03]三年十二月十四日[0a]最终结局，请合理安排时间[br][02]2,[06]【存档系统】[0a]:本游戏存档除了初始村[03]酒店休息[0a]另外[03]门派[0a]里面和[03]聚贤庄[0a]都有休息指令，休息同时存档时间也会向前推进[03]6个时辰;另外有一个[03]自动记录[0a]档位,当提示自动记录完成时即自动保存[br][02]3,[06]【经脉系统】[0a]:每个经脉数量不等，打通每个点都需要[03]一个修行点[0a]，每打通一个增加[03]生命与内力上限10点,内功加1[0a]，全部打通[03]额外增加内力上限[0a]；打通经脉作用就是可以[03]修炼特殊武功[br][02]4,[06]【门派系统】[0a]:目前开放的有[03]武当、少林、全真、古墓、华山以及逍遥派[0a]事件，前面5个门派都会通过在初始村你的选择触发，门派都有门派技能和丰富的门派事件；后续也会考虑增加更多的门派[br][02]5,[06]【小游戏】[0a]:本作有[03]打猎、伐木、钓鱼、采矿、押宝[0a]5个小游戏，原作藏经阁小游戏简化[br][02]6,[06]【物品系统】[0a]:通过物品栏界面对武器、外衣、内衬进行装备，其中武器提供对应[03]武功伤害[0a]，外衣[03]特殊事件[0a]需要，内衬提供[03]额外的伤害减免[0a]；药品可以设置到的药品[03]快捷键QWER[0a]，以便战斗时使用；武功秘籍修炼[03]满足条件[0a]修炼即可修炼成功同时需要一定的[03]修为点'
    self.指引.getChildByName('指引4').text = '                       [0a]【江湖指引】[br][08]【其他介绍】:[br][02]7,[06]【商店系统】[0a]:本作除了[03]牛家村[0a]几个商店外就大地图[03]蝴蝶谷[0a]药店，可以通过商店购买所需要的物品，牛家村还有几个商店是可以贩卖物品[br][02]8,[06]【武功系统】[0a]:武功分为九个类别，[03]外功[0a]可以设置到1-7快捷键，[03]内功和轻功[0a]需要[03]装备[0a]才有效果，有[03]招式[0a]的内功装备后会自动在快捷键8，外功通过[03]战斗使用[0a]时升级经验提升等级，内功轻功则需要用[03]修为点[0a]提升等级[br][02]9,[06]【队友系统】[0a]:可加入队友[03]上限[0a]为12，队友界面可以进行[03]宴请、馈赠、切磋、治疗、离队[0a]操作：宴请可提升队友[03]好感度[0a]；馈赠可提升[03]队友能力[0a]与好感度；切磋胜过队友，队友有机会获得[03]能力提升[br][02]10,[06]【战斗系统】[0a]:战斗分为[03]集气和发动招式[0a]二部分，敌人以及队友全部[03]自动操作[0a]；主角则需要[03]手动[0a]：当集气到[03]一半[0a]时候即可选择[03]快捷键[0a]或者[03]点击图标[0a]，如点击物品快捷键则会立即使用快捷键设置的[03]药品[0a]，点击招式则会进入[03]技能读条[0a]，根据武功读条速度不同，读条完则发动武功:[br][02]11,[06]【被动技能】[0a]:我方队友大多都有一个[03]被动技能[0a],查看队友状态时可预览效果,主角被动技能具体查看后面[03]成就系统[0a]说明      '
    self.指引.getChildByName('指引5').text = '                       [0a]【江湖指引】[br][08]【其他介绍】:[br][02]12,[06]【周目系统】[0a]:游戏中牛家村铁匠可[03]打造武器[0a]随着周目数的增加而增加，另外[03]绿柳山庄[0a]一周目不开放，神秘商人一周目不会出售[03]夜行衣[0a]，也就是说一周目[03]藏经阁[0a]是进不了，后续还会增加多周目内容，敬请期待[br][02]13,[06]【成就系统】[0a]:可在[03]系统页面[0a]进行查看具体成就，成就以[03]周目继承[0a]的形式累加，新游戏主角初始被动技能和修行点是根据[03]成就点[0a]数进行换算的，每超过[03]500[0a]可以随机获得一个初始被动技能，上限4个，初始修行点为成就点[03]除以20[0a]取整           '
    local 指引 = {'指引1','指引2','指引3','指引4','指引5'}
    for i = 1,5 do
        self.指引.getChildByName(指引[i]).shadowX = 1
        self.指引.getChildByName(指引[i]).shadowAlpha = 255
    end 
    self.重铸.getChildByName('文本').text = '    [0a]【特别说明】：[03]重铸[0a]会将所有打通的[03]经脉还原[0a]以及所有轻功内功[03]修为等级还原成0级[0a]并[03]返还[0a]全部修行点，游戏当中只有当等级是[03]20倍数[0a]的时候才可以重铸，请慎重选择重铸时机'
    self.重铸.getChildByName('文本').shadowX = 1
    self.重铸.getChildByName('文本').shadowAlpha = 255
    self.重生.getChildByName('文本').text = '    [0a]【特别说明】：重生最低等级为[03]50[0a]级，根据选项选择[03]需要[0a]的重生重置条目，点击即可重生,不需要请速度[03]返回[0a]！！'
    self.重生.getChildByName('文本').shadowX = 1
    self.重生.getChildByName('文本').shadowAlpha = 255
    self.设置.getChildByName('data1').text = math.floor(G.GetGlobalVolume()*5)
end
function t:输入字符()
    G.SetFocus(self.文本.getChildByName('secret').getChildByName('文本'));
    return self.文本.getChildByName('secret').getChildByName('文本').text
end
function t:rollOver(tar)
    local key = {'指引','设置','关于','重铸','返回','成就','重生'}
    for i = 1,#key do 
        if tar ==  self.按钮.getChildByName(key[i]) then
            self.按钮.getChildByName(key[i]).style = 1
            self.按钮.getChildByName(key[i]).shadowX = 1
            self.按钮.getChildByName(key[i]).shadowAlpha = 255
        end
    end
end
function t:rollOut(tar)
    local key = {'指引','设置','关于','重铸','返回','成就','重生'}
    for i = 1,#key do 
        if tar ==  self.按钮.getChildByName(key[i]) then
            self.按钮.getChildByName(key[i]).style = 7
        end
    end
end 
function t:rclick(tar)
    if not G.getUI('v_achieve') then 
        if self.obj.getChildByName('返回').visible == false  then
            G.Play(0x49011003, 1,false,100) 
            G.removeUI('v_system') 
            if not G.getUI('v_title')  then
                G.call("goto_map",G.QueryName(0x10030001)[tostring(140)]-0x10060000)
            else
            local ui = G.getUI('v_title')
                ui.alpha = 255
            end
        else  
            G.Play(0x49011003, 1,false,100) 
            self.按钮.visible = true
            self.文本.getChildByName('secret').visible = false
            self.obj.getChildByName('返回').visible = false
            self.文本.getChildByName('指引').visible = false
            self.文本.getChildByName('重铸').visible = false
            self.文本.getChildByName('设置').visible = false 
            self.文本.getChildByName('关于').visible = false
            self.文本.getChildByName('重生').visible = false
        end  
    end  
end
function t:click(tar)
    local 指引 = {'指引1','指引2','指引3','指引4','指引5'}
    if tar == self.按钮.getChildByName('指引') then
        G.Play(0x49011003, 1,false,100) 
        self.按钮.visible = false
        self.obj.getChildByName('返回').visible = true
        self.文本.getChildByName('指引').visible = true
        G.Play(0x49011003, 1,false,100) 
    elseif tar == self.重铸.getChildByName('script') then
        G.misc().开启 = 1
    elseif tar == self.按钮.getChildByName('设置') then
        G.Play(0x49011003, 1,false,100) 
        self.按钮.visible = false
        self.obj.getChildByName('返回').visible = true
        self.文本.getChildByName('设置').visible = true
    elseif  tar == self.按钮.getChildByName('关于') then 
        G.Play(0x49011003, 1,false,100) 
        self.按钮.visible = false
        self.obj.getChildByName('返回').visible = true
        self.文本.getChildByName('关于').visible = true 
    elseif  tar == self.按钮.getChildByName('成就') then
        G.Play(0x49011003, 1,false,100) 
        self.按钮.visible = false
        if  not G.getUI('v_title')  then
            G.addUI('v_achieve')
        else
            if G.misc().清除成就 ~= 1 then 
                G.call('成就_读档',10)
            end  
            G.addUI('v_achieve')  
        end
        
    elseif  tar == self.按钮.getChildByName('密令') then 
        self.按钮.visible = false
        self.obj.getChildByName('返回').visible = true
        self.文本.getChildByName('secret').visible = true
    elseif  tar == self.重铸.getChildByName('按钮') then
        local str = G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]
        if str == '十年磨一剑' then
            G.call('notice1','此特殊人物不可以重铸')
        else
            if G.call('get_point',4)%20 == 0 then 
                G.call('指令_重铸')
                self.obj.getChildByName('返回').visible = false
                self.文本.getChildByName('指引').visible = false
                self.文本.getChildByName('重铸').visible = false
                self.文本.getChildByName('设置').visible = false
                self.文本.getChildByName('secret').visible = false
                G.Play(0x4901000f, 1,false,100)  
                G.call('notice1','重铸成功')
            else
                G.call('notice1','等级不够')
            end
        end
    elseif  tar == self.重生.getChildByName('都不清除') then
        local str = G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]
        if str == '十年磨一剑' then
            G.call('notice1','此特殊人物不可以重生')
        else
            if G.call('get_point',4) >= 50  then 
                G.removeUI('v_system') 
                G.trig_event('重生')
            else
                G.call('notice1','等级不够50无法重生！')   
            end
        end   
    elseif  tar == self.重生.getChildByName('清除周目') then
        local str = G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]
        if str == '十年磨一剑' then
            G.call('notice1','此特殊人物不可以重生')
        else
            if G.call('get_point',4) >= 50 then 
                G.removeUI('v_system') 
                if G.call('get_point',237) >= 2 then 
                   G.call('set_point',237,2)
                   G.call('set_newpoint',237,-12)
                end
                G.trig_event('重生')
            else
                G.call('notice1','等级不够50无法重生！')   
            end
        end  
    elseif  tar == self.重生.getChildByName('清除成就') then
        local str = G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]
        if str == '十年磨一剑' then
            G.call('notice1','此特殊人物不可以重生')
        else
            if G.call('get_point',4) >= 50 then 
                G.removeUI('v_system') 
                G.misc().清除成就 = 1
                G.trig_event('重生')
            else
                G.call('notice1','等级不够50无法重生！')   
            end
        end 
    elseif  tar == self.按钮.getChildByName('重生') then
        G.Play(0x49011003, 1,false,100) 
        self.按钮.visible = false  
        self.文本.getChildByName('重生').visible = true
        self.obj.getChildByName('返回').visible = true    
    elseif  tar == self.按钮.getChildByName('重铸') then
        G.Play(0x49011003, 1,false,100) 
        self.按钮.visible = false  
        self.文本.getChildByName('重铸').visible = true
        self.obj.getChildByName('返回').visible = true
    elseif  tar == self.按钮.getChildByName('返回') then
        G.Play(0x49011003, 1,false,100) 
        G.removeUI('v_system') 
        G.trig_event('返回标题')
    elseif  tar == self.obj.getChildByName('返回') then 
            G.Play(0x49011003, 1,false,100) 
            self.按钮.visible = true
            self.文本.getChildByName('secret').visible = false
            self.obj.getChildByName('返回').visible = false
            self.文本.getChildByName('指引').visible = false
            self.文本.getChildByName('重铸').visible = false
            self.文本.getChildByName('设置').visible = false
            self.文本.getChildByName('关于').visible = false
            self.文本.getChildByName('重生').visible = false
    elseif  tar == self.obj.getChildByName('结束') or tar == self.obj.getChildByName('关闭菜单') then
        if not G.getUI('v_achieve') then 
            G.Play(0x49011003, 1,false,100) 
            G.removeUI('v_system') 
            if not G.getUI('v_title')  then
                G.call("goto_map",G.QueryName(0x10030001)[tostring(140)]-0x10060000)
            else
            local ui = G.getUI('v_title')
            ui.alpha = 255
            end
        end
    end   
    local st = tonumber(self.指引.getChildByName('data').text)
    if tar == self.指引.getChildByName('left')  or tar == self.指引.getChildByName('left1')  then 
        G.Play(0x49011003, 1,false,100) 
        if st > 1 then
            st = st - 1

        elseif st == 1  then 
            st = 5
        end
    elseif tar == self.指引.getChildByName('right') or tar == self.指引.getChildByName('right1') then   
        G.Play(0x49011003, 1,false,100) 
        if st < 5 then 
            st = st + 1
        elseif st == 5 then
            st = 1     
        end
    end 
    self.指引.getChildByName('data').text = tostring(st)
    for i = 1,5 do 
        self.指引.getChildByName(指引[i]).visible = false
    end 
    for i = 1,5 do 
        if tonumber(self.指引.getChildByName('data').text) == i then 
            self.指引.getChildByName(指引[i]).visible = true
        end 
    end 
    local dt = tonumber(self.设置.getChildByName('data').text)
    if tar == self.设置.getChildByName('left') then 
        G.Play(0x49011003, 1,false,100) 
        if dt > 1 then
            dt = dt - 1
        elseif dt == 1  then 
            dt = 8
        end
    elseif tar == self.设置.getChildByName('right') then   
        G.Play(0x49011003, 1,false,100) 
        if dt < 8 then 
            dt = dt + 1
        elseif dt == 8 then
            dt = 1     
        end
    end 
    self.设置.getChildByName('data').text = tostring(dt) 
    local dn = math.floor(tonumber(self.设置.getChildByName('data1').text))
    if tar == self.设置.getChildByName('left1') then 
        G.Play(0x49011003, 1,false,100) 
        if dn > 0 then
            dn = dn - 1
        elseif dn == 0  then 
            dn = 5
        end
    elseif tar == self.设置.getChildByName('right1') then   
        G.Play(0x49011003, 1,false,100) 
        if dn < 5 then 
            dn = dn + 1
        elseif dn == 5 then
            dn = 0     
        end
    end 
    G.QueryName(0x10030001)[tostring(236)] = dt * 10
    G.SetGlobalVolume(0.2*dn )
    self.设置.getChildByName('data1').text = tostring(dn)  
    if tar == self.设置.getChildByName('left2') or  tar == self.设置.getChildByName('right2') then 
        G.Play(0x49011003, 1,false,100) 
        if G.misc().切磋开关 == 0 then 
            G.misc().切磋开关 = 1
        else
            G.misc().切磋开关 = 0
        end
    end 
    self.设置.getChildByName('data2').text = G.misc().切磋开关
    if tar == self.设置.getChildByName('确定') then 
        G.Play(0x49011003, 1,false,100) 
        G.QueryName(0x10030001)[tostring(236)] = dt * 25
        self.按钮.visible = true
        G.SetGlobalVolume(0.1*dn )
        self.obj.getChildByName('返回').visible = false
        self.文本.getChildByName('指引').visible = false
        self.文本.getChildByName('设置').visible = false
    end 
    if tar == self.文本.getChildByName('secret').getChildByName('确定') then
        G.Play(0x49011003, 1,false,100) 
        if  self.文本.getChildByName('secret').getChildByName('文本').text == '修改一时爽，一直修改一直爽' and (G.call('get_point',237) == 1 or G.misc().作弊菜单 == 1) then 
            G.removeUI('v_system') 
            G.addUI('v_secret')  
        elseif G.misc().密令序号 ~= nil and  self.文本.getChildByName('secret').getChildByName('文本').text == G.misc().密令序号 then 
            G.removeUI('v_system') 
            G.addUI('v_secret')  
        elseif self.文本.getChildByName('secret').getChildByName('文本').text == 'hzw1.14159 ' and  G.misc().开启 == 1 then
            G.misc().作弊菜单 = 1 
        elseif self.文本.getChildByName('secret').getChildByName('文本').text == 'hzw1014159 ' and  G.misc().作弊菜单 == 1 then 
            --下面为测试代码
            -- local item =G.DBTable('o_item')
            -- local skill =G.DBTable('o_skill')
            -- local achieve = G.DBTable('o_achieve')
            -- local book_story_list = G.DBTable('o_book_story_list')
            -- for i = 1,#achieve do
            --     local o_achieve = G.QueryName(0x10170000+i)
            --     for j = 1,#o_achieve.进度列表 do
            --         o_achieve.进度列表[j].完成 = 1  
            --     end
            -- end
            -- for i = 1,#book_story_list do 
            --     local o_book_story_list = G.QueryName(0x101e0000+i)
            --     o_book_story_list.完美 = 1
            --     G.call('add_equip',0x10180028 + i,1)
            -- end
            -- for i = 1,#item do  --全物品
            --     G.call('add_item',i+1,1)
            -- end	
            -- G.call('add_point',5,500)--修为点
            -- G.call('add_money',9999)  --金钱
            -- for i = 1,#skill do --全技能
            --     local o_skill = G.QueryName(0x10050000 + i)
            --     G.call('add_magicexp',i+1,999)
            --     o_skill.修为等级 = 5
            -- end
            -- G.call('通用_印记状态')
        elseif self.文本.getChildByName('secret').getChildByName('文本').text == '人生何处不相逢' then
            local o_achieve = G.QueryName(0x10170012)
            local result = false
            for i = 1,#o_achieve.进度列表 do 
                if o_achieve.进度列表[i].完成 > 0 then 
                    result = true
                    break
                end    
            end   
            if  result == true then 
                if G.call('get_magicexp',134) == 0 then  
                    G.call('learnmagic',134)
                end
            else
                G.call('notice1','必须先完成一个【数字疑云】成就')
            end 
        elseif self.文本.getChildByName('secret').getChildByName('文本').text == '1.14159'  then 
            G.removeUI('v_system') 
            G.call("goto_map",G.QueryName(0x10030001)[tostring(140)]-0x10060000)
            G.trig_event('测试')
        elseif self.文本.getChildByName('secret').getChildByName('文本').text == '1014159 '  then 
            G.removeUI('v_system') 
            G.call("goto_map",G.QueryName(0x10030001)[tostring(140)]-0x10060000)
            G.trig_event('系统测试')
        elseif self.文本.getChildByName('secret').getChildByName('文本').text == '测试专用通道1.14159' and G.call('get_point',237) == 1 then 
            G.removeUI('v_system') 
            G.call("goto_map",G.QueryName(0x10030001)[tostring(140)]-0x10060000)
            G.call('notice1','专用测试通道，限一周目使用')
            G.trig_event('内部测试')
        elseif self.文本.getChildByName('secret').getChildByName('文本').text == '梦幻测试专用通道1.14159' and G.call('get_point',237) > 1 then 
            -- G.removeUI('v_system') 
            -- G.call("goto_map",G.QueryName(0x10030001)[tostring(140)]-0x10060000)
            -- G.call('notice1','开启梦幻专用测试通道')
            -- for i = 1,15 do 
            --     G.call('add_equip',0x10180028 + i,1)
            -- end
            -- G.misc().梦幻测试 = 1
        elseif self.文本.getChildByName('secret').getChildByName('文本').text == '五星红旗迎风飘扬'  then
            if G.call('get_point',237) > 1 then 
                G.call('通用_发放礼包')
            else
                G.call('notice1','必须二周目后才可以领取！') 
            end
        else
            G.call('notice1','密码错误')

        end
    end     
end
return t