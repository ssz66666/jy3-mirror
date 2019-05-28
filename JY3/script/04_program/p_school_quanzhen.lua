--[[4008

]]
local G = require "gf"
local L = {}
local t = G.api
local JY = 0
--type=剧情
--hide=false
--private=false
t['初入全真'] = function()
    G.call('地图_进入地图','全真大殿',33,44)  
    G.call("talk",'',166,'   今天起，你就是全真门下了。全真功夫为天下玄门正宗，你虽然有此福缘能入我全真学这上乘功夫，但是也只有【一年时间】。一年后，你仍是全真弟子，但是不能在山上修习武功，需得回到江湖间磨练自己!',2,1)
    G.call('set_note','拜入全真门下，一年之后再重出江湖') 
    G.call("talk",'',166,'   老道早已立誓不受弟子，但是日后却会传功夫给你。你的师父另有其人，我来给你引荐——赵志敬！此人乃我教掌教大弟子，日后你跟他不但要学好武功，更要学好为人处世的道理。',2,1)
    G.call("talk",'',167,'   贫道便是你师父赵志敬，日后你须得对我言听计从，否则我就会重罚你这个忤逆的弟子。',2,1)
    G.call("talk",'',168,'   我是你的师叔——甄志丙。以前你还有个师叔叫尹志平，因为他行为不端，所以把他开革，现在我顶替了他的位置。',2,1)
    G.call("talk",'',214,'   我是你和蔼可亲的鹿清笃鹿师兄，以后你做我的小弟，有我罩着你，全真派没几个敢欺负你。',2,1)
    G.call("talk",'',166,'   志敬，你把【'..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..'】带去练功吧。他在全真学艺的机会不多，你要耐心好好培养他，可不要辜负为师对你的重望！',2,1)
    G.call("talk",'',167,'   谨尊师父法旨。',2,1)
    G.call('all_over')
    G.QueryName(0x10030001)[tostring(9)] = '全真弟子'
    G.QueryName(0x10030001)[tostring(11)] = 1
    G.QueryName(0x10030001)[tostring(107)] = 1
    G.QueryName(0x10030001)[tostring(12)] = '赵志敬'
    G.QueryName(0x10030001)[tostring(8)] =4
    if G.call('get_item',86) < 1 then 
        G.call('add_item',86,1)   
    end   
    G.call('地图_进入地图','演武场',10,44)  
    G.call("talk",'',167,'   为师在传功夫之前，想先问你几个问题。我想知道，你今天见到的那些人里，谁给你留下的印象最有好感？',2,1)
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,当然是师父您啦","2,丘处机太师父","3,甄志炳师叔","4,鹿清笃师兄"},0) 
        if int_选项 == 1 then 
            G.call('add_love',167,5)
            G.call('all_over')
        elseif int_选项 == 2 then 
            G.call('all_over')
        elseif int_选项 == 3 then
            G.call('add_love',167,-5)
            G.call('all_over')
        elseif int_选项 == 4 then
            G.call('all_over')
        end          
    end  
    G.call("talk",'',167,'   你觉得全真教里除了丘掌教之外，谁的武功最高？',2,1)
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,当然是师父您啦","2,甄志炳师叔","3,鹿清笃师兄","4,我看不出来"},0) 
        if int_选项 == 1 then 
            G.call('add_love',167,5)
            G.call('all_over')
        elseif int_选项 == 2 then 
            G.call('add_love',167,-5)
            G.call('all_over')
        elseif int_选项 == 3 then
            G.call('all_over')
        elseif int_选项 == 4 then
            G.call('all_over')
        end          
    end  
    G.call("talk",'',167,'   以你看，谁最有可能当上下一任的全真教掌教？',2,1) 
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,当然是师父您啦","2,甄志炳师叔","3,鹿清笃师兄","4,我看不出来"},0) 
        if int_选项 == 1 then 
            G.call('add_love',167,5)
            G.call('all_over')
        elseif int_选项 == 2 then 
            G.call('add_love',167,-5)
            G.call('all_over')
        elseif int_选项 == 3 then
            G.call('all_over')
        elseif int_选项 == 4 then
            G.call('all_over')
        end          
    end  
    G.call("talk",'',167,'   你觉得全真教里谁最无耻下流？',2,1) 
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,当然是师父您啦","2,甄志炳师叔","3,鹿清笃师兄","4,我看不出来"},0) 
        if int_选项 == 1 then 
            G.call('add_love',167,-5)
            G.call('all_over')
        elseif int_选项 == 2 then 
            G.call('add_love',167,5)
            G.call('all_over')
        elseif int_选项 == 3 then
            G.call('all_over')
        elseif int_选项 == 4 then
            G.call('all_over')
        end          
    end 
    G.call("talk",'',167,'   嗯，你回答得很好。我今天先传授给你《全真心法》秘籍，这是我全真派的入门功课，你要好好练习它。',2,1) 
    G.call('all_over')
    G.call('learnmagic',161)
    G.call('goto_map',23)
  
end   
t['初入全真-赵志敬'] = function()
    G.call("talk",'',167,'   '..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..'你找我有什么事情吗？',2,1) 
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,请师父传功","2,与师父切磋","3,没什么事情，向师父请安而已"},0) 
        if int_选项 == 1 then 
            if G.call('get_love',167) > 60 then 
                if G.call('get_magic',51) < 1 then 
                    if G.call('get_magic_lv',161) == 5 then 
                        G.call("talk",'',167,'   你的【全真心法】根基很牢固，现在已经适合练习【全真剑法】了，我现在就传授给你。没有剑怎么行，给你【木剑】你先凑或用吧。',2,1) 
                        G.call('learnmagic',51)
                        G.call('add_item',2,1) 
                    else    
                        G.call("talk",'',167,'   【全真心法】是全真武功的根基，你不练好全真心法就学不成全真的其他武功！',2,1) 
                    end
                end     
                if  G.call('get_magic',98) < 1  and  G.call('get_magic',51) > 0 then 
                    if G.call('get_magicexp',51) >= 352 then 
                        G.call("talk",'',167,'   今天我要传你一套【三花聚顶掌】，你可要学仔细了。',2,1) 
                        G.call('learnmagic',98)
                    else
                        G.call("talk",'',167,'   把【全真剑法】练得纯熟了再来找我学其他的武功。。',2,1)
                    end
                else 
                    G.call("talk",'',167,'   功夫学了这么多，就看你会不会用了，别在每次的较场比武上给我丢人就行。',2,1)    
                end
            else    
                G.call("talk",'',167,'   你急什么！全真武功讲究循序渐进，你才来几天就好高骛远？再过些日子你还想当掌教了呢，一边练功去！',2,1)    
            end  
            G.call('all_over')   
        elseif int_选项 == 2 then 
            G.call("talk",'',167,'   我正好要检验你最近的功夫练得怎么样了，来吧尽全力出招！',2,1) 
            G.call('all_over')
            G.call('call_battle',1,10,1,G.call('get_love',167)*0.3,167,0,0,0,0,0)
            local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 0, 167, 0, 0, 0, 0, 1, _root.Js[38].m_nFavour*0.03, 0);
            if o_battle_结果  == 1 then
                G.call('add_love',167,3)
                G.call("talk",'',167,'   你这功夫多少练得有点意思了，这样我就可以给掌教师父交差了。',2,1) 
            else 
                G.call('add_love',167,-3)
                G.call("talk",'',167,'   小鬼头！你把功夫练到狗身上了？到时候掌教检验你的武功进展，我看你怎么交代！',2,1) 
            end  
            G.call('all_over')
            G.call('add_time',4)
            G.call('turn_map')    
        elseif int_选项 == 3 then 
            G.call('all_over')
        end        
    end     
end     
t['初入全真-甄志炳'] = function()
    G.call("talk",'',168,'   '..G.QueryName(0x10030001)[tostring(2)]..'师侄今天这么清闲？来找我有什么事？',2,1) 
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,请师叔传授功夫","2,与师叔切磋武功","3,没什么事情，向师叔请安而已"},0) 
        if int_选项 == 1 then 
            if G.call('get_love',167) <= 50 then 
                if G.call('get_magic',175) < 1 then 
                     
                        G.call("talk",'',168,'   看在份属同门的面子上，我就传你一手轻功，可下不为例。要是让你师父知道你跟我学功夫，可就该给你脸色看了。',2,1) 
                        G.call('learnmagic',175)
                        G.call('add_love',167,-10) 
                else    
                    G.call("talk",'',168,'   你到底还是赵师兄的弟子，虽然他对你冷言冷语，你心里忍着就是了，好好表现，他总会传你功夫的。',2,1) 
                   
                end 
            else
                G.call("talk",'',168,'   你是赵师兄的弟子门人，我怎么能够越俎代庖呢。',2,1) 
            end  
            G.call('all_over')
        elseif int_选项 == 2 then 
            G.call("talk",'',168,'   我来看看赵师兄的弟子把全真的功夫练到什么境界了！',2,1) 
            G.call('all_over')
            G.call('call_battle',1,10,1,G.call('get_love',168)*0.3,168,0,0,0,0,0)
            local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 0, 168, 0, 0, 0, 0, 1, _root.Js[38].m_nFavour*0.03, 0);
            if o_battle_结果  == 1 then
                G.call('add_love',168,3)
                G.call("talk",'',168,'   赵师兄教出的弟子果然不同凡响，好样的。',2,1) 
            else 
                G.call('add_love',168,-3)
                G.call("talk",'',168,'   看来是你自己贪玩，辜负了赵师兄的栽培了。',2,1) 
            end  
            G.call('all_over')
            G.call('add_time',4)
            G.call('turn_map') 
        elseif int_选项 == 3 then 
            G.call('all_over')
        end 
    end 
end     
t['初入全真-鹿清笃'] = function()
    G.call("talk",'',214,'   '..G.QueryName(0x10030001)[tostring(2)]..'师弟，来找我切磋武功吗？',2,1) 
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,来找鹿师兄随便聊聊","2,与鹿师兄切磋武功","3,没什么事情，向鹿师兄请安而已"},0) 
        if int_选项 == 1 then 
            local a1 = '当年我教【全真七子】威震天下，谅来那时你还在娘肚里呢！'
            local a2 = '师叔祖周伯通生性滑稽，乃是王重阳祖师的师弟，已经十多年没见他出现在重阳宫了。'
            local a3 = '【南帝北丐东邪西毒中神通】，那【中神通】就是说的敝教祖师王重阳了。'
            local a4 = '我教每年三六九月会在较场举行比武，由丘太师父品评各人的武功，获胜的还能得到太师父亲授武功的机会。'
            local a5 = '重阳祖师的先天神功可谓天下内功的瑰宝，比那些南帝东邪之流练得内功不知要强上几百倍。'
            local a6 = '小师弟你别给我假装正经，虽然你入了我全真教，背地里一定还想着大鱼大肉吃着，漂亮美妞搂着，是也不是？'
            local a7 = '我也不瞒你。我师父现在是掌教弟子，再过些年那就是全真掌教，而我就是他老人家最疼爱的弟子。你好好想想自己的前程吧。'
            local a8 = '我师父和甄志丙师叔一贯不合，你若不想惹师父生气，就少招惹甄师叔。'
            local a9 = '师兄要是有天发达了，绝忘不了你这个小师弟的。'
            local a10 = '咱们全真派的功夫那可是天底下数一数二的，祖师王重阳就曾在【华山论剑】赢得了【天下第一】的名头'
            local b = math.random(10)
            local a = {a1,a2,a3,a4,a5,a6,a7,a8,a9,a10}
            G.call("talk",'',214,'   '..a[b],2,1) 
            G.call('all_over')
        elseif int_选项 == 2 then 
            G.call("talk",'',214,'   我正闷得慌呢，快来陪我解解闷！',2,1) 
            G.call('all_over')
            G.call('call_battle',1,10,1,G.call('get_love',214)*0.3,214,0,0,0,0,0)
            local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 0, 214, 0, 0, 0, 0, 1, _root.Js[38].m_nFavour*0.03, 0);
            if o_battle_结果  == 1 then
                G.call('add_love',214,-3)
                G.call("talk",'',214,'   混小子，我可是你师兄啊，你还真敢用功夫打我！下次看我怎么教训你！',2,1) 
            else 
                G.call('add_love',214,3)
                G.call("talk",'',214,'   师弟承让了，我好歹掌教弟子的得意高徒，怎么可能会输给你呢，哈哈哈哈。',2,1) 
            end 
            G.call('all_over')
            G.call('add_time',4)
            G.call('turn_map') 
        elseif int_选项 == 3 then 
            G.call('all_over')
        end
    end         
end 
t['初入全真-丘处机'] = function()
    G.call("talk",'',166,'   你来向我学习【养生】之道吗？身为全真弟子，如果不通晓养生之道那可太不应该了。我这【养生】之道本就是和全真武功一脉相连，更有事半功倍的效果。',2,1) 
    local JY = 0
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,徒孙打算学习【养生】之道【五天】","2,徒孙打算学习【养生】之道【十五天】","3,徒孙是专程来给太师父请安的"},0) 
        if int_选项 == 1 then 
            G.call('add_point',107,25)
            G.call('add_love',166,math.floor(G.call('get_point',11)*0.3))
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
            G.call('add_love',166,math.floor(G.call('get_point',11)*0.5))
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
            G.call('goto_map',23)
            G.call('all_over')
        end
       
    end         
end 
t['初入全真-三月大比较'] = function()  
    G.call('地图_进入地图','演武场',10,44) 
    G.call("talk",'',166,'   今天召开全真教三月份的校场比武,'..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..'你出来，让我看看你的功夫进境怎么样了。',2,1) 
    G.call('add_hour',1)
    G.call('all_over')
    G.call('set_point',44,G.call('get_point',217)) 
    G.call('set_point',46,G.call('get_point',218))
    G.call('call_battle',1,10,1,150,214,0,0,0,0,0)
    local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 0, 214, 0, 0, 0, 0, 1, 1.5, 0)
    if o_battle_结果  == 1 then
        G.call("talk",'',166,'   很好，看来志敬在你身上没少下功夫啊。你今天的表现我很满意，快回去好好休息吧。',2,1) 
        G.call('all_over')
        G.call('add_hour',1)
        G.call('call_battle',1,10,1,190,214,0,0,0,0,0)
        local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 0, 214, 0, 0, 0, 0, 1, 1.9, 0)
        if o_battle_结果  == 1 then
            G.call("talk",'',166,'   很好，看来志敬在你身上没少下功夫啊。你今天的表现我很满意，快回去好好休息吧。',2,1) 
            G.call('all_over')    
            G.call('goto_map',23)
        else
            G.call("talk",'',166,'   志敬！这是怎么回事？怎么他的功夫倒似越来越差了，你是怎么教导他的？',2,1) 
            G.call("talk",'',167,'   弟子把功夫一点不拉的全交给他了，一定是他懒惰，最近荒废了功课，弟子确实有失察之罪，请师父见谅。',2,1) 
            G.call("talk",'',167,'   '..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..'你太叫为师失望了，平日里你的用功刻苦原来都是装给我看的，今天终究难逃你太师父的法眼！你这个小畜生看我以后怎么管教你！',2,1) 
            if G.call('get_magicexp',51) < 1 and G.call('get_magicexp',98) < 1 then 
                G.call("talk",'',0,'   启禀太师父！赵志敬他不配做我师父，到现在他什么功夫都没传给我，我怎么可能打得过这群臭道士！',0,0) 
                G.call("talk",'',167,'   "小畜生！你不反思己过，倒先学会埋怨起师父来了。我传你的内功心法那是白传的吗？你怎么说我没传你东西？自己不用心练功还要诬告我，你这样的逆徒我不要也罢！',2,1) 
                G.call("talk",'',166,'   '..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..'你师父却已传授给你了【全真内功】，你自己怎么不好好练习？太师父对你期望颇深，你怎可如此的不慎言慎行！',2,1)
                G.call("talk",'',0,'   我来这全真派是受你们训斥的吗？小爷我不在这什么全真全假派了！赵志敬，以后我练好武功，定要来报今日羞辱之仇！',0,0) 
                G.call('set_CH','全真弃徒')
                G.call('set_note','反出全真教，成为全真弃徒！')
                G.call('add_point',14,-100)
                G.call('add_point',15,-20)
                G.QueryName(0x10030001)[tostring(8)] = 0
                G.QueryName(0x10030001)[tostring(12)] = ''
                G.QueryName(0x10030001)[tostring(9)] = ''  
                G.call('all_over')
                G.call('初入古墓')
            else
                G.call("talk",'',0,'   师父教训的是，弟子知道错了，以后定会努力的。',0,0)  
                G.call('all_over')
                G.call('goto_map',23)
            end 

        end         
    else
        G.call("talk",'',166,'   志敬！这是怎么回事？怎么他的功夫倒似越来越差了，你是怎么教导他的？',2,1) 
        G.call("talk",'',167,'   弟子把功夫一点不拉的全交给他了，一定是他懒惰，最近荒废了功课，弟子确实有失察之罪，请师父见谅。',2,1) 
        G.call("talk",'',167,'   '..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..'你太叫为师失望了，平日里你的用功刻苦原来都是装给我看的，今天终究难逃你太师父的法眼！你这个小畜生看我以后怎么管教你！',2,1) 
        if G.call('get_magicexp',51) < 1 and G.call('get_magicexp',98) < 1 then 
            G.call("talk",'',0,'   启禀太师父！赵志敬他不配做我师父，到现在他什么功夫都没传给我，我怎么可能打得过这群臭道士！',0,0) 
            G.call("talk",'',167,'   "小畜生！你不反思己过，倒先学会埋怨起师父来了。我传你的内功心法那是白传的吗？你怎么说我没传你东西？自己不用心练功还要诬告我，你这样的逆徒我不要也罢！',2,1) 
            G.call("talk",'',166,'   '..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..'你师父却已传授给你了【全真内功】，你自己怎么不好好练习？太师父对你期望颇深，你怎可如此的不慎言慎行！',2,1)
            G.call("talk",'',0,'   我来这全真派是受你们训斥的吗？小爷我不在这什么全真全假派了！赵志敬，以后我练好武功，定要来报今日羞辱之仇！',0,0) 
            G.call('set_CH','全真弃徒')
            G.call('set_note','反出全真教，成为全真弃徒！')
            G.call('add_point',14,-100)
            G.call('add_point',15,-20)
            G.QueryName(0x10030001)[tostring(8)] = 0
            G.QueryName(0x10030001)[tostring(12)] = ''
            G.QueryName(0x10030001)[tostring(9)] = ''  
            G.call('all_over')
            G.call('初入古墓')
        else
            G.call("talk",'',0,'   师父教训的是，弟子知道错了，以后定会努力的。',0,0)  
            G.call('all_over')
            G.call('goto_map',23)
        end     
    end 

end   
t['初入全真-六月大比较'] = function() 
    G.call('地图_进入地图','演武场',10,44) 
    G.call("talk",'',166,'   今天召开全真教六月份的校场比武,'..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..'你出来，让我看看你的功夫进境怎么样了。',2,1) 
    G.call('all_over')
    G.call('set_point',44,G.call('get_point',217)) 
    G.call('set_point',46,G.call('get_point',218))
    G.call('call_battle',1,10,1,350,214,0,0,0,0,0)
    local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 0, 214, 0, 0, 0, 0, 1, 3.5, 0);
    G.call('add_hour',1)
    if o_battle_结果  == 1 then
        G.call('call_battle',1,10,1,480,214,0,0,0,0,0)
        local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 0, 214, 0, 0, 0, 0, 1, 4.8, 0);
        G.call('add_hour',1)
        if o_battle_结果  == 1 then
            G.call('add_hour',1)
            G.call('call_battle',1,10,1,620,214,0,0,0,0,0)
            local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 0, 214, 0, 0, 0, 0, 1, 6.2, 0);
            if o_battle_结果  == 1 then
                G.call("talk",'',166,'   不错，近来看得出你功夫大涨啊。作为这次胜出的奖励，我来传你一套掌法。此掌法是我先师重阳真人所创，叫【重阳神掌】，你要勤加练习，不可堕了先师的威名！',2,1) 
                G.call('learnmagic',113)
            else
                G.call("talk",'',166,'   唉，'..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..'你很是让我失望，罢了罢了...',2,1) 
            end     
        else
            G.call("talk",'',166,'   唉，'..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..'你很是让我失望，罢了罢了...',2,1) 
        end     
    else
        G.call("talk",'',166,'   唉，'..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..'你很是让我失望，罢了罢了...',2,1)   
    end     
    G.call('all_over')
    G.call('goto_map',23)
end     
t['初入全真-九月大比较'] = function() 
    G.call('地图_进入地图','演武场',10,44) 
    G.call("talk",'',166,'   今天召开全真教九月份的校场比武,'..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..'你出来，让我看看你的功夫进境怎么样了。',2,1) 
    G.call('all_over')
    G.call('set_point',44,G.call('get_point',217)) 
    G.call('set_point',46,G.call('get_point',218))
    G.call('call_battle',1,10,1,100,168,0,0,0,0,0)
    local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 0, 168, 0, 0, 0, 0, 1, 1, 0);
    G.call('add_hour',1)
    if o_battle_结果  == 1 then
        G.call('call_battle',1,10,1,130,167,0,0,0,0,0)
        local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 0, 167, 0, 0, 0, 0, 1, 1.3, 0);
        G.call('add_hour',1)
        if o_battle_结果  == 1 then
            G.call('add_hour',1)
            G.call('call_battle',1,10,1,150,168,0,0,0,0,0)
            local o_battle_结果 = G.call('get_battle')  --_root.War("演武场", 0, 168, 0, 0, 0, 0, 1, 1.5, 0);
            if o_battle_结果  == 1 then
                G.call("talk",'',166,'   我全真教果然是后继有人！刚才的最后一场比试其实暗藏了【北斗七星阵法】，想不到你竟然随手破去，真是了不起！今日我把先师的【先天功】秘籍交付于你，你从此便是我全真教【掌教弟子】了。',2,1) 
                G.call("talk",'',166,'志敬敬虽也不错，但是我认为你更能把我教发扬光大！',2,1)
                G.call('add_item',123,1)
                G.call('add_love',167,-30)
                G.QueryName(0x10030001)[tostring(9)] = '掌教弟子' 
                G.call('set_note','成为全真教【掌教弟子】！')
                G.call('add_point',14,150)
            else
                G.call("talk",'',166,'   今年的最后一场比试你都输了，看来你的资质确是有限，还难以但当全真教的重任。由此看来，这【掌教弟子】还是继续由志敬来当吧。',2,1) 
            end     
        else
            G.call("talk",'',166,'   今年的最后一场比试你都输了，看来你的资质确是有限，还难以但当全真教的重任。由此看来，这【掌教弟子】还是继续由志敬来当吧。',2,1) 
        end     
    else
        G.call("talk",'',166,'   今年的最后一场比试你都输了，看来你的资质确是有限，还难以但当全真教的重任。由此看来，这【掌教弟子】还是继续由志敬来当吧。',2,1)   
    end     
    G.call('all_over')
    G.call('goto_map',23)
end  
t['初入全真-出师'] = function() 
    G.call('地图_进入地图','全真大殿',33,44) 
    G.call("talk",'',166,'   '..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..'现在一年之期将至，无论你的功夫学成与否，你都不可再继续留在山上，是时候下山闯荡了。我教今后的兴衰荣辱可能就要寄托在你的身上了，切莫辜负我对你的期望！',2,1) 
    G.call('set_alltime',2,1,1,4,1)
    G.call('出师-增加被动')
    G.call('all_over')
    G.QueryName(0x1017000e).进度列表[4].完成 = 1
    G.call('初入聚贤庄')
end     
