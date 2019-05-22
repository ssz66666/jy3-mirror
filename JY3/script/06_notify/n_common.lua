local G = require "gf"
local noti = G.notify

function noti.战场_效果(int_位置,int_动作编号,int_动画位置)
    local ui ;
	if not G.getUI('v_battle') then 
		return
    end 
    ui = G.getUI('v_battle')
    local c = ui.c_battle
    local 位置 = {'team1','team2','team3','team4','team5','enemy1','enemy2','enemy3','enemy4','enemy5','enemy6','all1','all2'}
    local int_代码 = tonumber(ui.getChildByName('代码').getChildByName(位置[int_位置]).text)
    local int_序列帧 = int_代码 + 1 
    local o_skill = G.QueryName(0x10050000 + int_序列帧 - 1 )
    local int_范围 = o_skill.范围
    if  0x49020001+int_序列帧 - 1 ~= nil then 
        G.Play(0x49020001+int_序列帧 - 1 , 1,false,100)
    end 
    if o_skill.范围 == 5 or int_位置 == 1 then 
        ui.getChildByName('图标').frameActionID(1)
        ui.getChildByName('图表').visible = true
    end
    ui.getChildByName('tab').getChildByName(位置[int_位置]).frameActionID(int_动作编号)
    ui.getChildByName('flash').getChildByName(位置[int_动画位置]).frameActionID(int_序列帧)
    ui.getChildByName('图表').getChildByName('文字').text = o_skill.名称
    --G.trig_event('战斗飘字')
    G.call('通用_战斗飘字',int_位置,int_范围)
    ui.getChildByName('图表').visible = false
end