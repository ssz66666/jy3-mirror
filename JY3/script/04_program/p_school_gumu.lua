--[[4005

]]
local G = require "gf"
local L = {}
local t = G.api
local JY = 0

t['初入古墓'] = function()
    G.call('地图_进入地图','终南山下',41,12)  
    G.call('photo0',11)
    G.call("talk",'',0,'   哇！刚要溜下全真教怎么山底下聚了这么多人...',0,0)
    G.call("talk",'',34,'   小可乃蒙古王子霍都，敬向小龙女恭贺芳辰....',1,1) 
    G.call("talk",'',0,'   ...这个洞穴起名叫【古墓】，莫非是建筑在山洞里的坟墓？怎么这位公子哥向坟墓里说话？难道这墓穴里还会有活人不成？',0,0)
    G.call("talk",'',34,'   听闻龙姑娘扬言天下，今日比武招亲，小王不才，特来请教，望龙姑娘不吝赐教。',1,1) 
    G.call("talk",'',0,'   莫非这墓穴里还有个守墓人，姓龙？比.武.招.亲...公子哥难道想入赘这古墓，一起跟着守墓吗?',0,0)
    G.call("talk",'',34,'   龙姑娘，在下自认家世清白，能配得起姑娘，姑娘如果还不出来，在下只好强请了。',1,1) 
    G.call("talk",'',0,'   好[小子]，想霸王硬上弓啊。这下可有好戏看了...俺怎么思想会这么龌龊呢@!@#%$%？',0,0)
    G.Play(0x49010037, 1,true,1)
    G.call("talk",'',34,'   "啊！什么声音？哪里来这么多蜜蜂啊...好痛，好像是受人指使似的。快跑哇....',1,1) 
    G.call("talk",'',0,'   哇！！！我就是一个看热闹的，也被蛰了。真是蚌鹤相争殃及池鱼...啊~~~~~~~~',0,0) 
    G.call('地图_进入地图','古墓',35,10)  
    G.call("talk",'',6,'   你醒了。你被玉峰蛰伤，我给你治好了。你可以走了。',2,1) 
    G.call("talk",'',0,'   （哇~~♡ ♥ 好美♡ ♥ 口水ing... 素质，我一定要注意素质... 妈的还在流...）',0,0) 
    G.call("talk",'',6,'   你的伤已经好了，请出去吧。【古墓】之中不留外客。',2,1) 
    G.call("talk",'',0,'   怎么，姑娘你是说我现在就是在那古墓中？我还以为那【古墓】里都是棺材和死人呢。',0,0) 
    G.call("talk",'',6,'   棺材有，死人也有。你要是不想成为死人，就早点离开。',2,1) 
    G.call("talk",'',0,'   反正出去是死，在这里也是死。死在姑娘手下总好过死在那帮臭道士手下的好。',0,0) 
    G.call("talk",'',0,'我反出【全真教】现在天下那还会有我活命的地方。',0,0) 
    G.call("talk",'',6,'   这【古墓】有数十间石室，你愿意赖在这里那便随你。不过我不想再见到你，一会石室门上锁，你想走也走不了了。',2,1) 
    G.call("talk",'',0,'   （看来只好以死相逼了，不然我可就没有活路了）姑娘如不肯留我，既然我早晚是死，那我只好现在自刎死在这里了...',0,0) 
    G.call("talk",'',6,'   你死不死跟我有什么相干，你死在这里最多是把这屋子弄污了，我以后再也不来便是，你自便吧。',2,1) 
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'（这姑娘好狠的心。我该怎么办呢？）',0,4,{"1,出去也是活不成，今日我就死在这里","2,大不了我出去跟他们拼了，姑娘告辞"},0) 
        if int_选项 == 1 then 
            if G.call('get_point',19) < 70 then 
                G.call('all_over')
                G.call('gameover')   
            else
                G.call('all_over')
                G.call("talk",'',6,'   假如你答应将来帮我办一件事，我可以让你暂住这【古墓】里，还会传授你古墓里的功夫。',2,1) 
                G.call("talk",'',0,'   姑娘请说，赴汤蹈火别说一件，一百件我也愿意为姑娘去做。',0,0)
                G.call("talk",'',6,'   你不必这么油嘴滑舌，姑娘长姑娘短的叫我。古墓里就咱们两个人，你说话自然就是对我说了。而且我生性喜欢清净，不喜欢旁人啰嗦。',2,1) 
                G.call("talk",'',0,'   是，我记下了。',0,0) 
                G.call("talk",'',6,'   我叫你应承的不是这件事。我有一个师姐，叫【李莫愁】，数年前判教出门，我师父临终时说，',2,1) 
                G.call("talk",'',6,'   我们这些在古墓里生长的人一辈子都要呆在古墓，就算是要死也要死在古墓里，为此师祖早已预留了棺材。你日后要帮我找到师姐叫她遵从师父遗命，死在古墓。',2,1) 
                G.call("talk",'',0,'   这个我也记下了',0,0)  
                G.call("talk",'',6,'   我须得尊从师命不可离开古墓，所以这件事须得假手于你。你的功夫还远不及我师姐，古墓派从未收过男弟子，所以这里的武功未必全适合于你，我只能教你少部分，剩下的需要你自己领悟了。',2,1) 
                G.call("talk",'',0,'   是。',0,0) 
                G.call("talk",'',6,'   你的话突然这么少，倒显得我在罗嗦了。看好了，这是我古墓的【天罗地网掌】！',2,1) 
                G.QueryName(0x10030001)[tostring(9)] = '古墓派弟子'
                G.QueryName(0x10030001)[tostring(11)] = 1
                G.QueryName(0x10030001)[tostring(107)] = 1
                G.QueryName(0x10030001)[tostring(12)] = '小龙女'
                G.QueryName(0x10030001)[tostring(8)] =5
                G.call('learnmagic',101)
                G.call('all_over')      
                G.call('goto_map',13)
            end 
        elseif int_选项 == 2 then 
            G.call('all_over')
            G.call('初入聚贤庄') 
        end     
    end 
end  
t['初入古墓-小龙女'] = function()
    G.call("talk",'',6,'   有什么事吗？',2,1) 
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,找龙姑娘聊聊,",'2,请求传授武功',"3,向龙姑娘切磋武功","4,修炼【寡欲】技能","5,没什么事情，向姑娘请安"},0) 
        if int_选项 == 1 then 
            if G.call('get_love',6) < 60 then 
                G.call("talk",'',6,'  自己练功去，不要打扰我。',2,1) 
            else
                if G.call('get_love',6) < 70 then 
                    G.call("talk",'',6,'  我一个人住的久了，不习惯跟别人多说话。',2,1) 
                else
                    local a1 = '我本不知道我们这派叫什么名字，后来师姐在外面闯出了名堂，人们才管我们叫【古墓派】。"' 
                    local a2 = '这【古墓】原是全真教重阳真人所建，后来打赌输给了我的祖师婆婆林朝英女侠，就把这古墓让给我祖师婆婆了。' 
                    local a3 = '想当年林朝英祖师和王重阳本是对神仙眷侣，但不知何故二人竟然不能走到一起，甚至王重阳还出家做了道士。祖师婆婆一气之下恨近了全真派的臭道士。' 
                    local a7 = '论真实功夫，王重阳当然是天下第一，但是祖师婆婆恨极了全真教，所以参悟的武功全是用来克制全真教的武功。因此现在我古墓派的功夫处处克制全真教的，你以后不用怕他们了。' 
                    local a4 = '你的功夫虽然还不及我师姐，但是凭你的资质，再练一段时间，即使不能战胜也可全身而退了。' 
                    local a5 = '我师姐外号叫【赤练仙子】，那是因为她自练了一门【赤炼神掌】而得名。' 
                    local a6 = '其实...你实在不该闯到这古墓来打扰我的清休。' 
                    local b = math.random(7)
                    local a = {a1,a2,a3,a4,a5,a6,a7}
                    if b < 7 then 
                         G.call("talk",'',6,'   '..a[b],2,1) 
                    else
                        G.call("talk",'',6,'   论真实功夫，王重阳当然是天下第一，但是祖师婆婆恨极了全真教，所以参悟的武功全是用来克制全真教的武功。',2,1)
                        G.call("talk",'',6,'   因此现在我古墓派的功夫处处克制全真教的，你以后不用怕他们了。',2,1)
                    end     
                    G.call('all_over')
                end 
            end   
            G.call('all_over')  
        elseif int_选项 == 2 then  
            if G.call('get_magic',172) < 1 then 
                if G.call('get_magicexp',101) >= 352 then
                    G.call("talk",'',6,'   你的【天罗地网掌】已经略具一定火候了，我现在传一套古墓派的轻功【捕雀功】，这套轻功和【天罗地网掌】配合使用，可使得九九八十一只麻雀飞不脱掌风的范围。',2,1) 
                    G.call('learnmagic',172)
                else
                    G.call("talk",'',6,'   【天罗地网掌】是古墓拳术和轻功的根基，要学其他功夫，须得把这套入门功夫练好！',2,1) 
                end
            elseif G.call('get_magicexp',8) == 0 then    
                if G.call('get_magic_lv',172) >= 3 then
                    G.call("talk",'',6,'   今天我教你古墓派的暗器手法——【掷针术】，这是我古墓秘制的玉峰针，给你拿去练习吧。',2,1) 
                    G.call('learnmagic',8)
                    if G.call('get_item',67) < 1 then 
                        G.call('add_item',67,500)
                    end 
                else
                    G.call("talk",'',6,'   你的【捕雀功】还没入门，继续修炼去。',2,1) 
                end 
            elseif G.call('get_magicexp',91) == 0 then    
                if G.call('get_magicexp',8) >= 352 then 
                    G.call("talk",'',6,'   今天我教你一套古墓派的高级拳法——【美女拳法】，每招每式都是由古代美女而命名。不知道你能不能把它练得好。',2,1) 
                    G.call('learnmagic',91)
                else
                    G.call("talk",'',6,'   教你的功夫都还没有练到家，没法教你其他的功夫。',2,1) 
                end  
            elseif G.call('get_magicexp',63) == 0 then  
                if G.call('get_magicexp',91) >= 500   then 
                    G.call("talk",'',6,'   从今日起我们就一起研习【玉女素心剑法】，你可不能分心！',2,1) 
                    G.call('learnmagic',63)
                else
                    G.call("talk",'',6,'   教你的功夫都还没有练到家，没法教你其他的功夫。',2,1) 
                end 
            else 
                G.call("talk",'',6,'   我所会的功夫我已挑拣你能够练习的都教给你了。师父曾留下一本《玉女心经》，上面记载着更高深的武功，但是我现在没办法领会，更教不了你了。',2,1)      
                       

            end 
            G.call('all_over')   
        elseif int_选项 == 3 then  
            G.call("talk",'',6,'   好吧，我看看你的功夫进展！',2,1) 
            G.call('all_over')
            G.call('call_battle',1,19,1,G.call('get_love',6)*0.3,6,0,0,0,0,0)
            local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 0, 6, 0, 0, 0, 0, 1, _root.Js[6].m_nFavour*0.003, 0);
            if o_battle_结果  == 1 then
                G.call('add_love',6,3)
                G.call("talk",'',6,'   今天先练到这里，你吃些【玉蜂浆】，然后再练。古墓派的功夫讲究循序渐进，非一日之功。',2,1) 
                if G.call('get_item',234) < 1 then 
                    G.call('add_item',234,1)
                end 
            else 
                G.call('add_love',6,-3)
                G.call("talk",'',6,'   你练功偷懒，今晚不许吃饭。',2,1) 
            end  
            G.call('all_over')
            G.call('add_hour',1)
            G.call('turn_map')   
        elseif int_选项 == 4 then 
            G.call('all_over')
            G.call("talk",'',6,'   修炼【古墓派】的功夫需得保持【清心寡欲】，心情不能兴奋不能急躁，总之要保持不喜不忧无欲无求，不然就会走火入魔。你心思颇杂，更需得好好修练【清心寡欲】这门功夫。',2,1) 
            local n = G.call('get_point',4) 
            local int_选项 = 0
            while int_选项 == 0 do
                int_选项 = G.call("menu",'',0,'',0,0,{"1,修炼【清心寡欲】五天 ",'2,修炼【清心寡欲】十天','3,修炼【清心寡欲】十五天',"4,我现在还不想修炼"},0) 
                if int_选项 == 1 then 
                    G.call('add_point',107,25)
                    G.call('add_love',6,1)
                    G.call('all_over')
                   -- G.call('dark')
                    G.call('add_day',5)
                    if G.call('get_point',4) < 30 then 
                        JY = math.floor(15 *n* (n+1)*  G.QueryName(0x10030001)[tostring(200)]/100 * 0.8) 
                    else
                        JY = math.floor(15 *30* (30+1)*  G.QueryName(0x10030001)[tostring(200)]/100 * 0.8) 
                    end 
                    G.call('add_point',3,JY)
                    G.call('turn_map') 
                elseif int_选项 == 2 then 
                    G.call('add_point',107,60)
                    G.call('add_love',6,2)
                    G.call('all_over')
                    --G.call('dark')
                    G.call('add_day',10)
                    if G.call('get_point',4) < 30 then 
                        JY = math.floor(15 *n* (n+1)*  G.QueryName(0x10030001)[tostring(200)]/100 * 1.5) 
                    else
                        JY = math.floor(15 *30* (30+1)*  G.QueryName(0x10030001)[tostring(200)]/100 * 1.5) 
                    end 
                    G.call('add_point',3,JY)
                    G.call('turn_map') 
                elseif int_选项 == 3 then 
                    G.call('add_point',107,90)
                    G.call('add_love',6,3)
                    G.call('all_over')
                    --G.call('dark')
                    G.call('add_day',15)
                    if G.call('get_point',4) < 30 then 
                        JY = math.floor(15 *n* (n+1)*  G.QueryName(0x10030001)[tostring(200)]/100 * 2.5) 
                    else
                        JY = math.floor(15 *30* (30+1)*  G.QueryName(0x10030001)[tostring(200)]/100 * 2.5) 
                    end 
                    G.call('add_point',3,JY)
                    G.call('turn_map') 
                elseif int_选项 == 4 then 
                    G.call('all_over')
                end 
            end         
            G.call('all_over')
            
        elseif int_选项 == 5 then
            G.call('all_over')
        end 
    end         

end    
t['初入古墓-李莫愁来访'] = function()
    G.call('all_over')
    G.call('dark')
    G.call('地图_进入地图','古墓',35,10)  
    G.call("talk",'',135,'   师妹，咱们好久没见，师姐特来找你叙旧来了。',1,1)
    G.call("talk",'',6,'   糟了，我师姐来了！',1,1) 
    G.call("talk",'',135,'   呦，师妹你在这古墓里过的够滋润啊。什么时候带这小白脸进古墓了？师父当年说我违反祖训，哎呀呀，没想到他老人家的心爱弟子竟然都把男人带到家里了。',1,1) 
    G.call("talk",'',0,'   李莫愁！你还是人不是？我和龙姑娘之间清清白白什么都没有。她教我功夫，我就当她师父一般...',0,0) 
    G.call("talk",'',135,'   师父？我看是姘头才对吧。师妹，你的私事不我不想管，你们爱怎么风流快活也随你，我回来是要拿走《玉女心经》的。',1,1) 
    G.call("talk",'',135,'   你把心经给我，你们的事我不会泄露半句，否则，哼哼...',1,1) 
    G.call("talk",'',6,'   师姐，你回来的正好。师父临终交代：咱们古墓的人，不能死在外面。生是古墓的人，死也要做古墓的鬼。你回来了，我就不用叫'..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..'到外面找你了。',1,1) 
    G.call("talk",'',135,'   妹子，凭你的本事还想留住我吗？',1,1) 
    G.call("talk",'',6,'   小妹当然没有能力独自留住师姐。不过这个人曾经答应了我一件事，现在就是我们两个要强留你了！',1,1) 
    G.call('all_over')
    G.call('set_team',6,0,0,0)
    G.call('call_battle',1,19,2,50,135,0,0,0,0,0)
    local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 0, 135, 0, 0, 0, 0, 1, 0.5, 0)，我方小龙女自动战斗
    if o_battle_结果  == 1  or o_battle_结果  == 2 then
        G.call('地图_进入地图','古墓棺室',36,10)  
        G.call('all_over')
        G.call("talk",'',6,'   '..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..'快跟我走！咱们打不过我师姐了。',1,1) 
        G.call("talk",'',6,'   '..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..'你快从这里离开古墓吧。我师姐已经回到古墓，就算你答应我的事情已经做到。',1,1) 
        G.call("talk",'',6,'    一会我放下这【断龙石】，古墓就会和外面永久隔绝。我终于可以完成师父的遗愿了。 ',1,1) 
        G.call("talk",'',0,'   你把【断龙石】放下，把这恶女人困在这里，跟我一起走好不好？',0,0)
        G.call("talk",'',6,'   如果我可以出去，何必要等到今天。你不是【古墓】的人，你没必要死在这里。',1,1) 
        G.call("talk",'',6,'   师父的绝学都收录在这《玉女心经》里，我把它交给你保管，不能让它跟我们一起尘封在这墓穴里。',1,1) 
        if G.call('get_item',121) < 1 then 
            G.call('add_item',121,1)
        end 
        G.call("talk",'',6,'   这里竟然还有全真剑法与玉女剑法配合的【玉女剑阵】，看来以后可以试试双剑合璧！',1,1) 
        if G.call('get_magic',221) == 0 then
            G.call('learnmagic',221) 
        end
        local int_选项 = 0
        while int_选项 == 0 do
            int_选项 = G.call("menu",'',0,'（我是否要离开这古墓呢？）',0,4,{"1,既然龙姑娘执意如此，我们只好永别了。,",'2,要死就死在一起，反正我不会出去。'},0) 
            if int_选项 == 1 then 
                G.call('set_death',6)
                G.call('set_death',7)
                G.call('set_death',135)
                G.call('set_death',199)
                G.call('all_over')    
                G.call('set_alltime',2,1,1,4,1) 
                G.call('初入聚贤庄')
            elseif int_选项 == 2 then 
                G.call("talk",'',6,'   你真是我的冤孽。好吧，咱们就死在一起。',1,1)
                G.call('地图_进入地图','古墓棺室',37,10)  
                G.call("talk",'',135,'   师妹真是恭喜你啦，有个男人可以为你而死，你的誓言破了，可以下山了。',1,1) 
                G.call("talk",'',6,'   那又怎样，我已把【断龙石】放下。这里的空气会越来越少，咱们都会死在这里。我们现在要去师父的灵柩处等死，师姐请不要打扰我们！',1,1) 
                G.call("talk",'',135,'   你...你说什么?你竟然放下了【断龙石】...好狠心的妹子...我这一生算是完啦。',1,1) 
                G.call('地图_进入地图','古墓棺室',38,10)  
                G.call("talk",'',6,'   你刚才没有出去，现在只有陪我在这里等死，你后不后悔？',1,1) 
                G.call("talk",'',0,'   那是我心甘情愿答应的，我不会后悔。',0,0)
                G.call("talk",'',6,'   好吧。这里有三口棺材，一口是我师父用了，一口是留给师姐的。其中一口是留给我的，本来没有你的，但是你甘愿为我而死，咱们就用同一口棺材死在一起吧。',1,1) 
                G.call("talk",'',6,'   咦？这棺材里面刻着字呢...“重阳一生不弱于人...”,好像还放着一本书册...没听师父说过这里有这些东西呀。',1,1) 
                local a1 = "西.西.东.南.西.东"
                local a2 = '西.西.东.南.西.东'
                local a3 = '东.西.北.南.西.东'
                local a4 = '北.南.北.南.西.东'
                local a5 = '东.西.北.南.西.东'
                local a6 = '北.南.北.南.西.东'
                local a = {a1,a2,a3,a4,a5,a6}
                local b = math.random(6)
                G.call("talk",'',0,'   这里还有字呢...“出古墓之法..【'..a[b]..'】...最后一个字给遮住了。咱们快起来，莫非这就是出古墓之法？',0,0) 
                G.call("talk",'',6,'   '..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..'你快来看！原来放在这棺材里的就是《九阴真经》啊。',1,1) 
                G.Play(0x49010009, 1,false,100)
                if G.call('get_item',118) < 1 then 
                    G.call('add_item',118,1)
                end 
                G.call("talk",'',0,'   这本绝世秘籍竟在这里出现，说明咱们命不该绝！刚在我摸到的字似乎是出古墓的密道所在，咱们姑且一试，看老天能否眷顾咱们。',0,0) 
                G.call("talk",'',6,'   你说怎样就怎么吧，我全听你的。',2,1)
                G.call('地图_进入地图','古墓密道',39,10)  
                local int_随机出口 = math.random(4)
                --print('出口'..int_随机出口)
                local int_选择一 = 1
                local int_选择二 = 1
                local int_选择三 = 1
                local int_选择四 = 1
                local int_选择五 = 1
                local int_选择六 = 1
                local int_选择七 = 1
                local int_选择 = {int_选择一 ,int_选择二 ,int_选择三 ,int_选择四 ,int_选择五,int_选择六,int_选择七 }
                for i = 1,7 do 
                    local int_选项 = 0
                    while int_选项 == 0 do
                        int_选项 = G.call("menu",'',0,'',0,0,{"1,向东走,",'2,向南走',"3,向西走","4,向北走"},0) 
                        if int_选项 == 1 then  
                            G.call("talk",'',6,'   东',2,1)
                            int_选择[i] = 1
                            G.call('all_over')
                        elseif int_选项 == 2 then 
                            G.call("talk",'',6,'   南',2,1)
                            int_选择[i] = 2
                            G.call('all_over')
                        elseif int_选项 == 3 then 
                            G.call("talk",'',6,'   西',2,1)
                            int_选择[i] = 3
                            G.call('all_over')
                        elseif int_选项 == 4 then    
                            G.call("talk",'',6,'   北',2,1)
                            int_选择[i] = 4
                            G.call('all_over')
                        end 
                    end
                    G.call('地图_进入地图','古墓密道',39,10)  
                end    
                -- local a1 = "西.西.东.南.西.东"
                -- local a2 = '西.西.东.南.西.东'
                -- local a3 = '东.西.北.南.西.东'
                -- local a4 = '北.南.北.南.西.东'
                -- local a5 = '东.西.北.南.西.东'
                -- local a6 = '北.南.北.南.西.东'
                --1=3312313
                --2=3312312
                --3=1342311
                --4=4242312
                --5=1342313
                --6=4242314
                if b ==  1 then
                    if int_选择[1] == 3 and int_选择[2]== 3 and  int_选择[3] == 1 and  int_选择[4] == 2 
                    and int_选择[5]== 3 and int_选择[6] == 1 and int_选择[7] == int_随机出口 then 
                        G.call('all_over')
                        G.call('初入古墓-出墓')
                    else
                        G.call('地图_进入地图','古墓密道',39,10)  
                        G.call("talk",'',0,'   全完了，这是一条死胡同...看来你我今天终究是要丧命在这古墓了....',0,0) 
                        G.call('all_over')
                        G.call('gameover')
                    end      
                elseif b == 2  then 
                    if int_选择[1] == 3 and int_选择[2]== 3 and  int_选择[3] == 1 and  int_选择[4] == 2 
                    and int_选择[5]== 3 and int_选择[6] == 1 and int_选择[7] == int_随机出口 then 
                        G.call('all_over')
                        G.call('初入古墓-出墓')
                    else
                        G.call('地图_进入地图','古墓密道',39,10)  
                        G.call("talk",'',0,'   全完了，这是一条死胡同...看来你我今天终究是要丧命在这古墓了....',0,0) 
                        G.call('all_over')
                        G.call('gameover')
                    end 
                elseif b == 3  then 
                    if int_选择[1] == 1 and int_选择[2]== 3 and  int_选择[3] == 4 and  int_选择[4] == 2 
                    and int_选择[5]== 3 and int_选择[6] == 1 and int_选择[7] == int_随机出口 then 
                        G.call('all_over')
                        G.call('初入古墓-出墓')
                    else
                        G.call('地图_进入地图','古墓密道',39,10)  
                        G.call("talk",'',0,'   全完了，这是一条死胡同...看来你我今天终究是要丧命在这古墓了....',0,0) 
                        G.call('all_over')
                        G.call('gameover')
                    end 
                elseif b == 4  then 
                    if int_选择[1] == 4 and int_选择[2]== 2 and  int_选择[3] == 4 and  int_选择[4] == 2 
                    and int_选择[5]== 3 and int_选择[6] == 1 and int_选择[7] == int_随机出口 then  
                        G.call('all_over')
                        G.call('初入古墓-出墓')
                    else
                        G.call('地图_进入地图','古墓密道',39,10)  
                        G.call("talk",'',0,'   全完了，这是一条死胡同...看来你我今天终究是要丧命在这古墓了....',0,0) 
                        G.call('all_over')
                        G.call('gameover')
                    end 
                elseif b == 5  then 
                    if int_选择[1] == 1 and int_选择[2]== 3 and  int_选择[3] == 4 and  int_选择[4] == 2 
                    and int_选择[5]== 3 and int_选择[6] == 1 and int_选择[7] == int_随机出口 then 
                        G.call('all_over')
                        G.call('初入古墓-出墓')
                    else
                        G.call('地图_进入地图','古墓密道',39,10)  
                        G.call("talk",'',0,'   全完了，这是一条死胡同...看来你我今天终究是要丧命在这古墓了....',0,0) 
                        G.call('all_over')
                        G.call('gameover')
                    end 
                elseif b == 6  then 
                    if int_选择[1] == 2 and int_选择[2]== 2 and  int_选择[3] == 4 and  int_选择[4] == 2 
                    and int_选择[5]== 3 and int_选择[6] == 1 and int_选择[7] == int_随机出口 then 
                        G.call('all_over')
                        G.call('初入古墓-出墓')
                    else
                        G.call('地图_进入地图','古墓密道',39,10)  
                        G.call("talk",'',0,'   全完了，这是一条死胡同...看来你我今天终究是要丧命在这古墓了....',0,0) 
                        G.call('all_over')
                        G.call('gameover')
                    end 
                end     
            end 
        end             
    end
end   
t['初入古墓-出墓'] = function() 
    G.call('地图_进入地图','终南山下',34,53)  
    G.call("talk",'',6,'   啊，这莫不就是古墓的出口，看来我们走出来了。',2,1)
    G.call("talk",'',0,'   龙姑娘，我早就说嘛，吉人自有天相，老天会保佑我们的。',0,0) 
    if G.QueryName(0x10030001).性别 == 1 then 
        G.call("talk",'',6,'   咱们共同经历了生死，你还叫我“龙姑娘”？今后不管你到哪里，我都跟你到哪里...',1,1) 
        G.call("talk",'',0,'   ...龙儿...咱们以后永远不分开，咱们这就下山去吧，我带你去见识外面的大好河山...',0,0)
    else
        G.call("talk",'',6,'   咱们共同经历了生死，今后不管你到哪里，我都跟你到哪里...',1,1) 
        G.call("talk",'',0,'   咱们这就下山去吧，我带你去见识外面的大好河山...',0,0) 
    end
    G.call('出师-增加被动')
    G.call('join',6)
    G.call('set_death',7)
    G.call('set_death',135)
    G.call('set_death',199)
    G.call('all_over')
    G.call('set_alltime',2,1,1,4,1) 
    G.QueryName(0x1017000e).进度列表[5].完成 = 1
    G.call('初入聚贤庄')
end    
