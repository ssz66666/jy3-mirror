--[[400d

]]
local G = require "gf"
local L = {}
local t = G.api
local JY = 0
t['牛家村-破败']=function() 
    G.Stop(1)
    G.call('地图_进入地图','破败的牛家村',1,33)  
    if G.call('get_point',115) == 20 then 
        G.call("talk",'',0,'   全村一片狼藉，血腥遍地...当日我放走的强盗回来寻仇了...',0,0)
    else
        G.call("talk",'',90,'   呵呵，好人不杀人，只会救坏人；呵呵，坏人不救人，专门杀好人.。呵呵呵，你们杀吧杀吧，好人都死光了，你们就没得杀了，哈哈哈。',2,1)
        G.call("talk",'',0,'   这不是曲家酒店的女孩吗？怎么变得疯疯癫癫。全村一片狼藉，血腥遍地...莫非如曲菲儿所说，当日我放走的强盗回来寻仇了...',0,0)
    end
    G.call('all_over')
    G.call('goto_map',1)
end
t['牛家村-秀才']=function() 
    G.call("talk",'',66,'   学富五车，才高八斗；博古通今，能掐会算。本人现在优惠教授【读书识字】学费一千两，包教包会！并且保证你每次学习后都会有一种突然开窍的感觉，如果没有这种感觉，请拿脑袋撞墙。',2,1)
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,学费给你，赶紧教我","2,俺没兴趣",},0) 
        if int_选项 == 1 then
            if G.misc().自创条件 == 2 then 
                G.call("talk",'',66,'   先天不足再读书也是枉然，罢了罢了',2,1) 
            else
                if G.call('get_point',35) < 100 then 
                    if G.call('get_money') >= 1000 then 
                        G.call("talk",'',66,'   学后感觉怎么样？是不是觉得非常亏本啦？哇塞，你开窍了耶，记得下次不要再花冤枉钱咯。',2,1) 
                        local int_随机数_1 = math.random(100)
                        local int_随机数_2 = math.random(100)
                        G.call('add_point',104,  math.floor(int_随机数_1/2) + 49   )
                        G.call('add_point',35,math.ceil(int_随机数_2/100 *5)    )
                        if G.call('get_point',35) >= 30 and G.call('get_point',134) == 0  then 
                            G.call('set_point',134,1)
                            G.call('notice1','领悟波斯文')
                        elseif G.call('get_point',35) >= 60 and G.call('get_point',135) == 0  then 
                            G.call('set_point',135,1) 
                            G.call('notice1','领悟梵文')
                        elseif G.call('get_point',35) >= 90 and G.call('get_point',136) == 0 then 
                            G.call('set_point',136,1) 
                            G.call('notice1','领悟满文')
                        end    
                        G.call('add_money',-1000)  
                        local o_kzyy = G.QueryName(0x1017000a)  
                        if o_kzyy.完成 == 0 then 
                            G.call('set_newpoint',80,G.call('get_newpoint',80)- 1   )
                            o_kzyy.进度列表[1].当前进度 = o_kzyy.进度列表[1].当前进度 + 1
                        end
                        if o_kzyy.进度列表[1].当前进度 >= 500 and o_kzyy.完成 == 0 then 
                            o_kzyy.进度列表[1].完成 = 1
                            o_kzyy.完成 = 1 
                            G.wait_time(250)
                            G.call('notice1','完成成就【开卷有益】')
                        end	
                    else
                        G.call("talk",'',66,'   [大哥]，知识这玩意可是一份钱一分货！等你下次攒齐了学费咱们再开课吧。',2,1) 
                    end 
                else
                    G.call("talk",'',66,'   你已经学富五车，我已经没什么可以教你的了',2,1) 
                end
            end
            G.call('all_over')
        elseif int_选项 == 2 then
            G.call('all_over')
        end    
    end 
end     
t['牛家村-黄蓉']=function()
    if G.call('team_full') == false then  
        G.call("talk",'',12,'   '..G.QueryName(0x10030001)[tostring(2)]..'[哥哥]，你还记得我吗，我就是当日在破庙里的那个【乞丐丙】呀。从小我就失了娘亲，我又和爹爹闹翻，只有你不嫌弃我，关照我。',2,1)  
        G.call("talk",'',12,'   所以我认为你是个好人，我要跟你在一起，要是有人欺负你，我就帮你教训他们！蓉儿的【软猬甲】就送给'..G.QueryName(0x10030001)[tostring(2)]..'[哥哥]做见面礼啦。',2,1) 
        G.call('join',12)
        if G.call('get_item',75) == 0 then 
            G.call('add_item',75,1)
        end     
        G.call('all_over')
        G.call('dark')
        G.call('set_story',50,1)
        G.QueryName(0x10060022).城市列表[3].隐藏 = 1
    else
        G.call("talk",'',12,'   '..G.QueryName(0x10030001)[tostring(2)]..'[哥哥]，你还记得我吗，我就是当日在破庙里的那个【乞丐丙】呀。从小我就失了娘亲，我又和爹爹闹翻，只有你不嫌弃我，关照我。',2,1) 
        G.call("talk",'',12,'   所以我认为你是个好人，我要跟你在一起，要是有人欺负你，我就帮你教训他们！可是'..G.QueryName(0x10030001)[tostring(2)]..'[哥哥]好像已经不需要我了。',2,1)         
        G.call('all_over') 
    end  
    G.call('turn_map')  
end     
t['牛家村-穆念慈']=function() 
    G.call("talk",'',130,'   小女子，比武招亲。你若是能打赢我，我就嫁给你！',2,1)   
    local int_选项 = 0 
    while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,哈哈，你相公来迎接你啦","2,俺没兴趣"},0) 
        if int_选项 == 1 then
            G.call('all_over')
            G.call('call_battle',1,10,1,130,130,0,0,0,0,0)
            local o_battle_结果 = G.call('get_battle') 
            if o_battle_结果  == 1 then
                if G.call('team_full') == false then  
                    G.call("talk",'',130,'   今后我就是你的人了。无论你是好是坏我都会跟着你。除非你哪天不要我了，我还会在这里摆擂台等你！',2,1) 
                    G.call('join',130)
                    G.QueryName(0x10060003).城市列表[8].隐藏 = 1
                else
                    G.call("talk",'',130,'   等你需要我的时候再来吧！',2,1) 
                end     
            else
                G.call("talk",'',130,'   我不需要你这样软弱的男人！',2,1)   
            end  
            G.call('add_time',2)   
            G.call('all_over')
            G.call('dark')
            G.call('turn_map')
        elseif   int_选项 == 2 then 
            G.call('all_over') 
        end   
    end      

end    
t['牛家村-茶博士']=function() 
    G.call("talk",'茶博士',188,'   甘泉煮茶绿，香飘迎客来！小号供应各种优质名茶，货真价实！',2,1)   
    local int_选项 = 0 
    while true do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,我看看有什么茶叶","2,我是随便看看，没什么好买的",},0) 
        if int_选项 == 1 then
            G.call('all_over')
            G.call('shop',4)
            if  G.call('getprice') > 0 then 
                if  G.call('getprice') < G.call('get_money')  then 
                    G.call('buyresult')
                else
                   G.call("talk",'茶博士',188,'   对不起，您的银两不够，小店概不赊欠！',2,1)
               end 
            else
            end  
            G.call("talk",'茶博士',188,'  甘泉煮茶绿，香飘迎客来！小号供应各种优质名茶，货真价实！',2,1)
        elseif   int_选项 == 2 then 
            G.call('all_over')
            break
        end 
    end        
end  
t['牛家村-肉贩']=function() 
    G.call("talk",'肉  贩',49,'   新鲜的肉嘞，童叟无欺价格公道！',1,1)
    local int_选项 = 0
	while true do
        int_选项 = G.call("menu",nil,0,'',0,0,{"1,我看看你这都有什么肉好买","2,我这又有些野味，你看着出个好价钱吧","3,我这又有些野味，你看着出个好价钱吧",'4,我是随便看看，没什么好买的'},0) 
        if int_选项 == 1 then 
            G.call('all_over')
            G.call('shop',2)
            if  G.call('getprice') > 0 then 
                if  G.call('getprice') < G.call('get_money')  then 
                    G.call('buyresult')
                else
                   G.call("talk",'肉  贩',49,'   钱不够？没钱就别乱动老子卖的肉！这位[小哥]的玩笑可是开大了。小店本小利微，可经不起吃白食啊。你点了这么多饭菜，而你的钱袋好似不够鼓啊。',1,1)
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
                        G.call("talk",'肉  贩',49,'   好[小子]，收成看来不错啊。给你件【剥皮刀】，打猎时运气好的话，手抓到的猎物就可以获得他们的皮毛了，这些皮毛或许日后还能有其他用途呢',1,1) 
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
                                    G.call("talk",'肉  贩',49,'   好本事啊，当年只有郭杨两位[大哥]才能杀死黑熊，想不到英雄出少年！',1,1) 
                                    G.call('notice1','获得杀熊小勇士称号')
                                    G.call('add_point',14,10) 
                                end 
                            else
                                G.call("talk",'肉  贩',49,'   小兄弟好身手，再打到野味还要记得卖给俺啊，不会亏待你的！',1,1)  
                            end 
                        end  
                    end 
                else
                    G.call("talk",'肉  贩',49,'   混[小子]，敢消遣你爷爷我！你再胡闹爷爷把你下水挖出来当杂碎卖了！',1,1) 
                end         
            else
            end  
            G.call("talk",'肉  贩',49,'   新鲜的肉嘞，童叟无欺价格公道！',1,1)   
        elseif int_选项 == 3 then
            G.call('all_over')
            G.call('shop',7)
            if G.QueryName(0x10030001)[tostring(234)] == 1 then 
                if  G.call('getprice') > 0 then 
                    G.call('sellresult') 
                    if  G.call('getprice') >= 500 and G.call('get_item',278) == 0 then
                        G.call('add_item',278,1) 
                        G.call("talk",'肉  贩',49,'   好[小子]，收成看来不错啊。给你件【剥皮刀】，打猎时运气好的话，手抓到的猎物就可以获得他们的皮毛了，这些皮毛或许日后还能有其他用途呢',1,1) 
                    else
                        G.call("talk",'肉  贩',49,'   小兄弟好身手，再打到野味还要记得卖给俺啊，不会亏待你的！',1,1)  
                    end 
                else
                    G.call("talk",'肉  贩',49,'   混[小子]，敢消遣你爷爷我！你再胡闹爷爷把你下水挖出来当杂碎卖了！',1,1) 
                end  
            else
            end        
            G.call("talk",'肉  贩',49,'   新鲜的肉嘞，童叟无欺价格公道！',1,1)    
        elseif int_选项 == 4 then     
            G.call('all_over')
            break
        end     
    end        
end    
t['牛家村-冯铁匠']=function() 
    G.call("talk",'',197,'   给我【红宝石】【蓝宝石】【玄铁矿】【白晶矿】【蓝晶矿】【红晶矿】各一块，我给你随机打造一件兵器！(周目数增加可打造兵器也会增加)',2,1)   
    local int_选项 = 0 
    while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,我都准备好了，给你吧","2,俺没兴趣",},0) 
        if int_选项 == 1 then
            local p = 0
            local k = 0
            for i = 312,317 do 
                if G.call('get_item',i) > 0 then
                    p = p + 1
                end 
            end 
            local t = {}
            for i = 2,71 do 
                table.insert(t,i) 
            end  
            for i = 2,71 do 
                if G.call('get_item',i) > 0 then
                    for j = 1,#t do 
                        if t[j] == i then 
                            table.remove(t,j)
                            break
                        end
                    end
                end 
            end  
            --根据周目数解锁可锻造武器
            if G.call('get_point',237) < 5 then 
                if G.call('get_point',237) == 1 then
                   local no = {62,61,60,59,55,54,48,47,29,28,27,26}
                    for i = 1,#no do 
                        for j = 1,#t do 
                            if t[j] == no[i] then 
                                table.remove(t,j)
                                break
                            end
                        end
                    end    
                end 
                if G.call('get_point',237)  == 2  then
                    local no = {27,28,29,48,54,55,59,61,62}
                    for i = 1,#no do 
                        for j = 1,#t do 
                            if t[j] == no[i] then 
                                table.remove(t,j)
                                break
                            end
                        end
                    end  
                end 
                if G.call('get_point',237)  == 3  then
                    local no = {28,29,54,55,59,62}
                    for i = 1,#no do 
                        for j = 1,#t do 
                            if t[j] == no[i] then 
                                table.remove(t,j)
                                break
                            end
                        end
                    end 
                end 
                if G.call('get_point',237)  == 4  then
                    local no = {29,55,59}
                    for i = 1,#no do 
                        for j = 1,#t do 
                            if t[j] == no[i] then 
                                table.remove(t,j)
                                break
                            end
                        end
                    end 
                end 
            end
            if #t > 0 then 
                if p  ==  6 then 
                    G.call("talk",'',197,'   东西已经打造完毕，你去背包自己查找吧！',2,1) 
                    local r = t[math.random(#t)] 
                    for n = 312,317 do 
                        G.call('add_item',n,-1)
                    end 
                    G.call('add_item',r,1)
                else
                    G.call("talk",'',197,'   你的材料没有准备齐全，要是敢糊弄我，当心铁锤砸爆你的脑袋！',2,1)  
                end 
            else
                G.call("talk",'',197,'   等你需要的时候再来吧',2,1)
            end     
        elseif int_选项 == 2 then     
        end
        G.call('all_over')
    end         
end  
t['牛家村-祖千秋']=function() 
    G.call("talk",'',208,'   呼儿将出换美酒，与尔同销万古愁。小号供应各种上等名酒，货真价实！',2,1)   
    local int_选项 = 0 
    while true do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,我看看你这都有什么好酒","2,我是随便看看，没什么好买的",},0) 
        if int_选项 == 1 then
            G.call('all_over')
            G.call('shop',5)
            if  G.call('getprice') > 0 then 
                if  G.call('getprice') < G.call('get_money')  then 
                    G.call('buyresult')
                else
                   G.call("talk",'',208,'   对不起，您的银两不够，小店概不赊欠',2,1)
               end 
            else
            end  
            G.call("talk",'',208,'  呼儿将出换美酒，与尔同销万古愁。小号供应各种上等名酒，货真价实！',2,1)
        elseif   int_选项 == 2 then 
            G.call('all_over')
            break
        end 
    end 
end    