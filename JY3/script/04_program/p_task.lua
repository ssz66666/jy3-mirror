--[[4005

]]
local G = require "gf"
local L = {}
local t = G.api
local o_battle_结果 = 0
local o_tsbd = G.QueryName(0x1017000c)
--type=剧情
--private=false
--hide=false
t['门派-桃花岛']=function()
    local o_tsbd = G.QueryName(0x1017000c)
    G.call('地图_进入地图','桃花岛',94,3,0)
    if G.call('get_story',59) == 1 then 
        if G.call('get_point',183) ~= G.call('get_year') *12 + G.call('get_month') then 
            G.call('set_point',183, G.call('get_year') *12 + G.call('get_month') )
            local money = math.random(500)
            G.call('add_money',money)
            G.call("talk",'',83,'   启禀【太上岛主】，这是本月给您的“孝敬”，一共'..tostring(money)..'两银子，请您收好。',2,1) 
        else
             G.call("talk",'',83,'   参见【太上岛主】。',2,1) 
        end 
        G.call('all_over')
        G.call('goto_map',1) 
    else
        if G.call('get_point',8) == 8 then   
            G.call("talk",'',90,'   原来是师弟回来了，您可以直接去面见掌门。',2,1) 
            G.call('all_over') 
            G.call('dark')
            G.call('goto_map',68)
            G.call("talk",'',83,'   '..G.call('get_fullname')..'你回来啦，有什么事情吗？。',2,1) 
            local int_选项 = 0 
            while int_选项 == 0 do
                int_选项 = G.call("menu",'',0,'',0,0,{"1,和掌门切磋武功【单挑】","2,参悟【落英缤纷】","3,兑换【修为点】","4,我要【征服】这个门派","5,没有事情"},0) 
                if int_选项 == 1 then
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',1,19,1,200,83,0,0,0,0,0)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                        G.call("talk",'',83,'   嗯，比起从前，确实大有长进。',2,1) 
                        if G.call('get_magic',214) == 0 then
                            if G.call('get_point',18) == 100  then
                                G.call("talk",'',83,'   为师这套【碧海潮生曲】传授与你吧！',2,1)  
                                G.call('learnmagic',214) 
                            else
                                G.call("talk",'',83,'   悟性不够，怕你还是领悟不了【碧海潮生曲】',2,1)    
                            end    
                        end
                    else
                        G.call("talk",'',83,'   你的功夫越来越退步了，你这日子到底在干什么呢！',2,1) 
                    end
                    G.call('all_over') 
                    G.call('goto_map',1)
                elseif int_选项 == 2 then
                    G.call('all_over') 
                    if G.call('get_magic',234) == 0 then
                        G.call("talk",'',83,'   既然如此就看你的造化了！',2,1)
                        G.call('all_over') 
                        --G.call('puzzle')
                        --if  G.misc().拼图结果 == 1 and 1800 - G.misc().计时器 <= 900 then
                        if G.call('organ') then   
                            G.call("talk",'',0,'   这【落英缤纷】果然了得！',0,0)
                            G.call('learnmagic',234)
                            G.call('set_magic_lv',234,5)
                            G.call('set_magicexp',234,999)
                        else
                            G.call("talk",'',83,'   看来你是无法领悟到此绝招的精妙之处！',2,1)  
                        end
                    else 
                        G.call("talk",'',83,'   你不是已经领悟了【落英缤纷】吗？',2,1)
                    end
                    G.call('all_over') 
                    G.call('goto_map',1)
                elseif int_选项 == 3 then 
                    G.call('all_over') 
                    G.call("talk",'',83,'   你现在有【'..tostring(G.call('get_point',5))..'点】修为值，每次转化消耗两点修为值。你想转化成什么属性？',2,1) 
                    local int_选项 = 0 
                    while true  do
                        int_选项 = G.call("menu",'',0,'',0,0,{"1,转化生命内力【生命内力各加120】","2,转化为搏击属性【搏击+3】","3,转化为拆招属性【拆招+3】","4,没有事情"},0) 
                        local int_难度 = G.QueryName(0x10160000 +G.call('get_point',143)).难度
                        local int_点数 = 100
                        if int_难度 == 1 then 
                            int_点数 = 100
                        elseif int_难度 == 2 then 
                            int_点数 = 120
                        elseif int_难度 == 3 then 
                            int_点数 = 150
                        end
                        if int_选项 == 1 then
                            if G.call('get_point',45) >= 50000 and G.call('get_point',47) >= 50000 then 
                                G.call("talk",'',83,'    已经不需要再提升了',2,1)
                            else
                                if G.call('get_point',5) >= 2  then 
                                    G.call('add_point',45,120)
                                    G.call('add_point',47,120)
                                    G.call('add_point',5,-2)
                                else
                                    G.call("talk",'',83,'   还要继续修炼啊',2,1) 
                                end 
                            end
                            G.call("talk",'',83,'   你现在有【'..tostring(G.call('get_point',5))..'点】修为值，每次转化消耗两点修为值。你想转化成什么属性？',2,1)
                        elseif int_选项 == 2 then
                            if G.call('get_point',29) >= int_点数 then 
                                G.call("talk",'',83,'   搏击已经达到最大值',2,1) 
                            else
                                if G.call('get_point',5) >= 2  then 
                                    G.call('add_point',29,3)
                                    G.call('add_point',5,-2)
                                else
                                    G.call("talk",'',83,'   还要继续修炼啊',2,1) 
                                end 
                            end
                            G.call("talk",'',83,'   你现在有【'..tostring(G.call('get_point',5))..'点】修为值，每次转化消耗两点修为值。你想转化成什么属性？',2,1) 
                        elseif int_选项 == 3 then
                            if G.call('get_point',28) >= int_点数 then 
                                G.call("talk",'',83,'   拆招已经达到最大值',2,1) 
                            else
                                if G.call('get_point',5) >= 2  then 
                                    G.call('add_point',28,3)
                                    G.call('add_point',5,-2)
                                else
                                    G.call("talk",'',83,'   还要继续修炼啊',2,1) 
                                end 
                            end
                            G.call("talk",'',83,'   你现在有【'..tostring(G.call('get_point',5))..'点】修为值，每次转化消耗两点修为值。你想转化成什么属性？',2,1) 
                        elseif int_选项 == 4 then  
                            G.call('all_over') 
                            G.call('goto_map',1)
                            break 
                        end
                        
                    end
                elseif int_选项 == 4 then
                    G.call("talk",'',83,'   你难道是其他门派派来的奸细？想要【征服】我的门派就看你有没有本事了！',1,1) 
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',0,10,3,200,83,89,0,0,0,0)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                        G.call("talk",'',83,'   算你厉害！只要你不把我们【桃花岛】赶尽杀绝，我愿意奉你为【太上岛主】！【九花玉露丸】就给你拿去吧。',1,1) 
                        --if G.call('get_item',226) == 0 then 
                            G.call('add_item',226,10)
                        --end 
                        G.call('set_story',59,1)
                        G.call('add_point',15,-10)
                        G.call('add_point',14,100)
                        G.call('set,note','征服【桃花岛】')
                        G.QueryName(0x10030001)[tostring(9)] = '桃花岛太上岛主'
                        o_tsbd.进度列表[22].完成 = 1 
                        G.call('all_over') 
      
                        G.call('goto_map',1) 
                    else
                        G.call('gameover')
                    end 
                elseif int_选项 == 5 then 
                    G.call('all_over') 
                    G.call('goto_map',1)
                end 
            end 
        else
            G.call("talk",'门派弟子',90,'   请问有何贵干',2,1) 
            local int_选项 = 0 
            while int_选项 == 0 do
                int_选项 = G.call("menu",'',0,'',0,0,{"1,想跟你们切磋武功","2,我要【征服】这个门派","3,(乔装混进直接找掌门)","4,没有事情"},0) 
                if int_选项 == 1 then
                    G.call("talk",'门派弟子',249,'   我怕把你打傻了，还是不要了',1,1) 
                    G.call('all_over') 
                    G.call('goto_map',1) 
                elseif int_选项 == 2 then 
                    G.call("talk",'门派弟子',90,'   好大的口气，就让我等来领教领教。',1,1) 
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',0,19,3,250,89,0,0,0,0,0)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                        G.call("talk",'门派弟子',90,'   你给我等着，我去请掌门来教训你！',1,1) 
                        G.call('all_over') 
                        G.call('dark')
                        G.call("talk",'',83,'   好狂妄的小子！就看你有没有这个本事了！',1,1) 
                        G.call('all_over') 
                        G.call('add_time',2)
                        G.call('call_battle',0,10,3,200,83,89,0,0,0,0)
                        o_battle_结果 = G.call('get_battle') 
                        if o_battle_结果  == 1 then
                            G.call("talk",'',83,'   算你厉害！只要你不把我们【桃花岛】赶尽杀绝，我愿意奉你为【太上岛主】！【九花玉露丸】就给你拿去吧。',1,1) 
                            --if G.call('get_item',226) == 0 then 
                                G.call('add_item',226,10)
                            --end 
                            G.call('set_story',59,1)
                            G.call('add_point',15,-10)
                            G.call('add_point',14,100)
                            G.call('set,note','征服【桃花岛】')
                            G.QueryName(0x10030001)[tostring(9)] = '桃花岛太上岛主'
                            o_tsbd.进度列表[22].完成 = 1 
                            G.call('all_over') 
          
                            G.call('goto_map',1) 
                        else
                            G.call('gameover')
                        end
                    else
                        G.call('gameover')
                    end
                elseif int_选项 == 3 then
                    G.call("talk",'门派弟子',90,'   哪里来的狂徒，我们【桃花】总共就这二人，你也敢来冒充！',1,1) 
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',0,10,3,200,89,0,0,0,0,0)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                        G.call("talk",'门派弟子',90,'   你给我等着，我去请掌门来教训你！',1,1) 
                        G.call('all_over') 
                        G.call('dark')
                        G.call("talk",'',83,'   好狂妄的小子！就看你有没有这个本事了！',1,1) 
                        G.call('all_over') 
                        G.call('add_time',2)
                        G.call('call_battle',0,10,3,200,83,89,0,0,0,0)
                        o_battle_结果 = G.call('get_battle') 
                        if o_battle_结果  == 1 then
                            G.call("talk",'',83,'   算你厉害！只要你不把我们【桃花岛】赶尽杀绝，我愿意奉你为【太上岛主】！【九花玉露丸】就给你拿去吧。',1,1) 
                            --if G.call('get_item',226) == 0 then 
                                G.call('add_item',226,10)
                            --end 
                            G.call('set_story',59,1)
                            G.call('add_point',15,-10)
                            G.call('add_point',14,100)
                            G.call('set,note','征服【桃花岛】')
                            G.QueryName(0x10030001)[tostring(9)] = '桃花岛太上岛主'
                            o_tsbd.进度列表[22].完成 = 1 
                            G.call('all_over') 
                            G.call('goto_map',1) 
                        else
                            G.call('gameover')
                        end
                    else
                        G.call('gameover')
                    end
                elseif int_选项 == 4 then 
                    G.call('all_over') 
  
                    G.call('goto_map',1)
                end 
            end     
        end
    end
end
--type=剧情
--private=false
--hide=false
t['门派-神龙教']=function()
    local int_mo = (230-224)*6+265
    local o_tsbd = G.QueryName(0x1017000c)
    G.call('地图_进入地图','神龙教渡口',199,3,1)
    if G.call('get_story',31) == 1 then 
        G.call('地图_进入地图','神龙教',67,48) 
        if G.call('get_point',174) ~= G.call('get_year') *12 + G.call('get_month') then 
           G.call('set_point',174, G.call('get_year') *12 + G.call('get_month') )
           local money = math.random(500)
           G.call('add_money',money)
           G.call("talk",'',123,'   启禀【太上教主】，这是本月给您的“孝敬”，一共'..tostring(money)..'两银子，请您收好。',2,1) 
        else
            G.call("talk",'',123,'   参见【太上教主】。',2,1) 
        end 
        G.call('all_over')
        
        G.call('goto_map',1)    
    else
        G.call("talk",'门派弟子',230,'  请问有何贵干？',2,1) 
        local int_选项 = 0 
        while int_选项 == 0 do
            int_选项 = G.call("menu",'',0,'',0,0,{"1,想跟你们切磋武功","2,我要【征服】这个门派","3,没有事情"},0) 
            if int_选项 == 1 then
                G.call("talk",'门派弟子',230,'   咱们较量一下，点到为止！',1,1) 
                G.call('all_over') 
                G.call('add_time',2)
                G.call('call_battle',1,10,3,100,int_mo,int_mo+1,int_mo+2,int_mo+3,int_mo+4,int_mo+5)
                o_battle_结果 = G.call('get_battle') 
                if o_battle_结果  == 1 then
                    G.call("talk",'门派弟子',230,'   公子真是好本事！',1,1) 
                else
                    G.call("talk",'门派弟子',230,'   承让承让，我们还要看门，改日再会！',1,1) 
                end
                G.call('all_over') 
                
                G.call('goto_map',1) 
            elseif int_选项 == 2 then 
                G.call("talk",'门派弟子',230,'   好大的口气，就让我等来领教领教。',1,1) 
                G.call('all_over') 
                G.call('add_time',2)
                G.call('call_battle',0,10,3,200,int_mo,int_mo+1,int_mo+2,int_mo+3,int_mo+4,int_mo+5)
                o_battle_结果 = G.call('get_battle') 
                if o_battle_结果  == 1 then
                    G.call("talk",'门派弟子',230,'   你给我等着，我去请掌门来教训你！',1,1) 
                    G.call('地图_进入地图','神龙教',67,48) 
                    G.call("talk",'',123,'   想叫老夫听从于你，就看你有没有本事了！',1,1) 
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',0,10,3,150,123,50,26,0,0,0)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                        if G.call('team_full') == false then 
                            G.call("talk",'',123,'   算你厉害！只要你不剿灭我们【神龙教】，我愿意奉你为【太上教主】！我把【四十二章经.镶白旗】我双手奉上,我的老婆【苏荃】也奉献给少侠，任少侠驱策。',1,1) 
                            G.call('join',26)
                        else
                            G.call("talk",'',123,'   算你厉害！只要你不剿灭我们【神龙教】，我愿意奉你为【太上教主】！我把【四十二章经.镶白旗】我双手奉上。',2,1) 
                        end 
                        if G.call('get_item',253) == 0 then 
                            G.call('add_item',253,1)
                        end 
                        G.call('set_story',31,1)
                        G.call('add_point',15,-10)
                        G.call('add_point',14,100)
                        G.call('set,note','征服【神龙教】')
                        G.QueryName(0x10030001)[tostring(9)] = '神龙教太上教主'
                        o_tsbd.进度列表[12].完成 = 1 
                        G.call('all_over') 
      
                        G.call('goto_map',1) 
                    else
                        G.call('gameover')
                    end 
                else
                    G.call('gameover')
                end
            elseif int_选项 == 3 then 
                G.call('all_over') 
                
                G.call('goto_map',1)
            end
        end
    end 
end   
t['门派-征服']=function()
    local int_no = G.call('get_point',190)
    if int_no == 1 then 
        G.call('门派-全真教')
    elseif int_no == 2 then 
        G.call('门派-少林寺')
    elseif int_no == 3 then 
        G.call('门派-武当派')
    elseif int_no == 4 then 
        G.call('门派-峨眉派')
    elseif int_no == 5 then 
        G.call('门派-丐帮')
    elseif int_no == 6 then 
        G.call('门派-星宿派')
    elseif int_no == 7 then 
        G.call('门派-青城派')
    elseif int_no == 8 then 
        G.call('门派-天龙寺')
    elseif int_no == 9 then 
        G.call('门派-昆仑派')
    elseif int_no == 10 then 
        G.call('门派-明教')
    elseif int_no == 11 then 
        G.call('门派-日月神教')
    elseif int_no == 12 then 
        G.call('门派-神龙教')
    elseif int_no == 13 then 
        G.call('门派-华山派')
    elseif int_no == 14 then 
        G.call('门派-崆峒派')
    elseif int_no == 15 then 
        G.call('门派-泰山派')
    elseif int_no == 16 then 
        G.call('门派-嵩山派')
    elseif int_no == 17 then 
        G.call('门派-恒山派')
    elseif int_no == 18 then 
        G.call('门派-衡山派')
    elseif int_no == 19 then 
        G.call('门派-灵鹫宫')
    elseif int_no == 20 then 
        G.call('门派-铁掌帮')
    elseif int_no == 21 then 
        G.call('门派-血刀门')
    end
end
t['门派-血刀门']=function()
    local o_tsbd = G.QueryName(0x1017000c)
    if G.call('get_story',54) == 1 then 
        G.call('dark')
        G.call('goto_map',43)
        if G.call('get_point',184) ~= G.call('get_year') *12 + G.call('get_month') then 
            G.call('set_point',184, G.call('get_year') *12 + G.call('get_month') )
            local money = math.random(500)
            G.call('add_money',money)
            G.call("talk",'',143,'   启禀【太上掌门】，这是本月给您的“孝敬”，一共'..tostring(money)..'两银子，请您收好。',2,1) 
        else
            G.call("talk",'',143,'   参见【太上掌门】。',2,1) 
        end 
        G.call('all_over')
        G.call('goto_map',1)  
    else
        if G.call('get_point',8) == 7 then   
            G.call("talk",'',249,'   原来是师弟回来了，您可以直接去面见掌门。',2,1) 
            G.call('all_over') 
            G.call('dark')
            G.call('goto_map',44)
            G.call("talk",'',143,'   '..G.call('get_fullname')..'你回来啦，有什么事情吗？。',2,1) 
            local int_选项 = 0 
            while int_选项 == 0 do
                int_选项 = G.call("menu",'',0,'',0,0,{"1,和掌门切磋武功【单挑】","2,参悟【血洗天下】","3,兑换【修为点】","4,我要【征服】这个门派","5,没有事情"},0) 
                if int_选项 == 1 then
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',1,19,1,100,143,0,0,0,0,0)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                        G.call("talk",'',143,'   嗯，比起从前，确实大有长进。',2,1) 
                        if G.call('get_magic',207) == 0 and  G.call('get_magic',206) == 0 then 
                            if G.call('get_point',15) < -90 then 
                                G.call("talk",'',143,'   为师近来研究了套刀法和内功心法也一并传授与你吧！',2,1)   
                                G.call('learnmagic',207)
                                G.call('learnmagic',206)
                            else
                                G.call("talk",'',143,'   不过你小子还不够邪性！',2,1)    
                            end   
                        end 
                    else
                        G.call("talk",'',143,'   你的功夫越来越退步了，你这日子到底在干什么呢！',2,1) 
                    end
                    G.call('all_over') 
                    G.call('goto_map',1)
                elseif int_选项 == 2 then
                    G.call('all_over')
                    if G.call('get_magic',235) == 0 then 
                        if G.call('get_CH','武林霸主') then
                            G.call("talk",'',143,'   既然你已经成为武林霸主，我就看看你的实力如何？',2,1)
                            G.call('add_time',2)
                            G.call('call_battle',1,19,1,200,143,0,0,0,0,0)
                            o_battle_结果 = G.call('get_battle') 
                            if o_battle_结果  == 1 then
                                G.call("talk",'',0,'   这【血洗天下】果然了得！',0,0) 
                                G.call('learnmagic',235)
                                G.call('set_magic_lv',235,5)
                                G.call('set_magicexp',235,999)
                            else
                                G.call("talk",'',143,'   看来你还是无法领悟此绝招！',2,1) 
                            end
                        else
                            G.call("talk",'',143,'   你还未成为【武林霸主】，还谈何【血洗天下】？！',2,1)  
                        end
                    else
                        G.call("talk",'',143,'   你不是已经领悟了【血洗天下】吗？',2,1) 
                    end
                    G.call('all_over') 
                    G.call('goto_map',1)
                elseif int_选项 == 3 then 
                    G.call('all_over') 
                    G.call("talk",'',143,'   你现在有【'..tostring(G.call('get_point',5))..'点】修为值，每次转化消耗两点修为值。你想转化成什么属性？',2,1) 
                    local int_选项 = 0 
                    while true  do
                        int_选项 = G.call("menu",'',0,'',0,0,{"1,转化生命内力【生命内力各加120】","2,转化为搏击属性【搏击+3】","3,转化为拆招属性【拆招+3】","4,没有事情"},0) 
                        local int_难度 = G.QueryName(0x10160000 +G.call('get_point',143)).难度
                        local int_点数 = 100
                        if int_难度 == 1 then 
                            int_点数 = 100
                        elseif int_难度 == 2 then 
                            int_点数 = 120
                        elseif int_难度 == 3 then 
                            int_点数 = 150
                        end
                        if int_选项 == 1 then
                            if G.call('get_point',45) >= 50000 and G.call('get_point',47) >= 50000 then 
                                G.call("talk",'',143,'    已经不需要再提升了',2,1)
                            else
                                if G.call('get_point',5) >= 2  then 
                                    G.call('add_point',45,120)
                                    G.call('add_point',47,120)
                                    G.call('add_point',5,-2)
                                else
                                    G.call("talk",'',143,'   还要继续修炼啊',2,1) 
                                end 
                            end
                            G.call("talk",'',143,'   你现在有【'..tostring(G.call('get_point',5))..'点】修为值，每次转化消耗两点修为值。你想转化成什么属性？',2,1)
                        elseif int_选项 == 2 then
                            if G.call('get_point',29) >= int_点数 then 
                                G.call("talk",'',143,'   搏击已经达到最大值',2,1) 
                            else
                                if G.call('get_point',5) >= 2  then 
                                    G.call('add_point',29,3)
                                    G.call('add_point',5,-2)
                                else
                                    G.call("talk",'',143,'   还要继续修炼啊',2,1) 
                                end 
                            end
                            G.call("talk",'',143,'   你现在有【'..tostring(G.call('get_point',5))..'点】修为值，每次转化消耗两点修为值。你想转化成什么属性？',2,1) 
                        elseif int_选项 == 3 then
                            if G.call('get_point',28) >= int_点数 then 
                                G.call("talk",'',143,'   拆招已经达到最大值',2,1) 
                            else
                                if G.call('get_point',5) >= 2  then 
                                    G.call('add_point',28,3)
                                    G.call('add_point',5,-2)
                                else
                                    G.call("talk",'',143,'   还要继续修炼啊',2,1) 
                                end 
                            end
                            G.call("talk",'',143,'   你现在有【'..tostring(G.call('get_point',5))..'点】修为值，每次转化消耗两点修为值。你想转化成什么属性？',2,1) 
                        elseif int_选项 == 4 then  
                            G.call('all_over') 
                            G.call('goto_map',1)
                            break 
                        end
                        
                    end
                elseif int_选项 == 4 then
                    G.call("talk",'',143,'   你难道是其他门派派来的奸细？想要【征服】我的门派就看你有没有本事了！',1,1) 
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',0,10,3,200,143,0,0,0,0,0)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                        G.call("talk",'',143,'   算你厉害！只要你不把我们【血刀门】赶尽杀绝，我愿意奉你为【太上掌门】！这本【血刀刀法】秘籍，你拿去吧。',1,1) 
                        if G.call('get_item',105) == 0 then 
                            G.call('add_item',105,1)
                        end 
                        G.call('set_story',54,1)
                        G.call('add_point',15,-10)
                        G.call('add_point',14,100)
                        G.call('set,note','征服【血刀门】')
                        G.QueryName(0x10030001)[tostring(9)] = '血刀门太上掌门'
                        o_tsbd.进度列表[21].完成 = 1 
                        G.call('all_over') 
      
                        G.call('goto_map',1) 
                    else
                        G.call('gameover')
                    end 
                elseif int_选项 == 5 then 
                    G.call('all_over') 
                    G.call('goto_map',1)
                end 
            end 
        else
            G.call("talk",'门派弟子',249,'   请问有何贵干',2,1) 
            local int_选项 = 0 
            while int_选项 == 0 do
                int_选项 = G.call("menu",'',0,'',0,0,{"1,想跟你们切磋武功","2,我要【征服】这个门派","3,(乔装混进直接找掌门)","4,没有事情"},0) 
                if int_选项 == 1 then
                    G.call("talk",'门派弟子',249,'   咱们较量一下，点到为止！',1,1) 
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',1,19,3,100,249,0,0,0,0,0)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                        G.call("talk",'门派弟子',249,'   公子真是好本事！',1,1) 
                    else
                        G.call("talk",'门派弟子',249,'   承让承让，我们还要看门，改日再会！',1,1) 
                    end
                    G.call('all_over') 
  
                    G.call('goto_map',1) 
                elseif int_选项 == 2 then 
                    G.call("talk",'门派弟子',249,'   好大的口气，就让我等来领教领教。',1,1) 
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',0,19,3,250,249,248,0,0,0,0)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                        G.call("talk",'门派弟子',249,'   你给我等着，我去请掌门来教训你！',1,1) 
                        G.call('all_over') 
                        G.call('dark')
                        G.call("talk",'',143,'   想叫老夫听从于你，就看你有没有本事了！',1,1) 
                        G.call('all_over') 
                        G.call('add_time',2)
                        G.call('call_battle',0,10,3,200,143,0,0,0,0,0)
                        o_battle_结果 = G.call('get_battle') 
                        if o_battle_结果  == 1 then
                            G.call("talk",'',143,'   算你厉害！只要你不把我们【血刀门】赶尽杀绝，我愿意奉你为【太上掌门】！这本【血刀刀法】秘籍，你拿去吧。',1,1) 
                            if G.call('get_item',105) == 0 then 
                                G.call('add_item',105,1)
                            end 
                            G.call('set_story',54,1)
                            G.call('add_point',15,-10)
                            G.call('add_point',14,100)
                            G.call('set,note','征服【血刀门】')
                            G.QueryName(0x10030001)[tostring(9)] = '血刀门太上掌门'
                            o_tsbd.进度列表[21].完成 = 1 
                            G.call('all_over') 
          
                            G.call('goto_map',1)
                        else
                            G.call('gameover')
                        end
                    else
                        G.call('gameover')
                    end
                elseif int_选项 == 3 then
                    G.call("talk",'门派弟子',249,'   哪里来的狂徒，我们【血刀门】总共就这二人，你也敢来冒充！',1,1) 
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',0,10,3,100,249,248,0,0,0,0)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                        G.call("talk",'门派弟子',249,'   你给我等着，我去请掌门来教训你！',1,1) 
                        G.call('all_over') 
                        G.call('dark')
                        G.call("talk",'',143,'   想叫老夫听从于你，就看你有没有本事了！',1,1) 
                        G.call('all_over') 
                        G.call('add_time',2)
                        G.call('call_battle',0,10,3,200,143,0,0,0,0,0)
                        o_battle_结果 = G.call('get_battle') 
                        if o_battle_结果  == 1 then
                            G.call("talk",'',143,'   算你厉害！只要你不把我们【血刀门】赶尽杀绝，我愿意奉你为【太上掌门】！这本【血刀刀法】秘籍，你拿去吧。',1,1) 
                            if G.call('get_item',105) == 0 then 
                                G.call('add_item',105,1)
                            end 
                            G.call('set_story',54,1)
                            G.call('add_point',15,-10)
                            G.call('add_point',14,100)
                            G.call('set,note','征服【血刀门】')
                            G.QueryName(0x10030001)[tostring(9)] = '血刀门太上掌门'
                            o_tsbd.进度列表[21].完成 = 1 
                            G.call('all_over') 
          
                            G.call('goto_map',1)
                        else
                            G.call('gameover')
                        end
                    else
                        G.call('gameover')
                    end
                elseif int_选项 == 4 then 
                    G.call('all_over') 
  
                    G.call('goto_map',1)
                end 
            end     
        end
    end
end
t['门派-全真教']=function()
    local o_tsbd = G.QueryName(0x1017000c)
    local int_mo = 259
    if G.call('get_story',20) == 1 then 
        G.call('dark')
        G.call('goto_map',6)
        if G.call('get_point',163) ~= G.call('get_year') *12 + G.call('get_month') then 
           G.call('set_point',163, G.call('get_year') *12 + G.call('get_month') )
           local money = math.random(500)
           G.call('add_money',money)G.call("talk",'',166,'   启禀【太上掌门】，这是本月给您的“孝敬”，一共'..tostring(money)..'两银子，请您收好。',2,1) 
        else
            G.call("talk",'',166,'   参见【太上掌门】。',2,1) 
        end 
        G.call('all_over')
        G.call('goto_map',1)    
    else
        if G.call('get_point',8) == 4 then   
            G.call("talk",'',214,'   原来是师弟回来了，您可以直接去面见掌门。',2,1) 
            G.call('all_over') 
            G.call('dark')
            G.call('goto_map',6)
            G.call("talk",'',166,'   '..G.call('get_fullname')..'你回来啦，有什么事情吗？。',2,1) 
            local int_选项 = 0 
            while int_选项 == 0 do
                int_选项 = G.call("menu",'',0,'',0,0,{"1,参悟【天罡北斗七星阵】","2,参悟【七星点灯】","3,兑换【修为点】","4,我要【征服】这个门派","5,没有事情"},0) 
                if int_选项 == 1 then
                    G.call('all_over') 
                    if G.call('get_magic',185) == 0 then 
                        G.call("talk",'',166,'   既然如此，那就要过了本阵才行。',2,1) 
                        G.call("talk",'',0,'   求之不得',0,0)
                        G.call('all_over') 
                        G.call('add_time',2)
                        G.call('call_battle',1,10,3,200,166,165,86,167,168,214)
                        o_battle_结果 = G.call('get_battle') 
                        if o_battle_结果  == 1 then
                            G.call("talk",'',0,'   这阵法也难不到我！',0,0)
                            if G.call('get_magic',185) == 0 then 
                                G.call('learnmagic',185)
                            end 
                        else
                            G.call("talk",'',166,'   看来你还是无法领悟此阵法的精妙之处！',2,1) 
                        end
                    else
                        G.call("talk",'',166,'   你不是已经领悟了【天罡北斗七星阵】吗？',2,1) 
                    end
                    G.call('all_over') 
                    G.call('goto_map',1)
                elseif int_选项 == 2 then
                    G.call('all_over') 
                    if G.call('get_magic',227) == 0 then 
                        G.call("talk",'',166,'   既然如此，那就觉悟吧！',2,1) 
                        G.call('all_over') 
                        G.call('add_time',2)
                        G.call('call_battle',1,10,1,200,166,165,86,167,168,214)
                        o_battle_结果 = G.call('get_battle') 
                        if o_battle_结果  == 1 then
                            G.call("talk",'',0,'   这【七星点灯】果然了得！',0,0)
                            if G.call('get_magic',227) == 0 then 
                                G.call('learnmagic',227)
                                G.call('set_magic_lv',227,5)
                                G.call('set_magicexp',227,999)
                            end 
                        else
                            G.call("talk",'',166,'   看来你还是无法领悟此绝招的精妙之处！',2,1) 
                        end
                    else
                        G.call("talk",'',166,'   你不是已经领悟了【七星点灯】吗？',2,1) 
                    end
                    G.call('all_over') 
                    G.call('goto_map',1)
                elseif int_选项 == 3 then 
                    G.call('all_over') 
                    G.call("talk",'',166,'   你现在有【'..tostring(G.call('get_point',5))..'点】修为值，每次转化消耗两点修为值。你想转化成什么属性？',2,1) 
                    local int_选项 = 0 
                    while true  do
                        int_选项 = G.call("menu",'',0,'',0,0,{"1,转化生命内力【生命内力各加120】","2,转化为搏击属性【搏击+3】","3,转化为拆招属性【拆招+3】","4,没有事情"},0) 
                        local int_难度 = G.QueryName(0x10160000 +G.call('get_point',143)).难度
                        local int_点数 = 100
                        if int_难度 == 1 then 
                            int_点数 = 100
                        elseif int_难度 == 2 then 
                            int_点数 = 120
                        elseif int_难度 == 3 then 
                            int_点数 = 150
                        end
                        if int_选项 == 1 then
                            if G.call('get_point',45) >= 50000 and G.call('get_point',47) >= 50000 then 
                                G.call("talk",'',166,'    已经不需要再提升了',2,1)
                            else
                                if G.call('get_point',5) >= 2  then 
                                    G.call('add_point',45,120)
                                    G.call('add_point',47,120)
                                    G.call('add_point',5,-2)
                                else
                                    G.call("talk",'',166,'   还要继续修炼啊',2,1) 
                                end 
                            end
                            G.call("talk",'',166,'   你现在有【'..tostring(G.call('get_point',5))..'点】修为值，每次转化消耗两点修为值。你想转化成什么属性？',2,1)
                        elseif int_选项 == 2 then
                            if G.call('get_point',29) >= int_点数 then 
                                G.call("talk",'',166,'   搏击已经达到最大值',2,1) 
                            else
                                if G.call('get_point',5) >= 2  then 
                                    G.call('add_point',29,3)
                                    G.call('add_point',5,-2)
                                else
                                    G.call("talk",'',166,'   还要继续修炼啊',2,1) 
                                end 
                            end
                            G.call("talk",'',166,'   你现在有【'..tostring(G.call('get_point',5))..'点】修为值，每次转化消耗两点修为值。你想转化成什么属性？',2,1) 
                        elseif int_选项 == 3 then
                            if G.call('get_point',28) >= int_点数 then 
                                G.call("talk",'',166,'   拆招已经达到最大值',2,1) 
                            else
                                if G.call('get_point',5) >= 2  then 
                                    G.call('add_point',28,3)
                                    G.call('add_point',5,-2)
                                else
                                    G.call("talk",'',166,'   还要继续修炼啊',2,1) 
                                end 
                            end
                            G.call("talk",'',166,'   你现在有【'..tostring(G.call('get_point',5))..'点】修为值，每次转化消耗两点修为值。你想转化成什么属性？',2,1) 
                        elseif int_选项 == 4 then  
                            G.call('all_over') 
                            G.call('goto_map',1)
                            break 
                        end
                        
                    end
                elseif int_选项 == 4 then
                    G.call("talk",'',166,'   你难道是其他门派派来的奸细？想要【征服】我的门派就看你有没有本事了！',1,1) 
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',0,10,3,200,166,0,0,0,0,0)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                        G.call("talk",'',166,'   算你厉害！只要你不把我们【全真教】赶尽杀绝，我愿意奉你为【太上掌门】！这本【三花聚顶掌】秘籍，你拿去吧。',1,1) 
                        if G.call('get_item',338) == 0 then 
                            G.call('add_item',338,1)
                        end 
                        G.call('set_story',20,1)
                        G.call('add_point',15,-10)
                        G.call('add_point',14,100)
                        G.call('set,note','征服【全真教】')
                        G.QueryName(0x10030001)[tostring(9)] = '全真教太上掌门'
                        o_tsbd.进度列表[1].完成 = 1 
                        G.call('all_over') 
      
                        G.call('goto_map',1) 
                    else
                        G.call('gameover')
                    end 
                elseif int_选项 == 5 then 
                    G.call('all_over') 
                    G.call('goto_map',1)
                end 
            end 
        else
            G.call("talk",'门派弟子',214,'   请问有何贵干',2,1) 
            local int_选项 = 0 
            while int_选项 == 0 do
                int_选项 = G.call("menu",'',0,'',0,0,{"1,想跟你们切磋武功","2,我要【征服】这个门派","3,(乔装混进直接找掌门)","4,没有事情"},0) 
                if int_选项 == 1 then
                    G.call("talk",'门派弟子',214,'   咱们较量一下，点到为止！',1,1) 
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',1,10,3,100,int_mo,int_mo+1,int_mo+2,int_mo+3,int_mo+4,int_mo+5)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                        G.call("talk",'门派弟子',214,'   公子真是好本事！',1,1) 
                    else
                        G.call("talk",'门派弟子',214,'   承让承让，我们还要看门，改日再会！',1,1) 
                    end
                    G.call('all_over') 
  
                    G.call('goto_map',1) 
                elseif int_选项 == 2 then 
                    G.call("talk",'门派弟子',214,'   好大的口气，就让我等来领教领教。',1,1) 
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',0,10,3,100,168,167,int_mo+2,int_mo+3,int_mo+4,int_mo+5)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                        G.call("talk",'门派弟子',214,'   你给我等着，我去请掌门来教训你！',1,1) 
                        G.call('all_over') 
                        G.call('dark')
                        G.call("talk",'',166,'   好狂妄的小子！就看你有没有这个本事了！',1,1) 
                        G.call('all_over') 
                        G.call('add_time',2)
                        G.call('call_battle',0,10,3,200,166,0,0,0,0,0)
                        o_battle_结果 = G.call('get_battle') 
                        if o_battle_结果  == 1 then
                            G.call("talk",'',166,'   算你厉害！只要你不把我们【全真教】赶尽杀绝，我愿意奉你为【太上掌门】！这本【三花聚顶掌】秘籍，你拿去吧。',1,1) 
                            if G.call('get_item',338) == 0 then 
                                G.call('add_item',338,1)
                            end 
                            G.call('set_story',20,1)
                            G.call('add_point',15,-10)
                            G.call('add_point',14,100)
                            G.call('set,note','征服【全真教】')
                            G.QueryName(0x10030001)[tostring(9)] = '全真教太上掌门'
                            o_tsbd.进度列表[1].完成 = 1 
                            G.call('all_over') 
          
                            G.call('goto_map',1) 
                        else
                            G.call('gameover')
                        end
                    else
                        G.call('gameover')
                    end
                elseif int_选项 == 3 then
                    if G.call('get_point',195) == 0x100b0055 then 
                        G.call('all_over') 
                        G.call('dark')
                        G.call("talk",'',166,'   好狂妄的小子！就看你有没有这个本事了！',1,1)  
                        G.call('all_over') 
                        G.call('add_time',2)
                        G.call('call_battle',0,10,3,200,166,0,0,0,0,0)
                        o_battle_结果 = G.call('get_battle') 
                        if o_battle_结果  == 1 then
                            G.call("talk",'',166,'   算你厉害！只要你不把我们【全真教】赶尽杀绝，我愿意奉你为【太上掌门】！这本【先天功】秘籍，你拿去吧。',1,1) 
                           if G.call('get_item',123) == 0 then 
                                G.call('add_item',123,1)
                            end 
                            G.call('set_story',20,1)
                            G.call('add_point',15,-10)
                            G.call('add_point',14,100)
                            G.call('set,note','征服【全真教】')
                            G.QueryName(0x10030001)[tostring(9)] = '全真教太上掌门'
                            o_tsbd.进度列表[1].完成 = 1 
                            G.call('all_over') 
          
                            G.call('goto_map',1) 
                        else
                            G.call('gameover')
                        end
                    else
                        G.call("talk",'门派弟子',214,'   哪里来的狂徒，敢冒充我们，莫非想要对掌门不利？拿命来！',1,1) 
                        G.call('all_over') 
                        G.call('add_time',2)
                        G.call('call_battle',0,10,3,100,168,167,int_mo+2,int_mo+3,int_mo+4,int_mo+5)
                        o_battle_结果 = G.call('get_battle') 
                        if o_battle_结果  == 1 then
                            G.call("talk",'门派弟子',214,'   你给我等着，我去请掌门来教训你！',1,1) 
                            G.call('all_over') 
                            G.call('dark')
                            G.call("talk",'',166,'   好狂妄的小子！就看你有没有这个本事了！',1,1) 
                            G.call('all_over') 
                            G.call('add_time',2)
                            G.call('call_battle',0,10,3,200,166,0,0,0,0,0)
                            o_battle_结果 = G.call('get_battle') 
                            if o_battle_结果  == 1 then
                                G.call("talk",'',166,'   算你厉害！只要你不把我们【全真教】赶尽杀绝，我愿意奉你为【太上掌门】！这本【三花聚顶掌】秘籍，你拿去吧。',1,1) 
                                if G.call('get_item',338) == 0 then 
                                    G.call('add_item',338,1)
                                end 
                                G.call('set_story',20,1)
                                G.call('add_point',15,-10)
                                G.call('add_point',14,100)
                                G.call('set,note','征服【全真教】')
                                G.QueryName(0x10030001)[tostring(9)] = '全真教太上掌门'
                                o_tsbd.进度列表[1].完成 = 1 
                                G.call('all_over') 
              
                                G.call('goto_map',1) 
                            else
                                G.call('gameover')
                            end
                        else
                            G.call('gameover')
                        end
                    end
                elseif int_选项 == 4 then 
                    G.call('all_over') 
  
                    G.call('goto_map',1)
                end 
            end     
        end
    end

end
t['门派-武当派']=function()
    local o_tsbd = G.QueryName(0x1017000c)
    local int_mo = 253
    if G.call('get_story',22) == 1 then 
        G.call('dark')
        G.call('goto_map',7)
        if G.call('get_point',165) ~= G.call('get_year') *12 + G.call('get_month') then 
           G.call('set_point',165, G.call('get_year') *12 + G.call('get_month') )
           local money = math.random(500)
           G.call('add_money',money)
           G.call("talk",'',160,'   启禀【太上掌门】，这是本月给您的“孝敬”，一共'..tostring(money)..'两银子，请您收好。',2,1) 
        else
            G.call("talk",'',160,'   参见【太上掌门】。',2,1) 
        end 
        G.call('all_over')
        G.call('goto_map',1)    
    else
        if G.call('get_point',8) == 1 then   
            G.call("talk",'',164,'   原来是师弟回来了，您可以直接去面见掌门。',2,1) 
            G.call('all_over') 
            G.call('dark')
            G.call('goto_map',7)
            G.call("talk",'',160,'   '..G.call('get_fullname')..'你回来啦，有什么事情吗？。',2,1) 
            local int_选项 = 0 
            while int_选项 == 0 do
                int_选项 = G.call("menu",'',0,'',0,0,{"1,和掌门切磋武功【单挑】","2,兑换【修为点】","3,参悟【真武七截阵】","4,参悟【真武太极】","5,我要【征服】这个门派","6,没有事情"},0) 
                if int_选项 == 1 then
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',1,10,1,100,160,0,0,0,0,0)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                        if G.call('get_point',15) >= 80 and G.call('get_magicexp',99) == 0 then 
                            G.call("talk",'',160,'   嗯，你不但功夫更胜从前，侠义之心也越来越盛。我今天传授你我派的绝学【太极拳】!',2,1) 
                            G.call('learnmagic',99)
                        elseif G.call('get_point',15) >= 100 and G.call('get_magicexp',55) == 0 then 
                            G.call("talk",'',160,'   嗯，你不但功夫更胜从前，侠义之心也越来越盛。我今天传授你我派的绝学【太极剑】，并把【镇派之宝】——【真武剑】赠送给你!',2,1) 
                            G.call('learnmagic',55)
                            if G.call('get_item',25) == 0 then 
                                G.call('add_item',25,1)
                            end  
                        else
                            G.call("talk",'',160,'   嗯，比起从前，确实大有长进。',2,1) 
                        end 
                     
                    else
                        G.call("talk",'',160,'   你的功夫越来越退步了，你这日子到底在干什么呢！',2,1) 
                    end
                    G.call('all_over') 
                    G.call('goto_map',1)
                elseif int_选项 == 3 then
                    G.call('all_over') 
                    if G.call('get_magic',186) == 0 then 
                        if G.call('get_magic',226) == 10 then 
                            G.call("talk",'',160,'   既然如此，那就要过了本阵才行。',2,1) 
                            G.call("talk",'',0,'   求之不得',0,0)
                            G.call('all_over') 
                            G.call('add_time',2)
                            G.call('call_battle',1,10,3,200,160,159,161,162,163,164)
                            o_battle_结果 = G.call('get_battle') 
                            if o_battle_结果  == 1 then
                                G.call("talk",'',0,'   这阵法也难不到我！',0,0)
                                if G.call('get_magic',186) == 0 then 
                                    G.call('learnmagic',186)
                                end 
                            else
                                G.call("talk",'',160,'   看来你还是无法领悟此阵法的精妙之处！',2,1) 
                            end
                            G.call('all_over') 
                        else
                            G.call("talk",'',160,'   没有参悟你太师父的【倚天屠龙功】是无法参悟此阵法的奥妙！',2,1) 
                            G.call('all_over') 
                        end
                    else
                        G.call("talk",'',160,'   你不是已经领悟了【真武七截阵】吗？',2,1) 
                        G.call('all_over') 
                    end
                    G.call('goto_map',1) 
                elseif int_选项 == 4 then
                    G.call('all_over') 
                    if G.call('get_magic',229) == 0 then 
                        G.call("talk",'',160,'   既然如此，那就觉悟吧！',2,1) 
                        G.call('all_over') 
                        G.call('add_time',2)
                        G.call('call_battle',1,10,1,200,160,159,161,162,163,164)
                        o_battle_结果 = G.call('get_battle') 
                        if o_battle_结果  == 1 then
                            G.call("talk",'',0,'   这【真武太极】果然了得！',0,0)
                            G.call('learnmagic',229)
                            G.call('set_magic_lv',229,5)
                            G.call('set_magicexp',229,999)
                        else
                            G.call("talk",'',160,'   看来你还是无法领悟此绝招的精妙之处！',2,1) 
                        end
                        G.call('all_over') 
                    else
                        G.call("talk",'',160,'   你不是已经领悟了【真武太极】吗？',2,1) 
                        G.call('all_over') 
                    end
                    G.call('goto_map',1) 
                elseif int_选项 == 2 then 
                    G.call('all_over') 
                    G.call("talk",'',160,'   你现在有【'..tostring(G.call('get_point',5))..'点】修为值，每次转化消耗两点修为值。你想转化成什么属性？',2,1) 
                    local int_选项 = 0 
                    while true  do
                        int_选项 = G.call("menu",'',0,'',0,0,{"1,转化生命内力【生命内力各加120】","2,转化为搏击属性【搏击+3】","3,转化为拆招属性【拆招+3】","4,没有事情"},0) 
                        local int_难度 = G.QueryName(0x10160000 +G.call('get_point',143)).难度
                        local int_点数 = 100
                        if int_难度 == 1 then 
                            int_点数 = 100
                        elseif int_难度 == 2 then 
                            int_点数 = 120
                        elseif int_难度 == 3 then 
                            int_点数 = 150
                        end
                        if int_选项 == 1 then
                            if G.call('get_point',45) >= 50000 and G.call('get_point',47) >= 50000 then 
                                G.call("talk",'',160,'    已经不需要再提升了',2,1)
                            else
                                if G.call('get_point',5) >= 2 then 
                                    G.call('add_point',45,120)
                                    G.call('add_point',47,120)
                                    G.call('add_point',5,-2)
                                else
                                    G.call("talk",'',160,'   还要继续修炼啊',2,1) 
                                end 
                            end
                            G.call("talk",'',160,'   你现在有【'..tostring(G.call('get_point',5))..'点】修为值，每次转化消耗两点修为值。你想转化成什么属性？',2,1)
                        elseif int_选项 == 2 then
                            if G.call('get_point',29) >= int_点数 then 
                                G.call("talk",'',160,'   搏击已经达到最大值',2,1) 
                            else
                                if G.call('get_point',5) >= 2  then 
                                    G.call('add_point',29,3)
                                    G.call('add_point',5,-2)
                                else
                                    G.call("talk",'',160,'   还要继续修炼啊',2,1) 
                                end 
                            end
                            G.call("talk",'',160,'   你现在有【'..tostring(G.call('get_point',5))..'点】修为值，每次转化消耗两点修为值。你想转化成什么属性？',2,1) 
                        elseif int_选项 == 3 then
                            if G.call('get_point',28) >= int_点数 then 
                                G.call("talk",'',160,'   拆招已经达到最大值',2,1) 
                            else
                                if G.call('get_point',5) >= 2  then 
                                    G.call('add_point',28,3)
                                    G.call('add_point',5,-2)
                                else
                                    G.call("talk",'',160,'   还要继续修炼啊',2,1) 
                                end 
                            end
                            G.call("talk",'',160,'   你现在有【'..tostring(G.call('get_point',5))..'点】修为值，每次转化消耗两点修为值。你想转化成什么属性？',2,1) 
                        elseif int_选项 == 4 then  
                            G.call('all_over') 
                            G.call('goto_map',1)
                            break 
                        end
                        
                    end
                elseif int_选项 == 5 then
                    G.call("talk",'',160,'   你难道是其他门派派来的奸细？想要【征服】我的门派就看你有没有本事了！',1,1) 
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',0,10,3,200,160,0,0,0,0,0)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                        G.call("talk",'',160,'   算你厉害！只要你不把我们【武当派】赶尽杀绝，我愿意奉你为【太上掌门】！这本【太极劲】秘籍，你拿去吧。',1,1) 
                        if G.call('get_item',141) == 0 then 
                            G.call('add_item',141,1)
                        end 
                        G.call('set_story',22,1)
                        G.call('add_point',15,-10)
                        G.call('add_point',14,100)
                        G.call('set,note','征服【武当派】')
                        G.QueryName(0x10030001)[tostring(9)] = '武当派太上掌门'
                        o_tsbd.进度列表[3].完成 = 1 
                        G.call('all_over') 
      
                        G.call('goto_map',1) 
                    else
                        G.call('gameover')
                    end 
                elseif int_选项 == 6 then 
                    G.call('all_over') 
                    G.call('goto_map',1)
                end 
            end 
        else
            G.call("talk",'门派弟子',164,'   请问有何贵干',2,1) 
            local int_选项 = 0 
            while int_选项 == 0 do
                int_选项 = G.call("menu",'',0,'',0,0,{"1,想跟你们切磋武功","2,我要【征服】这个门派","3,(乔装混进直接找掌门)","4,没有事情"},0) 
                if int_选项 == 1 then
                    G.call("talk",'门派弟子',164,'   咱们较量一下，点到为止！',1,1) 
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',1,10,3,100,int_mo,int_mo+1,int_mo+2,int_mo+3,int_mo+4,int_mo+5)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                        G.call("talk",'门派弟子',164,'   公子真是好本事！',1,1) 
                    else
                        G.call("talk",'门派弟子',164,'   承让承让，我们还要看门，改日再会！',1,1) 
                    end
                    G.call('all_over') 
  
                    G.call('goto_map',1) 
                elseif int_选项 == 2 then 
                    G.call("talk",'门派弟子',164,'   好大的口气，就让我等来领教领教。',1,1) 
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',0,10,3,100,161,162,163,164,0,0)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                        G.call("talk",'门派弟子',164,'   你给我等着，我去请掌门来教训你！',1,1) 
                        G.call('all_over') 
                        G.call('dark')
                        G.call("talk",'',160,'   好狂妄的小子！就看你有没有这个本事了！',1,1) 
                        G.call('all_over') 
                        G.call('add_time',2)
                        G.call('call_battle',0,10,3,200,160,0,0,0,0,0)
                        o_battle_结果 = G.call('get_battle') 
                        if o_battle_结果  == 1 then
                            G.call("talk",'',160,'   算你厉害！只要你不把我们【武当派】赶尽杀绝，我愿意奉你为【太上掌门】！这本【太极劲】秘籍，你拿去吧。',1,1) 
                            if G.call('get_item',141) == 0 then 
                                G.call('add_item',141,1)
                            end 
                            G.call('set_story',22,1)
                            G.call('add_point',15,-10)
                            G.call('add_point',14,100)
                            G.call('set,note','征服【武当派】')
                            G.QueryName(0x10030001)[tostring(9)] = '武当派太上掌门'
                            o_tsbd.进度列表[3].完成 = 1 
                            G.call('all_over') 
          
                            G.call('goto_map',1) 
                        else
                            G.call('gameover')
                        end 
                    else
                        G.call('gameover')
                    end
                elseif int_选项 == 3 then 
                    if G.call('get_point',195) == 0x100b0059 then 
                        G.call('all_over') 
                        G.call('dark')
                        G.call("talk",'',160,'   好狂妄的小子！就看你有没有这个本事了！',1,1) 
                        G.call('all_over') 
                        G.call('add_time',2)
                        G.call('call_battle',0,10,3,200,160,0,0,0,0,0)
                        o_battle_结果 = G.call('get_battle') 
                        if o_battle_结果  == 1 then
                            G.call("talk",'',160,'   算你厉害！只要你不把我们【武当派】赶尽杀绝，我愿意奉你为【太上掌门】！这本【太极劲】秘籍，你拿去吧。',1,1) 
                            if G.call('get_item',141) == 0 then 
                                G.call('add_item',141,1)
                            end 
                            G.call('set_story',22,1)
                            G.call('add_point',15,-10)
                            G.call('add_point',14,100)
                            G.call('set,note','征服【武当派】')
                            G.QueryName(0x10030001)[tostring(9)] = '武当派太上掌门'
                            o_tsbd.进度列表[3].完成 = 1 
                            G.call('all_over') 
          
                            G.call('goto_map',1) 
                        else
                            G.call('gameover')
                        end 
                    else
                        G.call("talk",'门派弟子',164,'   哪里来的狂徒，敢冒充我们，莫非想要对掌门不利？拿命来！',1,1) 
                        G.call('all_over') 
                        G.call('add_time',2)
                        G.call('call_battle',0,10,3,100,161,162,163,164,0,0)
                        o_battle_结果 = G.call('get_battle') 
                        if o_battle_结果  == 1 then
                            G.call("talk",'门派弟子',164,'   你给我等着，我去请掌门来教训你！',1,1) 
                            G.call('all_over') 
                            G.call('dark')
                            G.call("talk",'',160,'   好狂妄的小子！就看你有没有这个本事了！',1,1) 
                            G.call('all_over') 
                            G.call('add_time',2)
                            G.call('call_battle',0,10,3,200,160,0,0,0,0,0)
                            o_battle_结果 = G.call('get_battle') 
                            if o_battle_结果  == 1 then
                                G.call("talk",'',160,'   算你厉害！只要你不把我们【武当派】赶尽杀绝，我愿意奉你为【太上掌门】！这本【太极劲】秘籍，你拿去吧。',1,1) 
                                if G.call('get_item',141) == 0 then 
                                    G.call('add_item',141,1)
                                end 
                                G.call('set_story',22,1)
                                G.call('add_point',15,-10)
                                G.call('add_point',14,100)
                                G.call('set,note','征服【武当派】')
                                G.QueryName(0x10030001)[tostring(9)] = '武当派太上掌门'
                                o_tsbd.进度列表[3].完成 = 1 
                                G.call('all_over') 
              
                                G.call('goto_map',1) 
                            else
                                G.call('gameover')
                            end 
                        else
                            G.call('gameover')
                        end

                    end
                elseif int_选项 == 4 then 
                    G.call('all_over') 
  
                    G.call('goto_map',1)
                end 
            end     
        end
    end

end
t['门派-少林寺']=function()
    local o_tsbd = G.QueryName(0x1017000c)
    local int_mo = (239-224)*6+265
    if G.call('get_story',21) == 1 then 
        G.call('dark')
        G.call('goto_map',9)
        if G.call('get_point',164) ~= G.call('get_year') *12 + G.call('get_month') then 
           G.call('set_point',164, G.call('get_year') *12 + G.call('get_month') )
           local money = math.random(500)
           G.call('add_money',money)
           G.call("talk",'',175,'   启禀【太上掌门】，这是本月给您的“孝敬”，一共'..tostring(money)..'两银子，请您收好。',2,1) 
        else
            G.call("talk",'',175,'   参见【太上掌门】。',2,1) 
        end 
        G.call('all_over')
        G.call('goto_map',1)    
    else
        if G.call('get_point',8) == 2 then   
            G.call("talk",'',239,'   原来是师兄回来了，您可以直接去面见掌门。',2,1) 
            G.call('all_over') 
            G.call('dark')
            G.call('goto_map',9)
            G.call("talk",'',175,'   '..G.call('get_fullname')..'你回来啦，有什么事情吗？。',2,1) 
            local int_选项 = 0 
            while int_选项 == 0 do
                int_选项 = G.call("menu",'',0,'',0,0,{"1,和掌门切磋武功【单挑】","2,兑换【修为点】","3,参悟【金刚伏魔阵】","4,参悟【金刚伏魔圈】","5,我要【征服】这个门派","6,没有事情"},0) 
                if int_选项 == 1 then
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',1,10,1,100,175,0,0,0,0,0)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                        G.call("talk",'',175,'   嗯，比起从前，确实大有长进。',2,1) 
                    else
                        G.call("talk",'',175,'   你的功夫越来越退步了，你这日子到底在干什么呢！',2,1) 
                    end
                    G.call('all_over') 
                    G.call('goto_map',1)
                elseif int_选项 == 3 then 
                    G.call('all_over') 
                    if G.call('get_magic',183) == 0 then 
                        G.call("talk",'',175,'   既然如此，那就要过了本阵才行。',2,1) 
                        G.call("talk",'',0,'   求之不得',0,0)
                        G.call('all_over') 
                        G.call('add_time',2)
                        G.call('call_battle',1,10,3,200,175,94,211,212,213,176)
                        o_battle_结果 = G.call('get_battle') 
                        if o_battle_结果  == 1 then
                            G.call("talk",'',0,'   这阵法也难不到我！',0,0)
                            if G.call('get_magic',183) == 0 then 
                                G.call('learnmagic',183)
                            end 
                        else
                            G.call("talk",'',175,'   看来你还是无法领悟此阵法的精妙之处！',2,1) 
                        end
                    else
                        G.call("talk",'',175,'   你不是已经领悟了【金刚伏魔阵】？',2,1) 
                    end
                    G.call('all_over') 
                    G.call('goto_map',1)
                elseif int_选项 == 4 then 
                    G.call('all_over') 
                    if G.call('get_magic',228) == 0 then 
                        G.call("talk",'',175,'   既然如此，那就觉悟吧！',2,1) 
                        G.call('all_over') 
                        G.call('add_time',2)
                        G.call('call_battle',1,10,1,200,175,94,211,212,213,176)
                        o_battle_结果 = G.call('get_battle') 
                        if o_battle_结果  == 1 then
                            G.call("talk",'',0,'   这【金刚伏魔圈】果然了得！',0,0)
                            if G.call('get_magic',228) == 0 then 
                                G.call('learnmagic',228)
                                G.call('set_magic_lv',228,5)
                                G.call('set_magicexp',228,999)
                            end 
                        else
                            G.call("talk",'',175,'   看来你还是无法领悟此绝招的精妙之处！',2,1) 
                        end
                    else
                        G.call("talk",'',175,'   你不是已经领悟了【金刚伏魔圈】？',2,1) 
                    end
                    G.call('all_over') 
                    G.call('goto_map',1)
                elseif int_选项 == 2 then 
                    G.call('all_over') 
                    G.call("talk",'',175,'   你现在有【'..tostring(G.call('get_point',5))..'点】修为值，每次转化消耗两点修为值。你想转化成什么属性？',2,1) 
                    local int_选项 = 0 
                    while true  do
                        int_选项 = G.call("menu",'',0,'',0,0,{"1,转化生命内力【生命内力各加120】","2,转化为搏击属性【搏击+3】","3,转化为拆招属性【拆招+3】","4,没有事情"},0) 
                        local int_难度 = G.QueryName(0x10160000 +G.call('get_point',143)).难度
                        local int_点数 = 100
                        if int_难度 == 1 then 
                            int_点数 = 100
                        elseif int_难度 == 2 then 
                            int_点数 = 120
                        elseif int_难度 == 3 then 
                            int_点数 = 150
                        end
                        if int_选项 == 1 then
                            if G.call('get_point',45) >= 50000 and G.call('get_point',47) >= 50000 then 
                                G.call("talk",'',175,'    已经不需要再提升了',2,1)
                            else
                                if G.call('get_point',5) >= 2  then 
                                    G.call('add_point',45,120)
                                    G.call('add_point',47,120)
                                    G.call('add_point',5,-2)
                                else
                                    G.call("talk",'',175,'   还要继续修炼啊',2,1) 
                                end 
                            end
                            G.call("talk",'',175,'   你现在有【'..tostring(G.call('get_point',5))..'点】修为值，每次转化消耗两点修为值。你想转化成什么属性？',2,1)
                        elseif int_选项 == 2 then
                            if G.call('get_point',29) >= int_点数 then 
                                G.call("talk",'',175,'   搏击已经达到最大值',2,1) 
                            else
                                if G.call('get_point',5) >= 2  then 
                                    G.call('add_point',29,3)
                                    G.call('add_point',5,-2)
                                else
                                    G.call("talk",'',175,'   还要继续修炼啊',2,1) 
                                end 
                            end
                            G.call("talk",'',175,'   你现在有【'..tostring(G.call('get_point',5))..'点】修为值，每次转化消耗两点修为值。你想转化成什么属性？',2,1) 
                        elseif int_选项 == 3 then
                            if G.call('get_point',28) >= int_点数 then 
                                G.call("talk",'',175,'   拆招已经达到最大值',2,1) 
                            else
                                if G.call('get_point',5) >= 2 then 
                                    G.call('add_point',28,3)
                                    G.call('add_point',5,-2)
                                else
                                    G.call("talk",'',175,'   还要继续修炼啊',2,1) 
                                end 
                            end
                            G.call("talk",'',175,'   你现在有【'..tostring(G.call('get_point',5))..'点】修为值，每次转化消耗两点修为值。你想转化成什么属性？',2,1) 
                        elseif int_选项 == 4 then  
                            G.call('all_over') 
                            G.call('goto_map',1)
                            break 
                        end
                        
                    end
                elseif int_选项 == 5 then
                    G.call("talk",'',175,'   你难道是其他门派派来的奸细？想要【征服】我的门派就看你有没有本事了！',1,1) 
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',0,10,3,200,175,0,0,0,0,0)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                        G.call("talk",'',175,'   算你厉害！只要你不把我们【少林派】赶尽杀绝，我愿意奉你为【太上掌门】！这本【少林绝技】秘籍，你拿去吧。',1,1) 
                        if G.call('get_item',115) == 0 then 
                            G.call('add_item',115,1) 
                        end
                        G.call('set_story',21,1)
                        G.call('add_point',15,-10)
                        G.call('add_point',14,100)
                        G.call('set,note','征服【少林寺】')
                        G.QueryName(0x10030001)[tostring(9)] = '少林寺太上掌门'
                        o_tsbd.进度列表[2].完成 = 1 
                        G.call('all_over') 
      
                        G.call('goto_map',1) 
                    else
                        G.call('gameover')
                    end 
                elseif int_选项 == 6 then 
                    G.call('all_over') 
                    G.call('goto_map',1)
                end 
            end 
        else
            G.call("talk",'门派弟子',239,'   请问有何贵干',2,1) 
            local int_选项 = 0 
            while int_选项 == 0 do
                int_选项 = G.call("menu",'',0,'',0,0,{"1,想跟你们切磋武功","2,我要【征服】这个门派","3,(乔装混进少林寺)","4,没有事情"},0) 
                if int_选项 == 1 then
                    G.call("talk",'门派弟子',239,'   咱们较量一下，点到为止！',1,1) 
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',1,10,3,100,int_mo,int_mo+1,int_mo+2,int_mo+3,int_mo+4,int_mo+5)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                        G.call("talk",'门派弟子',239,'   公子真是好本事！',1,1) 
                    else
                        G.call("talk",'门派弟子',239,'   承让承让，我们还要看门，改日再会！',1,1) 
                    end
                    G.call('all_over') 
  
                    G.call('goto_map',1) 
                elseif int_选项 == 2 then 
                    G.call("talk",'门派弟子',239,'   好大的口气，就让我等来领教领教。',1,1) 
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',0,10,3,100,110,95,176,91,239,int_mo)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                        G.call("talk",'门派弟子',239,'   你给我等着，我去请掌门来教训你！',1,1) 
                        G.call('all_over') 
                        G.call('dark')
                        G.call("talk",'',175,'   好狂妄的小子！就看你有没有这个本事了！',1,1) 
                        G.call('all_over') 
                        G.call('add_time',2)
                        G.call('call_battle',0,10,3,200,175,0,0,0,0,0)
                        o_battle_结果 = G.call('get_battle') 
                        if o_battle_结果  == 1 then
                            G.call("talk",'',175,'   算你厉害！只要你不把我们【少林派】赶尽杀绝，我愿意奉你为【太上掌门】！这本【少林绝技】秘籍，你拿去吧。',1,1) 
                            if G.call('get_item',115) == 0 then 
                                G.call('add_item',115,1) 
                            end
                            G.call('set_story',21,1)
                            G.call('add_point',15,-10)
                            G.call('add_point',14,100)
                            G.call('set,note','征服【少林寺】')
                            G.QueryName(0x10030001)[tostring(9)] = '少林寺太上掌门'
                            o_tsbd.进度列表[2].完成 = 1 
                            G.call('all_over') 
          
                            G.call('goto_map',1) 
                        else
                            G.call('gameover')
                        end  
                    else
                        G.call('gameover')
                    end
                elseif int_选项 == 3 then 
                    if G.call('get_point',195) == 0x100b0057 then 
                        G.call('all_over') 
                        G.call('dark')
                        G.call("talk",'',175,'   好狂妄的小子！就看你有没有这个本事了！',1,1)  
                        G.call('all_over') 
                        G.call('add_time',2)
                        G.call('call_battle',0,10,3,200,175,0,0,0,0,0)
                        o_battle_结果 = G.call('get_battle') 
                        if o_battle_结果  == 1 then
                            G.call("talk",'',175,'   算你厉害！只要你不把我们【少林派】赶尽杀绝，我愿意奉你为【太上掌门】！这本【少林绝技】秘籍，你拿去吧。',1,1) 
                            if G.call('get_item',115) == 0 then 
                                G.call('add_item',115,1) 
                            end
                            G.call('set_story',21,1)
                            G.call('add_point',15,-10)
                            G.call('add_point',14,100)
                            G.call('set,note','征服【少林寺】')
                            G.QueryName(0x10030001)[tostring(9)] = '少林寺太上掌门'
                            o_tsbd.进度列表[2].完成 = 1 
                            G.call('all_over') 
          
                            G.call('goto_map',1) 
                        else
                            G.call('gameover')
                        end 
                    elseif G.call('get_point',195) == 0x100b005a then 
                        G.call('all_over') 
                        G.call('dark')
                        G.call('add_hour',3)
                        G.call('藏经阁寻宝')
                        G.call('all_over') 
                        G.call('goto_map',1)
                    else
                        G.call("talk",'门派弟子',239,'   哪里来的狂徒，敢冒充我们，莫非想要对掌门不利？拿命来！',1,1) 
                        G.call('all_over') 
                        G.call('add_time',2)
                        G.call('call_battle',0,10,3,100,110,95,176,91,239,int_mo)
                        o_battle_结果 = G.call('get_battle') 
                        if o_battle_结果  == 1 then
                            G.call("talk",'门派弟子',239,'   你给我等着，我去请掌门来教训你！',1,1) 
                            G.call('all_over') 
                            G.call('dark')
                            G.call("talk",'',175,'   好狂妄的小子！就看你有没有这个本事了！',1,1) 
                            G.call('all_over') 
                            G.call('add_time',2)
                            G.call('call_battle',0,10,3,200,175,0,0,0,0,0)
                            o_battle_结果 = G.call('get_battle') 
                            if o_battle_结果  == 1 then
                                G.call("talk",'',175,'   算你厉害！只要你不把我们【少林派】赶尽杀绝，我愿意奉你为【太上掌门】！这本【少林九阳功】秘籍，你拿去吧。',1,1) 
                                if G.call('get_item',124) == 0 then 
                                    G.call('add_item',124,1)
                                end 
                                G.call('set_story',21,1)
                                G.call('add_point',15,-10)
                                G.call('add_point',14,100)
                                G.call('set,note','征服【少林寺】')
                                G.QueryName(0x10030001)[tostring(9)] = '少林寺太上掌门'
                                o_tsbd.进度列表[2].完成 = 1 
                                G.call('all_over') 
              
                                G.call('goto_map',1) 
                            else
                                G.call('gameover')
                            end  
                        else
                            G.call('gameover')
                        end

                    end
                elseif int_选项 == 4 then 
                    G.call('all_over') 
  
                    G.call('goto_map',1)
                end 
            end     
        end
    end

end
t['藏经阁寻宝']=function()
   G.call('mapoff')
   G.Play(0x4901002d, 1,true,1) 
   local item1 = {239,240,222,223,224}
   local item2 = {2,23,24,26,27}
   local item3 = {128,115}
   local item4 = 249 
   local a = math.random(10)
   local b = math.random(11)
   local o_xbdr = G.QueryName(0x10170011)
   G.call('xunbao',1)
   G.call("talk",'',0,'   这藏经阁不知道会有什么。。。。',0,0) 
   G.call('all_over') 
   if a <= 5 then 
        if math.random(100) > G.call('get_point',19) then 
            G.call('xunbao_off')
            G.call('dark')
            G.call('xunbao',8)
            G.call("talk",'',94,'   放下才得解脱。老衲请'..G.QueryName(0x10030001)[tostring(1)]..'施主不要执着太深。',1,1) 
            local int_选项 = 0 
            while int_选项 == 0 do
                int_选项 = G.call("menu",'',0,'',0,0,{"1,晚辈知错了，这便物归原主","2,我想来便来，想走便走，谁能拦我！"},0) 
                if int_选项 == 1 then
                elseif int_选项 == 2 then 
                    G.call('all_over') 
                    G.call('call_battle',0,17,1,100,94,0,0,0,0,0)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                        G.call("talk",'',0,'   "区区一个藏经阁还想困住我吗？这少林寺看来也没什么能人了，哇哈哈哈哈',0,0)
                        if math.random(100) > 90 and G.misc().大还丹 ~= 1 then 
                            G.call('add_item',item1[5],math.random(1,5))
                            G.misc().大还丹 = 1
                        else
                            G.call('add_item',item1[math.random(4)],1)
                        end 
                        if math.random(100) > 30 then 
                            if G.call('get_item',item2[1]) == 0 then 
                                 G.call('add_item',item2[1],1)
                            end 
                        else
                            local c = math.random(2,5)
                            if G.call('get_item',item2[c]) == 0 then 
                               G.call('add_item',item2[c],1)
                            end
                        end          
                        if math.random(100) > 90 then 
                            local d = math.random(2)
                            if G.call('get_item',item3[d]) == 0 then 
                                G.call('add_item',item3[d],1)
                            end 
                        end 
                        if math.random(100) > 50 then 
                            if G.call('get_item',item4) == 0 then 
                                G.call('add_item',item4,1)
                            end
                        end 
                    else
                        G.call("talk",'',0,'   "这里的家伙真不好惹，好在我有【主角不死印法】，不然就葬在此处了。东西不要了，逃命要紧！',0,0)
                    end
                end
            end
        else
            if math.random(4) > 1 then 
                G.call('xunbao_off')
                G.call('dark')
                G.call('xunbao',9)
                G.call("talk",'',247,'   本姑娘在此等候多时了，留下你所盗赃物还有身上所有银两，否则今天叫你插翅也难离开这藏经阁！',1,1) 
                local int_选项 = 0 
                while int_选项 == 0 do
                    int_选项 = G.call("menu",'',0,'',0,0,{"1,听人劝说吃饱饭，叫我交公我就交咯","2,屁，揍你个跑龙套的"},0) 
                    if int_选项 == 1 then
                        G.call('add_money',-G.call('get_money'))
                    elseif int_选项 == 2 then 
                        G.call('xunbao',10)
                        G.call("talk",'蒙面侠',204,'   大胆狂徒！你把天捅个窟窿我都不管，但是胆敢欺负张小肉同学，我就不答应！',1,1) 
                        G.call('all_over') 
                        G.call('call_battle',0,17,1,200,204,247,0,0,0,0)
                        o_battle_结果 = G.call('get_battle') 
                        if o_battle_结果  == 1 then
                            G.call('xunbao',7)
                            G.call("talk",'',0,'   "区区一个藏经阁还想困住我吗？这少林寺看来也没什么能人了，哇哈哈哈哈',0,0)
                            if math.random(100) > 90 and G.misc().大还丹 ~= 1 then 
                                G.call('add_item',item1[5],math.random(1,5))
                                G.misc().大还丹 = 1
                            else
                                G.call('add_item',item1[math.random(4)],1)
                            end 
                            if math.random(100) > 30 then 
                                if G.call('get_item',item2[1]) == 0 then 
                                     G.call('add_item',item2[1],1)
                                end 
                            else
                                local c = math.random(2,5)
                                if G.call('get_item',item2[c]) == 0 then 
                                   G.call('add_item',item2[c],1)
                                end
                            end          
                            if math.random(100) > 90 then 
                                local d = math.random(2)
                                if G.call('get_item',item3[d]) == 0 then 
                                    G.call('add_item',item3[d],1)
                                end 
                            end 
                            if math.random(100) > 50 then 
                                if G.call('get_item',item4) == 0 then 
                                    G.call('add_item',item4,1)
                                end
                            end     
                        else
                            G.call("talk",'',0,'   "这里的家伙真不好惹，好在我有【主角不死印法】，不然就葬在此处了。东西不要了，逃命要紧！',0,0)
                            G.call('add_money',-G.call('get_money'))
                        end
                    end
                end
            else
                G.call('xunbao_off')
                G.call('dark')
                G.call('xunbao',6)
                G.call("talk",'',0,'   "看来传说中的少林藏经阁的守卫也不过如此嘛，这么轻易就叫我混到了顶层。这里所藏定是非凡之物，待我好好看来。',0,0) 
                o_xbdr.进度列表[1].当前进度 =  o_xbdr.进度列表[1].当前进度 + 1
                G.call('set_newpoint',80,G.call('get_newpoint',80)- 1   )
                if b == 1 then 
                    if G.call('get_point',135) == 1 and G.call('get_point',134) == 1 then 
                        G.call("talk",'',0,'   "哇！原来这就是少林至宝《易筋经》！多亏我懂得梵文，不然可就当一般经书给扔掉了',0,0) 
                        if G.call('get_item',94) == 0 then 
                            G.call('add_item',94,1)
                        end
                    else
                        G.call("talk",'',0,'   "这是什么稀奇古怪的文字？！忙活一晚上翻来翻去就见到这些古怪的经文，可惜对我却是百无一用。',0,0) 
                    end
                elseif b == 4 then 
                    if G.call('get_point',135) == 1 and G.call('get_point',136) == 1 then 
                        G.call("talk",'',0,'   ""嘿！竟然有人把绝世神功《九阳真经》记载在《楞伽经》每段文字的夹缝内！多亏我懂得梵文，与神功失之交臂了。',0,0) 
                        if G.call('get_item',97) == 0 then 
                            G.call('add_item',97,1)
                        end
                    else
                        G.call("talk",'',0,'   "这是什么稀奇古怪的文字？！忙活一晚上翻来翻去就见到这些古怪的经文，可惜对我却是百无一用。',0,0) 
                    end
                elseif b == 11 then 
                    G.call("talk",'',0,'   "这是什么稀奇古怪的文字？！忙活一晚上翻来翻去就见到这些古怪的经文，可惜对我却是百无一用。',0,0) 
                end 
                G.call('all_over') 
                G.call('xunbao_off')
                G.call('dark')
                G.call('xunbao',7)
                G.call("talk",'',0,'   "时候不早，我得早些离开，免得被人发现可就大大不妙。这些没用的经书带着也是累赘，还是留它在这里吧，有用的带走也就够了。',0,0) 
                if math.random(100) > 90 and G.misc().大还丹 ~= 1 then 
                    G.call('add_item',item1[5],math.random(1,5))
                    G.misc().大还丹 = 1
                else
                    G.call('add_item',item1[math.random(4)],1)
                end 
                if math.random(100) > 30 then 
                    if G.call('get_item',item2[1]) == 0 then 
                        G.call('add_item',item2[1],1)
                    end 
                else
                    local c = math.random(2,5)
                    if G.call('get_item',item2[c]) == 0 then 
                        G.call('add_item',item2[c],1)
                    end
                end          
                if math.random(100) > 90 then 
                    local d = math.random(2)
                    if G.call('get_item',item3[d]) == 0 then 
                        G.call('add_item',item3[d],1)
                    end 
                end 
                if math.random(100) > 50 then 
                    if G.call('get_item',item4) == 0 then 
                        G.call('add_item',item4,1)
                    end
                end 
            end
        end
    elseif a == 10 then 
        G.call('xunbao_off')
        G.call('dark')
        G.call('xunbao',6)
        G.call("talk",'',0,'   "看来传说中的少林藏经阁的守卫也不过如此嘛，这么轻易就叫我混到了顶层。这里所藏定是非凡之物，待我好好看来。',0,0) 
        o_xbdr.进度列表[1].当前进度 =  o_xbdr.进度列表[1].当前进度 + 1
        G.call('set_newpoint',80,G.call('get_newpoint',80)- 1   )
        if b == 1 then 
            if G.call('get_point',135) == 1 and G.call('get_point',134) == 1 then 
                G.call("talk",'',0,'   "哇！原来这就是少林至宝《易筋经》！多亏我懂得梵文，不然可就当一般经书给扔掉了',0,0) 
                if G.call('get_item',94) == 0 then 
                    G.call('add_item',94,1)
                end
            else
                G.call("talk",'',0,'   "这是什么稀奇古怪的文字？！忙活一晚上翻来翻去就见到这些古怪的经文，可惜对我却是百无一用。',0,0) 
            end
        elseif b == 4 then 
            if G.call('get_point',135) == 1 and G.call('get_point',136) == 1 then 
                G.call("talk",'',0,'   ""嘿！竟然有人把绝世神功《九阳真经》记载在《楞伽经》每段文字的夹缝内！多亏我懂得梵文，与神功失之交臂了。',0,0) 
                if G.call('get_item',97) == 0 then 
                    G.call('add_item',97,1)
                end
            else
                G.call("talk",'',0,'   "这是什么稀奇古怪的文字？！忙活一晚上翻来翻去就见到这些古怪的经文，可惜对我却是百无一用。',0,0) 
            end
        elseif b == 11 then 
            G.call("talk",'',0,'   "这是什么稀奇古怪的文字？！忙活一晚上翻来翻去就见到这些古怪的经文，可惜对我却是百无一用。',0,0) 
        end 
        G.call('all_over') 
        G.call('xunbao_off')
        G.call('dark')
        G.call('xunbao',7)
        G.call("talk",'',0,'   "时候不早，我得早些离开，免得被人发现可就大大不妙。这些没用的经书带着也是累赘，还是留它在这里吧，有用的带走也就够了。',0,0) 
        if math.random(100) > 90 and G.misc().大还丹 ~= 1 then 
            G.call('add_item',item1[5],math.random(1,5))
            G.misc().大还丹 = 1
        else
            G.call('add_item',item1[math.random(4)],1)
        end 
        if math.random(100) > 30 then 
            if G.call('get_item',item2[1]) == 0 then 
                    G.call('add_item',item2[1],1)
            end 
        else
            local c = math.random(2,5)
            if G.call('get_item',item2[c]) == 0 then 
                G.call('add_item',item2[c],1)
            end
        end          
        if math.random(100) > 90 then 
            local d = math.random(2)
            if G.call('get_item',item3[d]) == 0 then 
                G.call('add_item',item3[d],1)
            end 
        end 
        if math.random(100) > 50 then 
            if G.call('get_item',item4) == 0 then 
                G.call('add_item',item4,1)
            end
        end 
    else
        G.call('xunbao_off')
        G.call('dark')
        G.call('xunbao',9)
        G.call("talk",'',247,'   本姑娘在此等候多时了，留下你所盗赃物还有身上所有银两，否则今天叫你插翅也难离开这藏经阁！',1,1) 
        local int_选项 = 0 
        while int_选项 == 0 do
            int_选项 = G.call("menu",'',0,'',0,0,{"1,听人劝说吃饱饭，叫我交公我就交咯","2,屁，揍你个跑龙套的"},0) 
            if int_选项 == 1 then
                G.call('add_money',-G.call('get_money'))
            elseif int_选项 == 2 then 
                G.call('xunbao',10)
                G.call("talk",'蒙面侠',204,'   大胆狂徒！你把天捅个窟窿我都不管，但是胆敢欺负张小肉同学，我就不答应！',1,1) 
                G.call('all_over') 
                G.call('call_battle',0,17,1,200,204,247,0,0,0,0)
                o_battle_结果 = G.call('get_battle') 
                if o_battle_结果  == 1 then
                    G.call('xunbao',7)
                    G.call("talk",'',0,'   "区区一个藏经阁还想困住我吗？这少林寺看来也没什么能人了，哇哈哈哈哈',0,0)
                    if math.random(100) > 90 and G.misc().大还丹 ~= 1 then 
                        G.call('add_item',item1[5],math.random(1,5))
                        G.misc().大还丹 = 1
                    else
                        G.call('add_item',item1[math.random(4)],1)
                    end 
                    if math.random(100) > 30 then 
                        if G.call('get_item',item2[1]) == 0 then 
                             G.call('add_item',item2[1],1)
                        end 
                    else
                        local c = math.random(2,5)
                        if G.call('get_item',item2[c]) == 0 then 
                           G.call('add_item',item2[c],1)
                        end
                    end          
                    if math.random(100) > 90 then 
                        local d = math.random(2)
                        if G.call('get_item',item3[d]) == 0 then 
                            G.call('add_item',item3[d],1)
                        end 
                    end 
                    if math.random(100) > 50 then 
                        if G.call('get_item',item4) == 0 then 
                            G.call('add_item',item4,1)
                        end
                    end 
                    
                else
                    G.call("talk",'',0,'   "这里的家伙真不好惹，好在我有【主角不死印法】，不然就葬在此处了。东西不要了，逃命要紧！',0,0)
                    G.call('add_money',-G.call('get_money'))
                end
            end
        end
    end
    if o_xbdr.进度列表[1].当前进度 >= 100 and o_xbdr.完成 == 0 then
        o_xbdr.进度列表[1].完成 = 1
        o_xbdr.完成 = 1
        G.wait_time(250)
        G.call('notice1','完成成就【寻宝达人】')
    end    
    G.call('all_over') 
    G.call('xunbao_off')
    G.call('dark')
end 
t['门派-华山派']=function()
    local o_tsbd = G.QueryName(0x1017000c)
    local int_mo = (233-224)*6+265
    if G.call('get_story',32) == 1 then 
        G.call('dark')
        G.call('goto_map',8)
        if G.call('get_point',175) ~= G.call('get_year') *12 + G.call('get_month') then 
           G.call('set_point',175, G.call('get_year') *12 + G.call('get_month') )
           local money = math.random(500)
           G.call('add_money',money)
           G.call("talk",'',191,'   启禀【太上掌门】，这是本月给您的“孝敬”，一共'..tostring(money)..'两银子，请您收好。',2,1) 
        else
            G.call("talk",'',191,'   参见【太上掌门】。',2,1) 
        end 
        G.call('all_over')
        G.call('goto_map',1)    
    else
        if G.call('get_point',8) == 3 then   
            G.call("talk",'',233,'   原来是师兄回来了，您可以直接去面见掌门。',2,1) 
            G.call('all_over') 
            G.call('dark')
            G.call('goto_map',8)
            G.call("talk",'',191,'   '..G.call('get_fullname')..'你回来啦，有什么事情吗？',2,1) 
            local int_选项 = 0 
            while int_选项 == 0 do
                int_选项 = G.call("menu",'',0,'',0,0,{"1,和掌门切磋武功【单挑】","2,兑换【修为点】","3,参悟【五岳剑阵】","4,我要【征服】这个门派","5,没有事情"},0) 
                if int_选项 == 1 then
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',1,10,1,100,191,0,0,0,0,0)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                        G.call("talk",'',191,'   嗯，比起从前，确实大有长进。',2,1) 
                    else
                        G.call("talk",'',191,'   你的功夫越来越退步了，你这日子到底在干什么呢！',2,1) 
                    end
                    G.call('all_over') 
                    G.call('goto_map',1)
                elseif int_选项 == 3 then
                    G.call('all_over') 
                    if G.call('get_magic',60) == 10 then
                        if G.call('get_magic',219) == 0 then 
                            G.call("talk",'',191,'   既然如此，那就要过了本阵真才行。',2,1) 
                            G.call("talk",'',0,'   求之不得',0,0)
                            G.call('all_over') 
                            G.call('add_time',2)
                            G.call('call_battle',1,10,3,200,191,210,111,112,72,173)
                            o_battle_结果 = G.call('get_battle') 
                            if o_battle_结果  == 1 then
                                G.call("talk",'',0,'   这阵法也难不到我！',0,0)
                                if G.call('get_magic',219) == 0 then 
                                    G.call('learnmagic',219)
                                end 
                            else
                                G.call("talk",'',191,'   看来你还是无法领悟此阵法的精妙之处！',2,1) 
                            end
                        else
                            G.call("talk",'',191,'   你不是已经领悟了【五岳剑阵】吗？',2,1) 
                        end
                        G.call('all_over')    
                    else
                        G.call("talk",'',191,'   你的【五岳剑法】都没练好，这剑阵对你来说还是太高深！',2,1) 
                        G.call('all_over') 
                    end
                    G.call('goto_map',1) 
                elseif int_选项 == 2 then 
                    G.call('all_over') 
                    G.call("talk",'',191,'   你现在有【'..tostring(G.call('get_point',5))..'点】修为值，每次转化消耗两点修为值。你想转化成什么属性？',2,1) 
                    local int_选项 = 0 
                    while true  do
                        int_选项 = G.call("menu",'',0,'',0,0,{"1,转化生命内力【生命内力各加120】","2,转化为搏击属性【搏击+3】","3,转化为拆招属性【拆招+3】","4,没有事情"},0) 
                        local int_难度 = G.QueryName(0x10160000 +G.call('get_point',143)).难度
                        local int_点数 = 100
                        if int_难度 == 1 then 
                            int_点数 = 100
                        elseif int_难度 == 2 then 
                            int_点数 = 120
                        elseif int_难度 == 3 then 
                            int_点数 = 150
                        end
                        if int_选项 == 1 then
                            if G.call('get_point',45) >= 50000 and G.call('get_point',47) >= 50000 then 
                                G.call("talk",'',191,'    已经不需要再提升了',2,1)
                            else
                                if G.call('get_point',5) >= 2  then 
                                    G.call('add_point',45,120)
                                    G.call('add_point',47,120)
                                    G.call('add_point',5,-2)
                                else
                                    G.call("talk",'',191,'   还要继续修炼啊',2,1) 
                                end 
                            end
                            G.call("talk",'',191,'   你现在有【'..tostring(G.call('get_point',5))..'点】修为值，每次转化消耗两点修为值。你想转化成什么属性？',2,1)
                        elseif int_选项 == 2 then
                            if G.call('get_point',29) >=  int_点数 then 
                                G.call("talk",'',191,'   搏击已经达到最大值',2,1) 
                            else
                                if G.call('get_point',5) >= 2  then 
                                    G.call('add_point',29,3)
                                    G.call('add_point',5,-2)
                                else
                                    G.call("talk",'',191,'   还要继续修炼啊',2,1) 
                                end 
                            end
                            G.call("talk",'',191,'   你现在有【'..tostring(G.call('get_point',5))..'点】修为值，每次转化消耗两点修为值。你想转化成什么属性？',2,1) 
                        elseif int_选项 == 3 then
                            if G.call('get_point',28) >=  int_点数 then 
                                G.call("talk",'',191,'   拆招已经达到最大值',2,1) 
                            else
                                if G.call('get_point',5) >= 2  then 
                                    G.call('add_point',28,3)
                                    G.call('add_point',5,-2)
                                else
                                    G.call("talk",'',191,'   还要继续修炼啊',2,1) 
                                end 
                            end
                            G.call("talk",'',191,'   你现在有【'..tostring(G.call('get_point',5))..'点】修为值，每次转化消耗两点修为值。你想转化成什么属性？',2,1) 
                        elseif int_选项 == 4 then  
                            G.call('all_over') 
                            G.call('goto_map',1)
                            break 
                        end
                        
                    end
                elseif int_选项 == 4 then
                    G.call("talk",'',191,'   你难道是其他门派派来的奸细？想要【征服】我的门派就看你有没有本事了！',1,1) 
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',0,10,3,200,191,0,0,0,0,0)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                        G.call("talk",'',191,'   算你厉害！只要你不把我们【华山派】赶尽杀绝，我愿意奉你为【太上掌门】！这本【紫霞神功】秘籍，你拿去吧。',1,1) 
                        if G.call('get_item',95) == 0 then 
                            G.call('add_item',95,1)
                        end 
                        G.call('set_story',32,1)
                        G.call('add_point',15,-10)
                        G.call('add_point',14,100)
                        G.call('set,note','征服【华山派】')
                        G.QueryName(0x10030001)[tostring(9)] = '华山派太上掌门'
                        o_tsbd.进度列表[13].完成 = 1 
                        G.call('all_over') 
      
                        G.call('goto_map',1) 
                    else
                        G.call('gameover')
                    end 
                elseif int_选项 == 5 then 
                    G.call('all_over') 
                    G.call('goto_map',1)
                end 
            end 
        else
            G.call("talk",'门派弟子',233,'   请问有何贵干',2,1) 
            local int_选项 = 0 
            while int_选项 == 0 do
                int_选项 = G.call("menu",'',0,'',0,0,{"1,想跟你们切磋武功","2,我要【征服】这个门派","3,(乔装混进直接找掌门)","4,没有事情"},0) 
                if int_选项 == 1 then
                    G.call("talk",'门派弟子',233,'   咱们较量一下，点到为止！',1,1) 
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',1,10,3,100,int_mo,int_mo+1,int_mo+2,int_mo+3,int_mo+4,int_mo+5)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                        G.call("talk",'门派弟子',233,'   公子真是好本事！',1,1) 
                    else
                        G.call("talk",'门派弟子',233,'   承让承让，我们还要看门，改日再会！',1,1) 
                    end
                    G.call('all_over') 
  
                    G.call('goto_map',1) 
                elseif int_选项 == 2 then 
                    G.call("talk",'门派弟子',233,'   好大的口气，就让我等来领教领教。',1,1) 
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',0,10,3,100,112,int_mo+1,int_mo+2,int_mo+3,int_mo+4,int_mo+5)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                        G.call("talk",'门派弟子',233,'   你给我等着，我去请掌门来教训你！',1,1) 
                        G.call('all_over') 
                        G.call('dark')
                        G.call("talk",'',191,'   好狂妄的小子！就看你有没有这个本事了！',1,1) 
                        G.call('all_over') 
                        G.call('add_time',2)
                        G.call('call_battle',0,10,3,200,191,0,0,0,0,0)
                        o_battle_结果 = G.call('get_battle') 
                        if o_battle_结果  == 1 then
                            G.call("talk",'',191,'   算你厉害！只要你不把我们【华山派】赶尽杀绝，我愿意奉你为【太上掌门】！这本【紫霞神功】秘籍，你拿去吧。',1,1) 
                            if G.call('get_item',95) == 0 then 
                                G.call('add_item',95,1)
                            end 
                            G.call('set_story',32,1)
                            G.call('add_point',15,-10)
                            G.call('add_point',14,100)
                            G.call('set,note','征服【华山派】')
                            G.QueryName(0x10030001)[tostring(9)] = '华山派太上掌门'
                            o_tsbd.进度列表[13].完成 = 1 
                            G.call('all_over') 
          
                            G.call('goto_map',1) 
                        else
                            G.call('gameover')
                        end  
                    else
                        G.call('gameover')
                    end
                elseif int_选项 == 3 then 
                    if G.call('get_point',193) == 0x100b0012 then 
                        G.call('all_over') 
                        G.call('dark')
                        G.call("talk",'',191,'   好狂妄的小子！就看你有没有这个本事了！',1,1) 
                        G.call('all_over') 
                        G.call('add_time',2)
                        G.call('call_battle',0,10,3,200,191,0,0,0,0,0)
                        o_battle_结果 = G.call('get_battle') 
                        if o_battle_结果  == 1 then
                            G.call("talk",'',191,'   算你厉害！只要你不把我们【华山派】赶尽杀绝，我愿意奉你为【太上掌门】！这本【紫霞神功】秘籍，你拿去吧。',1,1) 
                            if G.call('get_item',95) == 0 then 
                                G.call('add_item',95,1)
                            end 
                            G.call('set_story',32,1)
                            G.call('add_point',15,-10)
                            G.call('add_point',14,100)
                            G.call('set,note','征服【华山派】')
                            G.QueryName(0x10030001)[tostring(9)] = '华山派太上掌门'
                            o_tsbd.进度列表[13].完成 = 1 
                            G.call('all_over') 
          
                            G.call('goto_map',1) 
                        else
                            G.call('gameover')
                        end  
                    else
                        G.call("talk",'门派弟子',233,'   哪里来的狂徒，敢冒充我们，莫非想要对掌门不利？拿命来！',1,1) 
                        G.call('all_over') 
                        G.call('add_time',2)
                        G.call('call_battle',0,10,3,100,112,int_mo+1,int_mo+2,int_mo+3,int_mo+4,int_mo+5)
                        o_battle_结果 = G.call('get_battle') 
                        if o_battle_结果  == 1 then
                            G.call("talk",'门派弟子',239,'   你给我等着，我去请掌门来教训你！',1,1) 
                            G.call('all_over') 
                            G.call('dark')
                            G.call("talk",'',191,'   好狂妄的小子！就看你有没有这个本事了！',1,1) 
                            G.call('all_over') 
                            G.call('add_time',2)
                            G.call('call_battle',0,10,3,200,191,0,0,0,0,0)
                            o_battle_结果 = G.call('get_battle') 
                            if o_battle_结果  == 1 then
                                G.call("talk",'',191,'   算你厉害！只要你不把我们【华山派】赶尽杀绝，我愿意奉你为【太上掌门】！这本【紫霞神功】秘籍，你拿去吧。',1,1) 
                                if G.call('get_item',95) == 0 then 
                                    G.call('add_item',95,1)
                                end 
                                G.call('set_story',32,1)
                                G.call('add_point',15,-10)
                                G.call('add_point',14,100)
                                G.call('set,note','征服【华山派】')
                                G.QueryName(0x10030001)[tostring(9)] = '华山派太上掌门'
                                o_tsbd.进度列表[13].完成 = 1 
                                G.call('all_over') 
              
                                G.call('goto_map',1) 
                            else
                                G.call('gameover')
                            end  
                        else
                            G.call('gameover')
                        end

                    end
                elseif int_选项 == 4 then 
                    G.call('all_over') 
  
                    G.call('goto_map',1)
                end 
            end     
        end
    end

end
t['门派-峨眉派']=function()
    local o_tsbd = G.QueryName(0x1017000c)
    local int_mo = 373
    if G.call('get_story',23) == 1 then 
        G.call('地图_进入地图','峨眉派',65,48) 
        if G.call('get_point',166) ~= G.call('get_year') *12 + G.call('get_month') then 
           G.call('set_point',166, G.call('get_year') *12 + G.call('get_month') )
           local money = math.random(500)
           G.call('add_money',money)
           G.call("talk",'',61,'   启禀【太上掌门】，这是本月给您的“孝敬”，一共'..tostring(money)..'两银子，请您收好。',2,1) 
        else
            G.call("talk",'',61,'   参见【太上掌门】。',2,1) 
        end 
        G.call('all_over')
        
        G.call('goto_map',1)    
    else
        G.call("talk",'门派弟子',109,'  请问有何贵干？',2,1) 
        local int_选项 = 0 
        while int_选项 == 0 do
            int_选项 = G.call("menu",'',0,'',0,0,{"1,想跟你们切磋武功","2,我要【征服】这个门派","3,没有事情"},0) 
            if int_选项 == 1 then
                G.call("talk",'门派弟子',109,'   咱们较量一下，点到为止！',1,1) 
                G.call('all_over') 
                G.call('add_time',2)
                G.call('call_battle',1,10,3,100,int_mo,int_mo+1,int_mo+2,int_mo+3,int_mo+4,int_mo+5)
                o_battle_结果 = G.call('get_battle') 
                if o_battle_结果  == 1 then
                    G.call("talk",'门派弟子',109,'   公子真是好本事！',1,1) 
                else
                    G.call("talk",'门派弟子',109,'   承让承让，我们还要看门，改日再会！',1,1) 
                end
                G.call('all_over') 
                
                G.call('goto_map',1) 
            elseif int_选项 == 2 then 
                G.call("talk",'门派弟子',109,'   好大的口气，就让我等来领教领教。',1,1) 
                G.call('all_over') 
                G.call('add_time',2)
                G.call('call_battle',0,10,3,200,int_mo,int_mo+1,int_mo+2,int_mo+3,int_mo+4,int_mo+5)
                o_battle_结果 = G.call('get_battle') 
                if o_battle_结果  == 1 then
                    G.call("talk",'门派弟子',109,'   你给我等着，我去请掌门来教训你！',1,1) 
                    G.call('all_over') 
                    --G.call('mapoff')
  
                    G.call('dark')
                   -- G.call('photo',65)
                    G.call("talk",'',61,'   想好狂妄的小子！就看你有没有这个本事了！',1,1) 
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',0,10,3,200,61,109,18,0,0,0)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                        if G.call('team_full') == false then 
                            G.call('join',18)
                            G.call("talk",'',61,'   算你厉害！只要你不把我们【峨嵋派】赶尽杀绝，我愿意奉你为【太上掌门】！我们【峨嵋派】祖传的【倚天剑】我双手奉上,我的爱徒【周芷若】也奉献给少侠，任少侠驱策。',2,1) 
                        else
                            G.call("talk",'',61,'   算你厉害！只要你不把我们【峨嵋派】赶尽杀绝，我愿意奉你为【太上掌门】！我们【峨嵋派】祖传的【倚天剑】我双手奉上。',2,1) 
                        end 
                        if G.call('get_item',29) == 0 then 
                            G.call('add_item',29,1)
                        end 
                        G.call('set_story',23,1)
                        G.call('add_point',15,-10)
                        G.call('add_point',14,100)
                        G.call('set,note','征服【峨眉派】')
                        G.QueryName(0x10030001)[tostring(9)] = '峨眉派太上掌门'
                        o_tsbd.进度列表[4].完成 = 1 
                        G.call('all_over') 
      
                        G.call('goto_map',1) 
                    else
                        G.call('gameover')
                    end 
                else
                    G.call('gameover')
                end
            elseif int_选项 == 3 then 
                G.call('all_over') 
                
                G.call('goto_map',1)
            end
        end
    end 
end 
t['门派-丐帮']=function()  
    local o_tsbd = G.QueryName(0x1017000c)
    local int_mo = (237-224)*6+237
    G.Play(0x49010030, 1,true,1) 
    if G.call('get_story',24) == 1 then 
        G.call('地图_进入地图','丐帮',171,4,1)
        if G.call('get_point',167) ~= G.call('get_year') *12 + G.call('get_month') then 
            G.call('set_point',167, G.call('get_year') *12 + G.call('get_month') )
            local money = math.random(500)
            G.call('add_money',money)
            G.call("talk",'',169,'   启禀【太上掌门】，这是本月给您的“孝敬”，一共'..tostring(money)..'两银子，请您收好。',2,1) 
        else
             G.call("talk",'',169,'   参见【太上掌门】。',2,1) 
        end 
        G.call('all_over')
        G.call('goto_map',1)     
    else
        if G.call('get_point',8) == 9 then   
            G.call("talk",'',173,'   原来是师弟回来了，您可以直接去面见掌门。',2,1) 
            G.call('all_over') 
            G.call('dark')
            G.call('goto_map',73)
            G.call("talk",'',169,'   '..G.call('get_fullname')..'你回来啦，有什么事情吗？。',2,1) 
            local int_选项 = 0 
            while int_选项 == 0 do
                int_选项 = G.call("menu",'',0,'',0,0,{"1,参悟【打狗阵】","2,参悟【天下无狗】","3,兑换【修为点】","4,我要【征服】这个门派","5,没有事情"},0) 
                if int_选项 == 1 then
                    G.call('all_over')
                    if G.call('get_story',57) == 1 then  
                        if G.call('get_magic',184) == 0 then 
                            G.call("talk",'',169,'   既然如此，那就要过了本阵真才行。',2,1) 
                            G.call("talk",'',0,'   求之不得',0,0)
                            G.call('all_over') 
                            G.call('add_time',2)
                            G.call('call_battle',1,10,3,200,169,84,170,171,172,173)
                            o_battle_结果 = G.call('get_battle') 
                            if o_battle_结果  == 1 then
                                G.call("talk",'',0,'   这阵法也难不到我！',0,0)
                                if G.call('get_magic',184) == 0 then 
                                    G.call('learnmagic',184)
                                end 
                            else
                                G.call("talk",'',169,'   看来你还是无法领悟此阵法的精妙之处！',2,1) 
                            end
                        else
                            G.call("talk",'',169,'   你不是已经领悟了【打狗阵】吗？',2,1) 
                        end
                        G.call('all_over') 
                    else
                        G.call("talk",'',169,'   此阵法不到副帮主是不可以参悟的！',2,1) 
                        G.call('all_over') 
                    end
                    G.call('goto_map',1)
                elseif int_选项 == 2 then 
                    G.call('all_over')
                    if G.call('get_magic',233) == 0 then 
                        G.call("talk",'',169,'   既然如此，那就觉悟吧！',2,1) 
                        G.call('all_over') 
                        G.call('add_time',2)
                        G.call('call_battle',1,10,1,200,169,84,170,171,172,173)
                        o_battle_结果 = G.call('get_battle') 
                        if o_battle_结果  == 1 then
                            G.call("talk",'',0,'   这【天下无狗】果然了得！',0,0)
                            if G.call('get_magic',233) == 0 then 
                                G.call('learnmagic',233)
                                G.call('set_magic_lv',233,5)
                                G.call('set_magicexp',233,999)
                            end 
                        else
                            G.call("talk",'',169,'   看来你还是无法领悟此绝招的精妙之处！',2,1) 
                        end
                    else
                        G.call("talk",'',169,'   你不是已经领悟了【天下无狗】吗？',2,1) 
                    end
                    G.call('all_over') 
                    G.call('goto_map',1)
                elseif int_选项 == 3 then 
                    G.call('all_over') 
                    G.call("talk",'',169,'   你现在有【'..tostring(G.call('get_point',5))..'点】修为值，每次转化消耗两点修为值。你想转化成什么属性？',2,1) 
                    local int_选项 = 0 
                    while true  do
                        int_选项 = G.call("menu",'',0,'',0,0,{"1,转化生命内力【生命内力各加120】","2,转化为搏击属性【搏击+3】","3,转化为拆招属性【拆招+3】","4,没有事情"},0) 
                        local int_难度 = G.QueryName(0x10160000 +G.call('get_point',143)).难度
                        local int_点数 = 100
                        if int_难度 == 1 then 
                            int_点数 = 100
                        elseif int_难度 == 2 then 
                            int_点数 = 120
                        elseif int_难度 == 3 then 
                            int_点数 = 150
                        end
                        if int_选项 == 1 then
                            if G.call('get_point',45) >= 50000 and G.call('get_point',47) >= 50000 then 
                                G.call("talk",'',169,'    已经不需要再提升了',2,1)
                            else
                                if G.call('get_point',5) >= 2  then 
                                    G.call('add_point',45,120)
                                    G.call('add_point',47,120)
                                    G.call('add_point',5,-2)
                                else
                                    G.call("talk",'',169,'   还要继续修炼啊',2,1) 
                                end 
                            end
                            G.call("talk",'',169,'   你现在有【'..tostring(G.call('get_point',5))..'点】修为值，每次转化消耗两点修为值。你想转化成什么属性？',2,1)
                        elseif int_选项 == 2 then
                            if G.call('get_point',29) >= int_点数 then 
                                G.call("talk",'',169,'   搏击已经达到最大值',2,1) 
                            else
                                if G.call('get_point',5) >= 2  then 
                                    G.call('add_point',29,3)
                                    G.call('add_point',5,-2)
                                else
                                    G.call("talk",'',169,'   还要继续修炼啊',2,1) 
                                end 
                            end
                            G.call("talk",'',169,'   你现在有【'..tostring(G.call('get_point',5))..'点】修为值，每次转化消耗两点修为值。你想转化成什么属性？',2,1) 
                        elseif int_选项 == 3 then
                            if G.call('get_point',28) >= int_点数 then 
                                G.call("talk",'',169,'   拆招已经达到最大值',2,1) 
                            else
                                if G.call('get_point',5) >= 2  then 
                                    G.call('add_point',28,3)
                                    G.call('add_point',5,-2)
                                else
                                    G.call("talk",'',169,'   还要继续修炼啊',2,1) 
                                end 
                            end
                            G.call("talk",'',169,'   你现在有【'..tostring(G.call('get_point',5))..'点】修为值，每次转化消耗两点修为值。你想转化成什么属性？',2,1) 
                        elseif int_选项 == 4 then  
                            G.call('all_over') 
                            G.call('goto_map',1)
                            break 
                        end
                        
                    end
                elseif int_选项 == 4 then
                    G.call("talk",'',169,'   你难道是其他门派派来的奸细？想要【征服】我的门派就看你有没有本事了！',1,1) 
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',0,10,3,200,169,170,171,172,173,0)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                        G.call("talk",'',169,'   算你厉害！只要你不把我们【丐帮】赶尽杀绝，我愿意奉你为【太上掌门】！我情愿交出本帮至宝【打狗棒】。',2,1) 
                        if G.call('get_item',59) == 0 then 
                             G.call('add_item',59,1)
                        end 
                        G.call('set_story',24,1)
                        G.call('add_point',15,-10)
                        G.call('add_point',14,100)
                        G.call('set,note','征服【丐帮】')
                        G.QueryName(0x10030001)[tostring(9)] = '丐帮太上掌门'
                        o_tsbd.进度列表[5].完成 = 1  
                        G.call('all_over') 
                        G.call('goto_map',1) 
                    else
                        G.call('gameover')
                    end 
                elseif int_选项 == 5 then 
                    G.call('all_over') 
                    G.call('goto_map',1)
                end 
            end 
        else
            G.call("talk",'门派弟子',237,'   请问有何贵干',2,1) 
            local int_选项 = 0 
            while int_选项 == 0 do
                int_选项 = G.call("menu",'',0,'',0,0,{"1,想跟你们切磋武功","2,我要【征服】这个门派","3,(乔装混进直接找掌门)","4,没有事情"},0) 
                if int_选项 == 1 then
                    G.call("talk",'门派弟子',237,'   咱们较量一下，点到为止！',1,1) 
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',1,10,3,100,int_mo,int_mo+1,int_mo+2,int_mo+3,int_mo+4,int_mo+5)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                        G.call("talk",'门派弟子',237,'   公子真是好本事！',1,1) 
                    else
                        G.call("talk",'门派弟子',237,'   承让承让，我们还要看门，改日再会！',1,1) 
                    end
                    G.call('all_over') 
                    
                    G.call('goto_map',1) 
                elseif int_选项 == 2 then 
                    G.call("talk",'门派弟子',237,'   好大的口气，就让我等来领教领教。',1,1) 
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',0,10,3,200,int_mo,int_mo+1,int_mo+2,int_mo+3,int_mo+4,int_mo+5)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                        G.call("talk",'门派弟子',237,'   你给我等着，我去请掌门来教训你！',1,1) 
                        G.call('地图_进入地图','丐帮',4,48) 
                        G.call("talk",'',169,'   好狂妄的小子！就看你有没有这个本事了！',1,1) 
                        G.call('all_over') 
                        G.call('add_time',2)
                        G.call('call_battle',0,10,3,200,169,170,171,172,173,0)
                        o_battle_结果 = G.call('get_battle') 
                        if o_battle_结果  == 1 then
                           G.call("talk",'',169,'   算你厉害！只要你不把我们【丐帮】赶尽杀绝，我愿意奉你为【太上掌门】！我情愿交出本帮至宝【打狗棒】。',2,1) 
                           if G.call('get_item',59) == 0 then 
                                G.call('add_item',59,1)
                            end 
                            G.call('set_story',24,1)
                            G.call('add_point',15,-10)
                            G.call('add_point',14,100)
                            G.call('set,note','征服【丐帮】')
                            G.QueryName(0x10030001)[tostring(9)] = '丐帮太上掌门'
                            o_tsbd.进度列表[5].完成 = 1  
                            G.call('all_over') 
          
                            G.call('goto_map',1) 
                        else
                            G.call('gameover')
                        end 
                    else
                        G.call('gameover')
                    end
                elseif int_选项 == 3 then
                    if G.call('get_point',195) == 0x100b004e then 
                        G.call('all_over') 
                        G.call('dark')
                        G.call("talk",'',169,'   好狂妄的小子！就看你有没有这个本事了！',1,1) 
                        G.call('all_over') 
                        G.call('add_time',2)
                        G.call('call_battle',0,10,3,200,169,170,171,172,173,0)
                        o_battle_结果 = G.call('get_battle') 
                        if o_battle_结果  == 1 then
                            G.call("talk",'',169,'   算你厉害！只要你不把我们【丐帮】赶尽杀绝，我愿意奉你为【太上掌门】！我情愿交出本帮至宝【打狗棒】。',2,1) 
                            if G.call('get_item',59) == 0 then 
                                 G.call('add_item',59,1)
                            end 
                            G.call('set_story',24,1)
                            G.call('add_point',15,-10)
                            G.call('add_point',14,100)
                            G.call('set,note','征服【丐帮】')
                            G.QueryName(0x10030001)[tostring(9)] = '丐帮太上掌门'
                            o_tsbd.进度列表[5].完成 = 1  
                            G.call('all_over') 
                            G.call('goto_map',1) 
                        else
                            G.call('gameover')
                        end 
                    else
                        G.call("talk",'门派弟子',237,'   哪里来的狂徒，敢冒充我们，莫非想要对掌门不利？拿命来！',1,1) 
                        G.call('all_over') 
                        G.call('add_time',2)
                        G.call('call_battle',0,10,3,100,237,173,int_mo+2,int_mo+3,int_mo+4,int_mo+5)
                        o_battle_结果 = G.call('get_battle') 
                        if o_battle_结果  == 1 then
                            G.call("talk",'门派弟子',237,'   你给我等着，我去请掌门来教训你！',1,1) 
                            G.call('all_over') 
                            G.call('dark')
                            G.call("talk",'',169,'   好狂妄的小子！就看你有没有这个本事了！',1,1) 
                            G.call('all_over') 
                            G.call('add_time',2)
                            G.call('call_battle',0,10,3,200,169,170,171,172,173,0)
                            o_battle_结果 = G.call('get_battle') 
                            if o_battle_结果  == 1 then
                                G.call("talk",'',169,'   算你厉害！只要你不把我们【丐帮】赶尽杀绝，我愿意奉你为【太上掌门】！我情愿交出本帮至宝【打狗棒】。',2,1) 
                                if G.call('get_item',59) == 0 then 
                                     G.call('add_item',59,1)
                                end 
                                G.call('set_story',24,1)
                                G.call('add_point',15,-10)
                                G.call('add_point',14,100)
                                G.call('set,note','征服【丐帮】')
                                G.QueryName(0x10030001)[tostring(9)] = '丐帮太上掌门'
                                o_tsbd.进度列表[5].完成 = 1  
                                G.call('all_over') 
                                G.call('goto_map',1) 
                            else
                                G.call('gameover')
                            end 
                        else
                            G.call('gameover')
                        end
                    end
                elseif int_选项 == 4 then 
                    G.call('all_over') 
  
                    G.call('goto_map',1)
                end 
            end     
        end
    end


end 
t['门派-星宿派']=function()
    local o_tsbd = G.QueryName(0x1017000c)
    G.Play(0x49010030, 1,true,1) 
    local int_mo = (240-224)*6+235
    if G.call('get_story',25) == 1 then 
        G.call('地图_进入地图','星宿派',66,48) 
        if G.call('get_point',168) ~= G.call('get_year') *12 + G.call('get_month') then 
           G.call('set_point',168, G.call('get_year') *12 + G.call('get_month') )
           local money = math.random(500)
           G.call('add_money',money)
           G.call("talk",'',116,'   启禀【太上掌门】，这是本月给您的“孝敬”，一共'..tostring(money)..'两银子，请您收好。',2,1) 
        else
            G.call("talk",'',116,'   参见【太上掌门】。',2,1) 
        end 
        G.call('all_over')
        
        G.call('goto_map',1)   
    else
        if G.call('get_point',8) == 10 then   
            G.call("talk",'',41,'   原来是师弟回来了，您可以直接去面见掌门。',2,1) 
            G.call('all_over') 
            G.call('dark')
            G.call('goto_map',77)
            G.call("talk",'',116,'   '..G.call('get_fullname')..'你回来啦，有什么事情吗？。',2,1) 
            local int_选项 = 0 
            while int_选项 == 0 do
                int_选项 = G.call("menu",'',0,'',0,0,{"1,和掌门切磋武功【单挑】","2,兑换【修为点】","3,参悟【极乐逍遥】","4,我要【征服】这个门派","5,没有事情"},0) 
                if int_选项 == 1 then
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',1,19,1,100,116,0,0,0,0,0)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                        G.call("talk",'',116,'   嗯，比起从前，确实大有长进。',2,1) 
                        if G.call('get_magic',224) == 0 then 
                            if  G.misc().星宿弟子 == 1  then 
                                G.call("talk",'',116,'   为师近来研究了【飞星术】就传授与你吧！',2,1)  
                                G.call('learnmagic',224)     
                            else
                                G.call("talk",'',116,'   本门有套【飞星术】，可惜你不是本门大弟子！',2,1)    
                            end    
                        end
                    else
                        G.call("talk",'',116,'   你的功夫越来越退步了，你这日子到底在干什么呢！',2,1) 
                    end
                    G.call('all_over') 
                    G.call('goto_map',1)
                elseif int_选项 == 3 then
                    G.call('all_over') 
                    if G.call('get_magic',232) == 0 then 
                        G.call("talk",'',116,'   要参悟【极乐逍遥】，每次就得准备五毒各99个！',2,1)
                        if G.call('get_item',286) >= 99 and G.call('get_item',291) >= 99 and G.call('get_item',292) >= 99
                        and G.call('get_item',293) >= 99  and G.call('get_item',294) >= 99 then 
                            G.call("talk",'',116,'   好孩子，竟然弄齐了五毒，为了考验你的能力，看你是否能够有这个实力这门绝学，接下来就是你的试炼！',2,1)
                            G.call('add_time',2)
                            G.call('call_battle',1,19,1,200,116,41,387,388,389,0)
                            o_battle_结果 = G.call('get_battle') 
                            if o_battle_结果  == 1 then
                                G.call("talk",'',0,'   这【极乐逍遥】果然了得',0,0) 
                                G.call('learnmagic',232)  
                                G.call('set_magic_lv',232,5)
                                G.call('set_magicexp',232,999)
                            else
                                G.call("talk",'',116,'   实力不够，看来你是没有这个资格',2,1) 
                            end
                        else
                            G.call("talk",'',116,'   等你弄齐了五毒再来吧！',2,1)
                        end
                    else
                        G.call("talk",'',116,'   你不是已经参悟了【极乐逍遥】吗？',2,1)
                    end
                    G.call('all_over') 
                    G.call('goto_map',1)
                elseif int_选项 == 2 then 
                    G.call('all_over') 
                    G.call("talk",'',116,'   你现在有【'..tostring(G.call('get_point',5))..'点】修为值，每次转化消耗两点修为值。你想转化成什么属性？',2,1) 
                    local int_选项 = 0 
                    while true  do
                        int_选项 = G.call("menu",'',0,'',0,0,{"1,转化生命内力【生命内力各加120】","2,转化为搏击属性【搏击+3】","3,转化为拆招属性【拆招+3】","4,没有事情"},0) 
                        local int_难度 = G.QueryName(0x10160000 +G.call('get_point',143)).难度
                        local int_点数 = 100
                        if int_难度 == 1 then 
                            int_点数 = 100
                        elseif int_难度 == 2 then 
                            int_点数 = 120
                        elseif int_难度 == 3 then 
                            int_点数 = 150
                        end
                        if int_选项 == 1 then
                            if G.call('get_point',45) >= 50000 and G.call('get_point',47) >= 50000 then 
                                G.call("talk",'',116,'    已经不需要再提升了',2,1)
                            else
                                if G.call('get_point',5) >= 2  then 
                                    G.call('add_point',45,120)
                                    G.call('add_point',47,120)
                                    G.call('add_point',5,-2)
                                else
                                    G.call("talk",'',116,'   还要继续修炼啊',2,1) 
                                end 
                            end
                            G.call("talk",'',116,'   你现在有【'..tostring(G.call('get_point',5))..'点】修为值，每次转化消耗两点修为值。你想转化成什么属性？',2,1)
                        elseif int_选项 == 2 then
                            if G.call('get_point',29) >= int_点数 then 
                                G.call("talk",'',116,'   搏击已经达到最大值',2,1) 
                            else
                                if G.call('get_point',5) >= 2  then 
                                    G.call('add_point',29,3)
                                    G.call('add_point',5,-2)
                                else
                                    G.call("talk",'',116,'   还要继续修炼啊',2,1) 
                                end 
                            end
                            G.call("talk",'',116,'   你现在有【'..tostring(G.call('get_point',5))..'点】修为值，每次转化消耗两点修为值。你想转化成什么属性？',2,1) 
                        elseif int_选项 == 3 then
                            if G.call('get_point',28) >= int_点数 then 
                                G.call("talk",'',116,'   拆招已经达到最大值',2,1) 
                            else
                                if G.call('get_point',5) >= 2  then 
                                    G.call('add_point',28,3)
                                    G.call('add_point',5,-2)
                                else
                                    G.call("talk",'',116,'   还要继续修炼啊',2,1) 
                                end 
                            end
                            G.call("talk",'',116,'   你现在有【'..tostring(G.call('get_point',5))..'点】修为值，每次转化消耗两点修为值。你想转化成什么属性？',2,1) 
                        elseif int_选项 == 4 then  
                            G.call('all_over') 
                            G.call('goto_map',1)
                            break 
                        end
                        
                    end
                elseif int_选项 == 4 then
                    G.call("talk",'',116,'   你难道是其他门派派来的奸细？想要【征服】我的门派就看你有没有本事了！',1,1) 
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',0,10,3,200,116,41,387,388,389,0)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                        G.call("talk",'',116,'   算你厉害！只要你不把我们【星宿派】赶尽杀绝，我愿意奉你为【太上掌门】！我情愿交出本帮至宝【神木王鼎】。',2,1) 
                       if G.call('get_item',111) == 0 then 
                            G.call('add_item',111,1)
                        end 
                        G.call('set_story',25,1)
                        G.call('add_point',15,-10)
                        G.call('add_point',14,100)
                        G.call('set,note','征服【星宿派】')
                        G.QueryName(0x10030001)[tostring(9)] = '星宿派太上掌门'
                        o_tsbd.进度列表[6].完成 = 1 
                        G.call('all_over') 
                        G.call('goto_map',1) 
                    else
                        G.call('gameover')
                    end 
                elseif int_选项 == 5 then 
                    G.call('all_over') 
                    G.call('goto_map',1)
                end 
            end 
        else
            G.call("talk",'门派弟子',240,'  请问有何贵干？',2,1) 
            local int_选项 = 0 
            while int_选项 == 0 do
                int_选项 = G.call("menu",'',0,'',0,0,{"1,想跟你们切磋武功","2,我要【征服】这个门派","3,没有事情"},0) 
                if int_选项 == 1 then
                    G.call("talk",'门派弟子',240,'   咱们较量一下，点到为止！',1,1) 
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',1,10,3,100,int_mo,int_mo+1,int_mo+2,int_mo+3,int_mo+4,int_mo+5)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                        G.call("talk",'门派弟子',240,'   公子真是好本事！',1,1) 
                    else
                        G.call("talk",'门派弟子',240,'   承让承让，我们还要看门，改日再会！',1,1) 
                    end
                    G.call('all_over') 
                    G.call('goto_map',1) 
                elseif int_选项 == 2 then 
                    G.call("talk",'门派弟子',240,'   好大的口气，就让我等来领教领教。',1,1) 
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',0,10,3,200,int_mo,int_mo+1,int_mo+2,int_mo+3,int_mo+4,int_mo+5)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                        G.call("talk",'门派弟子',240,'   你给我等着，我去请掌门来教训你！',1,1) 
                        G.call('地图_进入地图','星宿派',66,48) 
                        G.call("talk",'',116,'   想【吃掉】我们？就看你有没有这个本事了！',1,1) 
                        G.call('all_over') 
                        G.call('add_time',2)
                        G.call('call_battle',0,10,3,200,116,41,387,388,389,0)
                        o_battle_结果 = G.call('get_battle') 
                        if o_battle_结果  == 1 then
                           G.call("talk",'',116,'   算你厉害！只要你不把我们【星宿派】赶尽杀绝，我愿意奉你为【太上掌门】！我情愿交出本帮至宝【神木王鼎】。',2,1) 
                           if G.call('get_item',111) == 0 then 
                                G.call('add_item',111,1)
                            end 
                            G.call('set_story',25,1)
                            G.call('add_point',15,-10)
                            G.call('add_point',14,100)
                            G.call('set,note','征服【星宿派】')
                            G.QueryName(0x10030001)[tostring(9)] = '星宿派太上掌门'
                            o_tsbd.进度列表[6].完成 = 1 
                            G.call('all_over') 
                            G.call('goto_map',1) 
                        else
                            G.call('gameover')
                        end 
                    else
                        G.call('gameover')
                    end
                elseif int_选项 == 3 then 
                    G.call('all_over')   
                    G.call('goto_map',1)
                end
            end
        end
    end
end 
t['门派-青城派']=function()
    local o_tsbd = G.QueryName(0x1017000c)
    local int_mo = (228-224)*6+235
    if G.call('get_story',26) == 1 then 
        G.call('地图_进入地图','青城派',4,48) 
        if G.call('get_point',169) ~= G.call('get_year') *12 + G.call('get_month') then 
           G.call('set_point',169, G.call('get_year') *12 + G.call('get_month') )
           local money = math.random(500)
           G.call('add_money',money)
           G.call("talk",'',195,'   启禀【太上掌门】，这是本月给您的“孝敬”，一共'..tostring(money)..'两银子，请您收好。',2,1) 
        else
            G.call("talk",'',195,'   参见【太上掌门】。',2,1) 
        end 
        G.call('all_over')  
        G.call('goto_map',1)    
    else
        G.call("talk",'门派弟子',228,'  请问有何贵干？',2,1) 
        local int_选项 = 0 
        while int_选项 == 0 do
            int_选项 = G.call("menu",'',0,'',0,0,{"1,想跟你们切磋武功","2,我要【征服】这个门派","3,没有事情"},0) 
            if int_选项 == 1 then
                G.call("talk",'门派弟子',228,'   咱们较量一下，点到为止！',1,1) 
                G.call('all_over') 
                G.call('add_time',2)
                G.call('call_battle',1,10,3,100,int_mo,int_mo+1,int_mo+2,int_mo+3,int_mo+4,int_mo+5)
                o_battle_结果 = G.call('get_battle') 
                if o_battle_结果  == 1 then
                    G.call("talk",'门派弟子',228,'   公子真是好本事！',1,1) 
                else
                    G.call("talk",'门派弟子',228,'   承让承让，我们还要看门，改日再会！',1,1) 
                end
                G.call('all_over') 
                
                G.call('goto_map',1) 
            elseif int_选项 == 2 then 
                G.call("talk",'门派弟子',228,'   好大的口气，就让我等来领教领教。',1,1) 
                G.call('all_over') 
                G.call('add_time',2)
                G.call('call_battle',0,10,3,200,int_mo,int_mo+1,int_mo+2,int_mo+3,int_mo+4,int_mo+5)
                o_battle_结果 = G.call('get_battle') 
                if o_battle_结果  == 1 then
                    G.call("talk",'门派弟子',228,'   你给我等着，我去请掌门来教训你！',1,1) 
                    G.call('all_over') 
                    G.call('dark')
                    G.call("talk",'',195,'   想【吞】了我们？就看你有没有这个本事了！',1,1) 
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',0,10,3,200,195,0,0,0,0,0)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                       G.call("talk",'',195,'   算你厉害！只要你不把我们【青城派】赶尽杀绝，我愿意奉你为【太上掌门】！。',2,1) 
                        G.call('set_story',26,1)
                        G.call('add_point',15,-10)
                        G.call('add_point',14,100)
                        G.call('set,note','征服【青城派】')
                        G.QueryName(0x10030001)[tostring(9)] = '青城派太上掌门'
                        o_tsbd.进度列表[7].完成 = 1  
                        G.call('all_over') 
      
                        G.call('goto_map',1) 
                    else
                        G.call('gameover')
                    end 
                else
                    G.call('gameover')
                end
            elseif int_选项 == 3 then 
                G.call('all_over') 
                
                G.call('goto_map',1)
            end
        end
    end 
end 
t['门派-天龙寺']=function()
    local o_tsbd = G.QueryName(0x1017000c)
    local int_mo = (239-224)*6+235
    G.Play(0x49010029, 1,true,1) 
    if G.call('get_story',38) == 1 then 
        G.call('地图_进入地图','天龙寺',40,41) 
        if G.call('get_point',170) ~= G.call('get_year') *12 + G.call('get_month') then 
           G.call('set_point',170, G.call('get_year') *12 + G.call('get_month') )
           local money = math.random(500)
           G.call('add_money',money)
           G.call("talk",'',93,'   启禀【太上掌门】，这是本月给您的“孝敬”，一共'..tostring(money)..'两银子，请您收好。',2,1) 
        else
            G.call("talk",'',93,'   参见【太上掌门】。',2,1) 
        end 
        G.call('all_over')
        G.call('goto_map',1)    
    else
        G.call("talk",'门派弟子',239,'  请问有何贵干？',2,1) 
        local int_选项 = 0 
        while int_选项 == 0 do
            int_选项 = G.call("menu",'',0,'',0,0,{"1,想跟你们切磋武功","2,我要【征服】这个门派","3,没有事情"},0) 
            if int_选项 == 1 then
                G.call("talk",'门派弟子',239,'   咱们较量一下，点到为止！',1,1) 
                G.call('all_over') 
                G.call('add_time',2)
                G.call('call_battle',1,10,3,100,int_mo,int_mo+1,int_mo+2,int_mo+3,int_mo+4,int_mo+5)
                o_battle_结果 = G.call('get_battle') 
                if o_battle_结果  == 1 then
                    G.call("talk",'门派弟子',239,'   公子真是好本事！',1,1) 
                else
                    G.call("talk",'门派弟子',239,'   承让承让，我们还要看门，改日再会！',1,1) 
                end
                G.call('all_over') 
                G.call('goto_map',1) 
            elseif int_选项 == 2 then 
                G.call("talk",'门派弟子',239,'   好大的口气，就让我等来领教领教。',1,1) 
                G.call('all_over') 
                G.call('add_time',2)
                G.call('call_battle',0,10,3,200,int_mo,int_mo+1,int_mo+2,int_mo+3,int_mo+4,int_mo+5)
                o_battle_结果 = G.call('get_battle') 
                if o_battle_结果  == 1 then
                    G.call("talk",'门派弟子',239,'   你给我等着，我去请掌门来教训你！',1,1) 
                    G.call('地图_进入地图','天龙寺',40,41) 
                    G.call("talk",'',93,'   施主是来敝寺抢夺《六脉神剑》剑谱的吗？看你有没有这个本事了！',1,1) 
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',0,10,3,200,93,92,105,0,0,0)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                       G.call("talk",'',93,'   阿弥陀佛，施主果然高明。只要你不把我们【天龙寺】赶尽杀绝，我愿意奉你为【太上掌门】！这本【六脉神剑】秘籍，你拿去吧。',2,1) 
                       if G.call('get_item',96) == 0 then 
                            G.call('add_item',96,1)
                        end 
                        G.call('set_story',38,1)
                        G.call('add_point',15,-10)
                        G.call('add_point',14,100)
                        G.call('set,note','征服【天龙寺】')
                        G.QueryName(0x10030001)[tostring(9)] = '天龙寺太上掌门'
                        o_tsbd.进度列表[8].完成 = 1 
                        G.call('all_over') 
      
                        G.call('goto_map',1) 
                    else
                        G.call('gameover')
                    end 
                else
                    G.call('gameover')
                end
            elseif int_选项 == 3 then 
                G.call('all_over') 
                
                G.call('goto_map',1)
            end
        end
    end 
end 
t['门派-昆仑派']=function()
    local o_tsbd = G.QueryName(0x1017000c)
    local int_mo = (228-224)*6+235
    if G.call('get_story',28) == 1 then 
        G.call('地图_进入地图','昆仑派',40,48) 
        if G.call('get_point',171) ~= G.call('get_year') *12 + G.call('get_month') then 
           G.call('set_point',171, G.call('get_year') *12 + G.call('get_month') )
           local money = math.random(500)
           G.call('add_money',money)
           G.call("talk",'',100,'   启禀【太上掌门】，这是本月给您的“孝敬”，一共'..tostring(money)..'两银子，请您收好。',2,1) 
        else
            G.call("talk",'',100,'   参见【太上掌门】。',2,1) 
        end 
        G.call('all_over')
        
        G.call('goto_map',1)    
    else
        G.call("talk",'门派弟子',228,'  请问有何贵干？',2,1) 
        local int_选项 = 0 
        while int_选项 == 0 do
            int_选项 = G.call("menu",'',0,'',0,0,{"1,想跟你们切磋武功","2,我要【征服】这个门派","3,没有事情"},0) 
            if int_选项 == 1 then
                G.call("talk",'门派弟子',228,'   咱们较量一下，点到为止！',1,1) 
                G.call('all_over') 
                G.call('add_time',2)
                G.call('call_battle',1,10,3,100,int_mo,int_mo+1,int_mo+2,int_mo+3,int_mo+4,int_mo+5)
                o_battle_结果 = G.call('get_battle') 
                if o_battle_结果  == 1 then
                    G.call("talk",'门派弟子',228,'   公子真是好本事！',1,1) 
                else
                    G.call("talk",'门派弟子',228,'   承让承让，我们还要看门，改日再会！',1,1) 
                end
                G.call('all_over') 
                
                G.call('goto_map',1) 
            elseif int_选项 == 2 then 
                G.call("talk",'门派弟子',228,'   好大的口气，就让我等来领教领教。',1,1) 
                G.call('all_over') 
                G.call('add_time',2)
                G.call('call_battle',0,10,3,200,int_mo,int_mo+1,int_mo+2,int_mo+3,int_mo+4,int_mo+5)
                o_battle_结果 = G.call('get_battle') 
                if o_battle_结果  == 1 then
                    G.call("talk",'门派弟子',228,'   你给我等着，我去请掌门来教训你！',1,1) 
                    G.call('all_over') 
                    G.call('dark')
                    G.call("talk",'',228,'   想【吞】了我们？就看你有没有这个本事了！',1,1) 
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',0,10,3,200,100,int_mo+1,int_mo+2,int_mo+3,int_mo+4,int_mo+5)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                       G.call("talk",'',100,'   算你厉害！只要你不把我们【昆仑派】赶尽杀绝，我愿意奉你为【太上掌门】！这是昆仑特产【大蟠桃】，你拿去吧。',2,1) 
                       if G.call('get_item',214) == 0 then 
                            G.call('add_item',214,3)
                        end 
                        G.call('set_story',28,1)
                        G.call('add_point',15,-10)
                        G.call('add_point',14,100)
                        G.call('set,note','征服【昆仑派】')
                        G.QueryName(0x10030001)[tostring(9)] = '昆仑派太上掌门'
                        o_tsbd.进度列表[9].完成 = 1  
                        G.call('all_over') 
      
                        G.call('goto_map',1) 
                    else
                        G.call('gameover')
                    end 
                else
                    G.call('gameover')
                end
            elseif int_选项 == 3 then 
                G.call('all_over') 
                
                G.call('goto_map',1)
            end
        end
    end 
end 
t['门派-明教']=function()
    local o_tsbd = G.QueryName(0x1017000c)
    local int_mo = (241-224)*6+235
    G.Play(0x49010030, 1,true,1) 
    if G.call('get_story',29) == 1 then 
        G.call('地图_进入地图','明教',44,48) 
        if G.call('get_point',172) ~= G.call('get_year') *12 + G.call('get_month') then 
           G.call('set_point',172, G.call('get_year') *12 + G.call('get_month') )
           local money = math.random(500)
           G.call('add_money',money)
           G.call("talk",'',149,'   启禀【太上教主】，这是本月给您的“孝敬”，一共'..tostring(money)..'两银子，请您收好。',2,1) 
        else
            G.call("talk",'',149,'   参见【太上教主】。',2,1) 
        end 
        G.call('all_over')
        G.call('goto_map',1)    
    else
        G.call("talk",'门派弟子',241,'  请问有何贵干？',2,1) 
        local int_选项 = 0 
        while int_选项 == 0 do
            int_选项 = G.call("menu",'',0,'',0,0,{"1,想跟你们切磋武功","2,我要【征服】这个门派","3,没有事情"},0) 
            if int_选项 == 1 then
                G.call("talk",'门派弟子',241,'   咱们较量一下，点到为止！',1,1) 
                G.call('all_over') 
                G.call('add_time',2)
                G.call('call_battle',1,10,3,100,int_mo,int_mo+1,int_mo+2,int_mo+3,int_mo+4,int_mo+5)
                o_battle_结果 = G.call('get_battle') 
                if o_battle_结果  == 1 then
                    G.call("talk",'门派弟子',241,'   公子真是好本事！',1,1) 
                else
                    G.call("talk",'门派弟子',241,'   承让承让，我们还要看门，改日再会！',1,1) 
                end
                G.call('all_over')
                G.call('goto_map',1) 
            elseif int_选项 == 2 then 
                G.call("talk",'门派弟子',241,'   好大的口气，就让我等来领教领教。',1,1) 
                G.call('all_over') 
                G.call('add_time',2)
                G.call('call_battle',0,10,3,200,int_mo,int_mo+1,int_mo+2,int_mo+3,int_mo+4,int_mo+5)
                o_battle_结果 = G.call('get_battle') 
                if o_battle_结果  == 1 then
                    G.call("talk",'门派弟子',241,'   你给我等着，我去请掌门来教训你！',1,1) 
                    G.call('地图_进入地图','明教',44,48) 
                    G.call("talk",'',149,'   想【吞并】我们？就看你有没有这个本事了！',1,1) 
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',0,10,3,200,149,151,154,150,0,0)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                       G.call("talk",'',149,'   算你厉害！只要你不把我们【明教】赶尽杀绝，我愿意奉你为【太上教主】！我情愿交出本帮至宝【乾坤大挪移】。',2,1) 
                       if G.call('get_item',114) == 0 then 
                            G.call('add_item',114,1)
                        end 
                        G.call('set_story',29,1)
                        G.call('add_point',15,-10)
                        G.call('add_point',14,100)
                        G.call('set,note','征服【明教】')
                        G.QueryName(0x10030001)[tostring(9)] = '明教太上教主'
                        o_tsbd.进度列表[10].完成 = 1 
                        G.call('all_over') 
                        G.call('goto_map',1) 
                    else
                        G.call('gameover')
                    end 
                else
                    G.call('gameover')
                end
            elseif int_选项 == 3 then 
                G.call('all_over') 
                
                G.call('goto_map',1)
            end
        end
    end 
end 
t['门派-日月神教']=function()
    local o_tsbd = G.QueryName(0x1017000c)
    local int_mo = (238-224)*6+235
    G.Play(0x49010030, 1,true,1) 
    if G.call('get_story',30) == 1 then 
        G.call('地图_进入地图','日月神教',65,48) 
        if G.call('get_point',173) ~= G.call('get_year') *12 + G.call('get_month') then 
           G.call('set_point',173, G.call('get_year') *12 + G.call('get_month') )
           local money = math.random(500)
           G.call('add_money',money)
           G.call("talk",'',180,'   启禀【太上教主】，这是本月给您的“孝敬”，一共'..tostring(money)..'两银子，请您收好。',2,1) 
        else
            G.call("talk",'',180,'   参见【太上教主】。',2,1) 
        end 
        G.call('all_over')
        G.call('goto_map',1)    
    else
        G.call("talk",'门派弟子',238,'  请问有何贵干？',2,1) 
        local int_选项 = 0 
        while int_选项 == 0 do
            int_选项 = G.call("menu",'',0,'',0,0,{"1,想跟你们切磋武功","2,我要【征服】这个门派","3,没有事情"},0) 
            if int_选项 == 1 then
                G.call("talk",'门派弟子',238,'   咱们较量一下，点到为止！',1,1) 
                G.call('all_over') 
                G.call('add_time',2)
                G.call('call_battle',1,10,3,100,int_mo,int_mo+1,int_mo+2,int_mo+3,int_mo+4,int_mo+5)
                o_battle_结果 = G.call('get_battle') 
                if o_battle_结果  == 1 then
                    G.call("talk",'门派弟子',238,'   公子真是好本事！',1,1) 
                else
                    G.call("talk",'门派弟子',238,'   承让承让，我们还要看门，改日再会！',1,1) 
                end
                G.call('all_over') 
                G.call('goto_map',1) 
            elseif int_选项 == 2 then 
                G.call("talk",'门派弟子',238,'   好大的口气，就让我等来领教领教。',1,1) 
                G.call('all_over') 
                G.call('add_time',2)
                G.call('call_battle',0,10,3,200,int_mo,int_mo+1,int_mo+2,int_mo+3,int_mo+4,int_mo+5)
                o_battle_结果 = G.call('get_battle') 
                if o_battle_结果  == 1 then
                    G.call("talk",'门派弟子',238,'   你给我等着，我去请掌门来教训你！',1,1) 
                    G.call('地图_进入地图','日月神教',65,48) 
                    G.call("talk",'',180,'   哎呦，你想让我永久的服侍你嘛？就看你有没有这个魅力了！',1,1) 
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',0,10,3,150,180,0,0,0,0,0)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                       G.call("talk",'',180,'   小兄弟，怎么对奴家这么狠哪。只要你不嫌弃我东方不败，我愿意奉你为【太上教主】！情愿交出本教至宝【葵花宝典】。',2,1) 
                        if G.call('get_item',92) == 0 then 
                            G.call('add_item',92,1)
                        end 
                        if G.call('get_love',180) >= 70 then 
                           G.call('join',179)  
                        end
                        G.call('set_story',30,1)
                        G.call('add_point',15,-10)
                        G.call('add_point',14,100)
                        G.call('set,note','征服【日月神教】')
                        G.QueryName(0x10030001)[tostring(9)] = '日月神教太上教主'
                        o_tsbd.进度列表[11].完成 = 1  
                        G.call('all_over')
                        G.call('goto_map',1) 
                    else
                        G.call('gameover')
                    end 
                else
                    G.call('gameover')
                end
            elseif int_选项 == 3 then 
                G.call('all_over') 
                G.call('goto_map',1)
            end
        end
    end 
end 
t['门派-崆峒派']=function()
    local o_tsbd = G.QueryName(0x1017000c)
    local int_mo = (228-224)*6+235
    if G.call('get_story',33) == 1 then 
        G.call('地图_进入地图','崆峒派',65,48) 
        if G.call('get_point',176) ~= G.call('get_year') *12 + G.call('get_month') then 
           G.call('set_point',176, G.call('get_year') *12 + G.call('get_month') )
           local money = math.random(500)
           G.call('add_money',money)
           G.call("talk",'',119,'   启禀【太上掌门】，这是本月给您的“孝敬”，一共'..tostring(money)..'两银子，请您收好。',2,1) 
        else
            G.call("talk",'',119,'   参见【太上掌门】。',2,1) 
        end 
        G.call('all_over')
        
        G.call('goto_map',1)    
    else
        G.call("talk",'门派弟子',228,'  请问有何贵干？',2,1) 
        local int_选项 = 0 
        while int_选项 == 0 do
            int_选项 = G.call("menu",'',0,'',0,0,{"1,想跟你们切磋武功","2,我要【征服】这个门派","3,没有事情"},0) 
            if int_选项 == 1 then
                G.call("talk",'门派弟子',228,'   咱们较量一下，点到为止！',1,1) 
                G.call('all_over') 
                G.call('add_time',2)
                G.call('call_battle',1,10,3,100,int_mo,int_mo+1,int_mo+2,int_mo+3,int_mo+4,int_mo+5)
                o_battle_结果 = G.call('get_battle') 
                if o_battle_结果  == 1 then
                    G.call("talk",'门派弟子',228,'   公子真是好本事！',1,1) 
                else
                    G.call("talk",'门派弟子',228,'   承让承让，我们还要看门，改日再会！',1,1) 
                end
                G.call('all_over') 
                
                G.call('goto_map',1) 
            elseif int_选项 == 2 then 
                G.call("talk",'门派弟子',228,'   好大的口气，就让我等来领教领教。',1,1) 
                G.call('all_over') 
                G.call('add_time',2)
                G.call('call_battle',0,10,3,200,int_mo,int_mo+1,int_mo+2,int_mo+3,int_mo+4,int_mo+5)
                o_battle_结果 = G.call('get_battle') 
                if o_battle_结果  == 1 then
                    G.call("talk",'门派弟子',228,'   你给我等着，我去请掌门来教训你！',1,1) 
                    G.call('all_over') 
                    --G.call('mapoff')
  
                    G.call('dark')
                   -- G.call('photo',65)
                    G.call("talk",'',119,'   想【吞】了我们？就看你有没有这个本事了！',1,1) 
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',0,10,3,200,119,int_mo+1,int_mo+2,int_mo+3,int_mo+4,int_mo+5)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                       G.call("talk",'',119,'   算你厉害！只要你不把我们【崆峒派】赶尽杀绝，我愿意奉你为【太上掌门】！这本【七伤拳】秘籍，你拿去吧。',2,1) 
                       if G.call('get_item',113) == 0 then 
                            G.call('add_item',113,1)
                        end 
                        G.call('set_story',33,1)
                        G.call('add_point',15,-10)
                        G.call('add_point',14,100)
                        G.call('set,note','征服【崆峒派】')
                        G.QueryName(0x10030001)[tostring(9)] = '崆峒派太上掌门'
                        o_tsbd.进度列表[14].完成 = 1    
                        G.call('all_over') 
      
                        G.call('goto_map',1) 
                    else
                        G.call('gameover')
                    end 
                else
                    G.call('gameover')
                end
            elseif int_选项 == 3 then 
                G.call('all_over') 
                
                G.call('goto_map',1)
            end
        end
    end 
end 
t['门派-泰山派']=function()
    local o_tsbd = G.QueryName(0x1017000c)
    local int_mo = (235-224)*6+235
    if G.call('get_story',34) == 1 then 
        G.call('地图_进入地图','泰山派',95,48) 
        if G.call('get_point',177) ~= G.call('get_year') *12 + G.call('get_month') then 
           G.call('set_point',177, G.call('get_year') *12 + G.call('get_month') )
           local money = math.random(500)
           G.call('add_money',money)
           G.call("talk",'',192,'   启禀【太上掌门】，这是本月给您的“孝敬”，一共'..tostring(money)..'两银子，请您收好。',2,1) 
        else
            G.call("talk",'',192,'   参见【太上掌门】。',2,1) 
        end 
        G.call('all_over')
        
        G.call('goto_map',1)    
    else
        G.call("talk",'门派弟子',235,'  请问有何贵干？',2,1) 
        local int_选项 = 0 
        while int_选项 == 0 do
            int_选项 = G.call("menu",'',0,'',0,0,{"1,想跟你们切磋武功","2,我要【征服】这个门派","3,没有事情"},0) 
            if int_选项 == 1 then
                G.call("talk",'门派弟子',235,'   咱们较量一下，点到为止！',1,1) 
                G.call('all_over') 
                G.call('add_time',2)
                G.call('call_battle',1,10,3,100,int_mo,int_mo+1,int_mo+2,int_mo+3,int_mo+4,int_mo+5)
                o_battle_结果 = G.call('get_battle') 
                if o_battle_结果  == 1 then
                    G.call("talk",'门派弟子',235,'   公子真是好本事！',1,1) 
                else
                    G.call("talk",'门派弟子',235,'   承让承让，我们还要看门，改日再会！',1,1) 
                end
                G.call('all_over') 
                
                G.call('goto_map',1) 
            elseif int_选项 == 2 then 
                G.call("talk",'门派弟子',235,'   好大的口气，就让我等来领教领教。',1,1) 
                G.call('all_over') 
                G.call('add_time',2)
                G.call('call_battle',0,10,3,200,int_mo,int_mo+1,int_mo+2,int_mo+3,int_mo+4,int_mo+5)
                o_battle_结果 = G.call('get_battle') 
                if o_battle_结果  == 1 then
                    G.call("talk",'门派弟子',235,'   你给我等着，我去请掌门来教训你！',1,1) 
                    G.call('all_over') 
                    --G.call('mapoff')
  
                    G.call('dark')
                   -- G.call('photo',65)
                    G.call("talk",'',192,'   想【吞】了我们？就看你有没有这个本事了！',1,1) 
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',0,10,3,200,192,0,0,0,0,0)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                       G.call("talk",'',192,'   算你厉害！只要你不把我们【泰山派】赶尽杀绝，我愿意奉你为【太上掌门】！。',2,1) 
                       --[[if G.call('get_item',113) == 0 then 
                            G.call('add_item',113,1)
                        end ]]
                        G.call('set_story',34,1)
                        G.call('add_point',15,-10)
                        G.call('add_point',14,100)
                        G.call('set,note','征服【泰山派】')
                        G.QueryName(0x10030001)[tostring(9)] = '泰山派太上掌门'
                        o_tsbd.进度列表[15].完成 = 1  
                        G.call('all_over') 
      
                        G.call('goto_map',1) 
                    else
                        G.call('gameover')
                    end 
                else
                    G.call('gameover')
                end
            elseif int_选项 == 3 then 
                G.call('all_over') 
                
                G.call('goto_map',1)
            end
        end
    end 
end 
t['门派-嵩山派']=function()
    local o_tsbd = G.QueryName(0x1017000c)
    local int_mo = (232-224)*6+235
    if G.call('get_story',35) == 1 then 
        G.call('地图_进入地图','嵩山派',65,48) 
        if G.call('get_point',178) ~= G.call('get_year') *12 + G.call('get_month') then 
           G.call('set_point',178, G.call('get_year') *12 + G.call('get_month') )
           local money = math.random(500)
           G.call('add_money',money)
           G.call("talk",'',189,'   启禀【太上掌门】，这是本月给您的“孝敬”，一共'..tostring(money)..'两银子，请您收好。',2,1) 
        else
            G.call("talk",'',189,'   参见【太上掌门】。',2,1) 
        end 
        G.call('all_over')
        
        G.call('goto_map',1)    
    else
        G.call("talk",'门派弟子',232,'  请问有何贵干？',2,1) 
        local int_选项 = 0 
        while int_选项 == 0 do
            int_选项 = G.call("menu",'',0,'',0,0,{"1,想跟你们切磋武功","2,我要【征服】这个门派","3,没有事情"},0) 
            if int_选项 == 1 then
                G.call("talk",'门派弟子',232,'   咱们较量一下，点到为止！',1,1) 
                G.call('all_over') 
                G.call('add_time',2)
                G.call('call_battle',1,10,3,100,int_mo,int_mo+1,int_mo+2,int_mo+3,int_mo+4,int_mo+5)
                o_battle_结果 = G.call('get_battle') 
                if o_battle_结果  == 1 then
                    G.call("talk",'门派弟子',232,'   公子真是好本事！',1,1) 
                else
                    G.call("talk",'门派弟子',232,'   承让承让，我们还要看门，改日再会！',1,1) 
                end
                G.call('all_over') 
                
                G.call('goto_map',1) 
            elseif int_选项 == 2 then 
                G.call("talk",'门派弟子',232,'   好大的口气，就让我等来领教领教。',1,1) 
                G.call('all_over') 
                G.call('add_time',2)
                G.call('call_battle',0,10,3,200,int_mo,int_mo+1,int_mo+2,int_mo+3,int_mo+4,int_mo+5)
                o_battle_结果 = G.call('get_battle') 
                if o_battle_结果  == 1 then
                    G.call("talk",'门派弟子',232,'   你给我等着，我去请掌门来教训你！',1,1) 
                    G.call('all_over') 
                    G.call('dark')
                    G.call("talk",'',189,'   想【吞】了我们？就看你有没有这个本事了！',1,1) 
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',0,10,3,200,189,0,0,0,0,0)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                       G.call("talk",'',189,'   算你厉害！只要你不把我们【嵩山派】赶尽杀绝，我愿意奉你为【太上掌门】！。',2,1) 
                        G.call('set_story',35,1)
                        G.call('add_point',15,-10)
                        G.call('add_point',14,100)
                        G.call('set,note','征服【嵩山派】')
                        G.QueryName(0x10030001)[tostring(9)] = '嵩山派太上掌门'
                        o_tsbd.进度列表[16].完成 = 1 
                        G.call('all_over') 
      
                        G.call('goto_map',1) 
                    else
                        G.call('gameover')
                    end 
                else
                    G.call('gameover')
                end
            elseif int_选项 == 3 then 
                G.call('all_over') 
                
                G.call('goto_map',1)
            end
        end
    end 
end 
t['门派-恒山派']=function()
    local o_tsbd = G.QueryName(0x1017000c)
    local int_mo = (234-224)*6+235
    if G.call('get_story',17) == 1 then 
        G.call("talk",'门派弟子',234,'  拜见掌门人',2,1) 
        G.call('all_over') 
        
        G.call('goto_map',1)
    else
        if G.call('get_story',36) == 1 then 
            G.call('地图_进入地图','恒山派',65,48) 
            if G.call('get_point',179) ~= G.call('get_year') *12 + G.call('get_month') then 
            G.call('set_point',179, G.call('get_year') *12 + G.call('get_month') )
            local money = math.random(500)
            G.call('add_money',money)
            G.call("talk",'',193,'   启禀【太上掌门】，这是本月给您的“孝敬”，一共'..tostring(money)..'两银子，请您收好。',2,1) 
            else
                G.call("talk",'',193,'   参见【太上掌门】。',2,1) 
            end 
            G.call('all_over')
            
            G.call('goto_map',1)    
        else
            G.call("talk",'门派弟子',234,'  请问有何贵干？',2,1) 
            local int_选项 = 0 
            while int_选项 == 0 do
                int_选项 = G.call("menu",'',0,'',0,0,{"1,想跟你们切磋武功","2,我要【征服】这个门派","3,没有事情"},0) 
                if int_选项 == 1 then
                    G.call("talk",'门派弟子',234,'   咱们较量一下，点到为止！',1,1) 
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',1,10,3,100,int_mo,int_mo+1,int_mo+2,int_mo+3,int_mo+4,int_mo+5)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                        G.call("talk",'门派弟子',234,'   公子真是好本事！',1,1) 
                    else
                        G.call("talk",'门派弟子',234,'   承让承让，我们还要看门，改日再会！',1,1) 
                    end
                    G.call('all_over') 
  
                    G.call('goto_map',1) 
                elseif int_选项 == 2 then 
                    G.call("talk",'门派弟子',234,'   好大的口气，就让我等来领教领教。',1,1) 
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',0,10,3,200,int_mo,int_mo+1,int_mo+2,int_mo+3,int_mo+4,int_mo+5)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                        G.call("talk",'门派弟子',234,'   你给我等着，我去请掌门来教训你！',1,1) 
                        G.call('all_over') 
                        G.call('dark')
                        G.call("talk",'',193,'   想【吞】了我们？就看你有没有这个本事了！',1,1) 
                        G.call('all_over') 
                        G.call('add_time',2)
                        G.call('call_battle',0,10,3,200,193,0,0,0,0,0)
                        o_battle_结果 = G.call('get_battle') 
                        if o_battle_结果  == 1 then
                            G.call("talk",'',193,'   算你厉害！只要你不把我们【恒山派】赶尽杀绝，我愿意奉你为【太上掌门】！我的爱徒【仪琳】也奉献给少侠，任少侠驱策。',2,1) 
                            if G.call('team_full') == false then
                            G.call('join',3)
                            end 
                            G.call('set_story',36,1)
                            G.call('add_point',15,-10)
                            G.call('add_point',14,100)
                            G.call('set,note','征服【恒山派】')
                            G.QueryName(0x10030001)[tostring(9)] = '恒山派太上掌门'
                            o_tsbd.进度列表[17].完成 = 1 
                            G.call('all_over') 
          
                            G.call('goto_map',1) 
                        else
                            G.call('gameover')
                        end 
                    else
                        G.call('gameover')
                    end
                elseif int_选项 == 3 then 
                    G.call('all_over') 
  
                    G.call('goto_map',1)
                end
            end
        end 
    end     
end 
t['门派-衡山派']=function()
    local o_tsbd = G.QueryName(0x1017000c)
    local int_mo = (236-224)*6+235
    if G.call('get_story',37) == 1 then 
        G.call('地图_进入地图','衡山派',65,48) 
        if G.call('get_point',180) ~= G.call('get_year') *12 + G.call('get_month') then 
           G.call('set_point',180, G.call('get_year') *12 + G.call('get_month') )
           local money = math.random(500)
           G.call('add_money',money)
           G.call("talk",'',190,'   启禀【太上掌门】，这是本月给您的“孝敬”，一共'..tostring(money)..'两银子，请您收好。',2,1) 
        else
            G.call("talk",'',190,'   参见【太上掌门】。',2,1) 
        end 
        G.call('all_over')
        
        G.call('goto_map',1)    
    else
        G.call("talk",'门派弟子',236,'  请问有何贵干？',2,1) 
        local int_选项 = 0 
        while int_选项 == 0 do
            int_选项 = G.call("menu",'',0,'',0,0,{"1,想跟你们切磋武功","2,我要【征服】这个门派","3,没有事情"},0) 
            if int_选项 == 1 then
                G.call("talk",'门派弟子',236,'   咱们较量一下，点到为止！',1,1) 
                G.call('all_over') 
                G.call('add_time',2)
                G.call('call_battle',1,10,3,100,int_mo,int_mo+1,int_mo+2,int_mo+3,int_mo+4,int_mo+5)
                o_battle_结果 = G.call('get_battle') 
                if o_battle_结果  == 1 then
                    G.call("talk",'门派弟子',236,'   公子真是好本事！',1,1) 
                else
                    G.call("talk",'门派弟子',236,'   承让承让，我们还要看门，改日再会！',1,1) 
                end
                G.call('all_over') 
                
                G.call('goto_map',1) 
            elseif int_选项 == 2 then 
                G.call("talk",'门派弟子',236,'   好大的口气，就让我等来领教领教。',1,1) 
                G.call('all_over') 
                G.call('add_time',2)
                G.call('call_battle',0,10,3,200,int_mo,int_mo+1,int_mo+2,int_mo+3,int_mo+4,int_mo+5)
                o_battle_结果 = G.call('get_battle') 
                if o_battle_结果  == 1 then
                    G.call("talk",'门派弟子',236,'   你给我等着，我去请掌门来教训你！',1,1) 
                    G.call('all_over') 
                    G.call('dark')
                    G.call("talk",'',190,'   想【吞】了我们？就看你有没有这个本事了！',1,1) 
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',0,10,3,200,190,0,0,0,0,0)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                       G.call("talk",'',190,'   算你厉害！只要你不把我们【衡山派】赶尽杀绝，我愿意奉你为【太上掌门】！。',2,1) 
                        G.call('set_story',37,1)
                        G.call('add_point',15,-10)
                        G.call('add_point',14,100)
                        G.call('set,note','征服【衡山派】')
                        G.QueryName(0x10030001)[tostring(9)] = '衡山派太上掌门'
                        o_tsbd.进度列表[18].完成 = 1  
                        G.call('all_over') 
      
                        G.call('goto_map',1) 
                    else
                        G.call('gameover')
                    end 
                else
                    G.call('gameover')
                end
            elseif int_选项 == 3 then 
                G.call('all_over') 
                
                G.call('goto_map',1)
            end
        end
    end 
end 
t['门派-灵鹫宫']=function()
    local o_tsbd = G.QueryName(0x1017000c)
    local int_mo = (228-224)*6+235
    G.Play(0x49010030, 1,true,1) 
    if G.call('get_story',39) == 2 then 
        G.call("talk",'门派弟子',228,'  拜见掌门人',2,1) 
        G.call('all_over') 
        G.call('goto_map',1)
    else
        if G.call('get_story',40) == 1  then 
            G.call('地图_进入地图','灵鹫宫',68,48) 
            if G.call('get_point',181) ~= G.call('get_year') *12 + G.call('get_month') then 
            G.call('set_point',181, G.call('get_year') *12 + G.call('get_month') )
            local money = math.random(500)
            G.call('add_money',money)
            G.call("talk",'',115,'   启禀【太上掌门】，这是本月给您的“孝敬”，一共'..tostring(money)..'两银子，请您收好。',2,1) 
            else
                G.call("talk",'',115,'   参见【太上掌门】。',2,1) 
            end 
            G.call('all_over')
            G.call('goto_map',1)    
        else
            G.call("talk",'门派弟子',228,'  请问有何贵干？',2,1) 
            local int_选项 = 0 
            while int_选项 == 0 do
                int_选项 = G.call("menu",'',0,'',0,0,{"1,想跟你们切磋武功","2,我要【征服】这个门派","3,没有事情"},0) 
                if int_选项 == 1 then
                    G.call("talk",'门派弟子',228,'   咱们较量一下，点到为止！',1,1) 
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',1,10,3,100,int_mo,int_mo+1,int_mo+2,int_mo+3,int_mo+4,int_mo+5)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                        G.call("talk",'门派弟子',228,'   公子真是好本事！',1,1) 
                    else
                        G.call("talk",'门派弟子',228,'   承让承让，我们还要看门，改日再会！',1,1) 
                    end
                    G.call('all_over') 
                    G.call('goto_map',1) 
                elseif int_选项 == 2 then 
                    G.call("talk",'门派弟子',228,'   好大的口气，就让我等来领教领教。',1,1) 
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',0,10,3,200,int_mo,int_mo+1,int_mo+2,int_mo+3,int_mo+4,int_mo+5)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                        G.call("talk",'门派弟子',228,'   你给我等着，我去请掌门来教训你！',1,1) 
                        G.call('地图_进入地图','灵鹫宫',68,48) 
                        G.call("talk",'',115,'   好狂妄的小子！就看你有没有这个本事了！',1,1) 
                        G.call('all_over') 
                        G.call('add_time',2)
                        G.call('call_battle',0,10,3,200,115,0,0,0,0,0)
                        o_battle_结果 = G.call('get_battle') 
                        if o_battle_结果  == 1 then
                            G.call("talk",'',115,'  够厉害！只要你不把我们【灵鹫宫】赶尽杀绝，我愿意奉你为【太上掌门】！这本【八荒六合神功】秘籍，你拿去吧。',2,1) 
                            if G.call('get_item',112) == 0 then 
                                G.call('add_item',112,1)
                            end 
                            G.call('set_story',40,1)
                            G.call('add_point',15,-10)
                            G.call('add_point',14,100)
                            G.call('set,note','征服【灵鹫宫】')
                            G.QueryName(0x10030001)[tostring(9)] = '灵鹫宫太上掌门'
                            o_tsbd.进度列表[19].完成 = 1 
                            G.call('all_over') 
                            G.call('goto_map',1) 
                        else
                            G.call('gameover')
                        end 
                    else
                        G.call('gameover')
                    end
                elseif int_选项 == 3 then 
                    G.call('all_over') 
                    G.call('goto_map',1)
                end
            end
        end 
    end     
end 
t['门派-铁掌帮']=function()
    local o_tsbd = G.QueryName(0x1017000c)
    local int_mo = (231-224)*6+235
    if G.call('get_story',42) == 1 then 
        G.call('地图_进入地图','铁掌帮',65,48) 
        if G.call('get_point',182) ~= G.call('get_year') *12 + G.call('get_month') then 
           G.call('set_point',182, G.call('get_year') *12 + G.call('get_month') )
           local money = math.random(500)
           G.call('add_money',money)
           G.call("talk",'',87,'   启禀【太上掌门】，这是本月给您的“孝敬”，一共'..tostring(money)..'两银子，请您收好。',2,1) 
        else
            G.call("talk",'',87,'   参见【太上掌门】。',2,1) 
        end 
        G.call('all_over')
        
        G.call('goto_map',1)    
    else
        G.call("talk",'门派弟子',231,'  请问有何贵干？',2,1) 
        local int_选项 = 0 
        while int_选项 == 0 do
            int_选项 = G.call("menu",'',0,'',0,0,{"1,想跟你们切磋武功","2,我要【征服】这个门派","3,没有事情"},0) 
            if int_选项 == 1 then
                G.call("talk",'门派弟子',231,'   咱们较量一下，点到为止！',1,1) 
                G.call('all_over') 
                G.call('add_time',2)
                G.call('call_battle',1,10,3,100,int_mo,int_mo+1,int_mo+2,int_mo+3,int_mo+4,int_mo+5)
                o_battle_结果 = G.call('get_battle') 
                if o_battle_结果  == 1 then
                    G.call("talk",'门派弟子',231,'   公子真是好本事！',1,1) 
                else
                    G.call("talk",'门派弟子',231,'   承让承让，我们还要看门，改日再会！',1,1) 
                end
                G.call('all_over') 
                
                G.call('goto_map',1) 
            elseif int_选项 == 2 then 
                G.call("talk",'门派弟子',231,'   好大的口气，就让我等来领教领教。',1,1) 
                G.call('all_over') 
                G.call('add_time',2)
                G.call('call_battle',0,10,3,200,int_mo,int_mo+1,int_mo+2,int_mo+3,int_mo+4,int_mo+5)
                o_battle_结果 = G.call('get_battle') 
                if o_battle_结果  == 1 then
                    G.call("talk",'门派弟子',231,'   你给我等着，我去请掌门来教训你！',1,1) 
                    G.call('all_over') 
                    G.call('dark')
                    G.call("talk",'',87,'   想【吞】了我们？就看你有没有这个本事了！',1,1) 
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',0,10,3,200,87,0,0,0,0,0)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                       G.call("talk",'',87,'   算你厉害！只要阁下不把我们【铁掌帮】赶尽杀绝，我愿意奉阁下为【太上掌门】！还会把本帮的《铁掌掌谱》赠送阁下。',2,1) 
                        if G.call('get_item',110) == 0 then 
                            G.call('add_item',110,1)
                        end 
                        G.call('set_story',42,1)
                        G.call('add_point',15,-10)
                        G.call('add_point',14,100)
                        G.call('set,note','征服【衡山派】')
                        G.QueryName(0x10030001)[tostring(9)] = '衡山派太上掌门'
                        o_tsbd.进度列表[20].完成 = 1 
                        G.call('all_over') 
      
                        G.call('goto_map',1) 
                    else
                        G.call('gameover')
                    end 
                else
                    G.call('gameover')
                end
            elseif int_选项 == 3 then 
                G.call('all_over') 
                
                G.call('goto_map',1)
            end
        end
    end 
end 