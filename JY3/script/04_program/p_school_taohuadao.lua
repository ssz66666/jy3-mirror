--[[4010

]]
local G = require "gf"
local L = {}
local t = G.api
local JY = 0
t['初入桃花岛'] = function()
    G.call('地图_进入地图','桃花岛大殿',95,39,0)
    G.call("talk",'',83,'   '..G.call('get_fullname')..',今日是你正式成为我【桃花岛】弟子，人看着还挺聪颖，不要让为师失望才好！',2,1) 
    G.call("talk",'',83,'   本来你前面还有几位师兄，说来话长就不说了，现在这岛上只有我那个调皮捣蛋的女儿和我日前从牛家村带来的那位傻姑娘，应该都可以做你师姐了！',2,1) 
    if G.call('get_love',12) >= 90 then 
        G.call("talk",'',12,'   '..G.call('get_fullname')..'还记得我吗？，不记得就算了，有时间记得来看我啊！',2,1) 
    else
        G.call("talk",'',12,'   '..G.call('get_fullname')..'有时间记得来看我啊！',2,1) 
    end
    G.call("talk",'',90,'   小师弟，咱们又见面了！',1,1)
    G.call("talk",'',83,'   本门看来目前也只有为师亲传你武功了，为师先传你【桃花岛心法】！,下去先好生练习，另外不要去本门禁地，还有务必将你师娘坟墓杂草清除干净，有不懂的地方问问你师姐吧！',2,1) 
    if G.call('get_magic',164) == 0 then
        G.call('learnmagic',164) 
    end        
    G.QueryName(0x10030001)[tostring(9)] = '桃花岛弟子'
    G.QueryName(0x10030001)[tostring(11)] = 1
    G.QueryName(0x10030001)[tostring(107)] = 1
    G.QueryName(0x10030001)[tostring(12)] = '黄药师'
    G.QueryName(0x10030001)[tostring(8)] = 8
    G.call('set_note','拜入桃花岛，一年之后再重出江湖')
    G.call('all_over')
    G.call('dark')
    G.call('goto_map',71)
    G.misc().除草次数 = 0
    G.call('all_over')
end
t['初入桃花岛-黄药师'] = function()
    G.call("talk",'',83,'   '..G.call('get_fullname')..',你找我有什么事情吗？',2,1)
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,学习【怪才】","2,请师父传授武功","3,与师父【切磋】武功","4,没什么事情，向师父请安而已"},0) 
        if int_选项 == 1 then
            G.call('all_over')
            G.call("talk",'',83,'   你来向我学习【怪才】吗？',2,1) 
            local int_选项 = 0
            while int_选项 == 0 do
                int_选项 = G.call("menu",'',0,'',0,0,{"1,弟子打算学习【怪才】【五天】","2,弟子打算学习【怪才】【十五天】","3,弟子是专程来给师父请安的"},0) 
                if int_选项 == 1 then 
                    G.call('add_point',107,25)
                    G.call('add_love',83,math.floor(G.call('get_point',11)*0.3))
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
                    G.call('add_love',83,math.floor(G.call('get_point',11)*0.5))
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
            if G.misc().除草次数 == nil then 
                G.misc().除草次数  = 0
            end
            if G.call('get_magic',95) == 0 and G.misc().除草次数 >= 1 then
                if G.call('get_magic_lv',164) == 5   then
                    G.call("talk",'',83,'   这手【劈空掌】讲究空实变幻，须多加练习！',2,1) 
                    G.call('learnmagic',95)
                else
                    G.call("talk",'',83,'   先将【桃花岛心法】练好再来找我！',2,1) 
                end
            elseif G.call('get_magic',90) == 0 and G.misc().除草次数 >= 3 then
                if G.call('get_magic',95) == 10   then
                    G.call("talk",'',83,'   这手【落英神剑掌】讲究剑掌配合，须多加练习！',2,1) 
                    G.call('learnmagic',90)
                else
                    G.call("talk",'',83,'   先将【劈空掌】练好再来找我！',2,1) 
                end
            elseif G.call('get_magic',64) == 0 and G.misc().除草次数 >= 6 then
                if G.call('get_magic',90) == 10   then
                    G.call("talk",'',83,'   这手【玉箫剑法】变幻莫测，须多加练习！',2,1) 
                    G.call('learnmagic',64)
                else
                    G.call("talk",'',83,'   先将【落英神剑掌】练好再来找我！',2,1) 
                end
            elseif G.call('get_magic',213) == 0 and G.misc().除草次数 >= 9 then
                if G.call('get_magic',64) == 10   then
                    G.call("talk",'',83,'   这门轻功【灵鳖步】讲究内息步伐相进！',2,1) 
                    G.call('learnmagic',213)
                else
                    G.call("talk",'',83,'   先将【玉箫剑法】练好再来找我！',2,1) 
                end
            else
                G.call("talk",'',83,'   学武切不可操之过急，另外记得每月去清除下你师娘坟墓的杂草！',2,1)  
            end
            G.call('all_over')
        elseif int_选项 == 3 then
            G.call("talk",'',83,'   正好让为师看看你最近练的怎么样！',2,1) 
            G.call('all_over')
            G.call('call_battle',1,10,1,G.call('get_love',83)*0.3,83,0,0,0,0,0)
            local o_battle_结果 = G.call('get_battle') --
            if o_battle_结果  == 1 then
                G.call('add_love',83,3)
                G.call("talk",'',83,'   还不错，竟然还能接下为师三层功力！',2,1) 
            else 
                G.call('add_love',83,-3)
                G.call("talk",'',83,'   你这功夫还需勤加练习才是！',2,1) 
            end 
            G.call('add_time',4)
            G.call('all_over')
            G.call('turn_map')
        elseif int_选项 == 4 then
            G.call('all_over')
        end
    end
    
end
t['初入桃花岛-傻姑'] = function()
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
    G.call("talk",'',90,'   '..G.call('get_fullname')..',你找我有什么事情吗？',2,1)
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,有什么需要吗？","2,【切磋】武功","3,没什么事情，路过而已"},0) 
        if int_选项 == 1 then
            G.call('all_over')
            G.call("talk",'',90,'   小兄弟你给我弄份【'..o_item_名称..'】来给我解解饿吧！',1,1)
            local int_选项 = 0
            while true do
                int_选项 = G.call("menu",nil,0,'',0,0,{"1,我这里正好有你要的东西，就给了你吧。","2,我还要练武实在没有功夫"},0) 
                if int_选项 == 1 then 
                    if G.call('get_item',int_no) < 1 then 
                        G.call("talk",'',90,'   你哪有我要的【'..o_item_名称..'】啊！',1,1)
                    else
                        G.call('add_item',int_no,-1) 
                        G.call('add_love',90,3)
                        G.call("talk",'',90,'    '..b,2,1)
                        if b == a[5] then 
                            G.call('add_love',90,1)
                        elseif  b == a[6] then
                            G.call('add_love',90,-1)  
                        elseif  b == a[7] then
                            G.call('add_point',37,1)
                        elseif  b == a[10] then
                            G.call('add_money',200)
                        end     
                    end 
                    if G.call('get_love',90) >= 90 and G.call('get_magic',211) == 0 then 
                        G.call("talk",'',90,'   爷爷教了我一手棍法，我这就教给你好了！',1,1)
                        G.call('learnmagic',211)
                    end
                    G.call('all_over')
                    break
                elseif  int_选项 == 2 then    
                    G.call('all_over')
                    break
                end 
            end
        elseif int_选项 == 2 then
            G.call("talk",'',90,'   我怕把你打傻了，还是不要了',1,1)
            G.call('all_over')
        elseif int_选项 == 3 then
            G.call('all_over')
        end
    end    


end
t['初入桃花岛-家丁'] = function()
    G.call("talk",'聋哑家丁',228,'   ？？？？？？？？？？？？？？？？',2,1)
    if G.misc().除草次数 == nil then 
        G.misc().除草次数  = 0
    end
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,(哑语)师父让我来帮忙清除杂草","2,没什么事情，路过而已"},0) 
        if int_选项 == 1 then
            if G.call('get_month') ~= G.QueryName(0x10030001)[tostring(146)]  then 
                G.QueryName(0x10030001)[tostring(146)] = G.QueryName(0x10030001)[tostring(121)]
                G.misc().除草次数 = G.misc().除草次数 + 1
                G.call('add_hour',6)
                G.call('all_over')
                G.call("talk",'',0,'   总算清除完了！',0,0) 
                G.call('turn_map')
            else
                G.call('all_over')
                G.call("talk",'',0,'   忘记这个月已经清除过杂草了',0,0) 
                G.call('all_over')
            end
        elseif int_选项 == 2 then
            G.call('all_over')
        end
    end
end
t['初入桃花岛-黄蓉'] = function()
    G.call("talk",'',12,'   '..G.call('get_fullname')..',你找我有什么事情吗？',2,1)
    local int_物品代码 = {178,184,168,185,173,174,170,167,171,157,158}
    local int_no = int_物品代码[math.random(11)] 
    local o_item = int_no - 1 + 0x100b0000
    local o_item_名称 = G.QueryName(o_item).名称  
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,今天有什么吃的吗？","2,请师姐传授武功","3,没什么事情，向师父请安而已"},0) 
        if int_选项 == 1 then
            if G.call('count_day') ~= G.QueryName(0x10030001)[tostring(142)] then
                G.QueryName(0x10030001)[tostring(142)] = G.call('count_day')
                G.call("talk",'',12,'   刚好我做了份【'..o_item_名称..'】！',1,1)
                G.call('add_item',int_no,1)
            else
                G.call("talk",'',12,'   今天不是刚给过你了吗？',2,1) 
            end
        elseif int_选项 == 2 then
            if G.call('get_magic',120) == 0  and G.call('get_love',12) >= 80 then 
                G.call("talk",'',12,'   我就是当日在破庙里的那个【乞丐丙】呀，我们现在是同门，我就教你一手【兰花拂穴手】，这【软猬甲】还有我们桃花岛灵药【九花玉露丸】也一并给了你吧！',2,1)
                G.call('learnmagic',120)
                G.call('add_item',75,1)
                G.call('add_item',226,5)
            else
                G.call("talk",'',12,'   也没什么教你的了，要学武功找爹爹去！',2,1)  
            end
        elseif int_选项 == 3 then
        end
        G.call('all_over')
    end
end
t['初入桃花岛-桃花阵'] = function()
    G.call('dark')
    if G.misc().桃花大阵 == nil then 
        G.misc().桃花大阵 = 0
    end
    if G.misc().桃花大阵 == 0 then 
        G.call("talk",'',0,'   怎么走到这里来了，这是什么稀奇古怪的阵法？',0,0)
    else
    end
    local int_选择_1 = 0
    local int_选择_2 = 0
    local int_选项 = 0
    while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'这第一个路口该走哪里？',0,4,{"1,向东走,",'2,向南走',"3,向西走","4,向北走"},0) 
        if int_选项 == 1 then  
            --G.call("talk",'',12,'   东',2,1)
            int_选择_1 = 1
            G.call('all_over')
        elseif int_选项 == 2 then 
            --G.call("talk",'',12,'   南',2,1)
            int_选择_1 = 2
            G.call('all_over')
        elseif int_选项 == 3 then 
            --G.call("talk",'',12,'   西',2,1)
            int_选择_1 = 3
            G.call('all_over')
        elseif int_选项 == 4 then    
           -- G.call("talk",'',12,'   北',2,1)
            int_选择_1 = 4
            G.call('all_over')
        end 
    end 
    G.call('dark')
    local int_选项 = 0
    while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'这第二个路口该走哪里？',0,4,{"1,向东走,",'2,向南走',"3,向西走","4,向北走"},0) 
        if int_选项 == 1 then  
           -- G.call("talk",'',12,'   东',2,1)
            int_选择_2 = 1
            G.call('all_over')
        elseif int_选项 == 2 then 
            --G.call("talk",'',12,'   南',2,1)
            int_选择_2 = 2
            G.call('all_over')
        elseif int_选项 == 3 then 
           -- G.call("talk",'',12,'   西',2,1)
            int_选择_2 = 3
            G.call('all_over')
        elseif int_选项 == 4 then    
            --G.call("talk",'',12,'   北',2,1)
            int_选择_2 = 4
            G.call('all_over')
        end 
    end 
    G.call('dark')
    local int_时辰 =  G.call('get_hour')
    local result = false
    if int_时辰 == 1 and int_选择_1 == 4 and int_选择_2 == 4 then 
        result = true
    elseif int_时辰 == 2 and int_选择_1 == 3 and int_选择_2 == 2 then
        result = true
    elseif int_时辰 == 3 and int_选择_1 == 1 and int_选择_2 == 1 then
        result = true
    elseif int_时辰 == 4 and int_选择_1 == 1 and int_选择_2 == 2 then
        result = true
    elseif int_时辰 == 5 and int_选择_1 == 4 and int_选择_2 == 1 then
        result = true
    elseif int_时辰 == 6 and int_选择_1 == 2 and int_选择_2 == 2 then
        result = true
    elseif int_时辰 == 7 and int_选择_1 == 2 and int_选择_2 == 2 then
        result = true
    elseif int_时辰 == 8 and int_选择_1 == 1 and int_选择_2 == 4 then
        result = true
    elseif int_时辰 == 9 and int_选择_1 == 3 and int_选择_2 == 3 then
        result = true
    elseif int_时辰 == 10 and int_选择_1 == 3 and int_选择_2 == 4 then
        result = true
    elseif int_时辰 == 11 and int_选择_1 == 2 and int_选择_2 == 3 then
        result = true
    elseif int_时辰 == 12 and int_选择_1 == 4 and int_选择_2 == 4 then
        result = true       
    end  
    if  result == false  then 
        G.call("talk",'',83,'   这桃花大阵暗合五行八卦，真是胡闹，还是给为师回去继续练功去！',2,1)
        G.call('dark') 
        G.call('add_hour',1)
        G.call('goto_map',71)
        G.call('通用_存档',G.call('get_point',143)) 
        G.call('通用_存档',4)
    else
        if G.misc().桃花大阵 == 0 then 
            G.call("talk",'',0,'   总算出来了,怎么还有机关？',0,0)
            G.call('puzzle')
            if G.misc().拼图结果 == 1 then
                G.call('dark')  
                G.misc().桃花大阵 = 1
                local int_拼图时间 = G.misc().计时器
                local str = string.format("%.2d:%.2d:%.2d", math.floor(G.misc().计时器/3600) , math.floor(G.misc().计时器/60)%60 , math.flooe(G.misc().计时器)%60) 
                G.call('set_note','完成拼图,用时'..str)
                G.call("talk",'',0,'   这桃花大阵也不过尔尔！',0,0)
                G.call('add_hour',1)
                G.call('dark')
                G.call('goto_map',69)
            else
                G.call('dark') 
                G.call('add_hour',1)
                G.call("talk",'',0,'   破不了机关我还是回去吧！',0,0)
                G.call('dark') 
                G.call('goto_map',71)
                G.call('通用_存档',G.call('get_point',143)) 
                G.call('通用_存档',4)
            end
        else
            G.call('goto_map',69)
        end
    end
end
t['初入桃花岛-周伯通'] = function()
    if G.call('get_story',55) == 0  then --初次遇见老顽童
        G.call("talk",'老  者',86,'   你是谁？怎会如此轻松闯过这【桃花大阵】？',2,1)
        G.call("talk",'',0,'   我是桃花岛关门弟子'..G.call('get_fullname')..',那你又是谁？',0,0)
        G.call("talk",'老  者',86,'   原来是黄老邪的弟子，有趣，先陪我打一架吧！',2,1)
        G.call('call_battle',1,10,1,G.call('get_love',86)*0.5,86,0,0,0,0,0)
        local o_battle_结果 = G.call('get_battle') --
        if o_battle_结果  == 1 then
            G.call('set_story',55,1) 
            G.call("talk",'老  者',86,'   黄老邪的弟子还不错，还能接下我二成功力，你猜我是谁？',2,1)
        else
            G.call('set_story',55,2) 
            G.call("talk",'老  者',86,'   黄老邪的弟子还是差了点，你猜我是谁？',2,1)
        end
        G.call('all_over')
        G.call("talk",'',0,'   弟子曾听人言道：天下武功登峰造极的共有五位高人。全真教主王真人已经逝世，九指神丐洪恩师与桃花岛主弟子都识得。前辈是欧阳前辈还是段皇爷么？',0,0)
        G.call("talk",'老  者',86,'   你觉得我的武功与东邪、北丐差不多，是不是？',2,1)
        G.call("talk",'',0,'   弟子武功低微，见识粗浅，不敢妄说。但适才与前辈过招，弟子所拜见过的武学名家之中，除了黄岛主之外确无第二人及得',0,0)
        G.call("talk",'老  者',86,'   我既不是西毒欧阳锋，也不是段皇爷，你再猜上一猜!',2,1)
        G.call("talk",'',0,'   弟子愚蠢得紧，实在猜不到前辈的尊姓大名。',0,0)
        G.call("talk",'老  者',86,'   我姓周，你想得起了么？',2,1)
        G.call("talk",'',0,'   啊，你是周泊通！............晚辈不敬，请周前辈恕罪。',0,0)
        G.call("talk",'',86,'   不错，不错，我正是周伯通。我名叫周伯通，你叫我周伯通，有甚么不敬？全真教主王重阳是我师兄，马钰、丘处机他们都是我的师侄。',2,1)
        if  G.call('get_story',55) == 1 then 
            G.call("talk",'',86,'   你既不是全真派门下，也不用啰里啰唆的叫我甚么前辈不前辈的，就叫我周伯通好啦。小朋友，你我结义为兄弟如何？',2,1)
            G.call("talk",'',0,'   晚辈不敢！',0,0)
            G.call("talk",'',86,'   我的武艺全是师兄所传，马钰、丘处机他们见我没点长辈样子，也不大敬我是长辈。你不是我儿子，我也不是你儿子，又分甚么长辈晚辈？',2,1)
            G.call("talk",'',0,'   那晚辈就依了周大哥！',0,0)
            G.call("talk",'',86,'   老顽童周伯通，今日与'..G.call('get_fullname')..'义结金兰，日后有福共享，有难共当。若是违此盟誓，教我武功全失，连小狗小猫也打不过。',2,1)
            G.call("talk",'',0,'   '..G.call('get_fullname')..'今日与老顽童周伯通义结金兰，日后有福共享，有难共当。若是违此盟誓，教我武功全失，连小狗小猫也打不过。',0,0)
        else
            G.call("talk",'',86,'   你既不是全真派门下，也不用啰里啰唆的叫我甚么前辈不前辈的，就叫我周伯通好啦。',2,1)
            G.call("talk",'',0,'   那我还是叫你周大哥吧！',0,0)
        end
        G.call("talk",'',0,'   周大哥，出来太久了，一会师父发现就不得了，我先回去了，改日再带好吃的来给你？',0,0)
        G.call("talk",'',86,'   去吧去吧，记得来找我玩啊！',2,1)
        G.call('add_hour',1)
        G.call('dark')
        G.call('goto_map',71)
        G.misc().周伯通交往时间 = G.call('count_day')
    elseif G.call('get_story',55) > 0  then
        if G.misc().周伯通交往时间 ~= G.call('count_day') then 
            G.misc().周伯通交往时间 = G.call('count_day')
            local int_物品代码 = {178,184,168,185,173,174,170,167,171,157,158}   
            local int_no = 0
            for i = 1,#int_物品代码 do
                if G.call('get_item',int_物品代码[i]) > 0 then 
                    int_no = int_物品代码[i] 
                    break
                end 
            end 
            G.call("talk",'',86,'   小兄弟,你找我有什么事情吗？',2,1)
            local int_选项 = 0
            while int_选项 == 0 do
                int_选项 = G.call("menu",'',0,'',0,0,{"1,给你带了点吃的","2,与周大哥【切磋】武功","3,没什么事情，路过看看周大哥！"},0) 
                if int_选项 == 1 then
                    if int_no > 0 then 
                        local o_item = int_no - 1 + 0x100b0000
                        local o_item_名称 = G.QueryName(o_item).名称  
                        G.call('all_over')
                        G.call("talk",'',0,'   刚好我带了份【'..o_item_名称..'】给周大哥！',0,0)
                        G.call("talk",'',86,'   不错，不错，谢了小兄弟',2,1)
                        G.call('all_over')
                        G.call('add_item',int_no,-1)
                        G.call('add_love',86,3)
                        G.call('add_time',2)
                        G.call('turn_map')
                    else
                        G.call("talk",'',86,'   小兄弟,你逗你周大哥吧，你哪有带什么吃的',2,1)
                        G.call('all_over')
                    end
                elseif int_选项 == 2 then
                    G.call('all_over')
                    G.call('call_battle',1,10,1,G.call('get_love',86)*0.7,86,0,0,0,0,0)
                    local o_battle_结果 = G.call('get_battle') --
                    if o_battle_结果  == 1 then
                        if (G.call('get_story',55) == 1 and G.call('get_love',86) >= 80) or  (G.call('get_story',55) == 2 and G.call('get_love',86) >= 90) then
                            G.call('set_story',55,3) 
                            G.call("talk",'',86,'   小兄弟武功不错，我这里刚好有本我这多年悟的一套拳法还有一本《伯通真经》，今日就一并传给你了吧，看你太聪明，另有一套左右互搏肯定是学不会的了！',2,1)
                            if G.call('get_magic',87) == 0 then 
                                G.call('learnmagic',87)
                            end
                            if G.call('get_item',118) == 0 then
                                G.call('add_item',118,1) 
                            end
                        else
                            G.call("talk",'',86,'   小兄弟这武功不错，改日华山论剑就看你的了！',2,1)
                        end
                    else
                        G.call('add_love',86,-10) 
                        G.call("talk",'',86,'   小兄弟这武功还得多练练！',2,1)
                    end
                    G.call('add_time',4)
                    G.call('all_over')
                    G.call('turn_map')
                elseif int_选项 == 3 then
                    G.call('all_over')
                end
            end
        else
            G.call("talk",'',0,'   今日已经叨扰过周大哥，还是改日再来吧！',0,0)
            G.call('dark')
            G.call('goto_map',71)
        end
    end
end
t['初入桃花岛-出师'] = function()
    G.call('地图_进入地图','桃花岛',94,3,0)
    G.call('set_point',146,2)
    G.call("talk",'',0,'   今日岛上怎么来了这多人',0,0)
    G.call("talk",'',33,'   西域欧阳先生拜见桃花岛黄岛主。',2,1)
    G.call("talk",'',0,'   原来是西毒欧阳锋来了！',0,0)
    G.call("talk",'',33,'   小婿叩见岳父大人，敬请岳父大人金安。',2,1)
    G.call("talk",'',83,'   罢了!',2,1)
    G.call("talk",'',0,'   师父这手够这小毒物受的了！',0,0)
    G.call("talk",'',33,'   哎哟！',2,1)
    G.call("talk",'',82,'   好啊，药兄，把女婿摔个筋斗作见面礼么？',2,1)
    G.call("talk",'',83,'   他曾与人联手欺侮过我的瞎眼徒儿，后来又摆了蛇阵欺她，倒要瞧瞧他有多大道行。',2,1)
    G.call("talk",'',82,'   孩儿们小小误会，药兄不必介意。我这孩子，可还配得上你的千金小姐么？',2,1)
    G.call("talk",'',86,'   哈哈，真是那个什么【癞蛤蟆想吃天鹅肉】，好笑好笑！',2,1)
    G.call("talk",'',12,'   老顽童说的好！',2,1)
    G.call("talk",'',83,'   老顽童你怎么出来了？',2,1)
    G.call("talk",'',86,'   当然是想出来了就出来了，也多亏了你这小徒弟，跟着他就走出了这【桃花大阵】！',2,1)
    G.call("talk",'',83,'   既然你能做出来，就说明你能打过我了？',2,1)
    G.call("talk",'',86,'   打不打的过不知道，打打不就知道了！',2,1)
    G.call("talk",'',83,'   也罢也罢，困了你十几年！至于小女婚事，明日由我出题，如果欧阳贤侄真能胜过我这徒儿，小女许配给他也未尝不可！',2,1)
    G.call("talk",'',82,'   你们都等着喝喜酒吧！',2,1)
    G.call("talk",'',86,'   对对对，等着喝我这小兄弟跟黄老邪女儿的喜酒就是了！',2,1)
    G.call("talk",'',82,'   老顽童你，明日走着瞧！',2,1)
    G.call('add_day',1)
    G.call('地图_进入地图','桃花岛',153,49,0)
    G.call("talk",'',83,'   今日三道试题，就看欧阳贤侄与小徒谁胜谁负了！',2,1)
    G.call("talk",'',82,'   药兄请！',2,1)
    G.call("talk",'',86,'   黄老邪看还能怎么邪！',2,1)
    G.call("talk",'',83,'   这第一道题，就考较下二位武功，就由老顽童考较欧阳贤侄，锋兄考较小徒,不过二位前辈只许用三成功力！',2,1)    
    G.call("talk",'',83,'   首先由欧阳贤侄吧！',2,1)
    G.call('all_over')
    local int_胜利 = 0
    local int_难度 =  G.QueryName(0x10160000 +G.call('get_point',143)).难度
    G.QueryName(0x10160000 +G.call('get_point',143)).难度 = 1
    G.call('set_team',33,0,0,0)
    G.call('call_battle',0,10,4,30,86,0,0,0,0,0,6)
    local o_battle_结果 = G.call('get_battle') --
    if o_battle_结果  == 1 then 
        int_胜利 = -1 
        G.call("talk",'',83,'   欧阳贤侄表现不错，现在看锋兄与小徒！',2,1) 
    else         
        int_胜利 = 1
        G.call("talk",'',83,'   欧阳贤侄败阵，现在看锋兄与小徒！',2,1) 
    end
    G.QueryName(0x10160000 +G.call('get_point',143)).难度 = int_难度
    G.call('call_battle',0,10,1,30,82,0,0,0,0,0,6)
    local o_battle_结果 = G.call('get_battle') --
    if o_battle_结果  == 1 then
        int_胜利 = int_胜利 + 1
    else
        int_胜利 = int_胜利 - 1
    end
    if int_胜利 > 0 then 
        G.call("talk",'',83,'   这样看来第一场比试小徒获胜！',2,1) 
        G.call('set_story',56,1)
    elseif int_胜利 == 0 then
        G.call("talk",'',83,'   这样看来第一场比试打平',2,1)
        G.call('set_story',56,2) 
    elseif int_胜利 < 0 then
        G.call('set_story',56,3)
        G.call("talk",'',83,'   这样看来第一场比试欧阳贤侄获胜',2,1) 
    end
    G.call('set_point',44,G.call('get_point',217))
    G.call('set_point',46,G.call('get_point',218))
    G.call("talk",'',83,'   我这第二道题目，是要请两位品题品题老朽吹奏的一首乐曲',2,1) 
    G.Play(0x49011004, 1,true,1) 
    G.call('all_over')
    G.wait_time(10000)
    G.call("talk",'',33,'   (还好某叔教过，这有何难！)',2,1)
    G.call("talk",'',0,'   （这，对于五音不全的我，头晕了，晕了，还是在下一场见分晓吧！)',0,0)
    G.call("talk",'',83,'   第二局欧阳贤侄胜！',2,1)
    if G.call('get_story',56) == 3  then
        G.call("talk",'',83,'   既然欧阳贤侄连胜二场，那我就遵从先前约定！',2,1) 
        G.call("talk",'',33,'   多谢岳父大人！',2,1)
        G.call("talk",'',12,'   '..G.call('get_fullname')..'，你太让我失望了！',2,1)
        G.call('地图_进入地图','桃花岛大殿',95,39,0)
        G.call("talk",'',83,'   '..G.call('get_fullname')..'，这一年看来你根本没有在用心练武，今日你就下山吧！',2,1)
        G.call('出师-增加被动')
        G.call('all_over') 
        G.call('set_alltime',2,1,1,4,1)
        G.QueryName(0x1017000e).进度列表[7].完成 = 1
        G.call('初入聚贤庄')
    else
        G.call("talk",'',83,'   我和拙荆就只生了这一个女儿。拙荆不幸在生她的时候去世。今承蒙两位瞧得起，同来求亲，拙荆若是在世，也必十分欢喜……',2,1) 
        G.call("talk",'',83,'   这本册子是拙荆当年所手书，乃她心血所寄，现下请两位贤侄同时阅读一遍，然后背诵出来，谁背得又多又不错，我就把女儿许配于他。',2,1) 
        G.call("talk",'',83,'   这书与兄弟一生大有关连，拙荆又因此书面死，现下我默祝她在天之灵亲自挑选女婿，庇佑那一位获胜',2,1) 
        G.call("talk",'',83,'   好，现在开始，二位一炷香时间，看谁能记住的多！',2,1) 
        G.call('dark')
        if G.call('get_story',55) == 3  then
            G.call("talk",'',0,'   (这不是周大哥教给我的【伯通真经】吗？)',0,0)
        else
            G.call("talk",'',0,'   这是真的吗？一炷香背完一本书！',0,0)
        end
        G.call("talk",'',83,'   二位谁先来？',2,1) 
        G.call("talk",'',33,'   我先来',2,1)
        G.call("talk",'',12,'   就会占便宜，哼！',2,1)
        G.call("talk",'',83,'   那好，欧阳贤侄先来吧！',2,1) 
        G.call("talk",'',33,'   天之道，损有余而补不足，是故虚胜实，不足胜有余……',2,1)
        G.call("talk",'',83,'   背出了这许多，那可真难为你了。',2,1) 
        G.call("talk",'',83,'   '..G.call('get_fullname')..'现在轮到你了！',2,1) 
        G.call("talk",'',0,'   是，师父！',0,0)
        if G.call('get_story',55) == 3  then
            G.call("talk",'',0,'   天之道，损有余而补不足，是故虚胜实，不足胜有余。其意博，其理奥，其趣深，天地之象分，阴阳之候列，变化之由表，死生之兆彰,不谋而遗迹自同，勿约而幽明斯契，稽其言有微，验之事不忒，诚可谓至道之宗，奉生之始矣。',0,0)
            G.call("talk",'',0,'   假若天机迅发，妙识玄通，成谋虽属乎生知，标格亦资于治训，未尝有行不由送，出不由产者亦。然刻意研精，探微索隐，或识契真要，则目牛无全，故动则有成，犹鬼神幽赞，而命世奇杰，时时间出焉',0,0)
            G.call("talk",'',0,'   五藏六府之精气，皆上注于目而为之精。精之案为眼，骨之精为瞳子，筋之精为黑眼，血之精力络，其案气之精为白眼，肌肉之精为约束，裹撷筋骨血气之精而与脉并为系，上属于脑，后出于项中。',0,0)
            G.call("talk",'',0,'   故邪中于项，因逢其身之虚，其人深，则随眼系以入于脑，入手腼则脑转，脑转则引目系急，目系急则目眩以转矣。邪其精，其精所中不相比亦则精散，精散则视歧，视,歧见两物。',0,0)
            G.call("talk",'',0,'   阴极在六，何以言九。太极生两仪，天地初刨判。六阴已极，逢七归元太素，太素西方金德，阴之清纯，寒之渊源。',0,0)
            G.call("talk",'',83,'   阿衡，阿衡，你对我如此情重，借这少年之口来把真经授我，怎么不让我见你一面？我晚晚吹箫给你听，你可听见么！',2,1) 
            G.call("talk",'',83,'   好，锋兄，这是先室选中了的女婿，兄弟再无话说。孩子，我将蓉儿许配于你，你可要好好待她。蓉儿被我娇纵坏了，你须得容让三分。',2,1) 
            G.call("talk",'',33,'   '..G.call('get_fullname')..'所背诵的，远比这册页上所载为多，必是他得了《九阴真经》。晚辈斗胆，要放肆在他身上搜一搜。',2,1)
            G.call("talk",'',82,'   我姓欧阳的岂能任人欺蒙？你们桃花岛师徒的把戏，谁知道是不是你偷偷教给你徒儿了！',2,1) 
            G.call("talk",'',82,'   '..G.call('get_fullname')..'这《九阴真经》的经文，你是从何处学来的？',2,1)
            G.call("talk",'',0,'   我知道有一部九阴真经，可我这背的是周大哥教给我的【伯通真经】？',0,0)
            G.call("talk",'',83,'   老顽童，九阴真经呢？',2,1) 
            G.call("talk",'',86,'   我早给了你啦。',2,1) 
            G.call("talk",'',83,'   别瞎说八道，几时给过我？',2,1) 
            G.call("talk",'',86,'   '..G.call('get_fullname')..'是你女婿是不是？他的就是你的，是不是？我把《九阴真经》从头至尾传了给他，不就是传给了你？',2,1) 
            G.call("talk",'',83,'   也罢也罢，以后任你自来自去。伯通兄此后如再有兴枉顾，兄弟倒履相迎。我这就派船送你离岛。',2,1) 
            G.call("talk",'',82,'   慢着，我倒要看看你们【桃花岛】厉害还是我【白驼山】厉害',2,1) 
            G.call("talk",'',12,'   '..G.call('get_fullname')..'，我来助你',2,1)
            G.call('all_over')
            G.call('add_role',12,1,2000)
            G.call('add_role',12,2,1500)
            G.call('set_role',12,13,G.call('get_role',12,1))
            G.call('set_role',12,14,G.call('get_role',12,2))
            G.call('set_team',12,0,0,0)
            G.call('call_battle',0,10,2,70,33,82,0,0,0,0)
            local o_battle_结果 = G.call('get_battle') --
            if o_battle_结果  == 1 then
                G.call("talk",'',82,'   哼，今日这笔账，改日再跟你们算，克儿，我们走！',2,1) 
                G.call('dark')
                G.call('add_day',1)
                G.call('地图_进入地图','桃花岛大殿',95,39,0)
                G.Play(0x49010026, 1,true,1) 
                G.call("talk",'',83,'   '..G.call('get_fullname')..',他们都走了，今日为师就为你们二人举办婚礼！',2,1)
                G.call("talk",'',0,'   多谢师父！',0,0)
                G.call("talk",'',83,'   傻小子！',2,1)
                G.call("talk",'',12,'   傻哥哥！',2,1)
                G.call("talk",'',0,'   多谢岳父大人！',0,0)
                --设置与黄蓉结婚后的属性
                G.QueryName(0x10030001)[tostring(13)] = 12
                G.QueryName(0x10030001)[tostring(51)] = 1
                G.call('add_role',12,1,5000)
                G.call('add_role',12,2,5000)
                G.call('set_role',12,13,G.call('get_role',12,1))
                G.call('set_role',12,14,G.call('get_role',12,2))
                G.call('add_role',12,3,30)
                G.call('add_role',12,4,30)
                G.call('add_role',12,5,30)
                G.call('add_role',12,6,30)
                G.call('add_role',12,7,30)
                G.call('add_role',12,8,30)
                G.call('地图_进入地图','桃花岛',95,3,0)
                G.call("talk",'',83,'   一年也到期了'..G.call('get_fullname')..',也不用呆在岛上，这就和蓉儿一起出岛吧！',2,1)
                G.call("talk",'',0,'   是，岳父大人！',0,0)
                G.call("talk",'',12,'   爹爹自己多保重！',2,1)
                if G.misc().除草次数 >= 10 then 
                    G.call("talk",'',83,'   另外再传你一手【弹指神通】和本门绝技【五行八卦阵】，有时间多回来看看',2,1)
                    if G.call('get_magic',2) == 0 then
                        G.call('learnmagic',2) 
                    end
                    if G.call('get_magic',220) == 0 then
                        G.call('learnmagic',220) 
                    end
                end
                G.call('join',12)
                G.call('出师-增加被动')
                G.call('all_over') 
                G.call('set_alltime',2,1,1,4,1)
                G.QueryName(0x1017000e).进度列表[7].完成 = 1
                G.call('初入聚贤庄')
            else
                G.call('gameover')
            end
        else
            G.call("talk",'',0,'   天之道，损有余而补不足，是故虚胜实，不足胜有余。其意博，其理奥，其趣深，天地之象分，阴阳之候列，变化之由表，死生之兆彰,不谋而遗迹自同，勿约而幽明斯契，稽其言有微，验之事不忒，诚可谓至道之宗，奉生之始矣。',0,0)
            G.call("talk",'',83,'   背出了这许多，那可真难为你了。',2,1) 
            G.call("talk",'',83,'   第三场算不分胜负！',2,1) 
            G.call("talk",'',82,'   我姓欧阳的岂能任人欺蒙？你们桃花岛师徒的把戏，谁知道是不是你偷偷教给你徒儿了！',2,1) 
            G.call("talk",'',83,'   是又怎样，不是又怎样？',2,1) 
            G.call("talk",'',82,'   慢着，我倒要看看你们【桃花岛】厉害还是我【白驼山】厉害',2,1) 
            G.call("talk",'',12,'   '..G.call('get_fullname')..'，我来助你',2,1)
            G.call('all_over')
            G.call('set_team',12,0,0,0)
            G.call('call_battle',0,10,2,40,33,82,0,0,0,0)
            local o_battle_结果 = G.call('get_battle') --
            if o_battle_结果  == 1 then
                G.call("talk",'',82,'   哼，今日这笔账，改日再跟你们算，克儿，我们走！',2,1) 
                G.call('add_day',1)
                G.call('地图_进入地图','桃花岛大殿',95,39,0)
                G.call("talk",'',83,'   '..G.call('get_fullname')..',他们都走了，明日你准备下和蓉儿也一同下山吧！',2,1)
                G.call("talk",'',0,'   是，师父！',0,0)
                G.call('地图_进入地图','桃花岛',94,3,0)
                if G.misc().除草次数 >= 10 then 
                    G.call("talk",'',83,'   另外再传你一手【弹指神通】，有时间多回来看看',2,1)
                    if G.call('get_magic',2) == 0 then
                        G.call('learnmagic',2) 
                    end
                end
                G.call('join',12)
                G.call('出师-增加被动')
                G.call('all_over') 
                G.call('set_alltime',2,1,1,4,1)
                G.QueryName(0x1017000e).进度列表[7].完成 = 1
                G.call('初入聚贤庄')
            else
                G.call("talk",'',83,'   锋兄欺人太甚！',2,1) 
                G.call("talk",'',82,'   哼，今日这笔账，改日再跟你们算，克儿，我们走！',2,1) 
                G.call('地图_进入地图','桃花岛大殿',95,39,0)
                G.call("talk",'',83,'   '..G.call('get_fullname')..'，这一年看来你根本没有在用心练武，你和蓉儿这就下山吧！',2,1)
                G.call('join',12)
                G.call('出师-增加被动')
                G.call('all_over') 
                G.call('set_alltime',2,1,1,4,1)
                G.QueryName(0x1017000e).进度列表[7].完成 = 1
                G.call('初入聚贤庄')
            end
        end
    end 
end