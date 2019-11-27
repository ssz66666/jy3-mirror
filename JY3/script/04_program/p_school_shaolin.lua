--[[400a

]]
local G = require "gf"
local L = {}
local t = G.api
local JY = 0
t['初入少林'] = function()
    G.call('dark')
    G.call('goto_map',9)
    G.call("talk",'',91,'   启禀掌门师叔，如今世道混乱，师侄探访多日，愿意入我少林甘愿忍受一年斋戒之苦的实在寥寥。现有一人姓'..G.QueryName(0x10030001)[tostring(1)]..'名'..G.QueryName(0x10030001)[tostring(2)],2,1) 
    G.call("talk",'',91,'   弟子觉得他似乎是练武的好材料，至于品德言行还未来及考察。',2,1)
    G.call("talk",'',175,'   嗯，慧轮师侄确是难为你了。入我少林讲究放下屠刀立地成佛，就算他以前品行不好，咱们还不能教化他日后向善吗？既然现在人少，那么三十六房设立之事暂缓执行。',2,1) 
    G.call("talk",'',175,'   '..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..',今天起你便是我少林俗家弟子属罗汉堂武僧，慧轮师侄就是你的授业恩师。这一年内你不能够外出少林，须得刻苦钻研我少林武功，日后少林在江湖的威名兴衰就靠你们这代人了。',2,1) 
    G.call("talk",'',175,'  本寺三六九月会从罗汉堂选出优秀武僧去过【木人巷】，通过者，可选进【达摩院】修习本派高深武功或【般若堂】修习别派精妙武功或者至福建【南少林】修习器械类武功。',2,1) 
    G.call("talk",'',175,'   一年终了，需闯【铜人阵】作为你在少林修习的最后检验。',2,1) 
    G.call("talk",'',110,'   老僧是【般若堂】首座——澄观，乃是掌门的师弟，【般若堂】所修习虽非其他门派的至深至密的绝学，但是和我少林武功大有相互印证之功效，对个人武学修为有莫大的好处。',2,1) 
    G.call("talk",'',176,'   老衲是【达摩院】首座——空闻，乃是掌门的师兄，【达摩院】专研少林七十二项绝技，任一门绝技练成都可叱诧江湖，我寺历代高僧中，曾有人精通一十三门绝技，武学修为之高实乃是除达摩老祖外的第一人！',2,1) 
    G.call("talk",'',0,'   多谢掌门方丈及各位师祖的指点，弟子一定不负众望。',0,0) 
    G.QueryName(0x10030001)[tostring(9)] = '罗汉堂武僧'
    G.QueryName(0x10030001)[tostring(11)] = 1
    G.QueryName(0x10030001)[tostring(107)] = 1
    G.QueryName(0x10030001)[tostring(12)] = '慧  伦'
    G.QueryName(0x10030001)[tostring(8)] = 2
    G.call('all_over')
    G.call('dark')
    G.call('goto_map',27)
    G.call("talk",'',91,'   '..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..',我现在传你少林的入门功夫——【少林长拳】。少林的门派技能是【佛法】，你需要经常到【藏经阁】研读经书，提升自己的佛法修为，这样才能驾驭更高深的武功。平时你可找【虚竹】切磋武功。',2,1)
    G.call("talk",'',35,'   师兄我虽然从小长在少林，但是生性鲁钝，在罗汉堂呆了十二年任仍然不能通过木人巷，所以我的武功实在稀松平常。日后还须向师弟多多请教。',2,1)
    G.call('add_item',88,1)
    G.call('learnmagic',72)
    G.call('set_note','拜入少林门下，一年之后再重出江湖')
    G.call('all_over')
end  
t['初入少林-慧伦'] = function()
    G.call("talk",'',91,'   '..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..',你有什么事情吗？',2,1)
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,请师父传授功夫","2,与师父切磋武功","3,挑战罗汉堂首座","4,打听寺内事物","5,没什么事情，向师父请安"},0) 
        if int_选项 == 1 then 
            if G.call('get_magicexp',177) == 0 then 
                if G.call('get_point',11) >= 2 then 
                    G.call("talk",'',91,'   我现在传授你少林入门轻功【少林身法】，要想提升这门功夫需要消耗你身上的【修为点】。像【轻功】【内功】这2类功夫，需要装备在身上方能体现效果，否则是无用的。',2,1) 
                    G.call('learnmagic',177)
                else
                    G.call("talk",'',91,'   不要总是沉迷在武功上，你的【佛法】修为一直都没有长进，虽说你是俗家弟子，但也是我少林子弟，不修佛法实属不该，尽快去【藏经阁】看几天经书再来找我。',2,1) 
                end  
            elseif G.call('get_magicexp',89) == 0 then 
                if G.call('get_magicexp',72) >= 103 then 
                    G.call("talk",'',91,'   你的【少林长拳】已经略具一定火候了，现在我传授你另一套入门拳法【罗汉拳】，这套拳法虽然不如何厉害，但却是下一门功夫【般若掌】的根基武功，你要勤加练习。',2,1) 
                    G.call('learnmagic',89)
                else
                    G.call("talk",'',91,'   你的【少林长拳】练得如何了？我看连六成的功力都没达到，回去继续练习，年轻人不要总是好高骛远！',2,1) 
                end  
            elseif G.call('get_magicexp',69) == 0 then 
                if G.call('get_magicexp',89) >= 168 then 
                    G.call("talk",'',91,'   【罗汉拳】的劲力收发窍门你已经领会的差不多，是时候传你这套【般若掌】了。这套掌法已是我压箱底的绝学，以后就没什么可教你的了。',2,1) 
                    G.call('learnmagic',69)
                else
                    G.call("talk",'',91,'   【般若掌】的繁复程度远远大于【罗汉拳】，【罗汉拳】你尚且领会不深，如何学得更高深的武功！',2,1) 
                end
            else
                G.call("talk",'',91,'   你已掌握我生平所学，我没什么可教授的了，但愿不要“教会徒弟，饿死师父”才好。你只有通过了木人阵才能有机会学到更高级的武功。',2,1)                     
            end 
            G.call('all_over') 
        elseif int_选项 == 2 then  
            G.call("talk",'',91,'   好！让我看看你的少林功夫最近练得如何了。',2,1) 
            G.call('all_over')
            G.call('call_battle',1,10,1,50,91,0,0,0,0,0)
            local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 0, 91, 0, 0, 0, 0, 1, 0.5, 0);
            if o_battle_结果  == 1 then
                G.call('add_love',91,3)
                G.call("talk",'',91,'   不错，不错。他日选拔罗汉堂精英闯木人巷，我看你已有6成的把握了。',2,1) 
            else 
                G.call('add_love',91,-3)
                G.call("talk",'',91,'   连我一半功力都胜不过，你如何能过得了木人巷！',2,1) 
            end  
            G.call('all_over')
            G.call('add_time',4)
            G.call('turn_map')    
        elseif int_选项 == 3 then 
            if G.QueryName(0x10030001)[tostring(9)] == '罗汉堂首座' then
                G.call("talk",'',91,'   难道你已经忘记了？我已经不是罗汉堂首座，现任的首座是你啊。',2,1) 
            else
                G.call("talk",'',91,'   这罗汉堂首座在少林寺虽不算什么大的职司，但是也统领着上百名僧众。今天你如能胜过我，这首座一职就交你来当了。',2,1) 
                G.call('all_over')
                G.call('call_battle',1,10,1,80,91,0,0,0,0,0)
                local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 0, 91, 0, 0, 0, 0, 1, 0.8, 0);
                if o_battle_结果  == 1 then
                    G.call("talk",'',91,'   你数日的修行竟然远远超过为师数十年的苦修，看来你确有练武的天分。我曾得到师父传授《少林九阳功》，',2,1) 
                    G.call("talk",'',91,'   但是一直未能练成，现在转授于你，希望你能神功有成。今日起，你便是罗汉堂首座了。',2,1) 
                    if G.call('get_item',124) == 0 then 
                       G.call('add_item',124,1)
                    end
                    G.call('add_point',14,70)
                    G.QueryName(0x10030001)[tostring(9)] = '罗汉堂首座'
                    G.call('set_note','成为少林寺【罗汉堂首座】！')
                elseif o_battle_结果  == 2 then
                    G.call("talk",'',91,'   这【罗汉堂首座】也不是那么轻易能当的。',2,1) 
                end 
                G.call('all_over')
                G.call('add_time',4)
                G.call('turn_map') 
            end   
            G.call('all_over')  
        elseif int_选项 == 4 then  
            G.call("talk",'',91,'   【大殿】：少林有重要事务时诸僧才会到大殿集合。【藏经阁】：现由一名老僧看管，里面藏有大量的经文及武学典籍。',2,1) 
            G.call("talk",'',91,'   【厨房】：是解决少林诸僧的饮食问题，最近似乎人手不够，常叫外人帮工。三六九月我会考核你的武功，看你是否够格去闯【木人阵】。',2,1) 
            G.call('all_over')
        elseif int_选项 == 5 then 
            G.call('all_over')    
        end        
    end        
end  
t['初入少林-虚竹'] = function()
    G.call("talk",'',35,'   '..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..',你有什么事情吗？',2,1)
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,找师兄闲聊","2,与师兄切磋武功","3,探讨佛法","4,没什么事情，向师兄请安"},0) 
        if int_选项 == 1 then 
            local a1 = '我从小就长在少林，师父说我还在襁褓时，他在寺门外发现的我。至今我都不知道生身父母是谁。'
            local a2 = '听师兄们说现在天下纷争，江湖能人异士各领风骚，真希望有机缘见识一下。'
            local a3 = '听说现任丐帮帮主乔峰，乃是玄苦太师伯的俗家弟子，算起来乔帮主还算是咱们的师伯呢。'
            local a4 = '师兄生性不喜练武，对武学一道也知之甚少；假如有人跟我探讨佛经，那才是我求之不得的。'
            local a5 = '【藏经阁】的看守老僧也不知今年有几十岁了，好似并没有正式入我少林辈分，也没有人知道他的名讳，掌门方丈对其却是极其信赖有加，所以才让他看守我寺的藏经重地。'
            local a6 = '师兄去年曾去闯过木人巷，连第一关都没过去，真是惭愧的很。'
            local a7 = '【厨房】的缘根师兄并非从少林寺出家,因此不入少林辈分。他为人面恶心善，相处时日久了，他也能是你受益匪浅。'
            local b = math.random(7)
            local a = {a1,a2,a3,a4,a5,a6,a7}
            if G.call('get_love',35) < 60 then 
                G.call("talk",'',35,'   我今天的功课还没有做完，以后有机会再说吧。[师弟]在少林修行只有一年的时间，光阴如箭，[师弟]要好好把握机会啊。',2,1) 
            else
                if G.call('get_love',35) < 75 then 
                    G.call("talk",'',35,'   师兄往日除了念佛诵经，其他一无所长，见识远不如[师弟]广博，因此实在不知从何聊起。',2,1) 
                else  
                    G.call("talk",'',35,'   '..a[b],2,1)   
                end     
            end   
            G.call('all_over')   
        elseif int_选项 == 2 then 
            G.call("talk",'',35,'   [师弟]咱们点到为止，师兄的功夫可是稀松平常得很。',2,1) 
            G.call('all_over')
            G.call('call_battle',1,10,1,G.call('get_love',35)*0.1,35,0,0,0,0,0)
            local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 0, 35, 0, 0, 0, 0, 1, _root.Js[35].m_nFavour*0.01, 0);
            if o_battle_结果  == 1 then
                G.call('add_love',35,3)
                G.call("talk",'',35,'   [师弟]的功夫果然大有长进，做师兄的真是自愧不如。',2,1) 
            else 
                G.call('add_love',35,-2)
                G.call("talk",'',35,'   练武不是为了争强好胜逞勇斗狠，保持一颗平常心，胜败乃兵家常事。',2,1) 
            end  
            G.call('all_over')
            G.call('add_hour',1)
            G.call('turn_map') 
        elseif int_选项 == 3 then
            G.call("talk",'',35,'   你来跟我探讨佛法呀，那真是太好了。',2,1)  
            if G.call('get_point',11) < 3 then
                G.call("talk",'',35,'   原来[师弟]对佛法的了解还知之甚少，不过没关系，多去【藏经阁】向无名老僧请教，一定会使你受益匪浅。',2,1) 
                G.call('add_point',107,1)
            elseif G.call('get_point',11) < 5 then
                G.call("talk",'',35,'   原来[师弟]对佛法的了解还知之甚少，不过没关系，多去【藏经阁】向无名老僧请教，一定会使你受益匪浅。',2,1) 
                G.call('add_point',107,2)
            elseif G.call('get_point',11) < 7 then
                G.call("talk",'',35,'   [师弟]的在佛法修为上某处见解真是独到深刻，实在是领师兄拜服。',2,1) 
                G.call('add_point',107,math.random(2))
            elseif G.call('get_point',11) > 9 then
                G.call("talk",'',35,'   高明之至，[师弟]果然心有慧根，你的修为要比我精湛得多了，看来在这辈师兄弟当中，论佛学修为属你第一！',2,1) 
                G.call('add_love',35,math.random(3))
            end     
            G.call('all_over')
        elseif int_选项 == 4 then
            G.call('all_over')
        end 
    end          

end  
t['初入少林-玄慈'] = function()
    G.call("talk",'',175,'   你不去安心修炼，来我这里做什么？',2,1) 
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,请方丈讲述武林旧事","2,请方丈传授武功","3,向与方丈切磋一下武功","4,没什么事情，向方丈问安后我就回去了"},0) 
        if int_选项 == 1 then 
            local a1 ='虽说少林武当为中原武林两大领袖门派，但是江湖上少有人知，武当掌门张三丰真人乃是我少林当年的弃徒，因其偷学本寺高深武功而未禀明罗汉堂首座，后被发现，那一代的掌门方丈就要废除他的武功，多亏其师觉远大师救他逃去了'
            local a2 ='少林至宝《易筋经》，千百年来，练成者寥寥，为何？我佛家武学讲究个缘法，缘法到时心灵空澈，缘法未到心思懵懂，就是秘籍宝典摆在那给你看，你也未必能练得成，况且我寺瑰宝非有缘不能传也。'
            local a3 ='昔日雁门关一战，老衲好生后悔，虽说杀的是契丹人，但是总觉事有蹊跷，更何况还有兄弟杀了一名不通武功妇人，实在是我辈的耻辱。'
            local a4 ='藏经阁值守的老僧人乃是上一代掌门方丈的至交好友，起初似乎是为了避祸才躲于少林，后来看破了红尘甘愿在少林出家，但是不按我寺辈分，平时也就是诵经礼佛。大约三四十年前调去看守藏经阁至今。'
            local a5 ='我寺还有一位【圆真】师侄，想必你还从未见过。他的武功几可直追【达摩院首座】空闻师兄，只是佛法修为就相去甚远，所以未安排他什么职司。他近来也时常不在寺中，不知再做些什么。'
            local a6 ='江湖上最近血案累累，死的都是名家好手，凶手行凶后都在墙上留名：杀人者混元霹雳手成昆也。这成昆在江湖上也是略有薄名，似乎人缘也是不错，更没听说他与这些死者有何仇怨，多半这是有人栽赃陷害。'
            local a7 ='论内功，我寺的【易筋经】堪称魁首；论掌法，丐帮的【降龙十八掌】天下无双；论棍法，丐帮世代相传的【打狗棒】至今无人能敌；论剑法，老衲认为唯有风清扬老前辈所使剑法为当世第一；论刀法，那自然是辽东的胡家刀了。'
            local a8 ='昔日华山争雄的南帝北丐东邪西毒中神通是何等的世外高人，现在华山上也曾闻时常有人仿效前人比武轮剑，真是给人以笑柄尚不自知啊。'
            local b = math.random(8)
            local a = {a1,a2,a3,a4,a5,a6,a7,a8}
            G.call("talk",'',175,'   '..a[b],2,1) 
            G.call('all_over')
            G.call('turn_map') 
        elseif int_选项 == 2 then
            G.call("talk",'',175,'   老衲早已立誓不再传人功夫，你还是找你自己的师父去吧。',2,1) 
            G.call('all_over')
            G.call('turn_map') 
        elseif int_选项 == 3 then
            if G.call('get_point',4) > 30 then 
                G.call('add_hour',1)
                G.call("talk",'',175,'   看你精气十足，目光炯炯，想必已经得到了我少林武功的真传，就让老衲来看看你的功夫练得如何了。',2,1) 
                G.call('all_over')
                G.call('call_battle',1,10,1,G.call('get_love',175)*0.1,175,0,0,0,0,0)
                local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 0, 175, 0, 0, 0, 0, 1, _root.Js[175].m_nFavour*0.01, 0);
                if o_battle_结果  == 1 then
                    G.call('add_love',175,3)
                    G.call("talk",'',175,'   以你的本事在我少林已经算是出类拔萃了，只是不知过那【铜人阵】有没有把握。',2,1) 
                else 
                    G.call('add_love',175,-2)
                    G.call("talk",'',175,'   在俗家弟子里面你的功夫也算是练得不差了，只是凭这本事要过【铜人阵】，可实在太勉强了。',2,1) 
                end  
            else
                G.call("talk",'',175,'   你还得多多历练，等你的功夫练得可以看的过去了，再来找我切磋。',2,1) 
            end     
            G.call('all_over')
            G.call('turn_map') 
        elseif int_选项 == 4 then
            if G.call('get_story',49) == 0 then 
                G.call('goto_map',27) 
            elseif G.call('get_story',49) == 1 then 
                G.call('goto_map',32) 
            elseif G.call('get_story',49) == 2 then  
                G.call('goto_map',33) 
            end  
            G.call('all_over')          
        end    
    end        
end 
t['初入少林-无名僧'] = function()
    G.call("talk",'',94,'   这藏经阁内的经书，向来不禁本寺僧人借阅，你虽为俗家弟子却也愿亲近佛法，实属难能可贵，佛祖曰：多读经，读好经，才能把有限的精力投入到无限的普度众生活动当中。',2,1) 
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,【研习佛经】五天","2,【研习佛经】十天","3,【研习佛经】十五天","4,晚辈还有别的安排，下次再来学经"},0) 
        if int_选项 == 1 then 
            G.call('add_point',107,25) 
            G.call('add_love',94,1)
            local n = G.call('get_point',4)
            if G.call('get_point',4) < 30 then
                JY = math.floor(15 *n* (n+1)*  G.QueryName(0x10030001)[tostring(200)]/100 * 0.8) 
            else
                JY = math.floor(15 *30* 31*  G.QueryName(0x10030001)[tostring(200)]/100 * 0.8)
            end
            G.call('all_over')
            --G.call('dark') 
            G.call('add_day',5)
            G.call('add_point',3,JY)
            JY = 0
            local m = math.random(3)
            local a1 = '年纪轻轻看来倒对佛法颇有心得，老僧来给你说些高僧们的语录心得，叫你的佛法修为更进一层...'
            local a2 = '少林绝技博大精深，每一项都能攻敌要害取人性命，大违佛家普度众生的本意，只有慈悲之心日盛，少林武功方能精进。'
            local a3 = '佛法修为永无止境，大则普度众生，小则洗涤身心，礼佛之心一日不可或缺也。'
            local a = {a1,a2,a3}
            if G.call('get_love',94) > 70 then 
                 G.call("talk",'',94,'   '..a[m],2,1) 
                if m == 1 then 
                    G.call('add_love',94,-10)
                    G.call('add_point',107,80)
                elseif m == 2 then 
                    G.call('add_love',94,-10)
                    JY = math.floor(15 *n* (n+1)*  G.QueryName(0x10030001)[tostring(200)]/100 * 1.5) 
                end    
            else
                G.call("talk",'',94,'   '..a[3],2,1)
            end         
            G.call('add_point',3,JY)
            G.call('turn_map') 
        elseif int_选项 == 2 then
            G.call('add_point',107,60)
            G.call('add_love',94,2)
            local n = G.call('get_point',4)
            if G.call('get_point',4) < 30 then
                local n = G.call('get_point',4)
                JY = math.floor(15 *n* (n+1)*  G.QueryName(0x10030001)[tostring(200)]/100 * 1.5) 
            else
                JY = math.floor(15 *30* 31*  G.QueryName(0x10030001)[tostring(200)]/100 * 1.5)
            end 
            G.call('all_over')
            --G.call('dark') 
            G.call('add_day',10)
            G.call('add_point',3,JY)
            JY = 0
            local m = math.random(3)
            local a1 = '年纪轻轻看来倒对佛法颇有心得，老僧来给你说些高僧们的语录心得，叫你的佛法修为更进一层...'
            local a2 = '少林绝技博大精深，每一项都能攻敌要害取人性命，大违佛家普度众生的本意，只有慈悲之心日盛，少林武功方能精进。'
            local a3 = '佛法修为永无止境，大则普度众生，小则洗涤身心，礼佛之心一日不可或缺也。'
            local a = {a1,a2,a3}
            if G.call('get_love',94) > 70 then 
                 G.call("talk",'',94,'   '..a[m],2,1) 
                if m == 1 then 
                    G.call('add_love',94,-10)
                    G.call('add_point',107,80)
                elseif m == 2 then 
                    G.call('add_love',94,-10)
                    JY = math.floor(15 *n* (n+1)*  G.QueryName(0x10030001)[tostring(200)]/100 * 1.5) 
                end    
            else
                G.call("talk",'',94,'   '..a[3],2,1)
            end         
            G.call('add_point',3,JY)
            G.call('turn_map') 
        elseif int_选项 == 3 then
            G.call('add_point',107,90) 
            G.call('add_love',94,3)
            local n = G.call('get_point',4)
            if G.call('get_point',4) < 30 then
                local n = G.call('get_point',4)
                JY = math.floor(15 *n* (n+1)*  G.QueryName(0x10030001)[tostring(200)]/100 * 2.5) 
            else
                JY = math.floor(15 *30* 31*  G.QueryName(0x10030001)[tostring(200)]/100 * 2.5)
            end 
            G.call('all_over')
            --G.call('dark') 
            G.call('add_day',15)
            G.call('add_point',3,JY)
            JY = 0
            local m = math.random(3)
            local a1 = '年纪轻轻看来倒对佛法颇有心得，老僧来给你说些高僧们的语录心得，叫你的佛法修为更进一层...'
            local a2 = '少林绝技博大精深，每一项都能攻敌要害取人性命，大违佛家普度众生的本意，只有慈悲之心日盛，少林武功方能精进。'
            local a3 = '佛法修为永无止境，大则普度众生，小则洗涤身心，礼佛之心一日不可或缺也。'
            local a = {a1,a2,a3}
            if G.call('get_love',94) > 70 then 
                G.call("talk",'',94,'   '..a[m],2,1) 
                if m == 1 then 
                    G.call('add_love',94,-10)
                    G.call('add_point',107,80)
                elseif m == 2 then 
                    G.call('add_love',94,-10)
                    local n = G.call('get_point',4)
                    JY = math.floor(15 *n* (n+1)*  G.QueryName(0x10030001)[tostring(200)]/100 * 1.5) 
                end    
            else
                G.call("talk",'',94,'   '..a[3],2,1)
            end         
            G.call('add_point',3,JY)
            G.call('all_over')
            G.call('turn_map')
        elseif int_选项 == 4 then
            if G.call('get_story',49) == 0 then 
                G.call('goto_map',27) 
            elseif G.call('get_story',49) == 1 then 
                G.call('goto_map',32) 
            elseif G.call('get_story',49) == 2 then  
                G.call('goto_map',33) 
            end  
            G.call('all_over') 
        end
    end     
end 
t['初入少林-缘根'] = function()
    G.call("talk",'',206,'   这是厨房重地，非工作人员禁止入内，你来这里做什么？',2,1)
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,师兄这里有什么事情，[师弟]可以代劳的","2,想与师兄切磋一下武功","3,跟师兄打声招呼便回去了"},0) 
        if int_选项 == 1 then 
            G.call('all_over')  
            local n = math.random(3)
            local m = '4,最近我还有别的安排，下次再帮你'
            local s1 = '最近天旱异常，寺里水井的水越来越少，你去山下给我挑几天水吧。'
            local s2 = '少林寺人口众多，给全寺上下做一顿饭也不知得消耗多少木柴。你去给我砍几天柴吧。'
            local s3 = '厨房人手不够，一些首座老和尚们嘴又挑剔，你最好能帮着做几天饭。'
            local s = {s1,s2,s3}
            local a1 = '1,【挑水】五天'
            local a2 = '2,【挑水】十天'
            local a3 = '3,【挑水】十五天'
            local b1 = '1,【砍柴】五天'
            local b2 = '2,【砍柴】十天'
            local b3 = '3,【砍柴】十五天'
            local c1 = '1,【做饭】五天'
            local c2 = '2,【做饭】十天'
            local c3 = '3,【做饭】十五天'
            local p1 = {a1,b1,c1}
            local p2 = {a2,b2,c2}
            local p3 = {a3,b3,c3}
            G.call("talk",'',206,'   '..s[n],2,1)
            local t = G.call('get_point',4)
            local int_选项 = 0
            while int_选项 == 0 do
                int_选项 = G.call("menu",'',0,'',0,0,{p1[n],p2[n],p3[n],m},0) 
                if int_选项 == 1 then 
                    G.call('add_love',206,2)
                    if n == 1 then 
                        G.call('add_point',103,10)
                    elseif n == 2 then 
                        G.call('add_point',101,10)
                    elseif n == 3 then  
                        G.call('add_point',37,math.random(2))
                    end 
                    if G.call('get_point',4) < 30 then
                        JY = math.floor(15 *t* (t+1)*  G.QueryName(0x10030001)[tostring(200)]/100 * 0.3) 
                    else
                        JY = math.floor(15 *30* 31*  G.QueryName(0x10030001)[tostring(200)]/100 * 0.3)
                    end        
                    G.call('all_over')
                   -- G.call('dark') 
                    G.call('add_day',5)
                    G.call('add_point',3,JY)
                elseif int_选项 == 2 then
                    G.call('add_love',206,4)
                    if n == 1 then 
                        G.call('add_point',103,20)
                    elseif n == 2 then 
                        G.call('add_point',101,20)
                    elseif n == 3 then  
                        G.call('add_point',37,math.random(4))
                    end 
                    if G.call('get_point',4) < 30 then
                        JY = math.floor(15 *t* (t+1)*  G.QueryName(0x10030001)[tostring(200)]/100 * 0.6) 
                    else
                        JY = math.floor(15 *30* 31*  G.QueryName(0x10030001)[tostring(200)]/100 * 0.6)
                    end        
                    G.call('all_over')
                    --G.call('dark') 
                    G.call('add_day',10)
                    G.call('add_point',3,JY)
                elseif int_选项 == 3 then
                    G.call('add_love',206,6)
                    if n == 1 then 
                        G.call('add_point',103,30)
                    elseif n == 2 then 
                        G.call('add_point',101,30)
                    elseif n == 3 then  
                        G.call('add_point',37,math.random(6))
                    end 
                    if G.call('get_point',4) < 30 then
                        JY = math.floor(15 *t* (t+1)*  G.QueryName(0x10030001)[tostring(200)]/100 * 0.9) 
                    else
                        JY = math.floor(15 *30* 31*  G.QueryName(0x10030001)[tostring(200)]/100 * 0.9)
                    end        
                    G.call('all_over')
                    --G.call('dark') 
                    G.call('add_day',15)
                    G.call('add_point',3,JY)
                elseif int_选项 == 4 then
                    G.call('all_over')   
                end  
            end 
            if G.call('get_love',206) > 80 and math.random(3) == 1 then 
                G.call("talk",'',206,'   这几日多亏了[师弟]帮忙，不然我这做师兄的也得挨那群老和尚训斥了，我这私藏了几颗灵丹妙药【玉灵散】和【六阳正气丸】，今天都给了你吧。',2,1) 
                if G.call('get_item',223) == 0 then 
                    G.call('add_item',223,2)
                end 
                if G.call('get_item',222) == 0 then 
                    G.call('add_item',222,1)
                end     
            else
                G.call("talk",'',206,'   嗯，[师弟]辛苦了，早点回去休息吧 ',2,1) 
            end     
            G.call('all_over') 
            G.call('turn_map') 
        elseif int_选项 == 2 then
            G.call("talk",'',206,'   要说打架，你师兄我还真就从没怕过谁。来来来！！！',2,1) 
            G.call('all_over')
            G.call('add_hour',1)
            G.call('call_battle',1,10,1,G.call('get_love',206)*0.2,206,0,0,0,0,0)
            local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 0, 206, 0, 0, 0, 0, 1, _root.Js[206].m_nFavour*0.02, 0);
            if o_battle_结果  == 1 then
                G.call('add_love',206,5)
                G.call("talk",'',206,'   [师弟]果然天份奇高，想必是窥视到了我派的上乘武功，有机会还要向[师弟]多多请益！',2,1) 
            else 
                G.call('add_love',206,-5)
                G.call("talk",'',206,'   咱少林武功历来都是天下第一，你师兄我虽没进罗汉堂达摩院，但是平常趁他们练拳留心瞄上几眼就已受益匪浅，说来也有十几年的功力了，你这小[师弟]怎会是对手呢。',2,1) 
            end  
            G.call('all_over')
            G.call('turn_map') 
        elseif int_选项 == 3 then
            if G.call('get_story',49) == 0 then 
                G.call('goto_map',27) 
            elseif G.call('get_story',49) == 1 then 
                G.call('goto_map',32) 
            elseif G.call('get_story',49) == 2 then  
                G.call('goto_map',33) 
            end  
            G.call('all_over') 
        end 
    end        
end   
t['初入少林-测试'] = function()
    local int_mo = 265
    G.call('dark') 
    G.call('goto_map',27) 
    G.call("talk",'',91,'   本月要选拔罗汉堂优秀弟子去通过木人巷的测试，'..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..'让为师看看的功夫究竟练得怎么样了。',2,1) 
    G.call('all_over') 
    G.call('add_hour',1)
    G.call('call_battle',1,10,1,100,91,0,0,0,0,0)
    local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 0, 91, 0, 0, 0, 0, 1, 1, 0);
    if o_battle_结果  == 1 then
        G.call("talk",'',91,'   嗯。很好，在少林俗家弟子里面，你算是最早能通过为师考核的。记着，接下来你要去闯的【木人巷】总共有3关，一关强似一关，不可掉以轻心。',2,1) 
        G.call("talk",'',91,'   为师私藏了几颗【镇心理气丸】，战斗中要是抗不住就吃了他，千万不要逞强',2,1) 
        if G.call('get_item',240) == 0 then 
            G.call('add_item',240,3)
        end 
        local o_hotkey = G.QueryName(0x100C0001)
        o_hotkey[tostring(14)] = 0x100b00ef
        G.call('地图_进入地图','木人巷',11,39) 
        G.call('add_hour',1)
        G.call('rest')
        G.call('call_battle',1,10,1,10,224,0,0,0,0,0)
        local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 0, 224, 0, 0, 0, 0, 1, 0.3, 0);
        if o_battle_结果  == 1 then 
            G.call('地图_进入地图','木人巷',11,39) 
            G.call('add_hour',1)
            G.call('call_battle',1,10,1,20,int_mo,int_mo+1,int_mo+2,0,0,0)
            local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 224, 224, 224, 0, 0, 0, 1, 0.4, 0);
            if o_battle_结果  == 1 then
                G.call('地图_进入地图','木人巷',11,39) 
                G.call('add_hour',1)
                G.call('call_battle',1,10,1,30,int_mo,int_mo+1,int_mo+2,int_mo+3,int_mo+4,int_mo+5)
                local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 224, 224, 224, 224, 224, 0, 1, 0.5, 0);
                if o_battle_结果  == 1 then
                    G.call('dark') 
                    G.call('goto_map',27) 
                    G.call("talk",'',91,'   很好，很好。为师真是替你高兴。此后你无论是去【达摩院】【般若堂】抑或是【南少林】，都可不必再到这【罗汉堂】来了，',2,1) 
                    G.call("talk",'',91,'   你我师徒情分缘尽于此，前面另有高僧前辈做你的师父，今后你要好自为之。这本轻功秘籍《一苇渡江》就留给你做纪念了。',2,1) 
                    if G.call('get_item',128) == 0 then 
                        G.call('add_item',128,1)
                    end 
                    G.call("talk",'',35,'   师兄虽然舍不得你离开罗汉堂，但是个人有各人的缘法，以后能否再见面也是不好说，往日你喜欢钻研武学常找我切磋，今日咱们再切磋一场，就当是为你送行了。',2,1) 
                    G.call('all_over') 
                    G.call('add_time',4)
                    G.call('call_battle',1,10,1,150,35,0,0,0,0,0)
                    local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 224, 224, 224, 0, 0, 0, 1, 0.4, 0);
                    if o_battle_结果  == 1 or o_battle_结果  == 2 then
                        G.call("talk",'',35,'   哈哈,闯过【木人巷】的[师弟]果然是今非昔比！咱们就此别过，后会有期...',2,1) 
                    end  
                    G.call('初入少林-选择') 
                    G.call('all_over') 
                elseif o_battle_结果 == 2 then
                    G.call("talk",'',91,'   唉，看来我是对你期望太高了，希望下次你不要再令我失望了。',2,1) 
                end 
            elseif o_battle_结果 == 2 then
                G.call("talk",'',91,'   唉，看来我是对你期望太高了，希望下次你不要再令我失望了。',2,1) 
            end     
        elseif o_battle_结果 == 2 then
            G.call("talk",'',91,'   唉，看来我是对你期望太高了，希望下次你不要再令我失望了。',2,1) 
        end     
    elseif o_battle_结果 == 2 then 
        G.call("talk",'',91,'   唉，看来我是对你期望太高了，希望下次你不要再令我失望了。',2,1) 
    end  
    G.call('all_over') 
    if G.call('get_story',49) == 0 then  
        G.call('goto_map',27) 
    end
end 
t['初入少林-选择'] = function()
    G.call('dark') 
    G.call('goto_map',9)
    G.call("talk",'',175,'   听说你已经闯过了【木人巷】，善哉善哉，看来慧轮师侄挑出的人选果然不同一般。现在你可以选择三处地方去修习更高深的武功...',2,1)
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,我想入【达摩院】，学习本派绝技","2,我想入【般若堂】，学习其他功夫","3,我想去福建【南少林】，学习兵器功夫"},0) 
        if int_选项 == 1 then
            G.call('all_over') 
            G.call('初入少林-达摩院')
        elseif int_选项 == 2 then
            G.call('all_over') 
            G.call('初入少林-般若堂')
        elseif int_选项 == 3 then  
            G.call('all_over') 
            G.call("talk",'',175,'   福建【南少林】路途遥远，行程需得一十五天。另外十二月会闯【铜人阵】一关检验你这一年来习武情况，',2,1) 
            G.call("talk",'',175,'   所以你又得提前反而，如此一来，至少有一个月时间你不能习武修行，你还是再考虑下吧。',2,1) 
            G.call('all_over') 
            local int_选项 = 0
            while int_选项 == 0 do
                int_选项 = G.call("menu",'',0,'',0,0,{"1,我想入【达摩院】，学习本派绝技","2,我想入【般若堂】，学习其他功夫","3,我想去福建【南少林】，学习兵器功夫"},0) 
                if int_选项 == 1 then
                    G.call('初入少林-达摩院')
                    G.call('all_over') 
                elseif int_选项 == 2 then
                    G.call('初入少林-般若堂')
                    G.call('all_over') 
                elseif int_选项 == 3 then
                    G.call('初入少林-南少林') 
                    G.call('all_over') 
                  
                end   
            end     
        end
    end        
end 
t['初入少林-般若堂'] = function()
    G.call('goto_map',32)
    G.call('set_story',49,1)
    G.call('dark') 
    G.call("talk",'',110,'   你这小娃这么短时间能闯过【木人巷】，了不起！不过这木人嘛，其实也没什么了不得的，毕竟不是真人，比起【少林铜人阵】那更是不值一提。',2,1) 
    G.call("talk",'',110,'   你现在是我【般若堂】弟子，只要好好听我的指教，保你年底时轻松过了【铜人阵】。',2,1) 
    G.call("talk",'',110,'   我这当师父的没什么本事，就是出手大方，你拜我为师总不会叫你心中抱怨。这【大还丹】一颗【纯钢剑】【柳叶刀】各一口【飞镖】百枚就算做给你的见面礼。',2,1) 
    G.call("talk",'',110,'   外这《回风拂柳剑秘籍》是峨嵋派百年来流传下的精妙武功，你去好好研读吧。',2,1) 
    G.QueryName(0x10030001)[tostring(9)] = '般若堂武僧'
    G.QueryName(0x10030001)[tostring(12)] = '澄  观'
    G.call('add_point',14,50)
    if G.call('get_item',224) == 0 then 
        G.call('add_item',224,1)
    end 
    if G.call('get_item',6) == 0 then 
        G.call('add_item',6,1)
    end 
    if G.call('get_item',33) == 0 then 
        G.call('add_item',33,1)
    end 
    if G.call('get_item',63) == 0 then 
        G.call('add_item',63,100)
    end 
    if G.call('get_item',135) == 0 then 
        G.call('add_item',135,1)
    end 
    G.call('all_over')
end         
t['初入少林-达摩院'] = function()
    G.call('goto_map',33)
    G.call('set_story',49,2)
    G.call('dark') 
    G.call("talk",'',176,'   从今天起，你就是【达摩院】的弟子了。按历代的寺规，俗家弟子是不能传授少林绝技的，但事有变通，',2,1) 
    G.call("talk",'',176,'   掌门师弟特许你学习少林七十二门绝技中的若干种。功夫我可以无保留的传授你，但是能否领悟得到就看你的造化了。',2,1) 
    G.call("talk",'',176,'   佛门弟子学武乃在强身健体，护法伏魔。倘若不以佛学为基，练武便会伤及自身，七十二绝技更是如此。我先传你【大力金刚掌】，如你佛学武学俱有所成我再传你其他功夫。',2,1) 
    G.QueryName(0x10030001)[tostring(9)] = '达摩院武僧'
    G.QueryName(0x10030001)[tostring(12)] = '空  闻'
    G.call('add_point',14,50)
    G.call('learnmagic',80)
    G.call('all_over')
end   
t['初入少林-南少林'] = function()
    G.call('goto_map',31)
    G.call('set_story',49,3)
    G.call('add_day',15)
    G.call('dark') 
    G.call("talk",'',177,'   你不远万里来我这【南少林】拜师学艺，老衲欢迎之至。今日相见，咱们这师徒可就是大有缘分哪，若不教你几手惊世骇俗的功夫，岂不叫世人小看了我【南少林】！',2,1) 
    G.call("talk",'',177,'   听说【般若堂】的澄观师弟，对新收的弟子格外大方，但也是只净送些小儿科的东西。老衲可是要给些真东西的：【龙泉剑】【天竺弯刀】各一口，【蟠龙棍】一条，另外我再教你一套【修罗刀法】！',2,1) 
    if G.call('get_item',9) == 0 then 
        G.call('add_item',9,1)
    end 
    if G.call('get_item',39) == 0 then 
        G.call('add_item',39,1)
    end 
    if G.call('get_item',58) == 0 then 
        G.call('add_item',58,1)
    end 
    G.QueryName(0x10030001)[tostring(9)] = '南少林武僧'
    G.QueryName(0x10030001)[tostring(12)] = '方  证'
    G.call('add_point',14,20)
    G.call('learnmagic',20)
    G.call('all_over')
end   
t['初入少林-澄观'] = function()
    G.call("talk",'',110,'   你有什么事情吗？',2,1)
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,请师父传授武功","2,向师父请教武功","3,挑战般若堂首座",'4,没什么事情，向师父请安'},0) 
        if int_选项 == 1 then
            if G.call('get_magicexp',6) == 0 and G.call('get_item',129) == 0 then
                if G.call('get_point',4) >= 30 then 
                    G.call("talk",'',110,'   我今天传你一门暗器功夫的秘籍，叫做【漫天花雨】，这么暗器功夫专门是以少胜多，一把暗器掷出就如下一场雨似的，叫面前的一群敌人都防不胜防！',2,1)
                    G.call('add_point',34,10)
                    G.call('add_item',129,1)
                else
                    G.call("talk",'',110,'   你的功力修为尚浅，至少你的等级提升到三十级我才能考虑传授你下门功夫。',2,1)
                end      
            elseif G.call('get_magicexp',15) == 0 and G.call('get_item',133) == 0 then
                if G.call('get_point',4) >= 35 then 
                    G.call("talk",'',110,'   拳脚功夫想来你已经练得比较纯熟，现在我传你一本刀法秘籍——【狂风刀法】，这路刀法施展开需得像狂风扫落叶般迅猛快捷，势不可当！',2,1)
                    G.call('add_point',25,10)
                    G.call('add_item',133,1)
                else
                    G.call("talk",'',110,'   你的功力修为尚浅，至少你的等级提升到三十五级我才能考虑传授你下门功夫。',2,1)
                end 
            elseif G.call('get_magicexp',116) == 0    then 
                if G.call('get_point',4) >= 40 then 
                    G.call("talk",'',110,'   "江湖上有一门指法叫【分筋错骨手】，招式十分狠辣，专断人筋骨，虽然招式运用及力劲的吞吐颇不及我少林的【大力金刚指】，但是亦有不少独到之处。你功力已深，此功一学便会。',2,1)
                    G.call('add_point',23,10)
                    G.call('learnmagic',116)
                    G.call('set_magicexp',116,416) 
                else
                    G.call("talk",'',110,'   你的功力修为尚浅，至少你的等级提升到四十级我才能考虑传授你下门功夫。',2,1)
                end 
            elseif G.call('get_magicexp',95) == 0    then 
                if G.call('get_point',4) >= 45 then 
                    G.call("talk",'',110,'   "我现在传你一门【劈空掌法】，威力更是不及先前的武功，但是其中妙处你日后便知。',2,1)
                    G.call('add_point',22,10)
                    G.call('learnmagic',95)
                    G.call('set_magicexp',95,352)
                else
                    G.call("talk",'',110,'   你的功力修为尚浅，至少你的等级提升到四十五级我才能考虑传授你下门功夫。',2,1)
                end 
            else    
                G.call("talk",'',110,'   我已经没什么好教你的了。最近时间我传你的功夫已经远远不及之前你所学的厉害，我之所以本末倒置要先教你艰难的，',2,1)
                G.call("talk",'',110,'   乃是为了磨你的性子，以你的资质简单功夫一学便会，日后不免滋生骄傲懒惰心态，此乃学武的大忌！',2,1)
            end 
            G.call('all_over')  
        elseif int_选项 == 2 then
            G.call("talk",'',110,'   好！让我看看你的在【般若堂】练得功夫如何程度了。',2,1) 
            G.call('all_over')
            G.call('call_battle',1,10,1,G.call('get_love',110)*0.01,110,0,0,0,0,0)
            local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 0, 110, 0, 0, 0, 0, 1, _root.Js[110].m_nFavour*0.01, 0);
            if o_battle_结果  == 1 then
                G.call('add_love',110,2)
                G.call("talk",'',110,'   你能胜过我倒也在预料之中，只是你的身形步法仍有不少欠缺，下次我再来好好指点你。',2,1) 
            else 
                G.call('add_love',110,-2)
                G.call("talk",'',110,'   每次跟你切磋时，我都在逐步的提升功力，你现在打输了，我只好降些功力再重新陪你练过。',2,1) 
            end  
            G.call('all_over')
            G.call('add_time',4)
            G.call('turn_map') 
        elseif int_选项 == 3 then 
            if G.QueryName(0x10030001)[tostring(9)] == '般若堂首座' then
                G.call("talk",'',110,'   难道你已经忘记了？老衲已经不是般若堂首座，现任的首座是你啊！',2,1) 
            else
                G.call("talk",'',110,'   今天你若能胜过我，这般若堂首座倒是不做也罢。',2,1) 
                G.call('all_over')
                G.call('call_battle',1,10,1,100,110,0,0,0,0,0)
                local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 0, 110, 0, 0, 0, 0, 1, 1, 0);
                if o_battle_结果  == 1 then
                    G.call("talk",'',110,'   '..G.QueryName(0x10030001)[tostring(2)]..'你的武功确实比为师强的多了，我也老了，是到了该退位让贤的时候。这【般若堂首座】我做了二十年，今天便正式传给你了。我还有一门【金刚不坏神功】现在也一并传授给你..',2,1) 
                    G.call('learnmagic',137)
                    G.call('add_point',14,170)
                    G.QueryName(0x10030001)[tostring(9)] = '般若堂首座'
                    G.call('set_note','成为少林寺【般若堂首座】！')
                elseif o_battle_结果  == 2 then
                    G.call("talk",'',110,'   到了你能打倒我的那一天，你便能如愿成为【般若堂首座】了。',2,1) 
                end 
                G.call('all_over')
                G.call('add_hour',1)
                G.call('turn_map') 
            end   
            G.call('all_over') 
        elseif int_选项 == 4 then
            G.call('all_over')
        end 
    end          
end   
t['初入少林-空闻'] = function()
    G.call("talk",'',176,'   你有什么事情吗？',2,1)
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,请师父传授武功","2,向师父请教武功","3,挑战达摩院首座",'4,没什么事情，向师父请安'},0) 
        if int_选项 == 1 then
            if G.call('get_magicexp',109) == 0    then 
                if G.call('get_point',11) > 5 then 
                    G.call("talk",'',176,'   看来你在练武的同时，并未忽略【佛法】的修行，很好，我现在传授你一门新的掌法——【须弥山掌】。',2,1) 
                    G.call('learnmagic',109)
                else
                    G.call("talk",'',176,'   不要总是沉迷在武功上，你的【佛法】修为一直都没有长进。少林绝技如没有慈悲佛法去化解练功所带来的戾气，只会功夫越深，对自己损伤越大。',2,1) 
                end     
            elseif  G.call('get_magicexp',115) == 0  then 
                if G.call('get_magicexp',80) >=  502 then 
                    G.call("talk",'',176,'   【大力金刚指】指法与【大力金刚掌】本是一祖之源，起初运劲技法相似，但是一为指法一为掌法，你现在有了【大力金刚掌】的基础，要练好这门指法却也不难。',2,1) 
                    G.call('learnmagic',115)
                    G.call('set_magicexp',115,140) 
                else
                    G.call("talk",'',176,'   我之前传授你的【大力金刚掌】练得如何？学武之人最忌贪多，你先把那门掌法练好了再说吧。',2,1) 
                end         
            elseif  G.call('get_magicexp',123) == 0  then 
                if G.call('get_point',11) > 9 then 
                    G.call('learnmagic',123)
                    G.call("talk",'',176,'   你的【佛法】修为已经到了一定的境界，正适合修习这门【拈花指】！',2,1) 
                else
                    G.call("talk",'',176,'   想要学得【拈花指】，须得心怀慈悲仁善之心，佛法精湛者方能驾驭这门看似轻柔祥和实则内含凌厉杀气的指法。',2,1) 
                end 
            else
                G.call("talk",'',176,'   你已掌握我生平所学，我没什么可教授的了。记住，学少林武功是为强身健体护法伏魔，你若是用来为非作歹逞强凌弱，每一个少林门人都不会放过你！',2,1)
            end 
            G.call('all_over')
        elseif int_选项 == 2 then
            G.call("talk",'',176,'   好！让我看看你的少林功夫最近练得如何了。',2,1) 
            G.call('all_over')
            G.call('call_battle',1,10,1,G.call('get_love',176)*0.1,176,0,0,0,0,0)
            local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 0, 176, 0, 0, 0, 0, 1, _root.Js[176].m_nFavour*0.01, 0);
            if o_battle_结果  == 1 then
                G.call('add_love',176,2)
                if G.call('get_love',176) >= 50 and G.call('get_magicexp',122) == 0 then  
                    G.call("talk",'',176,'   这一战虽说是你胜了，但只是我的一半功力，你切不可骄傲自满。作为奖励，我把【龙爪功】这门指法传授给你。',2,1) 
                    G.call('learnmagic',122)
                elseif G.call('get_love',176) >= 70 and G.call('get_magicexp',128) == 0 then  
                    G.call("talk",'',176,'   少林绝技有的偏重于发劲，有的偏重于速度，而我现在传你的【无相劫指】则是速度和劲力的完美结合！',2,1) 
                    G.call('learnmagic',128)
                else
                    G.call("talk",'',176,'   嗯，有进步！',2,1)     
                end     
            else 
                G.call('add_love',176,-2)
                G.call("talk",'',176,'   真是枉费我栽培你多时的苦心，你的功夫还是认真苦练几月再说吧！',2,1) 
            end  
            G.call('all_over')
            G.call('add_time',4)
            G.call('turn_map') 
        elseif int_选项 == 3 then 
            if G.QueryName(0x10030001)[tostring(9)] == '达摩院首座' then
                G.call("talk",'',176,'   难道你已经忘记了？老衲已经不是达摩院首座，现任的首座是你啊。',2,1) 
            else
                G.call("talk",'',176,'   这达摩院首座一职非得本寺武学精湛者方可胜任，你年少强出头，岂不是要以卵击石？今天你如能胜过我，这首座一职就交你来当了。',2,1) 
                G.call('all_over')
                G.call('call_battle',1,10,1,120,176,0,0,0,0,0)
                local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 0, 176, 0, 0, 0, 0, 1, 1.2, 0);
                if o_battle_结果  == 1 then
                    G.call("talk",'',176,'   你真是近世罕见的少年怪杰，老衲当年练到你这般功夫用了五十二年，如今看来不过是虚耗时日罢了，这【达摩院首座】我是没脸再做下去了。',2,1) 
                    G.call("talk",'',176,'   老衲这门【如来千叶手】的功夫也没必要跟进棺材里，也一并传了给你吧。',2,1) 
                    G.call('learnmagic',97)
                    G.call('add_point',14,170)
                    G.QueryName(0x10030001)[tostring(9)] = '达摩院首座'
                    G.call('set_note','成为少林寺【达摩院首座】！')
                elseif o_battle_结果  == 2 then
                    G.call("talk",'',176,'   这【达摩院首座】岂是练了一两天少林武功就能当得上的。',2,1) 
                end 
                G.call('all_over')
                G.call('add_hour',1)
                G.call('turn_map') 
            end   
            G.call('all_over') 
        elseif int_选项 == 4 then
            G.call('all_over')
        end    
    end          
end    
t['初入少林-方证'] = function()
    G.call("talk",'',177,'   你有什么事情吗？',2,1)
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,请师父传授武功","2,向师父请教武功","3,挑战般若堂首座",'4,【闭关】十天','5,没什么事情，向师父请安'},0) 
        if int_选项 == 1 then
            if G.call('get_magicexp',36) == 0    then 
                if G.call('get_point',4) >= 30 then
                    G.call('add_point',24,10)
                    G.call('learnmagic',36)
                    G.call("talk",'',177,'   我今天传你一门少林剑术绝技，叫做【达摩剑法】，相传为达摩老祖所创，乃是七十二门绝技中赫赫有名的剑术！',2,1) 
                else
                    G.call("talk",'',177,'   你的功力修为尚浅，至少你的等级提升到三十级我才能考虑传授你下门功夫。',2,1) 
                end 
            elseif  G.call('get_magicexp',18) == 0    then 
                if G.call('get_point',4) >= 35 then
                    G.call('add_point',25,10)
                    G.call('learnmagic',18)
                    G.call("talk",'',177,'   七十二门绝技中由门刀法叫做【燃木刀法】，是说快刀法在木条旁连劈四十九下，所发的劲力能使木条燃着！我现在传授给你，看你究竟何时能练到这般境界。',2,1) 
                else
                    G.call("talk",'',177,'   你的功力修为尚浅，至少你的等级提升到三十五级我才能考虑传授你下门功夫。',2,1) 
                end  
            elseif  G.call('get_magicexp',31) == 0    then 
                if G.call('get_point',4) >= 40 then
                    G.call('add_point',26,10)
                    G.call('learnmagic',31)
                    G.call("talk",'',177,'   少林虽设棍僧房，但是关于棍术的武功并不是很多，但偏就这寥寥数套棍法，却也成就了“十三棍僧救唐王”的佳话。我现在传你【韦陀杖法】，乃是诸多棍法中的翘楚！',2,1) 
                else
                    G.call("talk",'',177,'   你的功力修为尚浅，至少你的等级提升到四十级我才能考虑传授你下门功夫。',2,1) 
                end  
            else
                G.call("talk",'',177,'   你对武学一道的领悟能力已经远远超过了老衲的预想，七十二绝技中器械部分的精华武功都已传授给你，你若勤加练习，他日必成大器！',2,1) 
            end 
            G.call('all_over')            
        elseif int_选项 == 2 then
            G.call("talk",'',177,'   闲来无事，老衲正要检验你现在的武功水平如何。',2,1) 
            G.call('all_over')
            G.call('call_battle',1,10,1,G.call('get_love',177)*0.03,177,0,0,0,0,0)
            local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 0, 177, 0, 0, 0, 0, 1, _root.Js[177].m_nFavour*0.003, 0);
            if o_battle_结果  == 1 then
                G.call('add_love',177,3)
                G.call("talk",'',177,'   你能胜过我倒也在预料之中，只是你的身形步法仍有不少欠缺，下次我再来好好指点你。',2,1) 
            else 
                G.call('add_love',177,-3)
                G.call("talk",'',177,'   你若能战胜老衲当前功力，下次比试老衲就会再逐步提升；你现在打输了，老衲只好降些功力再重新陪你练过。',2,1) 
            end  
            G.call('all_over')
            G.call('add_time',4)
            G.call('turn_map') 
        elseif int_选项 == 3 then 
            if G.QueryName(0x10030001)[tostring(9)] == '南少林武僧教头' then
                G.call("talk",'',177,'   老衲已经承认你是【南少林第一武僧】，论功夫，老衲是已经没什么可跟你较量的了。',2,1) 
            else
                G.call("talk",'',177,'   这【南少林】住持可不是说当便能当上的，就算你武功胜过了我，其他各处也未必能服众，况且你还是俗家弟子，怎能做主持呢？',2,1) 
                G.call("talk",'',177,'   怎能做主持呢？这样吧，你若胜我，老衲承认你便是【南少林第一武僧】并许你做【南少林武僧教头】！',2,1) 
                G.call('all_over')
                G.call('call_battle',1,10,1,120,177,0,0,0,0,0)
                local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 0, 177, 0, 0, 0, 0, 1, 1.2, 0);
                if o_battle_结果  == 1 then
                    G.call("talk",'',177,'   你既然胜过了老衲，老衲便许你为【南少林武僧教头】，得【南少林第一武僧】称号。不过，咱这南少林人丁不旺，现在只有咱徒孙二人，你这个教头可算是个挂名的闲差了，呵呵呵...',2,1) 
                    G.call('add_point',14,200)
                    G.QueryName(0x10030001)[tostring(9)] = '南少林武僧教头'
                    G.call('set_CH','南少林第一武僧')
                    G.call('set_note','成为【南少林武僧教头】,得【南少林第一武僧】称号！')
                elseif o_battle_结果  == 2 then
                    G.call("talk",'',177,'   老衲教出的徒弟不应当只有这种水平，你下次可是要尽全力！',2,1) 
                end 
                G.call('all_over')
                G.call('add_hour',1)
                G.call('turn_map') 
            end   
            G.call('all_over') 
        elseif int_选项 == 4 then  
            G.call('all_over')
            local JY = 0
            if G.call('get_point',4) < 50 then
                local n = G.call('get_point',4)
                JY = math.floor(15 *n* (n+1)*   G.QueryName(0x10030001)[tostring(200)]/100 * 0.3) 
            else
                JY = math.floor(15 *50* 51*   G.QueryName(0x10030001)[tostring(200)]/100* 0.85)
            end  
            G.call('add_point',3,JY)
            --G.call('dark')
            G.call('add_day',10)
            G.call('all_over') 
            G.call('turn_map') 
        elseif int_选项 == 5 then
            G.call('all_over')
        end     
    end          
end 
t['初入少林-出南少林'] = function()
    G.call("talk",'',177,'   这么快就要到年底了，你也该及早赶回【少林寺】参加【铜人阵】的测试了，且不可叫他们小看了咱们南少林的功夫！',2,1) 
    G.call("talk",'',177,'   咱们师徒一场，今日临别送你几样东西：《少林七十二绝艺手抄本》上面功夫你已大多学会，就留做纪念吧；这颗【大还丹】可增进你的功力；这几颗【镇心理气丸】能助你疗伤。前途莫测，你自己要多多珍重...',2,1) 
    if G.call('get_item',115) == 0 then 
        G.call('add_item',115,1)
    end 
    if G.call('get_item',224) == 0 then 
        G.call('add_item',224,1)
    end 
    if G.call('get_item',240) == 0 then 
        G.call('add_item',240,1)
    end 
    G.call('add_day',15)
    G.call('dark')
    G.call('all_over')
    G.call('set_alltime',1,12,15,1,1)
    G.call('goto_map',9)
end  
t['初入少林-出师'] = function()
    local int_mo = 270
    G.call('dark')
    G.call('all_over')
    G.call('goto_map',9)
    G.call("talk",'',175,'   '..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..'你到少林学艺已有一年之期，现在要通过【铜人阵】来检验你的学艺情况，如果你能够通过，将获得少林至宝《易筋经》！',2,1) 
    G.call('地图_进入地图','铜人阵',15,39) 
    G.call('add_hour',1)
    G.call('call_battle',1,10,1,60,225,0,0,0,0,0)
    local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 0, 225, 0, 0, 0, 0, 1, 0.6, 0);
    if o_battle_结果  == 1 then
        G.call('地图_进入地图','铜人阵',15,39) 
        G.call('add_hour',1)
        G.call('call_battle',1,10,1,80,int_mo,int_mo+1,int_mo+2,0,0,0)
        local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 225, 225, 225, 0, 0, 0, 1, 0.8, 0);
        if o_battle_结果  == 1 then 
            G.call('地图_进入地图','铜人阵',15,39) 
            G.call('add_hour',1)
            G.call('call_battle',1,10,1,80,int_mo,int_mo+1,int_mo+2,int_mo+3,int_mo+4,int_mo+5)
            local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 225, 225, 225, 225, 225, 0, 1, 0.9, 0);
            if o_battle_结果  == 1 then
                G.call('dark') 
                G.call('goto_map',9) 
                G.call("talk",'',175,'   果然是英雄出少年！老衲要达到你这般功力少说也得四十五岁以后的事了，想不到真是想不到。想必你和这《易筋经》注定有缘，老衲就代表达摩祖师将他郑重传授给你了.',2,1) 
                if G.call('get_item',94) == 0 then 
                    G.call('add_item',94,1)
                end 
                G.call('rest')
            elseif o_battle_结果 == 2 then  
                G.call("talk",'',175,'   你也不必灰心，自古以来，少林僧众能过这【铜人阵】者甚是寥寥，如你这般年轻便过阵的，至今亦不过十人。想是那《易筋经》跟你无缘，你也不必强求了。',2,1) 
            end 
        elseif o_battle_结果 == 2 then
            G.call("talk",'',175,'   你也不必灰心，自古以来，少林僧众能过这【铜人阵】者甚是寥寥，如你这般年轻便过阵的，至今亦不过十人。想是那《易筋经》跟你无缘，你也不必强求了。',2,1) 
        end     
    elseif o_battle_结果 == 2 then
        G.call("talk",'',175,'   你也不必灰心，自古以来，少林僧众能过这【铜人阵】者甚是寥寥，如你这般年轻便过阵的，至今亦不过十人。想是那《易筋经》跟你无缘，你也不必强求了。',2,1) 
    end  
    G.call("talk",'',175,'   '..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..'如今你在少林寺的修行已满，从明天起你可以下山去了，开始你的江湖游历。你除了要把少林功夫扬名天下，',2,1) 
    G.call("talk",'',175,'   冥冥之中你还肩负着一项更重要的使命关系到全武林的安危。你要好自为之。',2,1) 
    G.call('出师-增加被动')
    G.call('all_over') 
    G.call('set_alltime',2,1,1,4,1)
    G.QueryName(0x1017000e).进度列表[2].完成 = 1
    G.call('初入聚贤庄')   

end             
 
