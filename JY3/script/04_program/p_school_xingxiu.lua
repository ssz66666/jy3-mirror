--[[4012

]]
local G = require "gf"
local L = {}
local t = G.api
local JY = 0
t['初入星宿'] = function()
    G.call('dark')
    G.call('goto_map',77)
    G.call("talk",'',41,'   禀告老仙，弟子寻到一名人选，此人名叫'..G.call('get_fullname')..'，他一听咱们星宿派，就十分神往！',2,1) 
    G.call("talk",'',116,'   你就是'..G.call('get_fullname')..'？那你听到江湖上都怎么说本仙？',2,1) 
    local int_选项 = 0
    while int_选项 == 0 do
        int_选项 = G.call("menu",nil,0,'',0,0,{"1,星宿老仙,法力无边,攻无不克,战无不胜","2,星宿老仙,法驾中原,神通广大,法力无边","3,星宿老仙,法力无边,仙福永享,寿与天齐"},0)  
        if int_选项 == 1 then 
            G.call('add_love',116,5)
        elseif int_选项 == 2 then 
            G.call('add_love',116,10)
        elseif int_选项 == 3 then 
            G.call('add_love',116,5)
        end
        G.call('all_over')
    end
    G.call("talk",'',116,'   不错不错，摘星子你很有眼光，这孩子我很喜欢！',2,1) 
    G.call("talk",'',41,'   是师父您老人家福泽深厚才是！',2,1)
    G.call("talk",'',116,'   哈哈哈，'..G.call('get_fullname')..'你入本门我也没什么时间教你武学，就让你大师兄摘星子代传吧，另外本门还有你几个师兄和一位师姐，先认识一下！',2,1) 
    G.call("talk",'',389,'   我是你二师兄狮吼子！',2,1) 
    G.call("talk",'',388,'   我是你三师兄天狼子！',2,1)
    G.call("talk",'',387,'   我是你八师兄出尘子！',2,1)
    G.call("talk",'',19,'   我以后会是你大师姐！',2,1)
    G.call("talk",'',41,'   阿紫，等你打赢我再说吧！',2,1) 
    G.call("talk",'',116,'   对了，本门排序是按武功高低来排的，只要你能挑战你前面的师兄师姐你就可以代替他们在门中地位，本门三、六、九月都会举行公开比试，到时候就看你自己了！',2,1)
    G.call("talk",'',0,'   是，多谢师父提携，弟子定不辱没您的教导！',0,0) 
    G.call("talk",'',116,'   好孩子，好好在本门练习吧，一年之后可以下山替本门涨涨脸，先下去吧！',2,1) 
    G.misc().星宿弟子 = 9
    G.QueryName(0x10030001)[tostring(9)] = '星宿九弟子'
    G.QueryName(0x10030001)[tostring(11)] = 1
    G.QueryName(0x10030001)[tostring(107)] = 1
    G.QueryName(0x10030001)[tostring(12)] = '丁春秋'
    G.QueryName(0x10030001)[tostring(8)] = 10
    G.call('dark')
    G.call('goto_map',78)
    G.call("talk",'',41,'   [师弟]，今日我就先教你本门初级心法！',2,1)
    G.call('learnmagic',222)
    G.call('all_over')
end
t['初入星宿-出尘子'] = function()
    G.call("talk",'',387,'   '..G.call('get_fullname')..',你找我有什么事情吗？',2,1)
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,请教抓毒之术","2,【切磋】武功","3,有点山货，看着给个价钱吧！","4,没什么事情，顺路过来看看！"},0) 
        if int_选项 == 1 then
            G.call("talk",'',387,'   '..G.call('get_fullname')..',那就在这树林里抓吧！',2,1)
            G.call('all_over') 
            G.call('hunting')
            G.call("talk",'',387,'   不错不错，竟然抓了如此之多！',1,1)
            G.call('all_over')
            G.call('add_time',4) 
            G.call('turn_map')
        elseif int_选项 == 2 then
            G.call('all_over')
            G.call('call_battle',1,10,1,G.call('get_love',387)*0.3,387,0,0,0,0,0)
            local o_battle_结果 = G.call('get_battle') --
            if o_battle_结果  == 1 then
                G.call('add_love',387,3) 
                G.call("talk",'',387,'   不错，还要继续加强练习！',2,1)
            else
                G.call('add_love',387,-3) 
                G.call("talk",'',387,'   这武功没练好啊！',2,1)
            end
            G.call('add_time',4)
            G.call('all_over')
            G.call('turn_map') 
        elseif int_选项 == 3 then
            G.call('all_over')
            G.call('shop',8)
            if G.QueryName(0x10030001)[tostring(234)] == 1 then 
                if  G.call('getprice') > 0 then 
                    G.call('sellresult') 
                else
                    G.call("talk",'',387,'   你这都没什么要卖的啊！',1,1) 
                    G.call('all_over')
                end  
            else
            end  
        elseif int_选项 == 4 then
            G.call('all_over') 
        end
    end
end
t['初入星宿-摘星子'] = function()
    G.call("talk",'',41,'   '..G.call('get_fullname')..',你找我有什么事情吗？',2,1)
    local int_选项 = 0
    while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,请师兄传授武功","2,【切磋】武功","3,没什么事情，顺路过来请安而已"},0) 
        if int_选项 == 1 then
            if G.call('get_magic',126) == 0 then
                if G.call('get_magic_lv',222) == 5 then 
                    G.call("talk",'',41,'   今日先传你一手【三阴蜈蚣爪】，要多加练习',2,1)
                    G.call('learnmagic',126)
                else
                    G.call("talk",'',41,'   先将本门心法练熟再说！',2,1)
                end
            else
                G.call("talk",'',41,'   已经没什么可以教你的了！',2,1)
            end
            G.call('all_over')
        elseif int_选项 == 2 then
            G.call('all_over')
            G.call('call_battle',1,10,1,G.call('get_love',41)*0.3,41,0,0,0,0,0)
            local o_battle_结果 = G.call('get_battle') --
            if o_battle_结果  == 1 then
                G.call('add_love',41,3) 
                G.call("talk",'',41,'   不错，还要继续加强练习！',2,1)
            else
                G.call('add_love',41,-3) 
                G.call("talk",'',41,'   这武功没练好啊！',2,1)
            end
            G.call('add_time',4)
            G.call('all_over')
            G.call('turn_map') 

        elseif int_选项 == 3 then
            G.call('all_over') 
        end
    end
end
t['初入星宿-狮吼子'] = function()
    G.call("talk",'',389,'   '..G.call('get_fullname')..',你找我有什么事情吗？',2,1)
    local int_选项 = 0
    while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,学习轻功","2,【切磋】武功","3,没什么事情，顺路过来请安而已"},0) 
        if int_选项 == 1 then
            if G.misc().星宿弟子 <= 3 then 
                if G.call('get_magic',223) == 0 then
                    G.call("talk",'',389,'   今日就传你本门轻功！',2,1)
                    G.call('learnmagic',223)
                else
                    G.call("talk",'',389,'   已经没什么可以教你的了！',2,1)
                end
            else
                G.call("talk",'',389,'   等你成为三弟子后再说吧！',2,1)
            end
            G.call('all_over')
        elseif int_选项 == 2 then
            G.call('all_over')
            G.call('call_battle',1,10,1,G.call('get_love',389)*0.3,389,0,0,0,0,0)
            local o_battle_结果 = G.call('get_battle') --
            if o_battle_结果  == 1 then
                G.call('add_love',389,3) 
                G.call("talk",'',389,'   不错，还要继续加强练习！',2,1)
            else
                G.call('add_love',389,-3) 
                G.call("talk",'',389,'   这武功没练好啊！',2,1)
            end
            G.call('add_time',4)
            G.call('all_over')
            G.call('turn_map') 
        elseif int_选项 == 3 then
            G.call('all_over') 
        end
    end
end
t['初入星宿-天狼子'] = function()
    G.call("talk",'',388,'   '..G.call('get_fullname')..',你找我有什么事情吗？',2,1)
    local int_选项 = 0
    while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,学习【谄媚】","2,【切磋】武功","3,没什么事情，顺路过来请安而已"},0) 
        if int_选项 == 1 then
            G.call('all_over')
            G.call("talk",'',388,'   你来向我学习【谄媚】吗？',2,1) 
            local int_选项 = 0
            while int_选项 == 0 do
                int_选项 = G.call("menu",'',0,'',0,0,{"1,打算学习【谄媚】【五天】","2,弟子打算学习【谄媚】【十五天】","3,没什么事情"},0) 
                if int_选项 == 1 then 
                    G.call('add_point',107,25)
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
            G.call('call_battle',1,10,1,G.call('get_love',388)*0.3,388,0,0,0,0,0)
            local o_battle_结果 = G.call('get_battle') --
            if o_battle_结果  == 1 then
                G.call('add_love',388,3) 
                G.call("talk",'',388,'   不错，还要继续加强练习！',2,1)
            else
                G.call('add_love',388,-3) 
                G.call("talk",'',388,'   这武功没练好啊！',2,1)
            end
            G.call('add_time',4)
            G.call('all_over')
            G.call('turn_map') 
        elseif int_选项 == 3 then
            G.call('all_over') 
        end
    end
end
t['初入星宿-阿紫'] = function()
    G.call("talk",'',19,'   '..G.call('get_fullname')..',今天怎么那乖来陪师姐炼毒呀？',2,1)
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,师姐这里有没有什么事情[师弟]可以帮忙的？","2,没什么事情，顺路向师姐请安而已"},0) 
        if int_选项 == 1 then
            if G.misc().毒物 == nil then 
                G.misc().毒物 = 0
            end
            local 毒物 = {286,291,292,293,294}
            if G.misc().毒物 == 0 then
                if G.call('count_day') ~= G.QueryName(0x10030001)[tostring(142)] then
                    G.misc().毒物 = 毒物[math.random(#毒物)]
                    G.misc().毒物数量 = math.floor((G.call('通用_取随机')*5/100 + 5 ))
                    local str_毒物名 = G.QueryName(0x100b0000 + G.misc().毒物 - 1).名称
                    G.call("talk",'',19,'   '..G.call('get_fullname')..',你去给我弄【'..G.misc().毒物数量..'】个'..str_毒物名,2,1)
                else
                    G.call("talk",'',19,'   改日再让[师弟]帮我！',2,1)
                end
            else
                local str_毒物名 = G.QueryName(0x100b0000 + G.misc().毒物 - 1).名称
                if G.call('get_item',G.misc().毒物 ) >= G.misc().毒物数量 then 
                    G.call('add_item',G.misc().毒物,-G.misc().毒物数量)
                    G.call("talk",'',19,'   这正是我要的'..str_毒物名..'，真是谢谢你了！',2,1)
                    G.misc().毒物 = 0
                    G.QueryName(0x10030001)[tostring(142)] = G.call('count_day')
                    G.call('add_love',19,1)
                    G.call("talk",'',19,'   那我也教你怎么用毒吧！',2,1)
                    G.call('add_point',32,1)
                    if G.call('get_love',19) >= 80 and G.call('get_magic',3) == 0 then
                        G.call("talk",'',19,'   今日师姐高兴就传你一手【腐尸毒】吧！',2,1)
                        G.call('learnmagic',3)
                    elseif G.call('get_love',19) >= 90 and  G.call('get_item',111) == 0 then 
                        G.call("talk",'',19,'   这就是师姐炼毒的【神木王鼎】，以后你就和师姐一起炼毒吧！！',2,1)
                        G.call('add_item',111,1)
                    end
                else
                    G.call("talk",'',19,'   我让你弄【'..G.misc().毒物数量..'】个'..str_毒物名..'怎么还没有给我找来？',2,1)
                end
            end
            G.call('all_over') 
        elseif int_选项 == 2 then 
            G.call('all_over') 
        end
    end
end
t['初入星宿-丁春秋'] = function()
    G.call("talk",'',116,'   '..G.call('get_fullname')..'你找我有什么事情吗？',2,1)
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,请师父传授武功","2,【闭关】10天","3,没什么事情，顺路向师父请安而已"},0) 
        if int_选项 == 1 then
            if G.call('get_magic',225) == 0 then
                if G.call('get_love',116) >= 70 and G.misc().星宿弟子 <= 3 and G.call('get_point',11) >= 6 then 
                    G.call("talk",'',116,'   今日先传你一套【天山杖法】',2,1)
                    G.call('learnmagic',225)
                else
                    G.call("talk",'',116,'   你最近的表现还不是很让我满意！',2,1)
                end
            elseif G.call('get_magic',77) == 0 then
                if G.call('get_love',116) >= 80 and G.misc().星宿弟子 <= 2 and G.call('get_point',11) >= 9 then 
                    G.call("talk",'',116,'   今日先传你一套【抽髓掌】',2,1)
                    G.call('learnmagic',77)
                else
                    G.call("talk",'',116,'   你最近的表现还不是很让我满意！',2,1)
                end
            else
                G.call("talk",'',116,'   都没什么可以教你的了！',2,1) 
            end
            G.call('all_over')
        elseif int_选项 == 2 then 
            G.call("talk",'',116,'   毒功要勤加练习才是！',2,1) 
            G.call('add_love',116,math.floor(G.call('get_point',11)*0.8))
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
t['初入星宿-三月大比较'] = function()
    G.call('dark')
    G.call('goto_map',78)
    G.call("talk",'',116,'   '..G.call('get_fullname')..',今日是你入本门第三个月，现在进行比较，这次你的挑战对象是你三师兄【天狼子】，如果胜利了你将成为本门【三弟子】！',2,1)
    G.call('all_over')
    G.call('call_battle',1,10,1,100,388,0,0,0,0,0)
    local o_battle_结果 = G.call('get_battle') --
    if o_battle_结果  == 1 then
        G.call("talk",'',116,'   '..G.call('get_fullname')..'获胜成为本门【三弟子】',2,1)
        G.misc().星宿弟子 = 3
        G.QueryName(0x10030001)[tostring(9)] = '星宿三弟子'
    else
        G.call("talk",'',116,'   太让为师失望，等六月再看你的造化！',2,1)
    end
    G.call('add_time',4)
    G.call('all_over')
    G.call('turn_map') 
end
t['初入星宿-六月大比较'] = function()
    G.call('dark')
    G.call('goto_map',78)
    if G.misc().星宿弟子 == 3 then 
        G.call("talk",'',116,'   '..G.call('get_fullname')..',今日是你入本门第六个月，现在进行比较，这次你将挑战你的二师兄【狮吼子】，如果胜利了你将成为本门【二弟子】！',2,1)
        G.call('all_over')
        G.call('call_battle',1,10,1,100,388,0,0,0,0,0)
        local o_battle_结果 = G.call('get_battle') --
        if o_battle_结果  == 1 then
            G.call("talk",'',116,'   '..G.call('get_fullname')..'获胜成为本门【二弟子】',2,1)
            G.misc().星宿弟子 = 2
            G.QueryName(0x10030001)[tostring(9)] = '星宿二弟子'
        else
            G.call("talk",'',116,'   太让为师失望，等九月再看你的造化！',2,1)
        end
    else
        G.call("talk",'',116,'   '..G.call('get_fullname')..',今日是你入本门第六个月，现在进行比较，这次你将继续挑战你的三师兄【天狼子】，如果胜利了你将成为本门【三弟子】！',2,1)
        G.call('all_over')
        G.call('call_battle',1,10,1,100,388,0,0,0,0,0)
        local o_battle_结果 = G.call('get_battle') --
        if o_battle_结果  == 1 then
            G.call("talk",'',116,'   '..G.call('get_fullname')..'获胜成为本门【三弟子】',2,1)
            G.misc().星宿弟子 = 3
            G.QueryName(0x10030001)[tostring(9)] = '星宿三弟子'
        else
            G.call("talk",'',116,'   太让为师失望，等九月再看你的造化！',2,1)
        end
    end   
    G.call('add_time',4)
    G.call('all_over')
    G.call('turn_map')  
end
t['初入星宿-九月大比较'] = function()
    G.call('dark')
    G.call('goto_map',78)
    if G.misc().星宿弟子 > 3 then 
        G.call("talk",'',116,'   '..G.call('get_fullname')..',今日是你入本门第九个月，现在进行比较，这次你将继续挑战你的三师兄【天狼子】，如果胜利了你将成为本门【三弟子】！',2,1)
        G.call('all_over')
        G.call('call_battle',1,10,1,100,388,0,0,0,0,0)
        local o_battle_结果 = G.call('get_battle') --
        if o_battle_结果  == 1 then
            G.call("talk",'',116,'   '..G.call('get_fullname')..'获胜成为本门【三弟子】',2,1)
            G.misc().星宿弟子 = 3
            G.QueryName(0x10030001)[tostring(9)] = '星宿三弟子'
        else
            G.call("talk",'',116,'   太让为师失望，看来你是没有机会了！',2,1)
        end
    elseif G.misc().星宿弟子 == 3 then 
        G.call("talk",'',116,'   '..G.call('get_fullname')..',今日是你入本门第九个月，现在进行比较，这次你将继续挑战你的二师兄【狮吼子】，如果胜利了你将成为本门【二弟子】！',2,1)
        G.call('all_over')
        G.call('call_battle',1,10,1,100,388,0,0,0,0,0)
        local o_battle_结果 = G.call('get_battle') --
        if o_battle_结果  == 1 then
            G.call("talk",'',116,'   '..G.call('get_fullname')..'获胜成为本门【二弟子】',2,1)
            G.misc().星宿弟子 = 2
            G.QueryName(0x10030001)[tostring(9)] = '星宿二弟子'
        else
            G.call("talk",'',116,'   太让为师失望，看来你只能做到本门【三弟子】',2,1)
        end
    elseif G.misc().星宿弟子 == 2 then 
        G.call("talk",'',116,'   '..G.call('get_fullname')..',今日是你入本门第九个月，现在进行比较，这次你将继续挑战你的大师兄【摘星子】，如果胜利了你将成为本门【大弟子】！',2,1)
        G.call('all_over')
        G.call('call_battle',1,10,1,100,41,0,0,0,0,0)
        local o_battle_结果 = G.call('get_battle') --
        if o_battle_结果  == 1 then
            G.call("talk",'',116,'   '..G.call('get_fullname')..'获胜成为本门【大弟子】',2,1)
            G.call('set_CH','星宿大师兄')
            G.call('set_note','获得称号【星宿大师兄】！')  
            G.misc().星宿弟子 = 1
            G.QueryName(0x10030001)[tostring(9)] = '星宿大弟子'
        else
            G.call("talk",'',116,'   太让为师失望，看来你只能做到本门【二弟子】',2,1)
        end
    end
    G.call('add_time',4)
    G.call('all_over')
    G.call('turn_map') 
end
t['初入星宿-出师'] = function()
    G.call('dark') 
    G.call('goto_map',77)
    G.call("talk",'',116,'   '..G.call('get_fullname')..'你在星宿修炼武功已经将近一年，现在是时候该出去为本门涨涨脸了！',2,1)
    G.call("talk",'',0,'   弟子一定谨记师父教诲。',0,0) 
    if G.call('get_love',19) >= 90 then 
        G.call("talk",'',19,'   外面一定很好玩，我也跟你一起去吧！',2,1)
        G.call('join',19)
    end
    G.call('出师-增加被动')
    G.call('all_over')
    G.call('set_alltime',2,1,1,4,1) 
    G.QueryName(0x1017000e).进度列表[8].完成 = 1
    G.call('初入聚贤庄')
end