--[[400e

]]
local G = require "gf"
local L = {}
local t = G.api
local JY = 0
t['城镇-京城']=function()
    if G.call('get_story',45) == 0 then 
        G.call('地图_进入地图','京城',128,33) 
        G.call("talk",'',220,'   滚开臭小子，不要挡我【段天德】大老爷的官路！',1,1) 
        G.call("talk",'',0,'   你就是狗官段天德？牛家村郭杨两家可是被你害死的？',0,0) 
        G.call("talk",'',220,'   大胆！无礼！本官正是清如水白如镜的【段天德】。本官奉旨办案，击杀逆贼，还有什么过错吗！',1,1) 
        G.call("talk",'',0,'   郭杨两家世代忠良，却被你污为逆贼？你身为宋官，却为满清效力，你不是逆贼更有谁是！',0,0) 
        G.call("talk",'',220,'   此等刁滑小民毁老爷声誉，左右给我拿下，乱棍打出！',1,1) 
        G.call('all_over')
        G.call('set_story',45,1)
        G.call('add_time',2)
        local int_mo = (227-224)*6+265
        G.call('call_battle',1,20,3,100,int_mo,int_mo+1,int_mo+2,0,0,0)
        local o_battle_结果 = G.call('get_battle') 
        if o_battle_结果  == 1 then
            G.call("talk",'',220,'   好小子，你给我等着，我去找人来教训你！',1,1) 
            G.call('all_over')
            G.call('dark')
            G.call("talk",'侍  卫',228,'   '..G.QueryName(0x10030001)[tostring(1)]..'少侠，我家王爷有请。',1,1)
            G.call('地图_进入地图','内室',37,33) 
            G.call("talk",'',68,'   '..G.QueryName(0x10030001)[tostring(1)]..'少侠，我知道你是为了郭杨两家之事而来。不错，当日杨家娘子救我性命，我确实倾心于她。事后我曾委托宋官【段天德】，要他邀那位杨家娘子来京城一聚，我要报答昔日救命之恩...',1,1)
            G.call("talk",'',68,'   哪知段天德会错我的意思，竟然杀害郭杨两家，还把杨家娘子强掳而来...杨家娘子愤而自尽...我欲报恩，反而却害了他们。',1,1)
            G.call("talk",'',68,'   段天德那狗东西现在已被我杀了，我现在每日负疚，你还是替郭杨两家报仇，把我杀了吧。',1,1)
            local int_选项 = 0 
            while int_选项 == 0 do
                int_选项 = G.call("menu",'',0,'',0,0,{"1,杀【完颜洪烈】","2,不杀【完颜洪烈】",},0) 
                if int_选项 == 1 then
                    G.call('all_over')
                    G.call("talk",'',0,'   完颜宏烈已死，虽为郭杨两家报了仇，但是为什么心中会有不安？到底这种人该杀还是不该杀？此地不可久留，我得速速离去了。',0,0) 
                    G.call('add_point',14,50)
                    G.call('add_point',15,10)
                    G.call('set_note','手刃【完颜洪烈】,【段天德】伏诛！')
                
                elseif   int_选项 == 2 then 
                    G.call("talk",'',68,'   '..G.QueryName(0x10030001)[tostring(1)]..'少侠，纵使你不杀我，我也无意苟活世上。这【破风刀】和【蟠龙棍】乃是两位义士的遗物，望你收下，继承义士的遗志，行侠仗义为百姓造福。',1,1)
                    if G.call('get_item',38) == 0 then 
                        G.call('add_item',38,1)
                    end
                    if G.call('get_item',58) == 0 then 
                        G.call('add_item',58,1)
                    end       
                end
            end 
        else
            G.call("talk",'',220,'   这是天子脚下，不便取你狗命，赶快滚吧！',1,1) 
        end 
        G.call('all_over')         
    elseif G.call('get_story',45) == 8 then 
        G.call("talk",'',0,'   自从那件事情后，皇宫戒备森严，再难进入了。',0,0) 
        G.call('all_over')     
    elseif G.call('get_story',45) == 1 then
        G.call('set_story',45,2)
        G.call('地图_进入地图','太监房',103,34) 
        G.call("talk",'太  监',226,'   你是什么人？敢闯皇宫禁地！',1,1)
        G.call("talk",'',0,'   不要吵！回答我几个问题，我就离开。否则我就杀了你！',0,0) 
        G.call("talk",'太  监',226,'   你一不劫财二不劫色三不刺王杀驾，那么事情就好办了。有什么尽管问。',1,1)
        G.call("talk",'',0,'   这里是什么地方？架子上一陀一陀的那是什么？',0,0) 
        G.call("talk",'太  监',226,'   这里是【太监房】。上面吊着都是【鞭】！',1,1)
        G.call("talk",'',0,'   原来这里就是传说中专门阉人的地方啊。',0,0) 
        local int_选项 = 0 
        while int_选项 == 0 do
            int_选项 = G.call("menu",'',0,'',0,0,{"1,快点帮我【阉】了，我好练绝世武功！","2,不是我兴趣的地方，溜走",},0) 
            if int_选项 == 1 then
                G.call('all_over') 
                G.misc().人物头像 = 0x560800e2
                G.QueryName(0x10030001)[tostring(119)] = 0x560800e2
                G.call("talk",'',0,'   哇塞，【阉】过之后果然不同反响，全身上下轻飘飘的，好像去了十几斤的累赘似的...',0,0)
                G.QueryName(0x10030001)[tostring(41)] = 1
                G.call('set_CH','人   妖')
                G.call('set_note','迈出了人生中最精彩的一步！')
            elseif   int_选项 == 2 then 
                G.call('all_over') 
            end
        end 
        G.call('all_over')         
    elseif G.call('get_story',45) == 2 then
        G.call('set_story',45,3)
        G.call("talk",'',0,'   有【蒙面人】在鬼鬼祟祟...',0,0)
        G.call('地图_进入地图','皇宫内院',78,34) 
        G.call('add_time',2)
        G.call('call_battle',0,78,3,100,205,0,0,0,0,0)
        local o_battle_结果 = G.call('get_battle') 
        if o_battle_结果  == 1 then
            if G.call('team_full') == false then 
                G.call("talk",'',27,'   原来你不是清廷的人。我本要来行刺满清皇帝，看来咱们是同道中人。我便加入队伍，助你一臂之力。',1,1)
                G.call('join',27)
            else
                G.call("talk",'',27,'   原来你不是清廷的人。我本要来行刺满清皇帝，但是时不凑巧，我改日再来，再会！',1,1)
            end
            G.call('all_over')       
        else
            G.call('gameover')
        end
    elseif G.call('get_story',45) == 3 then
        G.call('set_story',45,4)
        G.call('地图_进入地图','皇宫内院',78,34)  
        G.call("talk",'',0,'   看到【海大富】在翻阅经书...',0,0) 
        G.call('all_over') 
        local int_选项 = 0 
        while int_选项 == 0 do
            int_选项 = G.call("menu",'',0,'',0,0,{"1,打","2,溜走",},0) 
            if int_选项 == 1 then
                G.call('all_over') 
                G.call('add_time',2)
                G.call('call_battle',0,78,3,100,126,0,0,0,0,0)
                local o_battle_结果 = G.call('get_battle') 
                if o_battle_结果  == 1 then
                    G.call('add_item',246,1)
                    G.call('all_over') 
                    G.call("talk",'',0,'   得到【四十二章经】！',0,0) 
                    G.call('all_over')      
                else
                    G.call('gameover')
                end     
            elseif   int_选项 == 2 then 
                G.call('all_over') 
            end
        end 
    elseif G.call('get_story',45) == 4 then
        G.call('set_story',45,5)
        G.call('地图_进入地图','皇宫内院',78,34) 
        G.call("talk",'',0,'   看到【皇太后】在翻阅经书...',0,0) 
        G.call('all_over') 
        local int_选项 = 0 
        while int_选项 == 0 do
            int_选项 = G.call("menu",'',0,'',0,0,{"1,打","2,溜走",},0) 
            if int_选项 == 1 then
                G.call('all_over') 
                G.call('add_time',2)
                G.call('call_battle',0,78,3,100,128,0,0,0,0,0)
                local o_battle_结果 = G.call('get_battle') 
                if o_battle_结果  == 1 then
                    G.call('add_item',247,1)
                    G.call('all_over') 
                    G.call("talk",'',0,'   得到【四十二章经】！',0,0) 
                    G.call('all_over') 
                else
                    G.call('gameover')
                end     
            elseif   int_选项 == 2 then 
                G.call('all_over') 
            end
        end 
    elseif G.call('get_story',45) == 5 then
        G.call('set_story',45,6)
        G.call('地图_进入地图','皇宫内院',78,34)  
        G.call("talk",'',0,'   看到【鳌拜】在翻阅经书...',0,0) 
        G.call('all_over') 
        local int_选项 = 0 
        while int_选项 == 0 do
            int_选项 = G.call("menu",'',0,'',0,0,{"1,打","2,溜走",},0) 
            if int_选项 == 1 then
                G.call('all_over') 
                G.call('add_time',2)
                G.call('call_battle',0,78,3,100,57,0,0,0,0,0)
                local o_battle_结果 = G.call('get_battle') 
                if o_battle_结果  == 1 then
                    G.call('add_item',251,1)
                    G.call('add_item',252,1)
                    G.call('add_item',276,1)
                    G.call('all_over') 
                    G.call("talk",'',0,'   得到两本【四十二章经】和一个道具【银两】！',0,0) 
                    G.call('set_story',48,1)
                    G.call('set_death',57)
                    G.call('all_over')            
                else
                    G.call('gameover')
                end     
            elseif   int_选项 == 2 then 
                G.call('all_over') 
            end
        end    
    elseif G.call('get_story',45) == 6 then
        G.call('set_story',45,7)
        G.call("talk",'',0,'   看到【吴三桂】带着一个老者...',0,0) 
        G.call('地图_进入地图','皇宫内院',78,34) 
        local int_选项 = 0 
        while int_选项 == 0 do
            int_选项 = G.call("menu",'',0,'',0,0,{"1,打","2,溜走",},0) 
            if int_选项 == 1 then
                G.call('all_over') 
                G.call('add_time',2)
                G.call('call_battle',0,78,3,100,58,0,0,0,0,0)
                local o_battle_结果 = G.call('get_battle') 
                if o_battle_结果  == 1 then
                    G.call('add_item',72,1)
                    G.call('add_item',250,1)
                    G.call('all_over') 
                    G.call("talk",'',0,'   得到【四十二章经】和【火枪】！',0,0) 
                    G.call('all_over')                
                else
                    G.call('gameover')
                end     
            elseif   int_选项 == 2 then 
                G.call('all_over') 
            end
        end      
    elseif G.call('get_story',45) == 7 then
        G.call('set_story',45,8)
        G.call('地图_进入地图','皇宫内院',78,34) 
        G.call("talk",'',0,'   看到【满清皇帝】在翻阅经书...',0,0) 
        local int_选项 = 0 
        while int_选项 == 0 do
            int_选项 = G.call("menu",'',0,'',0,0,{"1,打","2,溜走",},0) 
            if int_选项 == 1 then
                G.call('all_over') 
                G.call('add_time',2)
                local int_mo = (230-227)*6+265
                G.call('call_battle',0,78,3,100,65,int_mo,int_mo+1,80,int_mo+2,227)
                local o_battle_结果 = G.call('get_battle') 
                if o_battle_结果  == 1 then
                    G.call('add_item',248,1)
                    G.call('all_over') 
                    G.call("talk",'',0,'   得到【四十二章经】！',0,0) 
                    G.call('all_over')                 
                else
                    G.call('gameover')
                end     
            elseif   int_选项 == 2 then 
                G.call('all_over') 
            end
        end 




    end 
    G.call('dark')
    G.call('goto_map',1)
end 
t['城镇-西夏']=function()
    if G.call('get_story',16) == 2 then 
        G.call("talk",'',0,'   梦姑，你还好吗？',0,0) 
        G.call("talk",'',132,'   梦郎，我天天想念你，你终于回来了。但是你还有很多事情没有办完，即使跟我在一起，你的心也定不下，还是早点把你要做的事情都做完，再回来咱们团聚吧……',1,1) 
    else
        G.call("talk",'西夏武士',231,'   闲杂人等不得进入西夏皇宫。',1,1) 
    
    end     
    G.call('all_over') 
    G.call('goto_map',1)
end    
t['城镇-梅庄']=function()
   if G.call('get_story',18) == 1 then 
        G.call('set_story',18,2)
        G.call("talk",'',17,'   小兄弟，咱们又见面了！',1,1) 
        G.call("talk",'',0,'   向大哥邀我前来，可有什么事情叫小弟帮忙？',0,0) 
        G.call("talk",'',17,'   不可多问。你只须听我的吩咐，照我的安排去做就好了。',1,1) 
        G.call('all_over') 
        G.call('dark')
        G.call("talk",'',17,'   【嵩山派】童化金拜见梅庄几位前辈！',1,1) 
        G.call("talk",'',188,'   童化金？没听说过。你到梅庄有何贵干？',1,1) 
        G.call("talk",'',17,'   我们此番前来，只为和各位前辈打一个赌，我赌你们这梅庄内无人能胜得过我这位兄弟！倘若我们输了，我这《溪山行旅图》《广陵散》等诸宝物，就献于梅庄各位。',1,1) 
        G.call("talk",'',188,'   好狂妄！我看你有什么本事，能一人之力挑下我们梅庄四友！',1,1) 
        G.call('all_over') 
        G.call('add_time',2)
        G.call('call_battle',1,10,3,100,188,0,0,0,0,0)
        local o_battle_结果 = G.call('get_battle') 
        if o_battle_结果  == 1 then
            G.call("talk",'',188,'   果然有些门道，我去请三哥来对付你！',1,1) 
            G.call('all_over') 
            G.call('add_time',2)
            G.call('call_battle',1,10,3,100,187,0,0,0,0,0)
            local o_battle_结果 = G.call('get_battle') 
            if o_battle_结果  == 1 then
                G.call("talk",'',187,'   果然有些门道，我去请二哥来对付你！',1,1) 
                G.call('all_over') 
                G.call('add_time',2)
                G.call('call_battle',1,10,3,100,186,0,0,0,0,0)
                local o_battle_结果 = G.call('get_battle') 
                if o_battle_结果  == 1 then
                    G.call("talk",'',186,'   果然有些门道，我去请大哥来对付你！',1,1) 
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',1,10,3,100,185,0,0,0,0,0)
                    local o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                        G.call("talk",'',185,'   阁下虽然胜了我们兄弟，但是梅庄中尚有一人，你定然胜不了，请跟我来...',1,1)            
                        G.call('mapoff')
                        G.call('dark')
                        G.call("talk",'',0,'   哇，这么黑，人都看不到，怎么比啊。',0,0) 
                        G.call("talk",'',182,'   那四个梅庄小狗把你的功夫吹得神乎其神，老夫倒很像见识下你是否真的如他们所说，还是浪得虚名！',1,1)
                        G.call('all_over') 
                        G.call('add_time',2)
                        G.call('call_battle',1,19,3,100,182,0,0,0,0,0)
                        local o_battle_结果 = G.call('get_battle') 
                        if o_battle_结果  == 1 or o_battle_结果  == 2 then
                            G.call('set_story',19,1)
                            G.call("talk",'',182,'   哈哈哈哈哈！！！！！！',1,1)
                            G.call("talk",'',0,'   哇！头好疼！！难道这就是传说中的【狮吼功】！！',0,0) 
                            G.call('all_over') 
                            G.call('learnmagic',145)
                            G.call("talk",'',0,'   莫非前辈已经走了。咦，这墙壁上刻着字呢...“吸星大法”！原来前辈把这神功刻在墙上，就是要等待我这个有缘人了。前辈既然走了，我也离去吧。',0,0) 
                            G.call('learnmagic',147)
                        end     

                    else
                        G.call("talk",'',185,'   凭这微末本事也敢来梅庄献丑，真是不自量力！',1,1) 
                    end     
                else
                    G.call("talk",'',186,'   凭这微末本事也敢来梅庄献丑，真是不自量力！',1,1) 
                end 
            else
                G.call("talk",'',187,'   凭这微末本事也敢来梅庄献丑，真是不自量力！',1,1) 
            end
        else
            G.call("talk",'',188,'   凭这微末本事也敢来梅庄献丑，真是不自量力！',1,1) 
        end 

    else
        G.call("talk",'',0,'   这孤山梅庄大门紧闭，不知道里面在搞什么名堂...',0,0) 
    end
    G.call('all_over') 
    G.call('goto_map',1)
end    
t['城镇-渡口']=function()
    if G.call('get_point',237) > 1 or  G.misc().测试 then 
        local int_选项 = 0 
        while int_选项 == 0 do
            int_选项 = G.call("menu",'',0,'',0,0,{"1,去【神龙教】","2,去【桃花岛】","3,去【海底采矿】","4,哪里也不想去"},0) 
            if int_选项 == 1 then
                G.call('all_over') 
                G.call('dark')
                G.call('门派-神龙教')
            elseif int_选项 == 2 then 
                G.call('all_over') 
                G.call('dark')
                G.call('门派-桃花岛')
            elseif int_选项 == 3 then 
                G.call('all_over') 
                G.call('dig')
                G.call('add_time',2)
                G.call('all_over') 
                if G.call('get_item',273) > 1 then
                    G.call('地图_进入地图','龙脉宝藏',104,3) 
                    G.call("talk",'',0,'   原来龙脉宝藏在海底，这下可大发了！',0,0)
                    G.call('add_item',273,-1)
                    G.call('add_money',50000)
                    G.call("talk",'',0,'   这里还有若干宝石也拿走吧！',0,0)
                    for i = 312,317 do 
                        for i = 312,317 do 
                            G.call('add_item',i,10)
                        end 
                    end 
                end
                G.call('all_over') 
                G.call('goto_map',55)
            elseif int_选项 == 4 then 
                G.call('all_over') 
                G.call('goto_map',1)
            end
        end
    else
        local int_选项 = 0 
        while int_选项 == 0 do
            int_选项 = G.call("menu",'',0,'',0,0,{"1,去【神龙教】","2,去【海底采矿】","3,哪里也不想去"},0) 
            if int_选项 == 1 then
                G.call('all_over') 
                G.call('dark')
                G.call('门派-神龙教')
            elseif int_选项 == 2 then 
                G.call('all_over') 
                G.call('dig')
                G.call('add_time',2)
                G.call('all_over') 
                G.call('goto_map',1)
            elseif int_选项 == 3 then 
                G.call('all_over') 
                G.call('goto_map',1)
            end
        end
    end
end 
t['城镇-密林']=function()
    if G.call('get_story',39) > 0 or G.call('get_item',261) == 0 or  G.call('get_story',40) == 1 then 
        G.call("talk",'',0,'   今天这里没什么状况...',0,0) 
        G.call('all_over') 
        G.call('goto_map',1)
    else
        G.call("talk",'女  童',115,'   傻小子，快背我跑！跑的越远越好！',1,1)
        G.call("talk",'',0,'   你这个女娃好没礼貌，哪有见面就让别人背你的。',0,0) 
        G.call("talk",'女  童',115,'   我在被人追杀，你若是跑的慢了，他们追上，连你也不会放过。你若救了我，算你大功一件，我自会补偿于你！我知道一个地方，咱们先去那里躲一躲...',1,1)
        G.call('地图_进入地图','密室',43,10) 
        G.call("talk",'女  童',115,'   好了，咱们到这里，谅来他们一时半会找不到了。我现在给你告诉你实情了：姥姥便是飘渺峰【灵鹫宫】的主人【天山童姥】！',1,1)
        G.call("talk",'',115,'   追杀我的人是我的师妹【李秋水】。所以我需要你做护法来帮我抵挡那个贱人！',1,1)
        G.call("talk",'',115,'   你年纪轻轻，内力却深厚！我传你两门功夫，便可足以帮我迎敌。一门是【天山六阳掌】和【天山折梅手】。现在姥姥就来看看你这两门功夫掌握的如何了...',1,1)
        if G.call('get_magicexp',102) == 0 then 
            G.call('learnmagic',102)
        end 
        if G.call('get_magicexp',103) == 0 then 
            G.call('learnmagic',103)
        end 
        G.call('all_over') 
        G.call('add_time',2)
        G.call('call_battle',1,21,3,100,115,0,0,0,0,0)
        if G.call('get_point',18) >= 80 then--判断悟性高于80触发梦姑剧情
            G.call("talk",'',115,'   不坏不坏，你所学远远超乎我的指望，作为奖励，今晚姥姥送你一个惊喜！',1,1) 
            G.call('地图_进入地图','密室',43,10) 
            G.call("talk",'女  人',132,'   啊！这是哪里？怎么会怎么冷...',1,1)
            G.call("talk",'',0,'   怎么突然会有个女人赤身裸体的躺在我旁边...',0,0) 
            G.call("talk",'',115,'   傻小子，好好享受吧！',1,1) 
            G.call("talk",'女  人',132,'   你是谁？这是哪里？我是在做梦吧...你抱紧我，我很冷...',1,1)
            G.call("talk",'女  人',132,'   你在梦里出现的，我就叫你【梦郎】吧，我就是你的【梦姑】...梦郎...',1,1)
            G.call('set_story',16,1) 
        else
            G.call("talk",'',115,'   你还真不是一般的笨！这么简单的两套掌法你都发挥不到二成功力，真是叫人失望。也罢，我给你百枚【生死符】暗器，',1,1) 
            G.call("talk",'',115,'   用这个扔她，或许也能管用。你要是跟跟我说暗器手法也不会，我就杀了你！！！',1,1) 
            if G.call('get_item',69) == 0 then 
                G.call('add_item',69,100)
            end 
        end 
        G.call('set_point',44,G.call('get_point',217))
        G.call('set_point',46,G.call('get_point',218))
        G.call('地图_进入地图','密室',43,10) 
        G.call("talk",'',114,'   师妹好雅兴呀，在冰窖里和英俊少年调情，怪不得小妹找了好多天也没你的音讯呢！！！',1,1) 
        G.call("talk",'',115,'   那贱人来了，你看好时机准备出手吧！',1,1)
        local int_选项 = 0 
        while int_选项 == 0 do
            int_选项 = G.call("menu",'',0,'',0,0,{"1,我马上出手教训她！","2,你们打到一半我再去偷袭他","2,机会正好，不跑是傻子"},0) 
            if int_选项 == 1 then
                G.call('all_over') 
                G.call('add_time',2)
                G.call('call_battle',0,10,3,100,114,0,0,0,0,0)
                local o_battle_结果 = G.call('get_battle') 
                if o_battle_结果  == 1 then
                    G.call("talk",'',115,'   我也来助你一臂之力！——不好!冰水结冰，我发出的内力收不回来了！',1,1) 
                    G.call("talk",'',114,'   师姐，你这叫报应！你当小妹的北冥神功是白练得吗！我要通过此人的身体，把你们的内力统统吸过来。哈哈哈...',1,1) 
                    G.call("talk",'',114,'   啊！不好，水结成冰，隔断内力。内力传输不过来了，反而我的内力再被这人强行吸走...',1,1) 
                    G.call("talk",'',0,'   夹在你们两个老太婆之间真是倒霉...',0,0) 
                    G.call('地图_进入地图','密室',43,10) 
                    G.call("talk",'',115,'   哈哈哈，老贱人终于先我而死！我的仇终于报了。小子，现在我们身上的大半内力都已封存到了你体内，此刻你已经是天下无敌了。',1,1) 
                    G.call("talk",'',115,'   为了报答姥姥，我要你做我【灵鹫宫】的掌门人，否则我死不...瞑目..',1,1) 
                    G.call("talk",'',0,'   好好，我答应你就是，你可以把眼睛闭上了...',0,0) 
                    G.call("talk",'',114,'   哈哈哈，看看大仇人先我而死，真是快哉啊。小子，多亏了你，我们纠缠数十年的仇怨，今天才能了结。我就传你一招【白虹掌】吧...死在师姐身旁，我也可瞑目了...',1,1) 
                    G.call('set_story',39,2) 
                    if G.call('get_magicexp',67) == 0 then 
                        G.call('learnmagic',67)
                    end 
                    G.call('add_point',47,4000)
                    G.call('add_point',27,40)
                    G.call('all_over')                 
                    G.call('goto_map',1) 
                else
                    G.call('gameover')
                end
            elseif   int_选项 == 2 then 
                G.call('all_over') 
                G.call('add_time',2)
                G.call('call_battle',0,10,3,50,114,0,0,0,0,0)
                local o_battle_结果 = G.call('get_battle') 
                if o_battle_结果  == 1 then
                    G.call("talk",'',115,'   我也来助你一臂之力！——不好!冰水结冰，我发出的内力收不回来了！',1,1) 
                    G.call("talk",'',114,'   师姐，你这叫报应！你当小妹的北冥神功是白练得吗！我要通过此人的身体，把你们的内力统统吸过来。哈哈哈...',1,1) 
                    G.call("talk",'',114,'   啊！不好，水结成冰，隔断内力。内力传输不过来了，反而我的内力再被这人强行吸走...',1,1) 
                    G.call("talk",'',0,'   夹在你们两个老太婆之间真是倒霉...',0,0) 
                    G.call('地图_进入地图','密室',43,10) 
                    G.call("talk",'',115,'   哈哈哈，老贱人终于先我而死！我的仇终于报了。小子，现在我们身上的大半内力都已封存到了你体内，此刻你已经是天下无敌了。',1,1) 
                    G.call("talk",'',115,'   为了报答姥姥，我要你做我【灵鹫宫】的掌门人，否则我死不...瞑目..',1,1) 
                    G.call("talk",'',0,'   好好，我答应你就是，你可以把眼睛闭上了...',0,0) 
                    G.call("talk",'',114,'   哈哈哈，看看大仇人先我而死，真是快哉啊。小子，多亏了你，我们纠缠数十年的仇怨，今天才能了结。我就传你一招【白虹掌】吧...死在师姐身旁，我也可瞑目了...',1,1) 
                    G.call('set_story',39,2) 
                    if G.call('get_magicexp',67) == 0 then 
                        G.call('learnmagic',67)
                    end 
                    G.call('add_point',47,2000)
                    G.call('add_point',27,20)
                    G.call('all_over')                     
                    G.call('goto_map',1) 
                else
                    G.call('gameover')
                end
            elseif   int_选项 == 3 then 
                G.call('all_over')         
                G.call('goto_map',1) 
            end
        end

    end 
end   
t['城镇-无量山洞']=function()
    if G.call('get_story',44) == 0  and  G.call('in_team',9) == false then
        G.call('set_story',44,1)
        G.call("talk",'',0,'   这洞里怎会立了一座栩栩如生的石像呢?',0,0) 
        G.call("talk",'',9,'   原来公子是跟我刚入洞时一样的困惑。不过在我后来得知这洞里原住一对神仙眷侣，后来男的照那女的模样刻了这玉像...',1,1) 
        if G.call('team_full') == false then 
            G.call('join',9)
            G.call("talk",'',9,'   其实我是被人到处追杀，走投无路才躲到这里的，也算是和这【神仙姐姐】般的玉像一种缘分吧。我看公子看似会武功的样子，请带我离开这吧，我可真怕那些恶人什么时候会找了进来。',1,1) 
        else
            G.call("talk",'',9,'   其实我是被人到处追杀，走投无路才躲到这里的，也算是和这【神仙姐姐】般的玉像一种缘分吧。',1,1)  
        end
       
        if G.call('get_point',15) > 29 then
            G.call("talk",'',9,'   我从【神仙姐姐】姐姐那里得到两本秘籍，《凌波微步》和《北冥神功》。我生性不喜习武，我看公子是侠义之人，武功越强，则所做善事越大。所以我决定把这两本秘籍赠送给你。',1,1) 
            if G.call('get_item',108) == 0 then 
                G.call('add_item',108,1)
            end 
            if G.call('get_item',109) == 0 then 
                G.call('add_item',109,1)
            end 
        end
    else
        if G.call('in_team',9) == true  then 
            G.call("talk",'',9,'   假如世上真有【神仙姐姐】如此美貌的人，我情愿不做大理王子，陪她在这洞里做一对快活的逍遥眷侣...',1,1) 
        else
            G.call("talk",'',9,'   假如世上真有【神仙姐姐】如此美貌的人，我情愿不做大理王子，陪她在这洞里做一对快活的逍遥眷侣...',1,1) 
        end
    end 
    G.call('all_over') 
    G.call('goto_map',1) 
end  
t['城镇-树林']=function()
    if G.call('get_magicexp',94) == 0   and  G.call('team_full') == false and  G.call('in_team',29) == false  then 
        G.call('dark')
        G.call("talk",'',29,'   公子快救救我！有人要追杀我！',1,1)  
        G.call('all_over') 
        G.call('add_time',2)
        G.call('call_battle',1,20,3,50,(230-224)*6+265,229,230,0,0,0)
        local o_battle_结果 = G.call('get_battle') 
        if o_battle_结果  == 1 then
            G.call("talk",'',29,'   多谢公子救我性命。我叫游坦之，今后就是公子的仆从了，现在世道人心险恶，要是没人罩着，活得还真不会长久。我有一套祖传的【南山掌法】传授给你吧。',1,1) 
            G.call('join',29)
            G.call('learnmagic',94)
        else
            G.call("talk",'',29,'   烦请公子快去找救兵，务必要救我一救啊！',1,1) 
        end 
    else
        G.call("talk",'',0,'   这里没什么状况..',0,0) 
    end 
    G.call('all_over') 
    G.call('goto_map',1)     
end   
t['城镇-塞外']=function()
    if G.call('in_team',36) == false  then 
        G.call('dark')
        G.call("talk",'',36,'   乔某隐居此地，还以为被江湖的朋友忘记了。今日难得有人看望乔某，就让乔某以武会友吧。',1,1) 
        G.call('all_over') 
        G.call('add_time',2)
        local int_难度 = G.QueryName(0x10160000 +G.call('get_point',143)).难度
        local int_难度系数 = 100
        if int_难度 == 1 then 
            int_难度系数 = 100
        elseif int_难度 == 2 then
            int_难度系数 = 120
        elseif int_难度 == 3 then
            int_难度系数 = 150
        end  
        G.call('call_battle',1,42,1,int_难度系数,36,0,0,0,0,0,0,66)  
        local o_battle_结果 = G.call('get_battle') 
        if o_battle_结果  == 1 then
            if  G.call('get_point',15) > 59 and  G.call('get_magicexp',217) == 0 and G.call('get_story',57) ~= 1 then 
                G.call("talk",'',36,'   小兄弟，你武功既高，人品又不错，我传你一套【降龙十八掌】，望你能更好的造福于武林。',1,1)
                G.call('learnmagic',217)
            elseif  G.call('get_magicexp',85) == 0 and G.call('get_point',15) > 59 and G.call('get_story',57) == 1 then
                G.call("talk",'',36,'   小兄弟，你武功既高，人品又不错，我传你一套【降龙十八掌】，望你能更好的造福于武林。',1,1)
                G.call('learnmagic',85)
            elseif  G.call('get_magicexp',218) == 0 and G.call('get_point',15) > 79 then 
                G.call("talk",'',36,'   这套擒龙功应该除了我还没人会，今日就传了你吧！',1,1) 
                G.call('learnmagic',218)
            elseif  G.call('team_full') == false and G.call('get_point',15) > 99 then 
                G.call("talk",'',36,'   我也好久没回江湖走动了，不知道江湖上的朋友都怎样了，我和你一起闯荡江湖吧',1,1) 
                G.call('join',36)
            else
                G.call("talk",'',36,'   我已厌倦了江湖纷争，希望如我和阿朱样的悲剧不要在别人身上发生。',1,1) 
            end 
        else
            G.call("talk",'',36,'   你的功夫不错，但是功力尚浅，还须得假以时日多多磨练。',1,1) 
        end
    else
        if G.call('in_team',134) == false  then 
           G.call("talk",'',36,'   塞外牛羊空许约...阿朱...',1,1) 
        else
            G.call("talk",'',36,'   阿朱，以后我们就可以在这里放羊了。',1,1) 
            G.call("talk",'',36,'   是的，阿朱会一直陪着。',1,1) 
        end
    end
    G.call('all_over') 
    G.call('goto_map',1)  
end    
t['城镇-还施水阁']=function()
    if G.call('in_team',30) == false  then 
        if  G.call('team_full') == false then 
            G.call("talk",'',30,'   想要我加入队伍，你的声望得足够高才行，否则对我没有丝毫帮助，我又何苦为你卖命！',1,1) 
            if G.call('get_point',14) > 799 then 
               if G.call('get_item',122) == 0  and G.call('get_magicexp',152) == 0 then 
                    G.call('add_item',122,1)
                    G.call("talk",'',30,'   你已经符合我的要求，我会加入你的队伍。不过你的武功实在太差，现在教你套慕容棍法，给你一本《斗转星移》秘籍拿去好好练练吧。',1,1) 
                    if G.call('get_magic',29) == 0 then 
                        G.call('learnmagic',29)
                    end
                else
                    G.call("talk",'',30,'   你已经符合我的要求，我现在就加入你的队伍。',1,1) 
                end 
                G.call('join',30)
            else
                G.call("talk",'',30,'   你的声望还远远不够，休想说服我跟你们一起去做那些毫无意义的事情。',1,1) 
            end     
        else
            G.call("talk",'',30,'   我慕容复要做大燕国中兴之主！',1,1) 
        end 
    else
        G.call("talk",'',30,'   【以彼之道还施彼身】的【还施水阁】，不日将会在武林大放异彩！',1,1) 
    end 
    G.call('all_over') 
    G.call('goto_map',1)
end  
t['城镇-林家老宅']=function()
    if G.call('get_story',6) == 1  then
        G.call("talk",'',0,'   哈哈，原来林家祖传之物竟是【辟邪剑谱】...我只要不还给林家后人，自己悄悄练成，那就天下无敌了。',0,0) 
        G.call('add_point',15,-15)
        G.call('set_story',6,9)  
        G.call("talk",'',205,'   很可惜，你在做梦！',1,1) 
        G.call('all_over') 
        G.call('add_time',2)
        G.call('call_battle',1,4,3,100,205,0,0,0,0,0)
        local o_battle_结果 = G.call('get_battle') 
        if o_battle_结果  == 1 then
            if G.call('get_item',93) == 0  then 
                G.call('add_item',93,1)
            end 
            G.call("talk",'',0,'   算你溜得快！还想从我手里抢东西，真是天大的笑话。这【辟邪剑谱】从此就是我的了。',0,0) 
        else
            G.call("talk",'',0,'   好不容易到手的宝贝，竟然被那混蛋抢去了，真是可恶！',0,0) 
            --设置岳不群飞升
            G.call('add_role',191,1,2500)
            G.call('add_role',191,13,G.call('get_role',191,1))
            G.call('add_role',191,2,2500)
            G.call('add_role',191,14,G.call('get_role',191,2))
            G.call('add_role',191,4,20)
            G.call('add_role',191,7,20)
            G.call('add_role',191,8,30)
            G.call('set_role',191,12,500)
            G.call('set_roleskill',191,3,34)
        end     
      
        
    else
        G.call("talk",'',0,'   这里破破烂烂的什么也没有...',0,0) 
    end 
    G.call('all_over') 
    G.call('goto_map',1)
end            
t['城镇-苗人凤居']=function()
    local int_mo = (229-224)*6+265
    local int_mo1 = (230-224)*6+265
    if G.call('get_story',41) == 0  then
        G.call("talk",'',102,'   【苗人凤】你已中了【天下第一奇毒】！现在你双目失明，几天后就会全身溃烂而死，就算你有通天彻地的武功，也是难逃一死！看热闹的小兄弟，咱们一起联手除掉这个瞎子吧。',1,1) 
        local int_选项 = 0 
        while int_选项 == 0 do
            int_选项 = G.call("menu",'',0,'',0,0,{"1,帮助【苗人凤】战【何红药】","2,帮助【何红药】战【苗人凤】","2,没有事情"},0) 
            if int_选项 == 1 then
                G.call('all_over') 
                G.call('add_time',2)
                G.call('call_battle',1,7,3,100,102,229,int_mo,int_mo+1,int_mo1,230)
                local o_battle_结果 = G.call('get_battle') 
                if o_battle_结果  == 1 then
                    G.call("talk",'',102,'   好小子，原来你也觊觎那份藏宝图。既然你武功高强，我们是没话说了，不过这苗人凤也快死了，他肯不肯拿给你就看你的造化了，哈哈哈...',1,1)  
                    G.call('add_point',15,5)
                    G.call("talk",'',156,'   小兄弟，我中的毒，只有【药王庄】的传人才能医治的了，以苗某的功力暂时还挺得住，烦请小兄弟去请药王庄的传人来医治我的眼睛，苗某感激不尽。',1,1) 
                    G.call('set_story',41,1)
                else
                    G.call("talk",'',102,'   凭你的本事也配来争强藏宝图？快点滚吧。',1,1)  
                    G.call('set_story',41,3)
                end
            elseif   int_选项 == 2 then 
                G.call('all_over') 
                G.call('add_time',2)
                G.call('call_battle',1,7,3,60,156,0,0,0,0,0)
                local o_battle_结果 = G.call('get_battle') 
                if o_battle_结果  == 1 then
                    G.call("talk",'',102,'   真是不简单那，连号称【打遍天下无敌手】的苗人凤都死在你的手下，不过到底是苗人凤中我的奇毒再前。这样看来，是你厉害还是我的手段高呢？看来只好较量一下了。',1,1) 
                    G.call('add_point',15,-10)
                    G.call('add_point',14,50)
                    G.call('set_story',41,3)
                    G.call('set_note','杀——号称【打遍天下无敌手】之苗人凤！')
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',1,7,3,150,102,229,int_mo,int_mo+1,int_mo1,230)
                    local o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                        G.call("talk",'',102,'   你够狠，这苗人凤身上的【闯王宝藏】看来是非你莫属了。不过咱们今天这笔账不算完，有机会再要较量一下！',1,1) 
                        if G.call('get_item',264) == 0  then 
                            G.call('add_item',264,1)
                        end 
                    else
                        G.call("talk",'',102,'   凭你的本事也配来争抢藏宝图？快点滚吧。',1,1) 
                        G.call('set_story',41,3)
                    end
                else
                    G.call("talk",'',156,'   你们这些毛贼当我苗人凤一对招子瞎了就可以任你们宰割吗！无名鼠辈快些滚吧',1,1) 
                    G.call('add_point',15,-5)
                    G.call('set_story',41,3)
                end 
            elseif   int_选项 == 3 then 
    
            end 
        end 
    elseif G.call('get_story',41) == 1  then
        if G.call('in_team',40) == true  then 
            G.call("talk",'',40,'   苗前辈，晚辈是【药王庄】毒手药王的嫡传弟子，晚辈现在苗前辈身上下施针灸，片刻后苗前辈可双复原。',1,1)
            G.call('set_story',41,2)
            G.call('dark')
            G.call("talk",'',156,'   【药王庄】的弟子果然神乎其技！小兄弟，你救了苗某的性命，苗某没什么可报答的。不如指点你一招武功如何，这便是我的【苗家剑法】！',1,1) 
            if G.call('get_magicexp',47) == 0 then 
                G.call('learnmagic',47)
            end
            if G.call('get_point',15) > 49  then 
                G.call("talk",'',156,'   小兄弟，你身怀侠义心肠，武功又高，苗某的这份【闯王宝藏图】交给你保管是最适合不过了！他日你开启宝藏，获取里面财物，一定要用于正道，普度天下众生，否则便是辜负了苗某对你的一番信任！',1,1) 
                if G.call('get_item',264) == 0  then 
                    G.call('add_item',264,1)
                end 
            else
                G.call("talk",'',156,'   小兄弟，你今日虽然救我，但是我看出你眼中深藏戾气，希望你日后能走正路，否则祸到临头，你将悔之晚矣！',1,1)
            end    
        else
            G.call("talk",'',156,'   【药王庄】的人还不肯来吗？看来当年苗某无意间与【药王庄】结下的梁子，时至今日仍未化解，真是自作自受啊。',1,1) 
        end 
    elseif G.call('get_story',41) == 2  then
        G.call("talk",'',156,'   苗某已无大碍，宵小之辈也不敢再来，苗某正好在这安度晚年！',1,1) 
    elseif G.call('get_story',41) == 3  then
        G.call("talk",'',0,'   苗人凤中毒已死，此处已经荒废了...',0,0) 
    end   
    G.call('all_over') 
    G.call('goto_map',1)
end            
t['城镇-阎基居']=function()
    if G.call('get_story',43) == 1  then
        G.call("talk",'',0,'   阎基已死，此处也已经荒废了...',0,0) 
        G.call('all_over') 
        G.call('goto_map',1)
    else
        if G.call('in_team',5) == true  then 
            G.call("talk",'',5,'   阎基！当年我父亲胡一刀和苗人凤比武受伤，而后中毒身亡，那下毒之人是不是你？',1,1)
            G.call("talk",'',178,'   是便怎样？你们现在全都中了我的【十香软筋散】，一点内力你们也施展不开，难道这种情况下，我还怕你们吗？',1,1) 
            for i = 1,12 do --全体队友内力为0
                local o_team = G.QueryName(0x10110001)[tostring(i)]
                if o_team ~= nil then 
                    G.QueryName(o_team).内力 = 0
                end 
            end    
            G.call('set_point',46,0) 
            G.call('all_over') 
            G.call('add_time',2)
            G.call('call_battle',0,10,3,100,178,0,0,0,0,0)
            local o_battle_结果 = G.call('get_battle') 
            if o_battle_结果  == 1 then
                G.call('set_story',43,1)
                G.call("talk",'',178,'   没可能的，没可能的。我练了《胡家秘籍》上的武功，应该是罕逢敌手，怎么会连没有内力的人也打不过。真是天亡我也，夫复何求...',1,1)   
                G.call("talk",'',5,'   我家的【胡家刀法】秘籍果然是被他偷去了。可惜他只偷走了上半篇，因此他的武功未能臻至一流境地。',1,1)
                G.call('add_point',15,5)
                if G.call('get_item',98) == 0  then 
                    G.call('add_item',98,1)
                end 
                G.call('all_over') 
                G.call('goto_map',1)
            else
                G.call('gameover')
            end      
        else
            G.call("talk",'',178,'   私闯民宅可是触犯刑律的，老衲这里不欢迎你们！',1,1) 
            G.call('all_over') 
            G.call('goto_map',1)
        end
    end     

end            
t['城镇-药王庄']=function()
    if G.call('in_team',40) == false  then 
        if G.call('in_team',5) == true  then 
            G.call("talk",'',40,'   胡斐大哥原来你也在啊，既然是胡斐大哥的朋友也就是我的朋友。我这【药王庄】的弟子也不是浪得虚名的。',1,1)
            G.call("talk",'',40,'   现在我左右闲着也是无事，不如就帮帮胡斐大哥的朋友，跟你们走一趟。凡是遇到疑难杂症，保准药到病除。',1,1)
            G.call('join',40)
            if G.misc().药王神篇 == nil then 
                G.misc().药王神篇 = 0
            end
            if G.call('get_item',106) == 0 and G.misc().药王神篇 == 0 then
                G.call('add_item',106,1) 
                G.misc().药王神篇 = 1
            end
        else
            G.call("talk",'',40,'   最近外面有不少人冒着【药王庄】的名号到处害人，连累我们被世人误会。',1,1)
            G.call("talk",'',40,'   当年那个【阎基】正是从【药王庄】骗走了七星海棠才使得胡大侠夫妇丧命，但是这笔账却算到了我们头上...',1,1)
        end

    else
        G.call("talk",'',40,'   又回到故居，感觉真是很亲切。',1,1)
    end     
    G.call('all_over') 
    G.call('goto_map',1)
end            
t['城镇-蝴蝶谷']=function()
    G.call("talk",'',155,'   我就是传说中【见死不救】的【蝶谷医仙】胡青牛！虽然我不亲手治疗，但是贩卖些成品丹药糊口，还是不违反原著精神的。另外贩卖些独门暗器，童叟无欺！',1,1) 
    local int_选项 = 0 
    while true do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,我看看你这都有什么好买","2,帮我治疗我的队友兄弟【花费1000两】","3,我是随便看看，没什么好买的"},0) 
        if int_选项 == 1 then
            G.call('all_over')
            G.call('shop',6)
            if  G.call('getprice') > 0 then 
                if  G.call('getprice') < G.call('get_money')  then 
                    G.call('buyresult')
                    if G.call('team_full') == false and G.call('in_team',4) == false then 
                        G.call("talk",'',155,'   为答谢客官对小店的大力支持，本次消费特赠送【天下第一奇男子】——张无忌。如果使用不满意，还可退货，小店将重新包装，下次送出。',1,1) 
                        G.call('join',4)
                    end 
                else
                   G.call("talk",'',155,'   钱不够不要紧，买卖不成人情在。你先买些便宜的丹药回去做纪念吧。',2,1)
                end 
            else
            end  
            G.call("talk",'',155,'   我就是传说中【见死不救】的【蝶谷医仙】胡青牛！虽然我不亲手治疗，但是贩卖些成品丹药糊口，还是不违反原著精神的。另外贩卖些独门暗器，童叟无欺！',1,1) 
        elseif   int_选项 == 2 then 
            if G.call('get_money') > 1000 then 
                G.Play(0x49010035, 1,false,100) 
                G.call("talk",'',155,'   医仙出手自然是“手到病出”，我要让他们内外武功跟受伤之前，全无二致。',1,1)
                for i = 1,12 do 
                    local o_team = G.QueryName(0x10110001)[tostring(i)]
                    if o_team ~= nil then 
                        G.QueryName(o_team).内力 = G.QueryName(o_team)[tostring(2)]
                        G.QueryName(o_team).生命 = G.QueryName(o_team)[tostring(1)]
                        for n = 81,89 do 
                            G.QueryName(o_team)[tostring(n)] = 0
                        end
                    end 
                end 
                G.call('add_money',-1000)   
            else
                G.call("talk",'',155,'   钱不够不要紧，买卖不成人情在。你先买些便宜的丹药回去做纪念吧。',1,1) 
            end 
        elseif   int_选项 == 3 then 
            G.call('all_over')
            G.call('goto_map',1)
            break
        end 
      
    end


end            
t['城镇-胡斐居']=function()
    if G.call('in_team',5) == true  then 
        G.call("talk",'',5,'   这就是我居住多年的地方。',1,1)
    else
        if G.call('team_full') == false  then 
            G.call("talk",'',5,'   如果能够打赢我，就加入你的队伍。',1,1)
            G.call('all_over') 
            G.call('add_time',2)
            G.call('call_battle',1,10,1,100,5,0,0,0,0,0)
            local o_battle_结果 = G.call('get_battle') 
            if o_battle_结果  == 1 then
                G.call("talk",'',5,'   要不是我的祖传刀法遗失，我怎么会败在你的手上！不过我信守约定，我加入你的队伍。',1,1)
                G.call('join',5)
            else
                G.call("talk",'',5,'   你终究还是敌不过我胡家的刀法。',1,1)
            end    
        else
            G.call("talk",'',5,'   我要苦练刀法，不能丢了我们【飞狐世家】的脸面',1,1)
        end 
    end
    G.call('all_over')
    G.call('goto_map',1)
end 
t['城镇-绿柳山庄']=function()
    if G.call('get_story',51) == 0 then 
        G.call("talk",'蒙古郡主',15,'   什么人，竟然敢私闯绿柳山庄？',1,1)
        G.call("talk",'',0,'   听说倚天剑在此，不如借剑一观？',0,0)
        G.call("talk",'蒙古郡主',15,'   想看倚天剑就看你能否打得过我的二个家奴！',1,1)
        local int_选项 = 0 
        while int_选项 == 0  do
            int_选项 = G.call("menu",'',0,'',0,0,{"1,好，正合我意","2,暂时有事，改日再会！"},0) 
            if int_选项 == 1 then
                G.call("talk",'',44,'   阿二先来领教公子的拳法',1,1)
                G.call('all_over') 
                G.call('add_time',2)
                G.call('call_battle',1,10,1,100,44,0,0,0,0,0)
                local o_battle_结果 = G.call('get_battle') 
                if o_battle_结果  == 1 then
                    G.call("talk",'',43,'   阿大来领教公子的剑法',1,1)
                    G.call('all_over') 
                    G.call('add_time',2)
                    G.call('call_battle',1,10,1,100,43,0,0,0,0,0)
                    local o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                        G.call("talk",'',15,'   公子武功高强，赵敏今日得见，请到这边先用些酒饭。',1,1)
                        G.call("talk",'',0,'   恭敬不如从命！',0,0)
                        G.call('dark')
                        G.Play(0x49010039, 1,true,1) 
                        G.call("talk",'',0,'   赵姑娘，承蒙厚待，在下有一句言语想要动问，只是不敢出口。',0,0)
                        G.call("talk",'',15,'   何必见外？我辈行走江湖，所谓‘四海之内，皆兄弟也’，倘若不弃，便交交小妹这个朋友。有何吩咐垂询，自当竭诚奉告。',1,1)
                        G.call("talk",'',0,'   既是如此，在下想要请问，姑娘这柄倚天剑从何处得来？',0,0)
                        G.call('notice1','赵敏解下倚天剑，放在桌上')
                        G.call("talk",'',15,'   这个稍后再说，小妹不胜酒力，再饮恐有失仪，现下说话已不知轻重了。我进去换一件衣服，片刻即回，请公子自便，不必客气。',1,1)
                        G.call('all_over') 
                        local int_选项 = 0 
                        while int_选项 == 0  do
                            int_选项 = G.call("menu",'',0,'(是否拔剑看看)',0,4,{"1,看看这剑到底有何古怪","2,还是等赵姑娘来了再说"},0) 
                            if int_选项 == 1 then
                                G.call('set_story',51,2)
                                G.call('all_over') 
                                G.call("talk",'',0,'   怎地这般轻？竟是一把木制的长剑。',0,0)
                                if  G.call('get_item',3) == 0 then
                                    G.call('get_item',3,1)
                                end
                                G.call("talk",'',0,'   不好。。。这香味是奇鲮香木',0,0)
                                G.call("talk",'',15,'   公子果然好见识，也是好本事竟然没有中毒。',1,1)
                                G.call("talk",'',0,'   赵姑娘好算计，我与姑娘并无冤仇何苦如此？',0,0)
                                G.call("talk",'',15,'   这个就要问公子自己了，本姑娘今天还有要事，恕不奉陪。。。',1,1)
                                G.call("talk",'',0,'   （欺身向前）[br]等等，还有事情相问姑娘。',0,0)
                                G.call("talk",'',0,'   不好，有机关。赵姑娘果然算无遗策！那就只有得罪了',0,0)
                                G.call('地图_进入地图','密室',48,57) 
                                G.call("talk",'',0,'   我不知道你是谁，这当儿也没功夫听你说。你到底叫不叫人来放我？',0,0)
                                G.call("talk",'',15,'   呜呜，呜呜，你欺侮我，你欺侮我！',1,1)
                                G.call("talk",'',0,'   我又不是想欺侮你，只是要你放我出去。',0,0)
                                G.call("talk",'',15,'   我又不是不肯，好，我叫人啦！喂，喂！来人哪！把翻板开了，我落在钢牢中啦。你瞧，有甚么用？',1,1)
                                G.call("talk",'',0,'   也不羞！又哭又笑的，成甚么样子？',0,0)
                                G.call("talk",'',15,'   你自己才不羞！一个大男人家，却来欺侮弱女子？',1,1)
                                G.call("talk",'',0,'   你是弱女子么？你诡计多端，比十个男子汉还要厉害。',0,0)
                                G.call("talk",'',15,'   多承公子夸赞，小女子愧不敢当。',1,1)
                                G.call("talk",'',0,'   看来只好如此，你若决定要放我出去，那便点头。',0,0)
                                G.call("talk",'',15,'   你……你做甚么？',1,1)
                                G.call("talk",'',0,'   得罪了（扯脱了赵敏右脚鞋袜，伸双手食指点在她两足掌心的“涌泉穴”上，运起内功，一股暖气便即在“涌泉穴”上来回游走。）',0,0)
                                G.call("talk",'',15,'   臭小子……贼……小子，总有一天，我……我将你千刀……千刀万剐……好啦，好啦，饶……饶了我罢……公子……呜呜……呜呜……',1,1)
                                G.call("talk",'',0,'   你放不放我？',0,0)
                                G.call("talk",'',15,'   我……放……快……停手……',1,1)
                                G.call("talk",'',0,'   得罪了！',0,0)
                                G.call("talk",'',15,'   贼小子，给我着好鞋袜！',1,1)
                                G.call("talk",'',0,'   赵姑娘，适才在下实是迫于无奈，这里跟你谢罪了。',0,0)
                                G.call('dark')
                                G.Play(0x49010039, 1,true,1) 
                                if G.call('team_full') == false then 
                                    G.call("talk",'',15,'   不过以后我要跟公子一起，不知公子可否应了',1,1)
                                    G.call("talk",'',0,'   好吧，我们先离开这里',0,0)
                                    G.call('join',15)
                                else
                                    G.call("talk",'',15,'   公子以后有需要不妨再来绿柳山庄！',1,1)
                                end
                            elseif int_选项 == 2 then   
                                G.call('set_story',51,3) 
                                G.call('dark')
                                G.call("talk",'',0,'   过去这久都没赵姑娘都没回来，以后再来！',0,0)
                                G.call('地图_进入地图','？？？？',5,12) 
                                G.call("talk",'',0,'   前面好像是一大队蒙古高手在围杀明教众人，怎么指挥明教的竟然是一个小姑娘？',0,0)
                                G.call("talk",'小姑娘',252,'   锐金旗攻东北方，洪水旗至西南方包抄。',1,1)
                                G.call("talk",'',0,'   待我包抄过去帮她杀几个解围！',0,0)
                                G.call("talk",'',76,'   什么人竟敢偷袭',1,1)
                                G.call("talk",'',77,'   让你见识我们玄冥二老的厉害',1,1)
                                G.call('all_over') 
                                G.call('add_time',2)
                                G.call('call_battle',1,22,3,100,76,77,44,43,0,0)
                                local o_battle_结果 = G.call('get_battle') 
                                if o_battle_结果  == 1 then
                                    G.Play(0x49010032, 1,true,1) 
                                    G.call("talk",'',0,'   一群乌合之众，哈哈。。。',0,0)
                                    G.call("talk",'',252,'   小昭多谢公子相助。',1,1)
                                    G.call("talk",'',0,'   不好，十香软经散。',0,0)
                                    G.call("talk",'',15,'   算你有见识，将他们二人先关进绿柳山庄地牢。',1,1)
                                    G.call("talk",'',76,'   是，郡主。',1,1)
                                    G.call('地图_进入地图','密室',48,10) 
                                    G.call("talk",'',252,'   是我连累公子了',1,1)
                                    G.call("talk",'',0,'   没事，我也没想到蒙古人这般歹毒！',0,0)
                                    G.Play(0x49010038, 1,true,1) 
                                    G.call("talk",'',252,'   世情推物理，人生贵适意，想人间造物搬兴废。吉藏凶，凶藏吉.展放愁眉，休争闲气。今日容颜，老于昨日。古往今来，尽须如此，管他贤的愚的，贫的和富的。',1,1)
                                    G.call("talk",'',252,'   到头这一身，难逃那一日，受用了一朝，一朝便宜。百岁光阴，七十者稀。急急流年，滔滔逝水。',1,1)
                                    G.call("talk",'',0,'   小昭你唱的真好听。',0,0)
                                    G.call("talk",'',252,'   公子见笑!',1,1)
                                    G.call("talk",'',0,'   我们看看怎么离开这里',0,0)
                                    G.call("talk",'',252,'   公子看这里。。。',1,1)
                                    G.call("talk",'',0,'   竟然开关在这里，我们先离开。',0,0)
                                    G.call('dark')
                                    G.Play(0x49010039, 1,true,1) 
                                    G.call("talk",'',0,'   小昭你刚刚唱的是什么？',0,0)
                                    if G.call('team_full') == false then 
                                        G.call("talk",'',252,'   只要公子喜欢听，以后小昭都会唱给公子听。',1,1)
                                        G.call('join',252)
                                    else
                                        G.call("talk",'',252,'   多谢公子今日相助，我还要去找我们教主，就此别过！',1,1)
                                    end 
                                else
                                    G.call('set_story',51,4) 
                                    G.call("talk",'',76,'   今日不杀你，快点滚吧！',1,1)
                                end    
                            end
                        end
                    else
                        G.call("talk",'',15,'   公子看来是看不成倚天剑了，就请速速离开！',1,1)
                        G.call('set_story',51,1)
                    end
                else
                    G.call("talk",'',15,'   公子看来是看不成倚天剑了，就请速速离开！',1,1)
                    G.call('set_story',51,1)
                end
            elseif int_选项 == 2 then 
            end
        end
    elseif G.call('get_story',51) == 1 then 
        G.call("talk",'',0,'   打不过人家以后还是不要擅闯！',0,0)
    elseif G.call('get_story',51) == 2 then 
        if G.call('in_team',15) == true then 
            G.call("talk",'',15,'   来到这里就想起那日地牢中种种，以后要常来这里看看',1,1)
        else
            if G.call('team_full') == false then 
                G.call("talk",'',15,'   只要公子需要，赵敏愿意一直陪伴公子！',1,1)
                G.call('join',15) 
            else
                G.call("talk",'',15,'   公子好像现在并不需要赵敏追随！',1,1)
            end
        end
    elseif G.call('get_story',51) == 3 then 
        if G.call('in_team',252) == true then 
            G.call("talk",'',0,'   那日小昭的歌声真的很好听。',0,0)
            G.Play(0x49010038, 1,true,1) 
            G.call("talk",'',252,'   只要公子想听小昭现在就唱给公子听。',1,1)
        else
            G.call("talk",'',0,'   好想念小昭的歌声。',0,0)
        end
    elseif G.call('get_story',51) == 4 then 
        G.call("talk",'',0,'   这里没有什么事！',0,0)
    end
    G.call('dark')
    G.call('goto_map',1)
end

