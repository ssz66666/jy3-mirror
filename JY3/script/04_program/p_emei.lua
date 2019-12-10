--[[4014

]]
local G = require "gf"
local L = {}
local t = G.api
local JY = 0
t['初入峨嵋'] = function()
    G.call('dark')
    G.call('goto_map',82)
    G.call("talk",'',18,'   启禀掌门，如今世道混乱，徒儿探访多日，愿意入我峨嵋甘愿忍受一年青灯古佛的实在寥寥。现有一人姓'..G.QueryName(0x10030001)[tostring(1)]..'名'..G.QueryName(0x10030001)[tostring(2)],2,1) 
    G.call("talk",'',18,'   弟子觉得她似乎是练武的好材料，至于品德言行还未来及考察。',2,1)
    G.call("talk",'',61,'   嗯，芷若，为师确是难为你了。入我峨嵋讲究慈悲渡世，就算她以前品行不好，咱们还不能教化她日后向善吗？',2,1) 
    G.call("talk",'',61,'   '..G.call('get_fullname')..',今日起你便是我峨嵋俗家弟子，你的武功以后就由你三师姐芷若先传授，有不懂的地方还可以去请教大师姐晓芙与二师姐敏君！',2,1) 
    G.call("talk",'',422,'   小师妹以后可要勤加练习！',2,1) 
    G.call("talk",'',421,'   希望你能忍受住这一年！',2,1) 
    G.call("talk",'',0,'   多谢师父及各位师姐的指点，弟子一定不负众望。',0,0) 
    G.QueryName(0x10030001)[tostring(9)] = '峨嵋见习弟子'
    G.QueryName(0x10030001)[tostring(11)] = 1
    G.QueryName(0x10030001)[tostring(107)] = 1
    G.QueryName(0x10030001)[tostring(12)] = '灭绝师太'
    G.QueryName(0x10030001)[tostring(8)] = 11
    G.call('all_over')
    G.call('dark')
    G.call('goto_map',84)
    G.call("talk",'',18,'   '..G.call('get_fullname')..',我现在传你少林的入门功夫——【峨嵋剑法】。少林的门派技能是【慈航】，你需要经常到师父跟前聆听教诲，才能慢慢提升修为，有不懂的地方可以来找我以及其他师姐！',2,1)
    G.call("talk",'',18,'   另外本门三月、六月、九月中旬都会举行弟子比较，小师妹可别偷懒！',2,1)
    G.call("talk",'',0,'   多谢师姐！',0,0) 
    G.call('learnmagic',257)
    G.call('set_note','拜入峨嵋门下，一年之后再重出江湖')
    G.call('all_over')
end
t['初入峨嵋派-周芷若'] = function()
    G.call("talk",'',18,'   '..G.call('get_fullname')..',你有什么事情吗？',2,1)
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,请师姐传授功夫","2,与师姐切磋武功","3,没什么事情，向师姐请安"},0) 
        if int_选项 == 1 then 
            if G.call('get_magicexp',251) == 0 then 
                if G.call('get_point',11) >= 2 then 
                    G.call("talk",'',18,'   我现在传授你少林入门轻功【峨嵋心法】，要想提升这门功夫需要消耗你身上的【修为点】。像【轻功】【内功】这2类功夫，需要装备在身上方能体现效果，否则是无用的。',2,1) 
                    G.call('learnmagic',251)
                else
                    G.call("talk",'',18,'   不要总是沉迷在武功上，你的【慈航】修为一直都没有长进，虽说你是俗家弟子，但也是我峨嵋子弟，不修慈航实属不该，尽快去师父那里聆听教诲吧。',2,1) 
                end  
            elseif G.call('get_magicexp',250) == 0 then 
                if G.call('get_magic_lv',251) >= 5 then 
                    G.call("talk",'',18,'   你的【峨嵋心法】已经略具一定基础了，现下教你本门身法！',2,1) 
                    G.call('learnmagic',250)
                else
                    G.call("talk",'',18,'   你的【峨嵋心法】还没有掌握，等你完全掌握再来找我吧！',2,1) 
                end  
            elseif G.call('get_magicexp',41) == 0 then 
                if G.call('get_point',11) >= 5 then 
                    G.call("talk",'',18,'   本门剑法旨在意境，你已经能够领悟了，现在便教你【回风拂柳剑】',2,1) 
                    G.call('learnmagic',41)
                else
                    G.call("talk",'',18,'   不要总是沉迷在武功上，你的【慈航】修为一直都没有长进，虽说你是俗家弟子，但也是我峨嵋子弟，不修慈航实属不该，尽快去师父那里聆听教诲吧。',2,1) 
                end
            else
                G.call("talk",'',18,'   你已掌握我目前所学，我没什么可教授的了，你可以找其他师姐多学学了！',2,1)               
            end 
            G.call('all_over') 
        elseif int_选项 == 2 then  
            G.call("talk",'',18,'   好！让我看看你的少林功夫最近练得如何了。',2,1) 
            G.call('all_over')
            G.call('call_battle',1,10,1,50,18,0,0,0,0,0)
            local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 0, 91, 0, 0, 0, 0, 1, 0.5, 0);
            if o_battle_结果  == 1 then
                G.call('add_love',18,3)
                G.call("talk",'',18,'   不错，不错。假以时日你便可以超过师姐了！',2,1) 
            else 
                G.call('add_love',18,-3)
                G.call("talk",'',18,'   连我一半功力都胜不过，对你很是失望！！',2,1) 
            end  
            G.call('all_over')
            G.call('add_time',4)
            G.call('turn_map')    

        elseif int_选项 == 3 then 
            G.call('all_over')    
        end        
    end  
end
t['初入峨嵋派-纪晓芙'] = function()
    G.call("talk",'',422,'   '..G.call('get_fullname')..',你找我什么事情吗？',2,1)
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,请师姐传授功夫","2,没什么事情，向师姐请安"},0) 
        if int_选项 == 1 then 
            if G.call('get_magicexp',255) == 0 then 
                if G.call('get_month') >= 9 then
                    if G.call('get_love',422) < 70 then
                        G.call("talk",'',422,'   对你很失望，也没什么可教你的了！',2,1) 
                    else
                        G.call("talk",'',422,'   今日师姐高兴，就传你【绝剑】',2,1) 
                        G.call('learnmagic',255)
                    end
                else
                    G.call("talk",'',422,'   现在没时间教你，等过了九月大比再说吧！',2,1) 
                end
            else
                G.call("talk",'',422,'   我没什么可教授的了，剩下的就要你自行领悟了！',2,1)  
            end
            G.call('all_over')  
        elseif int_选项 == 3 then  
            G.call("talk",'',422,'   好！让我看看你的少林功夫最近练得如何了。',2,1) 
            G.call('all_over')
            G.call('call_battle',1,10,1,50,422,0,0,0,0,0)
            local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 0, 91, 0, 0, 0, 0, 1, 0.5, 0);
            if o_battle_结果  == 1 then
                G.call('add_love',422,3)
                G.call("talk",'',422,'   还算不错，不过还差着远呢！',2,1) 
            else 
                G.call('add_love',422,-3)
                G.call("talk",'',422,'   连我一半功力都胜不过，芷若到底怎么教的！',2,1) 
            end  
            G.call('all_over')
            G.call('add_time',4)
            G.call('turn_map')    

        elseif int_选项 == 2 then 
            G.call('all_over')        
        end
    end
end
t['初入峨嵋派-丁敏君'] = function()
    G.call("talk",'',421,'   '..G.call('get_fullname')..',你找我什么事情吗？',2,1)
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,请师姐传授功夫","2,没什么事情，向师姐请安"},0) 
        if int_选项 == 1 then 
            if G.call('get_magicexp',254) == 0 then 
                if G.call('get_month') >= 9 then 
                    if G.call('get_love',421) < 70 then
                        G.call("talk",'',421,'   对你很失望，也没什么可教你的了！',2,1) 
                    else
                        G.call("talk",'',421,'   今日师姐高兴，就传你【灭剑】',2,1) 
                        G.call('learnmagic',254)
                    end
                else
                    G.call("talk",'',421,'   现在没时间教你，等过了九月大比再说吧！',2,1) 
                end
            else
                G.call("talk",'',421,'   我没什么可教授的了，剩下的就要你自行领悟了！',2,1)  
            end
            G.call('all_over')  
        elseif int_选项 == 3 then  
            G.call("talk",'',421,'   好！让我看看你的少林功夫最近练得如何了。',2,1) 
            G.call('all_over')
            G.call('call_battle',1,10,1,50,421,0,0,0,0,0)
            local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 0, 91, 0, 0, 0, 0, 1, 0.5, 0);
            if o_battle_结果  == 1 then
                G.call('add_love',421,3)
                G.call("talk",'',421,'   还算不错，不过还差着远呢！',2,1) 
            else 
                G.call('add_love',421,-3)
                G.call("talk",'',421,'   连我一半功力都胜不过，芷若到底怎么教的！',2,1) 
            end  
            G.call('all_over')
            G.call('add_time',4)
            G.call('turn_map')    

        elseif int_选项 == 2 then 
            G.call('all_over')        
        end
    end
end
t['初入峨嵋派-灭绝师太'] = function()
    G.call("talk",'',61,'   你来向我学习【慈航】吗？。',2,1) 
    local JY = 0
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,弟子打算学习【慈航】【五天】","2,弟子打算学习【慈航】【十五天】","3,弟子是专程来给师父请安的"},0) 
        if int_选项 == 1 then 
            G.call('add_point',107,25)
            G.call('add_love',61,math.floor(G.call('get_point',11)*0.3))
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
            G.call('all_over')
            G.call('turn_map')  
        elseif int_选项 == 2 then  
            G.call('add_point',107,80)
            G.call('add_love',61,math.floor(G.call('get_point',11)*0.5))
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
            G.call('all_over')
            G.call('turn_map')  
        elseif int_选项 == 3 then 
            G.call('all_over')
        end   
    end 
end
t['初入峨嵋派-三月大比较'] = function()
    G.call('dark')
    G.call('goto_map',84)
    G.call("talk",'',61,'   今日是我门大比较日子，'..G.call('get_fullname')..'现在便考验你这几个月所学！',2,1)
    G.call("talk",'',61,'   第一场便由芷若，你就用五成实力考验下'..G.call('get_fullname'),2,1)
    G.call("talk",'',18,'   小师妹，请！',2,1)
    G.call('all_over')
    G.call('call_battle',1,10,1,50,18,0,0,0,0,0)
    local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 0, 91, 0, 0, 0, 0, 1, 0.5, 0);
    if o_battle_结果  == 1 then
        G.call("talk",'',0,'   三师姐，承让！',0,0)
        G.call("talk",'',61,'   第二场便由敏君，你就用五成实力考验下'..G.call('get_fullname'),2,1)
        G.call("talk",'',421,'   小师妹，请！',2,1)
    else
        G.call("talk",'',61,'   '..G.call('get_fullname')..'你太让为师失望了！',2,1)
        G.call('all_over')
        return
    end
    G.call('all_over')
    G.call('call_battle',1,10,1,50,421,0,0,0,0,0)
    local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 0, 91, 0, 0, 0, 0, 1, 0.5, 0);
    if o_battle_结果  == 1 then
        G.call("talk",'',0,'   二师姐，承让！',0,0)
        G.call("talk",'',61,'   第三场便由晓芙，你就用五成实力考验下'..G.call('get_fullname'),2,1)
        G.call("talk",'',422,'   小师妹，请！',2,1)
    else
        G.call("talk",'',61,'   '..G.call('get_fullname')..'你太让为师失望了！',2,1)
        G.call('all_over')
        return
    end
    G.call('all_over')
    G.call('call_battle',1,10,1,50,422,0,0,0,0,0)
    local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 0, 91, 0, 0, 0, 0, 1, 0.5, 0);
    if o_battle_结果  == 1 then
        G.call("talk",'',0,'   大师姐，承让！',0,0)
        G.call("talk",'',61,'   '..G.call('get_fullname')..'看来这几个月来你进步不小，今日为师就传你本门轻功【四象步法】',2,1)
        G.call("talk",'',0,'   多谢师父！',0,0)
        G.call('learnmagic',179)
        G.QueryName(0x10030001)[tostring(9)] = '峨嵋入门弟子'
        G.call('all_over')
    else
        G.call("talk",'',61,'   '..G.call('get_fullname')..'你太让为师失望了！',2,1)
        G.call('all_over')
        return
    end

    G.call('all_over')
end
t['初入峨嵋派-六月大比较'] = function()
    G.call('dark')
    G.call('goto_map',84)
    G.call("talk",'',61,'   今日是我门大比较日子，'..G.call('get_fullname')..'现在便考验你这几个月所学！',2,1)
    G.call("talk",'',61,'   第一场便由芷若，你就用七成实力考验下'..G.call('get_fullname'),2,1)
    G.call("talk",'',18,'   小师妹，请！',2,1)
    G.call('all_over')
    G.call('call_battle',1,10,1,75,18,0,0,0,0,0)
    local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 0, 91, 0, 0, 0, 0, 1, 0.5, 0);
    if o_battle_结果  == 1 then
        G.call("talk",'',0,'   三师姐，承让！',0,0)
        G.call("talk",'',61,'   第二场便由敏君，你就用七成实力考验下'..G.call('get_fullname'),2,1)
        G.call("talk",'',421,'   小师妹，请！',2,1)
    else
        G.call("talk",'',61,'   '..G.call('get_fullname')..'你太让为师失望了！',2,1)
        G.call('all_over')
        return
    end
    G.call('all_over')
    G.call('call_battle',1,10,1,75,421,0,0,0,0,0)
    local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 0, 91, 0, 0, 0, 0, 1, 0.5, 0);
    if o_battle_结果  == 1 then
        G.call("talk",'',0,'   二师姐，承让！',0,0)
        G.call("talk",'',61,'   第三场便由晓芙，你就用七成实力考验下'..G.call('get_fullname'),2,1)
        G.call("talk",'',422,'   小师妹，请！',2,1)
    else
        G.call("talk",'',61,'   '..G.call('get_fullname')..'你太让为师失望了！',2,1)
        G.call('all_over')
        return
    end
    G.call('all_over')
    G.call('call_battle',1,10,1,75,422,0,0,0,0,0)
    local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 0, 91, 0, 0, 0, 0, 1, 0.5, 0);
    if o_battle_结果  == 1 then
        G.call("talk",'',0,'   大师姐，承让！',0,0)
        G.call("talk",'',61,'   '..G.call('get_fullname')..'看来这几个月来你进步不小，今日为师就传你本门【九阳功】',2,1)
        G.call("talk",'',0,'   多谢师父！',0,0)
        G.call('learnmagic',154)
        G.QueryName(0x10030001)[tostring(9)] = '峨嵋入室弟子'
    else
        G.call("talk",'',61,'   '..G.call('get_fullname')..'你太让为师失望了！',2,1)
        G.call('all_over')
        return
    end
    G.call('all_over')
end
t['初入峨嵋派-九月大比较'] = function()
    G.call('dark')
    G.call('goto_map',84)
    G.call("talk",'',61,'   今日是我门大比较日子，'..G.call('get_fullname')..'现在便考验你这几个月所学！',2,1)
    G.call("talk",'',61,'   第一场便由芷若，你就用十成实力考验下'..G.call('get_fullname'),2,1)
    G.call("talk",'',18,'   小师妹，请！',2,1)
    G.call('all_over')
    G.call('call_battle',1,10,1,100,18,0,0,0,0,0)
    local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 0, 91, 0, 0, 0, 0, 1, 0.5, 0);
    if o_battle_结果  == 1 then
        G.call("talk",'',0,'   三师姐，承让！',0,0)
        G.call("talk",'',61,'   第二场便由敏君，你就用十成实力考验下'..G.call('get_fullname'),2,1)
        G.call("talk",'',421,'   小师妹，请！',2,1)
    else
        G.call("talk",'',61,'   '..G.call('get_fullname')..'你太让为师失望了！',2,1)
        G.call('all_over')
        return
    end
    G.call('all_over')
    G.call('call_battle',1,10,1,100,421,0,0,0,0,0)
    local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 0, 91, 0, 0, 0, 0, 1, 0.5, 0);
    if o_battle_结果  == 1 then
        G.call("talk",'',0,'   二师姐，承让！',0,0)
        G.call("talk",'',61,'   第三场便由晓芙，你就用十成实力考验下'..G.call('get_fullname'),2,1)
        G.call("talk",'',422,'   小师妹，请！',2,1)
    else
        G.call("talk",'',61,'   '..G.call('get_fullname')..'你太让为师失望了！',2,1)
        G.call('all_over')
        return
    end
    G.call('all_over')
    G.call('call_battle',1,10,1,100,422,0,0,0,0,0)
    local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 0, 91, 0, 0, 0, 0, 1, 0.5, 0);
    if o_battle_结果  == 1 then
        G.call("talk",'',0,'   大师姐，承让！',0,0)
        G.call("talk",'',61,'   '..G.call('get_fullname')..'看来我峨嵋要由你来发扬光大了，下去有时间让晓芙和敏君再教你本门剑法吧！',2,1)
        G.call("talk",'',0,'   多谢师父！',0,0)
        G.call('add_love',421,10)
        G.call('add_love',422,10)
        G.QueryName(0x10030001)[tostring(9)] = '峨嵋首席弟子'
    else
        G.call("talk",'',61,'   '..G.call('get_fullname')..'你太让为师失望了！',2,1)
        G.call('all_over')
        return
    end
    G.call('all_over')
end
t['初入峨嵋派-后山'] = function()
    if G.call('get_month') == 3 and G.call('get_story',64) == 0 then 
        G.call('dark')
        G.call("talk",'？？？？',149,'   芙儿，我们这样也不是长久之计！',2,1) 
        G.call("talk",'',422,'   可有什么办法，你也知道师父最是不喜弟子结交你们这样的人！',2,1)
        G.call("talk",'？？？？',149,'   那个老尼姑，自己找不到相好的，就不许弟子，是不是年轻时被人抛弃过！',2,1)  
        G.call("talk",'',422,'   不许你这样侮辱家师！我先回去了！',2,1)
        G.call('all_over')
        G.call("talk",'',0,'   这不是大师姐吗，只不知这男子是谁？我该怎么办？',2,1)
        local int_选项 = 0
        while int_选项 == 0 do
            int_选项 = G.call("menu",'',0,'',0,0,{"1,一会去向大师姐问清楚","2,一会去告诉二师姐","3,与我何干"},0) 
            if int_选项 == 1 then
                G.call('set_story',64,1)
                G.call('all_over')
                G.call('dark')
                G.call('goto_map',86) 
                G.call("talk",'',0,'   大师姐，我刚刚在后山看到你......',0,0)
                G.call("talk",'',422,'   小师妹，千万别告诉别人啊！',2,1)
                G.call("talk",'',0,'   知道了大师姐，不然我就不会来直接来问大师姐你了!',0,0)
                G.call("talk",'',422,'   小师妹还是挺聪明的了！',2,1)
                G.call('add_love',422,10)
            elseif int_选项 == 2 then
                G.call('set_story',64,2) 
                G.call('all_over')
                G.call('dark')
                G.call('goto_map',87) 
                G.call("talk",'',0,'   二师姐，我刚刚在后山看到大师姐和一个男人在私会！',0,0)
                G.call("talk",'',421,'   小师妹，你可认识那男的吗？',2,1)
                G.call("talk",'',0,'   不认识!',0,0)
                G.call("talk",'',421,'   那就可惜了，要是知道是谁就.....',2,1)
                G.call("talk",'',0,'   就怎么样？',0,0)
                G.call("talk",'',421,'   没什么了，小师妹还是挺乖了！',2,1)
                G.call('add_love',421,10)
            elseif int_选项 == 3 then
                G.call('set_story',64,3) 
                G.call('all_over')
                G.call("talk",'',0,'   算了，和我无关的事，还是不要管了！',0,0)
                G.call('all_over')
                G.call('dark')
            end     
        end
    elseif G.call('get_month') == 6 and G.call('get_story',65) == 0 then 
        G.call('dark')
        G.call("talk",'',421,'   师姐，你刚刚和那男子私会，我可是亲眼瞧见了？要不要我去告诉师父他老人家？',2,1)
        G.call("talk",'',422,'   哼，我就说你诬陷你能怎么样？',2,1)
        G.call('dark')
        G.call("talk",'',421,'   这不是小师妹，我相信小师妹肯定也看到了？小师妹你说是吗？',2,1)
        local int_选项 = 0
        while int_选项 == 0 do
            int_选项 = G.call("menu",'',0,'',0,0,{"1,我没看到","2,我确实也看到了"},0) 
            if int_选项 == 1 then
                G.call('set_story',65,1) 
                G.call("talk",'',422,'   小师妹说没看到，听到了没有？',2,1)
                G.call("talk",'',421,'   下次让我看到，我就让师父自己来看！',2,1)
                G.call('add_love',422,10)
                G.call('all_over')
            elseif int_选项 == 2 then    
                G.call('set_story',65,2) 
                G.call("talk",'',421,'   小师妹都说看到了，看你如何狡辩！',2,1)
                G.call("talk",'',422,'   二位师妹，师姐也是情非得已！',2,1)
                G.call("talk",'',421,'   今日暂且作罢，如果还有下次，就别怪我告诉师父她老人家了！',2,1)
                G.call('add_love',421,10)
                G.call('all_over')
            end
        end
    else
        G.call("talk",'',0,'   今日这里好像没什么事情发生，还是回去吧！',0,0) 
        G.call('all_over')
        G.call('dark')
    end
    G.call('all_over')
    G.call('goto_map',84) 
end
t['初入峨嵋派-出师'] = function()
    G.call('dark')
    G.call('goto_map',83)
    G.call("talk",'',61,'   晓芙，最近一年你频繁往后山跑，我已经问过敏君，没想到你竟然与男子私会，告诉为师他是谁？',2,1)
    G.call("talk",'',422,'   我不能说！',2,1)
    G.call("talk",'',61,'   冥顽不灵，敏君先将晓芙看守起来，我看那贼厮还敢直接来我峨嵋找人！',2,1)
    G.call('dark')
    G.call('story','数日后......')
    G.call("talk",'门派弟子',421,'  师父，不好了，有人攻山！',2,1)
    G.call("talk",'',61,'   '..G.call('get_fullname')..'你代为师去看看何人如此撒野！',2,1)
    G.call("talk",'',0,'   是，师父！',0,0)
    G.call('dark')
    G.call('goto_map',82)
    G.call("talk",'',0,'   阁下何人，竟然敢私闯我峨嵋！',0,0)
    G.call("talk",'',149,'   明教光明左使杨逍，敢问纪姑娘是不是还在峨嵋？',2,1)
    G.call("talk",'',0,'   你害我大师姐不浅，今日还敢硬闯我峨嵋，今日我要你好看！',0,0)
    G.call("talk",'',149,'   大言不惭，看在你师姐份上，我不下重手，看你到底有何能耐！',2,1)
    G.call('all_over')
    G.call('call_battle',1,10,1,100,149,0,0,0,0,0)
    local o_battle_结果 = G.call('get_battle') 
    if o_battle_结果  == 1 then
        G.call("talk",'',149,'   小姑娘武功不耐，咱们后会有期！',2,1)
        G.call('dark')
        G.call('goto_map',83)
        G.call("talk",'',0,'   禀告师父，那贼人已被弟子打跑！',0,0)
        G.call("talk",'',61,'   不错，不错，看来你已经成长起来，从今日起你便成为【峨嵋亲传弟子】！',2,1)
        G.QueryName(0x10030001)[tostring(9)] = '峨嵋亲传弟子'
        G.call('all_over')
    else
        G.call('dark')
        G.call("talk",'',61,'   竟敢在我峨嵋撒野，看我倚天剑厉害！',2,1)
        G.call('all_over')
        G.call('set_team',61,0,0,0)
        G.call('call_battle',0,10,4,150,149,0,0,0,0,0,6) 
        G.call("talk",'',149,'   灭绝老贼尼，你就仗着倚天剑，今日作罢，他日必让你双倍奉还！',2,1)
    end
    G.call('dark')
    if G.call('get_magic',254) > 0 and G.call('get_magic',255) > 0 then 
        G.call("talk",'',61,'   '..G.call('get_fullname')..'看你已经掌握了本门【灭剑】和【绝剑】，今日为师便再传你一手【灭绝剑法】！',2,1)
        G.call('learnmagic',48)
    end
    G.call('all_over')
    G.call("talk",'',61,'   '..G.call('get_fullname')..'你在峨嵋学艺一年有余，今日你便可下山了！',2,1)
    if G.QueryName(0x10030001)[tostring(9)] == '峨嵋亲传弟子' then 
        G.call("talk",'',61,'   芷若你也跟着'..G.call('get_fullname')..'以后一起有个照应，有时间多回峨嵋看看！',2,1)
        G.call("talk",'',18,'   是，师父',2,1)
        G.call('join',18)
    end
    G.call('出师-增加被动')
    G.call('all_over')
    G.call('set_alltime',2,1,1,4,1) 
    if G.QueryName(0x1017000e).进度列表[10] then 
        G.QueryName(0x1017000e).进度列表[10].完成 = 1
    end
    G.call('初入聚贤庄')
end