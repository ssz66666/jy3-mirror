--[[400b

]]
local G = require "gf"
local L = {}
local t = G.api
local JY = 0
t['初入华山'] = function()
    G.call('dark')
    G.call('goto_map',8)
    G.call("talk",'',191,'   '..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..',从今天起，你就是我华山派门下了。我来给你引见我华山派里的一些人物。',2,1) 
    G.call("talk",'',112,'   我便是你的师母，华山上下的伙食全由我们女人负责。你以后除了跟师父师兄弟学拳练剑之外，还要多学学你师父的【儒风】，这也是他将来传授弟子武功的重要借鉴。',2,1) 
    G.call("talk",'',2,'   '..G.QueryName(0x10030001)[tostring(1)]..'师弟，咱们是早认识啦。我是这代弟子里的大师兄，找我比剑练功我可没什么兴趣，要是找我喝酒赌钱那就大对我的胃口！',2,1)
    G.call("talk",'',191,'   冲儿放肆！'..G.QueryName(0x10030001)[tostring(2)]..'刚入华山你就要教他不学好吗？你身为华山大弟子不以身作则，还要影响师弟们，你这成什么体统！',2,1) 
    G.call("talk",'',2,'   是，师父，弟子知错了。',2,1)
    G.call("talk",'',24,'   好啦好啦，大师兄你啊每次认错都认得诚恳，忘起教训来却比谁都快。嘻嘻，我又添个小师弟啦，爹爹这次下山回来一下给我带来两个师弟，我这个师姐可够威风啦。',2,1)
    G.call("talk",'',31,'   '..G.QueryName(0x10030001)[tostring(1)]..'师弟你好，感谢你在我爹爹最后时刻替我送了他老人家一程，我林平之算是欠你这份人情，日后定当报答。',2,1)
    G.call("talk",'',191,'   '..G.QueryName(0x10030001)[tostring(2)]..'我要提醒你，在这华山上，除了咱们之外还隐居这一些自称华山派的传人，他们中多是被前代掌门开革出派的华山叛徒，总是心有不甘意图重夺掌门之位，他日你若遇到须小心避开以免受其利用。',2,1) 
    G.call("talk",'',191,'   你虽拜我为师，但是现在我已交由大弟子令狐冲代我传授武功，你可向他学习我派的基本拳脚剑术。你如果能够通过我的考核，我就会传你华山的内功心法。',2,1) 
    G.call("talk",'',191,'   另外，你在华山学功夫只有一年之期，一年后需得下山磨练，所以此期间你合理安排。',2,1) 
    G.call('set_note','拜入华山门下，一年之后再重出江湖')
    G.call('all_over')
    G.call('dark')
    G.call('goto_map',38)
    G.call("talk",'',2,'   '..G.QueryName(0x10030001)[tostring(1)]..'师弟，咱们今天就开始吧。我先教你华山的入门功夫——【华山长拳】。这套拳法看似平凡无奇，却是每个习武者的入门拳法，你也须得通过此套拳术打好根基。',2,1)
    G.call('learnmagic',74)
    G.QueryName(0x10030001)[tostring(9)] = '华山派弟子'
    G.QueryName(0x10030001)[tostring(11)] = 1
    G.QueryName(0x10030001)[tostring(107)] = 1
    G.QueryName(0x10030001)[tostring(12)] = '岳不群'
    G.QueryName(0x10030001)[tostring(8)] = 3
    G.call('all_over')
end
t['初入华山-令狐冲1'] = function()
    G.call("talk",'',2,'   '..G.QueryName(0x10030001)[tostring(1)]..'师弟，你今天想做些什么？',2,1)
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,请大师兄传授功夫","2,与大师兄切磋武功","3,与大师兄聊天","4,没什么事情，向大师兄请安"},0) 
        if int_选项 == 1 then 
            if G.call('get_magicexp',174) == 0 then 
                if G.call('get_magicexp',74) >= 192 then 
                    G.call("talk",'',2,'   你的【华山长拳】已经略有根基，现在可以教你轻功了。【华山身法】虽不是什么绝顶的轻身术，但是总要好过一般门派飞檐走壁的本事。像【轻功】【内功】这2类功夫，需要装备在身上方能体现效果，否则是无用的。',2,1)
                    G.call('learnmagic',174)
                else
                    G.call("talk",'',2,'   你的【华山长拳】功力还是略显不足，你再去练一些时候吧。',2,1)
                end     
            elseif G.call('get_magicexp',40) == 0 then 
                if G.call('get_point',11) > 2 then 
                    G.call("talk",'',2,'   每种功夫都对应人身上的不同能力，比如我要教你的【华山剑法】则是对应【御剑】能力，任何一种功夫，哪怕威力不强，',2,1)
                    G.call("talk",'',2,'   也只有这样，运用高深剑术才能得心应手奥妙无穷。你去好好练习这【华山剑法】吧。',2,1)
                    G.call('learnmagic',40)
                else
                    G.call("talk",'',2,'   恩师曾经交代，华山门下弟子的【儒风】水平不学到他的三成水平，不许研习剑术。',2,1)
                end
            elseif    G.call('get_magicexp',56) == 0 then 
                if G.call('get_magicexp',40) >= 273 then 
                    G.call("talk",'',2,'   【华山剑法】练到你现在这般功力已经可以练习【太岳三青峰】了，这套招数据说招式平凡无奇，但是辅以深厚内力，施展开来就可所向披靡。因此你得多讨师父欢心，让师父早日把华山内功传授给你。',2,1)
                    G.call('learnmagic',56)
                else
                    G.call("talk",'',2,'   我们华山派虽然主张修习内功，招式是末道，但我认为以你先下内功不足，招式精妙可补内功不足，因此你还需得继续练习【华山剑法】！',2,1)
                end 
            else
                G.call("talk",'',2,'   我所会的武功甚杂，再要教你恐怕本门的功夫就似是而非了。等以后有机会你到【思过崖】来找我，那时我在传你些新奇好玩的功夫。',2,1)
            end  
            G.call('all_over')    
        elseif int_选项 == 2 then
            G.call("talk",'',2,'   正是闲的无聊，师弟快来陪我活动活动筋骨。',2,1) 
            G.call('all_over')
            G.call('call_battle',1,10,1,G.call('get_love',2)*0.2,2,0,0,0,0,0)
            local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 0, 2, 0, 0, 0, 0, 1,  _root.Js[2].m_nFavour*0.02, 0);
            if o_battle_结果  == 1 then
                G.call('add_love',2,2)
                G.call("talk",'',2,'   师弟照这个进度练下去，我这个大师兄可就抵挡不住了。咱华山的小师弟一个比一个有出息，大师兄我也觉得脸上有光彩。',2,1) 
            else 
                G.call('add_love',2,-2)
                G.call("talk",'',2,'   师弟闪躲跳跃身形滞涩，出招发力既飘且虚，想必是本派的轻功和内功还没有练到家的缘故，所以有此一败！',2,1) 
            end  
            G.call('all_over')
            G.call('add_time',4)
            G.call('turn_map')  
        elseif int_选项 == 3 then 
            local a1= '我是师父师娘从小在山下捡回来的，师父师娘可说是我的再生父母，也是我一生最敬重的人。'
            local a2= '师父嫌我经常违反门规在外面惹是生非，因此命令我每年的三六九月都需到思过崖上面壁思过，虽说是我的惩罚，但我也知师父是用心良苦。'
            local a3= '后山有个木屋，木屋里住着自称是华山【剑宗】的后人，我看他们的招式确是华山剑法的门道，但是远比我们所学的精妙神奇。'
            local a4= '我向来不拘小节，与师父的性子格格不入，师父人称【君子剑】自然一派君子作风，可我这华山大弟子整个一浪子行径。'
            local a5= '华山派隶属【五岳剑派】，五岳剑派分别是东岳泰山派、西岳华山派、南岳衡山派、北岳恒山派和中岳嵩山派，其中以嵩山派掌门左冷禅师伯武功最高！'
            local a6= '小师妹这鬼丫头，从小到大没有一日不缠着我。现在林师弟来了，他们年龄相仿，也正说得来，她便很少来找我了。'
            local a7= '师娘虽是女流，确是女中豪杰。她有一手绝技叫【宁氏一剑】，还是师父亲口给起的名字'
            local b = math.random(7)
            local a = {a1,a2,a3,a4,a5,a6,a7}
            G.call("talk",'',2,'   '..a[b],2,1) 
            G.call('all_over')
        elseif int_选项 == 4 then 
            G.call('all_over')
        end 
    end         


end  
t['初入华山-岳灵姗'] = function() 
    if G.call('get_love',24) <= 30 then  
        G.call("talk",'',24,'   '..G.QueryName(0x10030001)[tostring(2)]..'你又来干什么，存心要惹我生气吗？',2,1)
    elseif G.call('get_love',24) <= 60 and G.call('get_love',24) > 30 then 
        G.call("talk",'',24,'   '..G.QueryName(0x10030001)[tostring(2)]..'怎么今天想起来找我了？',2,1)
    elseif G.call('get_love',24) <= 80 and G.call('get_love',24) > 60 then  
        G.call("talk",'',24,'   '..G.QueryName(0x10030001)[tostring(2)]..'你好像好久都没来找我了吧，今天有什么事情呢？',2,1)
    elseif G.call('get_love',24) > 80 then  
        G.call("talk",'',24,'   '..G.QueryName(0x10030001)[tostring(2)]..'你要是再不来找我，我就找你去！说正经的，今天你有什么事情？',2,1)
    end     
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,与师姐切磋武功","2,（称赞岳灵珊）","3,（讥讽岳灵珊）","4,没什么事情，向师姐请安"},0) 
        if int_选项 == 1 then 
            G.call("talk",'',24,'   嘻嘻，看来你是皮痒了，要我来给你松松筋骨',2,1) 
            G.call('all_over')
            G.call('call_battle',1,10,1,G.call('get_love',24)*0.1,24,0,0,0,0,0)
            local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 0, 24, 0, 0, 0, 0, 1,  _root.Js[24].m_nFavour*0.01, 0);
            if o_battle_结果  == 2 then
                G.call('add_love',24,-3)
                G.call("talk",'',24,'   不错不错，你这次的表现师姐我很满意。',2,1) 
            else 
                G.call('add_love',24,3)
                G.call("talk",'',24,'   你欺负我！我不打了，你一点也不照顾人家的心思..',2,1) 
            end  
            G.call('all_over')
            G.call('add_time',4)
            G.call('turn_map')  
        elseif int_选项 == 2 then 
            if math.random(3) == 1 then 
                G.call("talk",'',24,'   你这个马屁精，就是油嘴滑舌爱讨女孩子欢心。我这个师姐大人不计小人过，以前你有什么对不住我的地方就既往不咎了。',2,1) 
                G.call('add_love',24,5)
            else
                G.call("talk",'',24,'   一副嬉皮笑脸的贼模样，嘴上虽是在夸我，心里还不知骂的多狠毒呢。你少跟我来这套！',2,1) 
                G.call('add_love',24,-5)
            end     
            G.call('all_over')
        elseif int_选项 == 3 then 
            if math.random(3) == 1 then 
                G.call("talk",'',24,'   凭你也配来数落我？就连我爹妈也不肯说重我半句，你算什么啊，刚入门的小师弟就目无尊长吗！',2,1)
                G.call('add_love',24,-5) 
            else
                G.call("talk",'',24,'   好吧好吧，师弟是我错了，我以前太任性了，全失了做师姐的身份。以后我一定好好待你，师姐之前若有什么对不住还请师弟多多包涵',2,1) 
                G.call('add_love',24,5)
            end 
            G.call('all_over')
        elseif int_选项 == 4 then 
            G.call('all_over')
        end  
    end        

end  
t['初入华山-林平之'] = function() 
    if G.call('get_story',10) == 0 then 
        G.call('set_story',10,1)
        G.call("talk",'',31,'   '..G.QueryName(0x10030001)[tostring(1)]..'师弟找我有什么事情吗？',2,1)
        G.call("talk",'',0,'   我来转告你爹爹的遗言:福州向阳巷老宅地窖中的物事,是林家祖传之物,须得好好保管,曾祖远图公有遗训,凡林家子孙,不得翻看,否则有无穷祸患。',0,0) 
        G.call("talk",'',0,'   林伯父没说什么物事，也没说向阳巷老宅在什么地方，这些想必你是知道的。',0,0) 
        G.call("talk",'',31,'   我只知道福州向阳巷却有一处我林家老宅，只是那里有什么物事我却不知道了，等有机会我去看个明白。多谢师弟了。',2,1)
        G.call('add_love',31,10)
        G.call('all_over')
    else
        G.call("talk",'',31,'   '..G.QueryName(0x10030001)[tostring(1)]..'师弟找我有什么事情吗？',2,1)
        local int_选项 = 0
        while int_选项 == 0 do
            int_选项 = G.call("menu",'',0,'',0,0,{"1,与林师兄切磋武功","2,我碰巧路过，打扰了"},0) 
            if int_选项 == 1 then 
                G.call("talk",'',31,'   平之资质甚浅，请师弟多多指教。',2,1) 
                G.call('all_over')
                G.call('call_battle',1,10,1,G.call('get_love',31)*0.1,31,0,0,0,0,0)
                local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 0, 31, 0, 0, 0, 0, 1,  _root.Js[24].m_nFavour*0.01, 0);
                if o_battle_结果  == 1 then
                    G.call('add_love',31,3)
                    G.call("talk",'',31,'   师弟好本事啊，你练功夫的进展可比我快多了。像我这么笨的，不知道什么时候才能练好武功报灭门之仇...',2,1) 
                else 
                    G.call('add_love',31,-3)
                    G.call("talk",'',31,'   是师弟手下留情还是我真的有所成就了？这样看来，我手刃仇人也不是没有希望了。',2,1) 
                end  
                G.call('all_over')
                G.call('add_time',4)
                G.call('turn_map') 
            elseif int_选项 == 2 then 
                G.call('all_over')
            end 
        end             
    end         


end 
t['初入华山-宁中则'] = function() 
    local a = {300,331,299,325,280,321,322}
    local num = math.random(5)
    local n = math.random(7)
    local b = a[n]
    local name = G.QueryName(0x100b0000 + b-1).名称 
    local JY= num * n * 30
    G.call("talk",'',112,'   厨房里会经常需要一些木柴、肉食、水鲜等等，你要随时准备上一些，我不定会用上什么就要向你要了。',2,1) 
    G.call("talk",'',112,'   你来的正是时候，我现在急需'..tostring(num)..'份'..name..',不知道你有没有准备？',2,1) 
    if G.call('get_item',b) >= num then 
        G.call("talk",'',0,'   我刚好准备齐了您所要的东西，总算是派上用场了。',0,0) 
        G.call('add_love',112,5)
        G.call('add_item',b,-num)
        if G.call('get_love',112) > 80 and G.call('get_magicexp',50) == 0 then
            G.call("talk",'',112,'   全华山上下，我看属你最机灵懂事。你如果再能讨得你师父的欢心，将来这华山掌门之位迟早都是你的。',2,1) 
            G.call('learnmagic',50)
        elseif G.call('get_month') == 3 or  G.call('get_month') == 6 or G.call('get_month') == 9 then 
            G.call("talk",'',112,'   这段时间你大师兄令狐冲应该正在【思过崖】上被罚面壁思过，你去给他捎几瓶他最爱喝的【烧刀子】酒去，他一定欢喜得很。这事可别让你师父知道了，否则连你也要受罚了。',2,1) 
            if G.call('get_item',194) == 0 then 
                G.call('add_item',194,2)
            end
        else
            G.call("talk",'',112,'   你弄这些一定很辛苦吧，来来，尝尝师娘的手艺。',2,1) 
            local p = math.random(149,175)
            if G.call('get_item',p) == 0 then 
                G.call('add_item',p,math.random(4))
            end     
        end 
        G.call('add_point',3,JY)
    else
        G.call("talk",'',112,'   算了算了，我自己想办法吧。',2,1)
    end 
    G.call('all_over')
    G.call('goto_map',38)        
end   
t['初入华山-岳不群'] = function() 
    G.call("talk",'',191,'   习武者健体，习文者养神。我培养弟子向来注重文武双全内外兼修，可惜你大师哥资质虽然不错但总不肯安下心来读书，所以始终学不到上乘武功。我现在对你给予很深的期望啊。',2,1)
    local n = G.call('get_point',4)
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,学习【儒风】五天","2,学习【儒风】十天","3,学习【儒风】十五天","4,没什么事情，向师父请安"},0) 
        if int_选项 == 1 then 
            G.call('add_point',107,25)
            G.call('add_love',191,1)
            if G.call('get_point',4) < 30 then
                local n = G.call('get_point',4)
                JY = math.floor(15 *n* (n+1)*  G.QueryName(0x10030001)[tostring(200)]/100 * 0.8) 
            else
                JY = math.floor(15 *30* 31*  G.QueryName(0x10030001)[tostring(200)]/100 * 0.8)
            end
            G.call('all_over')
            --G.call('dark') 
            G.call('add_day',5)
            if G.call('get_point',11) > 5  and G.call('get_item',138) == 0 and G.call('get_magicexp',155) == 0 then
                G.call("talk",'',191,'   你入华山以来一直表现的不错。这本【华山心法】秘籍今天我就传授给你，希望你能勤加练习。',2,1) 
                G.call('add_item',138,1)
            elseif  G.call('get_love',191) >= 80 and G.call('get_item',95) == 0 and G.call('get_magicexp',149) == 0 then   
                if G.call('get_point',12) == '岳不群' then 
                    G.call("talk",'',191,'   "论悟性你可能不及你大师兄，但是论勤勉刻苦他却不及你，看来日后华山一脉的兴衰还是要着落在你的身上了。我华山的镇派绝学——《紫霞秘籍》今天就赠送给你，希望你不要辜负我的厚望。',2,1) 
                    G.call('add_item',95,1)
                else
                    G.call("talk",'',191,'   我发现你近日所练的功夫里杂学甚多，但又不像是冲儿教的。本来我打算传你《紫霞秘籍》的，但是你所学已经渐入魔道，我是否要传授给你还须得重新考虑了。',2,1) 
                end 
            else
                G.call("talk",'',191,'   今天就学到这里吧，你要能把学到的成果运用到实际战斗中才算是没有白费这几天的功夫。',2,1) 
            end  
            G.call('add_point',3,JY)
            G.call('all_over')  
            G.call('turn_map') 
        elseif int_选项 == 2 then 
            G.call('add_point',107,60)
            G.call('add_love',191,2)
            if G.call('get_point',4) < 30 then
                local n = G.call('get_point',4)
                JY = math.floor(15 *n* (n+1)*  G.QueryName(0x10030001)[tostring(200)]/100 * 1.5) 
            else
                JY = math.floor(15 *30* 31*  G.QueryName(0x10030001)[tostring(200)]/100 * 1.5)
            end
            G.call('all_over')
            --G.call('dark') 
            G.call('add_day',10)
            if G.call('get_point',11) > 5  and G.call('get_item',138) == 0 and G.call('get_magicexp',155) == 0 then
                G.call("talk",'',191,'   你入华山以来一直表现的不错。这本【华山心法】秘籍今天我就传授给你，希望你能勤加练习。',2,1) 
                G.call('add_item',138,1)
            elseif  G.call('get_love',191) >= 80 and G.call('get_item',95) == 0 and G.call('get_magicexp',149) == 0 then   
                if G.call('get_point',12) == '岳不群' then 
                    G.call("talk",'',191,'   "论悟性你可能不及你大师兄，但是论勤勉刻苦他却不及你，看来日后华山一脉的兴衰还是要着落在你的身上了。我华山的镇派绝学——《紫霞秘籍》今天就赠送给你，希望你不要辜负我的厚望。',2,1) 
                    G.call('add_item',95,1)
                else
                    G.call("talk",'',191,'   我发现你近日所练的功夫里杂学甚多，但又不像是冲儿教的。本来我打算传你《紫霞秘籍》的，但是你所学已经渐入魔道，我是否要传授给你还须得重新考虑了。',2,1) 
                end 
            else
                G.call("talk",'',191,'   今天就学到这里吧，你要能把学到的成果运用到实际战斗中才算是没有白费这几天的功夫。',2,1) 
            end  
            G.call('add_point',3,JY)
            G.call('all_over') 
            G.call('turn_map') 
        elseif int_选项 == 3 then 
            G.call('add_point',107,90)
            G.call('add_love',191,3)
            if G.call('get_point',4) < 30 then
                local n = G.call('get_point',4)
                JY = math.floor(15 *n* (n+1)*  G.QueryName(0x10030001)[tostring(200)]/100 * 2.5) 
            else
                JY = math.floor(15 *30* 31*  G.QueryName(0x10030001)[tostring(200)]/100 * 2.5)
            end
            G.call('all_over')
            --G.call('dark') 
            G.call('add_day',15)
            if G.call('get_point',11) > 5  and G.call('get_item',138) == 0 and G.call('get_magicexp',155) == 0 then
                G.call("talk",'',191,'   你入华山以来一直表现的不错。这本【华山心法】秘籍今天我就传授给你，希望你能勤加练习。',2,1) 
                G.call('add_item',138,1)
            elseif  G.call('get_love',191) >= 80 and G.call('get_item',95) == 0 and G.call('get_magicexp',149) == 0  then   
                if G.call('get_point',12) == '岳不群' then 
                    G.call("talk",'',191,'   "论悟性你可能不及你大师兄，但是论勤勉刻苦他却不及你，看来日后华山一脉的兴衰还是要着落在你的身上了。我华山的镇派绝学——《紫霞秘籍》今天就赠送给你，希望你不要辜负我的厚望。',2,1) 
                    G.call('add_item',95,1)
                else
                    G.call("talk",'',191,'   我发现你近日所练的功夫里杂学甚多，但又不像是冲儿教的。本来我打算传你《紫霞秘籍》的，但是你所学已经渐入魔道，我是否要传授给你还须得重新考虑了。',2,1) 
                end 
            else
                G.call("talk",'',191,'   今天就学到这里吧，你要能把学到的成果运用到实际战斗中才算是没有白费这几天的功夫。',2,1) 
            end  
            G.call('add_point',3,JY)
            G.call('all_over') 
            G.call('turn_map') 
        elseif int_选项 == 4 then
            G.call('all_over')
            G.call('goto_map',38)   
        end
    end         
end  
t['初入华山-穆人清'] = function() 
    if G.call('count_day') ~= G.QueryName(0x10030001)[tostring(142)] then 
        if G.call('get_story',12) == 0    then 
            G.call("talk",'',75,'   你是华山派门下的？',2,1)
            G.call("talk",'',0,'   是的。晚辈恩师是华山派掌门岳不群岳先生。',0,0) 
            G.call("talk",'',75,'   哼！ 岳不群...华山掌门...他配吗？',2,1)
            G.call("talk",'',0,'   恩师武功虽不见得是天下第一，但是人品和见识都是人所共识的。前辈似乎对恩师颇有成见，莫非前辈就是师父所说，华山派的...',0,0) 
            G.call("talk",'',75,'   他说什么？说我们是华山派的叛徒是吧，还一定说我们的武功已经渐入魔道。嘿嘿，真是成者为王败者寇。那【气宗】的一伙人当年要不是用诡计将我和风师兄骗离了华山，他【气宗】能执掌我华山派门户吗？',2,1)
            G.call("talk",'',0,'   前辈前半段所言确是我恩师的意思，不过您所指的【气宗】什么的，我却从未听师父提起。',0,0) 
            G.call("talk",'',75,'   这种龌龊下流的历史怎么能让你们知道，而且当年华山【剑宗】【气宗】之争时，他也年岁不大，虽没帮着做什么恶事，他从小就受到熏陶，认定我们【剑宗】是华山的叛徒，这也无话可讲。',2,1)
            G.call("talk",'',75,'   这不过...算了。这陈年旧事还提他做甚。',2,1)
            G.call("talk",'',75,'   你现在投错了师父那也不算什么，回头也还来得及。再迟的几年，别人背后管你叫“伪君子”时，你就无药可救了。老夫外号【神剑仙猿】，叫穆人清，算起来该是你太师伯一辈。',2,1)
            G.call("talk",'',75,'   老夫现在有意收你做关门弟子，你可愿意？大家份属同门，也不算是改投别派。',2,1)
            local int_选项 = 0
            while int_选项 == 0 do
                int_选项 = G.call("menu",'',0,'',0,0,{"1,我愿意拜前辈为师","2,我不会改投师门的"},0) 
                if int_选项 == 1 then 
                    G.QueryName(0x10030001)[tostring(12)] = '穆人清'
                    G.call("talk",'',75,'   好孩子，【神剑仙猿】终于又收了一位得意的弟子，真是大畅老怀啊。我早些年收了你的三师兄，叫袁承志，他现在下山历练去了。今日我先传你套【狂风快剑】。',2,1)
                    G.call("talk",'',75,'   你要记好了，日后想学功夫就来这找我，【一天只能来一次】免得被人发觉。',2,1)
                    if G.call('get_magicexp',46) == 0 then 
                        G.call('learnmagic',46)
                    end 
                    G.call('set_story',12,1)     
                elseif int_选项 == 2 then 
                    G.call("talk",'',75,'   真是冥顽不灵，看来受到岳不群的毒害颇深啊。你走吧，我以后不想再见到你们华山派的人了。',2,1)
                    G.call('set_story',12,2) 
                end 
            end     
            G.call('all_over')
            G.call('goto_map',40) 
        elseif G.call('get_story',12) == 1 then 
            if G.call('get_magicexp',39) == 0 then 
                if G.call('get_magicexp',46) >= 352 then 
                    G.call("talk",'',75,'   你的【狂风快剑】已有九成功力，已经适合学下面的功夫了。今天我教你【连环三仙剑】。',2,1)
                    G.call('learnmagic',39)
                else
                    G.call("talk",'',75,'   你的【狂风快剑】功力尚且不足，你再去练一些时候吧。',2,1)
                end 
            elseif  G.call('get_magicexp',6) == 0 and G.call('get_item',129) == 0 then 
                if G.call('get_magicexp',39) >= 504 then 
                    G.call("talk",'',75,'   "今天我要传你一本暗器秘籍，叫【漫天花雨】，这秘籍上的暗器手法你须得学会方能使用！',2,1)
                    G.call('add_item',129,1)
                    G.call('add_item',63,500)   
                else
                    G.call("talk",'',75,'   我传授你的功夫要好好练习，等把功夫练好了再来找我。',2,1)
                end  
            elseif G.call('get_magicexp',178) == 0  then 
                if G.call('get_magicexp',6) >= 416 then 
                    G.call("talk",'',75,'   今天我要传你一套轻身功夫，叫【神行百变】！。',2,1)
                    G.call('learnmagic',178)
                else
                    G.call("talk",'',75,'   我传授你的功夫要好好练习，等把功夫练好了再来找我。',2,1)
                end
            else
                G.call('set_story',12,3) 
                G.call("talk",'',75,'   短短时间你的所学已经远远超过了我的指望。岳不群那小子，教徒弟的本事不行，选徒弟的能耐倒是不错。以后有机会你见到我风师兄，再跟他学功夫吧。我在这山上也呆得够久了，该去云游四方了。',2,1)
            
            end   
            G.call('all_over')
            G.call('goto_map',40)           
        elseif G.call('get_story',12) == 2 then 
            G.call("talk",'',0,'   莫非以后在这真的再也见不到那位华山的前辈了...',0,0) 
            G.call('all_over')
            G.call('goto_map',50)  
        elseif G.call('get_story',12) == 3 then 
            G.call("talk",'',111,'   想必你就是穆师弟最近新收的小徒弟吧。穆师弟就是好福气，接二连三收下像样的徒弟，我老风却是一个传人也没有。',2,1)
            if G.call('get_item',95) == 0 and  G.call('get_magic',149) == 0 then 
                G.call("talk",'',111,'   我对你这孩子也甚是喜欢，本打算让你做我的传人，但是我曾经起誓，只把这套功夫教给一个传人。近日我看华山的令狐冲资质也是不错，也很对老夫的胃口，他还是你的大师兄。你说，我到底是把这功夫传给谁好呢？',2,1)
                local int_选项 = 0
                while int_选项 == 0 do
                    int_选项 = G.call("menu",'',0,'',0,0,{"1,传给大师兄令狐冲","2,当然是传给我了"},0) 
                    if int_选项 == 1 then 
                        G.call("talk",'',111,'  你这孩子还真是厚道，这么难得的绝学竟然拱手让人。也罢，冥冥中自有天意。咱们既是无缘，以后也不用再见了。',2,1)
                        --下面设置令狐冲基础属性和学会九剑
                        G.call('add_role',2,1,2500)
                        G.call('add_role',2,2,2500)
                        G.call('add_role',2,3,50)
                        G.call('add_role',2,7,50)
                        G.call('set_role',2,13,G.call('get_role',2,1))
                        G.call('set_role',2,14,G.call('get_role',2,2))
                        G.call('set_role',2,11,396)
                        G.call('set_roleskill',2,2,37)
                        G.call('set_story',12,2)     
                    elseif int_选项 == 2 then 
                        if G.call('get_point',18) >= 90 then 
                            G.call("talk",'',111,'   好！我就把这【独孤九剑】传授给你！老风我今日已有了传人，不必再担心前辈的绝学会随我带进棺材里了。小朋友，你虽是我的传人，但是切莫对外人透露我的事情，你我缘尽于此，以后可不必再见了。',2,1)
                            if G.call('get_magicexp',37) == 0 then 
                                G.call('learnmagic',37)
                            end 
                        else
                            G.call("talk",'',111,'  你这孩子看来悟性不够。咱们既是无缘，以后也不用再见了。',2,1)
                            --下面设置令狐冲基础属性和学会九剑
                            G.call('add_role',2,1,2500)
                            G.call('add_role',2,2,2500)
                            G.call('add_role',2,3,50)
                            G.call('add_role',2,7,50)
                            G.call('set_role',2,13,G.call('get_role',2,1))
                            G.call('set_role',2,14,G.call('get_role',2,2))
                            G.call('set_role',2,11,396)
                            G.call('set_roleskill',2,2,37)
                        end    
                        G.call('set_story',12,2) 
                    end 
                end
            else
                G.call("talk",'',111,'   本来我对你这孩子也是极为喜欢，打算叫你做我的传人。但是被那岳不群抢先了一步，他竟然把《紫霞秘籍》传授给你了，即然这样，你和我【剑宗】终究还是无缘，以后咱们也不必再见面了。',2,1)
                G.call('set_story',2) 
            end     
            G.call('all_over')
            G.call('goto_map',50) 
        end 
        G.QueryName(0x10030001)[tostring(142)] = G.call('count_day') 
    else
        if G.call('get_story',12) == 2 then 
            G.call("talk",'',0,'   莫非以后在这真的再也见不到那位华山的前辈了...',0,0) 
        else
            G.call("talk",'',0,'   真是高人风范，说一天见一次就绝不露第二次面，我得多学习学习前辈的生活作风。',0,0) 
        end     
        G.call('all_over')
        G.call('goto_map',50)  
    end     
end  
t['初入华山-令狐冲2'] = function() 
    if G.call('get_month') == 3 or G.call('get_month') == 6 or G.call('get_month') == 9 then  
        G.call("talk",'',2,'   '..G.QueryName(0x10030001)[tostring(1)]..'师弟，你怎么来了？莫非也被罚到这里思过了？',2,1)
        local int_选项 = 0
        while int_选项 == 0 do
            int_选项 = G.call("menu",'',0,'',0,0,{"1,与大师兄切磋武功","2,我给你带了几瓶酒供你畅饮","3,带我去看看这里好玩的地方","4,我是顺便路过，看大师兄无恙我就放心了"},0) 
            if int_选项 == 1 then 
                G.call("talk",'',2,'   正是闲的无聊，师弟快来陪我活动活动筋骨。',2,1) 
                G.call('all_over')
                G.call('call_battle',1,10,1,G.call('get_love',2)*0.2,2,0,0,0,0,0)
                local o_battle_结果 = G.call('get_battle') --_root.War("野外战斗1", 0, 2, 0, 0, 0, 0, 1,  _root.Js[2].m_nFavour*0.02, 0);
                if o_battle_结果  == 1 then
                    G.call('add_love',2,2)
                    G.call("talk",'',2,'   这思过崖上平时飞禽走兽也很少见，自己独自练剑实在无聊，今天难得你陪我放松这松懈了多日的筋骨，舒服啊。',2,1) 
                else 
                    G.call('add_love',2,-2)
                    G.call("talk",'',2,'   这思过崖上平时飞禽走兽也很少见，自己独自练剑实在无聊，今天难得你陪我放松这松懈了多日的筋骨，舒服啊。',2,1) 
                end  
                if  G.call('get_magicexp',33) >= 504 and G.call('get_magicexp',40) >= 280 and G.call('get_magicexp',45) >= 440 
                and G.call('get_magicexp',59) >= 504  and G.call('get_magicexp',58) >= 504  and G.call('get_magicexp',60) == 0   then 
                    G.call("talk",'',2,'   师弟！我知道了！原来这五派的剑法练到至高的境界竟然同出一源，就像是原有的一个很强剑招后来被分化成了五招，但五招之间相互呼应，',2,1)
                    G.call("talk",'',2,'   练到极处又可融会贯通还原成一招剑势！简直太妙了，这招剑法不如就叫【五岳剑法】吧',2,1)   
                    G.call('add_role',2,1,500)
                    G.call('add_role',2,2,500)
                    G.call('add_role',2,3,10)
                    G.call('add_role',2,7,10)
                    G.call('set_role',2,13,G.call('get_role',2,1))
                    G.call('set_role',2,14,G.call('get_role',2,2))
                    G.call('set_role',2,10,600)
                    G.call('set_roleskill',2,1,60)
                    G.call('learnmagic',60)
                end     
                G.call('add_time',4)
                G.call('all_over')
                G.call('turn_map') 
            elseif int_选项 == 2 then 
                if G.call('get_item',194) > 0 then
                    G.call('add_item',194,-G.call('get_item',194)) 
                    G.call("talk",'',2,'   哈哈，好小子！到底是你最对我的胃口啦。真是稀奇啊，华山门规这么严，你竟然能搞来几瓶酒，本事和胆子都挺大嘛。不错，我喜欢。',2,1)
                    G.call('add_love',2,5)
                else
                    G.call("talk",'',2,'   '..G.QueryName(0x10030001)[tostring(1)]..'师弟，你就别拿我寻开心了，我在这思过崖上，嘴里都淡出鸟儿来了，这时候要有口【烧刀子】酒喝该有多好。',2,1)
                end  
                G.call('all_over')
                G.call('turn_map')    
            elseif int_选项 == 3 then 
                G.call('all_over')
                if G.call('get_love',2) > 80 then 
                    if G.call('get_story',11) == 0 then 
                        G.call("talk",'',2,'   我在这思过崖里面的山洞里发现了不少洞口，原来这些洞口还通向其他的洞穴。可惜这洞穴的甬道里仅容一个人进出，而且岩石松动，也似乎不大安全了，我建议你也不要去了。',2,1)
                        G.call("talk",'',0,'   这种神奇的地方我怎么能不进去看一看，万一那天里面真的塌了，埋葬了不少新奇好玩的事物而我们又没见到，这未免太可惜了。',0,0)
                        G.call("talk",'',2,'   你既然执意要进去看个究竟，那就小心的去吧，如发现有什么不妥就赶紧出来。',2,1)
                        G.call("talk",'',0,'   知道了大师兄，我会小心的。',0,0)
                        G.call('all_over')
                        G.call('dark')
                        G.call('地图_进入地图','华山密道',29,10)  
                        local int_选项 = 0
                        while int_选项 == 0 do
                            int_选项 = G.call("menu",'',0,'原来这里这么多岔路。我得谨慎选择，莫要在里面迷失了方向。',0,4,{"1,走左上方岔路","2,走右上方岔路","3,走右下方岔路"},0) 
                            if int_选项 == 1 then 
                                G.call('all_over')
                                G.call('dark')
                                G.call('地图_进入地图','华山密洞一',30,10)  
                                G.call("talk",'',0,'   这个洞穴里怎么有许多白骨？石壁上还有字“五.岳.剑.派.卑.鄙.无.耻”刻这些字的人怎么和我五岳派有这么大仇怨？一定是在洞里迷路给困死在这里的。',0,0) 
                                G.call("talk",'',0,'   地上散落的这些兵器倒真是不错——【白龙剑】【穿云刀】【黄金杵】【黑血神针】...，这些神兵今天找到新主人，也算是他们前世修来的福气了。',0,0) 
                                G.call('add_role',27,1,3500)
                                G.call('add_role',27,2,3500)
                                G.call('set_role',27,13,G.call('get_role',2,1))
                                G.call('set_role',27,14,G.call('get_role',2,2))
                                G.call('set_role',27,3,45)
                                G.call('set_role',27,5,35)
                                G.call('set_role',27,7,50)
                                G.call('set_role',27,8,30)
                                G.call('set_roleskill',27,2,44)
                                G.call('set_role',27,11,973)
                                G.call('set_roleskill',27,3,6)
                                G.call('set_role',27,12,750)
                                G.QueryName(0x1004001b)['拥有'..1] = 1
                                G.QueryName(0x1004001b)['拥有'..2] = 1 
                                G.QueryName(0x1004001b)['拥有'..2]  = 1 
                                G.call('set_story',11,1) 
                                if G.call('get_item',19) == 0 then 
                                    G.call('add_item',19,1)
                                end 
                                if G.call('get_item',42) == 0 then 
                                    G.call('add_item',42,1)
                                end 
                                if G.call('get_item',60) == 0 then 
                                    G.call('add_item',60,1)
                                end 
                                if G.call('get_item',68) == 0 then 
                                    G.call('add_item',68,50)
                                end 
                            elseif int_选项 == 2 then 
                                G.call('all_over')
                                G.Play(0x49010001,1,true,1) 
                                G.call('dark')
                                G.call('地图_进入地图','华山密洞二',31,54)  
                                G.call("talk",'',0,'   这个洞穴的墙壁上似乎刻着不少招式动作啊，咦？怎么像是我五岳剑派的精妙招式，这些招式似乎师父师娘也未必见过，真是奇怪。',0,0) 
                                G.call("talk",'',0,'   时间紧迫，我先记下这石壁上的招数，出去后再向大师兄请教...【云雾十三剑】【连环三仙剑】【快慢十七路】【万花剑法】【五大夫剑】...',0,0) 
                                if G.call('get_magic',33) == 0 then 
                                    G.call('learnmagic',33)
                                end     
                                if G.call('get_magic',39) == 0 then 
                                    G.call('learnmagic',39)
                                end 
                                if G.call('get_magic',45) == 0 then 
                                    G.call('learnmagic',45)
                                end 
                                if G.call('get_magic',58) == 0 then 
                                    G.call('learnmagic',58)
                                end 
                                if G.call('get_magic',59) == 0 then 
                                    G.call('learnmagic',59)
                                end 
                                G.call('add_role',27,1,3500)
                                G.call('add_role',27,2,3500)
                                G.call('set_role',27,13,G.call('get_role',2,1))
                                G.call('set_role',27,14,G.call('get_role',2,2))
                                G.call('set_role',27,3,45)
                                G.call('set_role',27,5,35)
                                G.call('set_role',27,7,50)
                                G.call('set_role',27,8,30)
                                G.call('set_roleskill',27,2,44)
                                G.call('set_role',27,11,973)
                                G.call('set_roleskill',27,3,6)
                                G.call('set_role',27,12,750)
                                G.QueryName(0x1004001b)['拥有'..1] = 1
                                G.QueryName(0x1004001b)['拥有'..2] = 1 
                                G.QueryName(0x1004001b)['拥有'..2]  = 1 
                                G.call('set_story',11,2)
                               
                            elseif int_选项 == 3 then 
                                G.call('all_over')
                                G.call('dark')
                                G.call('地图_进入地图','华山密洞三',32,10)  
                                G.call("talk",'',0,'   重宝秘术,付与有缘,入我门来,遇祸莫怨”...此人写下这些字是什么用意？这人究竟是什么来历，怎么会死在这山洞里？',0,0) 
                                G.call("talk",'',0,'   石头上插着这柄剑倒是十分奇特，还有这地上散落的蛇一样的暗器...秘籍？《金蛇秘籍》...你我既是有缘，我好好安葬了你，你的东西我就替你代管了。',0,0) 
                                if G.call('get_item',22) == 0 then 
                                    G.call('add_item',22,1)
                                end 
                                if G.call('get_item',99) == 0 then 
                                    G.call('add_item',99,1)
                                end 
                                if G.call('get_item',70) == 0 then 
                                    G.call('add_item',70,50)
                                end 
                                G.call('set_story',11,3) 
                            end 
                            G.call("talk",'',0,'   这个洞穴的墙壁上似乎刻着不少招式动作啊，咦？怎么像是我五岳剑派的精妙招式，这些招式似乎师父师娘也未必见过，真是奇怪。',0,0) 
                            G.call('all_over')
                            G.call('dark')
                            G.call('地图_进入地图','思过崖',27,1)  
                            G.call('add_hour',6)
                            G.call("talk",'',2,'   你可真吓死我了，听到没？这洞穴真的塌了。你再晚出来一步，你就葬身这山洞里了。你简直比我还要敢冒险，你要有个好歹，我可怎么跟师父师娘交代！',2,1)
                            if G.call('get_story',11) == 1 then 
                                G.call("talk",'',2,'   师弟真行啊，你到学会顺手牵羊反手套猪的本事啦！你得到的这些兵器其实是当年攻打我华山的魔教长老的，他们后来被五岳派各位前辈用计引到思过崖上想聚而歼之，',2,1)
                                G.call("talk",'',2,'   想必你在洞里看到的骸骨就是他们的了，我派好手死伤不少，他们这也是应得之报！',2,1) 
                            elseif  G.call('get_story',11) == 2 then
                                G.call("talk",'',2,'   那石壁上的招数你都记下了吧，我当时也曾看到，但是练来练去总觉什么地方不大对劲，似乎这几派的招数渊源颇深，联系很强，能相互弥补别派的不足。假如这五派剑法能合而为一，那岂不是绝顶的剑法了！',2,1) 
                            elseif  G.call('get_story',11) == 3 then
                                G.call("talk",'',2,'   看到那个人了吧。你晓得那死去的人是谁？他便是二十年前名动江湖的【金蛇郎君】，这把【金蛇剑】就是最好的证明。当日我见到他的骨骸，本想叫他入土为安，',2,1) 
                                G.call("talk",'',2,'   后来师娘上山找我，此事才做罢，后来我竟再也认不得路了。今天你亲手安葬他，想必与你前世有缘了。',2,1) 
                            end 
                            G.call("talk",'',2,'   时候不早了，你得赶紧回去。要是被师父发现，以后你就上不了思过崖看我了！',2,1) 
                            G.call('all_over')
                            G.call('goto_map',38) 
                        end                
                    else
                        G.call("talk",'',2,'   你难道忘了吗，这里的洞穴已经塌方，入口已经被堵死了。',2,1)
                    end     
                else
                    G.call("talk",'',2,'   我在这里整天就是练剑、吃饭、睡觉，哪里理会得这有什么好玩的地方。你当我是被罚在这里欣赏风景呢？',2,1)

                end    
                G.call('all_over')
                G.call('goto_map',38) 
            elseif int_选项 == 4 then 
                G.call('all_over')
                G.call('goto_map',38)  
            end 
        end             
    else
        G.call("talk",'',0,'   思过崖上今天真是很冷清，时候不早，我也该回去了。',0,0) 
        G.call('all_over')
        G.call('goto_map',38) 
    end 
          
end   
t['初入华山-出师'] = function() 
    G.call('all_over')
    G.call('dark')
    G.call('goto_map',8)
    G.call("talk",'',191,'   现在一年将近，这在华山上这些日子都做过什么，你心里有数，为师心里也有数。希望你下山在江湖上历练时，不要辜负了师父师娘对你的期望。',2,1)
    if G.call('get_love',24) >= 80 then 
        G.call("talk",'',24,'   爹啊，您常说读万卷书走万里路，我想借这个机会跟师弟一起下山到江湖上浏览一番，师弟什么都不懂，没我这个师姐带路怕是要碰钉子呢',2,1)
        if G.call('team_full') == false then 
            G.call('join',24)
            G.call('set_roleskill',24,3,50)
            G.call('set_role',24,12,396)
        end  
        if G.call('get_love',31) >= 80 then 
            G.call("talk",'',31,'   启禀师父，徒儿也想借这个机会跟师弟一起下山，回福建探访我林家的老宅，以完成父亲的遗命。',2,1)    
            if G.call('team_full') == false then 
                G.call('join',31)
            
            end  
        end 
    else
        G.call("talk",'',31,'   启禀师父，徒儿也想借这个机会跟师弟一起下山，回福建探访我林家的老宅，以完成父亲的遗命。',2,1)    
        if G.call('team_full') == false then 
            G.call('join',31)
        
        end 
    end  
    G.call("talk",'',191,'   既然如此，你们就在路上相互照顾吧。华山有什么事情，我会派弟子通知你们的。',2,1) 
    G.call("talk",'',0,'   徒儿谨记师父教诲。',0,0) 
    G.call('出师-增加被动')
    G.call('all_over') 
    G.call('set_alltime',2,1,1,4,1)
    G.call('set_point',146,2)
    G.QueryName(0x1017000e).进度列表[3].完成 = 1
    G.call('初入聚贤庄')
end       