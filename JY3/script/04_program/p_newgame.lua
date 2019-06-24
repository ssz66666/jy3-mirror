--[[4006

]]
local G = require "gf"
local L = {}
local t = G.api
--type=剧情
--private=false
t['回答问题']=function()
    G.QueryName(0x10160000 +G.call('get_point',143)).难度 = 1
    G.call('story','即将闯荡江湖的小虾米听好了，下面是回答问题的时间，你的回答将会影响到你步入《金庸群侠传3》世界后的初始属性，请认真回答')
    local int_选项 = 0
    while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'一：你是否知道本游戏原作者的署名是什么？',1,1,
        {"1,满谷俗人酒","2,神仙半瓶醋","3,逍遥奇侠","4,半瓶神仙酿","5,半瓶神仙醋"},1)
        if int_选项 == 1 then
            G.call("talk",'',38,'   貌似是个很有争议的名号，不过是醋某在百度贴吧上注册的马甲',3,0)
            G.call('all_over')
        elseif  int_选项 == 2 then
            G.call("talk",'',38,'   嘿嘿，恭喜你，答错了',3,0)
            G.call('all_over')
        elseif  int_选项 == 3 then
            G.call("talk",'',38,'   这位仁兄多半用工具破解过《金2》吧，更有可能还给自己起过这样的名字',3,0)
            G.call('all_over')
        elseif  int_选项 == 4 then
            G.call("talk",'',38,'   千万不要误以为这是我的孪生胞胎兄弟',3,0)
            G.call('all_over')               
        elseif  int_选项 == 5 then 
            G.call("talk",'',38,'   痛哭流涕...终于被人想起来了...不过，该不会是蒙的吧',3,0)
            for i = 16,21 do             --基础属性全+2
                G.call('add_point',i,2)
            end     
            G.call('all_over')
            
        end 

    end  
    local int_选项 = 0
    while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'二：你是否知道金庸先生的原名？',1,1,
        {"1,查金庸","2,查镛","3,查艮镛","4,查良庸","5,查良镛"},1)
        if int_选项 == 1 then
            G.call("talk",'',38,'   这个看起来是，不过。。。。',3,0)
            G.call('all_over')
        elseif  int_选项 == 2 then
            G.call("talk",'',38,'   这个看起来是，不过。。。。',3,0)
            G.call('all_over')
        elseif  int_选项 == 3 then
            G.call("talk",'',38,'   看来老兄眼神有点不好',3,0)
            G.call('all_over')
        elseif  int_选项 == 4 then
            G.call("talk",'',38,'   老兄把最重要的都丢了',3,0)
            G.call('all_over')               
        elseif  int_选项 == 5 then 
            G.call("talk",'',38,'   不会是百度的吧，要是百度就多了解一下金庸先生的十四部小说，这样对本游戏也有更多的了解！',3,0)
            G.call('add_point',18,2)  --悟性+2
            G.call('all_over')
            
        end 

    end 
    local int_选项 = 0
    while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'三：你认为武侠游戏最重要的是什么？',1,1,
        {"1,感人至深的剧情","2,绚丽多彩的武功招式","3,丰富的AI和系统","4,场景好看，音乐动听"},1)
        if int_选项 == 1 then
            G.call("talk",'',38,'   剧情一般都是脑补出来的！',3,0)
            G.call('all_over')
        elseif  int_选项 == 2 then
            G.call("talk",'',38,'   这个需要很多的美工用时间来制作的',3,0)
            G.call('all_over')
        elseif  int_选项 == 3 then
            G.call("talk",'',38,'   这个就需要慢慢来增强了！',3,0)
            G.call('all_over')
        elseif  int_选项 == 4 then
            G.call("talk",'',38,'   各有所爱，众口难调，将就吧！',3,0)
            G.call('all_over')               
        end 

    end 
    local int_选项 = 0
    while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'四：在游戏中，你希望有怎样的家境身世？',1,1,
        {"1,家道中落，流浪街头；","2,江湖虾米，勤能补拙；","3,农家小户，自食其力；","4,武林世家，粗通拳脚；","5,粗通医理，悬壶济世；","6,唐门弟子，略通毒性；"},1)
        if int_选项 == 1 then
            G.call("talk",'',38,'   兄弟不必灰心，日后定有贵人扶持',3,0)
            G.call('add_point',19,20)
            G.call('all_over')
        elseif  int_选项 == 2 then
            G.call("talk",'',38,'   祖传武功，不可荒废！',3,0)
            G.call('learnmagic',83)
            G.call('all_over')
        elseif  int_选项 == 3 then
            G.call("talk",'',38,'   朴实的生活造就了你淳朴的性格',3,0)
            G.call('add_point',20,15)
            G.call('add_point',15,15)
            G.call('all_over')
        elseif  int_选项 == 4 then
            G.call("talk",'',38,'   你身怀十八般武艺，却是样样稀松。',3,0)
            for i = 22,26 do 
                G.call('add_point',i,math.random(10))
            end     
            G.call('all_over')               
        elseif  int_选项 == 5 then
            G.call("talk",'',38,'   你有一颗仁义之心！',3,0)
            G.call('add_point',33,math.random(20,40))
            G.call('all_over')  
        elseif  int_选项 == 6 then
            G.call("talk",'',38,'   对毒性你也只是一知半解！',3,0)
            G.call('add_point',32,math.random(20,30))
            G.call('all_over')      
        end 

    end 
    local int_选项 = 0
    local o_hotkey = G.QueryName(0x100c0001)
    local o_body= G.QueryName(0x10030001)
    while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'五：你觉得自己在哪类武功上会有天赋？',1,1,
        {"1,拳掌","2,指法","3,剑法","4,刀法","5,奇门","6,暗器"},1)
        if int_选项 == 1 then
            G.call('add_point',22,math.random(15,25)) 
            o_hotkey[tostring(1)]= 0x10050053
            G.call('all_over')
        elseif  int_选项 == 2 then
            G.call('add_point',23,math.random(15,25)) 
            o_hotkey[tostring(1)]= 0x10050075
            G.call('all_over')
        elseif  int_选项 == 3 then
            G.call('add_point',24,math.random(15,25)) 
            o_hotkey[tostring(1)] = 0x1005002a  --快捷1设置为基本剑法
            G.call('add_item',2,1)      --增加物品木剑
            o_body[tostring(193)] = 0x100b0001      --佩戴物品木剑
            G.call('all_over')
        elseif  int_选项 == 4 then
            G.call('add_point',25,math.random(15,25)) 
            o_hotkey[tostring(1)] = 0x1005000d   
            G.call('add_item',30,1)      
            o_body[tostring(193)]  = 0x100b0000+29       
            G.call('all_over')
        elseif  int_选项 == 5 then
            G.call('add_point',26,math.random(15,25)) 
            o_hotkey[tostring(1)] = 0x10050018   
            G.call('add_item',56,1)      
            o_body[tostring(193)]  = 0x100b0037 
            G.call('all_over')               
        elseif  int_选项 == 6 then 
            G.call('add_point',34,math.random(15,25)) 
            o_hotkey[tostring(1)] = 0x10050000+3   
            G.call('add_item',63,1)      
            o_body[tostring(198)]  = 0x100b003e 
            G.call('all_over')
            
        end 

    end 
    local int_选项 = 0
    while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'六：你觉得自己哪项资质会比较有优势？',1,1,
        {"1,根骨","2,悟性","3,福缘","4,灵敏","5,定力"},1)
        if int_选项 == 1 then
            G.call('add_point',17,math.random(10))
            G.call('all_over')
        elseif  int_选项 == 2 then
            G.call('add_point',18,math.random(10))
            G.call('all_over')
        elseif  int_选项 == 3 then
            G.call('add_point',19,math.random(10))
            G.call('all_over')
        elseif  int_选项 == 4 then
            G.call('add_point',20,math.random(10))
            G.call('all_over')               
        elseif  int_选项 == 5 then 
            G.call('add_point',21,math.random(10))
            G.call('all_over')
            
        end 

    end 
    local int_选项 = 0
    while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'七：如果机缘得宜，有位高人答应收你为徒，是因为。。。？',1,1,
        {"1,淳朴的天性","2,根骨资质俱佳","3,资质异常劣势","4,高人要挂了，急于找个传人传授武功"},1)
        if int_选项 == 1 then
            G.call('add_point',15,50)
            G.call('all_over')
        elseif  int_选项 == 2 then
            G.call('add_point',17,5)
            G.call('add_point',18,5)
            G.call('all_over')
        elseif  int_选项 == 3 then
            G.call('add_point',20,-5)
            G.call('add_point',19,50)
            G.call('all_over')
        elseif  int_选项 == 4 then
            G.call('add_point',27,10)
            G.call('add_point',47,200)
            G.call('all_over')               

        end 

    end 
    local int_选项 = 0
    while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'八：有一天，你被高人责骂，是因为。。。。。？',1,1,
        {"1,滥用武功惹是生非","2,心思庞杂无心练功","3,偷学武功犯了大忌","4,糟老头嫉妒自己天分过高，担心会青出于蓝"},1)
        if int_选项 == 1 then
            G.call('add_point',15,-15)
            G.call('all_over')
        elseif  int_选项 == 2 then
            G.call('add_point',21,-10)
            G.call('all_over')
        elseif  int_选项 == 3 then
            G.call('add_point',15,-30)
            G.call('add_point',18,-3)
            G.call('all_over')
        elseif  int_选项 == 4 then
            G.call('add_point',15,-10)
            G.call('add_point',18,5)
            G.call('all_over')               

            
        end 

    end 

    local int_选项 = 0
    while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'九：高人指出你武功始终进步不大的原因是因为。。。？',1,1,
        {"1,心有贪念","2,武功根基不够扎实","3,先天资质不适合练武","4,领悟能力太差"},1)
        if int_选项 == 1 then
            G.call('add_point',21,-8)
            G.call('all_over')
        elseif  int_选项 == 2 then
            for i = 22,26 do 
                G.call('add_point',i,-2)
            end  
            G.call('all_over')
        elseif  int_选项 == 3 then
            for i = 16,21 do 
                G.call('add_point',i,-2)
            end  
            G.call('all_over')
        elseif  int_选项 == 4 then
            G.call('add_point',18,-6)
            G.call('all_over')               

            
        end 

    end 
    local int_选项 = 0
    while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'十：游戏江湖前，师父对你的告诫是。。。？',1,1,
        {"1,不要误入歧途","2,不可耍小聪明投机取巧","3,钱要省着花","4,天下没有免费的午餐",'5,记得按时吃药'},1)
        if int_选项 == 1 then
            G.call('add_point',21,-5)
            G.call('add_point',15,-5)
            G.call('all_over')
        elseif  int_选项 == 2 then
            G.call('add_point',18,-3)
            G.call('all_over')
        elseif  int_选项 == 3 then
            G.call('add_money',-500)
            G.call('all_over')
        elseif  int_选项 == 4 then
            G.call('add_point',19,-20)
            G.call('all_over')               
        elseif  int_选项 == 5 then 
            G.call('add_maxhpmp',45,-33)
            G.call('all_over') 
        end 

    end 
    local int_选项 = 0
    while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'十一：以下几位谁和你的梦中情人最接近？',1,1,
        {"1,黄蓉","2,水笙","3,李莫愁","4,阿紫",'5,灭绝师太','6,东方不败'},1)
        if int_选项 == 1 then
            G.call('add_love',12,20) 
            G.call('all_over')
        elseif  int_选项 == 2 then
            G.call('add_love',248,20)
            G.call('all_over')
        elseif  int_选项 == 3 then
            G.call('add_love',135,20)
            G.call('add_love',405,20)
            G.call('all_over')
        elseif  int_选项 == 4 then
            G.call('add_love',19,20)
            G.call('all_over')               
        elseif  int_选项 == 5 then 
            G.call('add_love',61,20)
            G.call('add_love',406,20)
            G.call('all_over') 
        elseif  int_选项 == 6 then 
            G.call('add_love',180,20) 
            G.call('all_over') 
        end 

    end 
    local int_选项 = 0
    while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'十二：生死关头，你必须要舍弃一样东西，你会舍弃什么？',1,1,
        {"1,富可敌国的财富","2,出生入死的朋友","3,惊世骇俗的武功","4,难以对往事的回忆"},1)
        if int_选项 == 1 then
            G.call('add_money',-G.call('get_money'))  
            G.call('all_over')
        elseif  int_选项 == 2 then
            G.call('add_point',15,-50)
            G.call('all_over')
        elseif  int_选项 == 3 then
            for i = 22,26 do 
               G.call('set_point',i,math.floor(G.QueryName(0x10030001)[tostring(i)]/2))
            end  
            G.call('all_over')    
        elseif  int_选项 == 4 then
            G.call('add_point',18,-20)
            G.call('all_over')               
        end 

    end 
    local week = G.call('get_point',237)
    if week > 5 then 
        week = 5 
    end 
    if week < 2 then
        G.QueryName(0x10030001)[tostring(200)] = 25
        local int_选项 = 0
        while int_选项 == 0 do
            int_选项 = G.call("menu",'',0,'十三：请选择默认的游戏存档',1,1,
            {"1,存档一","2,存档二","3,存档三"},1)
            if int_选项 == 1 then
                G.QueryName(0x10030001)[tostring(143)] = 1
                G.call('all_over')
            elseif  int_选项 == 2 then
                G.QueryName(0x10030001)[tostring(143)] = 2
                G.call('all_over')
            elseif  int_选项 == 3 then
                G.QueryName(0x10030001)[tostring(143)] = 3
                G.call('all_over')   
            end 
    
        end 
        G.QueryName(0x10160000 +G.call('get_point',143)).难度 = 1 
    else
        local int_选项 = 0
        while int_选项 == 0 do
            int_选项 = G.call("menu",'',0,'十三：请选择游戏难度',1,1,
            {"1,休闲","2,普通","3,困难"},1)
            if int_选项 == 1 then
                G.QueryName(0x10160000 +G.call('get_point',143)).难度 = 1 
                G.QueryName(0x10030001)[tostring(200)] = 25
                G.call('all_over') 
            elseif  int_选项 == 2 then  
                G.QueryName(0x10160000 +G.call('get_point',143)).难度 = 2
                G.QueryName(0x10030001)[tostring(200)] = 75  
                G.call('all_over') 
            elseif  int_选项 == 3 then
                G.QueryName(0x10160000 +G.call('get_point',143)).难度 = 3
                G.QueryName(0x10030001)[tostring(200)] = 125
                G.call('all_over') 
            end
        end
        G.QueryName(0x10160000 +4).难度 = G.QueryName(0x10160000 +G.call('get_point',143)).难度
        --print(G.QueryName(0x10160000 +G.call('get_point',143)).难度,G.QueryName(0x10160000 +4).难度)
        local 印记 = {}
        local int_印记数量 = 0
        for i = 1,14 do
            if G.call('通用_拥有印记',i) then 
                int_印记数量 = int_印记数量 + 1
            else
                table.insert(印记, i)
            end 
        end
        if int_印记数量 < 14 and G.misc().重生 == 0 then 
            G.call('add_equip',0x10180028 + 印记[math.random(#印记)],1)  --随机给出印记
        elseif int_印记数量 == 14 and G.misc().重生 == 0 then 
            G.call('add_equip',0x10180028 + 15,1)
        end
       
    end 
    --根据难度进行超过上限属性调节
    local int_难度 = G.QueryName(0x10160000 +G.call('get_point',143)).难度
    local int_点数 = 100
    local o_body = G.QueryName(0x10030001)
    for i = 16,37 do 
        if i >= 22 then 
            if int_难度 == 1 then 
                int_点数 = 100
            elseif int_难度 == 2 then 
                int_点数 = 120
            elseif int_难度 == 3 then 
                int_点数 = 150
            end
        end
        if o_body[tostring(i)] > int_点数   then 
            o_body[tostring(i)] = int_点数
        end 
    end
    --
    local int_选项 = 0
    while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'十四：选择游戏限制年数',1,1,
        {"1,二年","2,三年","3,无限制"},1)
        if int_选项 == 1 then
            G.QueryName(0x10030001)[tostring(66)] = 2
            G.call('all_over') 
        elseif  int_选项 == 2 then  
            G.QueryName(0x10030001)[tostring(66)] = 3
            G.call('all_over') 
        elseif  int_选项 == 3 then
            G.QueryName(0x10030001)[tostring(66)] = 0
            G.call('all_over') 
        end

    end  
    --根据周目数随机出主角4个被动
    local m = {0,0,0,0}
    local t = {1,4,5,7,8,10,11,12,13,14}
    --local t = {1,4,5,7,8,10,11,12,13,14,22,23,24}
    local len = #t
    local r = math.random(len)
    m[1] =t[r]
    table.remove(t, r)
    len = #t
    r = math.random(len)	
    m[2] =t[r]
    table.remove(t, r)
    len = #t
    r = math.random(len)	
    m[3] =t[r]
    table.remove(t, r)
    len = #t
    r = math.random(len)	
    m[4] =t[r]
    table.remove(t, r)
    local point = 0
    local maxpoint = 0
    local achieve = G.DBTable('o_achieve')
    for i = 1,#achieve do 
        local o_achieve = G.QueryName(0x10170000+i)
        for n = 1,#o_achieve.进度列表 do
            maxpoint = maxpoint + o_achieve.进度列表[n].分数
            if o_achieve.进度列表[n].完成 == 1 then
                point = point + o_achieve.进度列表[n].分数  
            end
        end
    end
    point = point + math.random(5)
    if point >= 1000 then 
        local int_选项 = 0
        while int_选项 == 0 do
            int_选项 = G.call("menu",'',0,'十五：需要消耗1000成就点换取下列哪一项？',1,1,
            {"1,换取一本秘籍","2,换取一件装备","3,换取大还丹","4,换取腊八粥","5,换取银钱","6,都不需要"},1)
            if int_选项 == 1 then
                local item = {121,120,124,125,100,117,106}
                point = point - 1000 + math.random(5) 
                G.call('set_item',item[math.random(#item)],1 )
            elseif  int_选项 == 2 then 
                local item = {25,54,61,74,72,91} 
                point = point - 1000 + math.random(5) 
                G.call('set_item',item[math.random(#item)],1 )
            elseif  int_选项 == 3 then
                point = point - 1000 + math.random(5) 
                G.call('set_item',224,math.random(3))
            elseif  int_选项 == 4 then
                point = point - 1000 + math.random(5) 
                G.call('set_item',238,math.random(3))
            elseif  int_选项 == 5 then   
                point = point - 1000 + math.random(5) 
                G.call('add_point',110,math.random(5,10)*10000)
            elseif  int_选项 == 6 then    
            end

        end 
        G.call('all_over')
    end
    local int_no = 0
    if point >= 500 and point < 1500 then
        int_no = 1
    elseif point >= 1500  and point < 3000 then 
        int_no = 2
    elseif point >= 3000 and point < 5000 then 
        int_no = 3
    elseif point >= 5000 then 
        int_no = 4
    end
    local int_true = 0
    if int_no >= 2 then 
        local int_选项 = 0
        while true do
            int_选项 = G.call("menu",'',0,'十六：[02]你能兑换[03]'..int_no..'[02]个被动,需要兑换几个？',1,1,
            {"1,一个","2,二个","3,三个","4,四个","5,全部兑换修为点"},1)
            if int_选项 == 1 then
                int_true = 1
                G.call("talk",'',38,'   [02]那就给你兑换[03]'..int_true..'[02]个被动，剩下的将给你自动兑换为修为点',3,0)
                break
            elseif  int_选项 == 2 then  
                int_true = 2
                G.call("talk",'',38,'   [02]那就给你兑换[03]'..int_true..'[02]个被动，剩下的将给你自动兑换为修为点',3,0)
                break
            elseif  int_选项 == 3 then
                if int_no < 3 then 
                    G.call("talk",'',38,'   [02]你的成就点只够兑换[03]'..int_no..'[02]个被动，请重新选择！',3,0)
                else
                    int_true = 3
                    G.call("talk",'',38,'   [02]那就给你兑换[03]'..int_true..'[02]个被动，剩下的将给你自动兑换为修为点',3,0)
                    break
                end    
            elseif  int_选项 == 4 then
                if int_no < 4 then  
                    G.call("talk",'',38,'   [02]你的成就点只够兑换[03]'..int_no..'[02]个被动，请重新选择！',3,0)
                else
                    int_true = 4
                    G.call("talk",'',38,'   [02]那就给你兑换[03]'..int_true..'[02]个被动，剩下的将给你自动兑换为修为点',3,0)
                    break
                end 
            elseif  int_选项 == 5 then
                int_true = 0
                G.call("talk",'',38,'   那就全部给你兑换成修为点',3,0)  
                break
            end
        end 
        G.call('all_over')
    else
        if int_no >= 1 then 
            int_true = 1     
        else
            int_true = 0
        end
    end  
    local int_point = math.floor( (point - 250*int_true*(int_true + 1 )   )      /20)
    if int_point > 0 then 
        G.call('add_point',5,int_point)
        G.call('set_point',76,int_point)
    end
    if int_true > 0 then    
        for i = 1,int_true do 
            if G.QueryName(0x10030001)[tostring(110+i)] == 0 then   
                G.QueryName(0x10030001)[tostring(110+i)] = m[i]
            end
        end 
    end
    G.call('指令_存储属性')
    G.call('rest')
    G.misc().人物头像 = G.call('get_point',119)
    G.call('指令_备份基础属性')
    G.misc().通关 = 0
    G.call('通用_随机种子')
    G.call('通用_宝物随机种子')
    G.call('通用_大随机种子')
    G.call('set_point',140,0x10060002)
    G.call('通用_存档',G.call('get_point',143)) 
    G.call('通用_存档',4)
    G.call('list')
    G.call('序幕_开始')
end
t['序幕_开始']=function()
    G.call('goto_map',17)
    G.call("talk",'',147,'   看来来迟了',5,0)
    G.call("talk",'',210,'   按理说，凭得十数位当今武林一等一的好手同时催发内劲，当可使时空逆转，叫这混乱武林秩序恢复正常。怎么会突然失败了？',5,0)
    G.call("talk",'',159,'   独孤老兄，有件事确是在我等预料之外。老道适才掐指算过，在诸位高手发功之时，一股怪异气劲莫名出现，冲撞了诸人合力产生的气场。老道担心的是，此番不但功败垂成，只怕此时的天下已更加混乱...',5,0)
    G.call("talk",'',209,'   嗯，不错。老衲已用“心眼”看过了，适才诸人的合力虽经冲撞，但本身力道倒也颇为惊人，真的是把这世道乾坤倒转，回到了十数年前。只是，三丰所说不差，武林从此多风雨，更大的浩劫恐将不久降临。',5,0)
    G.call("talk",'',147,'   眼下之急，我等不但要查清那股外力的产生原委，更要在这茫茫人海中选出一名身具天命之人，来应对这场武林浩劫。',5,0)
    G.call("talk",'',159,'   要不是咱们几个老家伙内外功已臻至化境、超脱物外不受其感，这才免受这乾坤逆转的影响。而知道此事的，也就咱们四人了。',5,0)
    G.call("talk",'',209,'   少林、武当历来菁英辈出，但其他门派也偶有不世奇才，我们可要细心查访才是',5,0)
    G.call("talk",'',210,'   看来老夫的独孤剑法又要再觅传人了...',5,0)
    G.call("talk",'',147,'   当年的一部《九阴真经》，现在也不知辗转落入了何方...',5,0)
    G.call('all_over')
    G.call('英雄途径牛家村')
end    
t['英雄途径牛家村']=function()
    G.call('goto_map',2)
    G.call("talk",'',0,'   原来这里就是传说中的牛家村。常说“山村之中必多隐士”，我得仔细探访一番，莫要和前辈高人们失之交臂。',0,0)
    G.Play(0x4901000b, 1,true,1)
    G.call("talk",'',0,'   咦？！前面围了那么多人，发生什么状况?',0,0)
    G.call('all_over')
    G.call('photo0',2)
    G.call("talk",'',0,'   请问，这里发生了什么事。失火烧了民屋么，怎么大家都脸有愤懑之色?',1,0)
    G.call('all_over')
    G.call("talk0",'村民甲','   造孽啊——造孽。郭杨两家忠良之后，却要横遭此劫。',126,163)
    G.call("talk0",'村民乙','   天地不仁啊，恶霸贪官视我等为草芥，忠良之后又如何？岳大将军还不一样惨死。。',-112,157)
    G.call("talk0",'村民丙','   啸天大哥和铁心大哥侠义豪迈，古道热肠。可叹会栽在段天德那狗官的手里。',111,156)
    G.call("talk",'',0,'   诸位可是在讲这里有两位好汉被个叫【段天德】的恶官给害了么？',1,0)
    G.call('all_over')
    G.call("talk0",'村民丙','   正是这般。小哥貌似不是本地人，此间曲直一时难以说清，你要是喜管闲事的话，就多去打听打听，说不定能为忠良们出口恶气；如果只为路过，劝你还是听过就算了。',111,156)
    G.call("talk",'',0,'   此事既然叫我知道了，便不能善罢。灭了段天德那厮便作为本少侠初出茅庐的第一功！',1,0)
    G.call('all_over')
    G.call('photo0_off')
    G.call('set_note','初出江湖，追查段天德行踪，为忠良报仇！')
    G.call('mapon')
    G.call('通用_存档',G.call('get_point',143)) 
    G.call('通用_存档',4)
end  
t['途径牛家村-书生']=function() 
    local a1 = '据传大清入关前，曾在关外埋了批宝藏，作为不时之需。江湖中无人不对这些财宝眼红心热，只是不知这宝藏的门径...'
    local a2 = '人言道：武林至尊，宝刀屠龙。号令天下，莫敢不从。倚天不出，谁与争锋？ 屠龙宝刀至今下落不明，但这倚天剑，据说现为峨嵋派掌门——灭绝师太的随身佩剑..'
    local a3 = '数十年前，福建林家出了位绝世高手，以七十二路辟邪剑法胜遍黑白两道，后来此人开创福威镖局，声势与日俱隆...'
    local a4 = '自一代宗师张三丰开辟武当一脉来，武当派立时崛地而起，成为与少林并立称雄一大武林门派...'
    local a5 = '书接上回：且说西门庆去不多时，包了一包砒霜，递与王婆收了…'
    local a6 = '那一日，大清的某位王爷遭了仇家的埋伏，一路落难至此，有位妇人将其收留照顾，这王爷伤愈后，便一去无踪信。而此事从头到尾，这妇人的汉子却全然不知情。这段孽情便有此而生...'
    local a7 = '叹那郭杨两家忠良之后，却落得如此境地——欲知后事如何，且听下回分解...'
    local a={a1,a2,a3,a4,a5,a6,a7}
    local b = a[math.random(7)]
    G.call("talk",'',66,'    '..b,2,1)
    if b == a[7]  then 
        G.call("talk",'',0,'   郭杨两家的后事怎么样了，你倒是说来听听。',0,0)
        G.call("talk",'',66,'   这位大爷问了：郭杨两家后事如何？ ——这后事嘛，就是将来事，将来事谁也说不准，你却叫我如何说。日后说不定这普天之下能给此事有个交代的，就属大爷你一人了。',1,1)
    elseif b == a[6] then
        G.call('set_story',1,2)
    end 
    G.call('all_over')
end  
t['途径牛家村-曲菲菲']=function() 
    G.call("talk",'',90,'   请问客官您是吃饭还是住店？本店供应各种江南小吃，因季节原因部分商品已经涨价。在本店住宿【六个时辰】只需五十两银子。',1,1)
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,我要买些小吃，打包带走","2,给我一间客房，我去休息","3,没什么事情，我看看便走"},0) 
        if int_选项 == 1 then
            G.call('all_over')  
            G.call('shop',1)
            if  G.call('getprice') > 0 then 
                if  G.call('getprice') < G.call('get_money')  then 
                    G.call('buyresult')
                else
                   G.call("talk",'',90,'   这位小哥的玩笑可是开大了。小店本小利微，可经不起吃白食啊。你点了这么多饭菜，而你的钱袋好似不够鼓啊。',1,1)
               end 
            else
            end
            G.call('all_over')  	  
        elseif int_选项 == 2 then 
            if  G.call('get_money') > 50 then 
                G.call('add_money',-50)
                G.call('all_over')
                G.trig_event('休息')   
                G.call('turn_map') 
            else
                G.call("talk",'',90,'   实在对不住，我们这个小店向来是不会请客人赊账留宿的。',1,1)   
            end  
            G.call('all_over')   
        elseif int_选项 == 3 then 
            G.call('all_over') 	
        end     
    end
end   
t['途径牛家村-算命先生']=function() 
    local a1 = '   左手财来，右手散。这位客官不久将会有散财之虞。'
    local a2 = '   破财消灾当保平安。莫要把钱财身外物看得太重，不然会横遭祸难。'
    local a3 = '   富贵滚滚来，闭门挡不住。像你这有福之人，富贵荣华是想甩都甩不掉的啦。'--_root.sort_exp("福缘", 5);
    local a4 = '   不义之财不可留，祸凶难料使人愁。这卦上说的清楚，客官最近想必有笔横财入账，若处理不当，哪便是祸不是福啊。'
    local a5 = '   红鸾遥不及，颓然自相顾。卦象说：你这时候姻缘运不旺，想找红颜相伴，难比登天。'
    local a6 = '   红颜命薄宜独处。古来红颜多薄命，客官切莫贪图女色。这卦上讲要是终老一生那是最妙不过。'
    local a7 = '   此事古难全，千里共婵娟。这卦的意思大概是你最终不会和你的伴侣走到一起，只会天各一方。'
    local a8 = '   美色纷然至，劝君多采撷。呵呵，客官的桃花运来了，所谓机不可失，能否抱得美人归就看您的本事了。'--_root.sort_exp("福缘", 5);
    local a9 = '   无可奈何花落去，一江春水向东流。你的前程看似很尴尬的境地，只好一切随缘而行了。。'
    local a10 = '   显望功名弃君去，千载修行一朝散。所谓为山九仞功亏一篑，此卦预示阁下将会走错关键一步，导致前功尽弃。'
    local a12 = '   莫愁前途无贵人，明帮暗扶送青云。客官日后多会有贵人相扶携，自可逢凶化吉遇难成祥。'
    local a13 = '   盲人骑瞎马，夜半临深池。大凶险啊大凶险，客官前途步步危机，刻刻艰险，小心谨慎为妙。'
    local a11 = '   屋漏偏逢连阴雨，破船横遇顶头风。卦上揭示，您的十年好运已经到头，接下来便是你的十年霉运了。'
    local a14 = '   天堂有路你不往，偏寻地狱丧命门。客官似乎大有明知山有虎偏向虎山行的豪气，但是卦上言道此行可谓凶险非常。'
    local a15 = '   福浅命薄，早作打算。此卦非凶非吉，当以平常心视之。'
    local a16 = '   命里注定彭祖寿，人间现世南极翁。您生就一副长命像貌，自必会福寿百年子孙满堂的。'--_root.sort_exp("根骨", 5);
    local a17 = '   刀头舔血凶险命，河冰履步惊魂心。客官现在处境可是大大的妙，可谓危机四伏，一不留心小心有头睡觉没头起床。'
    local a={a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14,a15,a16,a17}
    local b = a[math.random(17)]
    G.call("talk",'',67,'   算卦，算卦，算灵卦。有灾的消灾，有难的解难，无灾无难保平安.算卦一两，解卦免费！',1,1)
    local int_选项 = 0
	while true do
        int_选项 = G.call("menu",nil,0,'',0,0,{"1,先生请给我算一卦","2,求神问卜不如自己作主，不算不算"},0) 
        if int_选项 == 1 then 
            if G.call('count_day') ~= G.QueryName(0x10030001)[tostring(142)] then 
                if G.call('get_money') > 1 then 
                    G.call("talk",'',67,b,2,1)
                    G.call('add_money',-1)
                    if b == a3 or b == a8 then 
                        G.call('add_point',19,5)
                    elseif  b == a16 then 
                        G.call('add_point',17,5)
                    end 
                    G.QueryName(0x10030001)[tostring(142)] = G.call('count_day')
                else 
                    G.call("talk",'',67,'   老夫的卦十卦九不差，只收一两银子可说是物美价廉，您若连一两也拿不出，老夫这卦您怕是算不成了。',1,1)
                end     
            else
                G.call("talk",'',67,'   老夫一日只算一卦，这数十年间从未例外，今日也不会为你例外。请改日再来。',1,1)
            end  
            G.call("talk",'',67,'   算卦，算卦，算灵卦。有灾的消灾，有难的解难，无灾无难保平安.算卦一两，解卦免费！',1,1) 

        elseif int_选项 == 2 then 
            G.call('all_over')
            break
        end
    end     
end  
t['途径牛家村-肉贩']=function() 
    G.call("talk",'肉  贩',49,'   新鲜的肉嘞，童叟无欺价格公道！',1,1)
    local int_选项 = 0
	while true do
        int_选项 = G.call("menu",nil,0,'',0,0,{"1,我看看你这都有什么肉好买","2,我这又有些野味，你看着出个好价钱吧",'3,我是随便看看，没什么好买的'},0) 
        if int_选项 == 1 then 
            G.call('all_over')  
            G.call('shop',2)
            if  G.call('getprice') > 0 then 
                if  G.call('getprice') < G.call('get_money')  then 
                    G.call('buyresult')
                else
                   G.call("talk",'肉  贩',49,'   钱不够？没钱就别乱动老子卖的肉！',1,1)
               end 
            else
            end  
            G.call("talk",'肉  贩',49,'   新鲜的肉嘞，童叟无欺价格公道！',1,1)
        elseif int_选项 == 2  then
            G.call('all_over')  
            G.call('shop',3)
            if G.QueryName(0x10030001)[tostring(234)] == 1 then 
                if  G.call('getprice') > 0 then 
                    G.call('sellresult') 
                    local 数量 = {'数量1','数量2','数量3','数量4','数量5','数量6','数量7','数量8'} 
                    local int_商店代码 = G.QueryName(0x10030001)[tostring(232)] 
                    if  G.call('getprice') >= 500 and G.call('get_item',278) == 0 then
                        G.call('add_item',278,1) 
                        G.call("talk",'肉  贩',49,'   好小子，收成看来不错啊。给你件【剥皮刀】，打猎时运气好的话，手抓到的猎物就可以获得他们的皮毛了，这些皮毛或许日后还能有其他用途呢',1,1) 
                    else
                        if G.QueryName(0x10130000 +int_商店代码)[数量[8]] > 0 then 
                            if G.call('get_CH','打虎英雄') == false then 
                                G.call('set_CH','打虎英雄')
                                G.call("talk",'肉  贩',49,'   哇！虎掌！！！这老虎真是你打死的吗？小英雄真是深藏不露啊。这里的恶虎伤人多年，自当年武二英雄景阳冈打虎之后，还没听说现在还有谁能再杀这恶虎的',1,1) 
                                G.call('notice1','获得打虎英雄称号')
                                G.call('add_point',14,50) 
                            end 
                        else    
                            if G.QueryName(0x10130000 +int_商店代码)[数量[7]] > 0 then 
                                if G.call('get_CH','杀熊小勇士') == false then 
                                    G.call('set_CH','杀熊小勇士')
                                    G.call("talk",'肉  贩',49,'   好本事啊，当年只有郭杨两位大哥才能杀死黑熊，想不到英雄出少年！',1,1) 
                                    G.call('notice1','获得杀熊小勇士称号')
                                    G.call('add_point',14,10) 
                                end 
                            else
                                G.call("talk",'肉  贩',49,'   小兄弟好身手，再打到野味还要记得卖给俺啊，不会亏待你的！',1,1)  
                            end 
                        end  
                    end 
                else
                    G.call("talk",'肉  贩',49,'   混小子，敢消遣你爷爷我！你再胡闹爷爷把你下水挖出来当杂碎卖了！',1,1) 
                end         
            else
            end  
            G.call("talk",'肉  贩',49,'   新鲜的肉嘞，童叟无欺价格公道！',1,1)   
        elseif int_选项 == 3 then     
            G.call('all_over')
            break
        end     
    end        
end 
t['途径牛家村-乞丐乙']=function() 
    local BJ = G.call('get_point',130)
    if BJ > 50 then 
        G.call("talk",'乞丐乙',173,'   这位小哥有没有兴趣跟着赌几把？咱赌小的，一注五两，说不定你还能发笔小财呢。',1,1)
        local int_选项 = 0
        while int_选项 == 0 do
            int_选项 = G.call("menu",nil,0,'',0,0,{"1,好吧，我便试试手气","2,我一向运气不好，还是不赌了"},0)  
            if int_选项 == 1 then 
                G.call('all_over')
                if G.call('get_point',130) >= 50 then 
                    G.call('gambling') 
                    G.call('add_time',4)
                else
                   G.call("talk",'乞丐乙',173,'   不赌了，都被你赢光了！',1,1)
                end 
                G.call('all_over')
                G.call('turn_map')
            elseif int_选项 == 2 then 
                G.call('all_over')  
            end 
        end
    else 
        G.call("talk",'乞丐乙',173,'   俺袋里的钱都叫你赢光了，做不成庄，还是不赌了。我把分舵的活动经费都赌出去了，可怎么向舵主交代啊。',1,1)
        local int_选项 = 0
        while int_选项 == 0 do
            if (G.call('get_point',237) > 1  or G.misc().测试  ) then 
                int_选项 = G.call("menu",nil,0,'',0,0,{"1,小赌怡情咱就图个乐，这些钱你先拿去耍吧","2,我想加入【丐帮】,大哥引荐一下吧！","3,等你有钱了咱们再赌几把"},0)  
                if int_选项 == 1 then 
                    G.call('set_newpoint',130,G.call('get_newpoint',130) - math.floor(G.call('get_money')/2) )
                    G.call('set_point',130,G.call('get_point',130) + math.floor(G.call('get_money')/2) )
                    if G.call('get_money')/2 > 1000 then  
                        G.call('add_money',-math.floor(G.call('get_money')/2))
                        G.call('add_love',173,10)
                        G.call("talk",'乞丐乙',173,'   嘿嘿，小老弟出手豪爽，想必今日也是运势正旺。来来来，咱兄弟再陪你大杀四方。',1,1)
                    else 
                        G.call('add_money',-math.floor(G.call('get_money')/2)) 
                        G.call('add_love',173,-10)
                        G.call("talk",'乞丐乙',173,'   格老子的，你消遣大爷？这么点钱都开不了几局，还冒充别人发善心做施舍。你要是敢把我们丐帮不放在眼里，我们自会叫你坐卧不宁！',1,1)  
                    end 
                    G.call('all_over')
                elseif int_选项 == 2 then 
                    if G.call('get_money') > 1000 then 
                        G.call("talk",'乞丐乙',173,'   那感情好，小老弟，我就给你引荐，嘿嘿，这钱我也却之不恭了！',1,1)
                        G.call('set_newpoint',130,G.call('get_newpoint',130) - 1000 )
                        G.call('set_point',130,G.call('get_point',130) + 1000 )
                        G.call('add_money',-1000)
                        G.call('all_over')
                        G.call('初入丐帮') 
                    else
                        G.call("talk",'乞丐乙',173,'   小老弟，你忽悠我吧，这都不够你赢我的钱！',1,1)
                        G.call('all_over')
                    end
                elseif int_选项 == 3 then 
                    G.call('all_over')     
                end
            else
                int_选项 = G.call("menu",nil,0,'',0,0,{"1,小赌怡情咱就图个乐，这些钱你先拿去耍吧","2,等你有钱了咱们再赌几把"},0)  
                if int_选项 == 1 then 
                    G.call('set_newpoint',130,G.call('get_newpoint',130) - math.floor(G.call('get_money')/2) )
                    G.call('set_point',130,G.call('get_point',130) + math.floor(G.call('get_money')/2) )
                    if G.call('get_money')/2 > 1000 then
                        G.call('add_money',-math.floor(G.call('get_money')/2))
                        G.call('add_love',173,10)
                        G.call("talk",'乞丐乙',173,'   嘿嘿，小老弟出手豪爽，想必今日也是运势正旺。来来来，咱兄弟再陪你大杀四方。',1,1)
                    else 
                        G.call('add_money',-math.floor(G.call('get_money')/2)) 
                        G.call('add_love',173,-10)
                        G.call("talk",'乞丐乙',173,'   格老子的，你消遣大爷？这么点钱都开不了几局，还冒充别人发善心做施舍。你要是敢把我们丐帮不放在眼里，我们自会叫你坐卧不宁！',1,1)  
                    end 
                    G.call('all_over')
                elseif int_选项 == 2 then 
                    G.call('all_over')     
                end
            end
        end
    end     
end  
t['途径牛家村-乞丐甲']=function() 
    if G.call('get_story',0) == 0  then 
        G.call("talk",'乞丐甲',171,'   咱们丐帮兄弟遍布天下，决计没有事情能逃得过咱们的一双眼睛。',1,1)
        local int_选项 = 0
        while true do
            int_选项 = G.call("menu",nil,0,'',0,0,{"1,兄弟最近手头紧，可知哪里能挣到些小钱？","2,小弟初来乍到，不通世故，请多多指点",'3,我见村内两家房屋被焚毁，可知房主的来头'},0)
            if int_选项 == 1 then 
                G.call("talk",'乞丐甲',171,'   【河边】钓到的鱼虾、【树林】里打到的野兽肉都可以到肉贩那里贩卖；你若是赌品好，运气还不赖的话，我的一班兄弟倒可跟你玩玩骰子。',1,1)
                G.call("talk",'乞丐甲',171,'   咱们丐帮兄弟遍布天下，决计没有事情能逃得过咱们的一双眼睛。',1,1)
            elseif int_选项 == 2  then 
                G.call("talk",'乞丐甲',171,'   【学得一身好武艺】是你在江湖中安身立命的最基本要求；【广交四海朋友】也是为了方便你日后行走江湖；要是做到让江湖上尽人皆知人所共仰那就得【提高江湖声望】。不过钱财才是最根本，所以你得先学些挣钱的手段。',1,1)
                G.call("talk",'乞丐甲',171,'   咱们丐帮兄弟遍布天下，决计没有事情能逃得过咱们的一双眼睛。',1,1)
            elseif  int_选项 == 3  then 
                G.call('all_over')
                G.call("talk",'乞丐甲',171,'   那两家，一家主人要郭啸天，乃是当年梁山好汉的后人。另一人姓杨名铁心，乃是杨家将的后人。两人可谓英雄侠士。',1,1)
                G.call("talk",'',0,'   两位好汉因何故被何人所害？',0,0) 
                G.call("talk",'乞丐甲',171,'   行凶的那伙人为首叫段天德，只是小小一名参将。那狗官的辖区并非这里，两兄弟更不会得罪他。定是狗官得了某人的授意，要灭郭杨两家满门。不知是否跟月前流落自此的一名异族将官有关联？',1,1)
                G.call("talk",'',0,'   那异族将官为何人?"',0,0) 
                G.call("talk",'乞丐甲',171,'   现为大清藩王——完颜洪烈，此人现已不知去向。至于此事的隐情，我们也正在详查之中，我们也想为这对忠烈之后出口恶气。',1,1)
                if G.call('get_story',1) == 2 then 
                    G.call("talk",'',0,'   我听人说村里曾有位夫人收留过一名落难的大清王爷，莫非便是这完颜洪烈，连这敌国之人也敢收留，真是糊涂得很。',0,0) 
                    G.call("talk",'乞丐甲',171,'   哎呀，那妇人莫不是杨家嫂子？她可是村里出了名的善心人，别说是歹人，便是飞禽猛兽受伤她也会细心照料。而且在现场也确未发现杨家嫂子尸身，莫非……兄弟，此事不可乱传，免得坏了杨大哥的名头。',1,1)
                    G.call("talk",'',0,'   看来弄清这事的原委是非要找到【段天德】和【完颜洪烈】两人问个明白才行了。',0,0) 
                    G.call('set_story',1,3)
                    G.call('set_story',0,1)
                    G.call('all_over')  
                else 
                    G.call("talk",'乞丐甲',0,'   这完颜洪烈多半是偶然经过，这两件事实在想不通有什么大关连。不管原委如何，只要把这匪首段天德捉来一问便知道了。',0,0)
                    G.call('set_story',1,1)
                    G.call('set_story',0,1)
                    G.call('all_over')    
                end  
                break
            end    
        end
    else
        G.call("talk",'乞丐甲',171,'   咱们丐帮兄弟遍布天下，决计没有事情能逃得过咱们的一双眼睛。',1,1)
        local int_选项 = 0
        while true do
            int_选项 = G.call("menu",nil,0,'',0,0,{"1,兄弟最近手头紧，可知哪里能挣到些小钱？","2,小弟初来乍到，不通世故，请多多指点",'3,在下没什么事打扰了'},0)
            if int_选项 == 1 then 
                G.call("talk",'乞丐甲',171,'   【河边】钓到的鱼虾、【树林】里打到的野兽肉都可以到肉贩那里贩卖；你若是赌品好，运气还不赖的话，我的一班兄弟倒可跟你玩玩骰子。',1,1)
                G.call("talk",'乞丐甲',171,'   咱们丐帮兄弟遍布天下，决计没有事情能逃得过咱们的一双眼睛。',1,1)
            elseif int_选项 == 2  then 
                G.call("talk",'乞丐甲',171,'   【学得一身好武艺】是你在江湖中安身立命的最基本要求；【广交四海朋友】也是为了方便你日后行走江湖；要是做到让江湖上尽人皆知人所共仰那就得【提高江湖声望】。不过钱财才是最根本，所以你得先学些挣钱的手段。',1,1)
                G.call("talk",'乞丐甲',171,'   咱们丐帮兄弟遍布天下，决计没有事情能逃得过咱们的一双眼睛。',1,1)
            elseif  int_选项 == 3 then
                 G.call('all_over')
            break
            end 
        end    
    end 
end   
t['途径牛家村-慧伦']=function() 
    G.call("talk",'',91,'   敝派掌门师叔开设【少林第三十六房】，专收俗家弟子，希望能借此传播少林武功。凡是人品正直，自信有能力熬过少林寺一年苦修的有志青年，均可报名。',1,1)
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",nil,0,'',0,0,{"1,我愿加入【少林寺】","2,还要在少林受一年戒律，我可受不了"},0) 
        if int_选项 == 1 then 
            G.call('add_point',14,100)
            G.call('add_day',5)
            G.call("talk",'',91,'   敝派掌门师叔开设【少林第三十六房】，专收俗家弟子，希望能借此传播少林武功。凡是人品正直，自信有能力熬过少林寺一年苦修的有志青年，均可报名。',1,1)
            G.call('all_over')
            G.call('初入少林')
        elseif int_选项 == 2 then 
            G.call('all_over')
        end     
    end 
end  
t['途径牛家村-渔夫']=function() 
    G.call("talk",'渔  夫',137,'   “孤舟蓑笠翁，独钓寒江雪”，我这是在钓有缘人哪，哈哈。',1,1)
    local int_选项 = 0
    while int_选项 == 0 do
        int_选项 = G.call("menu",nil,0,'',0,0,{"1,我想请教垂钓之术","2,怎么能弄到蚯蚓？",'3,没什么事情，我是路过的'},0) 
        if int_选项 == 1 then 
            if G.call('get_item',282) < 1 then 
                G.call('add_item',282,1)
                G.call('add_item',318,20)
                G.call("talk",'渔  夫',137,'   看你这可怜巴巴的样子，多半是来这钓鱼又没带渔具。既然你我今日能见便是有缘，这【鱼竿】和二十条【蚯蚓】都给了你吧。',1,1)
                G.call('all_over')
                G.call('fishing')
                G.call('add_time',4)  
                G.call("talk",'渔  夫',137,'   收获怎么样？现在的年轻人可是很少有耐性能安稳坐下来享受垂钓的乐趣了。',1,1)
            else
                G.call("talk",'渔  夫',137,'   要钓鱼吗？没有鱼饵蚯蚓我可不白给了，得拿钱来买，缘分归缘分买卖归买卖。',1,1)
                if G.call('get_item',318) < 1 then
                    G.call("talk",'渔  夫',137,'   莫非你钓鱼不用鱼饵？想学姜太公直钩垂钓？！鱼饵不够就赶紧来我这买点啊。',1,1)
                else
                    G.call('all_over')
                    G.call('fishing') 
                    G.call('add_time',4) 
                    G.call("talk",'渔  夫',137,'   收获怎么样？现在的年轻人可是很少有耐性能安稳坐下来享受垂钓的乐趣了。',1,1) 
                end     
            end 
            G.call('all_over')
            G.call('turn_map')      
        elseif int_选项 == 2 then  
            G.call("talk",'渔  夫',137,'   这个就得自己去树林抓了！',1,1) 
            G.call('all_over')  
        elseif int_选项 == 3 then
            G.call('all_over') 
        end     
    end     
end
t['途径牛家村-老猎人']=function() 
    G.call("talk",'老猎人',54,'   年岁不饶人，老朽这【百步穿杨】的名号怕是早已名存实亡了。打不到青蛇胆和黑熊胆，老朽的【百胆大补酒】更是要功亏一篑喽。',1,1)
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",nil,0,'',0,0,{"1,向老人家请教射猎之术","2,我这里有些熊胆、蛇胆之类，都给了你吧",'3,没什么事情，我是路过的'},0) 
        if int_选项 == 1 then 
            if G.call('get_item',277) < 1 then 
                G.call('add_item',277,1)
                G.call("talk",'老猎人',54,'   打猎没有弓箭，难不成你凌空瞪上几眼，猎物便死了？拿去，用老朽这张弓，去射几只雀儿下来。',1,1)
                G.call('all_over') 
                G.call('hunting')
                G.call("talk",'老猎人',54,'   不错不错，你颇有老朽当年的神韵，看来这张弓自当是属你不可了，哈哈哈。',1,1)
            else
                G.call("talk",'老猎人',54,'   你已经掌握了射猎的要领，老朽也没什么好教的了，要打猎就自便吧',1,1)
                G.call('all_over') 
                G.call('hunting')
                G.call("talk",'老猎人',54,'   不错不错，你颇有老朽当年的神韵，看来这张弓自当是属你不可了，哈哈哈。',1,1)
            end 
            G.call('all_over')
            G.call('add_time',4) 
            G.call('turn_map')
        elseif  int_选项 == 2 then  
            if G.call('get_item',217) == 0 and G.call('get_item',218) == 0  then 
               G.call("talk",'老猎人',54,'   胡闹胡闹，你哪里有什么蛇胆熊胆？存心要使老朽空欢喜一场。',1,1)
            else
                G.call('add_love',54,G.call('get_item',217)+G.call('get_item',218)*2)
                G.call('add_point',3,G.call('get_item',217)*5+G.call('get_item',218)*12)
                if G.call('get_love',54) >= 60 and G.call('get_magic',9) == 0 then 
                    if G.call('get_item',63) < 1 then  
                        G.call('add_item',63,300)
                    end     
                    G.call("talk",'老猎人',54,'   你这射猎的本事真是与日俱增啊，你这小娃很是对老朽胃口，老朽这【青字九打】的暗器手法和这许多的飞镖都给了你罢。',1,1)
                    G.call('learnmagic',9)
                elseif G.call('get_item',217) >= 100 and G.call('get_item',218) >= 100 and  G.call('get_love',54) >= 100  then
                    G.call("talk",'老猎人',54,'   年轻人不错，来瓶百胆大补酒！',1,1)
                    G.call('add_item',337,1)
                elseif G.call('get_item',218) > 5 and G.call('get_item',73) == 0  and G.call('get_love',54) >= 70  then 
                    G.call("talk",'老猎人',54,'   好汉子！当年老朽在山上射猎黑熊，不想箭枝用尽，被那黑熊追得满山跑，结果还是本村的杨大侠最后救了老朽，这件【皮甲】也是他赠送的，今日我便转送给你吧。',1,1)
                    G.call('add_item',73,1)
                elseif G.call('get_item',217) > 5 and   G.call('get_love',54) >= 70  then 
                    G.call("talk",'老猎人',54,'  了不起，打到这么多蛇胆。那些毒物一般人可真是碰都不敢碰啊。为表谢意，给你些【黄连解毒丸】，或许日后会派上用场。',1,1)
                    G.call('add_item',237,5)  
                end 
                G.call('add_item',217,-G.call('get_item',217)) 
                G.call('add_item',218,-G.call('get_item',218))  
            end 
            G.call('all_over')
        elseif  int_选项 == 3 then 
            G.call('all_over')
        end 
    end
end    
t['途径牛家村-中年樵夫']=function() 
    G.call("talk",'中年樵夫',138,'   砍树伐木也是讲究技巧的，只会使蛮力拿镰刀斧头向树干拼命招呼，便是新打磨的也砍不到几颗树。',1,1)
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",nil,0,'',0,0,{"1,向大叔请教伐木之术","2,我这里有些砍下的木柴，你收下吧",'3,没什么事情，我是路过的'},0) 
        if int_选项 == 1 then 
            if G.call('get_item',31) < 1 then 
                G.call('add_item',31,1)
                G.call("talk",'中年樵夫',138,'   看来你还没有预备砍树的工具吧，砍树所需要的只是技巧，至于用什么工具那就不拘一格，我这把【生锈的铁刀】你拿去用吧，用的巧一样不逊于利斧。',1,1)
                G.call('all_over')
                G.call('logging')
                G.call("talk",'中年樵夫',138,'   你以为这砍树的本事一朝一夕就可练得出吗？砍树的技巧也如同练武，你若能在砍树中悟出什么，那么你距离武学之道也差不远了。',1,1)
            else
                G.call("talk",'中年樵夫',138,'   哈哈，怎么砍树还上瘾了，砍下树得到木柴你若是用不着的话可以拿来给我，不过我可没什么东西回赏你',1,1)
                G.call('all_over')
                G.call('logging')
                G.call("talk",'中年樵夫',138,'   你以为这砍树的本事一朝一夕就可练得出吗？砍树的技巧也如同练武，你若能在砍树中悟出什么，那么你距离武学之道也差不远了。',1,1)
            end 
            G.call('all_over')
            G.call('add_time',4) 
            G.call('turn_map')
        elseif  int_选项 == 2 then
            if G.call('get_item',280) < 1 then 
                G.call("talk",'中年樵夫',138,'   你是想让我把你砍成木柴吗？你倒自己瞧瞧，你身上哪有什么木柴的半点影子！',1,1)  
            else
                G.call('add_love',138,G.call('get_item',280))
                G.call('add_point',3,G.call('get_item',280)*10)
                if G.call('get_love',138) >= 60 and G.call('get_magic',10) == 0 then 
                    G.call("talk",'中年樵夫',138,'   不错不错，你这小子明知没什么回报，还是这么不余遗力的给我辛苦砍柴，看你辛苦的份上，我便把这套【柴刀十八路】传授给你！',1,1)
                    G.call('learnmagic',10)
                else
                    G.call("talk",'中年樵夫',138,'   没想到你小子砍柴倒是很有一套，以后专给别人砍柴作为生计倒也不错。',1,1)       
                end  
                G.call('add_item',280,-G.call('get_item',280))    
            end 
            G.call('all_over')  
        elseif  int_选项 == 3 then 
            G.call('all_over')
        end 
    end
end  
t['途径牛家村-乞丐丙']=function() 
    local int_物品代码 = {178,184,168,185,173,174,170,167,171,157,158}
    local int_no = int_物品代码[math.random(11)] 
    local o_item = int_no - 1 + 0x100b0000
    local o_item_名称 = G.QueryName(o_item).名称  
    local a1 = '你这是找的哪家的厨子？手艺这么差！拿去喂猪都嫌勉强。'
    local a2 = '这种偏僻的小山村的厨子多半也就是这种手艺了'
    local a3 = '吃这种东西简直影响我的心情。'
    local a4 = '拿去倒掉，倒掉。你这东西是给人吃的吗？'
    local a5 = '想不到你还真好心，这种玩意虽然不值什么钱，但是你能辛苦给我找来，我便承你这个情了。'
    local a6 = '你这么有耐心的巴结我，多半没按什么好心眼。看你就像个笑嘻嘻的大花痴。'
    local a7 = '你没吃过好饭好菜，也总该见过好饭好菜吧。这厨艺讲究色香味意形，看看你拿来的，再美味的食材到了庸人手里，做出来只会跟狗屎一样。'
    local a8 = '人在屋檐下怎可不低头，谁叫我现在离乡背井呢，只能忍气吞声吃这种粗坯饭菜了。'
    local a9 = '想不到这村子里的大厨竟然还有那么一两手，竟然可以把这道【'..o_item_名称..'】做的略具火候。'
    local a10 = '我不白吃你这饭菜，这二百两银子就当是给你的跑腿费了。'
    local a={a1,a2,a3,a4,a5,a6,a7,a8,a9,a10}
    local b = a[math.random(10)]
    G.call("talk",'',11,'   这种破地方又冷又脏，我还得在这待多久呢。我好饿哦，这位小哥你给我弄份【'..o_item_名称..'】来给我解解饿吧！',1,1)
    local int_选项 = 0
	while true do
        int_选项 = G.call("menu",nil,0,'',0,0,{"1,我这里正好有你要的东西，就给了你吧。","2,谁有功夫满足你这个小丐的无礼"},0) 
        if int_选项 == 1 then 
            if G.call('get_item',int_no) < 1 then 
                G.call("talk",'',11,'   你这坏人！人家都快饿死了，你还有心思开玩笑！你哪有我要的【'..o_item_名称..'】啊！',1,1)
            else
                G.call('add_item',int_no,-1) 
                G.call('add_love',12,3)
                G.call('add_love',11,3)
                G.call('add_schoollove',6,1)
                G.call("talk",'',11,'    '..b,2,1)
                if b == a[5] then 
                    G.call('add_love',12,1)
                    G.call('add_love',11,1)
                elseif  b == a[6] then
                    G.call('add_love',12,-1) 
                    G.call('add_love',11,-1)  
                elseif  b == a[7] then
                    G.call('add_point',37,1)
                elseif  b == a[10] then
                    G.call('add_money',200)
                end     
            end 
            G.call('all_over')
            break
        elseif  int_选项 == 2 then    
            G.call('all_over')
            break
        end 
    end
end  
t['途径牛家村-何红药']=function() 
    G.call("talk",'',102,'   教主那黄毛丫头不知道怎么想的，非要叫我们到这汉人呆得地方找更具威力的【五圣】，这丫头还真是不知道汉人的歹毒心肠更甚于【五圣】。',1,1)
    local int_选项 = 0
	while true do
        int_选项 = G.call("menu",nil,0,'',0,0,{"1,我这里刚好有你需要的，给你吧","2,请问你所说的【五圣】是指什么？",'3,没什么事情，我是路过的'},0) 
        if int_选项 == 1 then 
            if G.call('get_item',286) < 1 and G.call('get_item',291) < 1 and G.call('get_item',292) < 1
            and G.call('get_item',293) < 1 and G.call('get_item',294) < 1 then 
                G.call("talk",'',102,'   中原男子不但负心薄性，而且还诡诈可恶！你若不想帮我这老乞婆，不帮便是，为何敢来欺骗我？你当我五毒教的女子都好受男人欺负吗？',1,1)
            else 
                local n = G.call('get_item',286)  + G.call('get_item',291) + G.call('get_item',292)+ G.call('get_item',293)+ G.call('get_item',294)
                G.call('add_love',102,n)   
                G.call('add_point',3,n*4) 
                G.call("talk",'',102,'   嗯，你肯为我五毒教做事，那便是朋友不是敌人了，日后遇上我们自当会礼遇三分的。',1,1) 
                G.call('add_item',286,-G.call('get_item',286)) 
                G.call('add_item',291,-G.call('get_item',291)) 
                G.call('add_item',292,-G.call('get_item',292)) 
                G.call('add_item',293,-G.call('get_item',293)) 
                G.call('add_item',294,-G.call('get_item',294)) 
                if G.call('get_love',102) > 80 then 
                    G.call('add_love',102,-10) 
                    if G.call('get_magic',202) == 0 then 
                        G.call('learnmagic',202)
                        G.call("talk",'',102,'   我何红药不喜欠人恩惠，你相助五毒教却也是省了我很多麻烦，这套【基本解毒】我传授给你，那便是两不相欠了。',1,1) 
                    elseif  G.call('get_magic',125) == 0 then 
                        G.call('learnmagic',125)
                        G.call("talk",'',102,'   我何红药不喜欠人恩惠，你相助五毒教却也是省了我很多麻烦，这套【千珠万毒手】我传授给你，那便是两不相欠了。',1,1) 
                    elseif  G.call('get_item',198) == 0 then
                        G.call("talk",'',102,'   我何红药不喜欠人恩惠，你相助五毒教却也是省了我很多麻烦，这几瓶【五宝花蜜酒】是我教圣药，我给了你，那便是两不相欠了。',1,1) 
                        G.call('add_item',198,5)
                    end             
                end     
            end
            G.call("talk",'',102,'   教主那黄毛丫头不知道怎么想的，非要叫我们到这汉人呆得地方找更具威力的【五圣】，这丫头还真是不知道汉人的歹毒心肠更甚于【五圣】。',1,1)
        elseif  int_选项 == 2 then 
            G.call("talk",'',102,'   这【五圣】乃是我们云南五毒教对五种圣物的统称，这五种圣物分别为——蝮蛇、蟾蜍、蜈蚣、蝎子、蜘蛛。这些东西虽是毒物，但却是我们五毒教赖以生存的命根。我们练功、伤敌、制药全依赖【五圣】。',1,1)
            G.call("talk",'',102,'   教主那黄毛丫头不知道怎么想的，非要叫我们到这汉人呆得地方找更具威力的【五圣】，这丫头还真是不知道汉人的歹毒心肠更甚于【五圣】。',1,1)   
        elseif  int_选项 == 3 then 
            G.call('all_over')
            break
        end 
    end
end  
t['途径牛家村-破庙无人']=function() 
    G.call("talk",'',0,'   都这么晚了，想必这里也不会有什么事情发生，我也该早些洗洗睡了。',0,0)
    G.call('all_over')
    G.call('goto_map',2)    
end
t['途径牛家村-水笙与血刀僧']=function() 
    G.call('all_over')
    G.call('dark')
    G.call("talk",'',143,'   你这妞还挺标致，还是不要再跑了！',1,1) 
    G.call("talk",'',0,'   [06]那边白马上乘的是个少女，二十岁上下年纪，白衫飘飘，左肩上悬着一朵红绸制的大花，脸容微黑，相貌却极为俏丽,不过却怎么被后面那和尚一直追着跑？',0,0)
    G.call("talk",'',248,'   这位大哥，快帮帮我！',1,1)
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",nil,0,'',0,0,{'1,帮助水笙','2,帮助血刀僧','3,闲事还是不要管的好'},0) 
        if int_选项 == 1  then
            G.call('all_over')
            G.call('set_story',52,1)
            G.call("talk",'',0,'   青天白日就强抢民女，你这恶僧也太猖狂了吧！',0,0)
            G.call("talk",'',143,'   小子，凭你也敢管老子的闲事，不想死的给老子滚开！',1,1) 
            G.call("talk",'',0,'   遇见不平事还是要管上一管的！',0,0)
            G.call("talk",'',143,'   找死！',1,1) 
            G.call('all_over')
            G.call('call_battle',1,7,1,30,143,0,0,0,0,0)
            G.call("talk",'',0,'   姑娘快跑',0,0)
            G.call("talk",'',143,'   一个也别想跑！',1,1) 
            G.call("talk",'',83,'   你这恶僧还不给我----滚！',1,1)
            G.call("talk",'',143,'   【东邪】怎么在这里，还是闪呼！',1,1)  
            G.call("talk",'',0,'   多谢前辈相救',0,0)
            if G.call('get_point',18) >= 80 and G.call('get_story',3) ~= 5 then 
                G.call("talk",'',83,'   你这娃儿怎么这样不自量力，不过很对脾气，可否愿意随我去桃花岛？',1,1)
                local int_选项 = 0
                while int_选项 == 0 do
                    int_选项 = G.call("menu",nil,0,'',0,0,{'1,我要加入【桃花岛】','2,我可不想太受约束'},0) 
                    if int_选项 == 1 then 
                        G.call("talk",'',83,'   不错，愚子可教也！',1,1) 
                        G.call('add_point',14,100)
                        G.call('初入桃花岛')
                    elseif int_选项 == 2 then 
                        G.call("talk",'',83,'   真是冥顽不灵！',1,1) 
                        G.call('all_over')
                        G.call('dark')
                    end
                end
            else
                if G.call('get_story',3) ~= 5 then 
                    G.call("talk",'',83,'   你这娃儿怎么这样不自量力，真是愚蠢至极！',1,1) 
                else
                    G.call("talk",'',83,'   你这娃儿前几天竟然放任盗贼，我【桃花岛】不收你这种奸邪小人！',1,1) 
                end
                G.call('all_over')
                G.call('dark')
            end
        elseif int_选项 == 2 then 
            G.call('set_story',52,2)
            G.call('all_over')
            G.call("talk",'',0,'   [05]看这和尚武功高强，何不........',0,0) 
            G.call("talk",'',0,'   姑娘你就从了这位和尚师父吧！',0,0)
            G.call("talk",'',248,'   原来你也是个[03]小淫贼[02]，今日看来是凶多吉少！',1,1)
            G.call("talk",'',143,'   小子，可知道女人家最宝贵的是什么东西?',1,1) 
            G.call("talk",'',0,'   这.........',0,0)
            if G.call('get_point',15) > 0 then 
                G.call("talk",'',143,'   看你小子还不够邪气，已是无缘，罢了罢了！',1,1) 
                G.call('all_over')
            else
                G.call("talk",'',143,'   女人家最宝贵的，是她的脸蛋。这小妞儿不回答我的说话，我用刀在她脸上横划七刀，竖砍八刀，这一招有个名堂，叫做‘横七竖八’，你说美是不美?',1,1) 
                G.call("talk",'',0,'   大师父神刀！',0,0)
                G.call("talk",'',143,'   看你这娃儿还挺懂事，可否愿意加入我老祖门下？',1,1)
                local int_选项 = 0
                while int_选项 == 0 do
                    int_选项 = G.call("menu",nil,0,'',0,0,{'1,我要加入【血刀门】','2,我可不想滥杀无辜'},0) 
                    if int_选项 == 1 then 
                        G.call("talk",'',143,'   那就带上这妞一起上路吧！',1,1) 
                        G.call('add_point',14,100)
                        G.call('add_day',5)
                        G.call('all_over')
                        G.call('初入血刀门')
                    elseif int_选项 == 2 then 
                        G.call("talk",'',83,'   真是冥顽不灵',1,1) 
                        G.call('all_over')
                        G.call('dark')
                    end
                end
            end
        elseif int_选项 == 3 then   
            G.call('set_story',52,3)
            G.call('all_over')
            G.call('dark')
        end  
    end 
end
t['途径牛家村-李捕头索债']=function() 
    G.call('all_over')
    G.Play(0x4901000b, 1,true,1)
    G.call('photo0',3)
    G.Stop(1)
    G.call("talk",'李捕头',51,'   死丫头！你家老子常常数日未归，这小酒馆还打算要不要了？全村只你这户拖欠了许久的治安费，今日便是说出天来，你也得把欠的费给爷补齐了，否则今天便封了你这店铺！',1,1)
    G.call("talk",'',90,'   你这个官爷还真不讲情理，趁我爹爹不在你就来欺负我这个女娃，算什么好汉？你们做官的往日在店里白吃白喝，没给半两银子。你如让交保护费就先把多年来赊下的账补齐了，我再跟你两不相欠！',1,1)
    G.call("talk",'李捕头',51,'   好个牙尖嘴利的黄毛丫头。今天大爷就是要趁你那瘸腿老爹不在，好好修理修理你！',1,1)
    G.call('all_over')
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",nil,0,'',0,0,{'1,这女娃孤掌难鸣，我须得帮上一帮','2,官字两个口，谁能惹得起，看看再说'},0) 
        if int_选项 == 1  then
            G.call('all_over')
            G.call("talk",'',0,'   这位官爷欺负一个弱质女流实在令人看得不爽，你们便就是这样维系一方百姓平安的吗?',0,0)
            G.call('photo0',4)
            G.call("talk",'李捕头',51,'   天下做官都是此般一样，作为贱民你只有低头忍着。谁叫你不做更大的官，只能怨你命数不好。你再啰嗦便把你一起收拾',1,1) 
            G.call("talk",'',0,'   做官做到你这么无耻，就早该遭报应。小爷我今天便是来替天行道的！',0,0)
            G.call("talk",'李捕头',51,'   呸！行你个头！看我来教训你！',1,1) 
            G.Play(0x4902000e, 1,false,100)
            G.call('playmovie',14,2000,-115,50)
            G.call('dark')
            G.call('playmovie',3,1000,8,150)
            G.call("talk",'',0,'   呃——',0,0)
            G.call('dark')
            G.call('set_story',2,2)
            G.call('goto_map',18)
            G.call("talk",'',90,'   你可是醒了，想不到你功夫这么差劲，还硬要学别人强出头真不害臊。若不是有位老道及时出现制止了狗官行凶，只怕你此时已在路上了。现在你筋骨已受损伤，日后多半难以复原。不过还要多谢你的好意，这【一百两银子】就当作补偿吧。',1,1) 
            G.call("talk",'',0,'   你说的那老道人在哪里？既然救了我性命，我理当去表示感谢',0,0)
            G.call("talk",'',90,'   他现在村外【树林】里等你，他也吩咐你若醒了就去找他，他也似有话要对你说。他还说他现在还有要紧事，你要是去的晚了，那就无缘相见了。',1,1) 
            G.call('add_money',100)
            G.call('all_over')
            G.call('add_hour',2)
        elseif int_选项 == 2 then 
            G.call('all_over')
            G.call('photo0',5)
            G.call("talk",'',166,'   贫道请官老爷高抬贵手',1,1) 
            G.call("talk",'李捕头',51,'   爷爷打出去的拳便没有收回去的道理，多个管闲事的老道，你就先吃我一拳！',1,1)
            G.Play(0x49020033, 1,false,100)
            G.call('playmovie',51,2000,-28,-28)
            G.call('set_story',2,3)
            G.call('dark')
            G.call('goto_map',2)   
        end           
    end    
end 
t['途径牛家村-丘处机入全真']=function() 
    G.call("talk",'',166,'   你总算是来了，贫道还以为真的和你无缘呢。贫道乍见你之下，便觉你和一位故人有几分相像，心中不禁一阵感慨。又见你挺身而出维护弱女，足有侠义之风。贫道心中有收你做全真弟子的打算，你可愿意？',1,1)  
    G.call("talk",'',0,'   慢着慢着。我昏迷刚醒，脑子还不大清楚。先谢过道长的救命之恩。请教道长法号，在何处出家？做全真弟子是干嘛的？',0,0)
    G.call("talk",'',166,'   呵呵，贫道一时心急，说话也就忘了次序。贫道乃是【全真教】重阳宫长春子——丘处机，我全真教功夫乃是玄门正宗，以修炼身心为根本，至高境界可以延年益寿羽化成仙...',1,1) 
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",nil,0,'',0,0,{'1,我要加入【全真教】','2,我不要出家，不要当道士'},0) 
        if int_选项 == 1 then 
            G.call("talk",'',166,'   太好了，我这就带你去重阳宫，告知全教。',1,1)  
            G.call('add_point',14,100)
            G.call('add_day',5)
            G.call('all_over')
            G.call('初入全真')
        elseif int_选项 == 2 then 
            G.call("talk",'',166,'   可惜可惜，太可惜了...',1,1) 
            G.call('set_story',2,4) 
            G.call('all_over')
        end            
    end     
end    
t['途径牛家村-丘处机2']=function() 
    G.call("talk",'',166,'   你鬼鬼祟祟跟来做什么？莫非是那狗官的同党？贫道做出的事情就绝不反悔。【全真教】长春子丘处机便是贫道，你们若是不服可随时到重阳宫找我！',1,1)  
    G.call("talk",'',0,'   道爷您误会了，我是碰巧经过。刚才的事情我也看到了，可惜我不会武功惹不起官府，希望道长能教我功夫，日后我也就能锄强扶弱了。',0,0)
    G.call("talk",'',166,'   "哼，行侠仗义本来就和武功强弱无关。若是没有侠义之心武功越强只会持强凌弱；如是身怀侠义，一介儒生也敢怒斥强暴。你还不配做我的弟子。',1,1) 
    G.call('all_over') 
    G.call('set_story',2,4)
end 
t['途径牛家村-破庙分赃']=function() 
    G.call('photo0',6)
    G.Play(0x49010023, 1,true,1) 
    G.call("talk",'盗匪戌',229,'   嘿嘿，哥几个今天收获都不小啊，老大见到咱们做成的这笔买卖一定会高兴得很',1,1)  
    G.call("talk",'盗匪庚',229,'   这种破村子也都没什么油水了，我看以后可以不必再来了',1,1)
    G.call("talk",'盗匪己',229,'   "不错，最近这村子里总会冒出一些看似身手不错的外来人，咱们需得提防留意啊',1,1) 
    G.call('all_over') 
    G.call('photo0',7)
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",nil,0,'原来这伙强盗在分赃！我是否该出手呢？',0,4,{'1,出手教训几个强盗','2,闲事不惹，早走为妙'},0) 
        if int_选项 == 1 then
            G.call('set_story',3,2)
            G.call('all_over') 
            G.call("talk",'',0,'   你们几个真是好嚣张啊！快点把这偷抢来的东西送回去，否则我可要对你们不客气了。',0,0)
            G.call('add_point',15,3)
            G.call("talk",'盗匪戌',229,'   你算是干什么的？大半夜的不在床上搂着枕头睡觉，瞎撒什么癔症。也好，你身上的盘缠也算是凑个数。看我先宰了你！',1,1) 
            G.call('all_over') 
            G.call('call_battle',1,7,1,30,229,0,0,0,0,0)
            local o_battle_结果 = G.call('get_battle')
            if o_battle_结果  == 1 then
                G.call('set_story',3,4)
                G.call("talk",'盗匪庚',229,'   哇哇哇！这小子把五当家的打死了，咱们快回去告诉大哥！',1,1)
                G.call('add_money',100)
                G.call('all_over')
                G.call("talk",'',0,'   哈哈，他们忙活了一晚倒叫我得了实惠，抢夺来的这【一百两银子】可就从此姓【'..G.QueryName(0x10030001)[tostring(1)]..'】了。',0,0)
                G.call("talk",'',0,'   此地不宜久留，他们要是叫来帮手报仇可就不妙了，三十六计先回村再说。',0,0)
                G.call('all_over')
            else
                G.call('set_story',3,3)
                G.call("talk",'',0,'   '..G.QueryName(0x10030001)[tostring(1)]..'某立志要闯荡江湖做番大事业，想不到今夜折在几个小小毛贼手里，我不甘心呐。',0,0)
                G.call("talk",'盗匪庚戌',229,'   谁叫你半夜不睡觉多管闲事！今天卖你个乖，老子做事历来有个规矩，图财不图命。你身上的钱全归老子了，至于你小子可以撒丫子滚了。',1,1)
                G.call("talk",'',0,'   你们这群乌龟王八蛋！老子总有一日会叫你们百倍千倍的偿还！',0,0)
                G.call('all_over')
            end
            G.call('dark') 
            G.call('add_time',4)
            G.call('turn_map')
        elseif int_选项 == 2 then 
            G.call('set_story',3,1)
            G.call('dark')
            G.call('goto_map',2)
        end     
    end    
end
t['途径牛家村-半瓶神仙醋']=function() 
    G.call('all_over')
    --_root.sound.loadMovie("sound/"+(random(5)+17)+".swf");（播放技能动画）
    if G.call('get_story',4) == 0 then 
        G.call("talk",'',38,'   这是哪里？我怎么跑到这种地方了？莫非近来做游戏太投入产生幻觉了。做梦？对，一定是做梦，等梦醒了一切都会正常...zzZ...zzZ',1,1)
        G.call("talk",'',0,'   真是个怪人',0,0)
        G.call('set_story',4,1)
        G.call('all_over') 
    elseif G.call('get_story',4) == 1 then
        G.call("talk",'',38,'   ...zzZ...zzZ...zzZ...zzZ',1,1)
        G.call("talk",'',0,'   站着都能睡着，真是厉害啊。',0,0)
        G.call('set_story',4,2)
        G.call('all_over') 
  
    elseif G.call('get_story',4) == 2 then
        G.call("talk",'',38,'   ...zzZ...zzZ...zzZ...zzZ',1,1)
        G.call("talk",'',0,'   此人装束不像是中原人，处处又透着古怪，不知道此时此地出现会有什么用意。',0,0)
        G.call('set_story',4,3)
        G.call('all_over') 
    elseif G.call('get_story',4) == 3 then
        G.call("talk",'',38,'   惨啦惨啦，我现在究竟是在睡着还是醒着？这里一切都那么眼熟又感到陌生，像是回到了古代。眼前还有个样貌古怪的人三番四次在我面前自言自语，莫非撞上了脑残人士？',1,1)
        G.call("talk",'',0,'   喂！怪模怪样的是你，大白天说梦话的也是阁下，你说的什么“脑残”怕是更适合阁下吧',0,0)
        G.call("talk",'',38,'   我不跟你做口舌之争，当务之急我是得先弄清现在是怎么个情况。在这村里似乎就你话多，我记下你了，待我弄清真相后会来找你的，我去也~',1,1)
        G.call("talk",'',0,'   神人啊——嗖的一声就不见踪影了。这个古怪的人日后有机会得结识一下。',0,0)
        G.call('set_story',4,4)
        G.call('all_over') 
    end 
end  
t['途径牛家村-强盗屠村']=function() 
    local int_mo = (229 - 224)*6+265
    G.call('all_over')
    G.call('photo0',8)
    G.Play(0x4901000b, 1,true,1)
    G.call("talk",'盗匪甲',230,'   我兄弟昨天夜里在破庙被人给害了。是你们谁干的？',1,1) 
    G.call("talk",'盗匪庚',229,'   大当家，是个年轻点的小子，有人看到他这几天经常在这村子里出没',1,1)
    G.call("talk",'盗匪甲',230,'   "废话我不多说，那小子既然不是这村里的人，你们也没必要袒护他。我说三声，若是没人把他给供出来，我就只好一个个把你们宰了，祭奠我死去的兄弟',1,1)
    G.call('photo0',9)
    G.Stop(1)
    G.call("talk",'',0,'   （这群家伙还真够嚣张，竟然找上门了。我就不相信那伙草包小弟还能有什么像样的大哥）',0,0)
    G.call("talk",'',0,'   你就是那几个窝囊小贼的头目吧。你们做了违法乱纪的事还竟然敢堂而皇之的大白天在众人面前叫嚣，你按的是什么胆子？',0,0)
    G.call("talk",'盗匪庚',229,'   大当家，是个年轻点的小子，有人看到他这几天经常在这村子里出没',1,1)
    G.call("talk",'盗匪甲',230,'   兄弟们，给我上！',1,1)
    G.call('all_over') 
    G.call('call_battle',1,7,1,30,int_mo,230,int_mo+2,0,0,0)
    local o_battle_结果 = G.call('get_battle')--_root.War("空  地", 229, 230, 229, 0, 0, 0, 0, 0.3, 1);
    if o_battle_结果  == 1 then
        G.call('add_point',15,5)
        G.call('add_point',14,50)
        G.call("talk",'盗匪甲',230,'   大侠果然是好本领阿好本领！我那不争气的兄弟既是死在大侠手里，也是他罪有应得，有劳大侠代我严惩。今后我一定约束兄弟们绝不再为非作歹了。',1,1) 
        G.call("talk",'',0,'   今天如不是我出手，这全村上下可能此时都无一活口了，你们的过错岂是三言两语就可赎清的。',0,0)
        G.call("talk",'盗匪甲',230,'   大侠教训的极是。小人愿拿出一百两捐给村里的穷苦百姓，另有【一百两】及【秘籍】一本是答谢大侠出手惩戒门下恶徒。',1,1) 
        G.call('photo0_off') 
        local int_选项 = 0
        while int_选项 == 0 do
            int_选项 = G.call("menu",nil,0,'',0,0,{'1,上天有好生之德，我今天就饶了你们','2,你们这群恶人休想腐败我，纳命来！ '},0) 
            if int_选项 == 1 then
                G.call('add_money',100)
                G.call('set_story',3,5)
                if G.call('get_point',15) <= -50 and (G.call('get_point',237) > 1  or G.misc().测试  )  then 
                    if G.call('get_item',102) == 0 then 
                        G.call('add_item',102,1) 
                    end
                    G.call('all_over')
                    G.call("talk",'',41,'   你这小兄弟应该很对我们星宿老仙的脾气，是否愿意加入我门【星宿派】？',1,1) 
                    local int_选项 = 0
                    while int_选项 == 0 do
                        int_选项 = G.call("menu",nil,0,'',0,0,{'1,我愿加入【星宿派】','2,我才不想和你们一样成天吹捧！'},0) 
                        if int_选项 == 1 then 
                            G.call("talk",'',41,'   哈哈哈，咱们事不宜迟，立刻动身赶往星宿，老仙见到你必定会喜欢的紧。',1,1) 
                            G.call('add_point',14,100)
                            G.call('add_day',5)
                            G.call('dark')
                            G.call('初入星宿')
                        elseif int_选项 == 2 then
                            G.call("talk",'',41,'   唉，可惜可惜。这也是各人有各人的缘法，勉强不得。小兄弟咱们后会有期了。',1,1) 
                            G.call('add_hour',1) 
                            G.call('dark')
                        end
                    end
                else
                    G.call("talk",'',67,'   你不杀伯仁，伯仁却因你而死。今天你放走了强盗，此后小村危如累卵矣，我等还是另谋栖身之地吧。',1,1) 
                    if G.call('get_item',115) == 0 then 
                        G.call('add_item',115,1) 
                    end
                    G.call('add_hour',1) 
                    G.call('dark')  
                end
            elseif int_选项 == 2 then 
                G.call("talk",'',66,'   造孽造孽，你怎么可以胡乱杀人，你眼里没有王法了吗？子曾经曰过“苦海无涯，回头是岸；放下屠刀，立地成佛”。你这种人草菅人命，早晚会遭报应的。',1,1) 
                G.call('add_point',15,10) 
                G.call('set_story',3,6)
                G.call('add_hour',1) 
                G.call('dark')
            end 
        end 
    elseif  o_battle_结果  == 2 then 
        G.call('set_story',3,7)
        G.call('add_point',15,5) 
        G.call("talk",'盗匪甲',230,'   你们这群人都给我看好了，这就是得罪我的下场！',1,1) 
        G.call("talk",'',162,'   武当俞岱岩在此！大胆鼠辈休要休得伤人性命！',1,1)
        G.call("talk",'盗匪甲',230,'   娘老子的，武当的七侠怎么跑到这小村了。兄弟们，点子太硬，扯乎啊——',1,1)
        G.call('photo0_off') 
        G.call("talk",'',0,'   （这位俞大侠一来，这群杀人不眨眼的魔头仿佛老鼠见了猫一般，武当七侠的威名果然令宵小之辈闻风丧胆）',0,0)
        G.call("talk",'',162,'   哈哈哈，这伙人的保命轻功倒是很不赖啊。小兄弟，像你如此的侠义心肠正是咱们武当派所推崇的。我看你气宇不俗一身正气，不如加入我们武当派如何？',1,1)  
        local int_选项 = 0
        while int_选项 == 0 do
            int_选项 = G.call("menu",nil,0,'',0,0,{'1,我愿加入【武当派】','2,武当虽好，怎比得花花世界逍遥自在'},0) 
            if int_选项 == 1 then 
                G.call("talk",'',162,'   哈哈哈，咱们事不宜迟，立刻动身赶往武当，家师见到你这位少年英雄必定会欢喜异常。',1,1) 
                G.call('add_point',14,100)
                G.call('add_day',5)
                G.call('dark')
                G.call('初入武当')
            elseif int_选项 == 2 then
                G.call("talk",'',162,'   唉，可惜可惜。这也是各人有各人的缘法，勉强不得。小兄弟咱们后会有期了。',1,1) 
                G.call('add_hour',1) 
                G.call('dark')
                G.call('mapon')
            end      
        end     
    end     
end   
t['途径牛家村-木高峰行凶']=function()
    G.call('all_over')
    G.call('photo0',10)
    G.Play(0x49010023, 1,true,1) 
    G.call("talk",'',218,'   林老头，我看你还是爽快说出来的好，你的宝贝儿子林平之现在已经拜在我的门下，还有什么话能跟他说却不能跟我这个当师父的说？',1,1)
    G.call("talk",'',251,'   木前辈...林某已经命在旦夕，只想最后再见一眼我家的孩子。林某家里...家里实在没有什么“辟邪剑谱”，你却叫我告诉你什么？',1,1)  
    G.call("talk",'',218,'   你儿子现在我手里，我叫他三更死他就活不到五更天。你要是不乖乖的说实话，我叫你们林家断子绝孙！',1,1)
    local int_选项 = 0
    while int_选项 == 0 do
        int_选项 = G.call("menu",nil,0,'',0,0,{'1,制止这驼子行凶','2,闲事莫惹，早走为妙'},0) 
        if int_选项 == 1 then
            G.call('set_story',5,1)
            G.call('all_over')
            G.call("talk",'',0,'   喂！你这个驼子好不要脸。威逼伤重病危之人，你这么做哪有半点爷们的做派？',0,0) 
            G.call("talk",'',218,'   驼子行事爱如何便如何，哪里轮得到你这黄口小儿来教训我！待驼子先料理了你再问老东西事情。',1,1)
            G.call("talk",'',0,'   你这家伙也不先问清我门派出身就先动手，你不怕我师父找你算账吗！',0,0) 
            G.call("talk",'',218,'   哈哈，我自然不会问。要是熟人的子弟我那还好意思下手啊，所以先灭了你，以后就算被找上来也最多是个“不知者不怪”。小子，你就认倒霉吧！',1,1)
            G.call("talk",'',2,'   前辈慢动手！华山派——令狐冲奉家师之命向木前辈问好。',1,1)
            G.call("talk",'',218,'   （华山派？这小子莫不是岳不群的弟子？这下可不好办了）嗯，你师父也来了？',1,1)
            G.call("talk",'',2,'   家师得知前辈在此，命前辈先来问候。家师此时应该已到庙门外等候了。',1,1)
            G.call("talk",'',218,'   这小子也是你们华山派的人？他坏了老子的好事，老子正要教训他！',1,1)
            local int_选项 = 0
            while int_选项 == 0 do
                int_选项 = G.call("menu",nil,0,'(我要不要先冒名一下，保命要紧)',0,4,{'1,不错，晚辈早就是华山派的门人！','2,我不是华山派的人'},0) 
                if int_选项 == 1 then
                    G.call('all_over') 
                    G.call("talk",'',218,'   罢了罢了，岳老儿在此怎有我驼子的份儿。倒不用见你师父啦，驼子还有要紧事，祝你师父早日练成绝世剑法，哈哈哈哈。',1,1)
                    G.call("talk",'',2,'   这怪人说练成什么剑法？莫名其妙。还好把他唬走了，不然我师父一时半会赶不到这里，咱哥倆可就要交代到这啦。',1,1)
                    G.call("talk",'',251,'   请问...这位小兄弟可是...可是华山岳掌门的高足吗？',1,1)
                    G.call("talk",'',2,'   晚辈正是华山派——令狐冲。林前辈的事情晚辈已经听说了，现在林平之已经拜在我师父门下跟我是同门师兄弟啦。我师父打听到余沧海和木高峰之流要对前辈一家不利，嘱咐我们四下寻找前辈，不想在这里遇到。',1,1)
                    G.call("talk",'',251,'   那样再好没有啦。我怕是没机会见到平之了，有几句话请你转告他。福州向阳巷老宅地窖中的东西，是……我林家祖传之物……咳咳咳……',1,1)
                    G.call("talk",'',2,'   前辈养好伤还是亲自跟你儿子说罢。',1,1)
                    G.call("talk",'',251,'   告诉他……那东西要……要好好保管，但……但他曾祖远图公留……有遗训，凡我子孙，不得……不得翻看，否则后患无穷，要……要他好好记住。多……多……多……',1,1)
                    G.call('set_note','听闻林家遗言，福州老宅藏密宝')
                    G.call('set_story',6,1)
                    G.call("talk",'',2,'   林前辈！林前辈！前辈已经伤重逝去了...',1,1)
                    G.call("talk",'',191,'   冲儿在里面吗？',1,1)
                    G.call("talk",'',2,'   兄弟，是我师父来了，我带你去见我师父。',1,1)
                    G.call('photo0_off')
                    G.call('goto_map',2)
                    G.call("talk",'',2,'   师父，那木高峰虽被吓走了，但是林前辈也已经伤重过世。弟子给你介绍一个刚认识的朋友。刚才若不是他在危急时刻先喝住了木高峰，恐怕林前辈就要被木驼子杀害了。',1,1)
                    G.call("talk",'',191,'   好，很好。年纪轻轻，武功虽弱，倒有付侠义心肠，不知道少侠想不想入我华山门下。',1,1)
                    G.call("talk",'',0,'   晚辈正是心仪已久，求之不得。师父在上弟子给您磕头了。',0,0)
                    G.call("talk",'',2,'   哈哈，你刚才哄骗那驼子说你“早晚都是华山派的人”，果然叫你给言中了。',1,1)
                    G.call("talk",'',191,'   林前辈去世前有没有什么事情放心不下，嘱托给你们的？',1,1)
                    G.call("talk",'',0,'   林前辈让我们转告林平之：福州向阳巷老宅...',0,0)
                    G.call("talk",'',191,'   好了，这个你们单独跟平之说，这是平之的家事，不要跟外人提起。咱们这就回华山吧。',1,1)
                    G.call('all_over')
                    G.call('mapon')
                    G.call('add_love',2,10)
                    G.call('add_point',14,100)
                    G.call('add_day',5)
                    G.call('初入华山')
                elseif int_选项 == 2 then 
                    G.call('all_over')
                    G.call("talk",'',218,'   妙极，这小子既然不是华山派的，令狐冲你就不要管闲事了。先等我教训了这小子我再去会见岳先生。',1,1)
                    G.call("talk",'',2,'   华山派历来就是名门正派，岂能袖手旁观你伤害无辜。你若想行凶，需得先过了我这关！',1,1)
                    G.call('set_team',2,0,0,0)
                    G.call('call_battle',1,19,2,30,218,0,0,0,0,0)
                    local o_battle_结果 = G.call('get_battle') --_root.War("破庙内部", 0, 218, 0, 0, 0, 0, 1, 0.3, 1);     --临时战斗队友令狐冲
                    if o_battle_结果  == 1 or o_battle_结果  == 2 then
                        G.call('add_love',2,20)
                        G.call("talk",'',218,'   两个兔崽子有些门道啊，看来驼子今天得让你们开开眼界了！',1,1)
                        G.call("talk",'',2,'   这位朋友你赶快逃命吧，今天咱们相交一场他日有缘相见咱们再把酒言欢！',1,1)
                        G.call("talk",'',0,'   那可怎么行，你是为了救我才被牵扯了进来，我怎么能弃你不顾呢！',0,0) 
                        G.call("talk",'',2,'   你这家伙真不晓事！我华山剑术冠绝天下，但是精妙剑术从不外泄，今日好歹得使上一使。这木驼子早晚要死我剑下他看看倒无妨，你不是我华山派的，怎能叫你偷学了去。快走快走！',1,1) 
                        G.call("talk",'',0,'   谁稀罕学你的什么华山剑法，我是怕你敌不过他。',0,0)
                        G.call("talk",'',2,'   放你的臭屁！谁要你帮手！老子再不使那套剑法可就要被这驼子给杀了，也算是被你害的！还不快滚，我就骂你十八代祖宗！',1,1) 
                        G.call("talk",'',0,'   好，'..G.QueryName(0x10030001)[tostring(1)]..'某谢过令狐兄救命之恩，日后定当厚报！',0,0)
                        G.call('dark')
                        G.call('mapon')
                    end 
                end 
            end     
        elseif int_选项 == 2 then 
            G.call('set_story',5,2)
            G.call('dark')
            G.call('mapon')
        end      
    end        
end   
t['途径牛家村-超时']=function()
    G.call('all_over')
    G.call("talk",'乞丐甲',171,'   这位少侠稍停一步。听说你要急着找那段天德，但你可知段天德生的何副模样?现在又跑到哪去了？你这样没头苍蝇似的，找到老死也未必会能找到。',1,1)
    G.call("talk",'',0,'   多谢提醒，请老哥指点一二。',0,0) 
    G.call("talk",'乞丐甲',171,'   那段天德似与北方清廷的高官王爷们有所勾结，这贼子身为大宋官吏，却整日想着如何讨好那些番邦异族。他现在做了这样大的恶事，想来也不敢在原任上稳待了，多半是携着细软上京城去效忠了。',1,1)
    G.call("talk",'',0,'   犯了事就开溜真是没种，我这就北上找他去！',0,0) 
    G.call('all_over')
    G.call('add_day',5)
    G.call('初入聚贤庄')
end       