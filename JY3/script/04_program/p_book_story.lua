--[[4013

]]
local G = require "gf"
local L = {}
local t = G.api
local o_battle_结果 = 0
t['天书_飞狐外传'] = function()
    local o_book_story = G.QueryName(0x101c0001)
    local int_mo = (228-224)*6+265
    if not G.call('in_team',5) then 
        G.call("talk",'',38,'   本故事没有胡斐是无法进行的！',2,1)
        G.call('all_over')
        return
    end 
    if o_book_story.流程 == 0 then
        G.call('地图_进入地图','佛山',256,67)
        G.call("talk",'',5,'   这位仁兄，刚才听你们讲“剖腹验鹅”后来怎么样？ ',0,0) 
        G.call("talk0",'胖商人','   锺四嫂在北帝爷爷座前磕了几个响头，说道：“‘北帝爷爷，我孩子决不能偷人家的鹅。他今年还只四岁，刁嘴拗舌，说不清楚，在财主爷面前说什么吃我，吃我！',126,163)
        G.call("talk0",'胖商人','小妇人一家横遭不白，赃官受了贿，断事不明，只有请北帝爷爷伸冤！”说着提起刀来，一刀便将小三子的肚子剖了。',126,163)
        G.call("talk",'',5,'   竟有此事？那这位财主老爷是何人？',0,0) 
        G.call("talk0",'胖商人','就是城东凤大老爷！',126,163)
        G.call("talk",'',5,'   多谢兄台告知！北帝爷爷，今日要你作个见证，我胡斐若不杀凤天南父子给锺家满门报仇，我回来在你座前自刎。',0,0) 
        G.call('地图_进入地图','凤家大院',257,67)
        G.call("talk",'',228,'   什么人，竟敢闯凤家大院？ ',1,1) 
        G.call("talk",'',5,'   敢问凤老爷可在？',0,0) 
        G.call("talk",'',228,'   我家老爷可是你说见就见的，看你偷偷摸摸的，先抓起来再说！ ',1,1) 
        G.call('all_over')
        G.call('set_team',5,0,0,0)
        G.call('call_battle',1,10,4,100,int_mo,int_mo+1,int_mo+2,int_mo+3,int_mo+4,int_mo+5)
        o_battle_结果 = G.call('get_battle') 
        if o_battle_结果 == 1  then
            G.call("talk",'',392,'   何人大胆闯我凤府？ ',1,1) 
            G.call("talk",'',5,'   我姓拔，杀鸡拔毛的拔。在下的名字便叫作‘凤毛’。！',0,0) 
            G.call("talk",'',392,'   欺人太甚，咱们兵刃上分高下便了。 ',1,1) 
            G.call('all_over')
            G.call('set_team',5,0,0,0)
            G.call('call_battle',1,10,4,100,392,0,0,0,0,0)
            o_battle_结果 = G.call('get_battle') 
            if o_battle_结果 == 1   then
                G.call("talk",'',5,'   你这恶霸我要你不得好死！',0,0) 
                G.call("talk",'',393,'   且慢，自称拔凤毛的小贼，你敢不敢出外我们斗个三百回合？ ',1,1) 
                G.call("talk",'',5,'   有何不敢？！',0,0)
                G.call('地图_进入地图','野外',7,67)
                G.call('all_over')
                G.call('set_team',5,0,0,0)
                G.call('call_battle',1,7,4,100,393,0,0,0,0,0)
                G.call("talk",'',5,'   你功夫倒是不错，但是为何要阻止我杀【凤南天】？',0,0)
                G.call("talk",'',393,'   日后你就明白了，我还有事，有机会再见！ ',1,1)  
            else
                G.call("talk",'',392,'   这点本事还是回去多学几年吧! ',1,1) 
            end
            o_book_story.流程 = 1 
        else
            G.call("talk",'',228,'   这点本事也敢来撒野！',1,1) 
        end
    elseif o_book_story.流程 == 1 then
        local int_mo = (229-224)*6+265
        local int_mo1 = (230-224)*6+265
        G.call('地图_进入地图','苗人凤居',28,67)
        G.call("talk",'',102,'   【苗人凤】你已中了【天下第一奇毒】！现在你双目失明，几天后就会全身溃烂而死，就算你有通天彻地的武功，也是难逃一死！看热闹的小兄弟，咱们一起联手除掉这个瞎子吧。',1,1) 
        G.call("talk",'',5,'   我看你们就这点伎俩，',0,0) 
        G.call("talk",'',102,'   真是找死！',1,1)
        G.call('all_over')  
        G.call('set_team',5,0,0,0)
        G.call('call_battle',1,7,4,100,102,229,int_mo,int_mo+1,int_mo1,230)
        o_battle_结果 = G.call('get_battle') 
        if o_battle_结果 == 1 then
            G.call("talk",'',156,'   小兄弟，我中的毒，只有【药王庄】的毒手药王才可医治，烦请去药王庄，苗某感激不尽。',1,1) 
            G.call('地图_进入地图','药王庄',23,67)
            G.call("talk",'',5,'   敢问毒手药王可在？',0,0) 
            G.call("talk",'',40,'   你是谁？找先师所为何事？',1,1)
            G.call("talk",'',5,'   在下胡斐，尊师不在，只是不知苗大侠这毒可怎么解！',0,0)
            G.call("talk",'',40,'   胡大哥，我就陪你走一趟吧！',1,1)
            G.call('地图_进入地图','苗人凤居',28,67)
            G.call("talk",'',40,'   苗前辈，晚辈是【药王庄】毒手药王的嫡传弟子，晚辈现在苗前辈身上下施针灸，片刻后苗前辈可双复原。',1,1)
            G.call('dark')
            G.call("talk",'',156,'   【药王庄】的弟子果然神乎其技！小兄弟，你救了苗某的性命，苗某没什么可报答的。不如指点你一招武功如何，这便是我的【苗家剑法】！',1,1) 
            if G.call('get_npcskill',5,0x1005002e) == 0 then 
                G.call('set_friend_skill',5,2,47,500)
            end
            G.call("talk",'',5,'   多谢苗大侠！',0,0) 
            if G.call('get_item',143) == 0  then 
                G.call('add_item',143,1)
            end 
            o_book_story.流程 = 2
        else
            G.call("talk",'',102,'   凭你的本事来多管闲事？快点滚吧。',1,1)  
        end
    elseif o_book_story.流程 == 2 then
        G.call('地图_进入地图','福康安府',113,67)
        G.call("talk",'',403,'   这玉龙杯还有四只，看场下哪四个门派掌门能够技高一筹取得就能够与少林、武当、三才剑、黑龙门四门合称【玉龙八门】！',1,1)  
        G.call('all_over')
        G.call('dark')
        G.call("talk0",'安提督','   万岁爷恩典，钦赐玉龙御杯，着少林派掌门人大智禅师、武当派掌门人无青子道人、三才剑掌门人汤沛、黑龙门掌门人海兰弼、天龙门掌门人田归农、药王门掌门人石万嗔，五虎门掌门人凤天南收执。恭喜恭喜！',126,163)
        G.call("talk",'',393,'   且慢，我这【九家半】掌门人都没登场，你们就开始分了？你们玉龙杯拿的住吗？ ',1,1)
        G.call('all_over')
        G.call('story','七人刚刚拿起玉龙杯，七个人手上犹似碰到了烧得通红的烙铁，实在拿捏不住，一齐松手。乒乒乓乓一阵清脆的响声过去，七只玉杯同时在青砖地上砸得粉碎') 
        G.call("talk",'',392,'   田掌门，定是这妖女从中作梗，我们先把这妖女擒下再说！',1,1) 
        G.call("talk",'',157,'   正有此意！ ',1,1) 
        G.call("talk",'',5,'   那也得问问我的刀答应不答应！',0,0)
        G.call('all_over')
        G.call('set_team',5,393,0,0)
        G.call('call_battle',1,113,4,200,157,392,0,0,0,0)
        o_battle_结果 = G.call('get_battle') 
        if o_battle_结果 == 1  then
            G.call("talk",'',157,'   此人刀法太厉害！汤大侠拦住他们！ ',1,1) 
            G.call('all_over')
            G.call('set_team',5,393,0,0)
            G.call('call_battle',1,113,4,999,404,0,0,0,0,0)  
            G.call("talk",'',40,'   汤大侠好一手【掷针术】，只是为何这针上会有剧毒？有石万嗔在，这也可以想得到；突然想起刚才碰过玉龙杯又使用内力的应该是活不过今日，再送你们一场毒雾！',1,1) 
            G.call("talk",'',40,'   胡大哥，袁姑娘我们走！',1,1) 
            o_book_story.流程 = 3
        else
            G.call("talk",'',392,'   凭你这本事也想英雄救美，快点滚吧！',1,1) 
        end
    elseif o_book_story.流程 == 3 then
        G.call('地图_进入地图','药王庄',23,67)
        if G.call('get_point',18) == 100 then
            G.call("talk",'',40,'   幸好袁姑娘只是受了内伤，休息几天应该没事，胡大哥虽中的是碧蚕毒蛊、鹤顶红、孔雀胆三种剧毒，但我有解救之法。',1,1)
            G.call("talk",'',5,'   程姑娘可是要替我吸毒？',0,0)
            G.call("talk",'',40,'   胡大哥你怎么猜到？',1,1)
            G.call("talk",'',5,'   如果你真替我吸毒而死今生你让我怎么好过？你赶紧想想可否有以毒攻毒的方法？',0,0)
            G.call("talk",'',40,'   我师父说中了这三种剧毒，无药可治，也许我只能一试，现在只有我种的【七星海棠】！',1,1)
            G.call("talk",'',5,'   只能听天由命了，程姑娘你就试试吧！',0,0)
            G.call("talk",'',40,'   好的，胡大哥！',1,1)
            G.call('dark')
            G.call("talk",'',40,'   胡大哥，你真的好了，真是谢天谢地！',1,1)
            G.call("talk",'',5,'   那也是多亏程姑娘你种活了【七星海棠】！',0,0)
            G.call("talk",'',393,'   今后我们就一起仗剑江湖！',1,1)
            G.call('join',40)
            G.call('join',393)
            o_book_story.完美 = 1
        else
            G.call("talk",'',40,'   幸好袁姑娘只是受了内伤，休息几天应该没事，胡大哥虽中的是碧蚕毒蛊、鹤顶红、孔雀胆三种剧毒，但我有解救之法。你们不会动弹，不会说话，那是服了那颗麻药药丸的缘故',1,1)
            G.call("talk",'',40,'   我师父说中了这三种剧毒，无药可治，因为他只道世上没有一个医生，肯不要自己的性命来救活病人。大哥，他不知我……我会待你这样…我知道你心中喜欢这袁姑娘...可袁姑娘...',1,1)
            G.call('dark')
            G.call("talk",'',5,'   程姑娘你怎么就不想想你自己,你这样为我你让我今生怎么能忘记你！',0,0)
            G.call("talk",'',393,'   胡大哥，你多保重，我要走了！',1,1) 
            G.call('leave',40)
            G.call('leave',393)
        end
        G.call('notice1','完成【飞狐外传】梦幻剧情！')
        o_book_story.完成 = 1
    end
    G.call('all_over')
    G.call('add_time',2)
    G.call('dark')
    G.call('goto_map',4)
end
t['天书_雪山飞狐'] = function()
    local o_book_story = G.QueryName(0x101c0002)
    if not G.call('in_team',5) then 
        G.call("talk",'',38,'   本故事没有胡斐是无法进行的！',2,1)
        G.call('all_over')
        return
    end 
    if o_book_story.流程 == 0 then
        G.call('地图_进入地图','塞外',42,67)
        G.call("talk",'',156,'   胡兄，我们这次比武点到为止！',1,1)
        G.call("talk",'胡一刀',5,'   依苗兄所言，来开始吧！',0,0)
        G.call('set_team',5,0,0,0)
        G.call('call_battle',1,42,4,200,156,0,0,0,0,0)
        o_battle_结果 = G.call('get_battle') 
        if o_battle_结果 == 1  then
            G.call('all_over')
            G.call("talk",'',156,'   胡兄刀法果然出神入化，不若我用【苗家剑法】和胡兄交换相互研习？',1,1)
            if G.call('get_npcskill',5,0x1005002e) == 0 then 
                G.call('set_friend_skill',5,2,47,500)
            end
            G.call("talk",'胡一刀',5,'   正合我意！',0,0)
            if G.call('get_item',143) == 0  then 
                G.call('add_item',143,1)
            end 
            G.call("talk",'',156,'   那下次我们再来比过！',1,1)
            o_book_story.流程 = 1
        else
            G.call('all_over')
            G.call("talk",'胡一刀',5,'   苗兄剑法果然出神入化，下次我们再来比过！',0,0)
            G.call("talk",'',156,'   那下次我们再来比过！',1,1)
            G.call("talk",'',178,'   二位不若到寒舍住上一宿，下次再来比过吧！',1,1)
            G.call("talk",'胡一刀',5,'   多谢！',0,0)
            o_book_story.流程 = 2
        end
    elseif o_book_story.流程 == 1 then
        G.call("talk",'',156,'   胡兄，【胡家刀法】果然出神入化，和我【苗家剑法】可以起到相辅相成！',1,1)
        G.call("talk",'胡一刀',5,'   正是如此，我们再来切磋一番！',0,0)
        G.call('set_team',5,0,0,0)
        G.call('call_battle',1,42,4,200,156,0,0,0,0,0)
        G.call("talk",'胡一刀',5,'   苗兄怎么感觉我们这刀剑颜色不对！',0,0)
        G.call("talk",'',156,'   这不会是上次那个阎基搞的鬼吧！',1,1)
        G.call("talk",'胡一刀',5,'   我现在就去找他！',0,0)
        G.call('地图_进入地图','阎基居',69,67)
        G.call("talk",'胡一刀',5,'   阎基在吗？',0,0)
        G.call("talk",'',178,'   看来是你打赢了金面佛【苗人凤】，哈哈，这【断肠草】的毒果然了得！',1,1)
        G.call("talk",'胡一刀',5,'   原来是你这小人，拿命来！',0,0)
        G.call('all_over')
        G.call('set_team',5,0,0,0)
        G.call('call_battle',1,42,4,200,178,0,0,0,0,0)
        o_battle_结果 = G.call('get_battle') 
        if o_battle_结果 == 1  then
            G.call("talk",'胡一刀',5,'   狗贼，你为何要加害我们二人？',0,0)
            G.call("talk",'',178,'   是【天龙门】掌门田归农说为了不让你阻止他们找寻闯王宝藏才让我做的，说事成之后....',1,1)
            G.call("talk",'胡一刀',5,'   去死吧！',0,0)
            o_book_story.流程 = 3
        else
            G.call("talk",'',178,'   就这点本事也敢出来丢人现眼！',1,1)
        end
    elseif o_book_story.流程 == 2 then
        G.call("talk",'',156,'   胡兄，这次比武愚兄要出全力了！',1,1)
        G.call("talk",'胡一刀',5,'   好，正好战个痛快！',0,0)
        G.call('all_over')
        G.call('set_team',5,0,0,0)
        G.call('call_battle',1,42,4,9999,156,0,0,0,0,0)
        G.call("talk",'胡一刀',5,'   这剑上有剧毒...苗兄.....',0,0)
        G.call("talk",'',156,'   愚兄定当查个水落石出！',1,1)
        G.call("talk",'胡一刀',5,'   好想看看斐儿长大！',0,0)
        o_book_story.完成 = 1
        G.call('notice1','完成【雪山飞狐】梦幻剧情！')
    elseif o_book_story.流程 == 3 then
        G.call('地图_进入地图','大雪山',110,67)
        local int_mo = (227-224)*6+265
        G.call("talk",'胡一刀',5,'   田归农你个小人，竟然使出如此卑劣手段！',0,0)
        G.call("talk",'',157,'   你可真命大，可是这次你就没有这好的命了！',1,1)
        G.call('all_over')
        G.call('set_team',5,0,0,0)
        G.call('call_battle',1,42,4,200,157,227,int_mo,int_mo+1,int_mo+2,int_mo+3)
        o_battle_结果 = G.call('get_battle') 
        if o_battle_结果 == 1  then
            G.call("talk",'',157,'   真够狠的你...........',1,1)
            G.call("talk",'胡一刀',5,'   让你知道【飞天狐狸】的厉害！',0,0)
            if G.call('get_item',264) == 0  then 
                G.call('add_item',264,1)
            end 
            o_book_story.完美 = 1
            o_book_story.完成 = 1
            G.call('notice1','完成【雪山飞狐】梦幻剧情！')
        else
            G.call("talk",'',157,'   就这点本事也敢出来丢人现眼！',1,1)
        end
    end
    G.call('all_over')
    G.call('add_time',2)
    G.call('dark')
    G.call('goto_map',4)
end
t['天书_连城诀'] = function()
    local o_book_story = G.QueryName(0x101c0003)
    local int_mo = (228-224)*6+265
    if not G.call('in_team',10) then 
        G.call("talk",'',38,'   本故事没有狄云是无法进行的！',2,1)
        G.call('all_over')
        return
    end 
    if o_book_story.流程 == 0 then
        G.call('地图_进入地图','地牢',111,10)
        G.call("talk",'',10,'   这是哪里，我怎么会在这里？',0,0)
        G.call("talk",'',394,'   你又是那狗官派来的吧，看你和上次那几个比怎么样？',2,1)
        G.call('all_over')
        G.call('set_team',10,0,0,0)
        G.call('call_battle',1,111,4,999,394,0,0,0,0,0)
        G.call("talk",'',394,'   这点本事应该不是那狗官派来的，你是谁？',2,1)
        G.call("talk",'',10,'   我叫狄云，大哥你是？',0,0)
        G.call("talk",'',394,'   丁典，你先休息吧，被打搅我练神功！',2,1)
        G.call('dark')
        G.call("talk",'',394,'   你看窗台上的菊花多美？',2,1)
        G.call("talk",'',10,'   为何大哥每日盯着窗台看呢？',0,0)
        G.call("talk",'',394,'   能看到这花我就知道霜华现在很好！',2,1)
        G.call('dark')
        G.call("talk0",'万 圭','臭小子，告诉你，你的师妹已经嫁给我了，你可以死心了！',126,163)
        G.call("talk",'',10,'   你个禽兽，是不是你胁迫了我师妹！',0,0)
        G.call("talk0",'万 圭','哈哈，你就死心吧，她是心甘情愿的！',126,163)
        G.call("talk",'',10,'   师妹都嫁人了，我活着还有什么意思，我还不如。。。。。！',0,0)
        G.call('dark')
        G.call("talk",'',394,'   臭小子，你怎么那么傻，这不是我练成神照功救了你，今日你就真见阎王了！',2,1)
        G.call("talk",'',10,'   你为什么要救我啊！',0,0)
        G.call("talk",'',394,'   因为至少你知道你师妹是活着的，活着就是希望！',2,1)
        G.call("talk",'',10,'   我知道了，谢谢大哥！',0,0)
        G.call("talk",'',394,'   看你身上衣服都破烂了，把这件衣服穿上吧，我再传你点神照经防身！',2,1)
        if G.call('get_item',76) == 0 then
            G.call('add_item',76,1)
        end 
        if G.call('get_item',265) == 0 then
            G.call('add_item',265,1)
        end 
        G.call("talk",'',10,'   多谢大哥！',0,0)
        if G.call('get_npcskill',10,0x1005008f) == 0 then 
            G.call('set_friend_skill',10,3,144,500)
        end
        o_book_story.流程 = 1
    elseif o_book_story.流程 == 1 then
        G.call('地图_进入地图','地牢',111,10)
        G.call("talk",'',394,'   窗台上的菊花都枯萎好几天了，我有不好的预感？',2,1)
        G.call("talk",'',10,'   是不是你口中念的霜华她病了或者是忘记了？',0,0)
        G.call("talk",'',394,'   不会的，不论怎样，只要她在她会想办法换的，除非.....今晚我们先出去看看！',2,1)
        G.call('地图_进入地图','内室',97,40)
        G.call("talk",'',394,'   “爱女凌霜华之灵位”，这不会是真的，霜华，你果然先我而去了',2,1)
        G.call('dark')
        G.call("talk",'',395,'   啊，我道是谁，原来是丁大侠。小女不幸逝世，有劳吊唁，存殁同感。小女去世已五天了，大夫也说不上是什么病症，只说是郁积难消。',2,1)
        G.call("talk",'',394,'   这可遂了你的心愿。',2,1)
        G.call("talk",'',395,'   丁大侠，你可忒也固执了，倘若早早说了出来，小女固然不会给你害死，我和你更成了翁婿，那是何等的美事。',2,1)
        G.call("talk",'',394,'   倘若我今日杀了你，霜华在天之灵定然恨我。凌退思，瞧在你女儿的份上，你折磨了我这七年，咱们一笔勾销。今后你再惹上我，可休怪姓丁的无情。狄兄弟，走吧。。',2,1)
        G.call("talk",'',395,'   丁大侠，咱们落到今日的结果，你说有什么好处？',2,1)
        G.call("talk",'',394,'   你清夜抚心自问，也有点惭愧么？你只贪图那什么‘连城诀’，宁可害死自己女儿。',2,1)
        G.call("talk",'',395,'   丁大侠，你不忙走，还是将那剑诀说了出来，我便给解药于你，免得枉自送了性命。',2,1)
        G.call("talk",'',394,'   你在棺木上又涂上了“金波旬花”的剧毒，你可真够恶毒的！',2,1)
        G.call("talk",'',10,'   你这狗官，大哥我们先走！',0,0)
        G.call("talk",'',395,'   还想走，没那容易！',2,1)
        G.call('all_over')
        G.call('set_team',10,0,0,0)
        G.call('call_battle',1,111,4,150,395,int_mo,int_mo+1,int_mo+2,int_mo+3,int_mo+4)
        o_battle_结果 = G.call('get_battle') 
        if o_battle_结果 == 1 then
            G.call('all_over')
            G.call("talk",'',10,'   总算打退狗官！',0,0)
            o_book_story.流程 = 2
        else
            G.call("talk",'',395,'   这点本事也想逞能！',2,1)
        end
    elseif o_book_story.流程 == 2 then
        G.call('地图_进入地图','内室',97,40)
        G.call("talk",'',10,'   大哥你怎么样，还好吧！',0,0)
        G.call("talk",'',394,'   这次我怕是真的不行了',2,1)
        if G.call('get_item',235) > 0 then
            G.call("talk",'',10,'   大哥我这里有【雪参玉蟾丸】，应该可以解除这【金波旬花】之毒，赶紧服下！',0,0)
            G.call('add_item',235,-1)
            G.call('dark')
            G.call("talk",'',394,'   狄兄弟，我真的好了，找个趁手的撬开棺木，也许我的神照功能够。。。。',2,1)
            G.call("talk",'',10,'   是的大哥，你试试！',0,0)
            G.call('dark')
            G.call("talk",'',407,'   典哥，我真的好高兴，好高兴，我又能看到你了....',2,1)
            G.call("talk",'',394,'   狄兄弟，这次多谢你了，也没别的教你，再教你套【无影神拳】！',2,1)
            if G.call('get_npcskill',10,0x100500ec) == 0 then 
                G.call('set_friend_skill',10,1,237,500)
            end
            G.call("talk",'',394,'   我和霜华就不再过问世事了，你自己也多加小心！',2,1)
            o_book_story.完美 = 1
        else
            G.call("talk",'',10,'   大哥，你有什么心愿未了？',0,0)
            G.call("talk",'',394,'   我只希望我死后你将我和霜华葬在一起！',2,1)
            G.call("talk",'',10,'   我答应就是！',0,0)
            G.call('story','就这样狄云将丁典以及凌霜华安葬了！') 
        end 
        o_book_story.完成 = 1
        G.call('notice1','完成【连城诀】梦幻剧情！')
    end
    G.call('all_over')
    G.call('add_time',2)
    G.call('dark')
    G.call('goto_map',4)
end
t['天书_天龙八部'] = function()
    local o_book_story = G.QueryName(0x101c0004)
    if not G.call('in_team',36) then 
        G.call("talk",'',38,'   本故事没有乔峰是无法进行的！',2,1)
        G.call('all_over')
        return
    end 
    if o_book_story.流程 == 0 then
        G.call('地图_进入地图','杏子林',258,52)
        G.call("talk",'',174,'   小女子殓葬先夫之后，检点遗物，在他收藏拳经之处，见到一封用火漆密密封固的书信，后将书信辗转交与徐长老，余事请徐长老细说！',2,1)
        G.call("talk",'',36,'   （你们有什么阴谋，尽管使出来好了。乔某生平不作半点亏心事，不管有何倾害诬陷，乔某何惧？）',0,0)
        G.call("talk",'徐长老',170,'   这封便是马大元的遗书。大元的曾祖、祖父、父亲，数代都是丐帮中人，不是长老，便是八袋弟子。我眼见大元自幼长大，他的笔迹我是认得很清楚的。这信封上的字，确是大元所写。',2,1)
        G.call("talk",'',170,'   马夫人将信交到我手中之时，信上的火漆仍然封固完好，无人动过。我也担心误了大事，不等会同诸位长老，便即拆来看了。拆信之时，太行山铁面判官单兄也正在座，可作明证。',2,1) 
        G.call("talk",'',97,'   不错，其时在下正在郑州徐老府上作客，亲眼见到他拆阅这封书信。',2,1)   
        G.call("talk",'',170,'   我一看这张信笺，见信上字迹笔致遒劲，并不是大元所写，微感惊奇，见上款写的是‘剑髯吾兄’四字，更是奇怪。',2,1) 
        G.call("talk",'',170,'   众位都知道，‘剑髯’两字，是本帮前任汪帮主的别号，若不是跟他交厚相好之人，不会如此称呼，而汪帮主逝世已久，怎么有人写信与他？我不看笺上所写何字，先看信尾署名之人，一看之下，更是诧异。',2,1)
        G.call("talk",'',170,'   当时我不禁‘咦’的一声，说道：‘原来是他！’单兄好奇心起，探头过来一看，也奇道：‘咦！原来是他！',2,1) 
        G.call("talk",'智光大师',92,'   先让我瞧瞧，是否真是原信。',2,1)    
        G.call("talk",'',36,'   你……你干什么？为何将信尾的署名撕下来吃了？',0,0) 
        G.call("talk",'',36,'   这竟然末尾是：字谕丐帮马副帮主、传功长老、执法长老、暨诸长老：乔峰若有亲辽叛汉、助契丹而厌大宋之举者，全帮即行合力击杀，不得有误。下毒行刺，均无不可，下手者有功无罪。汪剑通亲笔。',0,0)
        G.call("talk",'',174,'   先夫不幸亡故，到底是何人下的毒手，此时自是难加断言。但想先夫平生诚稳笃实，拙于言词，江湖上并无仇家，妾身实在想不出，为何有人要取他性命。',2,1)
        G.call("talk",'',174,'   然而常言道得好：‘慢藏诲盗’，是不是因为先夫手中握有什么重要物事，别人想得之而甘心？别人是不是怕他泄漏机密，坏了大事，因而要杀他灭口？',2,1) 
        G.call("talk",'',36,'   你疑心是我害死了马副帮主？',0,0)
        G.call("talk",'',174,'   妾身是无知无识的女流之辈，出外抛头露面，已是不该，何敢乱加罪名于人？只是先夫死得冤枉，哀恳众位伯伯叔叔念着故旧之情，查明真相，替先夫报仇雪恨。',2,1) 
        G.call("talk",'',134,'   马夫人，我心中有一个疑团，我听夫人言道，马前辈这封遗书，乃是用火漆密密固封，而徐长老开拆之时，漆印仍属完好。那么在徐长老开拆之前，谁也没看过信中的内文了？然则那位带头大侠的书信和汪帮主的遗令，除了马前辈之外，本来谁都不知。慢藏诲盗、杀人灭口的话，便说不上。',2,1)
        G.call("talk",'',174,'   姑娘是谁？却来干预我帮中的大事？',2,1)
        G.call("talk",'',134,'   贵帮大事，我一个小小女子，岂敢干预？只是你们要诬陷我们公子爷，我非据理分辨不可。',2,1) 
        G.call("talk",'',174,'   姑娘之言甚是，只是我在拾到一柄折扇，请徐长老明鉴！',2,1)
        G.call("talk",'',170,'   朔雪飘飘开雁门，平沙历乱卷蓬根；功名耻计擒生数，直斩楼兰报国恩。这扇面正是我的题字，非我族类，其心必异。汪帮主啊汪帮主，你这件事可大大的做错了。',2,1)
        G.call("talk",'',36,'   (有人盗我折扇，嫁祸于我，这等事可难不倒乔峰。)[br]徐长老，这柄折扇是我的。',0,0)
        G.call("talk",'',170,'   汪帮主总算将我当我心腹，可是密留遗令这件大事，却不让我知晓。',2,1)
        G.call("talk",'',174,'   丐帮中只大元知道此事，便惨遭不幸，你……你……若是事先得知，未必能逃过此劫。',2,1)
        G.call("talk",'',36,'   乔某身世来历，惭愧得紧，我自己未能确知。但既有这许多前辈指证，乔某须当尽力查明真相。这丐帮帮主的职份，自当退位让贤。',0,0)
        G.call("talk",'',36,'   乔峰身世未明，这帮主一职，无论如何是不敢担任了。徐长老、传功、执法两位长老，本帮镇帮之宝的打狗棒，请你三位连同保管。日后定了帮主，由你三位一同转授不迟。马副帮主到底是谁所害，是谁偷了我这折扇，去陷害于乔某，终究会查个水落石出。',0,0)
        G.call("talk",'',36,'   马夫人，以乔某的身手，若要到你府上取什么事物，谅来不致空手而回，更不会失落什么随身物事。别说府上只不过三两个女流之辈，便是皇宫内院，相府帅帐，千军万马之中，乔某要取什么物事，也未必不能办到。',0,0)
        G.call("talk",'',36,'   青山不改，绿水长流，众位好兄弟，咱们再见了。',0,0)
        G.call('地图_进入地图','野外',154,35)
        G.call("talk",'',36,'   (这竟然遇到四大恶人围攻丐帮兄弟！)[br]休伤我丐帮兄弟？',0,0)
        G.call("talk",'奚长老',169,'   乔帮主，我等欲去参加大会，却被四大恶人围截！',2,1)
        G.call("talk",'',36,'   先打发了这群恶人再说！',0,0)
        G.call('all_over')
        G.call('set_team',36,0,0,0)
        G.call('call_battle',1,20,4,200,104,105,106,107,0,0,0,66) 
        o_battle_结果 = G.call('get_battle') 
        if o_battle_结果 == 1  then
            G.call("talk",'奚长老',169,'   多谢帮主解围',2,1)
            G.call("talk",'',36,'   众位兄弟不说了，待我调查出真相，青山不改，绿水长流，众位好兄弟，咱们再见了。',0,0)
            o_book_story.流程 = 1 
        else
            G.call("talk",'',104,'   真是不自量力！',2,1)
        end
    elseif  o_book_story.流程 == 1 then   
        G.call('地图_进入地图','少林寺',135,59)
        G.call("talk",'',36,'   发现一个黑影好像进了少林寺，跟过去看看！',0,0)
        G.call('地图_进入地图','少林寺内阁',134,59)
        G.call("talk",'',36,'   (噫，这小沙弥在拍什么：一-梦-如-是，好像拿了什么经书)',0,0)
        G.call("talk",'',239,'   有盗贼进入了少林寺',2,1)
        G.call('all_over')
        G.call('set_team',36,0,0,0)
        G.call('call_battle',1,134,4,200,110,175,176,177,0,0,0,66) 
        o_battle_结果 = G.call('get_battle') 
        if o_battle_结果 == 1  then
        end
    end
    G.call('all_over')
    G.call('add_time',2)
    G.call('dark')
    G.call('goto_map',4)
end