--[[400f

]]
local G = require "gf"
local L = {}
local t = G.api
local JY = 0
local o_battle_结果 = 0
local o_rwdr = G.QueryName(0x1017000d)
--type=剧情
--hide=false
--private=false
t['地图系统_聚贤庄任务'] = function()
	local ui ;
	if not G.getUI('v_citymap_system_map') then 
		return
	end 
    ui = G.getUI('v_citymap_system_map');
	local c = ui.c_citymap_system_map;
    while true do
        G.case(1, '聚贤庄任务_四十二章经的秘密')
        G.case(2, '聚贤庄任务_闯王宝藏的秘密')
        G.case(3, '聚贤庄任务_唐诗选辑的秘密')
        G.case(4, '聚贤庄任务_落花流水恶斗血刀僧')
        G.case(5, '聚贤庄任务_华山论剑')
        G.case(6, '聚贤庄任务_救治青翼蝠王')
        G.case(7, '聚贤庄任务_归云庄英雄大会')
        G.case(8, '聚贤庄任务_王语嫣的悲哀')
        G.case(9, '聚贤庄任务_放荡形骸的浪子')
        G.case(10, '聚贤庄任务_绝情谷婚宴')
        G.case(11, '聚贤庄任务_悲情杨过')
        G.case(12, '聚贤庄任务_独孤求败的宠物')
        G.case(13, '聚贤庄任务_昔日皇妃')
        G.case(14, '聚贤庄任务_韦小宝性命危矣')
        G.case(15, '聚贤庄任务_庄家的复仇')
        G.case(16, '聚贤庄任务_魔教圣姑')
        G.case(17, '聚贤庄任务_死守襄阳城')
        G.case(18, '聚贤庄任务_三件礼物')
        G.case(19, '聚贤庄任务_四大淫贼')
        G.case(20, '聚贤庄任务_田归农的挑战')
        G.case(21, '聚贤庄任务_回族部落的圣物')
        G.case(22, '聚贤庄任务_群寇争镖银')
        G.case(23, '聚贤庄任务_老尼姑的险境')
        G.case(24, '聚贤庄任务_峨嵋派替天行道')
        G.case(25, '聚贤庄任务_西夏招亲')
        G.case(26, '聚贤庄任务_救治盲女')
        G.case(27, '聚贤庄任务_青城派的仇怨')
        G.case(28, '聚贤庄任务_东郭狼子心')
        G.case(29, '聚贤庄任务_全真教与桃花岛的恩怨')
        G.case(30, '聚贤庄任务_桃花岛主，贻笑江湖')
        G.case(31, '聚贤庄任务_昆仑冰蚕')
        G.case(32, '聚贤庄任务_毒王之争')
        G.case(33, '聚贤庄任务_天王老子傲四方')
        G.case(34, '聚贤庄任务_御厨的无奈')
        G.case(35, '聚贤庄任务_腊八粥')
        G.case(36, '聚贤庄任务_迷途的小和尚')
        G.case(37, '聚贤庄任务_擂鼓山棋局')
        G.case(38, '聚贤庄任务_良辰吉日')
        G.case(39, '聚贤庄任务_镖车被劫')
        G.case(40, '聚贤庄任务_爪下白骨')
        G.case(41, '聚贤庄任务_阮姓何辜')
        G.case(42, '聚贤庄任务_丐帮和星宿的恶斗')
        G.case(43, '聚贤庄任务_少林与武当的恶斗')
        G.case(44, '聚贤庄任务_全真与古墓的恶斗')
        G.case(45, '聚贤庄任务_官逼民受苦')
        G.case(46, '聚贤庄任务_神秘商人')
        G.case(47, '聚贤庄任务_义结金兰')



        local r = G.wait_case();
        if r == 1 then
            G.call('聚贤庄任务_四十二章经的秘密')
        elseif r == 2 then 
            G.call('聚贤庄任务_闯王宝藏的秘密')
        elseif r == 3 then 
            G.call('聚贤庄任务_唐诗选辑的秘密')
        elseif r == 4 then 
            G.call('聚贤庄任务_落花流水恶斗血刀僧')
        elseif r == 5 then 
            G.call('聚贤庄任务_华山论剑')
        elseif r == 6 then 
            G.call('聚贤庄任务_救治青翼蝠王')
        elseif r == 7 then 
            G.call('聚贤庄任务_归云庄英雄大会')
        elseif r == 8 then 
            G.call('聚贤庄任务_王语嫣的悲哀')
        elseif r == 9 then 
            G.call('聚贤庄任务_放荡形骸的浪子')
        elseif r == 10 then 
            G.call('聚贤庄任务_绝情谷婚宴')
        elseif r == 11 then 
            G.call('聚贤庄任务_悲情杨过')
        elseif r == 12 then 
            G.call('聚贤庄任务_独孤求败的宠物')
        elseif r == 13 then 
            G.call('聚贤庄任务_昔日皇妃')
        elseif r == 14 then 
            G.call('聚贤庄任务_韦小宝性命危矣')
        elseif r == 15 then 
            G.call('聚贤庄任务_庄家的复仇')
        elseif r == 16 then 
            G.call('聚贤庄任务_魔教圣姑')
        elseif r == 17 then 
            G.call('聚贤庄任务_死守襄阳城')
        elseif r == 18 then 
            G.call('聚贤庄任务_三件礼物')
        elseif r == 19 then 
            G.call('聚贤庄任务_四大淫贼')
        elseif r == 20 then 
            G.call('聚贤庄任务_田归农的挑战')
        elseif r == 21 then 
            G.call('聚贤庄任务_回族部落的圣物')
        elseif r == 22 then 
            G.call('聚贤庄任务_群寇争镖银')
        elseif r == 23 then 
            G.call('聚贤庄任务_老尼姑的险境')
        elseif r == 24 then 
            G.call('聚贤庄任务_峨嵋派替天行道')
        elseif r == 25 then 
            G.call('聚贤庄任务_西夏招亲')
        elseif r == 26 then 
            G.call('聚贤庄任务_救治盲女')
        elseif r == 27 then 
            G.call('聚贤庄任务_青城派的仇怨')
        elseif r == 28 then 
            G.call('聚贤庄任务_东郭狼子心')
        elseif r == 29 then 
            G.call('聚贤庄任务_全真教与桃花岛的恩怨')
        elseif r == 30 then 
            G.call('聚贤庄任务_桃花岛主,贻笑江湖')
        elseif r == 31 then 
            G.call('聚贤庄任务_昆仑冰蚕')
        elseif r == 32 then 
            G.call('聚贤庄任务_毒王之争')
        elseif r == 33 then 
            G.call('聚贤庄任务_天王老子傲四方')
        elseif r == 34 then 
            G.call('聚贤庄任务_御厨的无奈')
        elseif r == 35 then 
            G.call('聚贤庄任务_腊八粥')
        elseif r == 36 then 
            G.call('聚贤庄任务_迷途的小和尚')
        elseif r == 37 then 
            G.call('聚贤庄任务_擂鼓山棋局')
        elseif r == 38 then 
            G.call('聚贤庄任务_良辰吉日')
        elseif r == 39 then 
            G.call('聚贤庄任务_镖车被劫')
        elseif r == 40 then 
            G.call('聚贤庄任务_爪下白骨') 
        elseif r == 41 then 
            G.call('聚贤庄任务_阮姓何辜') 
        elseif r == 42 then 
            G.call('聚贤庄任务_丐帮与星宿的恶斗') 
        elseif r == 43 then 
            G.call('聚贤庄任务_少林与武当的恶斗') 
        elseif r == 44 then 
            G.call('聚贤庄任务_全真与古墓的恶斗') 
        elseif r == 45 then 
            G.call('聚贤庄任务_官逼民受苦') 
        elseif r == 46 then 
            G.call('聚贤庄任务_神秘商人')   
        elseif r == 47 then 
            G.call('聚贤庄任务_义结金兰')       
        end    
    end    
end 
t['聚贤庄任务_义结金兰']=function()
    local o_rwdr = G.QueryName(0x1017000d)
    G.call('dark')
    G.call('goto_map',4) 
    G.Play(0x49010034,1,true,1) 
    G.misc().brother = 0
    if G.QueryName(0x10030001)[tostring(50)] >  0 then 
        G.call("talk",'',38,'   今日你准备与哪位队友在我醋仙居进行义结金兰？',1,1) 
        G.call("talk",'',0,'   你且猜猜这个他是谁？',0,0) 
        G.call("talk",'',38,'   他现在你的队伍里吗？',1,1)  
    else
        G.call("talk",'',38,'   已经做过此任务',1,1) 
        G.call('dark')
        G.call('goto_map',4) 
        return   
    end  
    local o_team = G.QueryName(0x10110001)
    local brother = {}
    for i = 1,12 do
        local i_role = o_team[tostring(i)]
        if i_role then 
            local o_role = G.QueryName(i_role )
            if G.QueryName(0x10030001).性别 == 0 then 
                if o_role.性别 and o_role.性别 ~= 1 then
                    table.insert(brother,i_role - 0x10040000)
                end
            elseif G.QueryName(0x10030001).性别 == 1 then 
                if o_role.性别 and o_role.性别 == 1 then
                    table.insert(brother,i_role - 0x10040000)
                end
            end
        end
    end 
    local int_选项 = 0
    while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{'1,当然在队伍里','2,突然有事，改日再来吧！',},0) 
        if int_选项 == 1 then 
            if #brother == 0 then 
                G.call("talk",'',38,'   有没有搞错！把你想要结义的人一起带来见我！',1,1) 
            else
                local p = 0 
                local truebrother = {}
                local str0 = {}
                for i = 1,#brother do 
                    for n = 1,12 do 
                        local o_team = G.QueryName(0x10110001)
                        if o_team[tostring(n)]  == brother[i] + 0x10040000 then 
                            local result = true       
                            for j = 70,75 do 
                                if brother[i] == G.QueryName(0x10030001)[tostring(j)] then 
                                    result = false  
                                end    
                            end                                                             
                            if result == true  then 
                                p = p + 1
                                truebrother[p] = brother[i]
                            end    
                        end
                    end
                end 
                G.call('all_over') 
                for i = 1,p do 
                    local name = G.QueryName(0x10040000+truebrother[i]).姓名
                    G.call("talk",'',38,'   是不是【'..name..'】?',1,1) 
                    local int_选项 = 0
                    while int_选项 == 0 do
                        int_选项 = G.call("menu",'',0,'',0,0,{'1,果然神机妙算，就是他！','2,你慢慢猜吧','3,突然有事，改日再来吧！'},0) 
                        if int_选项 == 1 then
                            G.misc().brother = truebrother[i]
                            G.call('all_over')
                        elseif int_选项 == 2 then
                        elseif int_选项 == 3 then
                            G.misc().brother = 999
                            G.call('all_over') 
                            
                        end
                    end
                    if  G.misc().brother >  0 or G.misc().brother == 999 then 
                        break
                    end   
                end 
                if G.misc().brother == 0 then 
                    G.call("talk",'',38,'   你是在耍我吧。有可能的我都给你列出了，若都不是，只说明你脑残！',1,1) 
                elseif G.misc().brother == 999 then 
                else
                    local int_选项 = 0
                    while int_选项 == 0 do
                        G.call("talk",'',38,'   与【'..G.QueryName(0x10040000+G.misc().brother).姓名..'】结义吗？你可要认真考虑，机会只有一次，无论错过还是草率结义都是来不及后悔的。成为你结义[兄弟]，各项属性均会大涨，成为你打架斗殴时的好帮手，可要慎重考虑！',1,1) 
                        int_选项 = G.call("menu",'',0,'',0,0,{'1,我已经决定了与他义结金兰','2,突然有事，改日再来吧！'},0) 
                        if int_选项 == 1 then
                            --print('结义次数次数='..G.QueryName(0x10030001)[tostring(50)] )
                            G.QueryName(0x10030001)[tostring(50)] = G.QueryName(0x10030001)[tostring(50)] - 1
                            if G.QueryName(0x10030001)[tostring(50)] <= 0 then 
                                G.QueryName(0x10080027).是否完成 = true   
                            end 
                            o_rwdr.进度列表[39].完成 = 1
                            if G.call('get_point',41) < 0 then 
                                G.call("talk",'',38,'   真是遗憾呀，你婚检通不过，原来已经被阉割过了，我想你这辈子还是别指望娶老婆了。',1,1)
                                G.misc().brother = 0
                            else
                                for i = 70,75 do 
                                    if G.QueryName(0x10030001)[tostring(i)] == 0 then 
                                        G.QueryName(0x10030001)[tostring(i)] = G.misc().brother
                                        break
                                    end    
                                end      
                                G.call("talk",'',38,'   好吧，我如你们所愿。以后有福同享，有难同当，不求你们同年同月同月生，但求你们同年同月同日死！',1,1) 
                                local int_no = G.misc().brother 
                                if G.QueryName(0x10030001).性别 == 1 then 
                                    local o_ybyt = G.QueryName(0x10170016)
                                    local ybyt = 0
                                    for i = 1,#o_ybyt.进度列表 do
                                        if o_ybyt.进度列表[i].编号 == int_no then 
                                            o_ybyt.进度列表[i].完成 = 1
                                        end    
                                        if o_ybyt.进度列表[i].完成 == 1 then
                                            ybyt = ybyt + 1
                                        end   
                                    end    
                                    if o_ybyt.完成 == 0 then 
                                        if ybyt == #o_ybyt.进度列表 then 
                                            o_ybyt.完成 = 1
                                            G.call('notice1','完成成就【义薄云天】') 
                                        end    
                                    end 
                                elseif  G.QueryName(0x10030001).性别 == 0 then 
                                    local o_bhzh = G.QueryName(0x1017001b)
                                    local bhzh = 0
                                    for i = 1,#o_bhzh.进度列表 do
                                        if o_bhzh.进度列表[i].编号 == int_no then 
                                            o_bhzh.进度列表[i].完成 = 1
                                        end    
                                        if o_bhzh.进度列表[i].完成 == 1 then
                                            bhzh = bhzh + 1
                                        end   
                                    end    
                                    if o_bhzh.完成 == 0 then 
                                        if bhzh == #o_bhzh.进度列表 then 
                                            o_bhzh.完成 = 1
                                            G.call('notice1','完成成就【百合之好】') 
                                        end    
                                    end      
                                end                             
                                G.call('add_role',int_no,1,5000)
                                G.call('add_role',int_no,2,5000)
                                G.call('set_role',int_no,15,G.call('get_role',int_no,1))
                                G.call('set_role',int_no,14,G.call('get_role',int_no,2))
                                G.call('add_role',int_no,3,30)
                                G.call('add_role',int_no,4,30)
                                G.call('add_role',int_no,5,30)
                                G.call('add_role',int_no,6,30)
                                G.call('add_role',int_no,7,30)
                                G.call('add_role',int_no,8,30)
                            end
                        elseif int_选项 == 2 then
                           
                        end
                    end
           
                  
                    
                end   
            end
        elseif int_选项 == 2 then 
            
        end
    end
    G.call('add_day',1)
    G.call('dark')
    G.call('goto_map',4) 
end
t['聚贤庄任务_良辰吉日']=function()
    local o_rwdr = G.QueryName(0x1017000d)
    G.call('地图_进入地图','喜堂',47,38)
    G.call('add_day',1)
    G.misc().wife = 0
    if G.QueryName(0x10030001)[tostring(51)] >  0 and G.QueryName(0x10030001)[tostring(13)] > 0 then 
        G.call("talk",'',38,'   你到底想结几次婚，不怕家宅不宁吗？这又是哪家[姑娘]这么不幸会被你看上？',1,1) 
        G.call("talk",'',0,'   被我看中，那是她的福气。你且猜猜这个女孩是谁？',0,0) 
        G.call("talk",'',38,'   她现在你的队伍里吗？',1,1) 
    else
        G.call("talk",'',38,'   你终于忍不住寂寞，打算要[娶媳妇]了吗？告诉我是哪家的[姑娘]这么不幸会被你看上？',1,1) 
        G.call("talk",'',0,'   被我看中，那是她的福气。你且猜猜这个女孩是谁？',0,0) 
        G.call("talk",'',38,'   她现在你的队伍里吗？',1,1) 
    end   
    local o_team = G.QueryName(0x10110001)
    local wife = {}
    for i = 1,12 do
        local i_role = o_team[tostring(i)]
        if i_role then 
            local o_role = G.QueryName(i_role )
            if G.QueryName(0x10030001).性别 == 1 then 
                if o_role.性别 and o_role.性别 ~= 1 then
                    table.insert(wife,i_role - 0x10040000)
                end
            elseif G.QueryName(0x10030001).性别 == 0 then 
                if o_role.性别 and o_role.性别 == 1 then
                    table.insert(wife,i_role - 0x10040000)
                end
            end
        end
    end
    --local  wife = {1,3,6,8,12,14,15,16,18,19,20,22,24,25,26,28,39,40,130,179,248,252}
    --local str = {'曼陀山庄','恒山派','古墓派','绝情谷','桃花岛','庄家大院','蒙古郡主','日月神教','峨嵋派','星宿派','闯王之女','青竹帮','华山派','回部','神龙教','天鹰教','郭二小姐','药王庄','牛家村','日月神教','铃剑双侠','明教'}
    local int_选项 = 0
    while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{'1,当然在队伍里','2,突然觉得[娶媳妇]很恐怖，我不娶了',},0) 
        if int_选项 == 1 then
            -- for i = 1,p do 
            --     --print(str0[i])
            -- end    
            if #wife == 0 then 
                G.call("talk",'',38,'   有没有搞错！把你想[娶的人]一起带来见我，再给你们办理婚事。你自己单方面同意，于程序上行不通！',1,1) 
            else
                local p = 0 
                local truewife = {}
                local str0 = {}
                for i = 1,#wife do 
                    for n = 1,12 do 
                        local o_team = G.QueryName(0x10110001)
                        if o_team[tostring(n)]  == wife[i] + 0x10040000  then 
                            local result = true 
                            if wife[i] ~= G.QueryName(0x10030001)[tostring(13)] then      
                                for j = 52,62 do 
                                    if wife[i] == G.QueryName(0x10030001)[tostring(j)] then 
                                        result = false  
                                    end    
                                end   
                            else   
                                result = false 
                            end
                            if result == true  then 
                                p = p + 1
                                truewife[p] = wife[i]
                                --str0[p] = str[i]
                            end    
                        end
                    end
                end
                G.call('all_over') 
                for i = 1,p do 
                    local name = G.QueryName(0x10040000+truewife[i]).姓名
                    G.call("talk",'',38,'   是不是'..name..'?',1,1) 
                    local int_选项 = 0
                    while int_选项 == 0 do
                        int_选项 = G.call("menu",'',0,'',0,0,{'1,果然神机妙算，就是她！','2,你慢慢猜吧','3,突然觉得[娶媳妇]很恐怖，我不娶了'},0) 
                        if int_选项 == 1 then
                            G.misc().wife = truewife[i]
                            G.call('all_over')
                        elseif int_选项 == 2 then
                        elseif int_选项 == 3 then
                            G.misc().wife = 999
                            G.call('all_over') 
                            
                        end
                    end
                    if  G.misc().wife >  0 or G.misc().wife == 999 then 
                        break
                    end   
                end 
                if G.misc().wife == 0 then 
                    G.call("talk",'',38,'   你是在耍我吧。有可能的我都给你列出了，若都不是，只说明你可能性取向有问题，建议去做个检查不要着急谈婚论嫁先。',1,1) 
                elseif G.misc().wife == 999 then 
                else
                    local int_选项 = 0
                    while int_选项 == 0 do
                        G.call("talk",'',38,'   【'..G.QueryName(0x10040000+G.misc().wife).姓名..'】做为你的[媳妇]吗？你可要认真考虑，机会只有一次，无论错过还是草率结合都是来不及后悔的。成为你[媳妇]的[女子]，各项属性均会大涨，成为你打架斗殴时的贤[内助]，可要慎重考虑！',1,1) 
                        int_选项 = G.call("menu",'',0,'',0,0,{'1,我已经决定了，此生非他不娶','2,突然觉得[娶媳妇]很恐怖，我不娶了'},0) 
                        if int_选项 == 1 then
                            --print('结婚次数='..G.QueryName(0x10030001)[tostring(51)] )
                            G.QueryName(0x10030001)[tostring(51)] = G.QueryName(0x10030001)[tostring(51)] - 1
                            if G.QueryName(0x10030001)[tostring(51)] <= 0 then 
                                G.QueryName(0x10080026).是否完成 = true
                            end 
                            o_rwdr.进度列表[38].完成 = 1
                            if G.call('get_point',41) > 0 then 
                                G.call("talk",'',38,'   真是遗憾呀，你婚检通不过，原来已经被阉割过了，我想你这辈子还是别指望[娶媳妇]了。',1,1)
                                G.misc().wife = 0
                            else
                                for i = 1,p do 
                                    if truewife[i] ~= G.misc().wife then 
                                        G.call('add_love',truewife[i],-50)
                                    end     
                                end 
                                if G.QueryName(0x10030001)[tostring(13)] == 0 then 
                                    G.QueryName(0x10030001)[tostring(13)] = G.misc().wife
                                else
                                    for i = 52,62 do 
                                        if G.QueryName(0x10030001)[tostring(i)] == 0 then 
                                            G.QueryName(0x10030001)[tostring(i)] = G.misc().wife
                                            break
                                        end    
                                    end    
                                end    
                                G.call("talk",'',38,'   好吧，我如你们所愿。恭喜你们喜结连理，预祝你们举案齐眉。',1,1) 
                                local int_no = G.misc().wife 
                                if G.QueryName(0x10030001).性别 == 1 then 
                                    local o_mbss = G.QueryName(0x10170010)
                                    local mbss = 0
                                    for i = 1,#o_mbss.进度列表 do
                                        if o_mbss.进度列表[i].编号 == int_no then 
                                            o_mbss.进度列表[i].完成 = 1
                                        end    
                                        if o_mbss.进度列表[i].完成 == 1 then
                                            mbss = mbss + 1
                                        end   
                                    end    
                                    if o_mbss.完成 == 0 then 
                                        if mbss == #o_mbss.进度列表 then 
                                            o_mbss.完成 = 1
                                            G.call('notice1','完成成就【美不胜收】') 
                                        end    
                                    end  
                                elseif G.QueryName(0x10030001).性别 == 0 then 
                                    local o_ccsc = G.QueryName(0x1017001a)
                                    local ccsc = 0
                                    for i = 1,#o_ccsc.进度列表 do
                                        if o_ccsc.进度列表[i].编号 == int_no then 
                                            o_ccsc.进度列表[i].完成 = 1
                                        end    
                                        if o_ccsc.进度列表[i].完成 == 1 then
                                            ccsc = ccsc + 1
                                        end   
                                    end    
                                    if o_ccsc.完成 == 0 then 
                                        if ccsc == #o_ccsc.进度列表 then 
                                            o_ccsc.完成 = 1
                                            G.call('notice1','完成成就【草草收场】') 
                                        end    
                                    end     
                                end                             
                                G.call('add_role',int_no,1,5000)
                                G.call('add_role',int_no,2,5000)
                                G.call('set_role',int_no,15,G.call('get_role',int_no,1))
                                G.call('set_role',int_no,14,G.call('get_role',int_no,2))
                                G.call('add_role',int_no,3,30)
                                G.call('add_role',int_no,4,30)
                                G.call('add_role',int_no,5,30)
                                G.call('add_role',int_no,6,30)
                                G.call('add_role',int_no,7,30)
                                G.call('add_role',int_no,8,30)
                            end
                        elseif int_选项 == 2 then
                           
                        end
                    end
           
                  
                    
                end   
            end
        elseif int_选项 == 2 then 
            
        end
    end
    G.call('dark')
    G.call('goto_map',4) 
end
t['聚贤庄任务_擂鼓山棋局']=function()
    local o_rwdr = G.QueryName(0x1017000d)
    G.call('add_day',15)
    G.call('地图_进入地图','擂鼓山',62,51)
    G.call('photo0',16)
    G.QueryName(0x10080025).是否完成 = true 
    o_rwdr.进度列表[37].完成 = 1
    G.call("talk",'',117,'   公子相貌、悟性本来都是上佳之选，只可惜爱心太重，不舍棋子，瞻前顾后踌躇不决，因此而败，看来注定是没有缘分的。',1,1) 
    G.call("talk",'',9,'   前辈指点得甚是，看来我的棋道果然还未至一流境地...',1,1) 
    G.call("talk",'',30,'   我来试试...',1,1) 
    G.call('dark')
    G.call('photo0',16)
    G.call("talk",'',30,'   这...这...四面八方全是黑子，我是难逃重围了，莫非我慕容家族便如这棋局一般，兴复无望了...',1,1) 
    G.call("talk",'',117,'   这位慕容公子比刚才那位段公子更为可惜。慕容公子为求目的，勇于弃子，最后众叛亲离孤军奋战，焉能不败！',1,1) 
    G.call("talk",'',104,'   待我段延庆来破解这【珍珑棋局】...',1,1) 
    G.call('dark')
    G.call('photo0',16)
    G.call("talk",'',104,'   这前有追兵，后无退路，莫非是要天亡我也！',1,1) 
    G.call("talk",'',116,'   "你本是皇族后裔，理当继承王位。然而现在皇位被夺，自己又人不人鬼不鬼，你有何面目还存活世上，不如自己尽早了断了吧！',1,1) 
    G.call("talk",'',104,'   是啊，我的确愧对段家的列祖列宗。我唯有一死，才能得解脱...',1,1) 
    if G.call('in_team',35) == false  and  (G.call('get_point',8) == 0 or G.call('get_point',8) == 2)  then 
        G.call("talk",'',0,'   段延庆！不可自寻短见，你中了丁春秋的迷心术啦！',0,0) 
        G.call("talk",'',116,'   可恶的小鬼，你坏我大事，受死吧!!！',1,1) 
        G.call('all_over')
        G.call('call_battle',0,20,3,40,116,0,0,0,0,0)
        o_battle_结果 = G.call('get_battle')
        if o_battle_结果  == 1 then 
            G.Play(0x49010033,1,true,1) 
            G.call("talk",'',117,'   丁春秋！你想在我这里杀人吗？是怕还没那么容易！这位公子既然出手，总须有个了断。既已入局，就请把这局棋下完吧',1,1) 
            G.call('dark')
            G.call('photo0',16)
            G.call("talk",'',117,'   妙极妙极，公子棋力真是深奥莫测。起手的这一步不着意于生死，不着意于得失，因而反倒能超越生死，获得解脱。既然公子破了【珍拢棋局】就请进入茅屋吧，有人在那里等你。',1,1) 
            G.call('set_note','擂鼓山，勘破珍珑棋局')
            G.call('dark')
            G.call('photo0',17)
            G.call("talk",'',0,'   前辈就是苏星河前辈所说在等我的人吗？',0,0) 
            G.call("talk",'',113,'   老夫是苏星河的师父——无涯子。我摆下这珍珑棋局已有十数年了，就是希望有人能勘破棋局，做我的衣钵传人。今日你破棋局，注定你我有缘。向我磕头，你就是我的关门弟子了。',1,1) 
            G.call("talk",'',0,'   前辈是什么门派？要是拜你为师，你传我的功夫是否会影响我已练成的武功？',0,0) 
            G.call("talk",'',113,'   老夫门派乃是逍遥派。你已练的内功当然会受到影响，老夫会化去你身上所有内力，将老夫七十余年的功力注入给你。你所得远远要大于你所失，你还犹豫什么！',1,1)
            G.call("talk",'',0,'   师父在上，请受弟子'..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..'一拜！',0,0) 
            G.call('指令_重铸')
            G.QueryName(0x10030001)[tostring(9)] = '掌  门'
            G.QueryName(0x10030001)[tostring(12)] = '无涯子'
            G.QueryName(0x10030001)[tostring(8)] = 6
            if G.call('get_item',261) == 0 then 
                G.call('add_item',261,1)
            end
            G.call('add_point',14,150)
            G.call('add_point',27,30)
            G.call('add_point',45,3000)
            G.call('add_point',47,5000)
            G.call('learnmagic',148)
            G.call('指令_存储属性')
            G.call('add_point',44,G.call('get_point',217))
            G.call('add_point',46,G.call('get_point',218))
            G.call('dark')
            G.call('photo0',18) 
            G.call("talk",'',113,'   我已把我的全部功力传授给你，我不久便将油尽灯枯！现在我要把【逍遥派】掌门之位传给你，这是掌门信物【七宝指环】，逍遥派的将来就靠你了...(闭目而逝)',1,1) 
            if G.call('get_magicexp',236) == 0 then 
                G.call('learnmagic',236)
                G.call('set_magic_lv',236,5)
                G.call('set_magicexp',236,999)
            end
            G.call("talk",'',0,'   师父安息吧，弟子一定不负所托。',0,0) 
            G.call('learnmagic',248)
            G.call('出师-增加被动')
            G.call('dark')
            G.call('photo0',16) 
            G.call("talk",'',117,'   苏星河参见新掌门人！',1,1) 
            G.call("talk",'',104,'   恭喜小兄弟当上掌门人。适才多谢你救我一命，我这【一阳指】就传授给你吧。',1,1) 
            if G.call('get_magicexp',129) == 0 then 
                G.call('learnmagic',129)
            end
        else
            G.call("talk",'',116,'   没有本事就不要招惹是非，今天不杀你，滚吧！',1,1) 
        end
    else
        G.call("talk",'',35,'   段施主不可轻生啊！（我虽不会下棋，但我随便下一子搅乱了棋局，或许可救段施主的性命）',1,1) 
        G.call("talk",'',116,'   可恶的小鬼，你坏我大事，受死吧!!',1,1)
        G.call("talk",'',104,'   丁春秋！你的对手是我！适才若不是小和尚出手解围，我就被你害死了，咱们现在来算算账吧！',1,1) 
        G.call("talk",'',117,'   这位小师父这一手虽然胡闹，但总是入局的一招。请小师父继续下吧！',1,1) 
        G.call('dark')
        G.call('photo0',16)
        G.call("talk",'',117,'   小师父果然高明！起手的这一步不着意于生死，不着意于得失，因而反倒能超越生死，获得解脱。少林寺的小师父既然破了棋局，就请进入茅屋吧。此间事了，各位英雄也都散了吧。',1,1) 
        G.call('add_role',35,1,8500)
        G.call('add_role',35,2,8500)
        G.call('set_role',35,15,G.call('get_role',35,1))
        G.call('set_role',35,14,G.call('get_role',35,2))
        G.call('add_role',35,4,50)
        G.call('add_role',35,7,65)
        G.call('add_role',35,8,30)
        G.call('set_roleskill',35,2,102)
        G.call('set_roleskill',35,3,103)
        G.call('set_roleskill',35,1,148)
        G.call('set_role',35,10,999)
        G.call('set_role',35,11,500)
        G.call('set_role',35,12,500)
    end
    G.call('dark')
    G.call('goto_map',4) 
end
t['聚贤庄任务_迷途的小和尚']=function()
    local o_rwdr = G.QueryName(0x1017000d)
    G.call('add_day',1)
    G.call('地图_进入地图','悦来客栈',3,33)
    G.call("talk",'',35,'   这位[施主]，小僧是少林寺子弟，因外出化缘，迷失了方向。请[施主]为小僧指点回少林的方向。',1,1) 
    G.QueryName(0x10080024).是否完成 = true 
    o_rwdr.进度列表[36].完成 = 1
    if G.call('get_love',35) >= 60 and G.call('get_point',8) == 2 then 
        G.call("talk",'',35,'   原来是师弟啊，真巧在这里遇见你。我奉师父法旨出来化缘，没想到给迷路了。师弟，你见多识广，告诉师兄回少林的路吧。',1,1) 
        G.call("talk",'',0,'   (将回少林之路告知)',0,0)  
        G.call("talk",'',35,'   多谢师弟。我这里有十颗【镇心理气丸】，你在江湖上历经风险，正是用得着，我全给你了。师弟你要多多保重。',1,1) 
        if G.call('get_item',240) == 0 then 
            G.call('add_item',240,10)
        end
    else
        G.call("talk",'',0,'   小和尚，我颇识得去少林之路，你跟我走吧。',0,0) 
        if G.call('team_full') == false then 
            G.call("talk",'',35,'   那就有劳[施主]带路了。',1,1) 
            G.call('join',35)
        else
            G.call("talk",'',35,'   多谢[施主]好意，但是[施主]的队伍已满，我无法加入了。',1,1) 
        end
    end
    G.call('dark')
    G.call('goto_map',4) 
end
t['聚贤庄任务_腊八粥']=function()
    local o_rwdr = G.QueryName(0x1017000d)
    G.call('add_day',15)
    G.call('地图_进入地图','侠客岛',60,35)
    G.QueryName(0x10080023).是否完成 = true 
    o_rwdr.进度列表[35].完成 = 1
    G.call("talk",'',144,'   此岛名为【侠客岛】，乃是我辈遵行侠义道之岛。请诸君前来，一是为了请诸位品尝敝岛特产的【腊八粥】，二是要赏善罚恶。',1,1) 
    G.call("talk",'',144,'   在坐诸位中，有不少是罪恶滔天之辈，我自当奉行侠义亲手除去，以示其罚；心怀侠义者，可入岛钻研上乘武学，以示其奖。',1,1) 
    G.call("talk",'',144,'   先请诸位品尝这外界难得一见的【腊八粥】...',1,1) 
    if G.call('get_item',238) == 0 then 
        G.call('add_item',238,1)
    end
    G.call("talk",'',144,'   现在我要实行赏善罚恶！待我一一清算...',1,1) 
    if G.call('get_point',15) > 0 then 
        G.call("talk",'',144,'   '..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..'你出道以来所行之事，颇对老夫胃口。你进洞钻研武学吧，希望你日后能把武功一途用于正道！',1,1) 
        G.call('地图_进入地图','侠客密洞',61,10)
        G.call("talk",'',0,'   哇！这件石室这么大，石壁上全是刻印着古怪的图形。莫非这就是侠客岛的绝世武功？',0,0) 
        if G.call('get_point',18) > 50 then 
            G.call("talk",'',0,'   看来看去，头都晕了，也没看出什么。没必要在这浪费时间了，早回中原吧。',0,0)
        else
            G.call("talk",'',0,'   原来这些图形是依人体经络而画，待我把这几幅图一一看过。',0,0)
            G.call('地图_进入地图','侠客密洞',61,9)
            G.call("talk",'',0,'   难道我已经无意间练成了上乘武功？我现在全身发热，好似充满了无穷的力量！！！',0,0)
            G.call("talk",'',144,'   恭喜[少侠]，练成不世奇功——【太玄经神功】',1,1) 
            if G.call('get_magicexp',146) == 0 then 
                G.call('learnmagic',146)
            end
        end
    else
        G.call("talk",'',144,'   '..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..'你出道两年来，犯下的过错着实不少，却也偶有小善，我只对你略施惩戒...',1,1) 
        G.call('all_over')
        G.call('call_battle',1,19,3,100,145,146,0,0,0,0)
        o_battle_结果 = G.call('get_battle')
        if o_battle_结果  == 1 then 
            G.call("talk",'',144,'   看得出，你是位百年罕见的武学奇才。我不忍伤你性命，你也进洞钻研武学吧，希望你日后能把武功一途用于正道！',1,1) 
            G.call('地图_进入地图','侠客密洞',61,10)
            G.call("talk",'',0,'   哇！这件石室这么大，石壁上全是刻印着古怪的图形。莫非这就是侠客岛的绝世武功？',0,0) 
            if G.call('get_point',18) > 50 then 
                G.call("talk",'',0,'   看来看去，头都晕了，也没看出什么。没必要在这浪费时间了，早回中原吧。',0,0)
            else
                G.call("talk",'',0,'   原来这些图形是依人体经络而画，待我把这几幅图一一看过。',0,0)
                G.call('地图_进入地图','侠客密洞',61,9)
                G.call("talk",'',0,'   难道我已经无意间练成了上乘武功？我现在全身发热，好似充满了无穷的力量！！！',0,0)
                G.call("talk",'',144,'   恭喜[少侠]，练成不世奇功——【太玄经神功】',1,1) 
                if G.call('get_magicexp',146) == 0 then 
                    G.call('learnmagic',146)
                end
            end
        else
            G.call("talk",'',144,'   今日我不杀你，你离岛去吧。你若再是不思悔改，他日必遭天谴！',1,1) 
        end
    end
    G.call('dark')
    G.call('goto_map',4) 
end
t['聚贤庄任务_御厨的无奈']=function()
    local o_rwdr = G.QueryName(0x1017000d)
    G.call('add_day',1)
    G.call('地图_进入地图','野外',19,35)
    G.QueryName(0x10080022).是否完成 = true 
    o_rwdr.进度列表[34].完成 = 1
    G.call("talk",'',188,'   磨磨蹭蹭的，你这样几时能到梅庄？我的葡萄佳酿要是耽搁得久了，可就糟蹋了。',1,1) 
    G.call('all_over')
    G.call('talk0','御  厨','   这位[大侠]啊，我可不比你这种练家子。我可经不起长途跋涉啊，我可是个尙膳监的有名御厨，你拿我去酿酒，那不是小题大做吗？',126,143)
    G.call("talk",'',188,'   酒酿得好有你的好处，酿不好，你也别想回去了。',1,1)
    G.call("talk",'',0,'   放了那御厨！',0,0)  
    G.call("talk",'',188,'   多管闲事！',1,1)
    G.call('all_over')
    G.call('call_battle',1,19,3,100,188,0,0,0,0,0)
    o_battle_结果 = G.call('get_battle')
    if o_battle_结果  == 1 then 
        G.call('talk0','御  厨','   多谢[大侠]相救。不过我也回不了皇宫了，那厮一定还会再去找我，我回家抱孩子算了。不过为了表达我的谢意，我要把我的平生所学都传给你..',126,143)
        G.call('add_point',15,2)
        G.call('add_point',37,80)
        if G.call('get_item',176) == 0 then 
            G.call('add_item',176,2)
        end
        if G.call('get_item',155) == 0 then 
            G.call('add_item',155,2)
        end
        if G.call('get_item',170) == 0 then 
            G.call('add_item',170,2)
        end
        if G.call('get_item',152) == 0 then 
            G.call('add_item',152,2)
        end
    else
        G.call("talk",'',188,'   浪费我时间！',1,1)
    end
    G.call('dark')
    G.call('goto_map',4)   

end
t['聚贤庄任务_天王老子傲四方']=function()
    local o_rwdr = G.QueryName(0x1017000d)
    G.call('add_day',1)
    G.call('地图_进入地图','？？？？',53,35)
    G.QueryName(0x10080021).是否完成 = true 
    o_rwdr.进度列表[33].完成 = 1
    G.call("talk",'',51,'   向问天！你做下的几十条人命的案子，今天总该有个了结了吧？',1,1) 
    G.call("talk",'',72,'   向先生，我华山派数十年前不少高手死在你们日月教长老手下，今天也该偿一偿命了。',1,1) 
    G.call("talk",'',56,'   姓向的，咱们都是邪魔外道，本来你走你的路，我过我的桥。但是现在东方教主发下格杀令，要取你的脑袋，我们这也是被迫行事。',1,1) 
    G.call("talk",'',17,'   哈哈，要打就打，何必诸多借口！',1,1) 
    local int_选项 = 0
    while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{'1,相助向问天','2,与向问天为敌'},0) 
        if int_选项 == 1 then
            G.call('all_over')
            G.call("talk",'',0,'   不愧是豪情万丈的天王老子，向大哥我来助你！',0,0) 
            G.call('all_over')
            G.call('set_team',17,0,0,0)
            G.call('call_battle',1,19,2,100,51,72,56,231,232,238)
            o_battle_结果 = G.call('get_battle')
            if o_battle_结果  == 1 then 
                G.call("talk",'',17,'   好兄弟，今天咱们会斗天下英雄，当真是畅快之极。不过我还有要事在身，不能久留！兄弟若还想帮我，就到【梅庄】来找我。',1,1) 
                G.call("talk",'',17,'   这是我们【日月神教】的【黑木令牌】，若是在以往，持此令牌可在教中畅通无阻，现在世道变了，它也变得毫无用处，把它赠给你吧。',1,1) 
                if G.call('get_item',254) == 0 then 
                    G.call('add_item',254,1)
                end
                G.call('add_point',14,80)
                G.call('add_point',15,-20)
                G.call('set_story',18,1)
                G.call('set_note','与向问天一同会斗天下英豪！')
            else
                G.call("talk",'',17,'   小兄弟你快走吧，这个忙你是帮不上的！',1,1) 
            end
        elseif int_选项 == 2 then 
            G.call('all_over')
            G.call("talk",'',0,'   阁下自称天王老子，就让我这个凡夫俗子来会会你！',0,0) 
            G.call('all_over')
            G.call('call_battle',1,19,3,100,17,0,0,0,0,0)
            o_battle_结果 = G.call('get_battle')
            if o_battle_结果  == 1 then 
                G.call("talk",'',17,'   哈哈，你们一群乌合之众也不过如此，姓向的打不过你们，今日只好先行告退。改日再把你们的七姑八婆统统干掉！',1,1) 
                G.call('add_point',14,80)
                G.call('add_point',15,10)
            else
                G.call("talk",'',17,'   哈哈哈，杀你这种无名鼠辈会弄脏我的手，你滚吧！',1,1) 
            end
        end
    end 
    G.call('dark')
    G.call('goto_map',4)   
end
t['聚贤庄任务_毒王之争']=function()
    local o_rwdr = G.QueryName(0x1017000d)
    G.call('add_day',1)
    G.call('地图_进入地图','？？？？',19,35)
    G.QueryName(0x10080020).是否完成 = true 
    o_rwdr.进度列表[32].完成 = 1
    local int_选项 = 0
    while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{'1,斗金蛇','2,斗莽牯朱蛤','3,斗金蛇和莽牯朱蛤'},0) 
        if int_选项 == 1 then
            G.call('all_over')
            G.call('call_battle',1,19,3,200,48,0,0,0,0,0)
            o_battle_结果 = G.call('get_battle')
            if o_battle_结果  == 1 then 
                G.call("talk",'',0,'   得到【金蛇锥】一百枚',0,0) 
                if G.call('get_item',70) == 0 then 
                    G.call('add_item',70,100)
                end
                if G.call('get_item',290) == 0 then 
                    G.call('add_item',290,1)
                end
            else
                G.call("talk",'',0,'   这的毒物真是凶猛异常，此时不跑更待何时？',0,0) 
            end
        elseif int_选项 == 2 then 
            G.call('all_over')
            G.call('call_battle',1,19,3,200,47,0,0,0,0,0)
            o_battle_结果 = G.call('get_battle')
            if o_battle_结果  == 1 then 
                G.call("talk",'',0,'   【施毒】能力上升',0,0) 
                if G.call('get_item',288) == 0 then 
                    G.call('add_item',288,1)
                end
                G.call('add_point',32,20)
            else
                G.call("talk",'',0,'   这的毒物真是凶猛异常，此时不跑更待何时？',0,0) 
            end
        elseif int_选项 == 3 then 
            G.call('all_over')
            G.call('call_battle',1,19,3,200,48,47,0,0,0,0)
            o_battle_结果 = G.call('get_battle')
            if o_battle_结果  == 1 then 
                G.call("talk",'',0,'   得到【金蛇锥】一百枚,并且【施毒】能力提升',0,0)
                if G.call('get_item',70) == 0 then 
                    G.call('add_item',70,100)
                end
                if G.call('get_item',290) == 0 then 
                    G.call('add_item',290,1)
                end 
                if G.call('get_item',288) == 0 then 
                    G.call('add_item',288,1)
                end
                G.call('add_point',32,20)
            else
                G.call("talk",'',0,'   这的毒物真是凶猛异常，此时不跑更待何时？',0,0) 
            end
        end
    end
    G.call('dark')
    G.call('goto_map',4)
end 
t['聚贤庄任务_昆仑冰蚕']=function()
    local o_rwdr = G.QueryName(0x1017000d)
    G.call('add_day',1)
    G.call('地图_进入地图','？？？？',21,33)
    G.QueryName(0x1008001f).是否完成 = true 
    o_rwdr.进度列表[31].完成 = 1
    G.call("talk",'慧  净',91,'   你这小东西到处乱跑，要是被别人捉了去，那还了得？老子辛辛苦苦把你从寒苦的昆仑山带到这花花世界，你可不要不领情！',1,1) 
    G.call("talk",'',0,'   大和尚，你在跟谁说话呢？',0,0) 
    G.call("talk",'慧  净',91,'   我在跟我自己的宠物说话，关你屁事！',1,1) 
    G.call("talk",'',0,'   的确不关我屁的事，但是关我的事！你的宠物我看中了，你给我拿过来吧！',0,0) 
    G.call('all_over')
    G.call('call_battle',1,21,3,100,91,0,0,0,0,0)
    o_battle_结果 = G.call('get_battle')
    if o_battle_结果  == 1 then 
        G.call("talk",'',0,'   哈哈，这【冰蚕】可是我的了！',0,0)
        if G.call('get_item',289) == 0 then 
            G.call('add_item',289,1)
        end
    else
        G.call("talk",'慧  净',91,'   挨千刀的小王八羔子，打老子的主意，真是瞎了狗眼！',1,1) 
    end
    G.call('dark')
    G.call('goto_map',4)
end
t['聚贤庄任务_桃花岛主,贻笑江湖']=function()
    local o_rwdr = G.QueryName(0x1017000d)
    G.call('add_day',1)
    G.call('地图_进入地图','？？？？',21,33)
    G.QueryName(0x1008001e).是否完成 = true 
    o_rwdr.进度列表[30].完成 = 1
    G.call("talk",'',83,'   李莫愁！你的手段未免也太狠辣了。这家姓阮的跟你有什么仇，你把他们一十三口全都杀死？',1,1) 
    G.call("talk",'',135,'   因为当年抢走我的陆郎的那个贱人就姓阮，所以天下姓阮的都该杀！黄老邪行事素来不依正道，怎么看我杀掉几个人你就沉不住气了？',1,1) 
    G.call("talk",'',83,'   我黄药师行事虽然偏激，但也未有如此狠辣。而且于你无怨无仇而又手无寸铁之人，你竟连杀一十三口，我若留你在世上，我这【东邪】之名还不得被你抢去。今天我必须要除掉你！',1,1) 
    G.call("talk",'',135,'   好个桃花岛主，好个名震天下的黄药师。我自知不是你的对手，但是我要让天下人知道，黄药师持强凌弱，欺负女流！',1,1) 
    local int_选项 = 0
    while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{'1,帮助李莫愁','2,帮助黄药师'},0) 
        if int_选项 == 1 then
            G.call('all_over')
            G.call("talk",'',0,'   素闻黄岛主的弹指神通出神入化，晚辈愿意代这位仙姑来领教领教！',0,0) 
            G.call('all_over')
            G.call('call_battle',1,21,3,30,83,0,0,0,0,0)
            o_battle_结果 = G.call('get_battle')
            if o_battle_结果  == 1 then 
                G.call("talk",'',83,'   好，很好。你能接下我这么多招，的确不易。你们走吧，下次在被我遇到，你们都得死！',1,1) 
                G.call("talk",'',135,'   多谢相助！这本《五毒秘传》赠送给你，算作不欠你的救命恩。',1,1) 
                if G.call('get_item',103) == 0 then 
                    G.call('add_item',103,1)
                end
            else
                G.call("talk",'',83,'   自不量力的[小子]，快些给我滚！',1,1) 
            end
        elseif int_选项 == 2 then
            G.call('all_over')
            G.call("talk",'',0,'   除掉你这女魔头何须黄岛主亲自动手，我来会会你的功夫！',0,0) 
            G.call('all_over')
            G.call('call_battle',1,21,3,100,135,0,0,0,0,0)
            o_battle_结果 = G.call('get_battle')
            if o_battle_结果  == 1 then 
                G.call("talk",'',135,'   我虽然打不过你们，但是你们也未必追的上我。咱们后会有期！',1,1) 
                G.call("talk",'',83,'   你能为我保住颜面，而又让这女魔头从此不再嚣张，不错不错。我来教你套桃花岛的绝学【玉箫剑法】。',1,1) 
                if G.call('get_magicexp',64) == 0 then
                    G.call('learnmagic',64)
                end
            else
                G.call("talk",'',83,'   自不量力的[小子]，你哪里是这女魔头的敌手，你赶快走吧！',1,1) 
            end
        end
    end
    G.call('dark')
    G.call('goto_map',4)
end
t['聚贤庄任务_全真教与桃花岛的恩怨']=function()
    local o_rwdr = G.QueryName(0x1017000d)
    G.call('add_day',1)
    G.call('地图_进入地图','？？？？',19,32)
    G.QueryName(0x1008001d).是否完成 = true 
    o_rwdr.进度列表[29].完成 = 1
    G.call("talk",'',166,'   梅超风！你杀了我全真派的人，就想一走了之吗！',1,1) 
    G.call("talk",'',89,'   我梅超风杀人无数，要是个个偿命，我早活不到现在了。就凭你们几个臭道士也想取我的性命吗？',1,1) 
    G.call("talk",'',0,'   ...这女人眼睛瞎了吗，怎么就没发觉她身旁就站立一人，若那人是敌人，她还不立时挂掉！',0,0) 
    G.call("talk",'',83,'   超风，你很好，没有丢我桃花岛的脸面。',1,1) 
    G.call("talk",'',89,'   师...师父...您来了...弟子对不起您老人家...',1,1) 
    G.call("talk",'',83,'   你们几个全真派的臭道士合伙欺负我这个盲眼的徒儿，真是枉称名门正派。今天就让我来会会你们的天罡北斗阵法！',1,1) 
    G.call("talk",'',89,'   师父小心身后！',1,1) 
    G.call("talk",'',0,'   欧阳锋！休要出手偷袭，我来会斗你！',0,0) 
    G.call("talk",'',82,'   坏我事的[小子]，我要你的命！',1,1)
    G.call('all_over')
    G.call('call_battle',1,19,3,40,82,0,0,0,0,0)
    o_battle_结果 = G.call('get_battle')
    if o_battle_结果  == 1 then 
        G.Play(0x49010021,1,true,1) 
        G.call("talk",'',82,'   [小子]，你给我记着，你的命我迟早都是要来拿的！',1,1) 
        G.call("talk",'',83,'   你这傻[小子]也太莽撞，你以为老毒物偷袭就能伤的了我吗？他的蛤蟆功击在石头上也能粉碎，你[小子]强出头，那是以卵击石！',1,1) 
        G.call("talk",'',83,'   快服下我的秘制灵药，以免受了内伤。不过你总算是一片好心，我就传你【落英神剑掌】作为奖励！',1,1) 
        if G.call('get_item',226) == 0 then 
            G.call('add_item',226,5)
        end
        if G.call('get_magicexp',90) == 0 then
            G.call('learnmagic',90)
        end
    else
        G.call("talk",'',83,'   欧阳兄，欺负小辈算什么能耐，我来接你的蛤蟆功！[小子]，你要是再不走，一会可就是死人了。',1,1) 
    end
    G.call('dark')
    G.call('goto_map',4)
end
t['聚贤庄任务_东郭狼子心']=function()
    local o_rwdr = G.QueryName(0x1017000d)
    G.call('add_day',15)
    G.call('地图_进入地图','？？？？',7,33)
    G.QueryName(0x1008001c).是否完成 = true 
    o_rwdr.进度列表[28].完成 = 1
    G.call("talk",'昆仑弟子',236,'   多谢侠士解毒救命之恩。你的医术这么高超，在下有个不情之请。我师父的小妾中毒多日，无有良方医治，请小国手妙手回春。',1,1) 
    local int_选项 = 0
    while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{'1,前去医治','2,不去医治'},0) 
        if int_选项 == 1 then
            G.call('地图_进入地图','昆仑派',58,33)
            G.call("talk",'',100,'   感谢小神医医治好我爱妾的剧毒。',1,1) 
            G.call("talk",'',108,'   是谁这么大胆子，敢治好那贱人身上的毒？',1,1) 
            G.call("talk",'',100,'   不是我，不是我。是这个[小子]，他硬要给五姑治病，我拦不住，正要教训他呢。',1,1) 
            G.call("talk",'',108,'   放屁！把这混[小子]给我宰了，否则你别想再让那个贱人活着！',1,1) 
            G.call("talk",'',100,'   唉，[小子]，怨不得我，是你自己命不好啊。',1,1) 
            G.call('all_over')
            G.call('call_battle',1,19,3,100,100,108,0,0,0,0)
            G.call("talk",'',0,'   强龙不压地头蛇，这公母俩真是万般可恶。总有一日我要把这昆仑派上下铲尽灭绝！',0,0) 
            if G.call('get_point',19) >= 80 then 
                G.call('地图_进入地图','昆仑仙境',59,5)
                G.call("talk",'',0,'   咦？这有个石碑。“潇.湘.子.埋.经.处.”...这里面有什么宝贝呢？',0,0) 
                G.call('dark')
                if G.call('get_item',102) == 0 then 
                    G.call('add_item',102,1)
                end
                if G.call('get_item',107) == 0 then 
                    G.call('add_item',107,1)
                end
                if G.call('get_item',97) == 0 then 
                    G.call('add_item',97,1)
                end
                G.call("talk",'',0,'   【王难姑毒经】！！【子午针灸图】！！！【九阳真经】！！！！！！！',0,0) 
                G.call("talk",'',0,'   "我的心在跳，我的手在抖...这不是真的吧。传说中与《九阴真经》并世齐名的《九阳真经》!!!!此地不可久留，赶紧回家修炼神功去！',0,0)
            else
            end
         
        elseif int_选项 == 2 then
            G.call("talk",'昆仑弟子',236,'   既然小国手不肯施展神技，那只能怨那女人没有福气了。我这有【五百两】银子答谢救命之恩。',1,1) 
            G.call('add_money',500)
        end
    end
    G.call('dark')
    G.call('goto_map',4)
end 
t['聚贤庄任务_青城派的仇怨']=function()
    local o_rwdr = G.QueryName(0x1017000d)
    G.call('add_day',1)
    G.call('地图_进入地图','？？？？',3,33)
    G.QueryName(0x1008001b).是否完成 = true 
    o_rwdr.进度列表[27].完成 = 1
    G.call("talk",'青城大秀',236,'   他奶奶的，当年老子落草为寇的时候被人看不起；现在当了青城派的大弟子，吃顿饭还要给钱，真他奶奶的没天理。',1,1) 
    G.call("talk",'青城三秀',236,'   余沧海那个老东西，既抠门武功还高，咱们真是从他那得不到半点好处。每次出门都不给差旅费，只说让咱们便宜行事，便他娘个球。真要是遇到猛人还不找这个茬口把咱们收拾了。',1,1) 
    G.call("talk",'青城四秀',236,'   都别说了，拿完值钱的东西赶紧走人。咱们被人发现行踪了，被人堵在屋里，可就大大不妙。',1,1) 
    G.call("talk",'',0,'   什么英雄豪杰青城四秀，我看是狗熊野猪青城四兽！今天我要教训你们这群败类！',0,0) 
    G.call('all_over')
    local a = (236-224)*6+265
    G.call('call_battle',1,19,3,100,a,a+1,a+2,a+3,0,0)
    o_battle_结果 = G.call('get_battle')
    if o_battle_结果  == 1 then
        G.call('add_point',15,4)  
        G.call("talk",'青城大秀',236,'   好汉饶命啊，看在年轻一代、武林同脉的份上，饶了我们吧，我们以后一定痛改前非好好做人...',1,1) 
        G.call("talk",'',0,'   赶快滚吧！你们这群宵小之辈杀之不绝，不杀又碍眼，下次别让我看到，否则我把你们青城派的老窝给拆了。',0,0) 
    else
        G.call("talk",'青城三秀',236,'   臭[小子]多管闲事，下次让我们碰到要你的小命！',1,1) 
    end  
    G.call('all_over')
    G.call('dark')
    G.call('goto_map',4)

end 
t['聚贤庄任务_救治盲女']=function()
    local o_rwdr = G.QueryName(0x1017000d)
    G.call('add_day',3)
    G.call('地图_进入地图','？？？？',3,33)
    G.call("talk",'',19,'   我的眼睛，我的眼睛看不见了。谁能救救我啊...',1,1) 
    G.call("talk",'',0,'   你的眼睛不过是被毒气炙坏了眼膜，若是有付活人的眼球肯给你换上，你便能复明。可是有谁愿意放弃自己的双目呢？',0,0) 
    if G.call('in_team',29) == true then
        G.QueryName(0x1008001a).是否完成 = true 
        o_rwdr.进度列表[26].完成 = 1
        G.call("talk",'',29,'   大哥，我愿意把我的眼睛贡献给阿紫姑娘。',1,1) 
        G.call("talk",'',19,'   好啊好啊，那快动手吧，还等什么？',1,1) 
        G.call("talk",'',0,'   游兄你可要想好了，你虽然治好了她的眼睛。你的眼睛却是永久不能复原了。',0,0) 
        G.call("talk",'',29,'   好啦，我知道了。大哥尽管动手吧。',1,1) 
        G.call('dark')
        G.call("talk",'',29,'   啊！！！！！！',1,1) 
        G.call("talk",'',0,'   阿紫！你怎可杀害游兄。他治好了你的眼睛，你怎么可以恩将仇报！',0,0) 
        G.call("talk",'',19,'   原来这个铁丑就是你口中所说的什么“游兄”！这[小子]曾经不只一次想毒害我姐夫，他还拼命巴结我，就是想哄骗我嫁给他。而且他不死，我怎么有位置加入你的队伍呀。',1,1) 
        G.call('leave',29)
        G.call('join',19)
        G.call('dark')
        G.call("talk",'',116,'   小阿紫，看来你的眼睛有人给你治好了。我倒要看看，是谁有这么大的胆子，连我星宿老仙下的毒都敢去化解！',1,1) 
        G.call('all_over')
        G.call('call_battle',1,19,3,70,116,0,0,0,0,0)
        o_battle_结果 = G.call('get_battle')
        if o_battle_结果  == 1 then
            G.call("talk",'',116,'   小阿紫，你翅膀硬了，有了大靠山，便不把我放在眼里！你有种不要离开他半步，否则叫你死的很难看！',1,1) 
            G.call("talk",'',19,'   大哥你真是好棒哦！这是我从丁老怪那偷来的【神木王鼎】，就送给你做见面礼吧。另外我把丁老怪的拿手绝技【腐尸毒】【星宿解毒术】也教给你，好叫你知己知彼。',1,1) 
            if G.call('get_item',111) == 0 then 
               G.call('add_item',111,1)
            end 
            if G.call('get_magicexp',3) == 0 then
               G.call('learnmagic',3)
            end    
            if G.call('get_magicexp',189) == 0 then
                G.call('learnmagic',189)
            end 
          
        else
            G.call("talk",'',116,'   你这点本事也敢跟我斗？真是不自量力。',1,1) 
            G.call("talk",'',19,'   大哥咱们快跑！！！',1,1) 
        end
    else

    end
    
    G.call('dark')
    G.call('goto_map',4)
end 
t['聚贤庄任务_西夏招亲']=function()
    local o_rwdr = G.QueryName(0x1017000d)
    G.call('add_day',15)
    G.call('地图_进入地图','西夏皇宫',57,33)
    G.QueryName(0x10080019).是否完成 = true 
    o_rwdr.进度列表[25].完成 = 1
    G.call("talk",'',52,'   '..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..'你来这里做什么？',1,1) 
    G.call("talk",'',0,'   我来这里自然是要迎娶西夏公主，大和尚，你难道打算还俗，也来娶西夏公主吗？',0,0) 
    G.call("talk",'',52,'   我家吐蕃王子来这迎娶王妃，小僧前来护法，为他清除一切障碍。',1,1)
    G.call("talk",'',0,'   这么说你想把我清除出去咯？',0,0) 
    G.call("talk",'',52,'   正是三过三不过：僧过俗不过，女过男不过，老过少不过。你既俗且男，更是年轻后生，那是绝对不能过去的了！',1,1)
    G.call('all_over')
    G.call('call_battle',1,19,3,70,52,0,0,0,0,0)
    o_battle_结果 = G.call('get_battle')
    if o_battle_结果  == 1 then
        G.call('dark')
        G.call("talk",'',52,'   你从哪里学来这么一身惊世骇俗的本事？看来我家王子这次是无望了。小僧护持不周，无脸再跟随王子了...小僧这套【火焰刀】刀法今后留着也是无用，就传给你吧！',1,1) 
        G.call('all_over')
        if G.call('get_magicexp',13) == 0 then 
            G.call('learnmagic',13)
         end
        G.call('talk0','侍  女','   让各位就等了。公主命奴婢代问大家几个问题，若是回答的令公主满意，那就可入赘做西夏的驸马了。',126,143)
        if G.call('get_story',16) == 1 then 
            G.call('talk0','侍  女','   第一问，公子一生之中，在何处最是快乐逍遥？',126,143)
            G.call("talk",'',0,'   在一个黑暗的冰窖之中。',0,0) 
            G.call('talk0','侍  女','   第二问，公子生平最爱之人，叫什么名字？',126,143)
            G.call("talk",'',0,'   唉！我……我不知道那位姑娘叫什么名字。',0,0) 
            G.call('talk0','侍  女','   第三问是：公子最爱的这个人相貌如何？',126,143)
            G.call("talk",'',0,'   她容貌如何，这也是从来没看见过。',0,0) 
            G.call("talk",'西夏公主',132,'   是...是梦郎吗？',1,1) 
            G.call("talk",'',0,'   啊！梦姑！',0,0) 
            G.call('地图_进入地图','西夏内室',58,33)
            G.call("talk",'西夏公主',132,'   梦郎，我便是找你不到，这才请父皇贴下榜文，邀你到来，我日日夜夜，就盼有此时此刻……',1,1) 
            G.call("talk",'',0,'   梦姑，原来你就是西夏公主！我太快活了...',0,0) 
            G.call("talk",'西夏公主',132,'   梦郎，我也是。但是你现在身系草莽，还有很多江湖上的事情等你去办理。我在这里等你，你把一切办妥之后，回到这里和我携手白头，你说好吗……',1,1) 
            G.call('add_point',14,150)
            G.call('set_story',16,2)
            G.call('set_CH','西夏驸马')
        else
            G.call('talk0','侍  女','   第一问，公子一生之中，在何处最是快乐逍遥？',126,143)
            G.call("talk",'',0,'   要我觉得真正快乐，那是将来，不是过去。',0,0) 
            G.call('talk0','侍  女','   第二问，公子生平最爱之人，叫什么名字？',126,143)
            G.call("talk",'',0,'   我不知道她叫什么名字。',0,0) 
            G.call('talk0','侍  女','   第三问是：公子最爱的这个人相貌如何？',126,143)
            G.call("talk",'',0,'   我盼得见公主之后，能回答姐姐第二、第三个问题。',0,0) 
            G.call('talk0','侍  女','   多谢公子。那么请公子回家敬候佳音。我家公主如是满意，定当派人前去告知。',126,143)
        end
    else
        G.call("talk",'',52,'   你这种本事也敢来出丑，小僧真是大开眼界。你快快离去吧，小僧杀了你，简直会污了手。',1,1)
    end
    G.call('dark')
    G.call('goto_map',4)
end 
t['聚贤庄任务_峨嵋派替天行道']=function()
    local o_rwdr = G.QueryName(0x1017000d)
    G.call('add_day',1)
    G.call('地图_进入地图','？？？？',19,33)
    G.QueryName(0x10080018).是否完成 = true 
    o_rwdr.进度列表[24].完成 = 1
    G.call("talk",'',61,'   明教的一众魔头，你们速速放下手中兵器，束手就擒！如果还要抵抗，老尼手中的倚天剑教你们个个人头落地！',1,1) 
    G.call("talk",'',0,'   师太，这些人虽说是魔教中人，但是个个铮铮铁骨，视死如归，实在是好汉的行径。晚辈斗胆请师太放过他们吧。',0,0) 
    G.call("talk",'',61,'   你可知我的名号是什么？',1,1) 
    G.call("talk",'',0,'   师太名号，上灭下绝。',0,0) 
    G.call("talk",'',61,'   正是！我就是要把这一干魔头灭而绝之！[小子]，你是武林至尊吗？敢阻止我，除非你能抵挡过我几招，我就放他们生路！',1,1) 
    G.call('all_over')
    G.call('call_battle',1,19,3,100,61,0,0,0,0,0)
    o_battle_结果 = G.call('get_battle')
    if o_battle_结果  == 1 then
        G.Play(0x49010021,1,true,1) 
        G.call("talk",'',61,'   [小子]，好本事。你助纣为虐，咱们的梁子今天是结下了，我遵守诺言，今天饶了这一般魔头。他日连你一起收拾！',1,1) 
        G.call('add_love',8,20)
        G.call('add_love',2,-20)
    else
        G.call("talk",'',61,'   年轻人，我念你功夫不俗，修行不易，今日饶你性命，你给我走吧。',1,1) 
    end
    G.call('dark')
    G.call('goto_map',4)
end 
t['聚贤庄任务_老尼姑的险境']=function()
    local o_rwdr = G.QueryName(0x1017000d)
    G.call('add_day',5)
    G.call('地图_进入地图','？？？？',55,33)
    G.QueryName(0x10080017).是否完成 = true 
    o_rwdr.进度列表[23].完成 = 1
    G.call("talk",'',107,'   定逸师太，你没处躲了吧！你要是早早答应左盟主的并派提议，何至于落到今天这般地步。',1,1) 
    G.call("talk",'',106,'   老四，你还跟他罗嗦什么。赶紧干掉她，好回去跟左盟主交差。她这么老，你不会都有兴趣吧。',1,1) 
    G.call("talk",'',193,'   无耻鼠辈，休要坏我清誉！',1,1)
    G.call("talk",'',0,'   四大恶人，今日都到齐了，不错不错。省得我再东奔西走的四处找你们，你们一起上吧！',0,0) 
    G.call('all_over')
    G.call('call_battle',1,20,3,100,104,106,105,107,0,0)
    o_battle_结果 = G.call('get_battle')
    if o_battle_结果  == 1 then
        G.Play(0x49010021,1,true,1) 
        if G.call('get_point',15) >= 80 then 
            G.call("talk",'',193,'   老尼命不久矣！希望[少侠]能代我执掌恒山，不要让...让恒山一脉从武林消失...（口吐鲜血，伤重而逝）',1,1)
            G.call('add_point',14,120)
            G.call('add_point',15,10)
            G.call('set_story',17,1)
            G.call('set_note','执掌恒山门户，成为恒山派第一位男掌门！')
        else
            G.call("talk",'',193,'   左盟主也太过狠毒，为了促成【五岳并派】，不惜结交左道旁门来铲除异己，我须得尽早赶回恒山早作防范！你救我一命，我教你一招恒山的掌法吧——【天长掌法】',1,1)
            if G.call('get_magicexp',100) == 0 then 
               G.call('learnmagic',100)
            end
        end
    else
        G.call("talk",'',0,'   师太，你自求多福吧，我打不过他们，我先跑路了！',0,0) 
    end
    G.call('dark')
    G.call('goto_map',4)
end 
t['聚贤庄任务_群寇争镖银']=function()
    local o_rwdr = G.QueryName(0x1017000d)
    G.call('add_day',5)
    G.call('地图_进入地图','？？？？',19,33)
    G.QueryName(0x10080016).是否完成 = true 
    o_rwdr.进度列表[22].完成 = 1
    G.call("talk",'',157,'   "小姑娘，你年轻貌美，不晓得待字闺中，等婆家上门提亲，干什么要学别人拦路截镖呢？是不是没有中意的婆家，不如就跟了我田某吧，一样的荣华富贵吃穿不愁。',1,1) 
    G.call("talk",'',22,'   那倒是不错，可惜你长得太丑了些，武功太差了些，就是胃口太大了，就怕你娶不起本姑娘。',1,1) 
    G.call("talk",'',157,'   这位过路的兄弟，帮田某把这小妞摆平，这镖车的银子咱们二一添作五如何？',1,1) 
    local int_选项 = 0
    while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{'1,帮阿九姑娘','2,帮田归农','3,二不相帮'},0) 
        if int_选项 == 1 then
            G.call('all_over')
            G.call('call_battle',1,19,3,100,157,0,0,0,0,0)
            o_battle_结果 = G.call('get_battle')
            if o_battle_结果  == 1 then
                G.Play(0x49010021,1,true,1) 
                if G.call('team_full') == false then 
                    G.call("talk",'',22,'   你这人倒是还挺仗义，挺对我的胃口，这拦路截镖的买卖我不玩了，我要跟你一起闯荡江湖！',1,1) 
                    G.call('join',22)
                else
                    G.call('add_money',3000) 
                    G.call("talk",'',22,'   多谢你拉，总不能叫你白忙，这【三千两】银子是你的了。',1,1) 
                end
                G.call('add_point',15,-5)
                
            else
                G.call("talk",'',0,'   大家都是出来混的，何必动刀动枪呢，伤了和气呢。如果一定要动的话，这里没我什么事了，等我走了你们再继续。',0,0)
            end
        elseif int_选项 == 2 then 
            G.call('all_over')
            G.call('call_battle',1,19,3,150,22,0,0,0,0,0)
            o_battle_结果 = G.call('get_battle')
            if o_battle_结果  == 1 then
                G.Play(0x49010021,1,true,1) 
                G.call('add_point',15,-15)
                G.call('add_money',math.random(5000)) 
                G.call("talk",'',157,'   兄弟好功夫，这些车银子都是兄弟的了。里面银子数目也未曾数过，这车体积最大，谅来装得的银子也该是最多的。',1,1) 
            else
                G.call("talk",'',0,'   大家都是出来混的，何必动刀动枪呢，伤了和气呢。如果一定要动的话，这里没我什么事了，等我走了你们再继续。',0,0) 
            end

        elseif int_选项 == 3 then 
            G.call('all_over')
            G.call('call_battle',1,19,3,160,157,22,0,0,0,0)
            o_battle_结果 = G.call('get_battle')
            if o_battle_结果  == 1 then
                G.Play(0x49010021,1,true,1) 
                G.call('add_point',15,-35)
                G.call('add_money',5000) 
                G.call("talk",'',157,'   [小子]，你够狠。我们认栽了，这趟镖银全是你的了。',1,1) 
            else
                G.call("talk",'',0,'   大家都是出来混的，何必动刀动枪呢，伤了和气呢。如果一定要动的话，这里没我什么事了，等我走了你们再继续。',0,0)
            end
        end
    end
    G.call('dark')
    G.call('goto_map',4)
end    
t['聚贤庄任务_回族部落的圣物']=function()
    local o_rwdr = G.QueryName(0x1017000d)
    G.call('add_day',10)
    G.call('地图_进入地图','回疆',56,32)
    G.call("talk",'',25,'   可恶的清朝士兵抢走了我们回族的圣物——《可兰经》，《可兰经》是纯洁的圣物，绝对不能落在心底肮脏的坏人手里。',1,1) 
    G.call("talk",'',0,'   姑娘放心，我这就去帮你讨回。',0,0) 
    G.QueryName(0x10080015).是否完成 = true 
    o_rwdr.进度列表[21].完成 = 1
    local a = (227-224)*6+265
    G.call('地图_进入地图','？？？？',20,32)
    G.call('call_battle',1,20,3,100,a+4,a+3,a+4,a,a+1,a+2)
    o_battle_结果 = G.call('get_battle')
    if o_battle_结果  == 1 then
        G.call('call_battle',1,20,3,100,65,a+3,a+4,0,0,0)
        o_battle_结果 = G.call('get_battle')
        if o_battle_结果  == 1 then
            G.call('call_battle',1,20,3,100,58,0,0,0,0,0)
            o_battle_结果 = G.call('get_battle')
            if o_battle_结果  == 1 then
                G.call('dark')
                G.call("talk",'',25,'   你真的帮我们夺回了《可兰经》！你真是个好人。',1,1)  
                G.call('add_point',15,10)
                if G.call('team_full') == false then
                    G.call('join',25)
                    G.call("talk",'',25,'   你就是我的真主。我愿意放下这里的一切，跟你四处漂泊。',1,1)  
                else
                    G.call("talk",'',25,'   真主说：经赐有缘人。你帮我们夺回了圣经，你就是大大的好人；你的武功既高，圣经放在你身上，就在也不会被那些坏人抢去了。真主保佑你。',1,1)  
                end
                if G.call('get_item',266) == 0 then 
                    G.call('add_item',266,1)
                end 
            else
                G.call("talk",'',0,'   这伙清兵太难对付了，这本圣经我是没有能力抢它回来了。',0,0) 
            end
        else
            G.call("talk",'',0,'   这伙清兵太难对付了，这本圣经我是没有能力抢它回来了。',0,0) 
        end
    else
        G.call("talk",'',0,'   这伙清兵太难对付了，这本圣经我是没有能力抢它回来了。',0,0) 
    end
    G.call('dark')
    G.call('goto_map',4)
end
t['聚贤庄任务_田归农的挑战']=function()
    local o_rwdr = G.QueryName(0x1017000d)
    G.call('add_day',1)
    G.call('地图_进入地图','？？？？',55,33)
    o_battle_结果 = G.call('get_battle')
    if G.call('in_team',5) == true then 
        G.QueryName(0x10080014).是否完成 = true 
        o_rwdr.进度列表[20].完成 = 1
        G.call("talk",'',157,'   胡斐，你总算来了！我设这陷阱就在等你这只鳖了。你胡家的【胡家刀法】和苗人凤的【苗家剑法】我已经都学会了，我现在是天下无敌，我看你怎么报这个仇！',1,1) 
        G.call("talk",'',5,'   无耻小人，你不配使用【胡家刀法】和【苗家剑法】！',1,1) 
        G.call('all_over')
        local a = (227-224)*6+265
        G.call('set_team',5,0,0,0)
        G.call('call_battle',1,20,2,100,157,102,227,a,a+1,a+2)
        o_battle_结果 = G.call('get_battle')
        if o_battle_结果  == 1 then
            G.Play(0x49010021,1,true,1) 
            G.call("talk",'',157,'   想不到我田归农练成了两门独步天下的武功，却还不是天下第一，真是天妒英才！啊——(喷血后，挂掉)',1,1) 
            G.call("talk",'',5,'   这个小人竟然拿着我胡家祖传的【冷月宝刀】来对付我，真是无耻！这一定也是爹爹在天之灵保佑孩儿，能手刃这个胡家的大仇人！',1,1) 
            if G.call('get_item',54) == 0 then 
                G.call('add_item',54,1)
            end 
        else
            G.call("talk",'',5,'   兄，这里太危险了，这是我和他田归农的私人恩怨，不需要你们插手，你赶紧走吧，今天我要跟这姓田的同归于尽！',1,1) 
            G.call('leave',5)
        end
    else
        G.call("talk",'',157,'   我要找的人不是你，而是胡家的那个小崽子，你不要在这里碍我的事！',1,1) 
    end
    G.call('dark')
    G.call('goto_map',4)
end 
t['聚贤庄任务_四大淫贼']=function()
    local o_rwdr = G.QueryName(0x1017000d)
    if G.QueryName(0x10080012).是否完成 == true then
        G.call('add_day',1)
        G.call('地图_进入地图','？？？？',19,33)
        G.QueryName(0x10080013).是否完成 = true 
        o_rwdr.进度列表[19].完成 = 1
        G.call("talk",'',32,'   都不要抢！这个妞是我先发现的，理应归我所有，你们没资格染指！',1,1) 
        G.call("talk",'',33,'   田兄此言差矣！天下美女人人有份，你凭得什么要吃独食？',1,1) 
        G.call("talk",'',34,'   放屁放屁！你们全都在放屁！这个女娃今天只属于我一人的，你们这点本事也配跟我争吗？',1,1) 
        o_battle_结果 = G.call('get_battle')
        local int_选项 = 0
        while int_选项 == 0 do
            int_选项 = G.call("menu",'',0,'',0,0,{'1,帮田伯光抢美女','2,帮欧阳克抢美女','3,帮霍都抢美女'},0) 
            if int_选项 == 1 then
                G.call('all_over')
                G.call('call_battle',1,19,1,100,33,34,0,0,0,0)
                o_battle_结果 = G.call('get_battle')
                if o_battle_结果  == 1 then
                    G.Play(0x49010021,1,true,1) 
                    G.call("talk",'',32,'   兄弟，啥都不说了，今天你帮田某这个忙，田某认你做朋友了！我这有一套【狂风刀法】传授给你吧。',1,1) 
                    G.call('add_point',15,-5)
                    if G.call('get_magicexp',15) == 0 then
                        G.call('learnmagic',15)
                    end
                    if G.call('team_full') == false then 
                        G.call('join',32)
                    else
                    end     
                    G.call("talk",'',158,'   你们不要高兴的太早了，这个女娃终究还是我的囊中之物！',1,1) 
                    G.call('all_over')
                    G.call('call_battle',1,19,1,120,158,0,0,0,0,0)
                    o_battle_结果 = G.call('get_battle')
                    if o_battle_结果  == 1 then
                        G.call("talk",'',158,'   你们壮阳药吃多了吗，这么凶悍，这女娃我不要了，咱们后会有期！',1,1)
                    else
                        G.call("talk",'',0,'   这伙淫棍的武功着实不低，犯不上为他们强出头，我先撤吧。',0,0) 
                    end
                else
                    G.call("talk",'',0,'   这伙淫棍的武功着实不低，犯不上为他们强出头，我先撤吧。',0,0) 
                end
            elseif int_选项 == 2  then
                G.call('all_over')
                G.call('call_battle',1,19,1,100,32,34,0,0,0,0)
                o_battle_结果 = G.call('get_battle')
                if o_battle_结果  == 1 then
                    G.Play(0x49010021,1,true,1) 
                    G.call('add_point',15,-15)
                    G.call("talk",'',33,'   白驼山少主从不拖欠人情！我教你一套【蛤蟆功】就算是咱们互不相欠了。',1,1)
                    if G.call('get_magicexp',133) == 0 then
                        G.call('learnmagic',133)
                    end
                    if G.call('team_full') == false then 
                        G.call("talk",'',33,'   我感觉你也是同道中人，咱们若是结伴而行，天下的美女就都逃不过咱们两人的掌心了。哈哈哈哈...',1,1) 
                        G.call('join',33)
                    else
                    end     
                    G.call("talk",'',158,'   你们不要高兴的太早了，这个女娃终究还是我的囊中之物！',1,1) 
                    G.call('all_over')
                    G.call('call_battle',1,19,1,120,158,0,0,0,0,0)
                    o_battle_结果 = G.call('get_battle')
                    if o_battle_结果  == 1 then
                        G.call("talk",'',158,'   你们壮阳药吃多了吗，这么凶悍，这女娃我不要了，咱们后会有期！',1,1)
                    else
                        G.call("talk",'',0,'   这伙淫棍的武功着实不低，犯不上为他们强出头，我先撤吧。',0,0) 
                    end
                else
                    G.call("talk",'',0,'   这伙淫棍的武功着实不低，犯不上为他们强出头，我先撤吧。',0,0) 
                end
            elseif int_选项 == 3  then  
                G.call('all_over')
                G.call('call_battle',1,19,1,100,33,32,0,0,0,0)
                o_battle_结果 = G.call('get_battle')
                if o_battle_结果  == 1 then
                    G.Play(0x49010021,1,true,1) 
                    G.call('add_point',15,-15)
                    G.call("talk",'',34,'   小王不喜欠人恩惠！我教你一套【龙象般若功】就算是咱们互不相欠了。',1,1)
                    if G.call('get_magicexp',141) == 0 then
                        G.call('learnmagic',141)
                    end
                    if G.call('team_full') == false then 
                        G.call("talk",'',34,'   咱们既是同道中人，又何分彼此呢。以后兄弟的女人就是小王的女人，咱们有福同享！',1,1) 
                        G.call('join',34)
                    else
                    end     
                    G.call("talk",'',158,'   你们不要高兴的太早了，这个女娃终究还是我的囊中之物！',1,1) 
                    G.call('all_over')
                    G.call('call_battle',1,19,1,120,158,0,0,0,0,0)
                    o_battle_结果 = G.call('get_battle')
                    if o_battle_结果  == 1 then
                        G.call("talk",'',158,'   你们壮阳药吃多了吗，这么凶悍，这女娃我不要了，咱们后会有期！',1,1)
                    else
                        G.call("talk",'',0,'   这伙淫棍的武功着实不低，犯不上为他们强出头，我先撤吧。',0,0) 
                    end
                else
                    G.call("talk",'',0,'   这伙淫棍的武功着实不低，犯不上为他们强出头，我先撤吧。',0,0) 
                end   
            end
        end
        G.call('dark')
        G.call('goto_map',4)
    else
        G.call('goto_map',4)
        G.call("talk",'',0,'   需先完成任务-三件礼物',0,0)  
        G.call('all_over')   
    end

end
t['聚贤庄任务_三件礼物']=function()
    local o_rwdr = G.QueryName(0x1017000d)
    G.call('add_day',15)
    G.call('地图_进入地图','？？？？',55,33)
    G.call('photo0',15)
    G.QueryName(0x10080012).是否完成 = true 
    o_rwdr.进度列表[18].完成 = 1
    G.call("talk",'神雕侠',199,'   今日我着急大家来，是想各位朋友能帮我做几件事情。',1,1) 
    G.call("talk",'神雕侠',199,'   襄阳城郭[大侠]的小女儿——郭襄，与我渊源颇深，过几日便是她的十六岁芳辰，我要给她筹备几件礼物，既叫她欢喜，也是对襄阳百姓有莫大的好处。',1,1) 
    G.call("talk",'',0,'   神雕侠只请吩咐。',0,0) 
    G.call("talk",'神雕侠',199,'   这第一件事：郭襄芳辰在即，满清竟派来两个先锋队偷袭襄阳，很是大煞风景。我们需得灭了那两个先锋队，叫小女娃过个太平的生日！',1,1) 
    local a = (227-224)*6+265
    G.call('all_over')
    G.call('call_battle',1,20,3,100,65,a,a+1,a+2,a+3,a+4)
    o_battle_结果 = G.call('get_battle') 
    if o_battle_结果  == 1 then
        G.call('call_battle',1,20,3,150,a+5,a,a+1,a+2,a+3,a+4)
        o_battle_结果 = G.call('get_battle')
        if o_battle_结果  == 1 then
            G.call("talk",'神雕侠',199,'   第二件事：离此不远，是满清屯粮的南阳草料场，须当尽早铲除，断了他们的补给。负责守卫的是达尔巴，诸位多加小心。',1,1) 
            G.call('all_over')
            G.call('call_battle',1,20,3,100,121,a,a+1,a+2,a+3,a+4)
            o_battle_结果 = G.call('get_battle')
            if o_battle_结果  == 1 then
                G.call("talk",'神雕侠',199,'   南阳草料场已经焚毁，清廷近期定然不敢擅自发兵。第三件事：霍都杀害了丐帮新任帮主鲁有脚，并夺走丐帮打狗棒。丐帮与郭家渊源极深，需得夺回打狗棒，送还丐帮。',1,1) 
                G.call('all_over')
                G.call('call_battle',1,20,1,100,34,0,0,0,0,0)
                o_battle_结果 = G.call('get_battle')
                if o_battle_结果  == 1 then
                    G.Play(0x49010021,1,true,1) 
                    G.call("talk",'神雕侠',199,'   '..G.QueryName(0x10030001)[tostring(1)]..'兄弟，你亲手夺回了打狗棒，理应由你亲手交付丐帮，好教丐帮都感念你的恩德！此间事情已了，我可以心无牵挂了。',1,1) 
                    local int_选项 = 0
                    while int_选项 == 0 do
                        int_选项 = G.call("menu",'',0,'',0,0,{'1,把【打狗棒】交还丐帮','2,自己贪下【打狗棒】'},0) 
                        if int_选项 == 1 then  
                            G.call('地图_进入地图','？？？？',4,33)
                            G.call("talk",'丐帮长老',169,'   多谢[少侠]为鲁帮主报仇，有为我们丐帮夺回打狗棒，我们丐帮永世不忘[少侠]的大恩大德。',1,1) 
                            G.call('add_schoollove',6,50)
                            G.call('add_point',14,99)
                            G.call('add_point',15,10)
                            if G.call('team_full') == false  and G.call('get_love',39) > 70  then 
                                G.call("talk",'',39,'   多谢你帮鲁伯伯报了仇，又这么费心为我准备这三件生日礼物，我实在太高兴了。我愿意加入你的队伍，跟你一起闯荡江湖。',1,1) 
                                G.call('join',39)
                            else
                            end
                        elseif int_选项 == 2 then
                            G.call('all_over')  
                            G.call("talk",'',0,'   这种宝物不要那才是傻瓜呢，反正现在神不知鬼不觉，我就悄悄的纳为己有了。哈哈哈哈...',0,0) 
                            G.call('add_point',15,-50)
                            if G.call('get_item',59) == 0 then 
                                G.call('add_item',59,1)
                            end
                        end
                    end 
                else
                    G.call("talk",'',0,'   这件事情看来极难办成，我得回去重长计议了。',0,0) 
                end
            else
                G.call("talk",'',0,'   清兵势大，一刻不能尽除。看来我得回去从长计议了',0,0) 
            end
        else
            G.call("talk",'',0,'   清兵势大，一刻不能尽除。看来我得回去从长计议了。',0,0) 
        end
    else
        G.call("talk",'',0,'   清兵势大，一刻不能尽除。看来我得回去从长计议了。',0,0) 
    end
    G.call('dark')
    G.call('goto_map',4)
end
t['聚贤庄任务_死守襄阳城']=function()
    local o_rwdr = G.QueryName(0x1017000d)
    G.call('add_day',10)
    G.call('地图_进入地图','襄阳城',54,12)
    G.call('photo0',14)
    G.QueryName(0x10080011).是否完成 = true 
    o_rwdr.进度列表[17].完成 = 1
    G.call("talk",'',81,'   郭靖，郭大侠。你来看看老衲身边的这人是谁！',1,1) 
    G.call("talk",'',39,'   爹爹...我是襄儿...',1,1) 
    G.call("talk",'',37,'   襄儿！襄儿你怎么样了？金轮法王你想怎么样？',1,1) 
    G.call("talk",'',81,'   郭大侠，你是个识时务的。只要你肯弃城投降，我担保令爱不会缺了一根头发...',1,1) 
    G.call("talk",'',37,'   鞑子若非惧我，何须跟我小女儿为难？鞑子既然惧我，郭靖有为之身岂肯轻易就死？襄儿听着，你是大宋的好女儿，慷慨就义，不可害怕。爹爹今日救你不得，日後定当杀了这万恶奸僧，为你报仇，懂了吗?',1,1) 
    G.call("talk",'',39,'   爹爹，女儿不怕!',1,1)
    G.call("talk",'',0,'   金轮！料敌不明,是为不智;欺侮弱女,是为不仁;不敢真刀真枪决战,是为不勇.如此不智不仁不勇之人,还有脸跟我们叫阵吗？',0,0) 
    G.call("talk",'',81,'   你这混[小子]，又来捣乱吗？我先拿祭旗，再来对付郭靖！',1,1) 
    G.call('all_over')
    G.call('call_battle',1,19,3,100,81,0,0,0,0,0)
    o_battle_结果 = G.call('get_battle') 
    if o_battle_结果  == 1 then
        G.call("talk",'',81,'    你这是什么功夫？怎么可能抵得过老衲的龙象般若功，没可能，没可能的...哇——（口喷鲜血）',1,1)    
        G.call('地图_进入地图','？？？？',46,50)
        G.call('add_point',14,300)
        G.call('add_point',15,20)
        G.call('add_love',39,100)
        G.call('set_note','御寇襄阳城，英名传天下！')
        G.call("talk",'',37,'   今日多亏了'..G.QueryName(0x10030001)[tostring(1)]..'兄弟挺身而出！兄弟把满清的金轮国师打得重伤呕血，想必这数年间不会再兴兵南下了，襄阳百姓终可过上几天舒服日子，这全有赖于你呀！',1,1)
        if G.call('team_full') == false then 
            G.call("talk",'',37,'   '..G.QueryName(0x10030001)[tostring(1)]..'兄弟，现在襄阳已经平安，我也好久没有离开这襄阳四处走动了。我随你们一起四处走动如何？',1,1)
            G.call('join',37)
            G.call('add_role',37,1,6500)
            G.call('add_role',37,2,6500)
            G.call('add_role',37,4,30)
            G.call('add_role',37,7,35)
            G.call('set_role',37,10,500)
            G.call('set_role',37,11,500)
            G.call('set_roleskill',37,1,87)
            G.call('set_roleskill',37,2,85)
            G.call('set_role',37,15,G.call('get_role',37,1))
            G.call('set_role',37,14,G.call('get_role',37,2))

        else
            G.call("talk",'',37,'   襄阳城几经战乱，百姓流离失所。借此休战良机，我正是要同全城百姓重建这襄阳城，有我郭靖在，便有这襄阳城在！',1,1)
        end
    else
        G.call("talk",'',0,'   好厉害的蕃僧！看来今日之战我已无有胜算，还是回去另作打算吧',0,0)  
    end
    G.call('dark')
    G.call('goto_map',4)
end 
t['聚贤庄任务_魔教圣姑']=function()
    local o_rwdr = G.QueryName(0x1017000d)
    G.call('add_day',1)
    G.call('地图_进入地图','？？？？',53,33)
    if G.call('get_story',19) > 0 then 
        G.call("talk",'',16,'   是你救了我爹爹吗？...',1,1) 
        G.call("talk",'',16,'   我答应的事情我会遵守承诺... ',1,1) 
        if G.call('team_full') == false then 
            G.QueryName(0x10080010).是否完成 = true 
            o_rwdr.进度列表[16].完成 = 1
            G.call('join',16)
            G.call("talk",'',16,'   浪迹天涯也好，亡命江湖也罢...总之我不再回日月神教了，我要一辈子跟着你。',1,1) 
        else
            G.call("talk",'',16,'   你的队伍已满，我无法加入。等你认真考虑过是否打算要我，再来找我吧。',1,1) 
        end
    else
        G.call("talk",'',16,'   民女任盈盈祈祷上天，保佑我爹爹能逃出生天，民女愿意兑现自己的承诺。',1,1) 
    end
    G.call('dark')
    G.call('goto_map',4)

end 
t['聚贤庄任务_庄家的复仇']=function()
    local o_rwdr = G.QueryName(0x1017000d)
    G.call('add_day',1)
    G.call('地图_进入地图','庄家大院',52,33)
    if G.call('get_story',48) == 1 then 
        G.call('add_point',15,5)
        G.QueryName(0x1008000f).是否完成 = true 
        o_rwdr.进度列表[15].完成 = 1
        G.call('talk0','庄三少奶奶','   老爷，现在已经有人帮咱们庄家报了仇，除去了鳌拜那个狗贼。您在天之灵可以瞑目了...',126,143)
        G.call('talk0','庄三少奶奶','   小兄弟...你是我们庄家的大恩人！我得想想怎么感谢你才好。',126,143)
        if G.call('team_full') == false then 
            G.call('talk0','庄三少奶奶','   我有一个贴身婢女，叫做【双儿】，她人够机灵，也懂得些武功，想必会对公子有很大帮助。双儿，今后你的新主人就是这位公子了，你要诚心诚意得伺候他。',126,143)
            G.call("talk",'',14,'   双儿知道了。',1,1) 
            G.call('join',14)
        else
            if G.call('get_item',116) == 0 then
                G.call('add_item',116,1)
            end 
            G.call('talk0','庄三少奶奶','   当年曾有一位高人赠送了我一套【十八泥偶】，据说上面记载了举世无匹的神功心法。我现在把它转赠给你，感谢你对我庄家的大恩大德。',126,143)
        end
    else
        G.call('talk0','庄三少奶奶','   老爷啊，现在鳌拜恶贼的势力既大，武功又高，妾身实在是心有余力不足，请老爷在天之灵保佑我们吧。',126,143)
    end
    G.call('dark')
    G.call('goto_map',4)
end 
t['聚贤庄任务_韦小宝性命危矣']=function()
    local o_rwdr = G.QueryName(0x1017000d)
    G.call('add_day',5)
    G.call('地图_进入地图','？？？？',55,33)
    G.QueryName(0x1008000e).是否完成 = true 
    o_rwdr.进度列表[14].完成 = 1
    G.call("talk",'',13,'   救命啊！谁来救救我这个可怜的孩子啊...',1,1) 
    G.call("talk",'',49,'   你叫吧，叫的越大声，你的体力消耗越快，我看你最后还能跑到哪去...',1,1) 
    G.call("talk",'',0,'   请问诸位好汉们，这样大张旗鼓的追这位公子是为了什么事情？这样堂而皇之的以多欺少，未免太说不过去了吧。',0,0) 
    G.call("talk",'',13,'   这伙强人不知什么地方听说了我身上有什么大清的藏宝图，什么四十几张经之类的东西，所以要谋财害命。',1,1) 
    G.call("talk",'',0,'   既然这样，那就容不得我袖手不管了。',0,0) 
    G.call("talk",'',49,'   兄弟们，瞧见没，出来个挡财路的。咱们一起砍死她！',1,1) 
    G.call('all_over')
    local a = (229-224)*6+265
    local b = (230-224)*6+265
    G.call('call_battle',1,19,3,50,49,a,a+1,b,b+1,b+2)
    o_battle_结果 = G.call('get_battle') 
    if o_battle_结果  == 1 then
        G.Play(0x49010021,1,true,1) 
       G.call("talk",'',13,'   大哥真是好本事啊，三拳两脚就把他们打的稀里哗啦了，佩服佩服..',1,1)
       G.call('add_point',15,2)
       if G.call('team_full') == false then 
            G.call("talk",'',0,'   我看那伙人心有不甘，一定会去而复返。不如你跟我一同上路，我保你的安全。',0,0) 
            G.call('join',13)
            G.call("talk",'',13,'   小弟正有此意，那伙人太凶悍了，没有大哥罩着，小弟怕是见不到明天的日出了。',1,1) 
           
       else
            G.call("talk",'',0,'   那伙人已经被我打的怕了，他们知道有我罩着你，势必以后不敢再打你的注意，你可以放心走路了。',0,0) 
            G.call("talk",'',13,'   多谢大哥救命之恩，小弟这里几百两银子权作答谢大哥救命的谢礼了。以后我要是再被人砍得话，我再来找大哥。',1,1) 
       end
    else
        G.call("talk",'',0,'   亲娘啊，这伙人吃什么长大的，这么厉害。自己都差点交代了，可不敢管这闲事了。',0,0) 
    end
    G.call('dark')
    G.call('goto_map',4)
end
t['聚贤庄任务_昔日皇妃']=function()
    local o_rwdr = G.QueryName(0x1017000d)
    G.call('add_day',15)
    G.call('地图_进入地图','黑龙潭',50,33)
    G.call("talk",'',88,'   是何方鼠辈敢闯到黑龙潭来，打扰老太婆的清修？',1,1) 
    G.call("talk",'',0,'   听说前辈跟周伯通有一段孽缘未曾了结，晚辈正是为此事而来。',0,0) 
    G.call("talk",'',88,'   你能有这份心思，老太婆多谢你了。老太婆原是大理国的皇妃，和全真的周伯通做了见不得人的事情。',1,1) 
    G.call("talk",'',88,'   虽然皇上不计前嫌宠爱依旧，但是我却没脸再呆下去。等我想和周伯通远走高飞的时候，他却远远的躲开了我，我再也寻他不到...',1,1) 
    G.call("talk",'',88,'   近日我探到他在附近的百花谷居住，我不能去找她，他听到我的声音就远远溜走了。所以我希望有人能帮我使得他回心转意，回到我身边来。',1,1) 
    G.call("talk",'',0,'   "晚辈这就去试一试，看看能否说得他回心转意。',0,0) 
    G.call('地图_进入地图','百花谷',123,44)
    G.call("talk",'',86,'   我这百花谷好久没人来过了，我都快无聊死了。小兄弟，来来来，快陪我好好玩玩。',1,1) 
    G.call("talk",'',0,'   周前辈，晚辈到这里是有件事情想请前辈帮忙...',0,0) 
    G.call("talk",'',86,'   好说好说，陪我玩过了，你说什么我都答应你，快来快来！',1,1) 
    G.call('all_over')
    G.call('call_battle',1,20,1,50,86,0,0,0,0,0)
    o_battle_结果 = G.call('get_battle') 
    if o_battle_结果  == 1 then
        G.QueryName(0x1008000d).是否完成 = true 
        o_rwdr.进度列表[13].完成 = 1
        G.Play(0x4901002c,1,true,1) 
        G.call("talk",'',86,'   哇——你这都是用的什么稀奇古怪的招数？有趣得很，教我教我，恩师在上，弟子...',1,1) 
        G.call("talk",'',0,'   周前辈，您刚才说过，玩过之后，你可要答应给我做事的。其实我是要带你去见一个人...',0,0) 
        G.call("talk",'',86,'   先说好啊，见人可以，但是我有两个人不见。一个是瑛姑，一个是大理段皇爷。',1,1) 
        G.call("talk",'',0,'   你是心中有愧吗？你让瑛姑一个女流为你苦守了数十年，她这般思念于你。你始终不肯和她相见，于心何忍？',0,0) 
        G.call("talk",'',86,'   不要再说了。今日倘若不去见她，以后的日子别想再睡得着。小兄弟我跟你去见她...',1,1) 
        G.call('地图_进入地图','黑龙潭',50,33)
        G.call('add_point',15,15)
        G.call("talk",'',88,'   多谢小兄弟了了我多年的心愿。',1,1)
        G.call("talk",'',86,'   今天的事情可说是放下了我心中的一块大石头。我现在心情十分的舒畅，想想给你点什么好处才是...',1,1)
        if G.call('get_point',18) > 50 then 
            G.call("talk",'',86,'   这是我近些年自创的一门拳法，叫【空明拳】。我就教给你，好叫你再更厉害些。',1,1)
            if G.call('get_magicexp',87) == 0 then 
                G.call('learnmagic',87)
            end
        else
            G.call('learnmagic',190)
            G.call("talk",'',86,'   这是我近些年自创一门有趣的功夫，叫做【左右互博】，攻敌时可以心分二用，让你的功夫陡然提升一倍。但是这个功夫须得装备上才能有用，而且还和其他内功心法相互冲突，这却是这门功夫的缺憾之处。',1,1)    
        end
        if G.call('get_point',8) == 5 and G.call('get_magic',231) == 0 and  G.call('in_team',6) then 
            G.call("talk",'',86,'   小兄弟呀，我再带你去看好玩的！',1,1)
            G.call('地图_进入地图','百花谷',123,44)
            G.call("talk",'',86,'   小兄弟你看我这的玉蜂！',1,1)
            G.call("talk",'',6,'   老顽童，这不是我昔日养的玉蜂，竟然都跑到这里来了！',1,1)
            G.call("talk",'',86,'   是啊是啊!',1,1)
            G.call("talk",'',0,'   这些玉蜂让我对本门武功又有更深刻的领悟！',0,0)
            G.call('learnmagic',231)
            G.call('set_magic_lv',231,5)
            G.call('set_magicexp',231,999)
            G.call("talk",'',86,'   好玩好玩，那我就来看看这门武功如何厉害！',1,1)
            G.QueryName(0x100c0001)[tostring(8)] = 0x100500e6
            G.call('set_point',48,100)
            G.call('call_battle',0,20,1,200,86,0,0,0,0,0)
            o_battle_结果 = G.call('get_battle') 
            if o_battle_结果  == 1 then
                G.call("talk",'',86,'   这个好玩，小龙女啊，我那套左右互搏也传给你吧！',1,1)
                G.call('set_roleskill',6,1,190)
                G.call("talk",'',0,'   有时间再来找你玩！',0,0)
            else
                G.call("talk",'',86,'   竟然还打不过我，不过还是挺好玩的。。。。',1,1)
            end  
        end
    else
        G.call("talk",'',86,'   哇！你早饭吃了没有？怎么打起来像个棉花一样！不好玩不好玩，你什么也不要跟我说了，跟你玩更是无聊，我还是去睡觉好了。',1,1)
    end
    G.call('dark')
    G.call('goto_map',4)

end
t['聚贤庄任务_独孤求败的宠物']=function()
    local o_rwdr = G.QueryName(0x1017000d)
    G.call('add_day',5)
    G.call('地图_进入地图','剑冢',31,1)
    G.call('photo0',13)
    G.call("talk",'',0,'   好凶猛的巨雕啊！',0,0) 
    G.call("talk",'',203,'   嘎...嘎...',1,1)   
    G.call("talk",'',0,'   这巨雕步步威逼，想是要逼我出手吗！我可不能让这扁毛畜生看扁了！',0,0) 
    G.call('all_over')
    G.call('call_battle',1,22,1,130,203,0,0,0,0,0)
    o_battle_结果 = G.call('get_battle') 
    if o_battle_结果  == 1 then
        G.Play(0x49010001,1,true,1) 
        G.QueryName(0x1008000c).是否完成 = true 
        G.call("talk",'',203,'   "呱...呱...',1,1)   
        G.call("talk",'',0,'   我打赢了这雕，怎么它反而似乎极为欢喜的样子？它好似在土里刨什么东西？',0,0) 
        G.call("talk",'',0,'   这石上还插着两把剑【紫薇软剑】【木剑】，难道这就是传说中独孤前辈埋剑之处？',0,0) 
        if G.call('get_item',2) == 0 then
            G.call('add_item',2,1)
        end 
        if G.call('get_item',14) == 0 then
            G.call('add_item',14,1)
        end 
        G.call("talk",'',203,'   呱...呱...',1,1)   
        G.call("talk",'',0,'   这巨雕又从哪里叼出一柄又厚又沉的巨剑来？怎么？要叼着这口剑来跟我打吗,我照样奉陪！',0,0) 
        G.call('set_point',44, G.call('get_point',217))
        G.call('set_point',46,G.call('get_point',218))
        G.call('all_over')
        G.call('call_battle',1,22,1,170,203,0,0,0,0,0)
        o_battle_结果 = G.call('get_battle') 
        if o_battle_结果  == 1 then
            G.Play(0x49010001,1,true,1) 
            o_rwdr.进度列表[12].完成 = 1
            G.call("talk",'',0,'   巨雕似乎在舞动一套奇妙的剑法，真是令人费解！',0,0) 
            G.call("talk",'',203,'   呱...呱...',1,1)   
            G.call("talk",'',0,'   这巨雕要把这重剑给我？好沉啊，剑身上下全是玄铁铸成，莫非是【玄铁剑】！那么刚才巨雕所使的剑法...',0,0) 
            G.call("talk",'',0,'   这把重剑刚好可以配合巨雕所使的那套刚猛无双的剑法，难道就是【玄铁剑法】！',0,0) 
            if G.call('get_item',28) == 0 then
                G.call('add_item',28,1)
            end 
            if G.call('get_magicexp',61) == 0 then 
                G.call('learnmagic',61)
            end
            G.call('add_love',203,50)
            if G.call('get_point',8) == 3  and G.call('get_magic',230) == 0 then
                G.call('set_point',44, G.call('get_point',217))
                G.call('set_point',46,G.call('get_point',218))
                G.call("talk",'',0,'   这石壁上还刻有字，看看再说！',0,0) 
                G.call("talk",'',0,'   四十岁之后不滞于物，草木竹石均可为剑。自此精进，渐入无剑胜有剑之境。(这是何等境界啊。。。。。)',0,0) 
                G.call("talk",'',0,'   纵横江湖三十余载，杀尽仇寇，败尽英雄，天下更无抗手，无可柰何，惟隐居深谷，以雕为友。呜呼，生平求一敌手而不可得，诚寂寥难堪也。 剑魔独孤求败既无敌于天下，乃埋剑于斯。呜呼！群雄束手，长剑空利，不亦悲夫！',0,0) 
                G.call("talk",'',0,'   既然独孤前辈有如此意境，我何不以剑意与独孤前辈切磋一番！',0,0)
                G.call('call_battle',1,22,1,250,210,0,0,0,0,0)
                o_battle_结果 = G.call('get_battle')
                if o_battle_结果  == 1 then
                    G.call("talk",'',0,'   这就是【无招胜有招】！',0,0)
                    G.call('learnmagic',230)
                    G.call('set_magic_lv',230,5)
                    G.call('set_magicexp',230,999)
                else
                    G.call("talk",'',0,'   看来我还是无法领悟此【无剑境界】！',0,0)
                end 
            end
        else
            G.call("talk",'',0,'   原来这巨雕凭着这口巨剑，实力一下强劲了一倍有余！我看想战胜它还是得假以时日。',0,0) 
        end
    else
        G.call("talk",'',0,'   这雕儿仿佛有人调教过似的，一招一式宛如高手亲临！要想打得过这只雕恐怕我还得再练上几年。',0,0) 
    end
    G.call('dark')
    G.call('goto_map',4)
end 
t['聚贤庄任务_悲情杨过']=function()
    local o_rwdr = G.QueryName(0x1017000d)
    G.call('地图_进入地图','山洞',48,33)
    G.call('add_day',1)
    G.call("talk",'',7,'   啊...唔...疼死我也..."',1,1) 
    G.call("talk",'',0,'   杨兄弟，你怎么了？',0,0) 
    G.call("talk",'',7,'   情花...情花毒发作了...',1,1) 
    if G.call('get_item',284) > 0 then 
        G.QueryName(0x1008000b).是否完成 = true 
        o_rwdr.进度列表[11].完成 = 1
        G.call("talk",'',0,'   杨兄弟，我给你带来灵丹妙药了。我特意找到了医治情花毒的【断肠草】，你赶紧服下看看效果如何。',0,0) 
        G.Play(0x49010021,1,true,1) 
        G.call('dark')
        G.call("talk",'',7,'   果然舒泰多了，心痛的感觉也没有了。太要多谢你了，你这等同于救活了我一条性命。',1,1) 
        G.call('add_item',284,-1)
        if G.call('team_full') == false then 
            G.call("talk",'',0,'   杨兄现在伤痛已好，可有什么未了的心愿，咱们可结伴同行，兄弟帮你来完成。',0,0) 
            G.call("talk",'',7,'   如果没有兄弟你，我现在已经是个死人了，还谈什么心愿不心愿的。总之兄弟一句话：刀里刀里去，火里火里去！',1,1) 
            G.call('join',7)
        else
            G.call("talk",'',0,'   杨兄弟虽然情花毒已去，但仍不可伤心劳力，请多多休养吧。',0,0) 
            G.call("talk",'',7,'   我已经是个几经生死的人，对世事还有什么想不开的呢。多谢你解了我的情花毒，我杨过会感恩你一辈子的。咱们后会有期。',1,1) 
            G.call('add_love',7,20)
        end

    else
        G.call("talk",'',0,'   杨兄弟，你别着急，切忍耐几天。听说绝情谷的【断肠草】可治你的情花毒，我去想办法弄来，只好你的病痛。',0,0) 
    end
    G.call('dark')
    G.call('goto_map',4)
end
t['聚贤庄任务_绝情谷婚宴']=function()
    local o_rwdr = G.QueryName(0x1017000d)
    G.call('add_day',5)
    G.call('地图_进入地图','绝情谷',47,38) 
    G.QueryName(0x1008000a).是否完成 = true 
    o_rwdr.进度列表[10].完成 = 1
    G.call("talk",'',158,'   今天是本谷主大喜之日，感谢各位武林同道前来捧场！',1,1) 
    G.call("talk",'',107,'   公孙谷主，我们大老远来给你道贺，你怎么总请我们吃茶吃花瓣，我的胃里都快生草了。就算是你为人尖酸吝啬，却也不该大婚时如此简慢贺礼的朋友们吧。',1,1) 
    G.call("talk",'',158,'   云先生，万分抱歉。我这绝情谷自唐代而建，谷中简陋，祖上严令禁食荤腥，所以怠慢了各位，本人万分抱歉...',1,1) 
    G.call("talk",'',86,'   依我说啊，你的老祖宗定是喝了杨贵妃的洗脚水，所以倒了胃，才食不得荤腥。哈哈哈，真是有趣...',1,1) 
    G.call("talk",'',158,'   阁下出言不逊污我祖上，岂非太过无礼了？阁下大把年纪，何以如此为老不尊！',1,1) 
    G.call("talk",'',86,'   嘻嘻，你一个大老头子，却娶一个比自己女儿还要小的女娃做老婆，你羞也不羞，你才是为老不尊。乖乖，我看着也想倒胃，我还是四处转转，看看有没什么乐子吧。',1,1) 
    G.call("talk",'',8,'   爹爹，我去拦住那老人家，免得他在谷里生出事来。',1,1) 
    local int_选项 = 0
    while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{'1,跟【公孙绿萼】回去找周伯通','2,留下继续观礼'},0) 
        if int_选项 == 1 then  
            G.call('地图_进入地图','丹房',23,33)
            G.call("talk",'',8,'   那老者功夫也真是了得。咱们紧紧跟来，还是被他跑脱了...'..G.QueryName(0x10030001)[tostring(1)]..'公子，这是我爹爹的丹房，专门炼制药物的，我送你一些丹药，日后可能还会用的上。',1,1) 
            if G.call('get_item',242) == 0 then
                G.call('add_item',242,3)
            end  
            G.call('地图_进入地图','丹房',48,33)
            G.call("talk",'',8,'   啊——我怎么从不知道这丹房还藏有机关通到这里。'..G.QueryName(0x10030001)[tostring(1)]..'公子，你要小心了。',1,1) 
            G.call("talk",'',73,'   是什么人在这里鬼鬼祟祟，快给我滚出来！',1,1) 
            G.call("talk",'',8,'   娘！你...爹说您已经过世了，这究竟是怎么一回事？',1,1) 
            G.call("talk",'',73,'   这事说来话长。你们先背我出去，我自会跟那老不死当面说个清楚明白！',1,1) 
            G.call('地图_进入地图','绝情谷',47,35) 
            G.call("talk",'',73,'   公孙止！你还认得我吗？',1,1) 
            G.call("talk",'',158,'   萼儿，这是哪里来的疯婆子，给我轰出去，不要坏了喜堂的气氛！',1,1) 
            G.call("talk",'',73,'   呸！萼儿也是你叫的吗？她是我裘千尺的女儿，她没有你这个衣冠禽兽的爹！',1,1) 
            G.call("talk",'',158,'   你！你怎么还可能没死？',1,1) 
            G.call("talk",'',73,'   嘿嘿，阎王叫我上来找你下去，他才肯收我。我今天回来就是带走你的老命的。',1,1) 
            G.call("talk",'',158,'   老贼婆！当年你害死柔儿，还逼我吃绝情丹...只恨我当日念及夫妻情分只挑断你手筋脚筋，真该当时一剑就刺死你！',1,1) 
            G.call("talk",'',8,'   爹，你怎么可以这样对待娘亲。你们毕竟夫妻一场，怎么闹得生死相逼呢？',1,1) 
            G.call("talk",'',158,'   ！'..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..'是你救老贼婆出来的是也不是？你这万恶的小贼坏我大事，我今天就拿你血祭喜堂！',1,1) 
            G.call('all_over')
            G.call('call_battle',1,7,3,150,158,0,0,0,0,0)
            o_battle_结果 = G.call('get_battle') 
            if o_battle_结果  == 1 then
                G.call("talk",'',158,'   老贼婆！你请来好硬的帮手,我公孙止今日先解决了你！',1,1) 
                G.call('地图_进入地图','绝情谷',47,40) 
                G.call("talk",'',8,'   娘！爹！不要啊——',1,1) 
                G.call("talk",'',0,'   姑娘请节哀。你的父母如此这般这般死法，倒真是再也你分不开我，我分不开你了。他们这纠缠半世的孽债也算是有了了结',0,0) 
                if G.call('team_full') == false then    
                    G.call("talk",'',0,'   公孙姑娘，你父母既已过世，你又无依无靠，咱们总算是相识一场，就随同我一起游历江湖吧。',0,0) 
                    G.call("talk",'',8,'   也只好如此了，希望我父母在天之灵不要在相互仇怨了，女儿下辈子还做你们的孩子...',1,1) 
                    G.call('join',8)
                else
                    G.call("talk",'',0,'   姑娘双亲已逝，这绝情谷上下还须姑娘亲自打理。希望姑娘能早日振作起来。',0,0) 
                    G.call("talk",'',8,'   多谢'..G.QueryName(0x10030001)[tostring(1)]..'公子今日之恩，绿萼今生无缘相报，但愿来生为公子为奴为婢...这是【君子剑】【淑女剑】是我谷祖传利器，今日我赠与公子，祝公子早觅佳偶，共持此剑。',1,1) 
                    if G.call('get_item',20) == 0 then
                        G.call('add_item',20,1)
                    end 
                    if G.call('get_item',21) == 0 then
                        G.call('add_item',21,1)
                    end 
                end
            else
                G.call("talk",'',8,'   '..G.QueryName(0x10030001)[tostring(1)]..'公子，你快跑吧，我爹爹已动了杀机，再不跑你就没命了！',1,1) 
            end
        elseif int_选项 == 2 then  
            G.call('all_over') 
            G.call("talk",'',158,'   真是扫兴！婚礼就此结束，请各位自便吧。来谷每位宾客获赠我绝情谷特产——【断肠草】一株，聊做纪念。',1,1) 
            if G.call('get_item',284) == 0 then
                G.call('add_item',284,1)
            end 
        end
    end
    G.call('dark')
    G.call('goto_map',4)
end
t['聚贤庄任务_放荡形骸的浪子']=function()
    local o_rwdr = G.QueryName(0x1017000d)
    G.call('add_day',1)
    G.call('地图_进入地图','？？？？',3,11) 
    G.call("talk",'',2,'   小二！小二！给我那酒来！把你们店里最好的酒都给我拿来，要是敢兑水，我把你们的店铺给拆了！',1,1) 
    G.call("talk",'',2,'   你们这些都是什么狗屁酒！怕我喝了不付帐吗？现在华山派不要我，酒也没得喝，我这一生还有什么趣味...',1,1) 
    if G.call('get_item',189) > 0 and G.call('get_item',190) > 0  and G.call('get_item',191) > 0  and G.call('get_item',193) > 0 then
        G.call('add_item',189,-1)
        G.call('add_item',190,-1)
        G.call('add_item',191,-1)
        G.call('add_item',193,-1)
        G.call("talk",'',0,'   葡萄美酒夜光杯”“青旗沽酒趁梨花”...令狐兄喝酒却不用好器皿，看来是不懂得酒中三昧啊。',0,0) 
        G.call("talk",'',2,'   喝酒就喝酒咯，还要什么好器皿，江湖粗人哪有这般讲究...',1,1) 
        G.call("talk",'',0,'   非也非也，酒道如茶道。像你这般无论什么酒水都只盛在大海碗里，仰脖一灌，哪里还会品出什么酒之优劣高低。',0,0) 
        G.call("talk",'',2,'   愿闻其详...',1,1) 
        G.call("talk",'',0,'   葡萄酒需用夜光杯饮之，梨花酒需用翡翠杯，百草酒需用古铜杯，高粱酒需用青铜器...你且试试饮过可有不同？',0,0)    
        G.call('dark')
        G.call("talk",'',2,'   哈哈，妙极妙极。看来你才是酒道中人，我这几年的就算都是白喝了，今日才得知饮酒的真正乐趣。',1,1) 
        G.QueryName(0x10080009).是否完成 = true 
        o_rwdr.进度列表[9].完成 = 1
        G.Play(0x49010011,1,true,1) 
        if G.call('team_full') == false then 
            G.call("talk",'',0,'   看起来精神好了很多。不如咱们结伴而行，一起去尝遍天下美酒，你看如何？',0,0) 
            G.call("talk",'',2,'   我正是求之不得。人生短暂，整日自怨自艾实在不是我令狐冲的行径，咱们一起闯天下，喝美酒！',1,1) 
            G.call('join',2)
            --if G.call('get_point',8) ~= 3 then
            if G.call('get_point',8) ~= 3 then      
                G.call('set_roleskill',2,1,60)
                G.call('set_roleskill',2,2,37)
                G.call('set_roleskill',2,3,40)
                G.call('set_role',2,10,300)
                G.call('set_role',2,11,300)
                G.call('set_role',2,12,300)
            end
        else
            G.call("talk",'',0,'   看到令狐兄精神大为好转，我也就放心了。男儿应志在四方，一时的烦恼又何必总是牵挂心上',0,0) 
            G.call("talk",'',2,'   有了你今天请喝的几杯酒，再大的烦恼也已烟消云散了。我也正是要出去活动活动筋骨了。今日的恩情来日再报，咱们后会有期。',1,1) 
        end
    else
        G.call("talk",'',0,'   看来他是要借酒浇愁。可惜我身上没有那么多名酒请他喝，或许能从酒道上让他重新振作起来。',0,0) 
    end
    G.call('dark')
    G.call('goto_map',4)
end     
t['聚贤庄任务_王语嫣的悲哀']=function()
    local o_rwdr = G.QueryName(0x1017000d)
    G.call('地图_进入地图','？？？？',20,31) 
    G.call('add_day',10)
    G.call("talk",'',1,'   表哥，你当真要去西夏迎娶那位西夏公主吗？',1,1) 
    G.call("talk",'',30,'   这是自然。不管那西夏公主是美也好，是丑也罢，我都是志在必得。这是上天赐给我兴复大燕的绝好机会。我做了西夏驸马，手中就会握有数十万的兵权，到时，这些都会成为我兴复大燕国的资本！',1,1) 
    G.call("talk",'',1,'   表哥，难道你当真不懂我的心思吗？',1,1) 
    G.call("talk",'',30,'   我的好表妹，儿女私情事小，兴复大燕国的事大。我娶了西夏公主，虽然不能让你做正室，但是日后我自会多宠你一些。而且他日大燕复国，我就立时让你做正宫皇后，母仪天下...',1,1) 
    G.call("talk",'',1,'   大燕国...大燕国...你的眼里只有大燕国，那我又算得什么？我跟母亲闹翻就是为了出来寻你，要跟你在一起。现在你要去做西夏驸马...你可有考虑过我的感受。',1,1) 
    local int_选项 = 0
    while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{'1,劝阻慕容复去西夏迎亲','2,这是他们的家务事，我不好管，回去了'},0) 
        if int_选项 == 1 then
            G.QueryName(0x10080008).是否完成 = true 
            o_rwdr.进度列表[8].完成 = 1
            G.call("talk",'',30,'   你是什么人也配来管我慕容家的事情！你是想阻止我去西夏，然后你再轻轻松松的迎娶公主是吧。天下哪有这样便宜的事情，要想说服我，手底下功夫见吧！',1,1) 
            G.call('all_over')
            G.call('call_battle',1,20,1,120,30,0,0,0,0,0)
            o_battle_结果 = G.call('get_battle') 
            if o_battle_结果  == 1 then
                G.Play(0x4901001f, 1,true,1) 
                G.call("talk",'',30,'   好[小子]，看来你是真有心要跟我争抢这个西夏公主了！咱们走着瞧，我得不到的东西，别人也休想得到！',1,1) 
                G.call("talk",'',0,'   王姑娘，你怎么不跟你表哥一起离开？',0,0) 
                G.call("talk",'',1,'   表哥心里只有大燕国，从来不曾有我。我又何必再自寻烦恼...',1,1) 
                if G.call('team_full') == false then 
                    G.call("talk",'',0,'   "既然王姑娘暂时无处可去，可以随我同行，也好有个照应。',0,0) 
                    G.call("talk",'',1,'   我现在也不知道该去哪，那就先听你的吧。',1,1) 
                    G.call('join',1)
                else
                    G.call("talk",'',0,'   慕容公子日后定会回心转意想起王姑娘对他的好处来，总有一天会来找你，你可不要太难过了。',0,0) 
                    G.call("talk",'',1,'   多谢公子这般哄我开心，但是我心已死，我这就回曼陀山庄，以后再也不见表哥的面了。',1,1) 
                end
            else
                
                G.call("talk",'',30,'   我还以为你有多大的本事能拦我的前程，看来也不过如此。赶紧给我滚开吧，不要做碍眼的家伙！',1,1) 
            end
        elseif int_选项 == 2 then  
        end
    end
    G.call('dark')
    G.call('goto_map',4) 
end 
t['聚贤庄任务_归云庄英雄大会']=function()
    local o_rwdr = G.QueryName(0x1017000d)
    G.call('地图_进入地图','归云庄',46,51) 
    G.call('add_day',10)
    G.call("talk",'',122,'   诸位豪杰今日齐聚【归云庄】真是给我陆某莫大的面子。受武林同道之邀陆某在敝庄举办这届【英雄大会】，意在从武林同道之中推选一位德高望重的人来做【武林盟主】，领导群雄完成抵抗异族的侵略的使命！',1,1) 
    G.call("talk",'',141,'   我们南四奇一致推举丐帮的洪七公洪老爷子做【武林盟主】！他当年领导丐帮抗击清兵，威震华北；降龙掌和打狗棒法俱都是天下无敌；为人更是嫉恶如仇侠肝义胆，他老人家最是有资格做的。',1,1) 
    G.call("talk",'',167,'   洪老爷子本来最可做得这【武林盟主】，但是他老人家游若神龙，行踪不定，而且生性逍遥自在，连这丐帮帮主之位都不愿意做下去，想必这【武林盟主】之位更是不合他老人家的性子。',1,1) 
    G.call("talk",'',119,'   那便是少林的玄慈掌门、武当的宋远桥大侠都可担此重任',1,1)  
    G.call('地图_进入地图','归云庄',46,35) 
    G.call("talk",'',34,'   师兄，你闻到什么臭气没有？',1,1) 
    G.call("talk",'',121,'   我没有闻到啊，师弟你是说有人在放屁？',1,1) 
    G.call("talk",'',34,'   说什么和尚、道士、叫花子之类最适合做【武林盟主】，这不是放屁是什么？当今天下论智谋论声威论武功，谁能及的上咱们的师父大清国护国法师——金轮活佛！',1,1) 
    G.call("talk",'',122,'   我们推荐的 【武林盟主】正是要讨伐你们外族势力，夺回我们的大好河山。你们今天来自投落网，那是有恃无恐呢还是狂妄自大走错了门路？',1,1) 
    G.call("talk",'',34,'   小王今日来，一是拜会天下英雄；二是替家师向中原武林的朋友送下份战帖：只要你们当中有人能胜得过我师父，我们便尊他为【武林盟主】；你们当中如果无一人能胜我师父，那便得尊我师父为【武林盟主】！',1,1) 
    G.call("talk",'',141,'   陆庄主，这等狗贼还给他客气什么，只要你招呼一声，咱们大伙齐上，就把这什么金轮铁轮师徒几个大卸八块。为清狗效力的都不是什么好东西！',1,1) 
    G.call("talk",'',122,'   不可。他们以武林的规矩给我们下战帖，无论我们应不应下，都不该群斗他们，这样岂不叫他们番邦狗贼小看了咱们。在场的各位朋友，谁来下场会斗这几位远来的朋友？',1,1) 
    local int_选项 = 0
    while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{'1,陆庄主我来会会他们','2,这伙人极不好惹，我还是溜走吧'},0) 
        if int_选项 == 1 then 
            G.call("talk",'',34,'   好胆色，我先替师父接你第一场！',1,1) 
            G.call('all_over') 
            G.call('call_battle',1,43,1,100,34,0,0,0,0,0)
            o_battle_结果 = G.call('get_battle') 
            if o_battle_结果  == 1 then
                G.call("talk",'',121,'   好厉害的[小子]，我来接你这一场...',1,1) 
                G.call('all_over') 
                G.call('call_battle',1,43,1,100,121,0,0,0,0,0)
                o_battle_结果 = G.call('get_battle') 
                if o_battle_结果  == 1 then
                    G.call("talk",'',121,'   师父，这[小子]是大师兄转世，他的武功高出我很多，刚才我用藏语说“我是金轮国师的弟子”，他竟然也说是您的弟子，他一定是大师兄转世啦..',1,1) 
                    G.call("talk",'',81,'   达尔巴！他不是你大师兄转世，他是在学你说话。',1,1) 
                    G.call("talk",'',81,'   老衲便是金轮法王，[施主]打过了老衲的两个不争气徒儿倒确实令老衲很是意外。想不到中原武林还有你这样杰出的后辈。老衲今天可要领教领教。',1,1) 
                    G.call('all_over') 
                    G.call('call_battle',1,43,1,100,81,0,0,0,0,0)
                    o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then
                        G.Play(0x49010032, 1,true,1) 
                        G.call("talk",'',81,'   哼，你很好。霍都、达尔巴咱们走！',1,1) 
                        G.call("talk",'',122,'   小兄弟果然是少年英雄啊，今天一战必定扬名四海。我们就尊你是【武林盟主】了！',1,1) 
                        G.call('add_point',14,150)
                        G.call('set_CH','武林盟主')
                        G.call('set_note','归云庄英雄会，力挫金轮法王！')
                    else                   
                        G.call("talk",'',81,'   老衲念你功力练到如此境地实属不易，不忍下重手伤你，你走吧。这里已经没一个是老衲的对手了。',1,1) 
                    end
                else
                    G.call("talk",'',121,'   我胜了你，你得尊我师父为【武林盟主】。你们要是还有人不服气尽管来找我好了。',1,1) 
                end
            else
                G.call("talk",'',34,'   哈哈哈，你们怎么派个草包上场？你们没有能人了吗...',1,1) 
            end

        elseif int_选项 == 2 then 
        end 
    end
    G.QueryName(0x10080007).是否完成 = true 
    o_rwdr.进度列表[7].完成 = 1
    G.call('dark')
    G.call('goto_map',4) 
end 
t['聚贤庄任务_救治青翼蝠王']=function()
    local o_rwdr = G.QueryName(0x1017000d)
    G.call('地图_进入地图','？？？？',43,10)  
    G.call('add_day',5)
    if G.call('get_point',195) == 0x100b0050 then 
        G.call("talk",'',0,'   在这奇冷刺骨的地方，一般物种怎么能够生存。多亏我穿了【棉衣】，却也冻得瑟瑟发抖...',0,0) 
        G.Play(0x49010023, 1,true,1) 
        G.call("talk",'',47,'   江昂~~江昂~~~',1,1) 
        G.call("talk",'',0,'   莫非就是这个怪物？先干掉它再说！',0,0) 
        G.call('all_over') 
        G.call('call_battle',1,43,3,100,47,0,0,0,0,0)
        o_battle_结果 = G.call('get_battle') 
        if o_battle_结果  == 1 then
            G.call("talk",'',0,'   这怪物虽说凶猛，但怎是我的对手！把这个拿去给青翼蝠王，想必应该可以治好他的内伤吧。',0,0)  
            G.call('地图_进入地图','？？？？',45,50)  
            G.call("talk",'',151,'   太妙了。又可以饱食人血了，嘿嘿...',1,1) 
            G.call("talk",'',0,'   吸血蝙蝠，看我给你拿什么好东西来了！',0,0)
            G.call("talk",'',151,'   你这小鬼从哪弄来这种好东西，这【莽牯朱蛤】是至刚至阳的毒物，正好克制我体内的寒毒，这下老蝙蝠以后不用再吸食人血了。我就传你一门【寒冰绵掌】的功夫作为报答吧。',1,1) 
            G.QueryName(0x10080006).是否完成 = true 
            o_rwdr.进度列表[6].完成 = 1
            G.call('learnmagic',81)
            G.call('add_point',14,25)
            G.call('add_love',8,10)
        else
            G.call("talk",'',0,'   这个怪物真是厉害的很，看来我得回去先练几天功夫再来对付它！',0,0) 
        end
    else
        G.call("talk",'',0,'   这么冷的地方，得穿件【棉衣】来才行，不然冻都要被冻死了！',0,0) 
    end
    G.call('dark')
    G.call('goto_map',4) 
end    
t['聚贤庄任务_华山论剑']=function()
    local o_rwdr = G.QueryName(0x1017000d)
    G.call('地图_进入地图','华山之巅',99,1)  
    G.call('add_day',10)
    local gamer1 = {2,4,5,6,7,12,15,16,18,22}
    local gamer2 = {49,54,56,65,91,139,140,141,142,173}
    local gamer3 = {43,44,76,78,87,96,59,114,115,116}
    local gamer4 = {75,81,82,83,84,85,94,95,111,123}
    G.call("talk",'',38,'   感谢大家百忙之中来参加这次举世瞩目的盛会——【华山论剑】。本次报名参赛的有十一六名当世英雄，采用淘汰赛形式，最终决出当世【天下第一】的人物。即参赛者须得连胜四场，才能取得最后的胜利！',1,1) 
    G.call('all_over') 
    G.call('call_battle',1,81,1,100,gamer1[math.random(10)],0,0,0,0,0)
    o_battle_结果 = G.call('get_battle') 
    if o_battle_结果  == 1 then
        G.call("talk",'',38,'   第一场比赛，'..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..'胜出！下面开始第二场！',1,1) 
        G.call('all_over') 
        G.call('call_battle',1,81,1,100,gamer2[math.random(10)],0,0,0,0,0)
        o_battle_结果 = G.call('get_battle') 
        if o_battle_结果  == 1 then
            G.call("talk",'',38,'   第二场比赛，'..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..'胜出！下面开始第三场！',1,1) 
            G.call('all_over') 
            G.call('call_battle',1,81,1,100,gamer3[math.random(10)],0,0,0,0,0)
            o_battle_结果 = G.call('get_battle') 
            if o_battle_结果  == 1 then
                G.call("talk",'',38,'   第三场比赛，'..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..'胜出！下面开始第四场！',1,1) 
                G.call('all_over') 
                G.call('call_battle',1,81,1,100,gamer4[math.random(10)],0,0,0,0,0)
                o_battle_结果 = G.call('get_battle') 
                if o_battle_结果  == 1 then
                    G.call("talk",'',38,'   我宣布，最终胜利者是——'..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..'！他将获得【天下第一】的称号！',1,1) 
                    G.call('add_point',14,999)
                    G.call('set_CH','天下第一')
                    G.QueryName(0x10080005).是否完成 = true 
                    o_rwdr.进度列表[5].完成 = 1
                    G.call('set_note','华山之巅，比武论剑，天下第一，非我莫属！')
                else
                    G.call("talk",'',38,'   很遗憾，'..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..'在第最终决赛惨遭淘汰...',1,1) 
                end
            else
                G.call("talk",'',38,'   很遗憾，'..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..'在第三场比试就惨遭淘汰...',1,1) 
            end
        else
            G.call("talk",'',38,'   很遗憾，'..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..'在第二场比试就惨遭淘汰...',1,1) 
        end
    else
        G.call("talk",'',38,'   很遗憾，'..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..'在第一场比试就惨遭淘汰...',1,1) 
    end
    G.call('dark')
    G.call('goto_map',4) 

end
t['聚贤庄任务_落花流水恶斗血刀僧']=function()
    local o_rwdr = G.QueryName(0x1017000d)
    G.call('地图_进入地图','？？？？',42,1)  
    G.call('add_day',5)
    G.QueryName(0x10080004).是否完成 = true 
    o_rwdr.进度列表[4].完成 = 1
    G.call("talk",'',139,'   淫僧！都到这步田地了，你还能逃到哪去？今天我们【落花流水】就要为武林除害了！',1,1) 
    G.call("talk",'',140,'   大哥，还有他的徒弟，那个小淫僧！今日须得一并斩草除根，不然这厮日后定会效仿乃师，成为新的武林败类。',1,1) 
    G.call("talk",'',143,'   娘老子的，你家佛爷的生死倒是让你们给安排了。怎么就不问问我手里这口血刀答应不答应呢！',1,1) 
    G.call("talk",'',10,'   师父，这几位前辈都是江湖上的侠义之士，是一等一的好人，可不要伤了他们的性命！',1,1) 
    G.call("talk",'',143,'   呸！他们是好人我是恶人，现在是他们要杀我！连你也不会活命，你还要为他们求情。真他娘蠢的不可救药。',1,1) 
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{'1,帮【血刀老祖】赶走【落花流水】','2,帮【落花流水】赶走【血刀老祖】','3,太危险了，先闪人吧'},0) 
        if int_选项 == 1 then 
            G.call('all_over') 
            if G.call('get_magic',204) > 0 then 
                G.call("talk",'',0,'   师父！我来助你一臂之力。',0,0)  
                G.call('all_over') 
                G.call('call_battle',1,42,3,100,139,140,141,142,0,0)
                o_battle_结果 = G.call('get_battle') 
                if o_battle_结果  == 1 then
                    G.call("talk",'',139,'   没想到这淫僧来了这么硬的帮手，咱们可不做无谓牺牲。诸位兄弟，咱们先撤，日后再来会斗这淫僧师徒！',1,1) 
                    G.call("talk",'',143,'   来的还真是时候，我一对四个老混蛋还真是有点棘手呢。师父这口【血刀】】从此就是你的了。',1,1) 
                    if G.call('get_item',47) == 0 then
                        G.call('add_item',47,1)
                    end 
                    G.call('add_point',14,60)
                    G.call('add_point',15,-6)
                    G.call('set_note','大雪山，力挫南四奇【落花流水】！')
                else
                    G.call("talk",'',139,'   你这[小子]真是自不量力！我们今天不想多伤人命，就放你一条生路赶紧离开这吧！',1,1) 
                    G.call("talk",'',143,'   娘的，这[小子]看起来咋咋呼呼，哪知顶个屁用！还得我亲自料理这几个老混蛋。',1,1) 
                end
            else
                G.call("talk",'',0,'   和尚！我来助你一臂之力。',0,0)  
                G.call('all_over') 
                G.call('call_battle',1,42,3,100,139,140,141,142,0,0)
                o_battle_结果 = G.call('get_battle') 
                if o_battle_结果  == 1 then
                    G.call("talk",'',139,'   没想到这淫僧来了这么硬的帮手，咱们可不做无谓牺牲。诸位兄弟，咱们先撤，日后再来会斗这淫僧！',1,1) 
                    G.call("talk",'',143,'   [小子]，你来的还真是时候，我一对四个老混蛋还真是有点棘手呢。我向来不欠人情，你救了我们师徒，我这口【血刀】和【血刀秘籍】从此就是你的了。',1,1) 
                    if G.call('get_item',47) == 0 then
                        G.call('add_item',47,1)
                    end 
                    if G.call('get_item',105) == 0 then
                        G.call('add_item',105,1)
                    end 
                    G.call('add_point',14,60)
                    G.call('add_point',15,-6)
                    G.call('set_note','大雪山，力挫南四奇【落花流水】！')
                else
                    G.call("talk",'',139,'   你这[小子]真是自不量力！我们今天不想多伤人命，就放你一条生路赶紧离开这吧！',1,1) 
                    G.call("talk",'',143,'   娘的，这[小子]看起来咋咋呼呼，哪知顶个屁用！还得我亲自料理这几个老混蛋。',1,1) 
                end
            end
        elseif int_选项 == 2 then 
            G.call('all_over') 
            if G.call('get_point',8) == 7 then 
                G.call("talk",'',143,'   你这欺师灭祖的东西,今日我就清理门户！',1,1) 
                G.call('all_over') 
                G.call('call_battle',1,42,3,100,143,0,0,0,0,0)
                o_battle_结果 = G.call('get_battle') 
                if o_battle_结果  == 1 then
                    G.call("talk",'',140,'   好可惜，这血刀老祖跑的真快。',1,1) 
                    G.call('all_over') 
                    G.call("talk",'',0,'   得到【血刀】和【唐诗选辑】！',0,0) 
                    G.call('add_point',14,75)
                    G.call('add_point',15,3)
                    if G.call('get_item',47) == 0 then
                        G.call('add_item',47,1)
                    end 
                    if G.call('get_item',265) == 0 then
                        G.call('add_item',265,1)
                    end 
                    G.call('set_note','大雪山，大战血刀老祖！')
                else
                    G.call("talk",'',0,'   这秃驴真是很难对付，想来我的功夫还没练到家。',0,0) 
                    G.call("talk",'',139,'   以后还是不要随便插手江湖恩怨的好，在这里碍手碍脚，小心葬送自己的小命！',1,1) 
                end
            else
                G.call("talk",'',0,'   大秃驴，不要猖狂！长得这么丑也来吓唬人，我要跟你拼啦！',0,0) 
                G.call('all_over') 
                G.call('call_battle',1,42,3,100,143,0,0,0,0,0)
                o_battle_结果 = G.call('get_battle') 
                if o_battle_结果  == 1 then
                    G.call("talk",'',140,'   好可惜，这血刀老祖跑的真快。他那个徒弟也是帮凶，不能放过他！',1,1) 
                    local int_选项 = 0
                    while int_选项 == 0 do
                        int_选项 = G.call("menu",'',0,'',0,0,{'1,杀【狄云】','2,不杀【狄云】'},0) 
                        if int_选项 == 1 then 
                            G.call('all_over') 
                            G.call("talk",'',0,'   得到【血刀】和【唐诗选辑】！',0,0) 
                            G.call('add_point',14,75)
                            G.call('add_point',15,3)
                            if G.call('get_item',47) == 0 then
                                G.call('add_item',47,1)
                            end 
                            if G.call('get_item',265) == 0 then
                                G.call('add_item',265,1)
                            end 
                            G.call('set_note','大雪山，亲手除掉狄云！')
                        elseif int_选项 == 2 then
                            G.call('all_over')  
                            G.call("talk",'',140,'   小兄弟怎么不杀那个小的？',1,1) 
                            G.call("talk",'',0,'   这个小兄弟看着还不错，干嘛要杀掉？',0,0) 
                            G.call('add_point',14,75)
                            G.call('add_point',15,1)
                            if G.call('team_full') == false then 
                                G.call('join',10)
                                G.call("talk",'',10,'   大哥，从今往后我就跟你混了。我的前任大哥曾送了我一本《神照经》秘籍，我不识字，那就把书孝敬给大哥你了吧。我师父当年给我一本《唐诗选辑》，我至今也不知有什么用处，也赠予大哥吧。',1,1) 
                                if G.call('get_item',100) == 0 then
                                    G.call('add_item',100,1)
                                end 
                                if G.call('get_item',76) == 0 then
                                    G.call('add_item',76,1)
                                end 
                                if G.call('get_item',265) == 0 then
                                    G.call('add_item',265,1)
                                end 
                            else
                                if G.call('get_item',265) == 0 then
                                    G.call('add_item',265,1)
                                end 
                                G.call("talk",'',10,'   大哥的队伍没有空挡了，看来大哥是不想让小弟做您的亲随了。人生悲苦如斯，夫复何求。我师父当年给我一本《唐诗选辑》，我至今也不知有什么用处，就赠予大哥吧。大哥你要多保重...',1,1) 
                            end

                        end
                    end
                else
                    G.call("talk",'',0,'   这秃驴真是很难对付，想来我的功夫还没练到家。',0,0) 
                    G.call("talk",'',139,'   以后还是不要随便插手江湖恩怨的好，在这里碍手碍脚，小心葬送自己的小命！',1,1) 
                end
            end
        elseif int_选项 == 3 then  
            G.call('all_over')    
        end
    end
    G.call('dark')
    G.call('goto_map',4) 
end    
t['聚贤庄任务_唐诗选辑的秘密']=function()
    local o_rwdr = G.QueryName(0x1017000d)
    G.call('地图_进入地图','密室',24,33)  
    G.call('add_day',1)
    G.Play(0x49010021,1,true,1) 
    if G.call('get_item',265) > 0 then 
        G.call("talk",'',0,'   "我得到的这本《唐诗选辑》究竟有什么不同呢？咦？！原来是这样哦..',0,0)   
        G.call('dark')
        if G.call('get_magic',210) == 0  and G.call('get_point',35) >= 100 then 
            G.call("talk",'',0,'   原来这里面还隐藏这这门剑法！',0,0) 
            G.call('learnmagic',210)
        else
            G.call('add_money',5000)
            G.call('add_item',265,-G.call('get_item',265)) 
            G.call("talk",'',0,'   得到【五千两白银】！这么轻松白捡了便宜，虽说数目少点，不过也值了。',0,0) 
        end  
        G.QueryName(0x10080003).是否完成 = true 
        o_rwdr.进度列表[3].完成 = 1
    else 
        G.call("talk",'',0,'   那本《唐诗选辑》究竟会有什么不同呢？市面上的各个版本都被我翻遍了，也看不出任何蛛丝马迹。',0,0) 
    end  
    G.call('dark')
    G.call('goto_map',4)    
end 
t['聚贤庄任务_闯王宝藏的秘密']=function()
    local o_rwdr = G.QueryName(0x1017000d)
    G.call('add_day',1)
    G.call('地图_进入地图','密室',24,33)  
    if G.call('get_item',264) > 0 then 
        G.call("talk",'',0,'   我已得到了【闯王宝藏图】，接下来开去寻找传说的【闯王宝藏】了。',0,0)   
        G.call('dark')
        if G.call('get_item',29) == 0 then
            G.call('add_item',29,1)
        end 
        if G.call('get_item',55) == 0 then
            G.call('add_item',55,1)
        end 
        if G.call('get_item',59) == 0 then
            G.call('add_item',59,1)
        end 
        if G.call('get_item',71) == 0 then
            G.call('add_item',71,100)
        end 
        G.call('add_item',264,-G.call('get_item',264)) 
        G.call("talk",'',0,'   得到【倚天剑】【屠龙刀】【打狗棒】【霹雳雷火弹】！难道这是闯王的军火库啊。',0,0)  
        G.QueryName(0x10080002).是否完成 = true 
        o_rwdr.进度列表[2].完成 = 1
    else 
        G.call("talk",'',0,'   得不到【闯王宝藏图】终究一辈子寻不到宝藏，又是白忙活了。',0,0) 
    end  
    G.call('dark')
    G.call('goto_map',4)    
end  
t['聚贤庄任务_四十二章经的秘密']=function()
    local o_rwdr = G.QueryName(0x1017000d)
    G.call('add_day',1)
    G.call('地图_进入地图','密室',24,33)  
    G.Play(0x49010021,1,true,1) 
    local n  = 0
    for i = 246,253 do 
       if G.call('get_item',i) > 0 then 
          n = n + 1
       end 
    end 
    if n == 8 then 
        G.call("talk",'',0,'   我已经集齐了这八本《四十二章经》，原来藏宝图就是每本经书里的碎羊皮！',0,0) 
        G.call('dark')
        G.call('add_money',100000)
        G.call("talk",'',0,'   得到【十万两银子】！这下我可发财了！',0,0)  
        for i = 246,253 do 
            G.call('add_item',i,-G.call('get_item',i))    
        end 
        G.QueryName(0x10080001).是否完成 = true 
        o_rwdr.进度列表[1].完成 = 1
    else 
        G.call("talk",'',0,'   看来得需要把八本《四十二章经》凑齐才能发现秘密。我还没有凑齐，白耽误功夫了。',0,0) 
    end  
    G.call('dark')
    G.call('goto_map',4)    
end    
t['聚贤庄任务_镖车被劫']=function()
    local n = math.random(19,22)
    local a = (230 - 224)*6 + 265
    local b = (228 - 224)*6 + 265
    local m = math.random(6)
    local o = math.random(3)
    local diffty = math.random(2,11)*10
    G.call('地图_进入地图','？？？？',n,33)  
    G.call('add_day',1)
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{'1,帮镖师保护镖银','2,帮土匪夺取镖银','3,两不想帮，独吞镖银'},0) 
        if int_选项 == 1 then 
            G.call('all_over') 
            if m == 1 then 
                 G.call('call_battle',1,n,3,diffty,a,0,0,0,0,0)
            elseif m == 2 then 
                G.call('call_battle',1,n,3,diffty,a,a+1,0,0,0,0)
            elseif m == 3 then 
                G.call('call_battle',1,n,3,diffty,a,a+1,a+2,0,0,0)
            elseif m == 4 then 
                G.call('call_battle',1,n,3,diffty,a,a+1,a+2,a+3,0,0)
            elseif m == 5 then 
                G.call('call_battle',1,n,3,diffty,a,a+1,a+2,a+3,a+4,0)
            elseif m == 6 then 
                G.call('call_battle',1,n,3,diffty,a,a+1,a+2,a+3,a+4,a+5)
            end
            o_battle_结果 = G.call('get_battle')
            if o_battle_结果  == 1 then 
                G.call("talk",'镖  师',228,'   多谢[大侠]出手相助，这点谢礼不成敬意，务请收下。',1,1) 
                G.call('add_point',15,5)
                G.call('add_money',math.random(100))
            else
                G.call("talk",'',0,'   大家都是出来混的，何必动刀动枪呢，伤了和气呢。如果一定要动的话，这里没我什么事了，等我走了你们再继续。',0,0) 
            end 
        elseif int_选项 == 2 then 
            G.call('all_over') 
            if m == 1 then 
                G.call('call_battle',1,n,3,diffty*4,b,0,0,0,0,0)
            elseif m == 2 then 
                G.call('call_battle',1,n,3,diffty*4,b,b+1,0,0,0,0)
            elseif m == 3 then 
                G.call('call_battle',1,n,3,diffty*4,b,b+1,b+2,0,0,0)
            elseif m == 4 then 
                G.call('call_battle',1,n,3,diffty*4,b,b+1,b+2,b+3,0,0)
            elseif m == 5 then 
                G.call('call_battle',1,n,3,diffty*4,b,b+1,b+2,b+3,b+4,0)
            elseif m == 6 then 
                G.call('call_battle',1,n,3,diffty*4,b,b+1,b+2,b+3,b+4,b+5)
            end
            o_battle_结果 = G.call('get_battle')
            if o_battle_结果  == 1 then 
                G.call("talk",'强  盗',228,'   多谢兄弟出手相助，这点谢礼不成敬意，务请收下。',1,1) 
                G.call('add_point',15,-8)
                G.call('add_money',math.random(500))
            else
                G.call("talk",'',0,'   大家都是出来混的，何必动刀动枪呢，伤了和气呢。如果一定要动的话，这里没我什么事了，等我走了你们再继续。',0,0) 
            end 
        elseif int_选项 == 3 then 
            G.call('all_over')   
            if o == 1 then 
                G.call('call_battle',1,n,3,diffty*3,b,a,0,0,0,0)
            elseif o == 2 then 
                G.call('call_battle',1,n,3,diffty*3,b,a,a+1,b+1,0,0)
            elseif o == 3 then
                G.call('call_battle',1,n,3,diffty*3,b,a,a+1,b+1,a+2,b+2)
            end  
            o_battle_结果 = G.call('get_battle')
            if o_battle_结果  == 1 then 
                G.call("talk",'',0,'   这些银子全是我的，谁也别想跟我抢！',0,0) 
                G.call('add_point',15,-12)
                G.call('add_money',math.random(1000))
            else
                G.call("talk",'',0,'   大家都是出来混的，何必动刀动枪呢，伤了和气呢。如果一定要动的话，这里没我什么事了，等我走了你们再继续。',0,0) 
            end 
           
        end       
        G.call('dark')
        G.call('goto_map',4) 
    end         

end    
t['聚贤庄任务_爪下白骨']=function()
    local n = math.random(19,22)
    local diffty = math.random(3,13)*10
    G.call('add_day',1)
    G.call('地图_进入地图','？？？？',n,33)  
    G.call("talk",'',0,'   梅超风，你杀伤人命，天理不容！',0,0) 
    G.call('all_over') 
    G.call('call_battle',1,n,3,diffty,89,0,0,0,0,0)
    o_battle_结果 = G.call('get_battle')
    if o_battle_结果  == 1 then 
        G.call("talk",'',89,'   臭[小子]你坏我好事，下次要你的小命！',1,1) 
        G.call('add_point',15,math.random(10))
    else
        G.call("talk",'',89,'   草包一个，也学人家强出头，真是可笑！',1,1) 
    end 
    G.call('dark')
    G.call('goto_map',4) 
end 
t['聚贤庄任务_阮姓何辜']=function()
    local n = math.random(19,22)
    local diffty = math.random(3,13)*10
    G.call('add_day',1)
    G.call('地图_进入地图','？？？？',n,33)  
    G.call("talk",'',0,'   李莫愁，你杀伤人命，天理不容！',0,0) 
    G.call('all_over') 
    G.call('call_battle',1,n,3,diffty,135,0,0,0,0,0)
    o_battle_结果 = G.call('get_battle')
    if o_battle_结果  == 1 then 
        G.call("talk",'',135,'   臭[小子]你坏我好事，下次要你的小命！',1,1) 
        G.call('add_point',15,math.random(10))
    else
        G.call("talk",'',135,'   草包一个，也学人家强出头，真是可笑！',1,1) 
    end 
    G.call('dark')
    G.call('goto_map',4) 
end 
t['聚贤庄任务_丐帮与星宿的恶斗']=function()
    local n = math.random(19,22)
    local a = (240 - 224)*6 + 265
    local b = (237 - 224)*6 + 265
    local m = math.random(6)
    local o = math.random(3)
    local diffty = math.random(3,21)*10
    G.call('地图_进入地图','？？？？',n,33)  
    G.call('add_day',1)
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{'1,帮丐帮弟子打星宿派','2,帮星宿打丐帮弟子','3,两不相帮，两派一起打'},0) 
        if int_选项 == 1 then 
            G.call('all_over') 
            if m == 1 then 
                 G.call('call_battle',1,n,3,diffty,a,0,0,0,0,0)
            elseif m == 2 then 
                G.call('call_battle',1,n,3,diffty,a,a+1,0,0,0,0)
            elseif m == 3 then 
                G.call('call_battle',1,n,3,diffty,a,a+1,a+2,0,0,0)
            elseif m == 4 then 
                G.call('call_battle',1,n,3,diffty,a,a+1,a+2,a+3,0,0)
            elseif m == 5 then 
                G.call('call_battle',1,n,3,diffty,a,a+1,a+2,a+3,a+4,0)
            elseif m == 6 then 
                G.call('call_battle',1,n,3,diffty,a,a+1,a+2,a+3,a+4,a+5)
            end
            o_battle_结果 = G.call('get_battle')
            if o_battle_结果  == 1 then 
                G.call("talk",'',0,'   你们这群星宿派的垃圾，真是浪费我时间！',0,0) 
                G.call('add_point',15,2)
                G.call('schoollove',6,5)
                G.call('schoollove',7,-5)
            else
                G.call("talk",'',0,'   江湖纷争，关我鸟事！待我走后，你们继续。',0,0) 
            end 
        elseif int_选项 == 2 then 
            G.call('all_over') 
            if m == 1 then 
                G.call('call_battle',1,n,3,diffty,b,0,0,0,0,0)
            elseif m == 2 then 
                G.call('call_battle',1,n,3,diffty,b,b+1,0,0,0,0)
            elseif m == 3 then 
                G.call('call_battle',1,n,3,diffty,b,b+1,b+2,0,0,0)
            elseif m == 4 then 
                G.call('call_battle',1,n,3,diffty,b,b+1,b+2,b+3,0,0)
            elseif m == 5 then 
                G.call('call_battle',1,n,3,diffty,b,b+1,b+2,b+3,b+4,0)
            elseif m == 6 then 
                G.call('call_battle',1,n,3,diffty,b,b+1,b+2,b+3,b+4,b+5)
            end  
            o_battle_结果 = G.call('get_battle')
            if o_battle_结果  == 1 then 
                G.call("talk",'',0,'   你们这群星宿派的垃圾，真是浪费我时间！',0,0) 
                G.call('add_point',15,-2)
                G.call('schoollove',6,-5)
                G.call('schoollove',7,5)
            else
                G.call("talk",'',0,'   江湖纷争，关我鸟事！待我走后，你们继续。',0,0) 
            end 
        elseif int_选项 == 3 then 
            G.call('all_over')   
            if o == 1 then 
                G.call('call_battle',1,n,3,diffty,b,a,0,0,0,0)
            elseif o == 2 then 
                G.call('call_battle',1,n,3,diffty,b,a,a+1,b+1,0,0)
            elseif o == 3 then
                G.call('call_battle',1,n,3,diffty,b,a,a+1,b+1,a+2,b+2)
            end  
            o_battle_结果 = G.call('get_battle')
            if o_battle_结果  == 1 then 
                G.call("talk",'',0,'   你们这群丐帮的草包，真是浪费我时间！',0,0) 
                G.call('add_point',15,-2)
                G.call('schoollove',6,-5)
                G.call('schoollove',7,-5)
            else
                G.call("talk",'',0,'   江湖纷争，关我鸟事！待我走后，你们继续。',0,0) 
            end 
           
        end       
        G.call('dark')
        G.call('goto_map',4) 
    end 
end 
t['聚贤庄任务_少林与武当的恶斗']=function()
    local n = math.random(19,22)
    local a = 253
    local b = (239 - 224)*6 + 265
    local m = math.random(6)
    local o = math.random(3)
    local diffty = math.random(3,21)*10
    G.call('地图_进入地图','？？？？',n,33)  
    G.call('add_day',1)
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{'1,帮少林打武当弟子','2,帮武当打少林弟子','3,两不相帮，两派一起打'},0) 
        if int_选项 == 1 then 
            G.call('all_over') 
            if m == 1 then 
                 G.call('call_battle',1,n,3,diffty,a,0,0,0,0,0)
            elseif m == 2 then 
                G.call('call_battle',1,n,3,diffty,a,a+1,0,0,0,0)
            elseif m == 3 then 
                G.call('call_battle',1,n,3,diffty,a,a+1,a+2,0,0,0)
            elseif m == 4 then 
                G.call('call_battle',1,n,3,diffty,a,a+1,a+2,a+3,0,0)
            elseif m == 5 then 
                G.call('call_battle',1,n,3,diffty,a,a+1,a+2,a+3,a+4,0)
            elseif m == 6 then 
                G.call('call_battle',1,n,3,diffty,a,a+1,a+2,a+3,a+4,a+5)
            end
            o_battle_结果 = G.call('get_battle')
            if o_battle_结果  == 1 then 
                G.call("talk",'',0,'   你们武当派最是让人讨厌，见一次我就要教训一次。',0,0) 
                G.call('add_point',15,2)
                G.call('schoollove',1,5)
                G.call('schoollove',2,-5)
            else
                G.call("talk",'',0,'   江湖纷争，关我鸟事！待我走后，你们继续。',0,0) 
            end 
        elseif int_选项 == 2 then 
            G.call('all_over') 
            if m == 1 then 
                G.call('call_battle',1,n,3,diffty,b,0,0,0,0,0)
            elseif m == 2 then 
                G.call('call_battle',1,n,3,diffty,b,b+1,0,0,0,0)
            elseif m == 3 then 
                G.call('call_battle',1,n,3,diffty,b,b+1,b+2,0,0,0)
            elseif m == 4 then 
                G.call('call_battle',1,n,3,diffty,b,b+1,b+2,b+3,0,0)
            elseif m == 5 then 
                G.call('call_battle',1,n,3,diffty,b,b+1,b+2,b+3,b+4,0)
            elseif m == 6 then 
                G.call('call_battle',1,n,3,diffty,b,b+1,b+2,b+3,b+4,b+5)
            end
            o_battle_结果 = G.call('get_battle')
            if o_battle_结果  == 1 then 
                G.call("talk",'',0,'   你们少林派最是让人讨厌，见一次我就要教训一次。',0,0) 
                G.call('add_point',15,-2)
                G.call('schoollove',1,-5)
                G.call('schoollove',2,5)
            else
                G.call("talk",'',0,'   江湖纷争，关我鸟事！待我走后，你们继续。',0,0) 
            end 
        elseif int_选项 == 3 then 
            G.call('all_over')   
            if o == 1 then 
                G.call('call_battle',1,n,3,diffty,b,a,0,0,0,0)
            elseif o == 2 then 
                G.call('call_battle',1,n,3,diffty,b,a,a+1,b+1,0,0)
            elseif o == 3 then
                G.call('call_battle',1,n,3,diffty,b,a,a+1,b+1,a+2,b+2)
            end  
            if o_battle_结果  == 1 then 
                G.call("talk",'',0,'   你们两派合攻，也不是我的对手，哈哈哈哈！',0,0) 
                G.call('add_point',15,-2)
                G.call('add_schoollove',1,-5)
                G.call('add_schoollove',2,-5)
            else
                G.call("talk",'',0,'   江湖纷争，关我鸟事！待我走后，你们继续。',0,0) 
            end 
           
        end       
        G.call('dark')
        G.call('goto_map',4) 
    end 
end 

t['聚贤庄任务_全真与古墓的恶斗']=function()
    local n = math.random(19,22)
    local a = 379
    local b = 259
    local m = math.random(6)
    local o = math.random(3)
    local diffty = math.random(3,21)*10
    G.call('地图_进入地图','？？？？',n,33)  
    G.call('add_day',1)
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{'1,帮全真弟子打古墓弟子','2,帮古墓打全真弟子','3,两不相帮，两派一起打'},0) 
        if int_选项 == 1 then 
            G.call('all_over') 
            if m == 1 then 
                 G.call('call_battle',1,n,3,diffty,a,0,0,0,0,0)
            elseif m == 2 then 
                G.call('call_battle',1,n,3,diffty,a,a+1,0,0,0,0)
            elseif m == 3 then 
                G.call('call_battle',1,n,3,diffty,a,a+1,a+2,0,0,0)
            elseif m == 4 then 
                G.call('call_battle',1,n,3,diffty,a,a+1,a+2,a+3,0,0)
            elseif m == 5 then 
                G.call('call_battle',1,n,3,diffty,a,a+1,a+2,a+3,a+4,0)
            elseif m == 6 then 
                G.call('call_battle',1,n,3,diffty,a,a+1,a+2,a+3,a+4,a+5)
            end
            o_battle_结果 = G.call('get_battle')
            if o_battle_结果  == 1 then 
                G.call("talk",'',0,'   你们古墓派最是让人讨厌，见一次我就要教训一次。',0,0) 
                G.call('add_point',15,2)
                G.call('schoollove',4,5)
                G.call('schoollove',5,-5)
            else
                G.call("talk",'',0,'   江湖纷争，关我鸟事！待我走后，你们继续。',0,0) 
            end 
        elseif int_选项 == 2 then 
            G.call('all_over') 
            if m == 1 then 
                G.call('call_battle',1,n,3,diffty,b,0,0,0,0,0)
            elseif m == 2 then 
                G.call('call_battle',1,n,3,diffty,b,b+1,0,0,0,0)
            elseif m == 3 then 
                G.call('call_battle',1,n,3,diffty,b,b+1,b+2,0,0,0)
            elseif m == 4 then 
                G.call('call_battle',1,n,3,diffty,b,b+1,b+2,b+3,0,0)
            elseif m == 5 then 
                G.call('call_battle',1,n,3,diffty,b,b+1,b+2,b+3,b+4,0)
            elseif m == 6 then 
                G.call('call_battle',1,n,3,diffty,b,b+1,b+2,b+3,b+4,b+5)
            end
            o_battle_结果 = G.call('get_battle')
            if o_battle_结果  == 1 then 
                G.call("talk",'',0,'   你们全真派最是让人讨厌，见一次我就要教训一次。',0,0) 
                G.call('add_point',15,-2)
                G.call('schoollove',4,-5)
                G.call('schoollove',5,5)
            else
                G.call("talk",'',0,'   江湖纷争，关我鸟事！待我走后，你们继续。',0,0) 
            end 
        elseif int_选项 == 3 then 
            G.call('all_over')   
            if o == 1 then 
                G.call('call_battle',1,n,3,diffty,b,a,0,0,0,0)
            elseif o == 2 then 
                G.call('call_battle',1,n,3,diffty,b,a,a+1,b+1,0,0)
            elseif o == 3 then
                G.call('call_battle',1,n,3,diffty,b,a,a+1,b+1,a+2,b+2)
            end  
            o_battle_结果 = G.call('get_battle')
            if o_battle_结果  == 1 then 
                G.call("talk",'',0,'   你们两派合攻，也不是我的对手，哈哈哈哈！',0,0) 
                G.call('add_point',15,-2)
                G.call('add_schoollove',4,-5)
                G.call('add_schoollove',5,-5)
            else
                G.call("talk",'',0,'   江湖纷争，关我鸟事！待我走后，你们继续。',0,0) 
            end 
           
        end       
        G.call('dark')
        G.call('goto_map',4) 
    end 
end 
t['聚贤庄任务_官逼民受苦']=function()
    local n = math.random(19,22)
    local a = (228 - 224)*6 + 265
    local b = (227 - 224)*6 + 265
    local m = math.random(6)
    local diffty = math.random(3,21)*10
    G.call('地图_进入地图','？？？？',n,33)  
    G.call('add_day',1)
    local int_选项 = 0
	while int_选项 == 0 do
        int_选项 = G.call("menu",'',0,'',0,0,{'1,帮官兵欺负百姓','2,帮百姓殴打官兵'},0) 
        if int_选项 == 1 then 
            G.call('all_over') 
            if m == 1 then 
                 G.call('call_battle',1,n,3,diffty,a,0,0,0,0,0)
            elseif m == 2 then 
                G.call('call_battle',1,n,3,diffty,a,a+1,0,0,0,0)
            elseif m == 3 then 
                G.call('call_battle',1,n,3,diffty,a,a+1,a+2,0,0,0)
            elseif m == 4 then 
                G.call('call_battle',1,n,3,diffty,a,a+1,a+2,a+3,0,0)
            elseif m == 5 then 
                G.call('call_battle',1,n,3,diffty,a,a+1,a+2,a+3,a+4,0)
            elseif m == 6 then 
                G.call('call_battle',1,n,3,diffty,a,a+1,a+2,a+3,a+4,a+5)
            end
            o_battle_结果 = G.call('get_battle')
            if o_battle_结果  == 1 then 
                G.call("talk",'',0,'   你们这伙刁民，带这么多银子上路，还不赶快给大爷留下一些！',0,0) 
                G.call('add_point',15,-15)
            else
                G.call("talk",'',0,'   江湖纷争，关我鸟事！待我走后，你们继续。',0,0) 
            end 
        elseif int_选项 == 2 then 
            G.call('all_over') 
            if m == 1 then 
                G.call('call_battle',1,n,3,diffty,b,0,0,0,0,0)
            elseif m == 2 then 
                G.call('call_battle',1,n,3,diffty,b,b+1,0,0,0,0)
            elseif m == 3 then 
                G.call('call_battle',1,n,3,diffty,b,b+1,b+2,0,0,0)
            elseif m == 4 then 
                G.call('call_battle',1,n,3,diffty,b,b+1,b+2,b+3,0,0)
            elseif m == 5 then 
                G.call('call_battle',1,n,3,diffty,b,b+1,b+2,b+3,b+4,0)
            elseif m == 6 then 
                G.call('call_battle',1,n,3,diffty,b,b+1,b+2,b+3,b+4,b+5)
            end
            o_battle_结果 = G.call('get_battle')
            if o_battle_结果  == 1 then 
                G.call("talk",'',0,'   这们这群鱼肉百姓的狗官狗兵，简直比强盗还要可恶，下次再让我见到，我还要好好的教训你们！',0,0) 
                G.call('add_point',15,10)
            else
                G.call("talk",'',0,'   江湖纷争，关我鸟事！待我走后，你们继续。',0,0) 
            end 

           
        end       
        G.call('dark')
        G.call('goto_map',4) 
    end 
end   
t['聚贤庄任务_神秘商人']=function()
    local o_htyw = G.QueryName(0x1017000b) 
    local o = math.random(19,22)
    G.call('地图_进入地图','？？？？',o,33) 
    G.call("talk",'',148,'   小号一向是货真价实，赔本赚吆喝。今天你要买什么？',2,1) 
    if G.call('通用_神秘商店') then 
        G.call('add_point',36,1)
        G.call('add_love',148,2)
        if o_htyw.完成 == 0 then
            G.call('set_newpoint',80,G.call('get_newpoint',80)- 1   )
            o_htyw.进度列表[1].当前进度 = o_htyw.进度列表[1].当前进度 + 1
        end
        if math.random(100) == 1 then
            G.call("talk",'',148,'   为答谢顾客，本店免费赠品附送与你！',2,1)
            G.call('add_item',235,1)
        end
    end
    G.call("talk",'',148,'   多谢惠顾小号，下次定会以更低廉的价格服务于老客户。',2,1)
 
    -- local item = {27,53,232,240,85,81,85,260,86,85,88,90,284,142,144,147,148,120}
    -- local n = math.random(#item)
    -- if G.call('get_point',237) > 1 then 
    --     item = {27,53,62,71,77,233,242,243,91,85,81,85,260,86,85,88,91,90,91,284,91,142,144,147,148,120,129,283}
    --     n = math.random(#item)
    -- end    
    -- local int_讲价 = G.call('get_point',36)/4
    -- if G.call('通用_取得我方装备特效',411) then 
    --     int_讲价 = int_讲价 + 25
    -- end
    -- local o_item = G.QueryName(0x100B0000+item[n]-1)
    -- local num = 0
    -- local p = ''
    -- if o_item.类别 == 1 or o_item.类别 == 3 or o_item.类别 == 4 then
    --     p = '一件'
    --     num = 1
    -- elseif o_item.类别 == 2 then
    --     p = '一百枚'  
    --     num = 100
    -- elseif o_item.类别 == 5 then
    --     p = '一本'  
    --     num = 1
    -- elseif o_item.类别 == 9 then
    --     p = '十枚'  
    --     num = 10
    -- elseif o_item.类别 == 10 or o_item.类别 == 11 then
    --     p = '一个'  
    --     num = 1
    -- end
    -- local pice = 0
    -- if o_item.类别 == 1 or o_item.类别 == 3  or o_item.类别 == 4 then
    --     pice = math.floor(o_item.买价 *(100-int_讲价)/100)
    -- elseif o_item.类别 == 2 then
    --     pice = math.floor(o_item.买价 *(100-int_讲价)/100)*100  
    -- elseif o_item.类别 == 5 then
    --     pice = math.floor(o_item.买价 *(100-int_讲价)/100) 
    -- elseif o_item.类别 == 9 then
    --     pice = math.floor(o_item.买价 *(100-int_讲价)/100)*10
    -- elseif o_item.类别 == 10 or o_item.类别 == 11 then
    --     pice =  math.floor(o_item.买价 *(100-int_讲价)/100) 
    -- end
    -- G.call("talk",'',148,'   小号一向是货真价实，赔本赚吆喝。今天我要卖的是“【'..o_item.名称..'】'..p..'”,售价'..pice..'两银子，你要不要买啊？(个别物品只有二周目才能买到)',2,1) 
    -- local o_htyw = G.QueryName(0x1017000b) 
    -- local int_选项 = 0
    -- while int_选项 == 0 do
    --     int_选项 = G.call("menu",'',0,'',0,0,{"1,花钱购买","2,武力购买","3,不是我想要的,不买"},0)
    --     if int_选项 == 1 then
    --         if G.call('get_money') >= pice then 
    --             G.call('add_money',-pice)
    --             G.call('add_item',item[n],num)
    --             G.call('add_point',36,1)
    --             G.call("talk",'',148,'   多谢惠顾小号，下次定会以更低廉的价格服务于老客户。',2,1)
    --             G.call('add_love',148,2)
    --             G.call('set_newpoint',80,G.call('get_newpoint',80)- 1   )
    --             o_htyw.进度列表[1].当前进度 = o_htyw.进度列表[1].当前进度 + 1
    --         else
    --             G.call("talk",'',148,'   阁下银两不够。小号本小利微，概不赊欠。',2,1)
    --         end    
    --     elseif  int_选项 == 2 then
    --         G.call('all_over')
    --         G.call('call_battle',1,7,1,200 - G.call('get_love',148),148,0,0,0,0,0)
    --         G.call('add_love',148,-10)
    --         o_battle_结果 = G.call('get_battle') 
    --         if o_battle_结果  == 1 then
    --             G.call('add_item',item[n],num)
    --             G.call('add_point',36,-10)
    --             G.call("talk",'',148,'   能靠武力从我这里买走货物，也算是正常交易的一种渠道。',2,1)
    --             if G.call('get_newpoint',36) < 0 then
    --                 G.call('set_newpoint',36,-math.random(5)   ) 
    --             end
    --             G.call('set_newpoint',80,G.call('get_newpoint',80)- 1   )
    --             o_htyw.进度列表[1].当前进度 = o_htyw.进度列表[1].当前进度 + 1
    --         else
    --             G.call("talk",'',148,'   老兄，你没买到东西，还要搭上汤药费，这次可算是蚀本了',2,1)
    --         end
    --     elseif  int_选项 == 3 then
    --     end
    -- end 
    if o_htyw.进度列表[1].当前进度 >= 500 and o_htyw.完成 == 0 then 
        o_htyw.进度列表[1].完成 = 1
        o_htyw.完成 = 1 
        G.wait_time(250)
        G.call('notice1','完成成就【互通有无】')
    end	
    G.call('add_day',1)
    G.call('dark')
    G.call('goto_map',4) 
end   