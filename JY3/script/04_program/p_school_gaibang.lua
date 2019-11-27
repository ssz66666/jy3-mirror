--[[4011

]]
local G = require "gf"
local L = {}
local t = G.api
local JY = 0
t['初入丐帮'] = function()
    G.call('地图_进入地图','丐帮大厅',116,4)
    for i = 16,20 do 
        if G.call('get_point',i) > 50 then
            G.call('add_love',84,5)
        end  
    end 
    if G.call('get_point',19) < 50 then
        G.call('add_love',84,-20)
    end
    local str = '' 
    if  G.call('get_love',84) >= 60 then 
        str = "不错，确实块良质美材。此子日后必成大器！冠清，你识人的能力也越来越有些造化了，难得你能在茫茫人海中慧眼识英，不错。"
        G.call('add_love',84,10)
    elseif G.call('get_love',84) < 40 then 
        str = "冠清，我看这孩子眼中深藏戾气，福缘浅薄，并非十分良善之辈，他若入我丐帮可得花精力把他的戾气消磨掉，不然会后患无穷。"
        G.call('add_love',84,-10)
    elseif G.call('get_love',84) < 60 and G.call('get_love',84) >= 40 then 
        str = "日久方能见人心，此人目前未加雕琢看不出什么光华，是否前途无量也未可知啊，咱们可不要高兴得太早。"
    end   
    G.call("talk",'',173,'   禀告帮主，弟子寻到一名人选，此人名叫'..G.call('get_fullname'),2,1) 
    G.call("talk",'',173,'   弟子见他直率豪爽，天缘无限，此人若能入我丐帮，我丐帮定能和少林，武当比肩！',2,1)
    G.call("talk",'',84,'   '..str,2,1) 
    G.call("talk",'',84,'   你在丐帮的修习时期只有【一年】，一年后需得出外磨练，这是我丐帮历来的规矩。',2,1) 
    G.call("talk",'',84,'   我丐帮一派素以乞讨为生，另外我派分【净衣派】和【污衣派】，你需月前去【净衣派】静修，月尾去【污衣派】静修！',2,1) 
    G.call("talk",'',84,'   【净衣派】由执法长老与持棒长老管事，【污衣派】由掌钵长老与传功长老管事，四位长老你都认识一下！',2,1) 
    G.call("talk",'',169,'   我是掌钵长老，要学乞讨的话可以来找我！',2,1) 
    G.call("talk",'',171,'   我是传功长老，要学武功的话可以来找我！',2,1) 
    G.call("talk",'',170,'   我是持棒长老，要学乞讨的话可以来找我！',2,1) 
    G.call("talk",'',172,'   我是执法长老，要学武功的话可以来找我！',2,1) 
    G.call("talk",'',0,'   多谢帮主及各位长老的指点，弟子他日一定会把丐帮发扬光大。',0,0) 
    G.misc().丐帮弟子 = 1
    G.QueryName(0x10030001)[tostring(9)] = '一袋弟子'
    G.QueryName(0x10030001)[tostring(11)] = 1
    G.QueryName(0x10030001)[tostring(107)] = 1
    G.QueryName(0x10030001)[tostring(12)] = '洪七公'
    G.QueryName(0x10030001)[tostring(8)] = 9
    G.call('add_item',79,1)
    G.call("talk",'',173,'   洪帮主素来不管帮中事务，只有每月初一才会见见帮众，没事的话就不要找帮主了！',2,1) 
    G.call('all_over')
    G.call('dark')
    G.call('goto_map',74)
    G.call("talk",'',173,'   今日我就先传你本门基础武学【叫花棒法】和【叫花内功】，本派每月二十八日都会举行升袋比试，可要好生练习！',2,1)
    G.call("talk",'',0,'   多谢师兄提点！',0,0) 
    G.call('set_note','拜入丐帮，一年之后再重出江湖')
    G.call('learnmagic',26)
    G.call('learnmagic',156)
    G.call('all_over')
end
t['初入丐帮-分舵'] = function()
    G.call('dark')
    if G.call('get_day') < 15 then
        G.call('goto_map',75)
    else 
        G.call('goto_map',76)
    end
end
t['初入丐帮-全冠清'] = function()
    if G.call('get_month') ~= G.call('get_point',146)  then 
        G.QueryName(0x10030001)[tostring(146)]  = G.call('get_month')
        if G.call('get_point',130)  < 1000 then 
            G.call('set_newpoint',130,-1000 - 10 )
			G.call('set_point',130,1000 )
        end
    end
    local BJ = G.call('get_point',130) 
    if BJ >= 50 then 
        G.call("talk",'',173,'   [师弟]有没有兴趣跟着赌几把？咱赌小的，一注五两，说不定你还能发笔小财呢。',1,1)
        local int_选项 = 0
        while int_选项 == 0 do
            int_选项 = G.call("menu",nil,0,'',0,0,{"1,好吧，我便试试手气","2,我一向运气不好，还是不赌了"},0)  
            if int_选项 == 1 then 
                G.call('all_over')
                if G.call('get_point',130) >= 50 then 
                    G.call('gambling') 
                    G.call('add_time',1)
                else
                   G.call("talk",'',173,'   不赌了，都被你赢光了！',1,1)
                end 
                -- if G.call('get_point',130) ~= math.abs(G.call('get_newpoint',130) ) then 
                --     G.call('通用_强退游戏') 
                -- end 
                G.call('all_over')
                G.call('turn_map')
            elseif int_选项 == 2 then 
                G.call('all_over')  
            end 
        end
    else 
        G.call("talk",'',173,'   师兄袋里的钱都叫[师弟]赢光了，做不成庄，还是不赌了。',1,1)
        local int_选项 = 0
        while int_选项 == 0 do
            int_选项 = G.call("menu",nil,0,'',0,0,{"1,小赌怡情咱就图个乐，这些钱师兄先拿去耍吧","2,等师兄有钱了咱们再赌几把"},0)  
            if int_选项 == 1 then 
                if G.call('get_money') > 1000 then
                    G.call('set_newpoint',130,G.call('get_newpoint',130) - 1000 )
                    G.call('set_point',130,G.call('get_point',130) + 1000 )
                    G.call('add_money',-math.floor(G.call('get_money')/2))
                    G.call("talk",'',173,'   嘿嘿，[师弟]出手豪爽，想必今日也是运势正旺。来来来，咱兄弟再陪你大杀四方。',1,1)
                    G.call('add_love',173,10)
                    if G.call('get_love',173) >= 80  and G.call('get_item',339) == 0 then 
                        G.call("talk",'',173,'   [师弟]真有你的，偷偷教你一手功夫吧！',1,1)
                        G.call('add_item',339,1)
                    end
                else 
                    G.call('set_newpoint',130,G.call('get_newpoint',130) - math.floor(G.call('get_money')/2) )
                    G.call('set_point',130,G.call('get_point',130) + math.floor(G.call('get_money')/2) )
                    G.call('add_money',-math.floor(G.call('get_money')/2)) 
                    G.call('add_love',173,-10)
                    G.call("talk",'',173,'   你消遣师兄？这么点钱都开不了几局！',1,1)
                end 
                G.call('all_over')
            elseif int_选项 == 2 then 
                G.call('all_over')    
            end
        end
    end 
end
t['初入丐帮-掌钵长老'] = function()
    G.call("talk",'',169,'   '..G.call('get_fullname')..',你找我有什么事情吗？',2,1)
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,学习【乞讨】","2,【切磋】武功","3,没什么事情，顺路过来请安而已"},0) 
        if int_选项 == 1 then
            G.call('all_over')
            G.call("talk",'',169,'   你来向我学习【乞讨】吗？',2,1) 
            local int_选项 = 0
            while int_选项 == 0 do
                int_选项 = G.call("menu",'',0,'',0,0,{"1,弟子打算学习【乞讨】【五天】","2,弟子打算学习【乞讨】【十五天】","3,没什么事情"},0) 
                if int_选项 == 1 then 
                    G.call('add_point',107,25)
                    G.call('add_love',169,math.floor(G.call('get_point',11)*0.3))
                    G.call('all_over')
                    --G.call('dark')
                    G.call('add_day',5)
                    if G.call('get_point',4) < 30 then 
                        local n = G.call('get_point',4)
                        JY = math.floor(15 *n* (n+1)*  G.QueryName(0x10030001)[tostring(200)]/100 * 0.1*G.call('get_point',11)) 
                        G.call('add_point',3,JY)
                    else
                        JY = math.floor(15 *30* (30+1)*  G.QueryName(0x10030001)[tostring(200)]/100 * 0.1*G.call('get_point',11)) 
                        G.call('add_point',3,JY)
                    end 
                    G.call('turn_map')
                elseif int_选项 == 2 then
                    G.call('add_point',107,80)
                    G.call('add_love',169,math.floor(G.call('get_point',11)*0.5))
                    G.call('all_over')
                    --G.call('dark')
                    G.call('add_day',15)
                    if G.call('get_point',4) < 30 then 
                        local n = G.call('get_point',4)
                        JY = math.floor(15 *n* (n+1)*  G.QueryName(0x10030001)[tostring(200)]/100 * 0.3*G.call('get_point',11)) 
                        G.call('add_point',3,JY)
                    else
                        JY = math.floor(15 *30* (30+1)*  G.QueryName(0x10030001)[tostring(200)]/100 * 0.3*G.call('get_point',11)) 
                        G.call('add_point',3,JY)
                    end  
                    G.call('turn_map')
                elseif int_选项 == 3 then 
                    G.call('all_over')
                end
            end
        elseif int_选项 == 2 then
            G.call('all_over')
            G.call('call_battle',1,10,1,G.call('get_love',169)*0.3,169,0,0,0,0,0)
            local o_battle_结果 = G.call('get_battle') --
            if o_battle_结果  == 1 then
                G.call('add_love',169,3) 
                G.call("talk",'',169,'   不错，还要继续加强练习！',2,1)
            else
                G.call('add_love',169,-3) 
                G.call("talk",'',169,'   你这武功还得多练练！',2,1)
            end
            G.call('add_time',4)
            G.call('all_over')
            G.call('turn_map') 
        elseif int_选项 == 3 then 
            G.call('all_over')
        end
    end
end
t['初入丐帮-持棒长老'] = function()
    G.call("talk",'',170,'   '..G.call('get_fullname')..',你找我有什么事情吗？',2,1)
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,学习【乞讨】","2,【切磋】武功","3,没什么事情，顺路过来请安而已"},0) 
        if int_选项 == 1 then
            G.call('all_over')
            G.call("talk",'',170,'   你来向我学习【乞讨】吗？',2,1) 
            local int_选项 = 0
            while int_选项 == 0 do
                int_选项 = G.call("menu",'',0,'',0,0,{"1,弟子打算学习【乞讨】【五天】","2,弟子打算学习【乞讨】【十五天】","3,没什么事情"},0) 
                if int_选项 == 1 then 
                    G.call('add_point',107,25)
                    G.call('add_love',170,math.floor(G.call('get_point',11)*0.3))
                    G.call('all_over')
                    --G.call('dark')
                    G.call('add_day',5)
                    if G.call('get_point',4) < 30 then 
                        local n = G.call('get_point',4)
                        JY = math.floor(15 *n* (n+1)*  G.QueryName(0x10030001)[tostring(200)]/100 * 0.1*G.call('get_point',11)) 
                        G.call('add_point',3,JY)
                    else
                        JY = math.floor(15 *30* (30+1)*  G.QueryName(0x10030001)[tostring(200)]/100 * 0.1*G.call('get_point',11)) 
                        G.call('add_point',3,JY)
                    end 
                    G.call('turn_map')
                elseif int_选项 == 2 then
                    G.call('add_point',107,80)
                    G.call('add_love',170,math.floor(G.call('get_point',11)*0.5))
                    G.call('all_over')
                    --G.call('dark')
                    G.call('add_day',15)
                    if G.call('get_point',4) < 30 then 
                        local n = G.call('get_point',4)
                        JY = math.floor(15 *n* (n+1)*  G.QueryName(0x10030001)[tostring(200)]/100 * 0.3*G.call('get_point',11)) 
                        G.call('add_point',3,JY)
                    else
                        JY = math.floor(15 *30* (30+1)*  G.QueryName(0x10030001)[tostring(200)]/100 * 0.3*G.call('get_point',11)) 
                        G.call('add_point',3,JY)
                    end  
                    G.call('turn_map')
                elseif int_选项 == 3 then 
                    G.call('all_over')
                end
            end
        elseif int_选项 == 2 then
            G.call('all_over')
            G.call('call_battle',1,10,1,G.call('get_love',170)*0.3,170,0,0,0,0,0)
            local o_battle_结果 = G.call('get_battle') --
            if o_battle_结果  == 1 then
                G.call('add_love',170,3) 
                G.call("talk",'',170,'   不错，还要继续加强练习！',2,1)
            else
                G.call('add_love',170,-3) 
                G.call("talk",'',170,'   你这武功还得多练练！',2,1)
            end
            G.call('add_time',4)
            G.call('all_over')
            G.call('turn_map') 
        elseif int_选项 == 3 then 
            G.call('all_over')
        end
    end
end
t['初入丐帮-传功长老'] = function()
    G.call("talk",'',171,'   '..G.call('get_fullname')..',你找我有什么事情吗？',2,1)
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,请长老传授武功","2,【切磋】武功","3,没什么事情，顺路过来请安而已"},0) 
        if int_选项 == 1 then
            if G.call('get_magic',105) == 0 then
                if  G.call('get_magic',26) >= 10 and G.call('get_magic_lv',156) == 5 then 
                    G.call("talk",'',171,'   这套【铜锤手】讲究稳扎稳打，要多加练习！',2,1)
                    G.call('learnmagic',105)
                else
                    G.call("talk",'',171,'   你的基本功都还没练好我是不放心教你【铜锤手】！',2,1)
                end
            elseif G.call('get_magic',127) == 0 then 
                if G.misc().丐帮弟子 >= 3 then 
                    if  G.call('get_magic',105) >= 10  then 
                        G.call("talk",'',171,'   这套【锁喉擒拿手】讲究快很准，要多加练习！',2,1)
                        G.call('learnmagic',127)
                    else
                        G.call("talk",'',171,'   你的【铜锤手】还没练好我是不放心教你【锁喉擒拿手】！',2,1)
                    end
                else
                    G.call("talk",'',171,'   你的位阶太低，我还不放心教你其他武功！',2,1)
                end
            else
                G.call("talk",'',171,'   多多努力，不日参加比试吧！',2,1)
            end
            G.call('all_over')
        elseif int_选项 == 2 then
            G.call('all_over')
            G.call('call_battle',1,10,1,G.call('get_love',171)*0.3,171,0,0,0,0,0)
            local o_battle_结果 = G.call('get_battle') --
            if o_battle_结果  == 1 then
                G.call('add_love',171,3) 
                G.call("talk",'',171,'   不错，还要继续加强练习！',2,1)
            else
                G.call('add_love',171,-3) 
                G.call("talk",'',171,'   你这武功还得多练练！',2,1)
            end
            G.call('add_time',4)
            G.call('all_over')
            G.call('turn_map') 
        elseif int_选项 == 3 then 
            G.call('all_over')    
        end
    end
end
t['初入丐帮-执法长老'] = function()
    G.call("talk",'',172,'   '..G.call('get_fullname')..',你找我有什么事情吗？',2,1)
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,请长老传授武功","2,【切磋】武功","3,没什么事情，顺路过来请安而已"},0) 
        if int_选项 == 1 then
            if G.call('get_magic',30) == 0 then
                if  G.call('get_magic',26) >= 10 and G.call('get_magic_lv',156) == 5 then 
                    G.call("talk",'',172,'   这套【太祖棍法】讲究步伐灵活，要多加练习！',2,1)
                    G.call('learnmagic',30)
                else
                    G.call("talk",'',172,'   你的基本功都还没练好我是不放心教你【太祖棍法】！',2,1)
                end
            elseif G.call('get_magic',216) == 0 then 
                if G.misc().丐帮弟子 >= 3 then 
                    if  G.call('get_magic',30) >= 10  then 
                        G.call("talk",'',172,'   这套【泼风杖法】顾名思义，就是打出去像风一样强势，要多加练习！',2,1)
                        G.call('learnmagic',216)
                    else
                        G.call("talk",'',172,'   你的【太祖棍法】还没练好我是不放心教你【泼风杖法】！',2,1)
                    end
                else
                    G.call("talk",'',172,'   你的位阶太低，我还不放心教你其他武功！',2,1)
                end
            else
                G.call("talk",'',172,'   多多努力，不日参加比试吧！',2,1)
            end
            G.call('all_over')
        elseif int_选项 == 2 then
            G.call('all_over')
            G.call('call_battle',1,10,1,G.call('get_love',172)*0.3,172,0,0,0,0,0)
            local o_battle_结果 = G.call('get_battle') --
            if o_battle_结果  == 1 then
                G.call('add_love',172,3) 
                G.call("talk",'',172,'   不错，还要继续加强练习！',2,1)
            else
                G.call('add_love',172,-3) 
                G.call("talk",'',172,'   你这武功还得多练练！',2,1)
            end
            G.call('add_time',4)
            G.call('all_over')
            G.call('turn_map') 
        elseif int_选项 == 3 then 
            G.call('all_over')    
        end
    end
end
t['初入丐帮-洪七公'] = function()
    G.call("talk",'',84,'   '..G.call('get_fullname')..',你找我有什么事情吗？',2,1)
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,请师父传授武功","2,【闭关】10天","3,没什么事情，顺路向师父请安而已"},0) 
        if int_选项 == 1 then
            if G.call('get_magic',180) == 0 then
                if G.call('get_love',84) >= 60 and G.misc().丐帮弟子 >= 3 and G.call('get_point',11) >= 3 then 
                    G.call("talk",'',84,'   这是我早年所学的一套轻功【踏雪无痕】，今日就传给你了！',2,1)
                    G.call('learnmagic',180)
                else
                    G.call("talk",'',84,'   丐帮弟子要有进取心，你最近的表现还不是很让我满意，我还不太放心传你其他武学！',2,1)
                end
            elseif G.call('get_magic',108) == 0 then
                if G.call('get_love',84) >= 70 and G.misc().丐帮弟子 >= 4 and G.call('get_point',11) >= 5 then 
                    G.call("talk",'',84,'   这套【逍遥游】拳法，今日就传给你了！',2,1)
                    G.call('learnmagic',108)
                else
                    G.call("talk",'',84,'   丐帮弟子要有进取心，你最近的表现还不是很让我满意，我还不太放心传你其他武学！',2,1)
                end
            elseif G.call('get_magic',6) == 0 then
                if G.call('get_love',84) >= 80 and G.misc().丐帮弟子 >= 6 and G.call('get_point',11) >= 7 then 
                    G.call("talk",'',84,'   这套暗器手法【漫天花雨】，今日就传给你了，另外给你点暗器多加练习！',2,1)
                    G.call('learnmagic',6)
                    G.call('add_item',63,200)
                else
                    G.call("talk",'',84,'   丐帮弟子要有进取心，你最近的表现还不是很让我满意，我还不太放心传你其他武学！',2,1)
                end
            elseif G.call('get_magic',217) == 0 then
                if G.call('get_love',84) >= 90 and G.misc().丐帮弟子 >= 8 and G.call('get_point',11) >= 9 then 
                    G.call("talk",'',84,'   最近表现不错，先传你降龙十八掌前十五掌吧！',2,1)
                    G.call('learnmagic',217)
                else
                    G.call("talk",'',84,'   丐帮弟子要有进取心，你最近的表现还不是很让我满意，我还不太放心传你其他武学！',2,1)
                end
            else
                G.call("talk",'',84,'   已经没什么教你的了，一定记得丐帮宗旨-不能持强临弱！',2,1)
            end 
            G.call('all_over') 
        elseif int_选项 == 2 then 
            G.call("talk",'',84,'   年纪轻武功高，只能说是难能，还不见得如何可贵。如果你能一生向善除暴安良，那才是真的了不起，师父才越会欢喜，你的功力进境也会越快了。',2,1) 
            G.call('add_love',84,math.floor(G.call('get_point',11)*0.8))
            local n = G.call('get_point',4)
            if G.call('get_point',4) < 30 then
                JY = math.floor(15 *n* (n+1)*  G.QueryName(0x10030001)[tostring(200)]/100 * 0.3*G.call('get_point',11)) 
            else
                JY = math.floor(15 *20* 31*  G.QueryName(0x10030001)[tostring(200)]/100 * 0.3*G.call('get_point',11))
            end 
            G.call('add_day',10)
            G.call('add_point',3,JY)
            G.call('all_over')
            G.call('turn_map') 
        elseif int_选项 == 3  then 
            G.call('all_over')     
        end
    end
end
t['初入丐帮-升袋比试'] = function()
    local int_丐帮弟子 = G.misc().丐帮弟子
    G.call('all_over')
    G.call('地图_进入地图','演武场',10,44) 
    G.call("talk",'',169,'   今日召开本帮每月的弟子升袋比较,现在由'..G.call('get_fullname')..'进行比试！',2,1) 
    if int_丐帮弟子 <= 2 then
        G.call('call_battle',1,10,1,int_丐帮弟子*35,173,0,0,0,0,0)
    elseif int_丐帮弟子 <= 5 then
        G.call('call_battle',1,10,1,int_丐帮弟子*14,170,0,0,0,0,0)
    elseif int_丐帮弟子 <= 8 then
        G.call('call_battle',1,10,1,int_丐帮弟子*10,169,0,0,0,0,0)
    end
    G.call('all_over')
    local o_battle_结果 = G.call('get_battle') --
    if o_battle_结果  == 1 then
        G.misc().丐帮弟子 = G.misc().丐帮弟子 + 1
        if G.misc().丐帮弟子 == 9 then
            G.QueryName(0x10030001)[tostring(9)] = '九代长老'
            G.call("talk",'',169,'   不错，'..G.call('get_fullname')..'晋升为【丐帮九代长老】，十二月初十在【轩辕台】举行丐帮大会，务必记得参加！',2,1) 
            G.call('set_CH','九代长老')
            G.call('set_note','获得称号【九代长老】！')  
        else
            G.QueryName(0x10030001)[tostring(9)] = G.call('to_chinese',G.misc().丐帮弟子)..'袋弟子'
            G.call("talk",'',169,'   不错，'..G.call('get_fullname')..'晋升为'..G.call('to_chinese',G.misc().丐帮弟子)..'袋弟子',2,1) 
        end
    else
        G.call("talk",'',169,'   很遗憾，'..G.call('get_fullname')..'没有经过比试，下个月继续努力！',2,1) 
    end
    G.call('add_day',1)
    G.call('all_over')
    G.call('dark') 
    G.call('goto_map',74)
end
t['初入丐帮-帮主不见'] = function()
    G.call("talk",'',0,'   帮主真是神龙见首不见尾，还是改日再来拜会吧！',0,0)
    G.call('all_over')
    G.call('dark') 
    G.call('goto_map',74) 
end
t['初入丐帮-轩辕台'] = function()
    G.call('地图_进入地图','轩辕台',118,52)
    G.call("talk",'',385,'   洪帮主是一个月前在临安与人比武，失手给人打死,至于害死帮主的是桃花岛岛主东邪黄药师和全真教的七个贼道！',2,1) 
    G.call("talk",'',172,'   眼下咱们有两件大事，第一件遵从帮主遗命，奉立本帮第十九代帮主；第二件是商量着怎生给老帮主报仇雪恨。',2,1) 
    G.call("talk",'',172,'   本帮各路兄弟此次在岳州君山相会，原是要听洪帮主指定帮主的继承之人，现下老帮主既已不幸归天，就得依老帮主遗命而定。若无遗命，那就由本帮四大长老推选。这是本帮列祖列宗世代相传的规矩,杨相公，那就请你传老帮主的遗命。',2,1) 
    G.call("talk",'',385,'   洪帮主受奸人围攻，身受重伤，性命危在顷刻，在下路见不平，暗暗将他藏在舍间地窖之中，骗过羣奸，当即延请名医，悉心给洪帮主诊治，终因受伤太重，无法挽救,洪帮主临终之时，命在下接任第十九代帮主的重任!',2,1) 
    G.call("talk",'',385,'   害死老帮主的元凶虽然未曾伏诛，两名帮凶也逍遥法外,改日必拿他们来血祭老帮主在天之灵！',2,1) 
    G.call("talk",'',87,'   且慢，贵帮二位朋友昨天将我帮几位弟子眼睛弄瞎，听说这两个小贼也曾出手相助。敝帮兄弟学艺不精，原本没有话说，只是江湖上传扬开来，铁掌帮这个脸却丢不起，老朽不识好歹，要领教领教贵帮这两位朋友的手段！',2,1) 
    G.call("talk",'',237,'   衆位兄弟，若是老帮主在世，决不能让咱们丢这个脸。今日小弟是宁死不辱！',2,1) 
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",nil,0,'我要不要出面说明真相？',0,4,{"1,身为丐帮弟子岂能置之不理！","2,看这杨康和裘千仞太厉害，还是不要惹事了！"},0) 
        if int_选项 == 1 then 
            G.call('all_over')
            G.call("talk",'',0,'   各位长老，不可义气用事，其实咱们老帮主尚在人间，此中肯定是有奸人挑拨离间！',0,0)
            G.call("talk",'',385,'   这位肯定是同谋，各位不可轻信，老帮主先去时候我就在一旁！',2,1) 
            G.call("talk",'',0,'   各位长老，上月我是不是说过老帮主的事，前几日老帮主我还见过一次！',0,0)
            G.call("talk",'',385,'   敢坏我大事，裘帮主，一起干掉这傢伙！',2,1) 
            G.call("talk",'',87,'   正有此意！',2,1) 
            G.call('all_over')
            G.call('call_battle',1,80,1,40,385,87,0,0,0,0,6)
            local o_battle_结果 = G.call('get_battle') --
            if o_battle_结果  == 1 then
                G.call('set_story',57,1) 
                G.call("talk",'',385,'   这[小子]竟然.......，裘帮主，我们先撤！',2,1) 
                G.call("talk",'',87,'   改日再教训这[小子]！',2,1) 
                G.call("talk",'',0,'   看还有谁敢在我们丐帮撒野！',0,0)
                G.call('add_day',1)
                G.call('all_over')
                G.call('turn_map') 
            else
                G.call('gameover') 
            end
        elseif int_选项 == 2 then 
            G.call('set_story',57,2) 
            G.call('all_over')
            G.call('turn_map')
        end
    end         

end
t['初入丐帮-出师'] = function()
    G.call('地图_进入地图','丐帮大厅',116,4)
    if G.call('get_story',57) == 1 then 
        G.call("talk",'',84,'   '..G.call('get_fullname')..'日前听说本门内讧时是由你出面解决，帮众对你也很是信服，现在暂任你为本帮副帮主，这套【打狗棒法】本是非帮主不外传，不过今日破例，副帮主可以说也是帮主，今日就传与你了！',2,1)
        G.call('set_CH',G.call('get_point',1)..'副帮主')
        G.call('set_note','获得称号【丐帮副帮主】！')  
        G.QueryName(0x10030001)[tostring(9)] = '副帮主'
        if G.call('get_magic',23) == 0 then 
           G.call('learnmagic',23)
        end
        G.call("talk",'',0,'   多谢师父抬爱！',0,0) 
    end
    G.call("talk",'',84,'   '..G.call('get_fullname')..'你在丐帮修炼武功已经将近一年，现在是时候该出去磨练了。记住我丐帮的宗旨——惩奸除恶！他日你若是作恶，我丐帮个个容你不得！',2,1)
    G.call("talk",'',0,'   弟子一定谨记师父教诲。师父和各位长老多多保重，这就别过。',0,0) 
    G.call('出师-增加被动')
    G.call('all_over')
    G.call('set_alltime',2,1,1,4,1) 
    G.call('set_point',146,2)
    G.QueryName(0x1017000e).进度列表[9].完成 = 1
    G.call('初入聚贤庄')
end