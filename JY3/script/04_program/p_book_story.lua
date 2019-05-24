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
    G.call('dark')
    if o_book_story.流程 == 0 then
        G.call('地图_进入地图','佛山',256,67)
        G.call("talk",'',5,'   这位仁兄，刚才听你们讲“剖腹验鹅”后来怎么样？ ',0,0) 
        G.call("talk0",'胖商人','   锺四嫂在北帝爷爷座前磕了几个响头，说道：“‘北帝爷爷，我孩子决不能偷人家的鹅。他今年还只四岁，刁嘴拗舌，说不清楚，在财主爷面前说什么吃我，吃我！',126,163)
        G.call("talk0",'胖商人','小妇人一家横遭不白，赃官受了贿，断事不明，只有请北帝爷爷伸冤！”说着提起刀来，一刀便将小三子的肚子剖了。',126,163)
        G.call("talk",'',5,'   竟有此事？那这位财主老爷是何人？',0,0) 
        G.call("talk0",'胖商人','就是城东凤大老爷！',126,163)
        G.call("talk",'',5,'   多谢兄台告知！北帝爷爷，今日要你作个见证，我胡斐若不杀凤天南父子给锺家满门报仇，我回来在你座前自刎。',0,0) 
        G.call('dark')
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
                G.call('dark')
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
        G.call('call_battle',1,7,4,100,102,229,int_mo,int_mo1,int_mo1,230)
        o_battle_结果 = G.call('get_battle') 
        if o_battle_结果  then
            G.call("talk",'',156,'   小兄弟，我中的毒，只有【药王庄】的毒手药王才可医治，烦请去药王庄，苗某感激不尽。',1,1) 
            G.call('all_over')
            G.call('dark')
            G.call('地图_进入地图','药王庄',23,67)
            G.call("talk",'',5,'   敢问毒手药王可在？',0,0) 
            G.call("talk",'',40,'   你是谁？找先师所为何事？',1,1)
            G.call("talk",'',5,'   在下胡斐，尊师不在，只是不知苗大侠这毒可怎么解！',0,0)
            G.call("talk",'',40,'   胡大哥，我就陪你走一趟吧！',1,1)
            G.call('dark')
            G.call('all_over')
            G.call('地图_进入地图','苗人凤居',28,67)
            G.call("talk",'',40,'   苗前辈，晚辈是【药王庄】毒手药王的嫡传弟子，晚辈现在苗前辈身上下施针灸，片刻后苗前辈可双复原。',1,1)
            G.call('dark')
            G.call("talk",'',156,'   【药王庄】的弟子果然神乎其技！小兄弟，你救了苗某的性命，苗某没什么可报答的。不如指点你一招武功如何，这便是我的【苗家剑法】！',1,1) 
            G.call('set_friend_skill',5,2,47,500)
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
        G.call("talk",'',403,'   今日本帅举办这【天下掌门人大会】，这八只玉龙杯就是作为本次大会胜者的奖励！',1,1)  
    end
    G.call('all_over')
    G.call('add_time',2)
    G.call('dark')
    G.call('goto_map',4)
end