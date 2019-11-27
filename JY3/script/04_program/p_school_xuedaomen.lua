--[[400c

]]
local G = require "gf"
local L = {}
local t = G.api
local JY = 0
t['初入血刀门'] = function()
    G.call('dark')
    G.call('goto_map',47)
    G.call("talk",'',143,'   '..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..',我血刀门宗旨是宁做真小人不做伪君子，你可记好了！',2,1) 
    G.call("talk",'',143,'   目前我门下也就一年前入门你的师兄【宝象】，还有你和这位号称什么【铃剑双侠】的水笙，你入门的任务就是看你的本事让其乖乖的成为我门下弟子，否则你也不必留在本门！',2,1) 
    G.call("talk",'',249,'   这位[师弟]怎么看起来傻愣愣的，他能将本门发扬光大吗？还有这位水姑娘，我觉得[师弟]拿不下！',2,1) 
    G.call("talk",'',143,'   那倒未必，依为师看来，你[师弟]潜力无限，相信为师不会看走眼的，至于说水姑娘，宝象你先将她带至后山山洞，改日就看你[师弟]的了！',2,1) 
    G.call("talk",'',249,'   是，师父！',2,1) 
    G.call("talk",'',248,'   你们血刀门真是有其师必有其徒，哼。。。。。。。',2,1) 
    G.call("talk",'',143,'   '..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..',你先下去休息吧，练武什么的暂时让你师兄代劳！',2,1) 
    G.call("talk",'',0,'   是，师父！',0,0)
    G.QueryName(0x10030001)[tostring(9)] = '血刀门弟子'
    G.QueryName(0x10030001)[tostring(11)] = 1
    G.QueryName(0x10030001)[tostring(107)] = 1
    G.QueryName(0x10030001)[tostring(12)] = '血刀老祖'
    G.QueryName(0x10030001)[tostring(8)] = 7
    G.call('set_note','拜入血刀门下，一年之后再重出江湖')
    G.call('all_over')
    G.call('dark')
    G.call('goto_map',45)
    G.call("talk",'',249,'   [师弟]，今日是你入本门第一天，师兄就代传你本门心法！',2,1) 
    G.call("talk",'',0,'   多谢师兄',0,0)
    G.call('learnmagic',204)
    G.call('all_over')
end
t['初入血刀门-狄云'] = function()
    G.call("talk",'',10,'   '..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..',你找我有什么事情吗？',2,1)
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,关于【躺尸剑法】","2,没什么事情，路过而已"},0) 
        if int_选项 == 1 then 
            G.call('all_over')
            G.call("talk",'',0,'   狄兄弟，你们门派的剑法怎会如此奇怪啊？',0,0)
            if G.call('get_love',248) >= 90 then 
                if G.call('get_story',53) == 2 then
                    G.call("talk",'',10,'   看到你和水姑娘感情如此之好，我也只好放弃了，这就告诉你我这路【躺尸剑法】',2,1)
                    G.call('dark')
                    if G.call('get_point',18) >= 80 then 
                        G.call("talk",'',0,'   这路剑法果然新奇之至，果然深藏着高深剑招！',0,0)
                        if G.call('get_item',265) == 0 then
                            G.call('add_item',265,1)
                        end 
                        if G.call('get_magic',210) == 0 then 
                            G.call('learnmagic',210)
                        end  
                        G.call("talk",'',10,'   这乌蚕衣和神照经乃我前任大哥送我的也一并送给你了',2,1)
                        if G.call('get_item',76) == 0 then
                            G.call('add_item',76,1)
                        end  
                        if G.call('get_item',100) == 0 then
                            G.call('add_item',100,1)
                        end 
                    else
                        G.call("talk",'',0,'   虽然看这路剑法很是稀奇，但是还是看不出所以原，勉强学会！',0,0)
                        if G.call('get_item',265) == 0 then
                            G.call('add_item',265,1)
                        end 
                        if G.call('get_magic',57) == 0 then 
                            G.call('learnmagic',57)
                        end 
                    end 
                    G.call('set_story',53,4)
                else
                    G.call("talk",'',10,'   你不是已经参悟了吗？',2,1)
                end 
                G.call('all_over')
            else
                G.call("talk",'',10,'   我还是想和水姑娘一起探讨这门剑法！',2,1)
                G.call('all_over') 
            end
        elseif int_选项 == 2 then 
            G.call('all_over')
        end
    end
end
t['初入血刀门-水笙'] = function()
    G.call("talk",'',248,'   '..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..'你找我有什么事情吗？',2,1)
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,使用【软言】","2,切磋武功","3,没什么事情，路过而已"},0) 
        if int_选项 == 1 then 
            G.call('all_over')
            if G.call('get_love',248) >= 70 then
                G.call("talk",'',248,'   只要你一直对我好我会一直跟随你的！',2,1)
            else  
                G.call("talk",'',0,'   水姑娘，你说你加入【血刀门】以后我们就可以一起练武，一起出去游玩，多好啊！',0,0)
                local int_劝言等级 = G.call('get_point',11)
                local int_几率 = math.random(100)
                if int_几率 < int_劝言等级 * 2 then
                    G.call('add_love',248,3)
                    if G.call('get_love',248) >= 70 then 
                        G.call("talk",'',248,'   只要你一直对我好我会一直跟随你的！',2,1)
                    else
                        G.call("talk",'',248,'   其实这些时间看你人也不错，只是我还是.......',2,1)
                    end
                else
                    G.call("talk",'',248,'   哼，你长的不美怎么想的那美！',2,1)
                end    
            end
            G.call('all_over')
        elseif int_选项 == 2 then 
            G.call("talk",'',248,'   我会打得你很疼的，小心了！',2,1)
            G.call('set_point',44,G.call('get_point',217))
            G.call('call_battle',0,19,1,0.00000000000000000001,248,0,0,0,0,0)
            local o_battle_结果 = G.call('get_battle') --
            if o_battle_结果  == 1 then
                G.call("talk",'',248,'   真不懂得怜香惜玉！',2,1)
                G.call('add_love',248,-50)
            else
                G.call('add_love',248,3)
                G.call('add_time',4)
                G.call("talk",'',248,'   我真不想打你的，对不起！',2,1)
            end
            G.call('all_over')
            G.call('turn_map')
        elseif int_选项 == 3 then 
            G.call('all_over')
        end
    end
    
    
end
t['初入血刀门-宝象'] = function()
    G.call("talk",'',249,'   '..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..',你找我有什么事情吗？',2,1)
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,请师兄传授功夫","2,与师兄切磋武功","3,挑战【血刀大弟子】","4,没什么事情，向师兄请安而已"},0) 
        if int_选项 == 1 then 
            if G.call('get_magic',17) < 1  then 
                if G.call('get_magic_lv',204) == 5 then 
                    G.call("talk",'',249,'   这手【奇门三才刀】[师弟]可看仔细了！',2,1)  
                    G.call('learnmagic',17)
                else
                    G.call("talk",'',249,'   先将【血刀心法】融汇贯通，切不可操之过急！',2,1)   
                end
            elseif G.call('get_magic',20) < 1 then 
                if G.call('get_magic',17) >= 10 then 
                    G.call("talk",'',249,'   这手【修罗刀】[师弟]可看仔细了！',2,1)  
                    G.call('learnmagic',20)
                else
                    G.call("talk",'',249,'   先将【奇门三才刀】融汇贯通，切不可操之过急！',2,1)   
                end
            elseif G.call('get_magic',203) < 1 then 
                if G.call('get_magic',20) >= 10 then 
                    G.call("talk",'',249,'   这手【灭仙掌】[师弟]可看仔细了！',2,1)  
                    G.call('learnmagic',203)
                else
                    G.call("talk",'',249,'   先将【修罗刀】融汇贯通，切不可操之过急！',2,1)   
                end
            else
                G.call("talk",'',249,'   学武切不可操之过急！',2,1) 
            end 
            G.call('all_over') 
        elseif int_选项 == 2 then 
            G.call("talk",'',249,'   我正好要检验你最近的功夫练得怎么样了，来吧尽全力出招！',2,1) 
            G.call('all_over')
            G.call('call_battle',1,19,1,G.call('get_love',249)*0.3,249,0,0,0,0,0)
            local o_battle_结果 = G.call('get_battle') --
            if o_battle_结果  == 1 then
                G.call('add_love',249,3)
                G.call("talk",'',249,'   你这功夫多少练得有点意思了，这样光兴本门更有希望了。',2,1) 
            else 
                G.call('add_love',249,-3)
                G.call("talk",'',249,'   别让师父看错你了，要多加练习才是',2,1) 
            end 
            G.call('all_over')
            G.call('add_time',4)
            G.call('turn_map')
        elseif int_选项 == 3 then 
            if G.QueryName(0x10030001)[tostring(9)] == '血刀门大弟子' then
                G.call("talk",'',249,'   难道你已经忘记了现任的血刀门大弟子是你啊！',2,1) 
                G.call('all_over')
            else
                G.call("talk",'',249,'   勇气可嘉，不过就要看看有没有这个本事了！',2,1) 
                G.call('all_over')
                G.call('call_battle',1,19,1,100,249,0,0,0,0,0)
                local o_battle_结果 = G.call('get_battle') --
                if o_battle_结果  == 1 then
                    G.call("talk",'',249,'   '..G.QueryName(0x10030001)[tostring(2)]..'你的武功确实比为师兄强的多了，我也老了，是到了该退位让贤的时候。这【血刀门大弟子】我才做了一年，今天起你就是【血刀门大弟子】。我还有一门【雪遁步行】现在也一并传授给你..',2,1) 
                    if G.call('get_magic',205) < 1 then
                        G.call('learnmagic',205)
                    end
                    G.call('add_point',14,170)
                    G.QueryName(0x10030001)[tostring(9)] = '血刀门大弟子'
                    G.call('set_note','成为【血刀门大弟子】！')
                else 
                    G.call("talk",'',249,'   到了你能打倒我的那一天，你便能如愿成为【血刀门大弟子】了。',2,1) 
                end 
                G.call('add_hour',1)
                G.call('all_over')
                G.call('turn_map')
            end
        elseif int_选项 == 4 then 
            G.call('all_over')
        end
       
    end
end
t['初入血刀门-血刀老祖'] = function()
    G.call("talk",'',143,'   '..G.call('get_fullname')..',你找我有什么事情吗？',2,1)
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,学习【软言】","2,请师父带徒儿去外面历练一番","3,没什么事情，向师父请安而已"},0) 
        if int_选项 == 1 then 
            G.call('all_over')
            G.call("talk",'',143,'   你来向我学习【软言】吗？',2,1) 
            local int_选项 = 0
            while int_选项 == 0 do
                int_选项 = G.call("menu",'',0,'',0,0,{"1,弟子打算学习【软言】【五天】","2,弟子打算学习【软言】【十五天】","3,弟子是专程来给师父请安的"},0) 
                if int_选项 == 1 then 
                    G.call('add_point',107,25)
                    G.call('add_love',143,math.floor(G.call('get_point',11)*0.3))
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
                    G.call('add_love',143,math.floor(G.call('get_point',11)*0.5))
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
            if G.call('get_love',143) >= 80 and G.call('get_point',11) >= 8 and  G.call('get_story',53) == 0 and G.call('get_love',248) >= 80 then
                G.call('set_story',53,1)
                G.call('all_over') 
                G.call("talk",'',143,'   那今天就带你去走走吧,顺便带上水姑娘！',2,1)
                G.call('dark')
                G.call("talk",'',0,'   水姑娘来了！',0,0)
                G.call("talk",'',248,'   你们师徒今天又准备做什么伤天害理的事情？',2,1)
                G.call("talk",'',143,'   别废话，随我去就知道了！',2,1) 
                G.call('all_over')
                G.call('初入血刀门-狄云之连城剑法') 
            else
                G.call("talk",'',143,'   凭这点本事就想出去找死吗？',2,1) 
            end 
            G.call('all_over')
            G.call('turn_map')
        elseif int_选项 == 3 then 
            G.call('all_over') 
        end
    end
end
t['初入血刀门-狄云之连城剑法'] = function()
    G.call('地图_进入地图','大雪山',110,1)
    G.call('goto_map',21)
    G.call("talk",'',386,'   羞也不羞？你手中拿的若是真剑，这只手还在吗？',2,1) 
    G.call("talk",'',10,'   我怕削到你身上，这才不小心碰到自己．若是真的拚斗人家肯让你么？师父，你倒评评这个理看．',2,1) 
    G.call("talk",'',250,'   你两个先前五十几招拆得还可以，后面这几招，可简直不成话了',2,1) 
    G.call("talk",'',386,'   爹，咱们的剑法很好，可是这名字实在不大．．．不大好听，躺尸剑法，听著就叫人害怕．',2,1) 
    G.call("talk",'',250,'   听著叫人害怕，那才威风哪敌人还没动手，先就心惊胆战，便已输了三分．你两个再练一遍．阿芳别闹著玩，刚才师哥若不是让你你小命儿还在么？',2,1) 
    G.call("talk",'',143,'   天花落不尽，处处鸟衔飞！',2,1)
    G.call("talk",'',386,'   爹，他……怎么知道？',2,1) 
    G.call("talk",'',143,'   你这老头就是【铁索横江】戚长发,我看你这位大徒弟还不错，怎么样让他入了我【血刀门】吧，在你手上真是可惜了！',2,1)
    G.call("talk",'',250,'   你也太欺人太甚！',2,1)
    G.call("talk",'',143,'   那就让我二个不成器的徒弟和你走几招，让你心服口服！',2,1)
    G.call('set_team',248,0,0,0)
    G.call('call_battle',1,20,2,50,250,0,0,0,0,0)
    local o_battle_结果 = G.call('get_battle') --
    if o_battle_结果  == 1 then  
        G.call('set_story',53,2) 
        G.call("talk",'',143,'   哈哈，连我二个徒弟都打不过，你这大徒弟就跟我走吧！',2,1)
    else
        G.call('set_story',53,3) 
        G.call("talk",'',143,'   今天就这样，二个不中用的东西，我们走！',2,1)
    end
    G.call('dark')
    G.call('goto_map',44)
end
t['初入血刀门-出师'] = function()
    G.call('dark')
    G.call('goto_map',47)
    G.call("talk",'',143,'   现在一年将近，这一年的表现你自己心中有数，出山后不要辱没了我们【血刀门】。',2,1)
    if G.call('get_love',143) >= 90 and G.call('get_point',11) >= 10 and  (G.call('get_story',53) == 2 or G.call('get_story',53) == 4) and G.call('get_love',248) >= 90 then
        G.call("talk",'',143,'   江湖路以后就靠你自己闯了，这【血刀刀法】今日为师就传授与你！',2,1)
        if G.call('get_item',105) == 0 then
            G.call('add_item',105,1)
        end 
        G.call("talk",'',248,'   我要和'..G.call('get_fullname')..'一起！',2,1)
        G.call("talk",'',10,'   我也想和水姑娘、'..G.call('get_fullname')..'出去见识一下！',2,1)
        G.call("talk",'',143,'   也罢，这样你们之间相互也有个照应',2,1)
        G.call('set_role',248,10,396)
        G.call('set_roleskill',248,1,210)
        G.call('set_role',10,10,396)
        G.call('set_roleskill',10,1,210)
        G.call('join',10)
        G.call('join',248)

    else
    
    end
    G.call("talk",'',0,'   徒儿谨记师父教诲。',0,0) 
    G.call('出师-增加被动')
    G.call('all_over') 
    G.call('set_alltime',2,1,1,4,1)
    if #G.QueryName(0x1017000e).进度列表 > 6 then 
       G.QueryName(0x1017000e).进度列表[6].完成 = 1
    end
    G.call('初入聚贤庄')
end