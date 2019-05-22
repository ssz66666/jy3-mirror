--[[4009

]]
local G = require "gf"
local L = {}
local t = G.api
local JY = 0
t['初入武当'] = function()
    G.call('dark')
    G.call('goto_map',7)
    for i = 16,20 do 
        if G.call('get_point',i) > 50 then
            G.call('add_love',159,5)
        end  
    end 
    if G.call('get_point',15) < 20 then
        G.call('add_love',159,-20)
    end
    local a = '' 
    if  G.call('get_love',159) > 60 then 
        a = "不错，确实块良质美材。此子日后必成大器！岱岩，你识人的能力也越来越有些造化了，难得你能在茫茫人海中慧眼识英，不错。"
        G.call('add_love',159,10)
    elseif G.call('get_love',159) < 40 then 
        a = "岱岩，我看这孩子眼中深藏戾气，并非十分良善之辈，他若入我武当可得花精力把他的戾气消磨掉，不然会后患无穷。"
        G.call('add_love',159,-10)
    elseif G.call('get_love',159) < 60 and G.call('get_love',159) >= 40 then 
        a = "日久方能见人心，此人目前未加雕琢看不出什么光华，是否前途无量也未可知啊，咱们可不要高兴得太早。"
    end    
    G.call("talk",'',162,'   禀告师尊，弟子不负所托，终于寻到一名人选，此人名叫'..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)],2,1) 
    G.call("talk",'',162,'   弟子见他势单力孤，却敢直斥群寇，大有我辈侠义之风，此人若能入我武当，我武当一脉日后定当会发扬光大！',2,1)
    G.call("talk",'',159,'   '..a,2,1) 
    G.call("talk",'',159,'   '..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..',老道多年前早已不收徒弟，你入我武当可拜在【俞岱岩】门下，另外我也特许你的师叔【殷梨亭】也传些器械功夫给你。',2,1) 
    G.call("talk",'',159,'   你在武当的修习时期只有【一年】，一年后需得下山磨练，这是我武当历来的规矩。',2,1) 
    G.call("talk",'',159,'   我武当一派素以【侠义】为重，因此你大师伯会时常给你提供一些磨练的机会——惩恶除奸，以提升你的【侠义】值。若是要学到我派上乘武功，你的【侠义值】为第一参考！',2,1) 
    G.call("talk",'',160,'   恩师年事已高，他老人家平时多在【闭关室】闭关修炼，暂把武当上下交给我来打理。你若想行【侠义】之事，可来【大殿】找我。',2,1) 
    G.call("talk",'',161,'   呵呵，我是你师叔，武功不怎么样，所以不能教人以免误人子弟。但是我炼丹制药倒是蛮有一套的，你若是有闲暇时间可来【丹房】找我，我那里许多的灵丹妙药还发愁送谁好呢。',2,1) 
    G.call("talk",'',0,'   多谢太师父及各位师叔伯的指点，弟子他日一定会把武当派发扬光大。',0,0) 
    G.QueryName(0x10030001)[tostring(9)] = '看门弟子'
    G.QueryName(0x10030001)[tostring(11)] = 1
    G.QueryName(0x10030001)[tostring(107)] = 1
    G.QueryName(0x10030001)[tostring(12)] = '俞岱岩'
    G.QueryName(0x10030001)[tostring(8)] = 1
    G.call('all_over')
    G.call('dark')
    G.call('goto_map',5)
    G.call("talk",'',162,'   '..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..',今天起你就是我门下弟子了。未入武当之前，大家江湖儿女可不必拘泥辈分，嘻嘻哈哈均无不可，现在你身为武当门人则须得尊师重教，行事须以侠义为重，切不可丢了咱们武当的颜面。',2,1)
    G.call("talk",'',161,'   师兄认真起来还真是有一派宗师的气度。这位小师侄第一天入武当，你还要给下马威不成？小师侄，嘿，其实我也比你大不了几岁。',2,1)
    G.call("talk",'',161,'   我和师兄分别传你器械和拳掌的功夫，但是咱俩可没有【师徒】之名。在这一年里也不知道你能学到多少，还得看你的造化了。',2,1)
    G.call("talk",'',164,'   恭喜师叔收了名得意弟子！在下宋青书，是你宋大师伯之子，也就是你师兄。以后咱们可以一同切磋武功了。',2,1)
    G.call("talk",'',162,'   '..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..',我今天先传你武当的入门拳法——武当长拳，这套拳法为我武当拳术的入门根基，你得下工夫把他练好。',2,1)
    G.call("talk",'',162,'   另外，我武当轻功冠绝天下，你我师徒一场总算有缘，我赠你本《梯云纵》的秘籍，待你有一定功底根基时便可修习。',2,1)
    if G.call('get_item',127) == 0 then 
        G.call('add_item',127,1)
    end       
    if G.call('get_item',90) == 0 then 
        G.call('add_item',90,1)
    end 
    if G.call('get_item',2) == 0 then 
        G.call('add_item',2,1)
    end 
    if G.call('get_item',31) == 0 then 
        G.call('add_item',31,1)
    end 
    
    G.call('set_note','拜入武当门下，一年之后再重出江湖')
    G.call('learnmagic',75)
    G.call('all_over')
end 
t['初入武当-俞岱岩'] = function()
    G.call("talk",'',162,'   '..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..',你找我有什么事情吗？',2,1)
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,请师父传授功夫","2,与师父切磋武功","3,没什么事情，向师父请安而已"},0) 
        if int_选项 == 1 then 
            if G.call('get_magic',112) < 1 then 
                if G.call('get_magicexp',75) >= 192 then 
                    G.call("talk",'',162,'   你的【武当长拳】已经略具一定火候了，现在我传授你一套气势刚猛的掌法【震山铁掌】，这套掌法刚猛稳健，用来锻炼下盘的稳健和上肢的力道最是适合不过。今天起你就是我的【入室弟子】了。',2,1) 
                    G.QueryName(0x10030001)[tostring(9)] = '入室弟子'
                    G.call('learnmagic',112)
                    G.call('add_point',14,20) 
                else    
                    G.call("talk",'',162,'   【武当长拳】为武当武功之纲领，若是根基扎不牢固，就是继续传你武功，你也是不得要领，无法领会到奥妙之处，岂不糟蹋了我恩师创功的心血！',2,1) 
                end
            elseif G.call('get_magic',93) < 1 then 
                if G.call('get_point',11) > 3 then 
                    G.call("talk",'',162,'   听大师哥说你最近做了不少好事呀，现在一般的盗匪流寇都难不到你了，不错。作为奖赏，我今天传你一门奇特的掌法——【绵掌】。',2,1)  
                    G.call("talk",'',162,'   此掌法出掌轻柔，若有若无，让对手难以觉察你劲力所往。',2,1) 
                    G.call('learnmagic',93)
                else 
                    G.call("talk",'',162,'   你入武当之初，恩师曾经教诲，要学本派高深武功须得心怀【侠义】，你先去找大师哥完成一些除暴安良的任务再来找我吧。',2,1) 
                end 
            else
                G.call("talk",'',162,'   武当拳掌类的精华武功我已经传授给你了，你可以去找【殷梨亭】师弟学习武当的器械功夫，你殷师叔的剑术在武当可以堪称一绝。',2,1)         
            end 
            G.call('all_over')
        elseif int_选项 == 2 then 
            G.call("talk",'',162,'   我正好要检验你最近的功夫练得怎么样了，来吧尽全力出招！',2,1) 
            G.call('all_over')
            G.call('call_battle',1,10,1,G.call('get_love',162)*0.3,162,0,0,0,0,0)
            local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 0, 162, 0, 0, 0, 0, 1, _root.Js[38].m_nFavour*0.03, 0);
            if o_battle_结果  == 1 then
                G.call('add_love',162,3)
                G.call("talk",'',162,'   咱武当的弟子真是青出于蓝而胜于蓝那，看来下次跟你交手我得认真些了。',2,1) 
            else 
                G.call('add_love',162,-3)
                G.call("talk",'',162,'   是不是最近偷懒没有用心练功？我武当派虽不限制个性发展，但毕竟武学之道是本，其余为末。你这种水平一年后闯荡江湖怎么代表我们武当啊！',2,1) 
            end  
            G.call('all_over')
            G.call('add_time',4)
            G.call('turn_map') 
        elseif  int_选项 == 3 then 
            G.call('all_over')
        end
    end        
end  
t['初入武当-殷梨亭'] = function()
    G.call("talk",'',163,'   小师侄今天这么清闲？来找我有什么事？',2,1)
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,请师叔传授功夫","2,与师叔切磋武功","3,没什么事情，向师叔请安而已"},0) 
        if int_选项 == 1 then 
            if G.call('get_magicexp',52) == 0 then 
                if G.call('get_magicexp',43) >= 130 then 
                    G.call("talk",'',163,'   按理说以常人的功力，需得五年之后才能练习这【绕指柔剑】，不过你资质不俗又肯下苦功，现在传授给你也是额外破例了。另有一点，此功配合【紫薇软剑】方显妙用之处',2,1)
                    G.call('learnmagic',52)
                else   
                    G.call("talk",'',163,'   你的【基本剑术】根基太差，如不练到七成火候以上，练其他剑术根本就是没有可能',2,1) 
                end     
            elseif G.call('get_magicexp',53) == 0 then 
                if G.call('get_point',11) >= 8 then 
                    G.call("talk",'',163,'   我之前教你功夫用来对付小小毛贼还勉强有余，但是日后遇到高手，可就没什么用了。我今天传你这套【神门十三剑】，那是恩师所创，专攻手腕神门穴,故而得名，可算是武当一项绝学。',2,1)
                    G.call('learnmagic',53)
                    G.call('add_point',25,10)
                else   
                    G.call("talk",'',163,'   我教会你的功夫要勤加练习。功夫是练得越精越好，而不是学得越多越好',2,1) 

                end 
            elseif  G.call('get_magicexp',21) == 0 then 
                if G.call('get_magicexp',53) >= 600 and G.call('get_magicexp',52) >= 520  then 
                    G.call("talk",'',163,'   我还有一套绝学，叫【玄虚刀法】。本应该早些传给你，只是现下传给你会更加合适。你现在有了【绕指柔剑】和【神门十三剑】九成功力的根基，学成这套刀法就会轻而易举！',2,1)
                    G.call('learnmagic',21)
                else   
                    G.call("talk",'',163,'   近没去用新学的招式去行侠仗义吗？可惜啊可惜，实指望你学我招式，能代我多行侠义之举。等你杀够几十个恶霸强盗，再来找我！',2,1) 

                end  
            else
                G.call("talk",'',163,'   武当器械类的精华武功我已经传授给你了。如果想学上乘武功，只有请恩师亲自来指点你了',2,1)       
            
            
            end 
            G.call('all_over')
        elseif int_选项 == 2 then 
            G.call("talk",'',163,'   我正担心你会学得快，忘得也快。正好让我来看看你的水平如何了！',2,1) 
            G.call('all_over')
            G.call('call_battle',1,10,1,G.call('get_love',163)*0.3,163,0,0,0,0,0)
            local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 0, 161, 0, 0, 0, 0, 1, _root.Js[38].m_nFavour*0.03, 0);
            if o_battle_结果  == 1 then
                G.call('add_love',163,3)
                G.call("talk",'',163,'   你这短时间看来没有枉费我和你师父的细心栽培啊，不错，好样的。',2,1) 
            else 
                G.call('add_love',163,-3)
                G.call("talk",'',163,'   你的功夫可是越来越退步了，要是你师父知道了可要言辞训斥你了，你得好好反省一下。',2,1) 
            end  
            G.call('all_over')
            G.call('add_time',4)
            G.call('turn_map') 
        elseif int_选项 == 3 then  
            G.call('all_over')   
        end
    end            
end 
t['初入武当-宋青书'] = function()
    G.call("talk",'',164,'   '..G.QueryName(0x10030001)[tostring(1)]..'师弟，来找我切磋武功吗？',2,1)
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,来找宋师兄随便聊聊","2,与师兄切磋武功","3,没什么事情，向师兄请安而已"},0) 
        if int_选项 == 1 then 
            local a1 = '【峨嵋派】的周芷若周姑娘是我这辈子见过得最令我心动的女孩了'
            local a2 = '我五师叔当年因为不肯吐露金毛狮王谢逊的下落，以至被各大派逼迫，在大殿外自绝经脉而亡。我武当建派以来从未被人如此欺压过！'
            local a3 = '太师父张真人自幼学艺于少林，无意间在经书内学得神奇内功，后来离开少林自创武当一派。若论武功之高，当今天下几乎无可匹敌。'
            local a4 = '我父亲所保管的一份《武当九阳功》秘籍，其实是脱胎于少林的《九阳真经》。当世与《九阳真经》齐名的，还有一本《九阴真经》。'
            local a5 = '太师父越到晚年，武功反而越盛。简直到了神而明之随心所欲的境地了'
            local a6 = '现在中原名门正派以武当少林为首，丐帮、五岳剑派为辅，其他诸如峨嵋、昆仑、崆峒之流，有的立派虽然早于武当，但是论威名论武功，简直连提鞋也不配。'
            local a7 = '父亲常说，要谦虚待人，以德服人。可是我总是遇见一些冥顽不灵的家伙，说不得只好收手教训他们一下咯。'
            local a8 = '张五叔原来有个孩子叫张无忌，他后来中了歹毒的【玄冥神掌】，若不是太师父每日续以真气活命，他早就死了。后来有人带他去了【蝴蝶谷】去医治，不知现在如何了。'
            local a9 = '殷六叔的【神门十三剑】和【玄虚刀法】已经练到了登峰造极的境地，就连太师父也颇为赞许。'
            local a10 = '俞三叔的【绵掌】行而不断，聚而不散，实在是达到了这门功夫的至高境界。'
            local b = math.random(10)
            local a = {a1,a2,a3,a4,a5,a6,a7,a8,a9,a10}
            G.call("talk",'',164,'   '..a[b],2,1) 
            G.call('all_over')
        elseif int_选项 == 2 then 
            G.call("talk",'',164,'   我正担心你会学得快，忘得也快。正好让我来看看你的水平如何了！',2,1) 
            G.call('all_over')
            G.call('call_battle',1,10,1,G.call('get_love',164)*0.3,164,0,0,0,0,0)
            local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 0, 164, 0, 0, 0, 0, 1, _root.Js[38].m_nFavour*0.03, 0);
            if o_battle_结果  == 1 then
                G.call('add_love',164,-3)
                G.call("talk",'',164,'   想不到啊，连爹都不曾传我这些招式，你却学得倒快，看来俞师叔和殷师叔真是没少在你身上下工夫。',2,1) 
            else 
                G.call('add_love',164,3)
                G.call("talk",'',164,'   哈哈 ，师弟，你还是太嫩了，我好歹也是武当第三代的首席大弟子，怎么可能会输给你呢。',2,1) 
            end  
            G.call('all_over')
            G.call('add_time',4)
            G.call('turn_map') 
        elseif int_选项 == 3  then 
            G.call('all_over')  
        end 
    end
end
t['初入武当-宋远桥'] = function()
    local a1 = '【恶虎寨】的盗匪'
    local a2 = '【五毒教】的教众'
    local a3 = '【日月教】的教众'
    local a4 = '【嵩山派】的作恶门人'
    local a5 = '【丐帮】的恶乞丐'
    local a6 = '【少林派】的叛徒'
    local b1 = '调戏妇女'
    local b2 = '仗势欺人'
    local b3 = '抢夺财物'
    local b4 = '伤人性命'
    local b5 = '勾结外族图谋造反'
    local n = math.random(6)
    local m = math.random(5)
    local a = {a1,a2,a3,a4,a5,a6,}
    local b = {b1,b2,b3,b4,b5}
    local num = math.random(6) 
    local lv = math.random(5)*0.1 + 0.5 
    local no = {230,240,238,232,237,239}
    G.call("talk",'',160,'   你来的真是时候，近来世道不平，我刚接到门人回报，说是有'..tostring(num)..'个'..a[n]..'在'..b[m]..'！事不宜迟，咱们武当得赶紧派人去惩治这帮恶人！',2,1) 
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{'1,我愿意前往教训那帮恶人','2,我功夫还没练成，下次我一定会去'},0) 
        if int_选项 == 1 then 
            if G.call('get_item',220) == 0 then 
                G.call('add_item',220,2)
                G.call("talk",'',160,'   好样的，不愧是我武当的弟子！这几颗【三黄宝腊丸】你随身带着，危急时刻或许能助你一臂之力。我在这里敬候佳音。',2,1) 
            else

                G.call("talk",'',160,'   好样的，不愧是我武当的弟子！我在这里敬候佳音。',2,1) 
            end 
            G.call('all_over') 
            local map = {19,20,21,22}
            local str = math.random(4)
            no[n] = (no[n] - 224) *6 + 265
            if num == 1 then  --随机野外战斗地图
                G.call('call_battle',1,map[str],1,lv * 10,no[n],0,0,0,0,0)
                --_root.War(map, 0, no[n], 0, 0, 0, 0, 1, lv, 1);
            elseif num == 2 then 
                G.call('call_battle',1,map[str],1,lv * 10,no[n],no[n]+1,0,0,0,0)
                --_root.War(map, no[n], no[n], 0, 0, 0, 0, 1, lv, 1); 
            elseif num == 3 then 
                G.call('call_battle',1,map[str],1,lv * 10,no[n],no[n]+1,no[n]+2,0,0,0)
                --_root.War(map, no[n], no[n], no[n], 0, 0, 0, 1, lv, 1);
            elseif num == 4 then 
                G.call('call_battle',1,map[str],1,lv * 10,no[n],no[n]+1,no[n]+2,no[n]+3,0,0)
                --_root.War(map, no[n], no[n], no[n],no[n], 0, 0, 1, lv, 1);
            elseif num == 5 then
                G.call('call_battle',1,map[str],1,lv * 10,no[n],no[n]+1,no[n]+2,no[n]+3,no[n]+4,0)
                --_root.War(map, no[n] no[n], no[n], no[n], no[n], 0, 1, lv, 1); 
            elseif num == 6 then
                G.call('call_battle',1,map[str],1,lv * 10,no[n],no[n]+1,no[n]+2,no[n]+3,no[n]+4,no[n]+5)
                --_root.War(map, no[n] no[n], no[n],no[n], no[n] ,no[n], 1, lv, 1);
            end  
          
            local o_battle_结果 = G.call('get_battle') 
            if o_battle_结果  == 1 then 
                G.call('add_point',107,math.floor(num*lv*50))
                G.call('add_point',14,math.floor(num*lv*10))
                G.call('add_point',15,2)
                if G.call('get_point',14) > 300 and G.call('get_point',15) > 80 and G.call('get_CH','武当八侠') == false then 
                    G.call('add_point',14,100)
                    G.call('set_CH','武当八侠')
                    G.call('set_note','获得称号【武当八侠】！')  
                    G.call("talk",'',160,'   呵呵，恭喜你啊贤侄。近来你为我武当在外面闯下了好大的名头，真是一代更胜一代啊。你不知外面人都怎么背后称呼你吗？管你称作【武当八侠】',2,1)
                    G.call("talk",'',160,'  呵呵，那意思是说你现在的江湖地位已经和我们几乎并驾齐驱了，了不起！',2,1) 
                elseif G.call('get_item',125) == 0 and G.call('get_point',15) > 80  then 
                    if G.call('get_point',11) > 5 then 
                        G.call("talk",'',160,'  这一趟辛苦你了！你最近的表现我已禀明恩师，恩师十分满意，特许我把《武当九阳功》秘籍传授给你，希望你日后能再接再厉多为武林苍生谋福。',2,1) 
                        G.call('add_item',125,1)
                    else
                        G.call("talk",'',160,'   不错，看来这一趟十分顺利，赶紧回去休养一下吧，日后说不定还会有更紧急的事情要你去办呢。',2,1)
                    end        
                else    
                    G.call("talk",'',160,'   不错，看来这一趟十分顺利，赶紧回去休养一下吧，日后说不定还会有更紧急的事情要你去办呢。',2,1)
                end
            elseif o_battle_结果  == 2 then  
               G.call("talk",'',160,'   你学艺不精，这场仗输的须怪不得旁人。我武当门下极少有出师不利的时候，你虽然刚入武当，但也不能给武当抹黑啊。我看你还是回去歇息吧，以后少出门了。',2,1)
            end  
            G.call('all_over')
            G.call('add_hour',6)
            G.call('turn_map') 
            
        elseif int_选项 == 2 then 
            G.call('all_over')
        end 
    end         

end  
t['初入武当-俞莲舟'] = function()
    G.call("talk",'',161,'   今天怎么有雅兴来陪师叔炼丹呀',2,1)
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,师叔这里有没有什么事情小侄可以帮忙的？","2,想与师叔切磋一下武功","3,顺便路过，给师叔打个招呼而已"},0) 
        if int_选项 == 1 then 
            G.call('all_over')  
            local n = math.random(3)
            local t = G.call('get_point',4)
            local a1 = '最近炼丹很需要用水，你去给我挑几天水吧。'
            local a2 = '炼丹烧火，自然柴禾最是要紧。我现在抽不开身，你去帮我砍几天柴吧'
            local a3 = '最近我又试炼出一种灵药，有没有兴趣帮我尝试一下，我也好观察下药效反应'
            local b1 = '1,【挑水】五天'
            local b2 = '2,【挑水】十天'
            local b3 = '3,【挑水】十五天'
            local c1 = '1,【砍柴】五天'
            local c2 = '2,【砍柴】十天'
            local c3 = '3,【砍柴】十五天'
            local d1 = '1,试吃【一号】新药'
            local d2 = '2,试吃【二号】新药'
            local d3 = '3,试吃【三号】新药'
            local e1 = '4,最近我还有别的安排，下次再帮你'
            local e2 = '4,最近我还有别的安排，下次再帮你'
            local e3 = '4,我已经很暴力，下次再帮师叔试药'
            local a = {a1,a2,a3}
            local e = {e1,e2,e3}
            local s1 = {b1,c1,d1}
            local s2 = {b2,c2,d2}
            local s3 = {b3,c3,d3}
            G.call("talk",'',161,'   '..a[n],2,1)
            local int_选项 = 0
            while int_选项 == 0 do
                int_选项 = G.call("menu",'',0,'',0,0,{s1[n],s2[n],s3[n],e[n]},0) 
                if int_选项 == 1 then
                    G.call('all_over')
                    --G.call('dark')
                    if n == 1 then 
                        G.call('add_point',103,10)
                        G.call('add_love',161,2)
                        G.call('add_day',5) 
                        if G.call('get_point',4) < 30 then
                            JY = math.floor(15 *t* (t+1)*  G.QueryName(0x10030001)[tostring(200)]/100 * 0.3) 
                        else
                            JY = math.floor(15 *30* 31*  G.QueryName(0x10030001)[tostring(200)]/100 * 0.3)
                        end 
                    elseif n == 2 then 
                        G.call('add_point',101,10)
                        G.call('add_love',161,2)
                        G.call('add_day',5) 
                        if G.call('get_point',4) < 30 then
                            JY = math.floor(15 *t* (t+1)*  G.QueryName(0x10030001)[tostring(200)]/100 * 0.3) 
                        else
                            JY = math.floor(15 *30* 31*  G.QueryName(0x10030001)[tostring(200)]/100 * 0.3)
                        end 
                    elseif n == 3 then 
                        G.call('all_over')
                        G.call('add_day',10) 
                        G.call('初入武当-吃药效果')
                    end   
                    G.call('add_point',3,JY)      
                    G.call('all_over') 
                elseif int_选项 == 2 then 
                    G.call('all_over')
                    G.call('add_day',10) 
                    --G.call('dark')
                    if n == 1 then 
                        G.call('add_point',103,20)
                        G.call('add_love',161,4)
                        if G.call('get_point',4) < 30 then
                            JY = math.floor(15 *t* (t+1)*  G.QueryName(0x10030001)[tostring(200)]/100 * 0.6) 
                        else
                            JY = math.floor(15 *30* 31*  G.QueryName(0x10030001)[tostring(200)]/100 * 0.6)
                        end 
                    elseif n == 2 then 
                        G.call('add_point',101,20)
                        G.call('add_love',161,4)
                        if G.call('get_point',4) < 30 then
                            JY = math.floor(15 *t* (t+1)*  G.QueryName(0x10030001)[tostring(200)]/100 * 0.6) 
                        else
                            JY = math.floor(15 *30* 31*  G.QueryName(0x10030001)[tostring(200)]/100 * 0.6)
                        end 
                    elseif n == 3 then 
                        G.call('all_over')
                        G.call('初入武当-吃药效果')
                    end  
                    G.call('add_point',3,JY)       
                    G.call('all_over')
                elseif int_选项 == 3 then 
                    G.call('all_over') 
                    --G.call('dark')
                    if n == 1 then 
                        G.call('add_point',103,30)
                        G.call('add_love',161,6)
                        G.call('add_day',15) 
                        if G.call('get_point',4) < 30 then
                            local n = G.call('get_point',4)
                            JY = math.floor(15 *t* (t+1)*  G.QueryName(0x10030001)[tostring(200)]/100 * 0.9) 
                        else
                            JY = math.floor(15 *30* 31*  G.QueryName(0x10030001)[tostring(200)]/100 * 0.9)
                        end 
                    elseif n == 2 then 
                        G.call('add_point',101,30)
                        G.call('add_love',161,6)
                        G.call('add_day',15) 
                        if G.call('get_point',4) < 30 then
                            local n = G.call('get_point',4)
                            JY = math.floor(15 *t* (t+1)*  G.QueryName(0x10030001)[tostring(200)]/100 * 0.9) 
                        else
                            JY = math.floor(15 *30* 31*  G.QueryName(0x10030001)[tostring(200)]/100 * 0.9)
                        end 
                    elseif n == 3 then 
                        G.call('all_over')
                        G.call('add_day',10) 
                        G.call('初入武当-吃药效果')
                    end  
                    G.call('add_point',3,JY)       
                    G.call('all_over')   
                elseif int_选项 == 4 then 
                    G.call('all_over')  
                end   
                if G.call('get_love',161) > 80 and int_选项 > 0 and int_选项 < 4 then 
                    local n = math.random(3)
                    if n == 1 then 
                        G.call('add_love',161,-10)
                        G.call("talk",'',161,'   这几日多亏了师侄帮忙，不然我这炉丹药真是不知道什么时候才能炼好了。我刚好练成一些灵丹妙药【三黄宝腊丸】和【天心解毒丹】，今天就给你一些吧。 ',2,1) 
                        if G.call('get_item',220) == 0   then 
                            G.call('add_item',220,3)
                        end
                        if G.call('get_item',221) == 0   then 
                            G.call('add_item',221,1)
                        end
                    elseif n == 2 then
                        if G.call('get_magicexp',117) == 0 then
                            G.call("talk",'',161,'   你帮了我这么多天的忙，我这做师叔的总不能亏待了你。我曾经自创了一门武学，叫【虎爪绝户手】，恩师当年品评，非到万不得已不得用此招伤人，就是说这门招数十分凌厉狠辣，我今天就传授给你吧。',2,1) 
                            G.call('add_love',161,-10)
                            G.call('learnmagic',117)
                        end  
                    else 
                        G.call("talk",'',161,'   你师叔我可是武当第二代弟子里面最差劲的，说不定已经被你超过了呢，咱们点到为止吧。 ',2,1) 
                    end 
                    G.call('all_over')     
                end              
            end     
            G.call('turn_map') 
        elseif  int_选项 == 2 then 
            G.call("talk",'',161,'   你师叔我可是武当第二代弟子里面最差劲的，说不定已经被你超过了呢，咱们点到为止吧。 ',2,1) 
            G.call('all_over')
            G.call('call_battle',1,10,1,G.call('get_love',161)*0.3,161,0,0,0,0,0)
            local o_battle_结果 = G.call('get_battle') --_root.War("演武场", 0, 161, 0, 0, 0, 0, 1, _root.Js[38].m_nFavour*0.003, 0);
            if o_battle_结果  == 1 then
                G.call('add_love',161,3)
                G.call("talk",'',161,'   我早就说过了嘛，我的武功在武当里最差了。不过今日你能胜我，说明你也很不简单那。',2,1) 
            else 
                G.call('add_love',161,-3)
                G.call("talk",'',161,'   这下惨了，要是被别人看到还以为我以大欺小呢。你比武输掉的事情可不要对外说啊。别人问起就说比划了几下没有胜负，这样咱俩面子上都好看些。',2,1) 
            end  
            G.call('all_over')
            G.call('add_hour',1)
            G.call('turn_map') 
        elseif  int_选项 == 3 then
            G.call('all_over')  
        end
    end    
end   
t['初入武当-吃药效果'] = function()
    local m = math.random(6)
    local str1 = '你感到热血沸腾,似乎生命提升了'
    local str2 = '你感到精力澎湃,似乎内力提升了'
    local str3 = '你开始上吐下泻,似乎生命减低了'
    local str4 = '感到头晕眼花,似乎内力减低了'
    local str5 = '味道不错,似乎隐约学到烹饪的技巧'
    local str6 = '口感还不错，就是没吃饱'
    local str = {str1,str2,str3,str4,str5,str6}
    G.call('notice1',str[m])
    if m == 1 then 
       G.call('add_point',45,200)
       G.call('set_point',44,G.call('get_point',217))
    elseif m == 2 then 
        G.call('add_point',47,400)
        G.call('set_point',46,G.call('get_point',218))
    elseif m == 3 then 
        G.call('add_point',45,-300)
        G.call('set_point',44,G.call('get_point',217))
    elseif m == 4 then
        G.call('add_point',47,-500)
        G.call('set_point',46,G.call('get_point',218))
    elseif m == 5 then  
        G.call('add_point',37,2)
    elseif m == 6 then 
    end 
end     
t['初入武当-张三丰'] = function()
    G.call("talk",'',159,'   我正在这里闭关参悟【太极功】，你若也想在这里修炼几天，正好老道可以指点指点你的武功。',2,1)
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,徒孙打算在这里闭关修炼【十天】","2,请太师父传授武当绝学","3,特地来给太师父请安"},0) 
        if int_选项 == 1 then 
            G.call("talk",'',159,'   年纪轻武功高，只能说是难能，还不见得如何可贵。如果你能一生向善除暴安良，那才是真的了不起。你的【侠义】之心越高，老道才越会欢喜，你的功力进境也会越快了。',2,1) 
            G.call('add_love',159,math.floor(G.call('get_point',11)*0.8))
            local n = G.call('get_point',4)
            if G.call('get_point',4) < 30 then
                JY = math.floor(15 *n* (n+1)*  G.QueryName(0x10030001)[tostring(200)]/100 * 0.3*G.call('get_point',11)) 
            else
                JY = math.floor(15 *20* 31*  G.QueryName(0x10030001)[tostring(200)]/100 * 0.3*G.call('get_point',11))
            end 
            --G.call('dark')
            G.call('add_day',10)
            G.call('add_point',3,JY)
            G.call('all_over')
            G.call('goto_map',5)
        elseif int_选项 == 2 then
            if   G.call('get_magic',151) == 0 then 
                if G.call('get_love',159) > 70 then 
                    G.call("talk",'',159,'   老道早年创了一门【纯阳无极功】的内功，虽说不是什么奥妙的神功心法，但是修炼之后也会受益无穷。我现在就传授给你。',2,1) 
                    G.call('learnmagic',151)
                else
                    G.call("talk",'',159,'   你最近的表现还不是很让我满意，我还不太放心把神功秘籍传授给你。',2,1)   
                end
            elseif  G.call('get_item',141) == 0  then 
                if G.call('get_love',159) > 90 and G.call('get_point',15) > 80  then 
                    G.call("talk",'',159,'   有鉴于你近来在武功的表现，老道我十分的满意。现有一本《太极劲》内功秘籍，是老道近年所创，现在赠送给你。',2,1) 
                    G.call("talk",'',159,'   你得我亲授神功，也算是我的【嫡传弟子】了，但你的师父仍是岱岩，以免乱了辈分。',2,1) 
                    G.call('add_point',14,50)
                    G.call('add_item',141,1)
                    G.QueryName(0x10030001)[tostring(9)] = '嫡传弟子' 
                else
                    G.call("talk",'',159,'   你最近的表现还不是很让我满意，我还不太放心把神功秘籍传授给你。',2,1)  
                end
            elseif G.call('get_magic',226) == 0 then 
                if G.call('get_love',159) >= 100  and G.call('get_point',15) >= 100 then 
                    G.call("talk",'',159,'   这套【倚天屠龙功】新近所悟，也一并传给你了吧。',2,1)  
                    G.call('learnmagic',226)
                else
                    G.call("talk",'',159,'   你最近的表现还不是很让我满意，我还不太放心把神功秘籍传授给你。',2,1)  
                end
            else
                G.call("talk",'',159,'   已经没有什么可以教给你的了！',2,1)      
            end 
           G.call('all_over')
        elseif int_选项 == 3 then 
            G.call('all_over')
        end
    end         
end  
t['初入武当-出师'] = function()
    G.call('地图_进入地图','武当正殿',18,39) 
    G.call("talk",'',159,'   '..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..'你在武当山修炼武功已经将近一年，现在是时候该下山磨练了。记住我武当派的宗旨——行侠仗义惩奸除恶！他日你若是作恶，我武当门下个个容你不得！',2,1)
    G.call("talk",'',0,'   徒孙一定谨记太师父教诲。请太师父和师父师叔伯多多保重，我这就下山去了。',0,0) 
    G.call('出师-增加被动')
    G.call('all_over')
    G.call('set_alltime',2,1,1,4,1) 
    G.QueryName(0x1017000e).进度列表[1].完成 = 1
    G.call('初入聚贤庄')
end    
