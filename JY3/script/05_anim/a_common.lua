--[[5001

]]

local G = require "gf"
local t = G.act

--type=private
t['动画通用_播放动画序列'] = function(o_dialogue_system_actionlist_序列,o_node_主体)
    local o_dialogue_system_tap_动画
    local farg_动画函数
    if not(o_dialogue_system_actionlist_序列 and o_node_主体 and type(o_dialogue_system_actionlist_序列.动画) == 'table' and #o_dialogue_system_actionlist_序列.动画 > 0) then
        return
    end
    for i = 1, #o_dialogue_system_actionlist_序列.动画 do
        o_dialogue_system_tap_动画 = o_dialogue_system_actionlist_序列.动画[i]
        if o_dialogue_system_tap_动画.动画 then
            farg_动画函数 = {}
            G.deepcopy(o_dialogue_system_tap_动画.动画, farg_动画函数, {})
            -- 将 o_node_主体作为第一个参数传递
            table.insert(farg_动画函数, 2, o_node_主体)
            -- 延迟作为最后一个参数传递
            farg_动画函数[farg_动画函数.n + 3] = o_dialogue_system_tap_动画.延迟时间
            farg_动画函数.n = farg_动画函数.n + 2
            if o_dialogue_system_tap_动画.并行播放 then
                G.RunAction(farg_动画函数)
            else
                G.CallAction(farg_动画函数)
            end
        end
    end
end
t['play_run_card'] = function(i,tar,int_阵营,int_卡位置)
    local ui = G.getUI('v_cardgame')
    local c = ui.c_cardgame
    local dur = 500
    local p = c.cardID
    local x, y = tar.localToGlobal(0,0)
    if int_阵营 == 1 then 
       x, y = c.一区.globalToLocal(x, y)
    elseif int_阵营 == 2 then 
        x, y = c.二区.globalToLocal(x, y) 
    end
    G.Tween('x', dur, c.card[p], x)--tar.x)
    -- c.card[i].x = c.cardX[i]
    G.Tween('y', dur, c.card[p], y)
    G.Tween('rotation', dur, c.card[p], 0)
    G.Tween('scaleX', dur, c.card[p], 1)
    G.Tween('scaleY', dur, c.card[p], 1)
    G.wait_time(dur)
    if int_阵营 == 1 then 
        c.一区.getChildByName('card_'..c.选择卡片).visible = false
        c.卡区.getChildByName('card_'..i).getChildByName('卡片').visible = true
        G.call('call_cardgame_pick',c.选择卡片,i)
        c.选择卡片 = 0
        c.进程 = 4
        c:卡区刷新()
        c.已放置 = c.已放置 +1
        if c.已放置 < 9 then 
            c.obj.getChildByName('轮换').getChildByName('一区').visible = false
            c.obj.getChildByName('轮换').getChildByName('二区').visible = true
            c.提示.getChildByName('文本').text = '等待[03]红方'..'[05]进行卡片放置'
        else
            c.obj.getChildByName('轮换').getChildByName('一区').visible = false
            c.obj.getChildByName('轮换').getChildByName('二区').visible = false
        end
    elseif int_阵营 == 2 then 
        ui.getChildByName('二区').getChildByName('card_'..int_卡位置).visible = false
        c.卡区.getChildByName('card_'..i).getChildByName('卡片').visible = true
        G.call('call_cardgame_pick',int_卡位置 + 5,i) 
        c.已放置 = c.已放置 +1
        if c.已放置 < 9 then 
            c.进程 = 3
            ui.getChildByName('轮换').getChildByName('一区').visible = true
            ui.getChildByName('轮换').getChildByName('二区').visible = false
            c.提示.getChildByName('文本').text = '开始选择需要放置的卡片'
            c:卡区刷新()
        else
            c:卡区刷新()
            ui.getChildByName('轮换').getChildByName('一区').visible = false
            ui.getChildByName('轮换').getChildByName('二区').visible = false
        end
    end
    c.放置卡片中 = 0
end