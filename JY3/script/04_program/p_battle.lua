--[[400c

]]
local G = require "gf"
local t = G.api
local L = {}
--type=
--hide=true
--private=false
t['战斗系统_胜负监控'] = function()
    local ui ;
	if not G.getUI('v_battle') then 
		return
	end 
    ui = G.getUI('v_battle');
    local 位置 = {'team1','team2','team3','team4','team5','enemy1','enemy2','enemy3','enemy4','enemy5','enemy6'}
    local o_battle = G.QueryName(0x10150001)
    local result = 0
    while true do 
        G.wait_time(10)
        for i = 2,11 do
            if o_battle [位置[i] ] ~= G.misc().队伍记录[i-1] then
                print(o_battle [位置[i] ],G.misc().队伍记录[i-1]) 
                G.call('通用_强退游戏') 
            end
        end 
        if G.call('get_point',48) ~= math.abs(G.call('get_newpoint',48) + 10 ) then
            G.call('通用_强退游戏') 
        end
        if G.call('get_point',44) ~= math.abs(G.call('get_newpoint',44) + 10 )  then
            G.call('通用_强退游戏') 
        end
        if G.call('get_point',46) ~= math.abs(G.call('get_newpoint',46) + 10 )  then
           G.call('通用_强退游戏') 
        end
        if G.call('get_result') == 1   then  
            for i = 1,11 do 
                ui.getChildByName('talk').getChildByName(位置[i]).visible = false	
            end 
            G.Play(0x4901000c, 1,false,100) 
            local exp = 0
            for i = 6,11 do --计算战斗后获得的经验值
                if o_battle [位置[i] ] > 0  then 
                    exp = exp + G.QueryName(0x10040000 + o_battle [位置[i] ] ).战后获得经验值
                end 	
            end 
            exp = math.floor(exp * G.QueryName(0x10150001).diffty/100)  
            G.call('add_point',3,exp)		
            ui.getChildByName('胜利').visible = true
            G.remove_program('集气',1)
            G.remove_program('战斗对话1',1)
            G.remove_program('战斗对话2',1)
            G.remove_program('异常显示',1)
            G.remove_program('战斗系统_事件响应',1)
            G.remove_program('战斗系统_主角监控',1)
            G.QueryName(0x10030001)[tostring(235)] = 1  --设定战斗结果为胜利
            G.misc().战斗结果 = 1
        elseif G.call('get_result') == 2 then 
            for i = 1,11 do 
                ui.getChildByName('talk').getChildByName(位置[i]).visible = false	
            end 
            ui.getChildByName('失败').visible = true
            G.Play(0x4901000d, 1,false,100) 
            ui.getChildByName('tab').getChildByName('team1').frameActionID(9002)
            -- ui.getChildByName('tab').getChildByName('team1').c_button.img_normal = 0x33039002  --死亡动画
            G.remove_program('集气',1)
            G.remove_program('战斗对话1',1)
            G.remove_program('战斗对话2',1)
            G.remove_program('异常显示',1)
            G.remove_program('战斗系统_事件响应',1)
            G.remove_program('战斗系统_主角监控',1)
            G.QueryName(0x10030001)[tostring(235)] = 2  --设定战斗结果为失败
            G.misc().战斗结果 = 2
        end    
        if G.misc().战斗结果 > 0  then 
            break
        end    
    end 

    --if result == 1 then 
    G.trig_event('战斗结束')
    --end
end
--type=
--hide=true
--private=false
t['战斗系统_主角监控'] = function()
    local ui ;
	if not G.getUI('v_citymap_system_map') then 
		return
	end 
    ui = G.getUI('v_citymap_system_map');
	local c = ui.c_citymap_system_map;
    while true do
        G.case(1, '主角准备')
        G.case(2, '主角出手')
        G.case(3, '选择攻击目标')
        G.case(4, '逃跑')
        local r = G.wait_case();
        if G.misc().战斗结果 > 0   then 
            break
        end
        if r == 1 then  
            local ui ;
			if not G.getUI('v_battle') then 
				return
			end 
			ui = G.getUI('v_battle')
			local o_role = 0x10040000
			local 位置 = {'team1','team2','team3','team4','team5','enemy1','enemy2','enemy3','enemy4','enemy5','enemy6'}
            local magic = {'技能1','技能2','技能3'}  
            local i_battle = 0x10150001
            local o_battle = G.QueryName(i_battle)
            print('战斗难度',o_battle.diffty,G.misc().难度)
            if o_battle.diffty ~= math.abs(G.misc().难度) then 
                G.call('通用_强退游戏') 
            end
            if ui.getChildByName('map').getChildByName(位置[1]).x < 150 then
                G.wait1('准备结束')
            end    
            local int_代码 = tonumber(ui.getChildByName('代码').getChildByName(位置[1]).text)
            if G.call('get_point',87) > 0 then --主角混乱状态
                ui.getChildByName('map').getChildByName(位置[1]).x = 151
                ui.getChildByName('代码').getChildByName(位置[1]).text = tostring(207)
                ui.getChildByName('状态').text = tostring(0)
            end 
            if  tonumber(ui.getChildByName('状态').text) == 1 then 
                if G.call('get_point',196) ~= nil then --内功回血回内效果
                    local int_队友 = 0
                    local int_天罡效果 = 0
                    local i_skill = G.call('get_point',196)
                    local o_skill = G.QueryName(i_skill)
                    local i_magic_阵法 =  G.QueryName(0x100c0001)[tostring(15)]
                    for i = 2,5 do 
                        if G.QueryName(0x10150001)[位置[i]] > 0 then 
                            if G.QueryName(0x10040000 + G.QueryName(0x10150001)[位置[i]] ).生命 > 0 then 
                                int_队友 = int_队友 + 1
                            end
                        end
                    end
                    if G.call('通用_取得内功轻功特效',0,18) then
                        int_队友 = int_队友 + 1
                    end
                    if i_magic_阵法 and G.QueryName(i_magic_阵法).附加效果 == 4  then 
                        int_天罡效果 = int_队友
                    end 
                    if o_skill.内功轻功效果 == 10 or o_skill.内功轻功效果 == 11 then 
                        if o_skill.内功轻功效果 == 10 then 
                            local int_hp = math.floor(G.call('get_point',217)*o_skill.修为等级*(int_天罡效果 +  o_skill.效果等级 )/500)
                            ui.getChildByName('hurt').getChildByName(位置[1]).getChildByName('加生命').text = tostring(int_hp)
                            G.call('add_point',44,int_hp)
                        end 
                        if o_skill.内功轻功效果 == 11 then 
                            local int_mp = math.floor(G.call('get_point',218)*o_skill.修为等级*(int_天罡效果 + o_skill.效果等级 )/500)
                            ui.getChildByName('hurt').getChildByName(位置[1]).getChildByName('加内力').text = tostring(int_mp)
                            G.call('add_point',46,int_mp)
                        end 
                    end
                end 
                ui.getChildByName('map').getChildByName(位置[1]).x = 151
                ui.getChildByName('状态').text = tostring(0)
                if G.call('通用_取得人物特效',0,3) and math.random(100) > 80 then --判断主角先攻发动 
                    ui.getChildByName('map').getChildByName(位置[1]).x = 330 
                    G.trig_event('出手') 
                end
            elseif 	tonumber(ui.getChildByName('状态').text) == 2 then 
                G.misc().战斗状态 = 1
                G.call('use_item',int_代码+1,1)			
                G.misc().战斗状态 = 0
                ui.getChildByName('map').getChildByName(位置[1]).x = 0
            end 	
            local int_hp = 0
            local int_mp = 0
            if G.call('get_point',197) ~= nil and G.call('get_point',44) > 0 then   --内功回血回内效果
                if G.QueryName(G.call('get_point',197)).内功轻功效果 == 10 or G.QueryName(G.call('get_point',197)).内功轻功效果 == 11 then 
                    if G.QueryName(G.call('get_point',197)).内功轻功效果 == 10 then 
                        int_hp = math.floor(G.QueryName(0x10030001)[tostring(217)]*G.QueryName(G.call('get_point',197)).效果等级/100)
                        G.call('add_point',44,int_hp)
                    end 
                    if G.QueryName(G.call('get_point',197)).内功轻功效果 == 11 then 
                        int_mp = math.floor(G.QueryName(0x10030001)[tostring(218)]*G.QueryName(G.call('get_point',197)).效果等级/100)
                        G.call('add_point',46,int_mp)
                    end 
                end 
            end 	
           
        elseif r == 2 then 
			local ui ;
			if not G.getUI('v_battle') then 
				return
			end 
			ui = G.getUI('v_battle')
			local o_battle = 0x10150001
			local o_role = 0x10040000
			local 位置 = {'team1','team2','team3','team4','team5','enemy1','enemy2','enemy3','enemy4','enemy5','enemy6'}
			local magic = {'技能1','技能2','技能3'}
            --G.remove_program('集气',1)
            G.misc().战斗状态 = 1   
			local num = tonumber(ui.getChildByName('num').text)
			local num0 = tonumber(ui.getChildByName('num0').text)
        elseif r == 3 then
            -- G.remove_program('集气',1)
            -- G.remove_program('战斗对话1',1)
            -- G.remove_program('战斗对话2',1)
            while true do 
                local ui ;
                if not G.getUI('v_battle') then 
                    break
                end 
                ui = G.getUI('v_battle')
                local o_battle = 0x10150001
                local o_role = 0x10040001
                local 位置 = {'team1','team2','team3','team4','team5','enemy1','enemy2','enemy3','enemy4','enemy5','enemy6'}
                local int_代码 = tonumber(ui.getChildByName('代码').getChildByName(位置[1]).text)
                if int_代码 == 0 or int_代码 == nil then 
                    G.misc().战斗状态 = 0
                    return
                end   
                if G.QueryName(0x10050000+int_代码) == nil then 
                    G.misc().战斗状态 = 0
                    return
                end  
                if G.QueryName(0x10050000+int_代码).范围 == 2 or G.QueryName(0x10050000+int_代码).范围 == 3 or G.QueryName(0x10050000+int_代码).范围 == 4 then 
                    if tonumber(ui.getChildByName('num').text) >= 1 then
                        if G.QueryName(0x10050000+int_代码).范围 == 3 then
                            if G.misc().自动 == 1   then 
                                for p = 6,11 do --记录多个敌人最后一个的位置以及生命值
                                    if G.QueryName(0x10150001)[位置[p]] ~= nil and G.QueryName(0x10150001)[位置[p]] > 0 then
                                        if	G.QueryName(0x10040000 + G.QueryName(0x10150001)[位置[p]]).生命 > 0  then 
                                            ui.getChildByName('代码').getChildByName(位置[1]).getChildByName('id').text = tostring(p) 
                                            ui.getChildByName('代码').getChildByName(位置[1]).getChildByName('min').text = tostring(G.QueryName(0x10040000 + G.QueryName(o_battle)[位置[p] ]).生命 ) 
                                        end
                                    end 	
                                end 	
                                for p = 6,11 do --ai判断生命值最低敌人位置信息
                                    if G.QueryName(0x10150001)[位置[p]] > 0 then
                                        if	G.QueryName(0x10040000 + G.QueryName(0x10150001)[位置[p] ]).生命 > 0 then 
                                            if 	G.QueryName(0x10040000 + G.QueryName(0x10150001)[位置[p] ]).生命 -  tonumber(ui.getChildByName('代码').getChildByName(位置[1]).getChildByName('min').text) < 0 then 
                                                ui.getChildByName('代码').getChildByName(位置[1]).getChildByName('id').text = tostring(p) 
                                                ui.getChildByName('代码').getChildByName(位置[1]).getChildByName('min').text = tostring(G.QueryName(0x10040000 + G.QueryName(o_battle)[位置[p] ]).生命 ) 
                                            end 
                                        end
                                    end 	
                                end
                                local int_位置 = tonumber(ui.getChildByName('代码').getChildByName(位置[1]).getChildByName('id').text)
                                if int_位置 == 6 or int_位置 == 9 or int_位置 == 10 then 
                                    ui.getChildByName('横目标').text = tostring(1) 
                                else
                                    ui.getChildByName('横目标').text = tostring(2) 
                                end     
                                ui.getChildByName('状态').text = 1
                            end
                        
                        elseif 	G.QueryName(0x10050000+int_代码).范围 == 4 then
                            if G.misc().自动 == 1   then 
                            
                                for p = 6,11 do --记录多个敌人最后一个的位置以及生命值
                                    if G.QueryName(0x10150001)[位置[p]] ~= nil and G.QueryName(0x10150001)[位置[p]] > 0 then
                                        if	G.QueryName(0x10040000 + G.QueryName(0x10150001)[位置[p]]).生命 > 0  then 
                                            ui.getChildByName('代码').getChildByName(位置[1]).getChildByName('id').text = tostring(p) 
                                            ui.getChildByName('代码').getChildByName(位置[1]).getChildByName('min').text = tostring(G.QueryName(0x10040000 + G.QueryName(o_battle)[位置[p] ]).生命 ) 
                                        end
                                    end 	
                                end 	
                                for p = 6,11 do --ai判断生命值最低敌人位置信息
                                    if G.QueryName(0x10150001)[位置[p]] > 0 then
                                        if	G.QueryName(0x10040000 + G.QueryName(0x10150001)[位置[p] ]).生命 > 0 then 
                                            if 	G.QueryName(0x10040000 + G.QueryName(0x10150001)[位置[p] ]).生命 -  tonumber(ui.getChildByName('代码').getChildByName(位置[1]).getChildByName('min').text) < 0 then 
                                                ui.getChildByName('代码').getChildByName(位置[1]).getChildByName('id').text = tostring(p) 
                                                ui.getChildByName('代码').getChildByName(位置[1]).getChildByName('min').text = tostring(G.QueryName(0x10040000 + G.QueryName(o_battle)[位置[p] ]).生命 ) 
                                            end 
                                        end
                                    end 	
                                end
                                local int_位置 = tonumber(ui.getChildByName('代码').getChildByName(位置[1]).getChildByName('id').text)
                                if int_位置 == 6 or int_位置 == 11   then 
                                    ui.getChildByName('纵目标').text = tostring(2)  
                                elseif int_位置 == 7 or int_位置 == 9   then 
                                    ui.getChildByName('纵目标').text = tostring(1) 
                                elseif int_位置 == 8 or int_位置 == 10   then 
                                    ui.getChildByName('纵目标').text = tostring(3) 
                                end 
                                ui.getChildByName('状态').text = 1
                            end	
                        elseif 	G.QueryName(0x10050000+int_代码).范围 == 2 then 
                            if G.misc().自动 == 1   then 
                                for p = 6,11 do --记录多个敌人最后一个的位置以及生命值
                                    if G.QueryName(0x10150001)[位置[p]] ~= nil and G.QueryName(0x10150001)[位置[p]] > 0 then
                                        if	G.QueryName(0x10040000 + G.QueryName(0x10150001)[位置[p]]).生命 > 0  then 
                                            ui.getChildByName('代码').getChildByName(位置[1]).getChildByName('id').text = tostring(p) 
                                            ui.getChildByName('代码').getChildByName(位置[1]).getChildByName('min').text = tostring(G.QueryName(0x10040000 + G.QueryName(o_battle)[位置[p] ]).生命 ) 
                                        end
                                    end 	
                                end 	
                                for p = 6,11 do --ai判断生命值最低敌人位置信息
                                    if G.QueryName(0x10150001)[位置[p]] > 0 then
                                        if	G.QueryName(0x10040000 + G.QueryName(0x10150001)[位置[p] ]).生命 > 0 then 
                                            if 	G.QueryName(0x10040000 + G.QueryName(0x10150001)[位置[p] ]).生命 -  tonumber(ui.getChildByName('代码').getChildByName(位置[1]).getChildByName('min').text) < 0 then 
                                                ui.getChildByName('代码').getChildByName(位置[1]).getChildByName('id').text = tostring(p) 
                                                ui.getChildByName('代码').getChildByName(位置[1]).getChildByName('min').text = tostring(G.QueryName(0x10040000 + G.QueryName(o_battle)[位置[p] ]).生命 ) 
                                            end 
                                        end
                                    end 	
                                end
                                ui.getChildByName('单目标').text = ui.getChildByName('代码').getChildByName(位置[1]).getChildByName('id').text 
                                ui.getChildByName('状态').text = 1
                            else
                                if tonumber(ui.getChildByName('num').text) > 1 then
                                    G.call('notice1','选择目标范围')  
                                    G.wait1('选择目标')
                                elseif tonumber(ui.getChildByName('num').text) == 1 then  
                                    for i = 6,11 do 
                                        if G.QueryName(0x10150001)[位置[i]] >  0 then
                                            if  G.QueryName(0x10040000 + G.QueryName(0x10150001)[位置[i] ]).生命 > 0 then 
                                                ui.getChildByName('单目标').text = tostring(i) 
                                                break
                                            end
                                        end
                                    end 
                                   

                                end		
                            end
                        end 	
                        
                    end                         
                end 
               if tonumber(ui.getChildByName('状态').text) > 0 then 
                  G.misc().战斗状态 = 1
                  G.trig_event('主角准备')
                  break
               else
                  break
               end
            end    
            -- G.start_program('集气',1)
            -- G.start_program('战斗对话1',1)
            -- G.start_program('战斗对话2',1)
        elseif r == 4 then
			local ui ;
			if not G.getUI('v_battle') then 
				return
            end 
            local 位置 = {'team1','team2','team3','team4','team5','enemy1','enemy2','enemy3','enemy4','enemy5','enemy6'}
            ui = G.getUI('v_battle')
            if G.QueryName(0x10150001).逃跑 == 1 then
                ui.getChildByName('map').getChildByName(位置[1]).x = 0
                -- G.remove_program('集气',1)
                -- G.remove_program('战斗对话1',1)
                -- G.remove_program('战斗对话2',1)
                -- G.remove_program('战斗系统_事件响应',1)
                for i = 1,11 do 
                    ui.getChildByName('talk').getChildByName(位置[i]).visible = false	
                end 
                ui.getChildByName('tab').getChildByName('team1').frameActionID(9001)  --逃跑动画 
                --ui.getChildByName('tab').getChildByName('team1').c_button.img_normal = 0x33039001  --逃跑动画   
                ui.getChildByName('失败').visible = true
                G.QueryName(0x10030001)[tostring(235)] = 2
                -- G.remove_program('集气',1)
                -- G.remove_program('战斗对话1',1)
                -- G.remove_program('战斗对话2',1)
                -- G.remove_program('异常显示',1)
                -- G.remove_program('战斗系统_事件响应',1)
                --ui.getChildByName('失败').visible = false
               -- ui.getChildByName('tab').getChildByName('team1').c_button.img_normal = 0x33039099  --还原动画
                --G.QueryName(0x10030001)[tostring(235)] = 2  --设定战斗结果为失败
                G.misc().战斗结果 = 2
            else
                -- G.remove_program('集气',1)
                -- G.remove_program('战斗对话1',1)
                -- G.remove_program('战斗对话2',1)
                -- ui.getChildByName('tab').getChildByName('team1').c_button.img_normal = 0x33039001  --逃跑动画
                ui.getChildByName('map').getChildByName(位置[1]).x = 0
                ui.getChildByName('tab').getChildByName('team1').frameActionID(9003)
                -- if G.call('get_point',44) > 0 then 
                --     ui.getChildByName('tab').getChildByName('team1').c_button.img_normal = 0x33039099  --还原动画
                -- end 
                G.call('notice1','无法逃跑')
                -- G.start_program('集气',1)
                -- G.start_program('战斗对话1',1)
                -- G.start_program('战斗对话2',1)
            end 
        end 
        
    end
end
--type=
--hide=true
--private=false
t['战斗系统_事件响应'] = function()
	local ui ;
	if not G.getUI('v_citymap_system_map') then 
		return
	end 
    ui = G.getUI('v_citymap_system_map');
	local c = ui.c_citymap_system_map;
	while true do
		G.case(1, '准备')
		G.case(2, '出手')
        G.case(3, '逃跑无效')
        G.case(4, '选择攻击')
       -- G.case(5, '主角准备')
        local r = G.wait_case();
        if G.misc().战斗结果 > 0   then 
            break
        end    
        if r == 9 then
            G.remove_program('集气',1)
            G.remove_program('战斗对话1',1)
            G.remove_program('战斗对话2',1)
            while true do 
                local ui ;
                if not G.getUI('v_battle') then 
                    break
                end 
                ui = G.getUI('v_battle')
                local o_battle = 0x10150001
                local o_role = 0x10040001
                local 位置 = {'team1','team2','team3','team4','team5','enemy1','enemy2','enemy3','enemy4','enemy5','enemy6'}
                local int_代码 = tonumber(ui.getChildByName('代码').getChildByName(位置[1]).text)
                if G.QueryName(0x10050000+int_代码).范围 == 2 or G.QueryName(0x10050000+int_代码).范围 == 3 or G.QueryName(0x10050000+int_代码).范围 == 4 then 
                    if tonumber(ui.getChildByName('num').text) >= 1 then
                        if G.QueryName(0x10050000+int_代码).范围 == 3 then
                            if G.misc().自动 == 1   then 
                                for p = 6,11 do --记录多个敌人最后一个的位置以及生命值
                                    if G.QueryName(0x10150001)[位置[p]] ~= nil and G.QueryName(0x10150001)[位置[p]] > 0 then
                                        if	G.QueryName(0x10040000 + G.QueryName(0x10150001)[位置[p]]).生命 > 0  then 
                                            ui.getChildByName('代码').getChildByName(位置[1]).getChildByName('id').text = tostring(p) 
                                            ui.getChildByName('代码').getChildByName(位置[1]).getChildByName('min').text = tostring(G.QueryName(0x10040000 + G.QueryName(o_battle)[位置[p] ]).生命 ) 
                                        end
                                    end 	
                                end 	
                                for p = 6,11 do --ai判断生命值最低敌人位置信息
                                    if G.QueryName(0x10150001)[位置[p]] > 0 then
                                        if	G.QueryName(0x10040000 + G.QueryName(0x10150001)[位置[p] ]).生命 > 0 then 
                                            if 	G.QueryName(0x10040000 + G.QueryName(0x10150001)[位置[p] ]).生命 -  tonumber(ui.getChildByName('代码').getChildByName(位置[1]).getChildByName('min').text) < 0 then 
                                                ui.getChildByName('代码').getChildByName(位置[1]).getChildByName('id').text = tostring(p) 
                                                ui.getChildByName('代码').getChildByName(位置[1]).getChildByName('min').text = tostring(G.QueryName(0x10040000 + G.QueryName(o_battle)[位置[p] ]).生命 ) 
                                            end 
                                        end
                                    end 	
                                end
                                local int_位置 = tonumber(ui.getChildByName('代码').getChildByName(位置[1]).getChildByName('id').text)
                                if int_位置 == 6 or int_位置 == 9 or int_位置 == 10 then 
                                    ui.getChildByName('横目标').text = tostring(1) 
                                else
                                    ui.getChildByName('横目标').text = tostring(2) 
                                end    
                                ui.getChildByName('状态').text = 1
                            end
                        
                        elseif 	G.QueryName(0x10050000+int_代码).范围 == 4 then
                            if G.misc().自动 == 1   then 
                             
                                for p = 6,11 do --记录多个敌人最后一个的位置以及生命值
                                    if G.QueryName(0x10150001)[位置[p]] ~= nil and G.QueryName(0x10150001)[位置[p]] > 0 then
                                        if	G.QueryName(0x10040000 + G.QueryName(0x10150001)[位置[p]]).生命 > 0  then 
                                            ui.getChildByName('代码').getChildByName(位置[1]).getChildByName('id').text = tostring(p) 
                                            ui.getChildByName('代码').getChildByName(位置[1]).getChildByName('min').text = tostring(G.QueryName(0x10040000 + G.QueryName(o_battle)[位置[p] ]).生命 ) 
                                        end
                                    end 	
                                end 	
                                for p = 6,11 do --ai判断生命值最低敌人位置信息
                                    if G.QueryName(0x10150001)[位置[p]] > 0 then
                                        if	G.QueryName(0x10040000 + G.QueryName(0x10150001)[位置[p] ]).生命 > 0 then 
                                            if 	G.QueryName(0x10040000 + G.QueryName(0x10150001)[位置[p] ]).生命 -  tonumber(ui.getChildByName('代码').getChildByName(位置[1]).getChildByName('min').text) < 0 then 
                                                ui.getChildByName('代码').getChildByName(位置[1]).getChildByName('id').text = tostring(p) 
                                                ui.getChildByName('代码').getChildByName(位置[1]).getChildByName('min').text = tostring(G.QueryName(0x10040000 + G.QueryName(o_battle)[位置[p] ]).生命 ) 
                                            end 
                                        end
                                    end 	
                                end
                                local int_位置 = tonumber(ui.getChildByName('代码').getChildByName(位置[1]).getChildByName('id').text)
                                if int_位置 == 6 or int_位置 == 11   then 
                                    ui.getChildByName('纵目标').text = tostring(2)  
                                elseif int_位置 == 7 or int_位置 == 9   then 
                                    ui.getChildByName('纵目标').text = tostring(1) 
                                elseif int_位置 == 8 or int_位置 == 10   then 
                                    ui.getChildByName('纵目标').text = tostring(3) 
                                end 
                                ui.getChildByName('状态').text = 1
                            end
                        elseif 	G.QueryName(0x10050000+int_代码).范围 == 2 then 
                            if G.misc().自动 == 1   then 
                                for p = 6,11 do --记录多个敌人最后一个的位置以及生命值
                                    if G.QueryName(0x10150001)[位置[p]] ~= nil and G.QueryName(0x10150001)[位置[p]] > 0 then
                                        if	G.QueryName(0x10040000 + G.QueryName(0x10150001)[位置[p]]).生命 > 0  then 
                                            ui.getChildByName('代码').getChildByName(位置[1]).getChildByName('id').text = tostring(p) 
                                            ui.getChildByName('代码').getChildByName(位置[1]).getChildByName('min').text = tostring(G.QueryName(0x10040000 + G.QueryName(o_battle)[位置[p] ]).生命 ) 
                                        end
                                    end 	
                                end 	
                                for p = 6,11 do --ai判断生命值最低敌人位置信息
                                    if G.QueryName(0x10150001)[位置[p]] > 0 then
                                        if	G.QueryName(0x10040000 + G.QueryName(0x10150001)[位置[p] ]).生命 > 0 then 
                                            if 	G.QueryName(0x10040000 + G.QueryName(0x10150001)[位置[p] ]).生命 -  tonumber(ui.getChildByName('代码').getChildByName(位置[1]).getChildByName('min').text) < 0 then 
                                                ui.getChildByName('代码').getChildByName(位置[1]).getChildByName('id').text = tostring(p) 
                                                ui.getChildByName('代码').getChildByName(位置[1]).getChildByName('min').text = tostring(G.QueryName(0x10040000 + G.QueryName(o_battle)[位置[p] ]).生命 ) 
                                            end 
                                        end
                                    end 	
                                end
                                ui.getChildByName('单目标').text = ui.getChildByName('代码').getChildByName(位置[1]).getChildByName('id').text 
                                ui.getChildByName('状态').text = 1
                            else
                                if tonumber(ui.getChildByName('num').text) > 1 then
                                    G.call('notice1','选择目标范围')  
                                    G.wait1('选择目标')
                                elseif tonumber(ui.getChildByName('num').text) == 1 then  
                                    for i = 6,11 do 
                                        if G.QueryName(0x10150001)[位置[i]] >  0 then
                                            if  G.QueryName(0x10040000 + G.QueryName(0x10150001)[位置[i] ]).生命 > 0 then 
                                                ui.getChildByName('单目标').text = tostring(i) 
                                                break
                                            end
                                        end
                                    end 
                                   

                                end		
                            end
                        end 	
                        
                    end                         
                end 
               if tonumber(ui.getChildByName('状态').text) > 0 then 
                  G.misc().战斗状态 = 1
                  G.trig_event('主角准备')
                  break
               else
                  break
               end
            end    
            G.start_program('集气',1)
            G.start_program('战斗对话1',1)
            G.start_program('战斗对话2',1)
        elseif r == 10 then
			local ui ;
			if not G.getUI('v_battle') then 
				return
            end 
            local 位置 = {'team1','team2','team3','team4','team5','enemy1','enemy2','enemy3','enemy4','enemy5','enemy6'}
            ui = G.getUI('v_battle')
            if G.QueryName(0x10150001).逃跑 == 1 then
                ui.getChildByName('map').getChildByName(位置[1]).x = 0
                G.remove_program('集气',1)
                G.remove_program('战斗对话1',1)
                G.remove_program('战斗对话2',1)
                G.remove_program('异常显示',1)
                G.remove_program('战斗系统_事件响应',1)
                for i = 1,11 do 
                    ui.getChildByName('talk').getChildByName(位置[i]).visible = false	
                end 
                ui.getChildByName('tab').getChildByName('team1').c_button.img_normal = 0x33039001  --逃跑动画   
                ui.getChildByName('失败').visible = true
                G.QueryName(0x10030001)[tostring(235)] = 2
                G.wait_time(1000)
                ui.getChildByName('tab').getChildByName('team1').c_button.img_normal = 0x33039099  --还原动画
                G.QueryName(0x10030001)[tostring(235)] = 2  --设定战斗结果为失败
                G.misc().战斗结果 = 2
            else
                G.remove_program('集气',1)
                G.remove_program('战斗对话1',1)
                G.remove_program('战斗对话2',1)
                ui.getChildByName('tab').getChildByName('team1').c_button.img_normal = 0x33039001  --逃跑动画
                ui.getChildByName('map').getChildByName(位置[1]).x = 0
                G.wait_time(1000)
                if G.call('get_point',44) > 0 then 
                    ui.getChildByName('tab').getChildByName('team1').c_button.img_normal = 0x33039099  --还原动画
                end 
                G.call('notice1','无法逃跑')
                G.start_program('集气',1)
                G.start_program('战斗对话1',1)
                G.start_program('战斗对话2',1)
            end     
        elseif r == 2 then	
			local ui ;
			if not G.getUI('v_battle') then 
				return
			end 
			ui = G.getUI('v_battle')
			local o_battle = 0x10150001
			local o_role = 0x10040000
			local 位置 = {'team1','team2','team3','team4','team5','enemy1','enemy2','enemy3','enemy4','enemy5','enemy6'}
			local magic = {'技能1','技能2','技能3'}
            G.remove_program('集气',1)
            --G.misc().战斗状态 = 1 
            local person = {}   
			local num = tonumber(ui.getChildByName('num').text)
            local num0 = tonumber(ui.getChildByName('num0').text)
            local i_skill
            local int_序列帧
            local int_动作编号
            local int_动画位置
            local int_序列帧
            --G.call('通用_战斗动画屏蔽')
			for i = 2,5 do   --队友战斗逻辑
                if G.QueryName(o_battle)[位置[i]] > 0 and G.QueryName(o_battle)[位置[i]] ~= nil  then 
                    if G.QueryName(o_role + G.QueryName(o_battle)[位置[i] ]).生命 > 0 and ui.getChildByName('map').getChildByName(位置[i]).x >= 330 then
                        local int_代码 = tonumber(ui.getChildByName('代码').getChildByName(位置[i]).text)
                        i_skill = 0x10050000+int_代码
                        local o_skill = G.QueryName(i_skill)
                        ui.getChildByName('图表').getChildByName('文字').text = o_skill.名称
                        local o_role_tb = G.QueryName(0x10040000 + G.QueryName(o_battle)[位置[i]])
                        local o_role_dm = o_role + G.QueryName(o_battle)[位置[i]]
                        local int_hp = 0
                        local needmp = 0
                        local o_skill_武功等级 = 0
                        local p = G.QueryName(o_battle)[位置[i]]
                        local int_编号 = G.QueryName(o_role +G.QueryName(o_battle)[位置[i]] ).编号
                        int_动作编号 = G.QueryName(o_battle)[位置[i]] + 1000
                        local p = G.QueryName(o_battle)[位置[i]]
                        if p >= 253 and p < 385  then  
                            int_动作编号 = int_编号 + 1000
                        end 
                        if G.call('get_role', G.QueryName(o_battle)[位置[i]],87) > 0 then --混乱状态用普通攻击
                            o_skill = G.QueryName(0x10050000+207)
                        end 
                        if  o_skill == G.QueryName(0x10050000+207) then --只有普通攻击才为混乱状态
                            ui.getChildByName('图表').getChildByName('文字').text = o_skill.名称
                            local n = math.random(1,11) 
                            while true do 
                                if ui.getChildByName('tab').getChildByName(位置[n]).visible == false or n == i then 
                                    if G.QueryName(o_battle).模式 >= 4 then 
                                        n = math.random(2,11)
                                    else
                                        n = math.random(1,11)
                                    end
                                else
                                    break
                                end    
                            end 
                            local hurt = 0
                            local int_id = G.QueryName(o_battle)[位置[i]]
                            local int_enemy = G.QueryName(o_battle)[位置[n]]
                            local int_代码 = 207
                            if n == 1 then 
                                hurt = G.call('magic_power3',int_id,int_代码)
                            else
                                hurt = G.call('magic_power2',int_id,int_enemy,int_代码)
                            end  
                            --内力消耗
                            local o_role_人物  = G.QueryName(0x10040000 + int_id)
                            local o_skill = G.QueryName(0x10050000 + int_代码)
                            local int_p = 1
                            for i = 1,3 do
                                --if o_role['技能'..i] == 0x10050000 + int_代码 then 
                                if o_role_人物 ['技能'..i] == 0x10050000 + int_代码 then     
                                int_p = i
                                end 
                            end
                            local o_skill_武功熟练度 = o_role_人物 [tostring(int_p +9)]
                            local  o_skill_武功等级 =  G.call('逻辑整理-NPC武功等级',int_代码,o_skill_武功熟练度 )
                            local lv = o_skill_武功等级 
                            if int_代码 == 207 then 
                                lv = 10
                            end  
                            local needmp = math.floor(o_skill.消耗内力 * (lv /2)*(lv /2)*0.65)
                            if needmp < 1 then
                                needmp = 1
                            end  
                            G.call('add_role',G.QueryName(o_battle)[位置[i]],14,-needmp) 
                            ui.getChildByName('hurt').getChildByName(位置[n]).getChildByName('减生命').text = tostring(hurt)   
                            ui.getChildByName('hurt').getChildByName(位置[n]).getChildByName('减生命').visible = true
                            if hurt == 0 then 
                                ui.getChildByName('hurt').getChildByName(位置[n]).getChildByName('减生命').visible = false
                                ui.getChildByName('hurt').getChildByName(位置[n]).getChildByName('闪避').visible = true 
                            end 
                            G.noti_call('战场_效果',i,int_动作编号,n)    	
                        else    
                            if o_skill.范围 == 0 or o_skill.范围 == 1 then
                                for n = 1,3 do
                                    if  o_role_tb[magic[n]] == 0x10050000+int_代码  then 
                                        local o_skill_武功熟练度 =o_role_tb[tostring(n+9)]
                                        o_skill_武功等级 =  G.call('逻辑整理-NPC武功等级',int_代码,o_skill_武功熟练度 )
                                        needmp = math.floor(o_skill.消耗内力 * (o_skill_武功等级/2)*(o_skill_武功等级/2)*0.65)
                                        if needmp == 0 then 
                                            needmp = 1
                                        end     
                                        o_role_tb[tostring(n+9)] = o_role_tb[tostring(n+9)] + 1
                                    end 
                                end      
                            end  
                            if  o_skill.范围 == 0  then 
                                if o_skill.内功轻功效果 == 1 then
                                    if o_role_tb.内力 >= needmp then 
                                        int_hp = math.floor(o_role_tb[tostring(1)]*o_skill.效果等级*o_skill_武功等级/1000)
                                    else
                                        int_hp = math.floor(o_role_tb[tostring(1)]*o_skill.效果等级*o_skill_武功等级/1000*o_role_tb.内力/needmp)
                                    end   
                                    if G.call('通用_取得我方队伍特效',4) or G.call('通用_取得我方装备特效',201) then --我方妙手加成
                                        int_hp = math.floor(int_hp * 1.2) 
                                    end  
                                    if G.call('通用_取得套装',G.QueryName(o_battle)[位置[i]],3) == 2 then --套装3回血效果
                                        int_hp = math.floor(int_hp * 1.05)
                                    elseif G.call('通用_取得套装',G.QueryName(o_battle)[位置[i]],3) == 3 then
                                        int_hp = math.floor(int_hp * 1.1)
                                    end  
                                    if G.call('通用_取得套装',G.QueryName(o_battle)[位置[i]],3) < 3 then
                                        if int_hp > 9999 then 
                                            int_hp = 9999
                                        end
                                    end
                                    ui.getChildByName('hurt').getChildByName(位置[i]).getChildByName('加生命').text = tostring(int_hp) 
                                    G.noti_call('战场_效果',i,int_动作编号,i)
                                    G.call('add_point',44,int_hp)
                                    ui.getChildByName('hurt').getChildByName(位置[i]).getChildByName('加生命').visible = false
                                    G.call('add_role',G.QueryName(o_battle)[位置[i]],14,-needmp) 
                                elseif 	o_skill.内功轻功效果 == 99 then   --自身解毒
                                    G.noti_call('战场_效果',i,int_动作编号,i)
                                    G.call('add_role',G.QueryName(o_battle)[位置[i]],14,-needmp) 
                                    if G.QueryName(o_battle)[位置[i] ][tostring(81)] > 0 then
                                        G.QueryName(o_battle)[位置[i] ][tostring(81)] = 0
                                    end 
                                end
                            elseif o_skill.范围 == 1 then
                                if o_skill.内功轻功效果 == 1 then
                                    local int_hp = 0
                                    for p = 2,5 do 
                                        if G.QueryName(o_battle)[位置[p]] > 0 then
                                            if G.QueryName(o_role +G.QueryName(o_battle)[位置[p]] ).生命 > 0  then
                                                ui.getChildByName('hurt').getChildByName(位置[p]).getChildByName('加生命').visible = true
                                                if o_role_tb.内力 >= needmp then 
                                                    int_hp = math.floor(o_role_tb[tostring(1)]*o_skill.效果等级*o_skill_武功等级/1000)
                                                else
                                                    int_hp = math.floor(o_role_tb[tostring(1)]*o_skill.效果等级*o_skill_武功等级/1000*o_role_tb.内力/needmp)
                                                end  
                                                if G.call('通用_取得我方队伍特效',4) or G.call('通用_取得我方装备特效',201) then --我方妙手加成
                                                   int_hp = math.floor(int_hp * 1.2) 
                                                end 
                                                if G.call('通用_取得套装',G.QueryName(o_battle)[位置[i]],3) == 2 then --套装3回血效果
                                                    int_hp = math.floor(int_hp * 1.05)
                                                elseif G.call('通用_取得套装',G.QueryName(o_battle)[位置[i]],3) == 3 then
                                                    int_hp = math.floor(int_hp * 1.1)
                                                end  
                                                if G.call('通用_取得套装',G.QueryName(o_battle)[位置[i]],3) < 3 then
                                                    if int_hp > 9999 then 
                                                        int_hp = 9999
                                                    end
                                                end  
                                                ui.getChildByName('hurt').getChildByName(位置[p]).getChildByName('加生命').text = tostring(int_hp)  
                                            end
                                        end 
                                    end
                                    if o_role_tb.内力 >= needmp then  
                                        int_hp = math.floor(G.QueryName(0x10030001)[tostring(217)]*o_skill.效果等级*o_skill_武功等级/1000)
                                    else
                                        int_hp = math.floor(G.QueryName(0x10030001)[tostring(217)]*o_skill.效果等级*o_skill_武功等级/1000*o_role_tb.内力/needmp)
                                    end 	
                                    ui.getChildByName('hurt').getChildByName(位置[1]).getChildByName('加生命').text = tostring(int_hp) 
                                    ui.getChildByName('hurt').getChildByName(位置[1]).getChildByName('加生命').visible = true 
                                    G.noti_call('战场_效果',i,int_动作编号,13)
                                    G.call('add_role',G.QueryName(o_battle)[位置[i]],14,-needmp) 
                                elseif o_skill.内功轻功效果 == 19 then
                                    local int_hp = 0
                                    for p = 2,5 do 
                                        if G.QueryName(o_battle)[位置[p]] > 0 then
                                            if G.QueryName(o_role +G.QueryName(o_battle)[位置[p]] ).生命 > 0  then
                                                ui.getChildByName('hurt').getChildByName(位置[p]).getChildByName('加生命').visible = true
                                                if o_role_tb.内力 >= needmp then 
                                                    int_hp = math.floor(o_role_tb[tostring(1)]*o_skill.效果等级*o_skill_武功等级/1000)
                                                else
                                                    int_hp = math.floor(o_role_tb[tostring(1)]*o_skill.效果等级*o_skill_武功等级/1000*o_role_tb.内力/needmp)
                                                end  
                                                if G.call('通用_取得我方队伍特效',4) or G.call('通用_取得我方装备特效',201) then --我方妙手加成
                                                   int_hp = math.floor(int_hp * 1.2) 
                                                end 
                                                if G.call('通用_取得套装',G.QueryName(o_battle)[位置[i]],3) == 2 then --套装3回血效果
                                                    int_hp = math.floor(int_hp * 1.05)
                                                elseif G.call('通用_取得套装',G.QueryName(o_battle)[位置[i]],3) == 3 then
                                                    int_hp = math.floor(int_hp * 1.1)
                                                end  
                                                if G.call('通用_取得套装',G.QueryName(o_battle)[位置[i]],3) < 3 then
                                                    if int_hp > 9999 then 
                                                        int_hp = 9999
                                                    end
                                                end  
                                                for j = 81,89 do 
                                                    G.call('ser_role',G.QueryName(o_battle)[位置[p]],j,0)
                                                    G.call('ser_role',G.QueryName(o_battle)[位置[p]],j+10,0)
                                                end 
                                                ui.getChildByName('hurt').getChildByName(位置[p]).getChildByName('加生命').text = tostring(int_hp)  
                                            end
                                        end 
                                    end
                                    G.call('ser_point',j,0)
                                    G.call('ser_point',j+10,0)
                                    if o_role_tb.内力 >= needmp then  
                                        int_hp = math.floor(G.QueryName(0x10030001)[tostring(217)]*o_skill.效果等级*o_skill_武功等级/1000)
                                    else
                                        int_hp = math.floor(G.QueryName(0x10030001)[tostring(217)]*o_skill.效果等级*o_skill_武功等级/1000*o_role_tb.内力/needmp)
                                    end 	
                                    ui.getChildByName('hurt').getChildByName(位置[1]).getChildByName('加生命').text = tostring(int_hp) 
                                    ui.getChildByName('hurt').getChildByName(位置[1]).getChildByName('加生命').visible = true 
                                    G.noti_call('战场_效果',i,int_动作编号,13)
                                    G.call('add_role',G.QueryName(o_battle)[位置[i]],14,-needmp) 
                                elseif 	o_skill.内功轻功效果 == 6 then   --全体复活
                                    local n = 0
                                    local int_hp = 0
                                    local int_hp = 0
                                    for p = 2,5 do 
                                        if G.QueryName(o_battle)[位置[p] ] > 0 then
                                            if G.QueryName(o_role +G.QueryName(o_battle)[位置[p]] ).生命 <= 0 then 
                                                n = n + 1
                                                if o_role_tb.内力 >= needmp then 
                                                    int_hp = math.floor(G.QueryName(o_role +G.QueryName(o_battle)[位置[p]] )[tostring(1)]*o_skill.效果等级*o_skill_武功等级/1000)
                                                else
                                                    int_hp = math.floor(G.QueryName(o_role +G.QueryName(o_battle)[位置[p]] )[tostring(1)]*o_skill.效果等级*o_skill_武功等级/1000*o_role_tb.内力/needmp)
                                                end 
                                                if G.call('通用_取得我方队伍特效',4) or G.call('通用_取得我方装备特效',201) then --我方妙手加成
                                                    int_hp = math.floor(int_hp * 1.2)
                                                end 
                                                if G.call('通用_取得套装',G.QueryName(o_battle)[位置[i]],3) == 2 then --套装3回血效果
                                                    int_hp = math.floor(int_hp * 1.05)
                                                elseif G.call('通用_取得套装',G.QueryName(o_battle)[位置[i]],3) == 3 then
                                                    int_hp = math.floor(int_hp * 1.1)
                                                end  
                                                if G.call('通用_取得套装',G.QueryName(o_battle)[位置[i]],3) < 3 then
                                                    if int_hp > 9999 then 
                                                        int_hp = 9999
                                                    end
                                                end
                                                G.QueryName(o_role +G.QueryName(o_battle)[位置[p]] ).生命 = int_hp
                                                ui.getChildByName('hurt').getChildByName(位置[p]).getChildByName('加生命').text = int_hp
                                                ui.getChildByName('hurt').getChildByName(位置[p]).getChildByName('加生命').visible = true
                                            end    
                                        end 
                                    end 
                                    G.noti_call('战场_效果',i,int_动作编号,13)
                                    if n > 0 then
                                        --G.call('通用_战斗飘字') 
                                        G.call('add_role',G.QueryName(o_battle)[位置[i]],14,-needmp) 
                                    end 	
                                elseif 	o_skill.内功轻功效果 == 99 then   --我方全体解毒
                                    G.noti_call('战场_效果',i,int_动作编号,13)
                                    G.call('add_role',G.QueryName(o_battle)[位置[i]],14,-needmp) 
                                    G.call('set_point',81,0)
                                    for p = 2,5 do 
                                        if G.QueryName(o_battle)[位置[p] ] > 0 then
                                            if  G.QueryName(o_role +G.QueryName(o_battle)[位置[p]] ).生命 > 0 then 
                                                G.QueryName(o_role +G.QueryName(o_battle)[位置[p]] )[tostring(81)] = 0
                                            end
                                        end 
                                    end 
                                end 
                            elseif o_skill.范围 > 1 then 
                                local hurt = 0
                                local int_id = G.QueryName(o_battle)[位置[i] ]
                                 --内力消耗
                                local o_role_人物  = G.QueryName(0x10040000 + int_id)
                                local o_skill = G.QueryName(0x10050000 + int_代码)
                                local int_p = 1
                                for i = 1,3 do
                                    --if o_role['技能'..i] == 0x10050000 + int_代码 then 
                                    if o_role_人物 ['技能'..i] == 0x10050000 + int_代码 then     
                                    int_p = i
                                    end 
                                end
                                local o_skill_武功熟练度 = o_role_人物 [tostring(int_p +9)]
                                local  o_skill_武功等级 =  G.call('逻辑整理-NPC武功等级',int_代码,o_skill_武功熟练度 )
                                local lv = o_skill_武功等级 
                                if int_代码 == 190 then 
                                    lv = 10
                                end  
                                local needmp = math.floor(o_skill.消耗内力 * (lv /2)*(lv /2)*0.65)
                                if needmp < 1 then
                                    needmp = 1
                                end  
                                G.call('add_role',G.QueryName(o_battle)[位置[i]],14,-needmp) 
                                if num == 1 then --只有一个敌人直接取敌人位置数据
                                    for p = 6,11 do 
                                        if G.QueryName(o_battle)[位置[p]] > 0 then
                                            if 	G.QueryName(o_role + G.QueryName(o_battle)[位置[p]]).生命 > 0  then 
                                                ui.getChildByName('代码').getChildByName(位置[i]).getChildByName('id').text = tostring(p) 
                                                ui.getChildByName('代码').getChildByName(位置[i]).getChildByName('min').text = tostring(G.QueryName(o_role + G.QueryName(o_battle)[位置[p] ]).生命 ) 
                                            end
                                        end 	
                                    end
                                elseif  num > 1 then 
                                    if math.random(100) > 50 then  
                                        for p = 6,11 do --记录多个敌人最后一个的位置以及生命值
                                            if G.QueryName(o_battle)[位置[p]] > 0 then
                                                if	G.QueryName(o_role + G.QueryName(o_battle)[位置[p]]).生命 > 0  then 
                                                    ui.getChildByName('代码').getChildByName(位置[i]).getChildByName('id').text = tostring(p) 
                                                    ui.getChildByName('代码').getChildByName(位置[i]).getChildByName('min').text = tostring(G.QueryName(o_role + G.QueryName(o_battle)[位置[p] ]).生命 ) 
                                                end
                                            end 	
                                        end 	
                                        for p = 6,11 do --ai判断生命值最低敌人位置信息
                                            if G.QueryName(o_battle)[位置[p]] > 0 then
                                                if	G.QueryName(o_role + G.QueryName(o_battle)[位置[p] ]).生命 > 0 then 
                                                    if 	G.QueryName(o_role + G.QueryName(o_battle)[位置[p] ]).生命 -  tonumber(ui.getChildByName('代码').getChildByName(位置[i]).getChildByName('min').text) < 0 then 
                                                        ui.getChildByName('代码').getChildByName(位置[i]).getChildByName('id').text = tostring(p) 
                                                        ui.getChildByName('代码').getChildByName(位置[i]).getChildByName('min').text = tostring(G.QueryName(o_role + G.QueryName(o_battle)[位置[p] ]).生命 ) 
                                                    end 
                                                end
                                            end 	
                                        end 
                                    else
                                        for p = 6,11 do 
                                            if G.QueryName(o_battle)[位置[p]] > 0 then
                                                if	G.QueryName(o_role + G.QueryName(o_battle)[位置[p] ]).生命 > 0 then 
                                                    table.insert(person,p )
                                                end
                                            end
                                        end
                                        ui.getChildByName('代码').getChildByName(位置[i]).getChildByName('id').text = tostring( person[math.random(#person)])  
                                        person = {}  
                                    end
                                end
                                local n = tonumber(ui.getChildByName('代码').getChildByName(位置[i]).getChildByName('id').text)
                                --print(o_role_tb.姓名,o_skill.名称,G.QueryName(o_role + G.QueryName(o_battle)[位置[n] ]).姓名,G.QueryName(o_role + G.QueryName(o_battle)[位置[n] ]).生命 )
                                if o_skill.范围 == 2 then
                                    int_动画位置  = n
                                elseif o_skill.范围 == 3 then
                                    if n == 6 or n == 9 or n == 10 then 
                                        int_动画位置 = 14
                                    elseif n == 7 or n == 8 or n == 11 then
                                        int_动画位置 = 12 
                                    end 
                                elseif o_skill.范围 == 4 then  
                                    if n == 7 or n == 9 then 
                                        int_动画位置 = 7
                                    elseif n == 6  or n == 11 then 	
                                        int_动画位置 = 8   
                                    elseif  n == 8 or n == 10 then 
                                        int_动画位置 = 11
                                    end 
                                elseif o_skill.范围 == 5 then
                                    int_动画位置 = 12
                                end
                                if o_skill.范围 == 2 then
                                    hurt = G.call('magic_power2',int_id,G.QueryName(o_battle)[位置[n] ],int_代码)
                                    ui.getChildByName('hurt').getChildByName(位置[n]).getChildByName('减生命').text = tostring(hurt)
                                    hurt = tonumber(ui.getChildByName('hurt').getChildByName(位置[n]).getChildByName('减生命').text)
                                    ui.getChildByName('hurt').getChildByName(位置[n]).getChildByName('减生命').visible = true
                                    if hurt == 0 then 
                                        ui.getChildByName('hurt').getChildByName(位置[n]).getChildByName('减生命').visible = false
                                        ui.getChildByName('hurt').getChildByName(位置[n]).getChildByName('闪避').visible = true 
                                    end 
                                elseif o_skill.范围 == 3 then
                                    if n == 6 or n == 9 or n == 10 then 
                                        if G.QueryName(o_battle)[位置[6]] > 0 then
                                            if G.QueryName(o_role +G.QueryName(o_battle)[位置[6]] ).生命 > 0  then
                                                hurt = G.call('magic_power2',int_id,G.QueryName(o_battle)[位置[6] ],int_代码)
                                                ui.getChildByName('hurt').getChildByName(位置[6]).getChildByName('减生命').text = tostring(hurt)
                                                hurt = tonumber(ui.getChildByName('hurt').getChildByName(位置[6]).getChildByName('减生命').text)
                                                ui.getChildByName('hurt').getChildByName(位置[6]).getChildByName('减生命').visible = true
                                                if hurt == 0 then 
                                                    ui.getChildByName('hurt').getChildByName(位置[6]).getChildByName('减生命').visible = false
                                                    ui.getChildByName('hurt').getChildByName(位置[6]).getChildByName('闪避').visible = true 
                                                end 
                                            end
                                        end
                                        if G.QueryName(o_battle)[位置[9]] > 0 then
                                            if G.QueryName(o_role +G.QueryName(o_battle)[位置[9]] ).生命 > 0  then
                                                hurt = G.call('magic_power2',int_id,G.QueryName(o_battle)[位置[9] ],int_代码)
                                                ui.getChildByName('hurt').getChildByName(位置[9]).getChildByName('减生命').text = tostring(hurt)
                                                hurt = tonumber(ui.getChildByName('hurt').getChildByName(位置[9]).getChildByName('减生命').text)
                                                ui.getChildByName('hurt').getChildByName(位置[9]).getChildByName('减生命').visible = true
                                                if hurt == 0 then 
                                                    ui.getChildByName('hurt').getChildByName(位置[9]).getChildByName('减生命').visible = false
                                                    ui.getChildByName('hurt').getChildByName(位置[9]).getChildByName('闪避').visible = true 
                                                end 
                                            end
                                        end
                                        if G.QueryName(o_battle)[位置[10]] > 0 then
                                            if  G.QueryName(o_role +G.QueryName(o_battle)[位置[10]] ).生命 > 0  then
                                                hurt = G.call('magic_power2',int_id,G.QueryName(o_battle)[位置[10] ],int_代码)
                                                ui.getChildByName('hurt').getChildByName(位置[10]).getChildByName('减生命').text = tostring(hurt)
                                                hurt = tonumber(ui.getChildByName('hurt').getChildByName(位置[10]).getChildByName('减生命').text)
                                                ui.getChildByName('hurt').getChildByName(位置[10]).getChildByName('减生命').visible = true
                                                if hurt == 0 then 
                                                    ui.getChildByName('hurt').getChildByName(位置[10]).getChildByName('减生命').visible = false
                                                    ui.getChildByName('hurt').getChildByName(位置[10]).getChildByName('闪避').visible = true 
                                                end 
                                            end
                                        end 
                                    elseif n == 7 or n == 8 or n == 11 then 	
                                        if G.QueryName(o_battle)[位置[7]] > 0 then
                                            if G.QueryName(o_role +G.QueryName(o_battle)[位置[7]] ).生命 > 0  then
                                                hurt = G.call('magic_power2',int_id,G.QueryName(o_battle)[位置[7] ],int_代码)
                                                ui.getChildByName('hurt').getChildByName(位置[7]).getChildByName('减生命').text = tostring(hurt)
                                                hurt = tonumber(ui.getChildByName('hurt').getChildByName(位置[7]).getChildByName('减生命').text)
                                                ui.getChildByName('hurt').getChildByName(位置[7]).getChildByName('减生命').visible = true
                                                if hurt == 0 then 
                                                    ui.getChildByName('hurt').getChildByName(位置[7]).getChildByName('减生命').visible = false
                                                    ui.getChildByName('hurt').getChildByName(位置[7]).getChildByName('闪避').visible = true 
                                                end 
                                            end
                                        end
                                        if G.QueryName(o_battle)[位置[8]] > 0 then
                                            if  G.QueryName(o_role +G.QueryName(o_battle)[位置[8]] ).生命 > 0  then
                                                hurt = G.call('magic_power2',int_id,G.QueryName(o_battle)[位置[8] ],int_代码)
                                                ui.getChildByName('hurt').getChildByName(位置[8]).getChildByName('减生命').text = tostring(hurt)
                                                hurt = tonumber(ui.getChildByName('hurt').getChildByName(位置[8]).getChildByName('减生命').text)
                                                ui.getChildByName('hurt').getChildByName(位置[8]).getChildByName('减生命').visible = true
                                                if hurt == 0 then 
                                                    ui.getChildByName('hurt').getChildByName(位置[8]).getChildByName('减生命').visible = false
                                                    ui.getChildByName('hurt').getChildByName(位置[8]).getChildByName('闪避').visible = true 
                                                end 
                                            end
                                        end
                                        if G.QueryName(o_battle)[位置[11]] > 0 then
                                            if  G.QueryName(o_role +G.QueryName(o_battle)[位置[11]] ).生命 > 0  then
                                                hurt = G.call('magic_power2',int_id,G.QueryName(o_battle)[位置[11] ],int_代码)
                                                ui.getChildByName('hurt').getChildByName(位置[11]).getChildByName('减生命').text = tostring(hurt)
                                                hurt = tonumber(ui.getChildByName('hurt').getChildByName(位置[11]).getChildByName('减生命').text)
                                                ui.getChildByName('hurt').getChildByName(位置[11]).getChildByName('减生命').visible = true
                                                if hurt == 0 then 
                                                    ui.getChildByName('hurt').getChildByName(位置[11]).getChildByName('减生命').visible = false
                                                    ui.getChildByName('hurt').getChildByName(位置[11]).getChildByName('闪避').visible = true 
                                                end 
                                            end
                                        end 
                                    end 
                                elseif o_skill.范围 == 4 then	
                                    if n == 7 or n == 9 then 
                                        if G.QueryName(o_battle)[位置[7]] > 0 then
                                            if  G.QueryName(o_role +G.QueryName(o_battle)[位置[7]] ).生命 > 0  then
                                                hurt = G.call('magic_power2',int_id,G.QueryName(o_battle)[位置[7] ],int_代码)
                                                ui.getChildByName('hurt').getChildByName(位置[7]).getChildByName('减生命').text = tostring(hurt)
                                                hurt = tonumber(ui.getChildByName('hurt').getChildByName(位置[7]).getChildByName('减生命').text)
                                                ui.getChildByName('hurt').getChildByName(位置[7]).getChildByName('减生命').visible = true
                                                if hurt == 0 then 
                                                    ui.getChildByName('hurt').getChildByName(位置[7]).getChildByName('减生命').visible = false
                                                    ui.getChildByName('hurt').getChildByName(位置[7]).getChildByName('闪避').visible = true 
                                                end 
                                            end
                                        end
                                        if G.QueryName(o_battle)[位置[9]] > 0 then
                                            if  G.QueryName(o_role +G.QueryName(o_battle)[位置[9]] ).生命 > 0  then
                                                hurt = G.call('magic_power2',int_id,G.QueryName(o_battle)[位置[9] ],int_代码)
                                                ui.getChildByName('hurt').getChildByName(位置[9]).getChildByName('减生命').text = tostring(hurt)
                                                hurt = tonumber(ui.getChildByName('hurt').getChildByName(位置[9]).getChildByName('减生命').text)
                                                ui.getChildByName('hurt').getChildByName(位置[9]).getChildByName('减生命').visible = true
                                                if hurt == 0 then 
                                                    ui.getChildByName('hurt').getChildByName(位置[9]).getChildByName('减生命').visible = false
                                                    ui.getChildByName('hurt').getChildByName(位置[9]).getChildByName('闪避').visible = true 
                                                end 
                                            end
                                        end 
                                    elseif n == 6  or n == 11 then 	
                                        if G.QueryName(o_battle)[位置[6]] > 0 then
                                            if  G.QueryName(o_role +G.QueryName(o_battle)[位置[6]] ).生命 > 0  then
                                                hurt = G.call('magic_power2',int_id,G.QueryName(o_battle)[位置[6] ],int_代码)
                                                ui.getChildByName('hurt').getChildByName(位置[6]).getChildByName('减生命').text = tostring(hurt)
                                                hurt = tonumber(ui.getChildByName('hurt').getChildByName(位置[6]).getChildByName('减生命').text)
                                                ui.getChildByName('hurt').getChildByName(位置[6]).getChildByName('减生命').visible = true
                                                if hurt == 0 then 
                                                    ui.getChildByName('hurt').getChildByName(位置[6]).getChildByName('减生命').visible = false
                                                    ui.getChildByName('hurt').getChildByName(位置[6]).getChildByName('闪避').visible = true 
                                                end 
                                            end
                                        end
                                        if G.QueryName(o_battle)[位置[11]] > 0 then
                                            if  G.QueryName(o_role +G.QueryName(o_battle)[位置[11]] ).生命 > 0  then
                                                hurt = G.call('magic_power2',int_id,G.QueryName(o_battle)[位置[11] ],int_代码)
                                                ui.getChildByName('hurt').getChildByName(位置[11]).getChildByName('减生命').text = tostring(hurt)
                                                hurt = tonumber(ui.getChildByName('hurt').getChildByName(位置[11]).getChildByName('减生命').text)
                                                ui.getChildByName('hurt').getChildByName(位置[11]).getChildByName('减生命').visible = true
                                                if hurt == 0 then 
                                                    ui.getChildByName('hurt').getChildByName(位置[11]).getChildByName('减生命').visible = false
                                                    ui.getChildByName('hurt').getChildByName(位置[11]).getChildByName('闪避').visible = true 
                                                end 
                                            end
                                        end 	
                                    elseif  n == 8 or n == 10 then 
                                        if G.QueryName(o_battle)[位置[8]] > 0 then
                                            if  G.QueryName(o_role +G.QueryName(o_battle)[位置[8]] ).生命 > 0  then
                                                hurt = G.call('magic_power2',int_id,G.QueryName(o_battle)[位置[8] ],int_代码)
                                                ui.getChildByName('hurt').getChildByName(位置[8]).getChildByName('减生命').text = tostring(hurt)
                                                hurt = tonumber(ui.getChildByName('hurt').getChildByName(位置[8]).getChildByName('减生命').text)
                                                ui.getChildByName('hurt').getChildByName(位置[8]).getChildByName('减生命').visible = true
                                                if hurt == 0 then 
                                                    ui.getChildByName('hurt').getChildByName(位置[8]).getChildByName('减生命').visible = false
                                                    ui.getChildByName('hurt').getChildByName(位置[8]).getChildByName('闪避').visible = true 
                                                end 
                                            end
                                        end
                                        if G.QueryName(o_battle)[位置[10]] > 0 then
                                            if  G.QueryName(o_role +G.QueryName(o_battle)[位置[10]] ).生命 > 0  then
                                                hurt = G.call('magic_power2',int_id,G.QueryName(o_battle)[位置[10] ],int_代码)
                                                ui.getChildByName('hurt').getChildByName(位置[10]).getChildByName('减生命').text = tostring(hurt)
                                                hurt = tonumber(ui.getChildByName('hurt').getChildByName(位置[10]).getChildByName('减生命').text)
                                                ui.getChildByName('hurt').getChildByName(位置[10]).getChildByName('减生命').visible = true
                                                if hurt == 0 then 
                                                    ui.getChildByName('hurt').getChildByName(位置[10]).getChildByName('减生命').visible = false
                                                    ui.getChildByName('hurt').getChildByName(位置[10]).getChildByName('闪避').visible = true 
                                                end 
                                            end

                                        end

                                    end 
                                elseif o_skill.范围 == 5 then
                                    for p = 6,11 do 
                                        if G.QueryName(o_battle)[位置[p]] > 0 then
                                            if  G.QueryName(o_role +G.QueryName(o_battle)[位置[p]] ).生命 > 0  then
                                                hurt = G.call('magic_power2',int_id,G.QueryName(o_battle)[位置[p] ],int_代码)
                                                ui.getChildByName('hurt').getChildByName(位置[p]).getChildByName('减生命').text = tostring(hurt)
                                                hurt = tonumber(ui.getChildByName('hurt').getChildByName(位置[p]).getChildByName('减生命').text)
                                                ui.getChildByName('hurt').getChildByName(位置[p]).getChildByName('减生命').visible = true
                                                if hurt == 0 then 
                                                    ui.getChildByName('hurt').getChildByName(位置[p]).getChildByName('减生命').visible = false
                                                    ui.getChildByName('hurt').getChildByName(位置[p]).getChildByName('闪避').visible = true 
                                                end 
                                            end
                                        end 	
                                    end 

                                end 
                                G.noti_call('战场_效果',i,int_动作编号,int_动画位置)
                            end
                        end 
                        ui.getChildByName('tab').getChildByName(位置[i]).getChildByName('over').text = tostring(1)			
                    end
                end
			end 
            for i = 6,11 do --敌人战斗逻辑
                if G.QueryName(o_battle)[位置[i]] > 0 then
                    if G.QueryName(o_role + G.QueryName(o_battle)[位置[i] ]).生命 > 0 and ui.getChildByName('map').getChildByName(位置[i]).x >= 330 then
                        local p = G.QueryName(o_battle)[位置[i]]
                        local int_编号 = G.QueryName(o_role +G.QueryName(o_battle)[位置[i]] ).编号
                        local int_代码 = tonumber(ui.getChildByName('代码').getChildByName(位置[i]).text)
                        i_skill = 0x10050000+int_代码
                        local o_skill = G.QueryName(i_skill)
                        local o_role_tb = G.QueryName(0x10040000 + G.QueryName(o_battle)[位置[i]])
                        local o_role_dm = o_role + G.QueryName(o_battle)[位置[i]]
                        local int_hp = 0
                        local needmp = 0
                        local o_skill_武功等级 = 0
                        if G.call('get_role', G.QueryName(o_battle)[位置[i]],87) > 0 then --混乱状态用普通攻击
                            o_skill = G.QueryName(0x10050000+207)
                        end 
                        int_动作编号 = G.QueryName(o_battle)[位置[i]] + 1000
                        if p >= 253 and p < 385  then  
                            int_动作编号 = int_编号 + 1000
                        end 
                        if  o_skill == G.QueryName(0x10050000+207) then --只有普通攻击才为混乱状态
                            ui.getChildByName('图表').getChildByName('文字').text = o_skill.名称
                            local n = math.random(1,11) 
                            while true do 
                                if ui.getChildByName('tab').getChildByName(位置[n]).visible == false or n == i then 
                                    if G.QueryName(o_battle).模式 >= 4 then 
                                        n = math.random(2,11)
                                    else
                                        n = math.random(1,11)
                                    end
                                else
                                    break
                                end    
                            end      
                            local hurt = 0
                            local int_id = G.QueryName(o_battle)[位置[i]]
                            local int_enemy = G.QueryName(o_battle)[位置[n]]
                            local int_代码 = 207
                            if n == 1 then 
                                hurt = G.call('magic_power3',int_id,int_代码)
                            else
                                hurt = G.call('magic_power2',int_id,int_enemy,int_代码)
                            end  
                            --内力消耗
                            local o_role_人物  = G.QueryName(0x10040000 + int_id)
                            local o_skill = G.QueryName(0x10050000 + int_代码)
                            local int_p = 1
                            for i = 1,3 do
                                --if o_role['技能'..i] == 0x10050000 + int_代码 then 
                                if o_role_人物 ['技能'..i] == 0x10050000 + int_代码 then     
                                    int_p = i
                                end 
                            end
                            local o_skill_武功熟练度 = o_role_人物 [tostring(int_p +9)]
                            local  o_skill_武功等级 =  G.call('逻辑整理-NPC武功等级',int_代码,o_skill_武功熟练度 )
                            local lv = o_skill_武功等级 
                            if int_代码 == 207 then 
                                lv = 10
                            end  
                            local needmp = math.floor(o_skill.消耗内力 * (lv /2)*(lv /2)*0.65)
                            if needmp < 1 then
                                needmp = 1
                            end  
                            G.call('add_role',G.QueryName(o_battle)[位置[i]],14,-needmp) 
                            ui.getChildByName('hurt').getChildByName(位置[n]).getChildByName('减生命').text = tostring(hurt)  
                            ui.getChildByName('hurt').getChildByName(位置[n]).getChildByName('减生命').visible = true
                            if hurt == 0 then 
                                ui.getChildByName('hurt').getChildByName(位置[n]).getChildByName('减生命').visible = false
                                ui.getChildByName('hurt').getChildByName(位置[n]).getChildByName('闪避').visible = true 
                            end 
                            G.noti_call('战场_效果',i,int_动作编号,n)
                        else    
                            if o_skill.范围 == 0 or o_skill.范围 == 1 then
                                for n = 1,3 do
                                    if  o_role_tb[magic[n]] == 0x10050000+int_代码  then 
                                        local o_skill_武功熟练度 =o_role_tb[tostring(n+9)]
                                        o_skill_武功等级 =  G.call('逻辑整理-NPC武功等级',int_代码,o_skill_武功熟练度 )
                                        needmp = math.floor(o_skill.消耗内力 * (o_skill_武功等级/2)*(o_skill_武功等级/2)*0.65)
                                        if needmp == 0 then 
                                            needmp = 1
                                        end     
                                        o_role_tb[tostring(n+9)] = o_role_tb[tostring(n+9)] + 1
                                    end 
                               end        
                            end 
                            ui.getChildByName('图表').getChildByName('文字').text = o_skill.名称
                            if  o_skill.范围 == 0  then 
                                if o_skill.内功轻功效果 == 1 then
                                    if o_role_tb.内力 >= needmp then 
                                        int_hp = math.floor(o_role_tb[tostring(1)]*o_skill.效果等级*o_skill_武功等级/1000)
                                    else
                                        int_hp = math.floor(o_role_tb[tostring(1)]*o_skill.效果等级*o_skill_武功等级/1000*o_role_tb.内力/needmp)
                                    end  
                                    if G.call('通用_取得敌方队伍特效',4) or G.call('通用_取得敌方装备特效',201) then --敌方妙手加成
                                        int_hp = math.floor(int_hp * 1.2) 
                                    end  
                                    if G.call('通用_取得套装',G.QueryName(o_battle)[位置[i]],3) == 2 then --套装3回血效果
                                        int_hp = math.floor(int_hp * 1.05)
                                    elseif G.call('通用_取得套装',G.QueryName(o_battle)[位置[i]],3) == 3 then
                                        int_hp = math.floor(int_hp * 1.1)
                                    end  
                                    ui.getChildByName('hurt').getChildByName(位置[i]).getChildByName('加生命').text = tostring(int_hp) 
                                    ui.getChildByName('hurt').getChildByName(位置[i]).getChildByName('加生命').visible = true
                                    --G.call('通用_战斗飘字')
                                    G.noti_call('战场_效果',i,int_动作编号,i)
                                    G.call('add_role',G.QueryName(o_battle)[位置[i]],14,-needmp) 
                                elseif 	o_skill.内功轻功效果 == 99 then   --自身解毒
                                    G.noti_call('战场_效果',i,int_动作编号,i)
                                    if G.QueryName(o_battle)[位置[i] ][tostring(81)] > 0 then
                                        G.QueryName(o_battle)[位置[i] ][tostring(81)] = 0
                                    end 
                                end
                            elseif o_skill.范围 == 1 then
                                if o_skill.内功轻功效果 == 1 then
                                    local int_hp = 0
                                    for p = 6,11 do 
                                        if G.QueryName(o_battle)[位置[p]] > 0 then
                                            if  G.QueryName(o_role +G.QueryName(o_battle)[位置[p]] ).生命 > 0  then
                                                ui.getChildByName('hurt').getChildByName(位置[p]).getChildByName('加生命').visible = true
                                                if o_role_tb.内力 >= needmp then 
                                                    int_hp = math.floor(o_role_tb[tostring(1)]*o_skill.效果等级*o_skill_武功等级/1000)
                                                else
                                                    int_hp = math.floor(o_role_tb[tostring(1)]*o_skill.效果等级*o_skill_武功等级/1000*o_role_tb.内力/needmp)
                                                end  
                                                if G.call('通用_取得敌方队伍特效',4) or G.call('通用_取得敌方装备特效',201) then--敌方妙手加成
                                                    int_hp = math.floor(int_hp * 1.2) 
                                                end  
                                                if G.call('通用_取得套装',G.QueryName(o_battle)[位置[i]],3) == 2 then --套装3回血效果
                                                    int_hp = math.floor(int_hp * 1.05)
                                                elseif G.call('通用_取得套装',G.QueryName(o_battle)[位置[i]],3) == 3 then
                                                    int_hp = math.floor(int_hp * 1.1)
                                                end  
                                                ui.getChildByName('hurt').getChildByName(位置[p]).getChildByName('加生命').text = tostring(int_hp)
                                            end
                                        
                                        end 
                                    end 
                                    --G.call('通用_战斗飘字')
                                    G.noti_call('战场_效果',i,int_动作编号,12) 
                                    G.call('add_role',G.QueryName(o_battle)[位置[i]],14,-needmp) 
                                elseif o_skill.内功轻功效果 == 19 then
                                    local int_hp = 0
                                    for p = 6,11 do 
                                        if G.QueryName(o_battle)[位置[p]] > 0 then
                                            if  G.QueryName(o_role +G.QueryName(o_battle)[位置[p]] ).生命 > 0  then
                                                ui.getChildByName('hurt').getChildByName(位置[p]).getChildByName('加生命').visible = true
                                                if o_role_tb.内力 >= needmp then 
                                                    int_hp = math.floor(o_role_tb[tostring(1)]*o_skill.效果等级*o_skill_武功等级/1000)
                                                else
                                                    int_hp = math.floor(o_role_tb[tostring(1)]*o_skill.效果等级*o_skill_武功等级/1000*o_role_tb.内力/needmp)
                                                end  
                                                if G.call('通用_取得敌方队伍特效',4) or G.call('通用_取得敌方装备特效',201) then--敌方妙手加成
                                                    int_hp = math.floor(int_hp * 1.2) 
                                                end  
                                                if G.call('通用_取得套装',G.QueryName(o_battle)[位置[i]],3) == 2 then --套装3回血效果
                                                    int_hp = math.floor(int_hp * 1.05)
                                                elseif G.call('通用_取得套装',G.QueryName(o_battle)[位置[i]],3) == 3 then
                                                    int_hp = math.floor(int_hp * 1.1)
                                                end  
                                                for j = 81,89 do 
                                                    G.call('ser_role',G.QueryName(o_battle)[位置[p]],j,0)
                                                    G.call('ser_role',G.QueryName(o_battle)[位置[p]],j+10,0)
                                                end 
                                                ui.getChildByName('hurt').getChildByName(位置[p]).getChildByName('加生命').text = tostring(int_hp)
                                            end
                                        
                                        end 
                                    end 
                                    --G.call('通用_战斗飘字')
                                    G.noti_call('战场_效果',i,int_动作编号,12) 
                                    G.call('add_role',G.QueryName(o_battle)[位置[i]],14,-needmp) 
                                elseif 	o_skill.内功轻功效果 == 6 then   --全体复活
                                    local n = 0
                                    local int_hp = 0
                                    local int_hp = 0
                                    for p = 6,11 do 
                                        if G.QueryName(o_battle)[位置[p] ] > 0 then
                                            if  G.QueryName(o_role +G.QueryName(o_battle)[位置[p]] ).生命 <= 0 then 
                                                n = n + 1
                                                if o_role_tb.内力 >= needmp then 
                                                    int_hp  = math.floor(G.QueryName(o_role +G.QueryName(o_battle)[位置[p]] )[tostring(1)]*o_skill.效果等级*o_skill_武功等级/1000)
                                                else
                                                    int_hp  = math.floor(G.QueryName(o_role +G.QueryName(o_battle)[位置[p]] )[tostring(1)]*o_skill.效果等级*o_skill_武功等级/1000*o_role_tb.内力/needmp)
                                                end  
                                                if G.call('通用_取得敌方队伍特效',4) or G.call('通用_取得敌方装备特效',201) then--敌方妙手加成 
                                                    int_hp = math.floor(int_hp * 1.2)
                                                end   
                                                if G.call('通用_取得套装',G.QueryName(o_battle)[位置[i]],3) == 2 then --套装3回血效果
                                                    int_hp = math.floor(int_hp * 1.05)
                                                elseif G.call('通用_取得套装',G.QueryName(o_battle)[位置[i]],3) == 3 then
                                                    int_hp = math.floor(int_hp * 1.1)
                                                end  
                                                -- if G.call('通用_取得套装',G.QueryName(o_battle)[位置[i]],3) < 3 then
                                                --     if int_hp > 9999 then 
                                                --         int_hp = 9999
                                                --     end
                                                -- end
                                                G.QueryName(o_role +G.QueryName(o_battle)[位置[p]] ).生命 = int_hp
                                                ui.getChildByName('hurt').getChildByName(位置[p]).getChildByName('加生命').text = int_hp
                                                ui.getChildByName('hurt').getChildByName(位置[p]).getChildByName('加生命').visible = true
                                            end
                                        end 
                                    end 
                                    G.noti_call('战场_效果',i,int_动作编号,12) 
                                    if n > 0 then
                                        G.call('add_role',G.QueryName(o_battle)[位置[i]],14,-needmp) 
                                    end 	
                                elseif 	o_skill.内功轻功效果 == 99 then   --全体解毒
                                    G.noti_call('战场_效果',i,int_动作编号,12) 
                                    G.call('add_role',G.QueryName(o_battle)[位置[i]],14,-needmp) 
                                    for p = 6,11 do 
                                        if G.QueryName(o_battle)[位置[p] ] > 0 then
                                            if G.QueryName(o_role +G.QueryName(o_battle)[位置[p]] ).生命 > 0 then 
                                                G.QueryName(o_role +G.QueryName(o_battle)[位置[p]] )[tostring(81)] = 0
                                            end
                                        end 
                                    end                    
                                end 	
                            elseif o_skill.范围 > 1 then 
                                if num0 > 1 then  
                                    ui.getChildByName('代码').getChildByName(位置[i]).getChildByName('id').text = tostring(1) 
                                    ui.getChildByName('代码').getChildByName(位置[i]).getChildByName('min').text = tostring(G.call('get_point',44)) 
                                    if math.random(100) > 50 then 
                                        for p = 2,5 do --ai判断最低生命值的敌人位置
                                            if G.QueryName(o_battle)[位置[p]] > 0 then
                                                if  	G.QueryName(o_role + G.QueryName(o_battle)[位置[p] ]).生命 > 0 then 
                                                    if 	G.QueryName(o_role + G.QueryName(o_battle)[位置[p] ]).生命 -  tonumber(ui.getChildByName('代码').getChildByName(位置[i]).getChildByName('min').text) < 0 then 
                                                        ui.getChildByName('代码').getChildByName(位置[i]).getChildByName('id').text = tostring(p) 
                                                        ui.getChildByName('代码').getChildByName(位置[i]).getChildByName('min').text = tostring(G.QueryName(o_role + G.QueryName(o_battle)[位置[p] ]).生命 ) 
                                                    end 
                                                end
                                            end 	
                                        end 
                                    else
                                        if G.QueryName(o_battle).模式 < 4 then 
                                            table.insert(person,1 )
                                        end
                                        for p = 2,5 do 
                                            if G.QueryName(o_battle)[位置[p]] > 0 then
                                                if	G.QueryName(o_role + G.QueryName(o_battle)[位置[p] ]).生命 > 0 then 
                                                    table.insert(person,p )
                                                end
                                            end
                                        end
                                        ui.getChildByName('代码').getChildByName(位置[i]).getChildByName('id').text = tostring( person[math.random(#person)])  
                                        person = {}  
                                    end
                                end 
                                if num0 == 1 then 
                                    ui.getChildByName('代码').getChildByName(位置[i]).getChildByName('id').text = tostring(1) 
                                    ui.getChildByName('代码').getChildByName(位置[i]).getChildByName('min').text = tostring(G.call('get_point',44)) 
                                end 
                                local hurt = 0
                                local int_id = G.QueryName(o_battle)[位置[i] ]
                                -- --内力消耗
                                local o_role_人物  = G.QueryName(0x10040000 + int_id)
                                local o_skill = G.QueryName(0x10050000 + int_代码)
                                local int_p = 1
                                for i = 1,3 do
                                    if o_role_人物 ['技能'..i] == 0x10050000 + int_代码 then     
                                        int_p = i
                                    end 
                                end
                                local o_skill_武功熟练度 = o_role_人物 [tostring(int_p +9)]
                                local  o_skill_武功等级 =  G.call('逻辑整理-NPC武功等级',int_代码,o_skill_武功熟练度 )
                                local lv = o_skill_武功等级 
                                if int_代码 == 207 then 
                                    lv = 10
                                end  
                                local needmp = math.floor(o_skill.消耗内力 * (lv /2)*(lv /2)*0.65)
                                if needmp < 1 then
                                    needmp = 1
                                end  
                                G.call('add_role',G.QueryName(o_battle)[位置[i]],14,-needmp) 
                                ui.getChildByName('hurt').getChildByName(位置[1]).getChildByName('减生命').text = tostring(hurt)
                                local n = tonumber(ui.getChildByName('代码').getChildByName(位置[i]).getChildByName('id').text)
                                if o_skill.范围 == 2  or o_skill.范围 == 4 then
                                    int_动画位置 = n
                                elseif 	o_skill.范围 == 3  then 
                                    int_动画位置 = 13   
                                elseif o_skill.范围 == 5 then
                                    int_动画位置 = 13
                                end
                                if o_skill.范围 == 2  or o_skill.范围 == 4 then
                                    if n == 1 then 
                                        hurt = G.call('magic_power3',int_id,int_代码)
                                    else
                                        hurt = G.call('magic_power2',int_id,G.QueryName(o_battle)[位置[n]],int_代码)
                                    end
                                    ui.getChildByName('hurt').getChildByName(位置[n]).getChildByName('减生命').text = tostring(hurt)
                                    hurt = tonumber(ui.getChildByName('hurt').getChildByName(位置[n]).getChildByName('减生命').text)
                                    ui.getChildByName('hurt').getChildByName(位置[n]).getChildByName('减生命').visible = true
                                    if hurt == 0 then 
                                        ui.getChildByName('hurt').getChildByName(位置[n]).getChildByName('减生命').visible = false
                                        ui.getChildByName('hurt').getChildByName(位置[n]).getChildByName('闪避').visible = true 
                                    end
                                elseif 	o_skill.范围 == 3  or o_skill.范围 == 5 then
                                    for p = 1,5 do 
                                        if p == 1 then 
                                            hurt = G.call('magic_power3',int_id,int_代码)
                                            ui.getChildByName('hurt').getChildByName(位置[1]).getChildByName('减生命').text = hurt
                                            ui.getChildByName('hurt').getChildByName(位置[1]).getChildByName('减生命').visible = true
                                            if hurt == 0 then 
                                                ui.getChildByName('hurt').getChildByName(位置[1]).getChildByName('减生命').visible = false
                                                ui.getChildByName('hurt').getChildByName(位置[1]).getChildByName('闪避').visible = true 
                                            end 
                                        end 
                                        if p > 1 then    
                                            if G.QueryName(o_battle)[位置[p]] > 0 then
                                                if  G.QueryName(o_role +G.QueryName(o_battle)[位置[p]] ).生命 > 0  then
                                                    hurt = G.call('magic_power2',int_id,G.QueryName(o_battle)[位置[p]],int_代码)
                                                    ui.getChildByName('hurt').getChildByName(位置[p]).getChildByName('减生命').text = tostring(hurt)
                                                    hurt = tonumber(ui.getChildByName('hurt').getChildByName(位置[p]).getChildByName('减生命').text)
                                                    ui.getChildByName('hurt').getChildByName(位置[p]).getChildByName('减生命').visible = true
                                                    if hurt == 0 then 
                                                        ui.getChildByName('hurt').getChildByName(位置[p]).getChildByName('减生命').visible = false
                                                        ui.getChildByName('hurt').getChildByName(位置[p]).getChildByName('闪避').visible = true 
                                                    end 
                                                end
                                            end 	
                                        end    
                                    end 
                                end	
                                G.noti_call('战场_效果',i,int_动作编号,int_动画位置) 
                            end 
                        end
                        ui.getChildByName('tab').getChildByName(位置[i]).getChildByName('over').text = tostring(1)	
                    end 
                end			
            end 
            if ui.getChildByName('map').getChildByName(位置[1]).x >= 330 then   --主角战斗逻辑
                G.misc().战斗状态 = 1
				local int_代码 = tonumber(ui.getChildByName('代码').getChildByName(位置[1]).text)
                i_skill = 0x10050000+int_代码
                local o_skill = G.QueryName(i_skill)
                local o_battle = 0x10150001
                local needmp = math.floor(o_skill.消耗内力 * (o_skill.等级/2)*(o_skill.等级/2)*0.65)
                if o_skill.类别 >= 6 then  
                    needmp = math.floor(o_skill.消耗内力 * (o_skill.修为等级)*(o_skill.修为等级)*0.65)    
                end
                if G.QueryName(G.call('get_point',196)) and G.QueryName(G.call('get_point',196)).内功轻功效果 == 17 then --纯阳无极功，消耗内力减半
                    needmp = math.floor(needmp*G.QueryName(G.call('get_point',196)).效果等级/100)
                end 
                local 位置 = {'team1','team2','team3','team4','team5','enemy1','enemy2','enemy3','enemy4','enemy5','enemy6'}
                local int_hp = 0
                ui.getChildByName('图表').getChildByName('文字').text = o_skill.名称
                if G.call('get_point',87) > 0 then --混乱状态用普通攻击
                    o_skill = G.QueryName(0x10050000+207)
                end 
                if  o_skill == G.QueryName(0x10050000+207) then --只有普通攻击才为混乱状态
                    ui.getChildByName('图表').getChildByName('文字').text = o_skill.名称
                    local n = math.random(2,11) 
                    while true do 
                        if ui.getChildByName('tab').getChildByName(位置[n]).visible == false  then 
                            n = math.random(2,11) 
                        else
                            break
                        end    
                    end 
                    local hurt = 0
                    local int_id = G.QueryName(o_battle)[位置[n]]
                    local int_代码 = 207
                    hurt = G.call('magic_power1',int_id,int_代码)
                    --内力消耗
                    local o_body = G.QueryName(0x10030001)
                    local o_skill = G.QueryName(0x10050000 + int_代码)
                    local needmp = 0
                    G.call('逻辑读取-武功等级',int_代码)
                    local p = o_skill.等级
                    if int_代码 == 207 then 
                       p = 10
                    end 
                    if o_skill.类别 < 6 then  
                        needmp = math.floor(o_skill.消耗内力 * (p/2)*(p/2)*0.65)
                    else
                        needmp = math.floor(o_skill.消耗内力 * (o_skill.修为等级)*(o_skill.修为等级)*0.65)
                    end  
                    if G.QueryName(G.call('get_point',196)) and G.QueryName(G.call('get_point',196)).内功轻功效果 == 17 then --纯阳无极功，消耗内力减半
                        needmp = math.floor(needmp*G.QueryName(G.call('get_point',196)).效果等级/100)
                    end 
                    if needmp < 1 then
                        needmp = 1
                    end 
                    ui.getChildByName('hurt').getChildByName(位置[n]).getChildByName('减生命').text = tostring(hurt)   
                    ui.getChildByName('hurt').getChildByName(位置[n]).getChildByName('减生命').visible = true
                    if hurt == 0 then 
                        ui.getChildByName('hurt').getChildByName(位置[n]).getChildByName('减生命').visible = false
                        ui.getChildByName('hurt').getChildByName(位置[n]).getChildByName('闪避').visible = true 
                    end 
                    G.noti_call('战场_效果',1,9999,n,needmp)
                else 
                    local deytime = G.call('get_point',236) 
                    local int_时序 = 50 * deytime 
                    if  o_skill.范围 == 0  then 
                        if o_skill.内功轻功效果 == 1 then
                            if G.call('get_point',46) >= needmp then 
                                int_hp = math.floor(G.QueryName(0x10030001)[tostring(217)]*o_skill.效果等级*o_skill.修为等级/500)
                            else
                                int_hp = math.floor(G.QueryName(0x10030001)[tostring(217)]*o_skill.效果等级*o_skill.修为等级/500*G.call('get_point',46)/needmp)
                            end 
                            if G.call('通用_取得我方队伍特效',4) or G.call('通用_取得我方装备特效',201) then --我方妙手加成
                                int_hp = math.floor(int_hp * 1.2) 
                            end  
                            if G.call('通用_取得套装',0,3) == 2 then --套装3回血效果
                                int_hp = math.floor(int_hp * 1.05)
                            elseif G.call('通用_取得套装',0,3) == 3 then
                                int_hp = math.floor(int_hp * 1.1)
                            end  
                            if G.call('通用_取得套装',0,3) < 3 then
                                if int_hp > 9999 then 
                                    int_hp = 9999
                                end
                            end
                            ui.getChildByName('hurt').getChildByName(位置[1]).getChildByName('加生命').visible = true
                        elseif o_skill.内功轻功效果 == 16 then   --逍遥御风
                            G.call('set_point',89,1)
                            G.call('set_point',99,int_时序)
                        elseif o_skill.内功轻功效果 == 99 then   --自身解毒
                            G.call('set_point',81,0)       
                        end 
                        G.noti_call('战场_效果',1,6001,1,needmp)
                    elseif  o_skill.范围 == 1  then 	
                        if o_skill.内功轻功效果 == 1 then
                            local int_hp = 0
                            for i = 2,5 do 
                                if G.QueryName(o_battle)[位置[i]] > 0 then
                                    if  G.QueryName(o_role +G.QueryName(o_battle)[位置[i]] ).生命 > 0  then
                                        if G.call('get_point',46) >= needmp then 
                                            int_hp = math.floor(G.QueryName(o_role +G.QueryName(o_battle)[位置[i]])[tostring(1)]*o_skill.效果等级*o_skill.修为等级/500)
                                        else
                                            local int_maxhp = G.QueryName(o_role +G.QueryName(o_battle)[位置[i]])[tostring(1)]
                                            int_hp = math.floor(int_maxhp*o_skill.效果等级*o_skill.修为等级/500*G.call('get_point',46)/needmp)
                                        end  
                                        if G.call('通用_取得我方队伍特效',4) or G.call('通用_取得我方装备特效',201) then --我方妙手加成
                                            int_hp = math.floor(int_hp * 1.2) 
                                        end  
                                        if G.call('通用_取得套装',0,3) == 2 then --套装3回血效果
                                            int_hp = math.floor(int_hp * 1.05)
                                        elseif G.call('通用_取得套装',0,3) == 3 then
                                            int_hp = math.floor(int_hp * 1.1)
                                        end  
                                        if G.call('通用_取得套装',0,3) < 3 then
                                            if int_hp > 9999 then 
                                                int_hp = 9999
                                            end
                                        end
                                        ui.getChildByName('hurt').getChildByName(位置[i]).getChildByName('加生命').text = tostring(int_hp)
                                        ui.getChildByName('hurt').getChildByName(位置[i]).getChildByName('加生命').visible = true
                                    end
                                end 
                            end 
                            if G.call('get_point',46) >= needmp then 
                                int_hp = math.floor(G.QueryName(0x10030001)[tostring(217)]*o_skill.效果等级*o_skill.修为等级/500)
                            else
                                int_hp = math.floor(G.QueryName(0x10030001)[tostring(217)]*o_skill.效果等级*o_skill.修为等级/500*G.call('get_point',46)/needmp)
                            end 	
                            ui.getChildByName('hurt').getChildByName(位置[1]).getChildByName('加生命').text = tostring(int_hp)
                            ui.getChildByName('hurt').getChildByName(位置[1]).getChildByName('加生命').visible = true     
                        elseif o_skill.内功轻功效果 == 19 then
                            local int_hp = 0
                            for i = 2,5 do 
                                if G.QueryName(o_battle)[位置[i]] > 0 then
                                    if  G.QueryName(o_role +G.QueryName(o_battle)[位置[i]] ).生命 > 0  then
                                        if G.call('get_point',46) >= needmp then 
                                            int_hp = math.floor(G.QueryName(o_role +G.QueryName(o_battle)[位置[i]])[tostring(1)]*o_skill.效果等级*o_skill.修为等级/500)
                                        else
                                            local int_maxhp = G.QueryName(o_role +G.QueryName(o_battle)[位置[i]])[tostring(1)]
                                            int_hp = math.floor(int_maxhp*o_skill.效果等级*o_skill.修为等级/500*G.call('get_point',46)/needmp)
                                        end  
                                        if G.call('通用_取得我方队伍特效',4) or G.call('通用_取得我方装备特效',201) then --我方妙手加成
                                            int_hp = math.floor(int_hp * 1.2) 
                                        end  
                                        if G.call('通用_取得套装',0,3) == 2 then --套装3回血效果
                                            int_hp = math.floor(int_hp * 1.05)
                                        elseif G.call('通用_取得套装',0,3) == 3 then
                                            int_hp = math.floor(int_hp * 1.1)
                                        end  
                                        if G.call('通用_取得套装',0,3) < 3 then
                                            if int_hp > 9999 then 
                                                int_hp = 9999
                                            end
                                        end
                                        for j = 81,89 do 
                                            G.call('ser_role',G.QueryName(o_battle)[位置[i]],j,0)
                                            G.call('ser_role',G.QueryName(o_battle)[位置[i]],j+10,0)
                                        end 
                                        ui.getChildByName('hurt').getChildByName(位置[i]).getChildByName('加生命').text = tostring(int_hp)
                                        ui.getChildByName('hurt').getChildByName(位置[i]).getChildByName('加生命').visible = true
                                    end
                                end 
                            end 
                            G.call('ser_point',j,0)
                            G.call('ser_point',j+10,0)
                            if G.call('get_point',46) >= needmp then 
                                int_hp = math.floor(G.QueryName(0x10030001)[tostring(217)]*o_skill.效果等级*o_skill.修为等级/500)
                            else
                                int_hp = math.floor(G.QueryName(0x10030001)[tostring(217)]*o_skill.效果等级*o_skill.修为等级/500*G.call('get_point',46)/needmp)
                            end 	
                            ui.getChildByName('hurt').getChildByName(位置[1]).getChildByName('加生命').text = tostring(int_hp)
                            ui.getChildByName('hurt').getChildByName(位置[1]).getChildByName('加生命').visible = true             
                        elseif 	o_skill.内功轻功效果 == 6 then   --全体复活
                            local n = 0
                            local int_hp = 0
                            for i = 2,5 do 
                                if G.QueryName(o_battle)[位置[i] ] > 0 then
                                    if  G.QueryName(o_role +G.QueryName(o_battle)[位置[i]] ).生命 <= 0 then 
                                        n = n + 1
                                        if G.call('get_point',46) >= needmp then
                                            int_hp  = math.floor(G.QueryName(o_role +G.QueryName(o_battle)[位置[i]] )[tostring(1)]*o_skill.效果等级*o_skill.修为等级/500)
                                        else
                                            int_hp  = math.floor(G.QueryName(o_role +G.QueryName(o_battle)[位置[i]] )[tostring(1)]*o_skill.效果等级*o_skill.修为等级/500*G.call('get_point',46)/needmp)
                                        end   
                                        if G.call('通用_取得我方队伍特效',4) or G.call('通用_取得我方装备特效',201) then --我方妙手加成
                                            int_hp  = math.floor(int_hp * 1.2)
                                        end  
                                        if G.call('通用_取得套装',0,3) == 2 then --套装3回血效果
                                            int_hp = math.floor(int_hp * 1.05)
                                        elseif G.call('通用_取得套装',0,3) == 3 then
                                            int_hp = math.floor(int_hp * 1.1)
                                        end  
                                        if G.call('通用_取得套装',0,3) < 3 then
                                            if int_hp > 9999 then 
                                                int_hp = 9999
                                            end
                                        end  
                                        G.QueryName(o_role +G.QueryName(o_battle)[位置[i]] ).生命 = int_hp
                                        ui.getChildByName('hurt').getChildByName(位置[i]).getChildByName('加生命').text = int_hp
                                        ui.getChildByName('hurt').getChildByName(位置[i]).getChildByName('加生命').visible = true
                                    end
                                end 
                            end 	
                        elseif 	o_skill.内功轻功效果 == 99 then   --我方全体解毒         
                            G.call('set_point',81,0)
                            for i = 2,5 do 
                                if G.QueryName(o_battle)[位置[i] ] > 0 then
                                    if  G.QueryName(o_role +G.QueryName(o_battle)[位置[i]] ).生命 > 0 then 
                                        G.QueryName(o_role +G.QueryName(o_battle)[位置[i]] )[tostring(81)] = 0
                                    end
                                end 
                            end      
                        end 
                        G.noti_call('战场_效果',1,6001,13,needmp)
                    end	
                    if o_skill.范围 > 1 then 
                        local hurt = 0
                        if o_skill.类别 == 5 then
                            local item = G.call('get_point',198) - 0x100b0000 + 1
                            G.call('add_item',item,-1) 
                            if G.call('get_item',item) == 0 then 
                                G.call('set_point',198,nil)   
                            end   
                        end
                        --内力消耗
                        local o_body = G.QueryName(0x10030001)
                        local o_skill = G.QueryName(0x10050000 + int_代码)
                        G.call('逻辑读取-武功等级',int_代码)
                        local p = o_skill.等级
                        if int_代码 == 207 then 
                            p = 10
                        end 
                        if needmp < 1 then
                            needmp = 1
                        end  
                        --计算招式熟练度与招式升级获得的兵器值
                        local int_技能等级 = o_skill.等级
                        local int_奇才 = 0
                        for i = 1,5 do 
                            if G.call('get_point',110+i) == 16 then
                                int_奇才 = 1
                            end
                        end    
                        local IQ_point = math.floor(G.call('get_point',18)/20)
                        local int_point = 5 + IQ_point
                        if o_skill.类别 < 6 and int_代码 ~= 190 and int_代码 ~= 207 then 
                            if int_代码 ~= 82  then --野球拳打木桩不加经验
                                if int_奇才 == 1 then   
                                    int_point = int_point + IQ_point
                                end  
                                if G.call('通用_取得套装',0,2) == 2  then --套装2修炼武功效果
                                    int_point = int_point + 5
                                elseif G.call('通用_取得套装',0,2) == 3  then 
                                    int_point = int_point *2
                                end
                                G.call('add_magicexp',int_代码+1,int_point)
                            end
                        end 
                        G.call('逻辑读取-武功等级',int_代码)
                        if o_skill.等级 - int_技能等级 > 0 then 
                            G.call('notice1','【'..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..'】'..o_skill.名称..'升到'..tostring(o_skill.等级 )..'级')
                            local magic = {23,22,24,25,26,34}
                            G.call('add_point',magic[o_skill.类别+1],math.random(4))     --拳掌等技能升级的时候随机+1-2点对应属性点
                        end  
                        if o_skill.类别 == 0 then
                            int_动作编号 = 1
                        elseif o_skill.类别 == 1 then
                            int_动作编号 = 1000 + math.random(4)
                        elseif o_skill.类别 == 2 then
                            int_动作编号 = 2000 + math.random(3)
                        elseif o_skill.类别 == 3 then
                            int_动作编号 = 3000 + math.random(3)
                        elseif o_skill.类别 == 4 then
                            int_动作编号 = 4000 + math.random(3)
                        elseif o_skill.类别 == 5 then
                            int_动作编号 = 5001
                        elseif o_skill.类别 >= 6 then
                            int_动作编号 = 6000 + math.random(2)
                        end
                        if  o_skill.范围 == 2 and G.misc().范围无双 == 0  then
                            local int_t = tonumber(ui.getChildByName('单目标').text) 
                            if num == 1 then --只有一个敌人直接取敌人位置数据
                                for p = 6,11 do 
                                    if G.QueryName(o_battle)[位置[p]] > 0 then
                                        if 	G.QueryName(o_role + G.QueryName(o_battle)[位置[p]]).生命 > 0  then 
                                            ui.getChildByName('代码').getChildByName(位置[1]).getChildByName('id').text = tostring(p) 
                                            ui.getChildByName('代码').getChildByName(位置[1]).getChildByName('min').text = tostring(G.QueryName(o_role + G.QueryName(o_battle)[位置[p] ]).生命 ) 
                                        end
                                    end 	
                                end
                            elseif  num > 1 then  
                                for p = 6,11 do --记录多个敌人最后一个的位置以及生命值
                                    if G.QueryName(o_battle)[位置[p]] > 0 then
                                        if	G.QueryName(o_role + G.QueryName(o_battle)[位置[p]]).生命 > 0  then 
                                            ui.getChildByName('代码').getChildByName(位置[1]).getChildByName('id').text = tostring(p) 
                                            ui.getChildByName('代码').getChildByName(位置[1]).getChildByName('min').text = tostring(G.QueryName(o_role + G.QueryName(o_battle)[位置[p] ]).生命 ) 
                                        end
                                    end 	
                                end 	
                                for p = 6,11 do --ai判断生命值最低敌人位置信息
                                    if G.QueryName(o_battle)[位置[p]] > 0 then
                                        if	G.QueryName(o_role + G.QueryName(o_battle)[位置[p] ]).生命 > 0 then 
                                            if 	G.QueryName(o_role + G.QueryName(o_battle)[位置[p] ]).生命 -  tonumber(ui.getChildByName('代码').getChildByName(位置[1]).getChildByName('min').text) < 0 then 
                                                ui.getChildByName('代码').getChildByName(位置[1]).getChildByName('id').text = tostring(p) 
                                                ui.getChildByName('代码').getChildByName(位置[1]).getChildByName('min').text = tostring(G.QueryName(o_role + G.QueryName(o_battle)[位置[p] ]).生命 ) 
                                            end 
                                        end
                                    end 	
                                end 
                            end 
                            if ui.getChildByName('tab').getChildByName(位置[int_t]).visible == true then 
                            else
                                int_t = tonumber(ui.getChildByName('代码').getChildByName(位置[1]).getChildByName('id').text) 
                                ui.getChildByName('单目标').text = int_t
                            end 
                            int_序列帧 = int_代码+1
                            int_动画位置 = int_t
                        elseif  o_skill.范围 == 3  and G.misc().范围无双 == 0  then 
                            if  tonumber(ui.getChildByName('横目标').text) == 1 then 
                                if ui.getChildByName('tab').getChildByName(位置[6]).visible == false and ui.getChildByName('tab').getChildByName(位置[9]).visible == false and ui.getChildByName('tab').getChildByName(位置[10]).visible == false then 
                                    ui.getChildByName('横目标').text = 2
                                    int_动画位置 = 12
                                else
                                    int_动画位置 = 14
                                end
                            elseif tonumber(ui.getChildByName('横目标').text) == 2 then 
                                if ui.getChildByName('tab').getChildByName(位置[7]).visible == false and ui.getChildByName('tab').getChildByName(位置[8]).visible == false and ui.getChildByName('tab').getChildByName(位置[11]).visible == false then
                                    ui.getChildByName('横目标').text = 1
                                    int_动画位置 = 14
                                else
                                    int_动画位置 = 12
                                end
                            end  
                        elseif  o_skill.范围 == 4  and G.misc().范围无双 == 0  then 
                            if  tonumber(ui.getChildByName('纵目标').text) == 1 then 
                                if ui.getChildByName('tab').getChildByName(位置[7]).visible == false and ui.getChildByName('tab').getChildByName(位置[9]).visible == false then
                                    if ui.getChildByName('tab').getChildByName(位置[6]).visible == false and ui.getChildByName('tab').getChildByName(位置[11]).visible == false then
                                        ui.getChildByName('纵目标').text = 2
                                        int_动画位置 = 11
                                    else
                                        ui.getChildByName('纵目标').text = 3
                                        int_动画位置 = 8
                                    end
                                else
                                    int_动画位置 = 7
                                end
                            elseif tonumber(ui.getChildByName('纵目标').text) == 2 then 
                                if ui.getChildByName('tab').getChildByName(位置[6]).visible == false and ui.getChildByName('tab').getChildByName(位置[11]).visible == false then
                                    if ui.getChildByName('tab').getChildByName(位置[8]).visible == false and ui.getChildByName('tab').getChildByName(位置[10]).visible == false then
                                        ui.getChildByName('纵目标').text = 3
                                        int_动画位置 = 8
                                    else
                                        ui.getChildByName('纵目标').text = 1
                                        int_动画位置 = 7
                                    end
                                else
                                    int_动画位置 = 11
                                end 
                            elseif tonumber(ui.getChildByName('纵目标').text) == 3 then 
                                if ui.getChildByName('tab').getChildByName(位置[8]).visible == false and ui.getChildByName('tab').getChildByName(位置[10]).visible == false then
                                    if ui.getChildByName('tab').getChildByName(位置[7]).visible == false and ui.getChildByName('tab').getChildByName(位置[9]).visible == false then
                                        ui.getChildByName('纵目标').text = 1
                                        int_动画位置 = 7
                                    else
                                        ui.getChildByName('纵目标').text = 2
                                        int_动画位置 = 11
                                    end
                                else  
                                    int_动画位置 = 8 
                                end
                            end
                        elseif o_skill.范围 == 5 or  G.misc().范围无双 == 1  then
                            int_动画位置 = 12
                        end
                        if  o_skill.范围 == 2  and G.misc().范围无双 == 0  then  
                            local int_t = tonumber(ui.getChildByName('单目标').text) 
                            hurt = G.call('magic_power1',G.QueryName(o_battle)[位置[int_t] ],int_代码)
                            ui.getChildByName('hurt').getChildByName(位置[int_t]).getChildByName('减生命').text = tostring(hurt)
                            ui.getChildByName('hurt').getChildByName(位置[int_t]).getChildByName('减生命').visible = true
                            if hurt == 0 then 
                                ui.getChildByName('hurt').getChildByName(位置[int_t]).getChildByName('减生命').visible = false
                                ui.getChildByName('hurt').getChildByName(位置[int_t]).getChildByName('闪避').visible = true 
                            end 	      
                        elseif  o_skill.范围 == 3  and G.misc().范围无双 == 0  then  
                            if  tonumber(ui.getChildByName('横目标').text) == 1 then  
                                if G.QueryName(o_battle)[位置[6]] > 0 then
                                    if  G.QueryName(o_role + G.QueryName(o_battle)[位置[6]] ).生命 > 0  then
                                        hurt = G.call('magic_power1',G.QueryName(o_battle)[位置[6] ],int_代码)
                                        ui.getChildByName('hurt').getChildByName(位置[6]).getChildByName('减生命').text = tostring(hurt)
                                        ui.getChildByName('hurt').getChildByName(位置[6]).getChildByName('减生命').visible = true
                                        if tonumber(ui.getChildByName('hurt').getChildByName(位置[6]).getChildByName('减生命').text) == 0 then 
                                            ui.getChildByName('hurt').getChildByName(位置[6]).getChildByName('减生命').visible = false
                                            ui.getChildByName('hurt').getChildByName(位置[6]).getChildByName('闪避').visible = true 
                                        end 
                                    end
                                end 
                                if G.QueryName(o_battle)[位置[9]] > 0 then
                                    if  G.QueryName(o_role + G.QueryName(o_battle)[位置[9]] ).生命 > 0  then
                                        hurt = G.call('magic_power1',G.QueryName(o_battle)[位置[9] ],int_代码)
                                        ui.getChildByName('hurt').getChildByName(位置[9]).getChildByName('减生命').text = tostring(hurt)
                                        ui.getChildByName('hurt').getChildByName(位置[9]).getChildByName('减生命').visible = true
                                        if tonumber(ui.getChildByName('hurt').getChildByName(位置[9]).getChildByName('减生命').text) == 0 then 
                                            ui.getChildByName('hurt').getChildByName(位置[9]).getChildByName('减生命').visible = false
                                            ui.getChildByName('hurt').getChildByName(位置[9]).getChildByName('闪避').visible = true 
                                        end
                                    end
                                end 
                                if G.QueryName(o_battle)[位置[10]] > 0 then
                                    if  G.QueryName(o_role + G.QueryName(o_battle)[位置[10]] ).生命 > 0  then
                                        hurt = G.call('magic_power1',G.QueryName(o_battle)[位置[10] ],int_代码)
                                        ui.getChildByName('hurt').getChildByName(位置[10]).getChildByName('减生命').text = tostring(hurt)
                                        ui.getChildByName('hurt').getChildByName(位置[10]).getChildByName('减生命').visible = true
                                        if tonumber(ui.getChildByName('hurt').getChildByName(位置[10]).getChildByName('减生命').text) == 0 then 
                                            ui.getChildByName('hurt').getChildByName(位置[10]).getChildByName('减生命').visible = false
                                            ui.getChildByName('hurt').getChildByName(位置[10]).getChildByName('闪避').visible = true 
                                        end 
                                    end
                                end 
                            elseif tonumber(ui.getChildByName('横目标').text) == 2 then 
                                if G.QueryName(o_battle)[位置[7]] > 0 then
                                    if  G.QueryName(o_role + G.QueryName(o_battle)[位置[7]] ).生命 > 0  then
                                        hurt = G.call('magic_power1',G.QueryName(o_battle)[位置[7] ],int_代码)
                                        ui.getChildByName('hurt').getChildByName(位置[7]).getChildByName('减生命').text = tostring(hurt)
                                        ui.getChildByName('hurt').getChildByName(位置[7]).getChildByName('减生命').visible = true
                                        if tonumber(ui.getChildByName('hurt').getChildByName(位置[7]).getChildByName('减生命').text) == 0 then 
                                            ui.getChildByName('hurt').getChildByName(位置[7]).getChildByName('减生命').visible = false
                                            ui.getChildByName('hurt').getChildByName(位置[7]).getChildByName('闪避').visible = true 
                                        end 
                                    end
                                end 
                                if G.QueryName(o_battle)[位置[8]] > 0 then
                                    if G.QueryName(o_role + G.QueryName(o_battle)[位置[8]] ).生命 > 0  then
                                        hurt = G.call('magic_power1',G.QueryName(o_battle)[位置[8] ],int_代码)
                                        ui.getChildByName('hurt').getChildByName(位置[8]).getChildByName('减生命').text = tostring(hurt)
                                        ui.getChildByName('hurt').getChildByName(位置[8]).getChildByName('减生命').visible = true
                                        if tonumber(ui.getChildByName('hurt').getChildByName(位置[8]).getChildByName('减生命').text) == 0 then 
                                            ui.getChildByName('hurt').getChildByName(位置[8]).getChildByName('减生命').visible = false
                                            ui.getChildByName('hurt').getChildByName(位置[8]).getChildByName('闪避').visible = true 
                                        end 
                                    end
                                end 
                                if G.QueryName(o_battle)[位置[11]] > 0 then
                                    if G.QueryName(o_role + G.QueryName(o_battle)[位置[11]] ).生命 > 0  then
                                        hurt = G.call('magic_power1',G.QueryName(o_battle)[位置[11] ],int_代码)
                                        ui.getChildByName('hurt').getChildByName(位置[11]).getChildByName('减生命').text = tostring(hurt)
                                        ui.getChildByName('hurt').getChildByName(位置[11]).getChildByName('减生命').visible = true
                                        if tonumber(ui.getChildByName('hurt').getChildByName(位置[11]).getChildByName('减生命').text) == 0 then 
                                            ui.getChildByName('hurt').getChildByName(位置[11]).getChildByName('减生命').visible = false
                                            ui.getChildByName('hurt').getChildByName(位置[11]).getChildByName('闪避').visible = true 
                                        end 
                                    end
                                end 
                            end 	
                    
                        elseif  o_skill.范围 == 5  or G.misc().范围无双 == 1  then 
                            for i = 6,11 do
                                if G.QueryName(o_battle)[位置[i]] > 0 then
                                    if  	G.QueryName(o_role + G.QueryName(o_battle)[位置[i] ]).生命 > 0 then 
                                        hurt = G.call('magic_power1',G.QueryName(o_battle)[位置[i] ],int_代码)
                                        ui.getChildByName('hurt').getChildByName(位置[i]).getChildByName('减生命').text = tostring(hurt)
                                        ui.getChildByName('hurt').getChildByName(位置[i]).getChildByName('减生命').visible = true
                                        if tonumber(ui.getChildByName('hurt').getChildByName(位置[i]).getChildByName('减生命').text) == 0 then 
                                            ui.getChildByName('hurt').getChildByName(位置[i]).getChildByName('减生命').visible = false
                                            ui.getChildByName('hurt').getChildByName(位置[i]).getChildByName('闪避').visible = true 
                                        end 	
                                    end
                                end 
                            end 	
                            
                        elseif  o_skill.范围 == 4  and G.misc().范围无双 == 0  then 
                            if  tonumber(ui.getChildByName('纵目标').text) == 1 then 
                                if G.QueryName(o_battle)[位置[7]] > 0 then
                                    if  G.QueryName(o_role + G.QueryName(o_battle)[位置[7]] ).生命 > 0  then
                                        hurt = G.call('magic_power1',G.QueryName(o_battle)[位置[7] ],int_代码)
                                        ui.getChildByName('hurt').getChildByName(位置[7]).getChildByName('减生命').text = tostring(hurt)
                                        ui.getChildByName('hurt').getChildByName(位置[7]).getChildByName('减生命').visible = true
                                        if tonumber(ui.getChildByName('hurt').getChildByName(位置[7]).getChildByName('减生命').text) == 0 then 
                                            ui.getChildByName('hurt').getChildByName(位置[7]).getChildByName('减生命').visible = false
                                            ui.getChildByName('hurt').getChildByName(位置[7]).getChildByName('闪避').visible = true 
                                        end 
                                    end
                                end 
                                if G.QueryName(o_battle)[位置[9]] > 0 then
                                    if  G.QueryName(o_role + G.QueryName(o_battle)[位置[9]] ).生命 > 0  then
                                        hurt = G.call('magic_power1',G.QueryName(o_battle)[位置[9] ],int_代码)
                                        ui.getChildByName('hurt').getChildByName(位置[9]).getChildByName('减生命').text = tostring(hurt)
                                        ui.getChildByName('hurt').getChildByName(位置[9]).getChildByName('减生命').visible = true
                                        if tonumber(ui.getChildByName('hurt').getChildByName(位置[9]).getChildByName('减生命').text) == 0 then 
                                            ui.getChildByName('hurt').getChildByName(位置[9]).getChildByName('减生命').visible = false
                                            ui.getChildByName('hurt').getChildByName(位置[9]).getChildByName('闪避').visible = true 
                                        end 
                                    end
                                end 
                            elseif tonumber(ui.getChildByName('纵目标').text) == 2 then 
                                if G.QueryName(o_battle)[位置[6]] > 0 then
                                    if  G.QueryName(o_role + G.QueryName(o_battle)[位置[6]] ).生命 > 0  then
                                        hurt = G.call('magic_power1',G.QueryName(o_battle)[位置[6] ],int_代码)
                                        ui.getChildByName('hurt').getChildByName(位置[6]).getChildByName('减生命').text = tostring(hurt)
                                        ui.getChildByName('hurt').getChildByName(位置[6]).getChildByName('减生命').visible = true
                                        if tonumber(ui.getChildByName('hurt').getChildByName(位置[6]).getChildByName('减生命').text) == 0 then 
                                            ui.getChildByName('hurt').getChildByName(位置[6]).getChildByName('减生命').visible = false
                                            ui.getChildByName('hurt').getChildByName(位置[6]).getChildByName('闪避').visible = true 
                                        end 
                                    end
                                end 
                                if G.QueryName(o_battle)[位置[11]] > 0 then
                                    if  G.QueryName(o_role + G.QueryName(o_battle)[位置[11]] ).生命 > 0  then
                                        hurt = G.call('magic_power1',G.QueryName(o_battle)[位置[11] ],int_代码)
                                        ui.getChildByName('hurt').getChildByName(位置[11]).getChildByName('减生命').text = tostring(hurt)
                                        ui.getChildByName('hurt').getChildByName(位置[11]).getChildByName('减生命').visible = true
                                        if tonumber(ui.getChildByName('hurt').getChildByName(位置[11]).getChildByName('减生命').text) == 0 then 
                                            ui.getChildByName('hurt').getChildByName(位置[11]).getChildByName('减生命').visible = false
                                            ui.getChildByName('hurt').getChildByName(位置[11]).getChildByName('闪避').visible = true 
                                        end 
                                    end
                                end 
                            elseif tonumber(ui.getChildByName('纵目标').text) == 3 then 
                                if G.QueryName(o_battle)[位置[8]] > 0 then
                                    if  G.QueryName(o_role + G.QueryName(o_battle)[位置[8]] ).生命 > 0  then
                                        hurt = G.call('magic_power1',G.QueryName(o_battle)[位置[8] ],int_代码)
                                        ui.getChildByName('hurt').getChildByName(位置[8]).getChildByName('减生命').text = tostring(hurt)
                                        ui.getChildByName('hurt').getChildByName(位置[8]).getChildByName('减生命').visible = true
                                        if tonumber(ui.getChildByName('hurt').getChildByName(位置[8]).getChildByName('减生命').text) == 0 then 
                                            ui.getChildByName('hurt').getChildByName(位置[8]).getChildByName('减生命').visible = false
                                            ui.getChildByName('hurt').getChildByName(位置[8]).getChildByName('闪避').visible = true 
                                        end 
                                    end
                                end 
                                if G.QueryName(o_battle)[位置[10]] > 0 then
                                    if  G.QueryName(o_role + G.QueryName(o_battle)[位置[10]] ).生命 > 0  then
                                        hurt = G.call('magic_power1',G.QueryName(o_battle)[位置[10] ],int_代码)
                                        ui.getChildByName('hurt').getChildByName(位置[10]).getChildByName('减生命').text = tostring(hurt)
                                        ui.getChildByName('hurt').getChildByName(位置[10]).getChildByName('减生命').visible = true
                                        if tonumber(ui.getChildByName('hurt').getChildByName(位置[10]).getChildByName('减生命').text) == 0 then 
                                            ui.getChildByName('hurt').getChildByName(位置[10]).getChildByName('减生命').visible = false
                                            ui.getChildByName('hurt').getChildByName(位置[10]).getChildByName('闪避').visible = true 
                                        end 
                                    end
                                end 	
                            end
                        end
                        G.noti_call('战场_效果',1,int_动作编号,int_动画位置,needmp)   
                    end 
                end     		
                ui.getChildByName('tab').getChildByName(位置[1]).getChildByName('over').text = tostring(1)
                G.misc().范围无双 = 0
                G.misc().战斗状态 = 0
            end 
            G.start_program('集气')
			for i = 1,11 do
                if ui.getChildByName('map').getChildByName(位置[i]).x >= 330 then 
                    ui.getChildByName('map').getChildByName(位置[i]).x = 0
                    if i > 1 then 
                        if math.random(100) > 90 and G.call('通用_取得青龙附加效果',G.QueryName(o_battle)[位置[i]],i_skill)   then --青龙以及5项兵器效果
                            ui.getChildByName('map').getChildByName(位置[i]).x = 140
                        elseif G.call('通用_取得套装',G.QueryName(o_battle)[位置[i]],5) == 2 then
                            ui.getChildByName('map').getChildByName(位置[i]).x = 15
                        elseif G.call('通用_取得套装',G.QueryName(o_battle)[位置[i]],5) == 3 then
                            ui.getChildByName('map').getChildByName(位置[i]).x = 50
                        end 
                    else
                        if math.random(100) > 90 and  G.call('通用_取得青龙附加效果',0,i_skill)   then --青龙以及5项兵器效果
                            ui.getChildByName('map').getChildByName(位置[i]).x = 140
                        elseif G.call('通用_取得套装',0,5) == 2 then
                            ui.getChildByName('map').getChildByName(位置[i]).x = 15
                        elseif G.call('通用_取得套装',0,5) == 3 then
                            ui.getChildByName('map').getChildByName(位置[i]).x = 50
                        end 
                    end
				    if  ui.getChildByName('tab').getChildByName(位置[i]).getChildByName('over').text == tostring(1) then  
						ui.getChildByName('tab').getChildByName(位置[i]).getChildByName('over').text = tostring(0)
                    end 
                
			    end 
            end 
		elseif r == 1 then
			local ui ;
			if not G.getUI('v_battle') then 
				return
			end 
            ui = G.getUI('v_battle')
            local i_battle = 0x10150001
			local o_battle = G.QueryName(i_battle)
			local o_role = 0x10040000
			local 位置 = {'team1','team2','team3','team4','team5','enemy1','enemy2','enemy3','enemy4','enemy5','enemy6'}
            local magic = {'技能1','技能2','技能3'}
            for i = 2,11 do 
                local int_role = o_battle[位置[i]]
                local o_role_tb = G.QueryName(o_role + G.QueryName(i_battle)[位置[i] ] )
                if G.QueryName(i_battle)[位置[i] ] > 0 and G.misc().行动序号 == i  then
                    if  G.call('get_role',int_role,13) > 0  then 
                        if G.call('get_role',int_role,87) > 0 then --混乱状态默认使用普通攻击，随机选择除自己外目标
                            ui.getChildByName('代码').getChildByName(位置[i ]).text = tostring(190)
                        else
                            local skill = {o_role_tb.技能1,o_role_tb.技能2,o_role_tb.技能3}
                            local o_skill = skill[math.random(3)]  
                            while true do   --npc随机使用一个攻击招式
                                if o_skill ~= nil then 
                                    if 	(G.QueryName( o_skill).类别 > 5 and G.QueryName( o_skill).招式 == false) or  (G.QueryName( o_skill).类别 > 5 and G.QueryName( o_skill).招式 == true  and  (G.QueryName( o_skill).范围 ==0 or  G.QueryName( o_skill).范围 ==1) )   then 
                                        o_skill = skill[math.random(3)] 
                                    else
                                        break
                                    end	
                                else
                                    o_skill = skill[math.random(3)] 
                                end
                            end 
                            if o_role_tb.内力 > 0 then 
                                for n = 1,3 do 
                                    if  o_role_tb[magic[n] ] ~= nil then
                                        local o_skill_tb = G.QueryName(o_role_tb[magic[n] ]) 
                                        if i <= 5 and i >= 2 then  
                                            if o_skill_tb.内功轻功效果 == 99  or o_skill_tb.内功轻功效果 == 19 then --判断我方有中毒队友会解毒术的时候使用解毒术
                                                if G.call('get_role',int_role,81) > 0 and o_skill_tb.范围 == 0 then 
                                                    o_skill = o_role_tb[magic[n] ] 
                                                end 
                                                if G.call('get_point',81) > 0 then 
                                                    if o_skill_tb.范围 == 1 then
                                                        o_skill = o_role_tb[magic[n] ] 
                                                    end     
                                                end 
                                                for p = 2,5 do 
                                                    local int_role_1 = G.QueryName(i_battle)[位置[p] ]
                                                    if int_role_1 > 0 then
                                                        if G.call('get_role',int_role_1,13) and   G.call('get_role',int_role_1,81) > 0 then 
                                                            if o_skill_tb.范围 == 1 then 
                                                                o_skill = o_role_tb[magic[n] ] 
                                                            end   
                                                        end
                                                    end 
                                                end        
                                            end     
                                            if o_skill_tb.内功轻功效果 == 1 or o_skill_tb.内功轻功效果 == 19 then  --判断队友 ai使用加血
                                                if (G.call('get_role',int_role,13) <= G.call('get_role',int_role,1)/2) and (o_skill_tb.范围 == 0 or o_skill_tb.范围 == 1 )   then 
                                                    o_skill = o_role_tb[magic[n] ] 
                                                end 
                                                if o_skill_tb.范围 == 1 then
                                                    if G.call('get_point',44) < G.call('get_point',217)/2 then 
                                                        o_skill = o_role_tb[magic[n] ] 
                                                    end 
                                                    for p = 2,5 do 
                                                        local int_role_1 = G.QueryName(i_battle)[位置[p] ]
                                                        if int_role_1 > 0 then
                                                            if 	G.call('get_role',int_role_1,13) > 0 then 
                                                                if G.call('get_role',int_role_1,13) < G.call('get_role',int_role_1,1)/2 then 
                                                                    o_skill =o_role_tb[magic[n] ]
                                                                end     
                                                            end
                                                        end 
                                                    end 
                                                end 
                                            end 
                                            if o_skill_tb.内功轻功效果 == 6  then    --判断队友使用复活
                                                for p = 2,5 do 
                                                    local int_role_1 = G.QueryName(i_battle)[位置[p] ]
                                                    if int_role_1 > 0  then
                                                        if 	G.call('get_role',int_role_1,13) <= 0 then 
                                                            o_skill = o_role_tb[magic[n]]
                                                        end
                                                    end 
                                                end  

                                            end
                                        elseif i <= 11 and i >= 6 then  
                                            if o_skill_tb.内功轻功效果 == 99  or o_skill_tb.内功轻功效果 == 19 then --判断敌方有中毒队友会解毒术的时候使用解毒术
                                                if G.call('get_role',int_role,81) > 0 and  o_skill_tb.范围 == 0  then 
                                                    o_skill = o_role_tb[magic[n]]
                                                end 
                                                for p = 6,11 do 
                                                    local int_role_1 = G.QueryName(i_battle)[位置[p] ]
                                                    if int_role_1 > 0 then
                                                        if  G.call('get_role',int_role_1,13) > 0 and G.call('get_role',int_role_1,81) > 0 then 
                                                            if o_skill_tb.范围 == 1 then
                                                                o_skill = o_role_tb[magic[n]]
                                                            end    
                                                        end 
                                                    end 
                                                end     
                                            
                                            end     
                                            if o_skill_tb.内功轻功效果 == 1  or o_skill_tb.内功轻功效果 == 19 then  --判断敌方 ai使用加血
                                                if G.call('get_role',int_role,13) <= G.call('get_role',int_role,1)/2 and o_skill_tb.范围 == 0   then 
                                                    o_skill = o_role_tb[magic[n] ]
                                                end 
                                                if o_skill_tb.范围 == 1 then
                                                    for p = 6,11 do 
                                                        local int_role_1 = G.QueryName(i_battle)[位置[p] ]
                                                        if int_role_1 > 0 then
                                                            if  G.call('get_role',int_role_1,13) > 0 then 
                                                                if G.call('get_role',int_role_1,13) <= G.call('get_role',int_role_1,1)/2 then 
                                                                    o_skill = o_role_tb[magic[n] ]   
                                                                end     
                                                            end
                                                        end 
                                                    end  
                                                end  
                                            end     
                                            if o_skill_tb.内功轻功效果 == 6  then    --判断敌方使用复活
                                                for p = 6,11 do 
                                                    local int_role_1 = G.QueryName(i_battle)[位置[p] ]
                                                    if int_role_1 > 0 then
                                                        if  G.call('get_role',int_role_1,13) <= 0 then 
                                                            o_skill = o_role_tb[magic[n]]
                                                        end
                                                    end 
                                                end  
                                            end
                                        end     
                                    end 
                                end 
                            end 
                            ui.getChildByName('代码').getChildByName(位置[i]).text = tostring(o_skill-0x10050000)
                        end
                        local int_hp = 0
                        local int_mp = 0
                        if ui.getChildByName('map').getChildByName(位置[i]).x == 150 then
                            for n = 1,3 do --判断NPC的内功回血回内效果
                                local o_skill_tb = G.QueryName(o_role_tb[magic[n]])
                                if  o_role_tb[magic[n]] ~= nil then 
                                    if o_skill_tb.内功轻功效果 == 10 then 
                                        int_hp = math.floor(o_role_tb[tostring(1)]*o_skill_tb.效果等级/100)
                                    elseif 	o_skill_tb.内功轻功效果 == 11 then 
                                        int_mp = math.floor(o_role_tb[tostring(2)]*o_skill_tb.效果等级/100)
                                    end 
                                end 		
                            end
                            G.call('add_role',13,int_hp)
                            G.call('add_role',14,int_mp)
                            if G.call('get_role',int_role,84) > 0 then 
                                ui.getChildByName('map').getChildByName(位置[i]).x = 0 --npc内伤状态无法使用武功 
                            else
                                ui.getChildByName('map').getChildByName(位置[i]).x = 151 
                                if G.call('通用_取得人物特效',o_battle[位置[i] ],3) and  math.random(100) > 70 then 
                                    ui.getChildByName('map').getChildByName(位置[i]).x = 330 
                                end
                                G.trig_event('出手')       
                            end 		
                        end 
                    end	
                end
			end 
        end     
    end         
end
--type=
--hide=true
--private=false
t['战斗对话1'] = function()
	local ui ;
	if not G.getUI('v_battle') then 
		return
	end 
	ui = G.getUI('v_battle')
    local i_battle = 0x10150001
    local o_battle = G.QueryName(i_battle)
    local o_role = 0x10040000
    local o_body = G.QueryName(0x10030001)
    local deytime = G.call('get_point',236)
	local 位置 = {'team1','team2','team3','team4','team5','enemy1','enemy2','enemy3','enemy4','enemy5','enemy6'}
	local team1 = {'早该觉悟了','只有在战斗中才能成长','看我绝世武功'}
	while true do 
        G.wait_time(deytime*50)
		for i = 1,5 do 
			if i == 1  and o_battle.模式 < 4 then 
				if math.random(100) > 50 then 
					ui.getChildByName('talk').getChildByName(位置[1]).getChildByName('text').text = team1[math.random(3)]
					ui.getChildByName('talk').getChildByName(位置[1]).visible = true
				end 
			elseif i > 1 then
                if G.QueryName(0x10150001)[位置[i]] > 0 then
                    if 	G.QueryName(0x10040000 + G.QueryName(0x10150001)[位置[i] ]).生命 > 0 then 
                        local talk = {G.QueryName(0x10040000 + G.QueryName(0x10150001)[位置[i] ]).战斗对白1,G.QueryName(0x10040000 + G.QueryName(0x10150001)[位置[i] ]).战斗对白2,G.QueryName(o_role + G.QueryName(o_battle)[位置[i] ]).战斗对白3}
                        ui.getChildByName('talk').getChildByName(位置[i]).getChildByName('text').text = talk[math.random(3)]
                        if math.random(100) > 70 then 
                            ui.getChildByName('talk').getChildByName(位置[i]).visible = true
                        
                        end 	
                    end
				end 
			end 		
		end
		G.wait_time(1500)
		for i = 1,5 do 
		    ui.getChildByName('talk').getChildByName(位置[i]).visible = false 
		end 
    end 		
end
--type=
--hide=true
--private=false
t['战斗对话2'] = function()
	local ui ;
	if not G.getUI('v_battle') then 
		return
	end 
	ui = G.getUI('v_battle')
	local o_battle = 0x10150001
    local o_role = 0x10040000
    local o_body = G.QueryName(0x10030001)
    local deytime = G.call('get_point',236)
	local 位置 = {'team1','team2','team3','team4','team5','enemy1','enemy2','enemy3','enemy4','enemy5','enemy6'}
    while true do 
		G.wait_time(deytime*50)
		for i = 6,11 do 
            if G.QueryName(0x10150001)[位置[i]] > 0 then
                if  	G.QueryName(0x10040000 + G.QueryName(0x10150001)[位置[i] ]).生命 > 0 then 
                    local talk = {G.QueryName(0x10040000 + G.QueryName(0x10150001)[位置[i] ]).战斗对白1,G.QueryName(0x10040000 + G.QueryName(0x10150001)[位置[i] ]).战斗对白2,G.QueryName(o_role + G.QueryName(o_battle)[位置[i] ]).战斗对白3}
                    ui.getChildByName('talk').getChildByName(位置[i]).getChildByName('text').text = talk[math.random(3)]
                    if math.random(100) > 70 then 
                        ui.getChildByName('talk').getChildByName(位置[i]).visible = true	
                    end 	
                end
			end 		
		end 
		G.wait_time(1500)
		for i = 6,11 do 
            ui.getChildByName('talk').getChildByName(位置[i]).visible = false	
		end 	 	
    end 		
end
--type=
--hide=true
--private=false
t['异常显示'] = function()
	local ui ;
	if not G.getUI('v_battle') then 
		return
	end 
	local o_body = G.QueryName(0x10030001)
	ui = G.getUI('v_battle')
	local o_battle = 0x10150001
    local o_role = 0x10040000
    local 位置 = {'team1','team2','team3','team4','team5','enemy1','enemy2','enemy3','enemy4','enemy5','enemy6'}
    local deytime = G.QueryName(0x10030001)[tostring(236)]
	while true do 
		G.wait_time(deytime)
		for i = 1,11 do          --每时序显示每个人的异常状态图标
			if ui.getChildByName('tab').getChildByName(位置[i]).visible == true  then 
				if i == 1 then 
					if G.call('get_point',81) > 0 then 
						ui.getChildByName('tab').getChildByName(位置[i]).getChildByName('yc').getChildByName('y2').visible = true
					end
					if G.call('get_point',83) > 0 then 
						ui.getChildByName('tab').getChildByName(位置[i]).getChildByName('yc').getChildByName('y3').visible = true
					end 
					if G.call('get_point',82) > 0 then 
						ui.getChildByName('tab').getChildByName(位置[i]).getChildByName('yc').getChildByName('y1').visible = true
					end 
					if G.call('get_point',86) > 0 then 
						ui.getChildByName('tab').getChildByName(位置[i]).getChildByName('yc').getChildByName('y4').visible = true
					end 	
				end
                if i > 1 then 
                    local o_role_tb = G.QueryName(0x10040000 +G.QueryName(0x10150001)[位置[i]] )
                    if G.QueryName(0x10150001)[位置[i]] > 0 and o_role_tb.生命 > 0 then         
                        if o_role_tb[tostring(81)] > 0 then 
                            ui.getChildByName('tab').getChildByName(位置[i]).getChildByName('yc').getChildByName('y2').visible = true
                        end
                        if o_role_tb[tostring(83)] > 0 then 
                            ui.getChildByName('tab').getChildByName(位置[i]).getChildByName('yc').getChildByName('y3').visible = true
                        end 
                        if o_role_tb[tostring(82)] > 0 then 
                            ui.getChildByName('tab').getChildByName(位置[i]).getChildByName('yc').getChildByName('y1').visible = true
                        end 
                        if o_role_tb[tostring(86)] > 0 then 
                            ui.getChildByName('tab').getChildByName(位置[i]).getChildByName('yc').getChildByName('y4').visible = true
                        end 
                    end
				end 
			end 		
		end	
		G.wait_time(1000)
		for i = 1,11 do 
		    ui.getChildByName('tab').getChildByName(位置[i]).getChildByName('yc').getChildByName('y4').visible = false
		end 
		G.wait_time(1000)
		for i = 1,11 do 
		    ui.getChildByName('tab').getChildByName(位置[i]).getChildByName('yc').getChildByName('y3').visible = false
		end 
		G.wait_time(1000)
		for i = 1,11 do 
		    ui.getChildByName('tab').getChildByName(位置[i]).getChildByName('yc').getChildByName('y2').visible = false
		end 
		G.wait_time(1000)
		for i = 1,11 do 
		    ui.getChildByName('tab').getChildByName(位置[i]).getChildByName('yc').getChildByName('y1').visible = false
		end 
	end	
end
--type=
--hide=true
--private=false
t['集气'] = function()
	local ui ;
	if not G.getUI('v_battle') then 
		return
	end 
	ui = G.getUI('v_battle')
	local o_battle = G.QueryName(0x10150001)
    local o_role = 0x10040000
    local o_body = G.QueryName(0x10030001)
	local 位置 = {'team1','team2','team3','team4','team5','enemy1','enemy2','enemy3','enemy4','enemy5','enemy6'}
	local magic = {'技能1','技能2','技能3'}
    local deytime = G.call('get_point',236)
	while true do 
		local speed = {}
		for i = 1,11 do 
			speed[i] = 0
		end 
        speed[1] = G.call('get_point',210)*2  --主角轻身
        if (G.call('通用_取得人物特效',0,14) or G.call('通用_取得装备特效',0,302) or G.call('通用_取得装备特效',0,409) ) and G.call('get_point',44) < G.call('get_point',217)*0.2  then --强行
            speed[1] = speed[1]*1.2
        end
        if G.call('通用_取得人物特效',0,5) or G.call('通用_取得装备特效',0,303) then --急速
            speed[1] = speed[1]*1.3
        end
        if G.call('get_point',89) > 1 then --逍遥御风
            speed[1] = speed[1]*1.2
        end
        if (G.call('通用_取得我方队伍特效',8) or G.call('通用_取得我方装备特效',301) or G.call('通用_取得我方装备特效',407))  then  --激励对主角集气的加成
            speed[1] = speed[1]+10
        end     
        for i = 2,11 do 
            local o_battle = G.QueryName(0x10150001)
            if o_battle[位置[i]] > 0 then
                if  G.QueryName(o_role + o_battle[位置[i]] ).生命 > 0  then
                    local int_role = o_battle[位置[i]] 
                    local o_role_npc = G.QueryName(o_role + o_battle[位置[i]] )
                    local int_speed = o_role_npc[tostring(8)]*2 
                    local int_难度 = G.QueryName(0x10160000 +G.call('get_point',143)).难度
                    if i >= 6 then 
                        if int_难度 == 1 then 
                            int_speed = int_speed * 0.5
                        elseif  int_难度 == 2 then    
                            int_speed = int_speed * 0.8
                        end
                    end
                    speed[i] = speed[i] + int_speed   --NPC速度
                    if i < 6 then --NPC激励对全队速度的加成
                        if (G.call('通用_取得我方队伍特效',8) or G.call('通用_取得我方装备特效',301) or G.call('通用_取得我方装备特效',407)) then 
                            speed[i] = speed[i]*1.1
                        end
                    else
                        if (G.call('通用_取得敌方队伍特效',8) or G.call('通用_取得敌方装备特效',301)or G.call('通用_取得敌方装备特效',407)) then 
                            speed[i] = speed[i]*1.1
                        end
                    end 
                    if (G.call('通用_取得人物特效',int_role,14) or G.call('通用_取得装备特效',int_role,302) or G.call('通用_取得装备特效',int_role,409)) and o_role_npc.生命 < o_role_npc[tostring(1)]*0.2  then --强行
                        speed[i] = speed[i]*1.2
                    end
                    if G.call('通用_取得人物特效',int_role,5) or G.call('通用_取得装备特效',int_role,303) then --急速
                        speed[i] = speed[i]*1.3
                    end
                end    
			end 		
        end
        local boss_生命 = G.QueryName(o_role + o_battle[位置[6]] ).生命
        local boss_姓名 =  G.QueryName(o_role + o_battle[位置[6]] ).姓名
        ui.getChildByName('boss').text = '[08]'..boss_姓名..'[0a]'..boss_生命
        G.wait_time(deytime)
        if (G.call('通用_取得人物特效',0,12) or G.call('通用_取得装备特效',0,104)) and G.call('get_point',44) < G.call('get_point',217)*0.3  then  --主角的回春技能加成
            if G.call('get_point',44) > 0 then 
                G.call('add_point',44,10)
            end
        end     
        G.call('add_point',80,deytime) --战场时间增加
        local s = G.call('get_point',80)
        local s3 = string.format("%.2d:%.2d:%.2d", math.floor(s/60000) , math.floor(s/1000)%60 , s%1000)
        ui.getChildByName('时间').text = s3  
        for i = 81,89 do --主角部分异常状态以及逍遥鱼粉效果随时间清除
            if G.call('get_point',i) > 0 then 
                G.call('add_point',i+10,-deytime)
            end 
            if G.call('get_point',i+10) <= 0 then 
               G.call('set_point',i,0) 
            end
        end  
        --异常状态显示 
        local str_异常 = {'中毒','麻痹','晕眩','内伤','受伤','减速','混乱','致盲','御风'}
        local result = false
        for i = 81,89 do --
            if G.call('get_point',i) > 0 then 
                result = true
                break
            end
        end
        if result == true then 
            ui.getChildByName('异常').visible = true
            local string_字符串 = ''
            for i = 81,89 do --
                if G.call('get_point',i) > 0 then
                    local int_异常时间=  G.call('get_point',i+10)
                    string_字符串 = string_字符串..'[08]'..str_异常[i-80]..' [01]'..int_异常时间..'[br]'
                end
            end
            ui.getChildByName('异常').getChildByName('状态').text = string_字符串
        else
            ui.getChildByName('异常').visible = false
        end    
        for i = 2,11 do 
            local o_battle = G.QueryName(0x10150001) 
            local o_role_npc = G.QueryName(o_role + o_battle[位置[i]] )
            if o_battle[位置[i] ] > 0 then
                if  o_role_npc.生命 > 0 then 
                    local int_role = o_battle[位置[i]] 
                    if (G.call('通用_取得人物特效',int_role,12) or G.call('通用_取得装备特效',int_role,104)) and o_role_npc.生命 < o_role_npc[tostring(1)]*0.5  and  o_role_npc.生命 > 0 then --npc回春效果
                        G.call('add_role',int_role,13,10) 
                    end     
                    if G.call('get_role',int_role,81) > 0 then --npc中毒受伤
                        G.call('add_role',int_role,13,-20)  
                    end
                    if G.call('get_role',int_role,85) > 0 then 
                        G.call('add_role',int_role,13,-10) 
                    end     
                    for p = 81,89 do --npc异常状态随时间清除
                        if G.call('get_role',int_role,p )  > 0 then 
                            G.call('add_role',int_role,p+10,-deytime)
                        end
                        if  G.call('get_role',int_role,p+10 )  <= 0 then 
                            G.call('set_role',int_role,p ,0)
                        end    
                    end  
                end    
            end 
        end 
        if G.call('get_point',81) > 0 then  --中毒受伤
            G.call('add_point',44,-20)
        end
        if G.call('get_point',85) > 0 and G.call('get_point',48) > 0 then
            G.call('add_point',48,-1)  
        end 
        for i = 1,11 do 
			if ui.getChildByName('map').getChildByName(位置[i]).visible == true and o_battle[位置[i]] > 0  then 
                if ui.getChildByName('map').getChildByName(位置[i]).x < 150 then 
                    local o_battle = G.QueryName(0x10150001)
                    local o_role_tb = G.QueryName(0x10040000 + o_battle[位置[i] ] )
                    if i == 1 then 
                        if G.call('get_point',82) > 0 then   --判断麻痹状态
                        else  
							if G.call('get_point',86) > 0 and G.call('get_point',83) == 0  then  --判断寒冰状态
								ui.getChildByName('map').getChildByName(位置[1]).x = ui.getChildByName('map').getChildByName(位置[1]).x +(speed[1])/27+0.5
                            elseif G.call('get_point',83) > 0 then  --晕眩状态
                                G.call('set_point',48,0)
                                ui.getChildByName('map').getChildByName(位置[1]).x = ui.getChildByName('map').getChildByName(位置[1]).x +(speed[1])/60+0.5
                            else                                                                        --
                                ui.getChildByName('map').getChildByName(位置[1]).x = ui.getChildByName('map').getChildByName(位置[1]).x +(speed[1])/15+0.5
							end
                        end	
             
                    end 
                    if i > 1  then 		
                        local o_role_tb = G.QueryName(0x10040000 +o_battle[位置[i] ] )
                        if o_role_tb[tostring(82)] > 0 then   --判断麻痹状态
                        else    
							if o_role_tb[tostring(86)] > 0 then  --判断寒冰状态
								ui.getChildByName('map').getChildByName(位置[i]).x = ui.getChildByName('map').getChildByName(位置[i]).x +(speed[i])/27+0.5
                            else
								ui.getChildByName('map').getChildByName(位置[i]).x = ui.getChildByName('map').getChildByName(位置[i]).x +(speed[i])/15+0.5
							end
                        end	
					end 
				    if ui.getChildByName('map').getChildByName(位置[i]).x > 150 then 
						ui.getChildByName('map').getChildByName(位置[i]).x = 150
                    end 
                    if G.misc().战斗状态 == 1  and ui.getChildByName('map').getChildByName(位置[1]).x == 150 then 
                        G.trig_event('准备结束')
                    end
                    if ui.getChildByName('map').getChildByName(位置[1]).x == 150  and G.call('get_point',87) > 0 then 
                        G.misc().战斗状态 = 1
                        G.trig_event('主角准备')
                    end
				    for i = 2,11 do 
                        if ui.getChildByName('map').getChildByName(位置[i]).x == 150 then 
                            G.misc().行动序号 = i          
							G.trig_event('准备')
						end
					end 	
				end 
                if ui.getChildByName('map').getChildByName(位置[i]).x > 150   then 
                    local o_battle = G.QueryName(0x10150001)
					if tonumber(ui.getChildByName('代码').getChildByName(位置[i]).text) > 0 then 
					    local int_代码 = tonumber(ui.getChildByName('代码').getChildByName(位置[i]).text)
						local int_气槽 = G.QueryName(0x10050000+int_代码).气槽
					    speed[i] = (100 -  int_气槽)/4
                    end 	
                    if i == 1 then 
                        if G.call('通用_取得套装',0,1) == 3 then--套装1效果
                            speed[1] = speed[1] + 1 
                        end
                        if G.call('get_point',196) ~= nil then --主角内功对集气的加成
                            if G.QueryName(G.call('get_point',196) ).内功轻功效果 == 9 then 
                                speed[1] = speed[1] + G.QueryName(G.call('get_point',196) ).效果等级*G.QueryName(G.call('get_point',196) ).修为等级/5
                            end
                        end 
                        if G.call('get_point',197) ~= nil then --主角轻功对回气的加成
                            if G.QueryName(G.call('get_point',197) ).内功轻功效果 == 9 then 
                                speed[1] = speed[1] + G.QueryName(G.call('get_point',197) ).效果等级*G.QueryName(G.call('get_point',197) ).修为等级/5
                            end
                        end
                        if G.call('get_point',82) > 0 then   --判断麻痹状态
                        else    
							if G.call('get_point',86) > 0  and G.call('get_point',83) == 0  then  --判断寒冰状态
								ui.getChildByName('map').getChildByName(位置[1]).x = ui.getChildByName('map').getChildByName(位置[1]).x +(speed[1])/2
                            elseif G.call('get_point',83) > 0 then  --晕眩状态
                                ui.getChildByName('map').getChildByName(位置[1]).x = ui.getChildByName('map').getChildByName(位置[1]).x +(speed[1])/3
                            else
                                ui.getChildByName('map').getChildByName(位置[1]).x = ui.getChildByName('map').getChildByName(位置[1]).x +(speed[1])/1--2
							end
                        end	
               		
					end 
					if i > 1  then 
                        local o_role_tb = G.QueryName(0x10040000 + o_battle[位置[i] ] )
                        if G.call('通用_取得套装',o_battle[位置[i] ],1) == 3 then --套装1效果
                            speed[i] = speed[i] + 1 
                        end
                        if o_role_tb ~= nil then 
                            for n = 1,3 do --判断NPC技能提供的回气加成
                                if  o_role_tb[magic[n]] ~= nil then 
                                    if G.QueryName(o_role_tb[magic[n] ]).内功轻功效果 == 9 then 
                                        speed[i] = speed[i] + G.QueryName(o_role_tb[magic[n] ]).效果等级
                                    end		
                                end 		
                            end
                            if o_role_tb[tostring(82)] > 0 then   --判断麻痹状态
                            else    
                                if o_role_tb[tostring(86)] > 0 then  --判断寒冰状态
                                    ui.getChildByName('map').getChildByName(位置[i]).x = ui.getChildByName('map').getChildByName(位置[i]).x +(speed[i])/2
                                else
                                    ui.getChildByName('map').getChildByName(位置[i]).x = ui.getChildByName('map').getChildByName(位置[i]).x +(speed[i])/1
                                end
                            end
                            -- if o_role_tb[tostring(81)] > 0 then  --中毒受伤
                            --     G.call('add_role',o_battle[位置[i] ] ,13,-5) 
                            -- elseif o_role_tb[tostring(85)] > 0 then
                            --     G.call('add_role',o_battle[位置[i] ] ,13,-2)  
                            -- end 
                        end
                    end       
				    if ui.getChildByName('map').getChildByName(位置[i]).x >= 330 then 
                       ui.getChildByName('map').getChildByName(位置[i]).x = 330
                       if i > 1 then 
                            G.trig_event('出手')
                       else
                            G.trig_event('出手')
                       end
				   end 
			   end
			
			end
        end
    end 		
end
--type=
--hide=true
--private=false
t['magic_power1'] = function(int_id,int_no)
    --0指1掌2剑3刀4棍5暗器6内7轻8其他
    if  int_id == nil or int_no == nil then 
        return 0 
    end 
    local i_skill = 0x10050000 + int_no
    local o_role = G.QueryName(0x10040000 + int_id)
    local o_skill = G.QueryName(i_skill )
    local o_role_no = 0x10040000
    local result = 100
    local 需求道具 = {'需求道具1','需求道具2','需求道具3','需求道具4'}
    local 拥有 = {'拥有1','拥有2','拥有3','拥有4'}
    local 技能 = {'技能1','技能2','技能3'}
    local 位置 = {'team1','team2','team3','team4','team5','enemy1','enemy2','enemy3','enemy4','enemy5','enemy6'}
    local o_battle = G.QueryName(0x10150001)
    local o_body = G.QueryName(0x10030001)
    G.call('指令_存储属性')
    --G.call('逻辑整理-武功等级')
    local hurt = 0
    local p = o_skill.等级
    if int_no == 190 or int_no == 207 then 
       p = 10
    end  
    if o_skill.类别 < 6 then 
        hurt = p * o_skill.伤害倍数/10
    elseif o_skill.类别 ==  8 then
        hurt = o_skill.伤害倍数
    else
        hurt = o_skill.修为等级 * o_skill.伤害倍数/5 
    end 
    if o_skill.类别 == 0 or o_skill.类别 == 1  then   --武器配合
        --result = 100
    elseif o_skill.类别 == 2 and G.call('get_point',193) ~= nil then 
        if G.QueryName(G.call('get_point',193)).类型 == 1 or  G.call('get_point',24) > 90 then 
            hurt = hurt*(G.QueryName(G.call('get_point',193)).系数 +50)/100
        end 
    elseif o_skill.类别 == 3 and G.call('get_point',193) ~= nil then 
        if G.QueryName(G.call('get_point',193)).类型 == 2 or  G.call('get_point',25) > 90 then  
            hurt = hurt*(G.QueryName(G.call('get_point',193)).系数 + 50 )/100
        end 
    elseif o_skill.类别 == 4 and G.call('get_point',193) ~= nil then 
        if G.QueryName(G.call('get_point',193)).类型 == 3 or  G.call('get_point',26) > 90 then 
            hurt = hurt*(G.QueryName(G.call('get_point',193)).系数 +50)/100
        end 
    elseif o_skill.类别 == 2 and G.call('get_point',193) == 0x100b0047 then 
    
    elseif o_skill.类别 == 5 and G.call('get_point',198) ~= nil then   --暗器伤害与暗器消耗
        local item = G.call('get_point',198) - 0x100b0000 + 1
        if item == nil then return end
        hurt = hurt*(G.QueryName(G.call('get_point',198)).系数 + 50 )/100
        if G.call('get_point',193) == 0x100b0047 then 
            hurt = hurt*1.2
        end       
    elseif o_skill.类别 > 5 then 
    end
    if o_skill.装备 ~= nil then  --武功对应装备加成
        if o_skill.装备  == G.call('get_point',193) then 
            result = 40 +result
        end 
    end 
    if o_skill.内功 ~= nil then   --内功配合加成
        if o_skill.内功 == G.call('get_point',196) then 
            result = result + G.QueryName(o_skill.内功).修为等级*8
        end 
    end 
    ---1加血，--2杀内，--3吸内（加上限），4减伤，5闪避，6复活，
    --7-强化,8，免疫，-9回气，-10回血，-11回内,--12吸内（加当前）,13反伤
                   --如为免疫则1是毒2是穴
    local hurt0 = 0  --吸收内力上限
    local hurt1 = 0  --吸收内力
    local hurt2 = 0  --杀内力
    local hurt3 = 0  --反伤
    local hurt4 = 0  --吸血      
    if G.call('get_point',196) ~= nil  then 
        if G.QueryName(G.call('get_point',196)).内功轻功效果 == 7 then --专属内功强化效果，比如九阴,小无
            result = result + G.QueryName(G.call('get_point',196)).效果等级 *G.QueryName(G.call('get_point',196)).修为等级/5
        elseif  G.QueryName(G.call('get_point',196)).内功轻功效果 == 3 then  --吸收内力上限内功
            if math.random(100) < 30 then 
                hurt0 = math.floor(G.QueryName(G.call('get_point',196)).效果等级 *G.QueryName(G.call('get_point',196)).修为等级/5  )
            end  
        elseif  G.QueryName(G.call('get_point',196)).内功轻功效果 == 12 then  --吸收内力内功
            if math.random(100) < 30 then 
                hurt1 = math.floor(G.QueryName(G.call('get_point',196)).效果等级 *G.QueryName(G.call('get_point',196)).修为等级/5 )
            end  
        elseif  G.QueryName(G.call('get_point',196)).内功轻功效果 == 2 then  --杀内力内功
            if math.random(100) < 30 then 
                hurt2 = math.floor(G.QueryName(G.call('get_point',196)).效果等级 *G.QueryName(G.call('get_point',196)).修为等级/5 )
            end 
        end      
    end  
    if G.call('get_point',18) <= 50 and G.call('get_magic',190) > 0 then --左右被动
        local int_左右 = 0
        int_左右 =  G.call('get_magic_lv',190)*(100-G.call('get_point',18) )/5 + G.call('通用_取得装备左右效果',0)
        if G.call('通用_取得套装',0,6) == 2 then
            int_左右 = int_左右*1.25
        elseif  G.call('通用_取得套装',0,6) == 3 then
            int_左右 = int_左右*1.5
        end
        result = result + int_左右
    end   
    local needmp = 0 
    if o_skill.类别 < 6 then  
        needmp = math.floor(o_skill.消耗内力 * (p/2)*(p/2)*0.65)
    else
        needmp = math.floor(o_skill.消耗内力 * (o_skill.修为等级)*(o_skill.修为等级)*0.65)
    end   
    if o_skill.范围 >= 3 then 
        needmp = math.floor(needmp/2) 
    end
    if needmp < 1 then
        needmp = 1
    end      
    local magic = {23,22,24,25,26,34}
    local float = math.random(-50,50)
    if o_skill.类别 < 6  then   --拳，指，等伤害计算
        if G.call('get_point',46) >= needmp then 
            result = result+float/10+G.call('get_point',179+magic[o_skill.类别+1])*0.8+G.call('get_point',179+29)*0.8+G.call('get_point',179+27)*0.6
        else 
            result = result+float/10+G.call('get_point',179+magic[o_skill.类别+1])*0.8+G.call('get_point',179+29)*0.8+G.call('get_point',179+27)*0.6*G.call('get_point',46)/needmp  
        end     
    else   --内功伤害计算
        local int_兵器值 = G.call('get_point',179+22) +G.call('get_point',179+23)+G.call('get_point',179+24)+G.call('get_point',179+25)+G.call('get_point',179+26)
        if G.call('get_point',46) >= needmp then
            result = result + float + int_兵器值*0.10+G.call('get_point',179+29)*0.4+G.call('get_point',29)*0.6+G.call('get_point',179+27)*0.8
        else 
            result = result + float + int_兵器值*0.10+G.call('get_point',179+29)*0.4+G.call('get_point',29)*0.6+G.call('get_point',179+27)*0.8*G.call('get_point',46)/needmp  
        end 
    end  
    local a = G.call('get_point',179+29)
    local b = G.call('get_role',int_id,5)
    local c = G.call('get_role',int_id,3)
    local d = G.call('get_role',int_id,6)
    local i_magic_阵法 =  G.QueryName(0x100c0001)[tostring(15)]
    local int_队友 = 0
    local int_五岳剑阵效果 = 0
    local int_玉女剑阵效果 = 0
    local int_五行八卦效果 = 0
    local int_真武效果 = 0
    for i = 2,5 do 
        if G.QueryName(0x10150001)[位置[i]] > 0 then 
            if G.QueryName(0x10040000 + G.QueryName(0x10150001)[位置[i]] ).生命 > 0 then 
                int_队友 = int_队友 + 1
            end
        end
    end
    if G.call('通用_取得内功轻功特效',0,18) then
        int_队友 = int_队友 + 1
    end
    if i_magic_阵法 then 
        if G.QueryName(i_magic_阵法).附加效果 == 3 then
            int_五岳剑阵效果 = int_队友 *5
        elseif (int_队友 > 1 or (G.call('get_point',18) <= 50 and G.call('get_magic',190) > 0)  ) and G.QueryName(i_magic_阵法).附加效果 == 5 then 
            int_玉女剑阵效果 = 1
        elseif G.QueryName(i_magic_阵法).附加效果 == 8 then 
            int_五行八卦效果 = int_队友 *10
        elseif G.QueryName(i_magic_阵法).附加效果 == 1 then 
            int_真武效果 = int_队友*5
        end
    end
    if G.call('get_point',44) < G.call('get_point',217)*0.5 and  (G.call('通用_取得人物特效',0,13) or G.call('通用_取得装备特效',0,204))   then --主角强力判断
        result = result + 30    
    end  
    if G.call('通用_取得人物特效',int_id,9)  then --受击者见切效果
        local jq_randow = math.random(100)
        if jq_randow > 90 then 
            hurt = 0
        elseif jq_randow > 80 then 
            result = result - 50 
        end 
    end
    if G.call('get_role',int_id,13) < G.call('get_role',int_id,1)*0.2 and  (G.call('通用_取得人物特效',int_id,11) or G.call('通用_取得装备特效',0,105)  )  then --判断受击者强体效果
        result = result - 50
    end   
    if math.random(100) > 80 and (G.call('通用_取得人物特效',0,7) or G.call('通用_取得装备特效',0,203) or G.call('通用_取得装备特效',0,410) )   then --暴击效果
        result = result + 50
        if G.call('通用_取得套装',0,4) == 2 then 
            result = result + 50
        elseif G.call('通用_取得套装',0,4) == 3 then 
            result = result + 100
        end 
    end
    local def_role = 0
    for i = 2,5 do 
        if o_battle[位置[i]] == int_id then --判断受击方是否为队友
            def_role = 1
        end     
    end     
    if def_role == 0 then --受击方为敌方
        if  G.call('通用_取得敌方队伍特效',2)  then --敌方慈悲效果
            result = result - 50
        end    
    else --受击方为我方
        if  G.call('通用_取得我方队伍特效',2)  then  --我方慈悲效果 
            result = result - 50
        end 
    end 
    if  G.call('通用_取得我方队伍特效',1) or G.call('通用_取得我方装备特效',202) then --我方破绽效果
        result = result + 50
    end  
    hurt = hurt * result/100   
        ---1加血，--2杀内，--3吸内（加上限），--4减伤，--5闪避，--6复活，
    --7-强化,8，免毒，-9回气，-10回血，-11回内,--12吸内（加当前）,13反伤，--14免穴。--15免内伤
    --16逍遥御风 --17武功消耗内力减半 --18武穆真谛 --19回血清除异常            
    --1毒、--2麻、--3晕、--4内伤、--5受伤、--6寒，--7中毒+受伤,--8，--致盲，9混乱 15%几率
    local int_闪避 = 0
    for i = 1,3 do    --内功闪避效果计算
        if o_role[技能[i] ] ~= nil then 
            local o_skill_tb = G.QueryName(o_role[技能[i] ])
            if o_skill_tb.内功轻功效果  ==  5 then 
                int_闪避 = int_闪避 + o_skill_tb.效果等级   
            end 
        end 
    end  
    if G.call('get_point',88) > 0 and math.random(100) < 15 then  --致盲后
        int_闪避 = int_闪避 + 150
    end 
    if G.call('通用_取得套装',int_id,1) == 2 then --套装1闪避效果
        int_闪避 = int_闪避 + 30
    elseif  G.call('通用_取得套装',int_id,1) == 3 then
        int_闪避 = int_闪避 + 50
    end
    if math.random(a +15) > math.random(math.floor(b/6)+1+int_闪避) then  --命中计算     
        if hurt > 0 then 
            local int_斗转 = 0
            for i = 1,3 do    
                if o_role[技能[i] ] ~= nil then 
                    local o_skill_tb = G.QueryName(o_role[技能[i] ])
                    if o_role[技能[i] ] == 0x10050097 and math.random(100) > 50 then --斗转被动 
                        int_斗转 = 1
                    end  
                    if o_skill_tb.内功轻功效果  ==  4 then --内功减伤效果计算
                       hurt = hurt * (100-o_skill_tb.效果等级/2)/100  
                    end 
                   
                end 
            end 
            if int_斗转 == 1 then 
                hurt3 = math.floor(hurt * (20 + G.call('通用_取得装备斗转效果',int_id))   /100 ) 
                if G.call('通用_取得套装',int_id,6) == 2 then
                    hurt3 = math.floor(hurt3*1.25)
                elseif  G.call('通用_取得套装',int_id,6) == 3 then
                    hurt3 = math.floor(hurt3*1.5)
                end
            end
            if math.random(100) > 80 and (G.call('通用_取得人物特效',0,22) or G.call('通用_取得装备特效',0,206))  then --朱雀被动效果
                hurt = hurt 
            elseif  int_玉女剑阵效果 == 1 and i_skill == 0x1005003e then --玉女剑阵破防效果判定
                if G.call('通用_取得内功轻功特效',0,18) then
                    hurt = math.floor(hurt *(1- d/700)*(1 - G.call('通用_取得装备减伤效果',int_id)/100 )   )
                else
                    hurt = math.floor(hurt *(1- d/350)*(1 - G.call('通用_取得装备减伤效果',int_id)/100 )   ) 
                end
            elseif G.call('通用_取得人物特效',0,21)  then --武当被动和真武阵判断
                hurt = math.floor(hurt *(1- c/350)*(1- d/350*(1 - 0.2-int_真武效果/100) ) *(1 - G.call('通用_取得装备减伤效果',int_id)/100 )   )
            else 
                hurt = math.floor(hurt *(1- c/350)*(1- d/350)*(1 - G.call('通用_取得装备减伤效果',int_id)/200 )   )  --按敌人的拆招和内功免伤进行计算伤害
            end
            if o_skill.类别 == 2 then --五岳剑阵效果
                hurt = math.floor(hurt* (int_五岳剑阵效果/100 +1)  )
            end
            if G.call('通用_取得套装',0,3) == 2 then --套装3和套装4强伤和减伤效果
                hurt = math.floor(hurt *1.1)
            elseif  G.call('通用_取得套装',0,3) == 3 then
                hurt = math.floor(hurt *1.2)
            elseif  G.call('通用_取得套装',int_id,4) == 2 then
                hurt = math.floor(hurt *0.9)
            elseif  G.call('通用_取得套装',int_id,4) == 3 then
                hurt = math.floor(hurt *0.8)
            end
            hurt = math.floor(hurt*200/o_battle.diffty) --根据难度和战斗敌人强度计算伤害
            if hurt < 10 then 
                hurt = math.random(10)
            end  
            if (int_no == 205 or int_no == 206 or int_no == 21 or int_no == 235 ) and G.call('通用_取得人物特效',0,19)     then --舔血效果计算
                hurt4 = math.floor(hurt*0.10*(100 - G.call('get_point',15)       )/100    ) 
            end 
            if i_skill == 0x10050083 and G.call('get_point',115) == 20 and G.misc().木桩 == 0 then --北冥真气吸蓝判定
                G.call('add_point',63,hurt0) 
            end 
            if G.call('get_point',115) == 20   then --北冥真气效果
                if G.call('get_point',63) < 2500  and math.random(100) < 20  then
                    G.call('add_point',46,150)
                elseif G.call('get_point',63) < 5000  and G.call('get_point',63) >= 2500 and math.random(100) < 30  then
                    G.call('add_point',46,300)
                elseif G.call('get_point',63) >= 5000  and G.call('get_point',63) < 7500 and math.random(100) < 40  then
                    G.call('add_point',46,450)
                elseif G.call('get_point',63) >= 7500  and G.call('get_point',63) < 10000 and math.random(100) < 50  then
                    G.call('add_point',46,750)
                elseif G.call('get_point',63) == 10000 and math.random(100) < 60  then
                    G.call('add_point',46,1500)
                end
            end
            G.call('add_point',44,-hurt3)
            G.call('add_point',47,hurt0)
            G.call('add_point',44,hurt4)
            G.call('add_point',46,hurt1)
            G.call('add_role',int_id,14,-hurt1)
            G.call('add_role',int_id,14,-hurt2)
            local seed = 100
            if G.call('通用_取得人物特效',0,10) or G.call('通用_取得装备特效',0,205) then
                seed = math.floor(seed *0.8)
            end
            if G.call('通用_取得人物特效',int_id,6) == 1 then --受击方冰心效果
                seed = seed * 2
            end 
            seed = math.floor(seed * (100-int_五行八卦效果)/100) --五行八卦阵效果  
            if G.call('通用_取得套装',int_id,4) == 2 then
                seed = math.max(1,math.floor(seed/2))
            elseif G.call('通用_取得套装',int_id,4) == 3 then
                seed = 1
            end 
            local deytime = G.call('get_point',236)
            local int_时序 = 50 * deytime 
            if o_skill.附加效果 == 1 then         --武功附加状态赋予
                if G.call('通用_取得人物特效',0,18)  then
                    seed = math.max(1,math.floor(seed/2))
                end  
                if math.random(seed) < 5 + math.floor(G.call('get_point',179+32)/10) then   --中毒
                    if G.call('get_role',int_id,81) == 0 then 
                        G.call('set_role',int_id,81,1)
                        o_role [tostring(91)] = int_时序
                        if G.call('通用_取得人物特效',0,18)  then
                            o_role [tostring(91)] = int_时序 * 2
                        end
                    end  
                end  
            elseif  o_skill.附加效果 == 2 then  --麻痹
                if math.random(seed) < 5 + math.floor(G.call('get_point',179+32)/10)   then 
                    if G.call('get_role',int_id,82) == 0 then 
                        G.call('set_role',int_id,82,1)
                        o_role [tostring(92)] = int_时序
                    end 
                end     
            elseif  o_skill.附加效果 == 3 or G.call('通用_取得套装',0,5) == 3 then  --晕眩
                if G.call('通用_取得套装',0,5) >= 2 then 
                    seed = seed * 2
                end
                if math.random(seed) < 5 + math.floor(G.call('get_point',179+27)/10) then 
                    if G.call('get_role',int_id,83) == 0 then 
                        G.call('set_role',int_id,83,1)
                        o_role [tostring(93)] = int_时序
                    end 
                end 
            elseif  o_skill.附加效果 == 4 then  --内伤
                if math.random(seed) < 5 + math.floor(G.call('get_point',179+27)/10) then 
                    if G.call('get_role',int_id,84) == 0 then 
                        G.call('set_role',int_id,84,1)
                        G.call('set_role',int_id,94,int_时序)
                    end 
                end 
            elseif  o_skill.附加效果 == 5 then  --受伤
                if math.random(seed) < 5 + math.floor(G.call('get_point',179+29)/10) then 
                    if G.call('get_role',int_id,85) == 0 then 
                        G.call('set_role',int_id,85,1)
                        G.call('set_role',int_id,95,int_时序)
                    end 
                end 
            elseif  o_skill.附加效果 == 6  or G.call('通用_取得人物特效',0,31) or G.call('通用_取得装备特效',0,408) then  --减速
                if math.random(seed) < 15 then 
                    if G.call('get_role',int_id,86) == 0 then 
                        G.call('set_role',int_id,86,1)
                        G.call('set_role',int_id,96,int_时序)
                    end 
                end 
            elseif  o_skill.附加效果 == 7 then --中毒+受伤
                if G.call('通用_取得人物特效',0,18)  then
                    seed = seed/2
                end    
                if math.random(seed) < 5 + math.floor(G.call('get_point',179+29)/20)+ math.floor(G.call('get_point',179+32)/20) then 
                    if G.call('get_role',int_id,81) == 0 then 
                        G.call('set_role',int_id,81,1)
                        G.call('set_role',int_id,91,int_时序)
                    end 
                    if G.call('get_role',int_id,85) == 0 then 
                        G.call('set_role',int_id,85,1)
                        G.call('set_role',int_id,95,int_时序)
                    end 
                    if G.call('通用_取得人物特效',0,18)  then
                        G.call('set_role',int_id,91,int_时序*2)
                    end
                end 
            elseif  o_skill.附加效果 == 8 then --致盲
                if math.random(seed) < 5 + math.floor(G.call('get_point',179+27)/10) then 
                    if G.call('get_role',int_id,88) == 0 then 
                        G.call('set_role',int_id,88,1)
                        G.call('set_role',int_id,98,int_时序)
                    end 
                end 
            elseif  o_skill.附加效果 == 9 or G.call('通用_取得人物特效',0,23) or G.call('通用_取得装备特效',0,207) then --混乱（玄武判断）
                if math.random(seed) < 5 + math.floor(G.call('get_point',179+27)/10) then 
                    if G.call('get_role',int_id,87) == 0 then 
                        G.call('set_role',int_id,87,1)
                        G.call('set_role',int_id,97,int_时序)
                    end 
                end 
            elseif  o_skill.附加效果 == 10 then --斩杀效果
                if ( G.call('get_role',int_id,1) <=5000 or G.call('get_role',int_id,13)  < G.call('get_role',int_id,1)/10)  and math.random(100) < 30 then 
                    hurt = G.call('get_role',int_id,13)
                    G.call('add_point',44,maht.floor(G.call('get_point',44)/2) 
                )
                end 
            end 
            for i = 1, 4 do --判断队友携带武器和武功配合
                if  o_role[需求道具[i]]  == 0x100b004b then 
                    if o_role['拥有'..i] > 0 then 
                        G.call('set_role',int_id,84,0)
                    end 
                end 
                if  o_role[需求道具[i]]  == 0x100b0049 then 
                    if o_role['拥有'..i] > 0 then 
                        G.call('set_role',int_id,81,0)
                    end 
                end 
            end
            for i = 1,3 do    --内功异常回避计算 8免毒 14 免穴15 免内伤
                if o_role['技能'..i] ~= nil then 
                    local o_skill_tb = G.QueryName(o_role['技能'..i])
                    if o_skill_tb.内功轻功效果  ==  8 then 
                        G.call('set_role',int_id,81,0)
                    elseif o_skill_tb.内功轻功效果  ==  14 then 
                        G.call('set_role',int_id,82,0)
                    elseif o_skill_tb.内功轻功效果  ==  15 then 
                        G.call('set_role',int_id,84,0)
                    end 
                end 
            end 
        end 
    else
        hurt = 0
    end  
    if hurt > 99999 then 
        hurt = 99999
    end
    if hurt < 0 then 
        hurt = math.random(10,20)
    end
    local int_怒气 = 0 
    if hurt > 0 then 
        if  G.call('逻辑_拥有被动',17) then 
            int_怒气 = math.ceil(hurt/1000 + 0.5)
        else
            int_怒气 = math.ceil(hurt/2000 + 0.5)
        end 
        if G.call('通用_取得套装',0,4) == 2 then --套装4增加怒气效果
            int_怒气 = int_怒气 + 2
        elseif G.call('通用_取得套装',0,4) == 3 then --套装4怒气效果
            int_怒气 = int_怒气 * 2
        end
        G.call('add_point',48,int_怒气)
    end
    local string_字符串 = ''
    if o_skill.类别 < 6 then 
        if hurt == 0 then
            string_字符串 =  '【'..G.call('get_point',6)..'】使出'..o_skill.等级..'级【'..o_skill.名称..'】被【'..o_role.姓名..'】闪避'
        else
            string_字符串 = '【'..G.call('get_point',6)..'】使出'..o_skill.等级..'级【'..o_skill.名称..'】对【'..o_role.姓名..'】造成'..tostring(hurt)..'伤害'
        end  
    else
        if hurt == 0 then
            string_字符串 = '【'..G.call('get_point',6)..'】使出'..o_skill.修为等级..'级【'..o_skill.名称..'】被【'..o_role.姓名..'】闪避'
        else
            string_字符串 = '【'..G.call('get_point',6)..'】使出'..o_skill.修为等级..'级【'..o_skill.名称..'】对【'..o_role.姓名..'】造成'..tostring(hurt)..'伤害'
        end  
    end
    local o_notebook = G.QueryName(0x101a0001)
    local int_记事 = #o_notebook.记事本
    o_notebook.记事本[int_记事+1] = {}
    o_notebook.记事本[int_记事+1].记事 = string_字符串
    return hurt
end
--type=
--hide=true
--private=false
t['magic_power2'] = function(int_id,int_enemy,int_no)
    if  int_id == nil or int_enemy == nil or int_no == nil then 
        return 0 
    end 
    local o_skill = G.QueryName(0x10050000 + int_no)
    local o_role = G.QueryName(0x10040000 + int_id)
    local o_enemy = G.QueryName(0x10040000 + int_enemy)
    local o_role_no = 0x10040000
    local result = 100
    local 需求道具 = {'需求道具1','需求道具2','需求道具3','需求道具4'}
    local 拥有 = {'拥有1','拥有2','拥有3','拥有4'}
    local 技能 = {'技能1','技能2','技能3'}
    local 位置 = {'team1','team2','team3','team4','team5','enemy1','enemy2','enemy3','enemy4','enemy5','enemy6'}
    local o_battle = G.QueryName(0x10150001)
    local o_body = G.QueryName(0x10030001)
    local p = 1
    for i = 1,3 do
        if o_role['技能'..i] == 0x10050000 + int_no then 
           p = i
        end 
    end
    local o_skill_武功熟练度 = G.call('get_role',int_id,p+9)
    local  o_skill_武功等级 =  G.call('逻辑整理-NPC武功等级',int_no,o_skill_武功熟练度 )  
    local lv = o_skill_武功等级 
    if o_skill.类别 == 6 then
        lv = 10
    end  
    if int_no == 190 or int_no == 207 then 
        lv = 10
    end  
    local hurt = lv * o_skill.伤害倍数/10
    G.call('add_role',int_id,p+9,math.random(4))
    o_skill_武功熟练度 = G.call('get_role',int_id,p+9)
    if o_skill.类别 < 6  then   --拳，指，等伤害计算
        if o_skill.类别 == 0  or o_skill.类别 == 1  then 
            hurt = lv  * o_skill.伤害倍数/10
        elseif o_skill.类别 >= 2 and o_skill.类别 < 6  then 
            hurt = lv * (o_skill.伤害倍数*5)/10
        end     
    else   
        hurt = lv  * o_skill.伤害倍数/10
    end     
    if o_skill.装备 ~= nil then  --武功对应装备加成
        for i = 1, 4 do --判断队友携带武器和武功配合
            if   o_skill.装备 == o_role[需求道具[i]] then 
                if o_role['拥有'..i] > 0 then 
                    result = result + 40
                end 
            end 
        end    
    end 
    local hurt0 = 0
    local hurt1 = 0 
    local hurt2 = 0   
    local hurt3 = 0 
    local hurt4 = 0 
    if o_skill.内功 ~= nil then   --判断攻击方携带技能中的内功配合
        for i = 1,3 do
            if o_role['技能'..i] ~= nil then 
                if o_skill.内功  ==  o_role['技能'..i] then 
                    result = result + 40
                end 
            end 
        end  
    end  
    for i = 1,3 do   --判断攻击方携带内功中的附加效果
        if o_role['技能'..i] ~= nil then 
            local o_skill_tb = G.QueryName(o_role['技能'..i])
            if o_skill_tb .内功轻功效果 == 7 then
                result = result + o_skill_tb.效果等级*lv/10 
            elseif  o_skill_tb .内功轻功效果 == 3 then
                if math.random(100) < 30 then 
                    hurt0 = math.floor(o_skill_tb.效果等级*lv/10)
                end 
            elseif  o_skill_tb .内功轻功效果 == 12 then
                if math.random(100) < 30 then 
                    hurt1 = math.floor(o_skill_tb.效果等级*lv/10)
                end  
            elseif  o_skill_tb .内功轻功效果 == 2 then
                if math.random(100) < 30 then 
                    hurt2 = math.floor(o_skill_tb.效果等级*lv/10)
                end 
            end 
            if o_role['技能'..i] == 0x100500bd  then --左右被动
                local int_左右 = 100 + G.call('通用_取得装备左右效果',int_id)
                if G.call('通用_取得套装',int_id,6) == 2 then
                    int_左右 = int_左右*1.25
                elseif  G.call('通用_取得套装',int_id,6) == 3 then
                    int_左右 = int_左右*1.5
                end
                result = result + int_左右
            end  
        end 
    end   
    local needmp = math.floor(o_skill.消耗内力 * (lv /2)*(lv /2)*0.65)
    if o_skill.范围 >= 3 then 
        needmp = math.floor(needmp/2) 
    end
    if needmp < 1 then
        needmp = 1
    end
    local float = math.random(-50,50)
    if o_skill.类别 < 6 then 
        if G.call('get_role',int_id,14) >= needmp then  --伤害计算
            result =  result + float/10+G.call('get_role',int_id,4)*0.3 +G.call('get_role',int_id,6)*0.6+G.call('get_role',int_id,7)*0.3
        else
            result = result + float/10+G.call('get_role',int_id,4)*0.3 +G.call('get_role',int_id,6)*0.6*G.call('get_role',int_id,14)/needmp +G.call('get_role',int_id,7)*0.3
        end  
    else
        if G.call('get_role',int_id,14) >= needmp then  --伤害计算
            result =  result + float/10+G.call('get_role',int_id,4)*0.3 +G.call('get_role',int_id,6)*0.8+G.call('get_role',int_id,7)*0.3
        else
            result = result + float/10+G.call('get_role',int_id,4)*0.3 +G.call('get_role',int_id,6)*0.8*G.call('get_role',int_id,14)/needmp +G.call('get_role',int_id,7)*0.3
        end  
    end  
    o_skill_武功等级 =  G.call('逻辑整理-NPC武功等级',int_no,o_skill_武功熟练度 )
    if o_skill_武功等级 - lv > 0 then 
        G.call('notice1','【'..o_role.姓名..'】'..o_skill.名称..'升到'..tostring(o_skill_武功等级)..'级')
    end   
    local a = G.call('get_role',int_id,4)
    local b = G.call('get_role',int_enemy,3)
    local c = G.call('get_role',int_enemy,5)
    local d = G.call('get_role',int_enemy,6)
    --下面为被动效果计算
    if (G.call('通用_取得人物特效',int_id,13) or G.call('通用_取得装备特效',int_id,204)) and o_role.生命 < G.call('get_role',int_id,1)*0.5 then  --攻击方强力判断
        result = result + 30    
    end 
    if G.call('通用_取得人物特效',int_enemy,9)  then --受击者见切效果
        local jq_randow = math.random(100)
        if jq_randow > 90 then 
            hurt = 0  
        elseif jq_randow > 80 then 
            result = result - 50
        end 
    end 
    if G.call('get_role',int_enemy,13)< G.call('get_role',int_enemy,1)*0.2 and (G.call('通用_取得人物特效',int_enemy,11) or G.call('通用_取得装备特效',int_enemy,105) )  then  --受击方强体判断
        result = result - 50
    end 
    local att_role = 0
    local def_role = 0
    for i = 2,5 do 
        if o_battle[位置[i]] == int_id then --判断攻击方是否为队友
            att_role = 1
        end  
        if o_battle[位置[i]] == int_enemy then --判断受击方是否为队友
            def_role = 1
        end    
    end  
    if att_role == 0 then --攻击方为敌方
        if  G.call('通用_取得敌方队伍特效',1) or G.call('通用_取得敌方装备特效',202) then  --敌方破绽效果
            result = result + 50
        end    
    else --攻击方为我方
        if  G.call('通用_取得我方队伍特效',1) or G.call('通用_取得我方装备特效',202) then --我方破绽效果
            result = result + 50
        end 
    end    
    if def_role == 0 then --受击方为敌方
        if  G.call('通用_取得敌方队伍特效',2) then --敌方慈悲效果
            result = result - 50
        end    
    else --受击方为我方
        if  G.call('通用_取得我方队伍特效',2) then --我方慈悲效果 
            result = result - 50
        end 
    end  
    if math.random(100) > 80 and  (G.call('通用_取得人物特效',int_id,7) or G.call('通用_取得装备特效',int_id,203) or G.call('通用_取得装备特效',int_id,410) )  then --攻击方暴击效果
        result = result + 50
        if G.call('通用_取得套装',int_id,4) == 2 then 
            result = result + 50
        elseif G.call('通用_取得套装',int_id,4) == 3 then 
            result = result + 100
        end 
    end
    hurt = hurt * result/100
    local int_闪避 = 0
    for i = 1,3 do    --内功闪避效果计算
        if o_enemy[技能[i]] ~= nil then 
            local o_skill_tb = G.QueryName(o_enemy[技能[i]])
            if o_skill_tb.内功轻功效果  ==  5 then 
                --if math.random(100) > 50 then 
                    int_闪避 = int_闪避 + o_skill_tb.效果等级
               -- end     
            end 
        end 
    end  
    if G.call('get_role',int_id,88) > 0 and math.random(100) < 15 then  --致盲
        int_闪避 = int_闪避 + 200
    end
    if G.call('通用_取得套装',int_id,1) == 2 then --套装1闪避效果
        int_闪避 = int_闪避 + 50
    elseif  G.call('通用_取得套装',int_id,1) == 3 then
        int_闪避 = int_闪避 + 100
    end
    if math.random(a+15) > math.random(math.floor(b/6)+int_闪避+1) then  --命中计算
        local int_斗转 = 0
        if hurt > 0 then 
            for i = 1,3 do    
                if o_enemy[技能[i]] ~= nil then 
                    if o_role[技能[i] ] == 0x10050097 and math.random(100) > 50 then --斗转被动 
                        int_斗转 = 1
                    end  
                    local o_skill_tb = G.QueryName(o_enemy[技能[i]])
                    if o_skill_tb.内功轻功效果  ==  4 then --内功减伤效果计算
                       hurt = hurt * (100-o_skill_tb.效果等级/2)/100   
                    end    
                end 
            end 
            if int_斗转 == 1 then 
                hurt3 = math.floor(hurt * (20 + G.call('通用_取得装备斗转效果',int_enemy))   /100 ) 
                if G.call('通用_取得套装',int_enemy,6) == 2 then
                    hurt3 = math.floor(hurt3*1.25)
                elseif  G.call('通用_取得套装',int_enemy,6) == 3 then
                    hurt3 = math.floor(hurt3*1.5)
                end
            end
            if math.random(100) > 80 and (G.call('通用_取得人物特效',int_id,22) or G.call('通用_取得装备特效',int_id,206))  then --朱雀被动效果
                hurt = hurt
            elseif G.call('通用_取得人物特效',int_id,21) then --真武效果
                hurt = math.floor(hurt *(1- c/400)*(1- d/400*0.8)*(1 - G.call('通用_取得装备减伤效果',int_enemy)/100 )  ) 
            else
                hurt = math.floor(hurt *(1- c/400)*(1- d/400)*(1 - G.call('通用_取得装备减伤效果',int_enemy)/100 ) )  --按敌人的拆招和内功免伤进行计算伤害
            end
            if G.call('通用_取得套装',int_id,3) == 2 then --套装3和套装4强伤和减伤效果
                hurt = math.floor(hurt *1.1)
            elseif  G.call('通用_取得套装',int_id,3) == 3 then
                hurt = math.floor(hurt *1.2)
            elseif  G.call('通用_取得套装',int_enemy,4) == 2 then
                hurt = math.floor(hurt *0.9)
            elseif  G.call('通用_取得套装',int_enemy,4) == 3 then
                hurt = math.floor(hurt *0.8)
            end
            if att_role == 0 then --根据难度和攻击方计算最终伤害
                hurt = math.floor(hurt*o_battle.diffty/200) 
            else   
                hurt = math.floor(hurt*200/o_battle.diffty) 
            end    
            if hurt < 10 then 
               hurt = math.random(10)
            end   
            if G.call('通用_取得人物特效',int_id,19) then  --舔血效果计算
                hurt4 = math.floor(hurt*0.1) 
            end  
            if G.call('通用_取得人物特效',int_id,20)  and math.random(100) < 50 then
                G.call('add_role',int_id,14,1500)
                G.call('add_role',int_enemy,14,-1500)
            end 
            G.call('add_role',int_id,13,hurt4)
            G.call('add_role',int_id,2,hurt0)
            G.call('add_role',int_id,13,-hurt3)
            G.call('add_role',int_id,14,hurt1)
            G.call('add_role',int_enemy,14,-hurt0)
            G.call('add_role',int_enemy,14,-hurt1)
            G.call('add_role',int_enemy,14,-hurt2)
            local seed = 100
            if (G.call('通用_取得人物特效',int_id,10) or G.call('通用_取得装备特效',int_id,205)) then --攻击方万毒效果
                seed = math.max(1,math.floor(seed/2))
            end
            if G.call('通用_取得人物特效',int_enemy,6) then --受击方冰心效果
                seed = seed * 2
            end 
            if G.call('通用_取得套装',int_id,4) == 2 then
                seed = math.max(1,math.floor(seed/2))
            elseif G.call('通用_取得套装',int_id,4) == 3 then
                seed = 1
            end  
            local deytime = G.call('get_point',236)
            local int_时序 = 50 * deytime 
            if o_skill.附加效果 == 1 then         --武功附加状态赋予
                if G.call('通用_取得人物特效',int_id,18) then --阴毒效果
                    seed = math.max(1,math.floor(seed/2))
                end  
                if math.random(seed) < 5+ math.floor(G.call('get_role',int_id,6)/10) then 
                    if G.call('get_role',int_enemy,81) == 0 then 
                        G.call('set_role',int_enemy,81,1)
                        G.call('set_role',int_enemy,91,int_时序)
                    end 
                    if G.call('通用_取得人物特效',int_id,18) then 
                        G.call('set_role',int_enemy,91,int_时序*2)
                    end  
                end  
            elseif  o_skill.附加效果 == 2 then
                if math.random(seed) < 5+ math.floor(G.call('get_role',int_id,6)/10) then 
                    if G.call('get_role',int_enemy,82) == 0 then 
                        G.call('set_role',int_enemy,82,1)
                        G.call('set_role',int_enemy,92,int_时序)
                    end   
                end     
            elseif  o_skill.附加效果 == 3 or G.call('通用_取得套装',int_id,5) == 3 then
                if G.call('通用_取得套装',int_id,5) >= 2 then 
                    seed = seed * 2
                end
                if math.random(seed) < 5+ math.floor(G.call('get_role',int_id,6)/10)  then 
                    if G.call('get_role',int_enemy,83) == 0 then 
                        G.call('set_role',int_enemy,83,1)
                        G.call('set_role',int_enemy,93,int_时序)
                    end   
                end 
            elseif  o_skill.附加效果 == 4 then
                if math.random(seed) < 5+ math.floor(G.call('get_role',int_id,6)/10)  then 
                    if G.call('get_role',int_enemy,84) == 0 then 
                        G.call('set_role',int_enemy,84,1)
                        G.call('set_role',int_enemy,94,int_时序)
                    end   
                end 
            elseif  o_skill.附加效果 == 5 then
                if math.random(seed) < 5+ math.floor(G.call('get_role',int_id,6)/10)  then 
                    if G.call('get_role',int_enemy,85) == 0 then 
                        G.call('set_role',int_enemy,85,1)
                        G.call('set_role',int_enemy,95,int_时序)
                    end   
                end 
            elseif  o_skill.附加效果 == 6  or G.call('通用_取得人物特效',int_id,31) or G.call('通用_取得装备特效',int_id,408) then  --减速
                if math.random(seed) < 5+ math.floor(G.call('get_role',int_id,6)/10)  then 
                    if G.call('get_role',int_enemy,86) == 0 then 
                        G.call('set_role',int_enemy,86,1)
                        G.call('set_role',int_enemy,96,int_时序)
                    end   
                end 
            elseif  o_skill.附加效果 == 7 then
                if G.call('通用_取得人物特效',int_id,18) then 
                    seed = seed/2
                end  
                if math.random(seed) < 5+ math.floor(G.call('get_role',int_id,6)/10)  then 
                    if G.call('get_role',int_enemy,81) == 0 then 
                        G.call('set_role',int_enemy,81,1)
                        G.call('set_role',int_enemy,91,int_时序)
                        if G.call('get_role',int_enemy,85) == 0 then 
                            G.call('set_role',int_enemy,85,1)
                            G.call('set_role',int_enemy,95,int_时序)
                        end 
                        if G.call('通用_取得人物特效',int_id,18) then 
                            G.call('set_role',int_enemy,91,int_时序*2)
                        end    
                    end   
                end 
            elseif  o_skill.附加效果 == 8 then
                if math.random(seed) < 5+ math.floor(G.call('get_role',int_id,6)/10)  then 
                    if G.call('get_role',int_enemy,88) == 0 then 
                        G.call('set_role',int_enemy,88,1)
                        G.call('set_role',int_enemy,98,int_时序)
                    end   
                end 
            elseif  o_skill.附加效果 == 9 or G.call('通用_取得人物特效',int_id,23) or G.call('通用_取得装备特效',int_id,207) then --混乱（玄武判断）
                if math.random(seed) < 5+ math.floor(G.call('get_role',int_id,6)/10)  then 
                    if G.call('get_role',int_enemy,87) == 0 then 
                        G.call('set_role',int_enemy,87,1)
                        G.call('set_role',int_enemy,97,int_时序)
                    end   
                end 
            elseif  o_skill.附加效果 == 10 then --斩杀效果
                if (G.call('get_role',int_id,1) <=5000 or G.call('get_role',int_id,13)  < G.call('get_role',int_id,1)/10) and math.random(100) < 30 then 
                    hurt = G.call('get_role',int_id,13)
                    G.call('set_role',int_id,13,maht.floor(G.call('get_role',13)/2) )
                end     
            end
            for i = 1, 4 do --判断队友携带武器和武功配合
                if  o_enemy[需求道具[i]]  == 0x100b004b then 
                    if o_enemy['拥有'..i] > 0 then 
                        G.call('set_role',int_enemy,84,0)
                    end 
                end 
                if  o_enemy[需求道具[i]]  == 0x100b0049 then 
                    if o_enemy['拥有'..i] > 0 then 
                        G.call('set_role',int_enemy,81,0)
                    end 
                end
            end
            for i = 1,3 do    --内功异常回避计算 8免毒 14 免穴15 免内伤
                if o_enemy[技能[i]] ~= nil then 
                    local o_skill_tb = G.QueryName(o_enemy[技能[i]])
                    if o_skill_tb.内功轻功效果  ==  8 then 
                        G.call('set_role',int_enemy,81,0)
                    elseif o_skill_tb.内功轻功效果  ==  14 then 
                        G.call('set_role',int_enemy,82,0)
                    elseif o_skill_tb.内功轻功效果  ==  15 then 
                        G.call('set_role',int_enemy,84,0)   
                    end 
                end 
            end  
        end     
    else
        hurt = 0    
    end  
    if hurt > 99999 then 
        hurt = 99999
    end
    if att_role == 1 and G.call('通用_取得套装',int_id,3) < 3 then --对友套装3效果突破伤害上限 9999
        if hurt > 9999 then 
            hurt = 9999
        end
    end
    if hurt < 0 then 
        hurt = math.random(10,20)
    end
    local string_字符串 = ''
    if o_skill.类别 < 6 then 
        if hurt == 0 then
            string_字符串 ='【'..o_role.姓名..'】使出'..o_skill_武功等级..'级【'..o_skill.名称..'】被【'..o_enemy.姓名..'】闪避'
        else
            string_字符串 ='【'..o_role.姓名..'】使出'..o_skill_武功等级..'级【'..o_skill.名称..'】对【'..o_enemy.姓名..'】造成'..tostring(hurt)..'伤害'
        end  
    else
        if hurt == 0 then
            string_字符串 ='【'..o_role.姓名..'】使出5级【'..o_skill.名称..'】被【'..o_enemy.姓名..'】闪避'
        else
            string_字符串 ='【'..o_role.姓名..'】使出5级【'..o_skill.名称..'】对【'..o_enemy.姓名..'】造成'..tostring(hurt)..'伤害'
        end  
    end 
    local o_notebook = G.QueryName(0x101a0001)
    local int_记事 = #o_notebook.记事本
    o_notebook.记事本[int_记事+1] = {}
    o_notebook.记事本[int_记事+1].记事 = string_字符串 
    return hurt
end
--type=
--hide=true
--private=false
t['magic_power3'] = function(int_id,int_no)
    if  int_id == nil or int_no == nil then 
        return 0 
    end 
    local o_skill = G.QueryName(0x10050000 + int_no)
    local o_role = G.QueryName(0x10040000 + int_id)
    local o_role_no = 0x10040000
    local 位置 = {'team1','team2','team3','team4','team5','enemy1','enemy2','enemy3','enemy4','enemy5','enemy6'}
    local o_battle = G.QueryName(0x10150001)
    local o_body = G.QueryName(0x10030001)
    local result = 100
    local 需求道具 = {'需求道具1','需求道具2','需求道具3','需求道具4'}
    local 拥有 = {'拥有1','拥有2','拥有3','拥有4'}
    local 技能 = {'技能1','技能2','技能3'}
    local p = 1
    for i = 1,3 do
        if o_role['技能'..i] == 0x10050000 + int_no then 
           p = i
        end 
    end
    local o_skill_武功熟练度 = G.call('get_role',int_id,p+9)
    local  o_skill_武功等级 =  G.call('逻辑整理-NPC武功等级',int_no,o_skill_武功熟练度 )
    local lv = o_skill_武功等级 
    if o_skill.类别 == 6 then
        lv = 10
    end  
    if int_no == 190 or int_no == 207 then 
        lv = 10
    end 
    G.call('指令_存储属性') 
    local hurt = lv * o_skill.伤害倍数/10
    G.call('add_role',int_id,p+9,math.random(4))
    o_skill_武功熟练度 = G.call('get_role',int_id,p+9)
    if o_skill.类别 < 6  then   --拳，指，等伤害计算
        if o_skill.类别 == 0  or o_skill.类别 == 1  then 
            hurt = lv * o_skill.伤害倍数/10
        elseif o_skill.类别 >= 2 and o_skill.类别 < 6  then 
            hurt = lv* (o_skill.伤害倍数*5)/10
        end     
    else   
        hurt = lv * o_skill.伤害倍数/10
    end 
    if o_skill.装备 ~= nil then  --武功对应装备加成
        for i = 1, 4 do --判断队友携带武器和武功配合
            if   o_skill.装备 == o_role[需求道具[i]] then 
                if o_role['拥有'..i] > 0 then 
                    result = result + 20
                end 
            end 
        end    
    end 
    local hurt0 = 0
    local hurt1 = 0 
    local hurt2 = 0   
    local hurt3 = 0 
    local hurt4 = 0 
    if o_skill.内功 ~= nil then   --判断攻击方携带技能中的内功配合
        for i = 1,3 do
            if o_role['技能'..i] ~= nil then 
                if o_skill.内功  ==  o_role['技能'..i] then 
                    result = result + 20
                end 
            end 
        end  
    end  
    for i = 1,3 do   --判断攻击方携带内功中的附加效果
        if o_role['技能'..i] ~= nil then 
            local o_skill_tb = G.QueryName(o_role['技能'..i])
            if o_skill_tb .内功轻功效果 == 7 then
                result = result + o_skill_tb.效果等级*lv/10 
            elseif  o_skill_tb .内功轻功效果 == 3 then
                if math.random(100) < 30 then 
                    hurt0 = math.floor(o_skill_tb.效果等级*lv/10)
                end 
            elseif  o_skill_tb .内功轻功效果 == 12 then
                if math.random(100) < 30 then 
                    hurt1 = math.floor(o_skill_tb.效果等级*lv/10)
                end  
            elseif  o_skill_tb .内功轻功效果 == 2 then
                if math.random(100) < 30 then 
                    hurt2 = math.floor(o_skill_tb.效果等级*lv/10)
                end 
        
            end 
            if o_role['技能'..i] == 0x100500bd  then --左右被动
                local int_左右 = 100 + G.call('通用_取得装备左右效果',int_id)
                if G.call('通用_取得套装',int_id,6) == 2 then
                    int_左右 = int_左右*1.25
                elseif  G.call('通用_取得套装',int_id,6) == 3 then
                    int_左右 = int_左右*1.5
                end
                result = result + int_左右
            end  
        end 
    end 
    local needmp = math.floor(o_skill.消耗内力 * (lv /2)*(lv /2)*0.65)
    if o_skill.范围 >= 3 then 
        needmp = math.floor(needmp/2) 
    end
    if needmp < 1 then
        needmp = 1
    end
    local float = math.random(-50,50)
    if o_skill.类别 < 6 then 
        if G.call('get_role',int_id,14) >= needmp then  --伤害计算
            result =  result + float/10+G.call('get_role',int_id,4)*0.6 +G.call('get_role',int_id,6)*0.6+G.call('get_role',int_id,7)*0.6
        else
            result = result + float/10+G.call('get_role',int_id,4)*0.6 +G.call('get_role',int_id,6)*0.6*G.call('get_role',int_id,14)/needmp +G.call('get_role',int_id,7)*0.6
        end  
    else
        if G.call('get_role',int_id,14) >= needmp then  --伤害计算
            result =  result + float/10+G.call('get_role',int_id,4)*0.4 +G.call('get_role',int_id,6)*0.8+G.call('get_role',int_id,7)*0.5
        else
            result = result + float/10+G.call('get_role',int_id,4)*0.4 +G.call('get_role',int_id,6)*0.8*G.call('get_role',int_id,14)/needmp +G.call('get_role',int_id,7)*0.5
        end
    end 
    o_skill_武功等级 =  G.call('逻辑整理-NPC武功等级',int_no,o_skill_武功熟练度 )
    if (o_skill_武功等级 - lv) > 0 then 
        G.call('notice1','【'..o_role.姓名..'】'..o_skill.名称..'升到'..tostring(o_skill_武功等级)..'级')
    end 
    local a = G.call('get_role',int_id,4)
    local b = G.call('get_point',30+179)
    local c = G.call('get_point',28+179)
    local d = G.call('get_point',27+179)
    --下面为被动效果计算
    local i_magic_阵法 =  G.QueryName(0x100c0001)[tostring(15)]
    local int_队友 = 0
    local int_慈悲效果 = 0
    for i = 2,5 do 
        if G.QueryName(0x10150001)[位置[i]] > 0 then 
            if G.QueryName(0x10040000 + G.QueryName(0x10150001)[位置[i]] ).生命 > 0 then 
                int_队友 = int_队友 + 1
            end
        end
    end
    if G.call('通用_取得内功轻功特效',0,18) then
        int_队友 = int_队友 + 1
    end
    if i_magic_阵法 then 
        if G.QueryName(i_magic_阵法).附加效果 == 2 then
            int_慈悲效果 = int_队友
        end
    end
    if G.call('通用_取得人物特效',0,9)  then --主角见切效果
        local jq_randow = math.random(100)
        if jq_randow > 90  then 
            hurt = 0
        elseif  jq_randow > 80  then
            result = result  - 50
        end 
    end
    if G.call('get_point',44)  < G.call('get_point',217) *0.2 and  (G.call('通用_取得人物特效',0,11) or G.call('通用_取得装备特效',0,105)) then  --主角强体判断
        result = result  - 50
    end 
    if G.call('get_role',int_id,12) < G.call('get_role',int_id,1)*0.5 and (G.call('通用_取得人物特效',int_id,13) or G.call('通用_取得装备特效',int_id,204) )  then  --攻击方强力判断
        result = result  + 50
    end 
    local att_role = 0
    for i = 2,5 do  
        if o_battle[位置[i]] == int_id then --判断受击方是否为队友
            att_role = 1
            break
        end    
    end  
    if att_role == 0 then --攻击方为敌方
        if  G.call('通用_取得敌方队伍特效',1) or G.call('通用_取得敌方装备特效',202) then  --敌方破绽效果
            result = result  + 50
        end    
    else --攻击方为我方
        if  G.call('通用_取得我方队伍特效',1) or G.call('通用_取得我方装备特效',202) then--我方破绽效果
            result = result  + 50
        end 
    end  
    if math.random(100) > 80 and (G.call('通用_取得人物特效',int_id,7) or G.call('通用_取得装备特效',int_id,203) or G.call('通用_取得装备特效',int_id,410) )   then ----攻击方暴击效果
        result = result + 50
        if G.call('通用_取得套装',int_id,4) == 2 then 
            result = result + 50
        elseif G.call('通用_取得套装',int_id,4) == 3 then 
            result = result + 100
        end 
    end
    if  G.call('通用_取得我方队伍特效',2) then 
        result = result  - 50 - int_慈悲效果*10
    end    
    hurt = hurt * result/120
    local int_闪避 = 0
    if G.call('get_point',196) ~= nil then   --主角内功闪避
        local o_skill_ta = G.QueryName(G.call('get_point',196))
        if o_skill_ta.内功轻功效果 == 5 then
            if math.random(100) > 50 then 
                int_闪避 = int_闪避 + o_skill_ta.效果等级
            end  
        end
    end  
    if G.call('get_point',197) ~= nil then   --主角轻功闪避
        local o_skill_ta = G.QueryName(G.call('get_point',197))
        if o_skill_ta.内功轻功效果 == 5 then
            if math.random(100) > 50 then 
                int_闪避 = int_闪避 + o_skill_ta.效果等级
            end  
        end
    end 
    if G.call('get_role',int_id,88) > 0 and math.random(100) < 15 then  --致盲后二次判断命中
        int_闪避 = int_闪避 + 150
    end 
    if G.call('get_point',89) > 1 then --逍遥御风闪避效果
        int_闪避 = int_闪避 + 100
    end
    if G.call('通用_取得套装',0,1) == 2 then --套装1闪避效果
        int_闪避 = int_闪避 + 30
    elseif  G.call('通用_取得套装',0,1) == 3 then
        int_闪避 = int_闪避 + 50
    end
    if math.random(a+15) > math.random(math.floor(b/6)+int_闪避 + 1) then  --命中计算
        if hurt > 0 then 
            if G.call('get_point',18) > 50 and G.call('get_magic',152) > 0 and math.random(100) <= G.call('get_point',18) - 50 then --斗转被动) 
                hurt3 = math.floor(hurt * (20+G.call('通用_取得装备斗转效果',0)  )   *G.call('get_magic_lv',152)/500  )
                if G.call('通用_取得套装',0,6) == 2 then
                    hurt3 = math.floor(hurt3*1.25)
                elseif  G.call('通用_取得套装',0,6) == 3 then
                    hurt3 = math.floor(hurt3*1.5)
                end
                print('hurt3=',hurt3)
            end 
            if G.call('get_point',196) ~= nil then   
                local o_skill_ta = G.QueryName(G.call('get_point',196))
                if o_skill_ta.内功轻功效果 == 4 then --内功减伤效果计算
                    hurt = hurt * (100-o_skill_ta.效果等级*o_skill_ta.修为等级/10)/100
                end 
            end  
            if math.random(100) > 80 and (G.call('通用_取得人物特效',int_id,22) or G.call('通用_取得装备特效',int_id,206))   then --朱雀被动效果
                hurt = hurt
            elseif G.call('通用_取得人物特效',int_id,21)then
                hurt = math.floor(hurt *(1- c/400)*(1- d/600*0.8)*(1 - G.call('通用_取得装备减伤效果',0)/100 )   )
            else
                hurt = math.floor(hurt *(1- c/400)*(1- d/600)*(1 - G.call('通用_取得装备减伤效果',0)/100 )   )  --按主角的拆招和内功免伤计算
            end
            if G.call('get_point',194) ~= nil then  --按主角装备的防具再次计算伤害
                local o_item = G.QueryName(G.call('get_point',194))
                hurt = hurt*(1-(o_item.系数-100)/2/100)
            end 
            if G.call('通用_取得人物特效',int_id,19) then  --舔血效果计算
                hurt4 = math.floor(hurt*0.1) 
            end   
            if G.call('通用_取得人物特效',int_id,20) and math.random(100) < 50 then
                G.call('add_role',int_id,14,1500)
                G.call('add_point',46,-1500)
            end 
            G.call('add_role',int_id,13,hurt4)    
            G.call('add_role',int_id,2,hurt0)
            G.call('add_role',int_id,13,-hurt3)
            G.call('add_role',int_id,14,hurt1)
            G.call('add_point',46,-hurt1)
            G.call('add_point',46,-hurt0)
            G.call('add_point',46,-hurt2) 
            if G.call('通用_取得套装',int_id,3) == 2 then --套装3和套装4强伤和减伤效果
                hurt = math.floor(hurt *1.1)
            elseif  G.call('通用_取得套装',int_id,3) == 3 then
                hurt = math.floor(hurt *1.2)
            elseif  G.call('通用_取得套装',0,4) == 2 then
                hurt = math.floor(hurt *0.9)
            elseif  G.call('通用_取得套装',0,4) == 3 then
                hurt = math.floor(hurt *0.8)
            end
            if att_role == 0 then --根据难度和攻击方计算最终伤害
                hurt = math.floor(hurt*o_battle.diffty/200) 
            else   
                hurt = math.floor(hurt*200/o_battle.diffty) 
            end  
            if hurt < 10 then 
                hurt = math.random(10)
            end  
            local int_怒气 = 0
            if  G.call('逻辑_拥有被动',17) then --计算怒气
                int_怒气 = math.ceil(hurt/500 + 0.5)
            else
                int_怒气 = math.ceil(hurt/1000 + 0.5)
            end
            if G.call('通用_取得套装',0,4) == 2 then --套装4增加怒气效果
                int_怒气 = int_怒气 + 2
            elseif G.call('通用_取得套装',0,4) == 3 then --套装4怒气效果
                int_怒气 = int_怒气 * 2
            end
            G.call('add_point',48,int_怒气 )
            local seed = 100
            if (G.call('通用_取得人物特效',int_id,10) or G.call('通用_取得装备特效',int_id,205))  then --攻击方万毒效果
                seed = math.max(1,math.floor(seed/2))
            end
            if G.call('通用_取得人物特效',0,6) then --受击方冰心效果
                seed = seed * 2
            end 
            if G.call('通用_取得套装',0,4) == 2 then
                seed = math.max(1,math.floor(seed/2))
            elseif G.call('通用_取得套装',0,4) == 3 then
                seed = 1
            end 
            local deytime = G.call('get_point',236)
            local int_时序 = 50 * deytime 
            if o_skill.附加效果 == 1 then         --武功附加状态赋予,主角定力越大几率越低
                if G.call('通用_取得人物特效',int_id,18) then  --阴毒效果
                    seed = math.max(1,math.floor(seed/2))
                end  
                if math.random(seed) < 5 + math.floor(G.call('get_role',int_id,6)/10 - G.call('get_point',21)/10) then 
                    if G.call('get_point',81) == 0 then 
                        G.call('set_point',81,1) 
                        G.call('set_point',91,int_时序)
                    end 
                    if G.call('通用_取得人物特效',int_id,18) then 
                        G.call('set_point',91,int_时序*2)
                    end  
                end  
            elseif  o_skill.附加效果 == 2 then
                if math.random(seed) < 5 + math.floor(G.call('get_role',int_id,6)/10 - G.call('get_point',21)/10) then 
                    if G.call('get_point',82) == 0 then 
                        G.call('set_point',82,1) 
                        G.call('set_point',92,int_时序)
                    end 
                end     
            elseif  o_skill.附加效果 == 3 or G.call('通用_取得套装',int_id,5) == 3 then
                if G.call('通用_取得套装',int_id,5) >= 2 then 
                    seed = seed * 2
                end
                if math.random(seed) < 5 + math.floor(G.call('get_role',int_id,6)/10 - G.call('get_point',21)/10) then 
                    if G.call('get_point',83) == 0 then 
                        G.call('set_point',83,1) 
                        G.call('set_point',93,int_时序)
                    end 
                end 
            elseif  o_skill.附加效果 == 4 then
                if math.random(seed) < 5 + math.floor(G.call('get_role',int_id,6)/10 - G.call('get_point',21)/10) then 
                    if G.call('get_point',84) == 0 then 
                        G.call('set_point',84,1) 
                        G.call('set_point',94,int_时序)
                    end 
                end 
            elseif  o_skill.附加效果 == 5 then
                if math.random(seed) < 5 + math.floor(G.call('get_role',int_id,6)/10 - G.call('get_point',21)/10) then  
                    if G.call('get_point',85) == 0 then 
                        G.call('set_point',85,1) 
                        G.call('set_point',95,int_时序)
                    end 
                end 
            elseif  o_skill.附加效果 == 6  or G.call('通用_取得人物特效',int_id,31) or G.call('通用_取得装备特效',int_id,408) then  --减速
                if math.random(seed) < 5 + math.floor(G.call('get_role',int_id,6)/10 - G.call('get_point',21)/10) then 
                    if G.call('get_point',86) == 0 then 
                        G.call('set_point',86,1) 
                        G.call('set_point',96,int_时序)
                    end 
                end 
            elseif  o_skill.附加效果 == 7 then
                if G.call('通用_取得人物特效',int_id,18) then 
                    seed = seed/2
                end 
                if math.random(seed) < 5 + math.floor(G.call('get_role',int_id,6)/10 - G.call('get_point',21)/10) then 
                    if G.call('get_point',81) == 0 then 
                        G.call('set_point',81,1) 
                        G.call('set_point',91,int_时序)
                    end 
                    if G.call('get_point',85) == 0 then 
                        G.call('set_point',85,1) 
                        G.call('set_point',95,int_时序)
                    end 
                    if G.call('通用_取得人物特效',int_id,18) then 
                        G.call('set_point',91,int_时序*2)
                    end 
                end 
            elseif  o_skill.附加效果 == 8 then
                if math.random(seed) < 5 + math.floor(G.call('get_role',int_id,6)/10 - G.call('get_point',21)/10) then 
                    if G.call('get_point',88) == 0 then 
                        G.call('set_point',88,1) 
                        G.call('set_point',98,int_时序)
                    end 
                end 
            elseif  o_skill.附加效果 == 9 then
                if math.random(seed) < 5 + math.floor(G.call('get_role',int_id,6)/10 - G.call('get_point',21)/10) then 
                    if G.call('get_point',87) == 0 then 
                        G.call('set_point',87,1) 
                        G.call('set_point',97,int_时序)
                    end 
                end 
            elseif  o_skill.附加效果 == 10 then --斩杀效果
                if (G.call('get_point',217) <=5000 or G.call('get_point',44) < G.call('get_point',217)/10) and math.random(100) < 30 then 
                    hurt = G.call('get_point',44)
                    G.call('set_role',int_id,13,maht.floor(G.call('get_role',13)/2) )
                end 
            end
            if G.call('get_point',194) == 0x100b004b then 
                G.call('set_point',84,0)
            elseif G.call('get_point',194) == 0x100b0049 then 
                G.call('set_point',81,0)
            end
            if G.call('get_point',196) ~= nil then   --主角内功免疫中毒，内伤，麻痹计算
                local o_skill_ta = G.QueryName(G.call('get_point',196))
                if o_skill_ta.内功轻功效果  ==  8 then 
                    if math.random(seed) < o_skill_ta.效果等级*o_skill_ta.修为等级 then
                        G.call('set_point',81,0) 
                    end
                elseif o_skill_ta.内功轻功效果  ==  14 then 
                    if math.random(seed) < o_skill_ta.效果等级*o_skill_ta.修为等级 then
                        G.call('set_point',82,2) 
                    end
                elseif o_skill_ta.内功轻功效果  ==  15 then 
                    if math.random(seed) < o_skill_ta.效果等级*o_skill_ta.修为等级 then
                        G.call('set_point',84,0) 
                    end  
                end 
            end  
        end 
    else
        hurt = 0  
    end 
    if hurt > 99999 then 
        hurt = 99999
    end
    if hurt < 0 then 
        hurt = math.random(10,20)
    end
    if int_id == 248 then 
        if math.random(G.call('get_love',248)) > 50 then
        else
            hurt = 0 
        end
    end    
    local string_字符串 = ''
    if o_skill.类别 < 6 then 
        if hurt == 0 then
            string_字符串 = '【'..o_role.姓名..'】使出'..o_skill_武功等级..'级【'..o_skill.名称..'】被【'..G.call('get_point',6)..'】闪避'
        else
            string_字符串 = '【'..o_role.姓名..'】使出'..o_skill_武功等级..'级【'..o_skill.名称..'】对【'..G.call('get_point',6)..'】造成'..tostring(hurt)..'伤害'
        end    
    else
        if hurt == 0 then
            string_字符串 = '【'..o_role.姓名..'】使出5级【'..o_skill.名称..'】被【'..G.call('get_point',6)..'】闪避'
        else
            string_字符串 = '【'..o_role.姓名..'】使出5级【'..o_skill.名称..'】对【'..G.call('get_point',6)..'】造成'..tostring(hurt)..'伤害'
        end
    end
    local o_notebook = G.QueryName(0x101a0001)
    local int_记事 = #o_notebook.记事本
    o_notebook.记事本[int_记事+1] = {}
    o_notebook.记事本[int_记事+1].记事 = string_字符串
    return hurt

end
