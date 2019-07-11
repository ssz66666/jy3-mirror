local G = require "gf"
local noti = G.notify

function noti.战场_效果(int_位置,int_动作编号,int_动画位置,int_needmp)
    local ui ;
	if not G.getUI('v_battle') then 
		return
    end 
    ui = G.getUI('v_battle')
    local c = ui.c_battle
    local 位置 = {'team1','team2','team3','team4','team5','enemy1','enemy2','enemy3','enemy4','enemy5','enemy6','all1','all2','all3'}
    local int_代码 = tonumber(ui.getChildByName('代码').getChildByName(位置[int_位置]).text)
    local int_序列帧 = int_代码 + 1 
    local o_skill = G.QueryName(0x10050000 + int_序列帧 - 1 )
    local int_范围 = o_skill.范围
    if not int_动画位置 or int_动画位置 == nil or int_动画位置 < 1 then return end
    if  0x49020001+int_序列帧 - 1 ~= nil then 
        G.Play(0x49020001+int_序列帧 - 1 , 1,false,100)
    end 
    if o_skill.范围 == 5 or int_位置 == 1 then 
        ui.getChildByName('图标').frameActionID(1)
        ui.getChildByName('图表').visible = true
        if int_位置 == 1 then 
            G.call('add_point',46,-int_needmp) 
        end
    end
    ui.getChildByName('tab').getChildByName(位置[int_位置]).frameActionID(int_动作编号)
    ui.getChildByName('flash').getChildByName(位置[int_动画位置]).frameActionID(int_序列帧)
    ui.getChildByName('图表').getChildByName('文字').text = o_skill.名称
    local o_battle = G.QueryName(0x10150001)
    for i = 2,11 do
        if o_battle [位置[i] ] ~= G.misc().队伍记录[i-1] then
            G.call('通用_强退游戏',101) 
        end
        if G.misc()[位置[i] ] > 0 then
            if G.call('get_role',G.misc()[位置[i] ],15) ~= math.abs(G.call('get_newpoint',199+i) + 10 )  then 
                G.call('通用_强退游戏',2000+i) 
            end
        end
    end 
    if G.call('get_point',48) ~= math.abs(G.call('get_newpoint',48) + 10 ) then
        G.call('通用_强退游戏',102) 
    end
    if G.call('get_point',44) ~= math.abs(G.call('get_newpoint',44) + 10 )  then
        G.call('通用_强退游戏',103) 
    end
    if G.call('get_point',46) ~= math.abs(G.call('get_newpoint',46) + 10 )  then
       G.call('通用_强退游戏',104) 
    end
    G.call('通用_战斗飘字',int_位置,int_范围)
    c:刷新记事本()
    ui.getChildByName('图表').visible = false
end