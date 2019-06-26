--[[4003

]]
local G = require "gf"
local L = {}
local t = G.api
local GF = require "gfbase"
--type=通用指令
--hide=false
--private=false
t['通关_存档'] = function()
    G.wait_time(200)
    G.QueryName(0x10030001)[tostring(238)] = 1 --设置通关标志
    G.call('通用_存档',G.call('get_point',143))--保存通关存档
    G.call('通用_存档',10) 
end
t['信息_读档'] = function(int_档案编号)
    local perms = {
		_ENV = _ENV,
		-- 1 = [c],
		-- [2] = co,
		-- [3] = co.yield,
		-- [4] = co.resume,
		[5] = GF,
		-- [6] = xpcall,
		[7] = GF.o_meta,
		[8] = GF.new_meta
    };
    local path = G.GetSavePath(string.format('R%d.grp', int_档案编号));
	if G.IsFileExist(path)  then
		local zipbuf = G.LoadFile(path);
		local buf = G.unzip(zipbuf);
        local obj = eris.unpersist(perms, buf);
        for i,v in ipairs({'o_files'}) do
            G.newinst_cache[v] = obj[1][v]
        end 
    end
end
t['成就_读档'] = function(int_档案编号)
    local perms = {
		_ENV = _ENV,
		-- 1 = [c],
		-- [2] = co,
		-- [3] = co.yield,
		-- [4] = co.resume,
		[5] = GF,
		-- [6] = xpcall,
		[7] = GF.o_meta,
		[8] = GF.new_meta
    };
    local path = G.GetSavePath(string.format('R%d.grp', int_档案编号));
	if G.IsFileExist(path)  then
		local zipbuf = G.LoadFile(path);
		local buf = G.unzip(zipbuf);
        local obj = eris.unpersist(perms, buf);
        local db = obj[1]['o_achieve']
        G.newinst_cache['o_achieve'] = db  
    end
end
t['故事_读档'] = function(int_档案编号)
    local perms = {
		_ENV = _ENV,
		-- 1 = [c],
		-- [2] = co,
		-- [3] = co.yield,
		-- [4] = co.resume,
		[5] = GF,
		-- [6] = xpcall,
		[7] = GF.o_meta,
		[8] = GF.new_meta
    };
    local path = G.GetSavePath(string.format('R%d.grp', int_档案编号));
	if G.IsFileExist(path)  then
		local zipbuf = G.LoadFile(path);
		local buf = G.unzip(zipbuf);
        local obj = eris.unpersist(perms, buf);
        local db = obj[1]['o_book_story_list']
        G.newinst_cache['o_book_story_list'] = db  
    end
end
t['继承_读档'] = function(int_档案编号)
    local perms = {
		_ENV = _ENV,
		-- 1 = [c],
		-- [2] = co,
		-- [3] = co.yield,
		-- [4] = co.resume,
		[5] = GF,
		-- [6] = xpcall,
		[7] = GF.o_meta,
		[8] = GF.new_meta
    };
    local path = G.GetSavePath(string.format('R%d.grp', int_档案编号));
	if G.IsFileExist(path) then
		local zipbuf = G.LoadFile(path);
		local buf = G.unzip(zipbuf);
        local obj = eris.unpersist(perms, buf);  
        for i,v in ipairs({'o_body', 'o_storehouse','o_equip','o_files'}) do
            G.newinst_cache[v] = obj[1][v]
        end
    end
end
t['通用_存档'] = function(int_档案编号)
	local perms = {
        [_ENV] = '_ENV',
        [GF] = 5,
		[GF.o_meta] = 7,
		[GF.new_meta] = 8
    };
    if int_档案编号 > 0 and int_档案编号 <=4 then 
        G.call('add_point',64,1)
    end
    local school = G.call('get_point',8)
    local time =  os.date()
    local lv = G.call('get_point',4)
    local diffty = G.QueryName(0x10160000 +G.call('get_point',143)).难度
    local week = G.call('get_point',237)
    local clear = G.call('get_point',238)
    local place = G.call('get_point',140) - 0x10060000
    local number = G.call('get_point',64)
    local obj = save_ofile();
    local buf = eris.persist(perms, obj);
    local zipbuf = G.zip(buf);
    local path = G.GetSavePath('R4.grp');
    if int_档案编号 < 5 and  int_档案编号 > 0 then
        local path = GF.GetSavePath('R5.grp')
        local file,err=io.open(path)--打开文件
        if file then--如果有这个文件
            io.close(file)
        else
            G.call('信息_读档',10)
            for i = 1,4 do 
                G.QueryName(0x10160000 + i).周目 = 1
            end
            G.call('set_point',237,1)
            G.call('通用_存档',5)
        end
    end
    if int_档案编号 == 0 then 
        path = G.GetSavePath('R0.grp');
        G.WriteFile(path, zipbuf);
    elseif int_档案编号  == 1 then 
        path = G.GetSavePath('R1.grp'); 
        G.WriteFile(path, zipbuf);
        G.call('notice1','存档已保存')
    elseif int_档案编号  == 2 then
        path = G.GetSavePath('R2.grp');  
        G.WriteFile(path, zipbuf);
        G.call('notice1','存档已保存')
    elseif int_档案编号  == 3 then
        path = G.GetSavePath('R3.grp');  
        G.WriteFile(path, zipbuf);
        G.call('notice1','存档已保存')
    elseif int_档案编号  == 4 then
        path = G.GetSavePath('R4.grp'); 
        G.WriteFile(path, zipbuf);
    elseif int_档案编号  == 5 then
        path = G.GetSavePath('R5.grp'); 
        G.WriteFile(path, zipbuf);
    elseif int_档案编号  == 10 then
        path = G.GetSavePath('R10.grp');  
        G.WriteFile(path, zipbuf);
    end
    if int_档案编号 > 0 and int_档案编号 <=4 then 
        local int_存档位置 = G.call('get_point',143)
        G.call('信息_读档',5)
        local o_files = G.QueryName(0x10160000 + int_档案编号)
        o_files.门派 = school
        o_files.等级 = lv
        o_files.时间 = time
        o_files.难度 = diffty
        o_files.通关 = clear
        o_files.周目 = week
        o_files.记录 = place
        o_files.次数 = number 
        if int_档案编号 == 4 then
            local o_files = G.QueryName(0x10160000 + int_存档位置)
            o_files.门派 = school
            o_files.等级 = lv
            o_files.时间 = time
            o_files.难度 = diffty
            o_files.通关 = clear
            o_files.周目 = week
            o_files.记录 = place
            o_files.次数 = number  
        end 
        G.call('通用_存档',5)
    end
end
--type=通用指令
--hide=false
--private=false
t['通用_读档'] = function(int_档案编号)
	local perms = {
		_ENV = _ENV,
		-- 1 = [c],
		-- [2] = co,
		-- [3] = co.yield,
		-- [4] = co.resume,
		[5] = GF,
		-- [6] = xpcall,
		[7] = GF.o_meta,
		[8] = GF.new_meta
	};
	local path = G.GetSavePath(string.format('R%d.grp', int_档案编号));
	if G.IsFileExist(path) then
		--print(path, 'exist')
		local zipbuf = G.LoadFile(path);
		local buf = G.unzip(zipbuf);
		local obj = eris.unpersist(perms, buf);
        load_ofile(obj);
        math.randomseed(tostring(os.time()):reverse():sub(1, 6)) --随机种子
        if int_档案编号 > 0 and int_档案编号 < 5 then 
            local role = G.DBTable('o_role')
            for i = 1,#role do 
                for p = 81,90 do 
                    G.QueryName(0x10040000 + i)[tostring(p)] = 0
                    G.QueryName(0x10040000 + i)[tostring(p+10)] = 0
                end 
            end 
            if int_档案编号 < 4 then 
                G.call("goto_map",G.call('get_point',140)-0x10060000)
            else
                if G.call('get_year') > 1 then 
                    G.call("goto_map",4)
                else
                    G.call("goto_map",G.call('get_point',140)-0x10060000)
                end
            end
            if G.misc().通天塔 == nil then 
                G.misc().通天塔 = 0
            end
            G.call('write_min')          
        end 	
        if int_档案编号 == 0 then 
           G.trig_event('创建角色')
        end 
        G.call('指令_存储属性')
        G.misc().新游戏 = 1
        if int_档案编号 > 0 and int_档案编号 <= 4 then
            local o_team = G.QueryName(0x10110001)
            if G.misc().随机序号 == nil then 
                G.call('通用_随机种子')
            end
            if G.misc().宝物随机序号 == nil then 
                G.call('通用_宝物随机种子')
            end
            if G.misc().大随机序号 == nil then 
                G.call('通用_大随机种子')
            end
            G.call('通用_存档',int_档案编号)
            local o_achieve = G.QueryName(0x1017000e)
            if #o_achieve.进度列表 < 9 then 
                G.call('通用_强退游戏') 
            end
            local o_store = G.QueryName(0x10190001)
            local int_继承个数 = 0
            for i = 1,#o_store.装备 do
                if o_store.装备[i].数量 > 0 then
                    int_继承个数 = int_继承个数 + 1  
                end  
            end
            if int_继承个数 >= 400 then
                G.call('通用_强退游戏',int_继承个数) 
            end
            G.start_program('地图系统_游戏时长监控')
        end 
    end
end
t['read_diffmin'] = function() 
    if G.misc().time == nil or G.misc().time == 0 then 
       return  31
    end    
    local time1 = math.floor(os.time()/60)
    local time2 = G.misc().time
    local diffmin = time1 - time2
    return diffmin
end
t['write_min'] = function() 
    local n = os.time()
    G.misc().time = math.floor(n/60) 
end
t['通用_记录时间'] = function() 
    local n = os.time()
    G.misc().通天塔记录时间 = math.floor(n/60)
end
t['通用_读取时间差'] = function()    
    local time1 = math.floor(os.time()/60)
    local time2 = 0
    if not G.misc().通天塔记录时间 then 
        time1 = time2 + 100
    else
        time2 = G.misc().通天塔记录时间 
    end
    local diffmin = time1 - time2
    return diffmin
end
t['write_hour'] = function() 
    local n = os.time()
    return  math.floor(n/3600) 
end
t['test'] = function()
    G.call('puzzle')
end   
t['new_test'] = function()
    --G.call('模式_笑梦游记')
    --G.call('set_point',115,3)
    -- G.call('all_over')
    -- G.call('set_team',36,0,0,0)
    -- G.call('call_battle',1,134,4,150,110,175,176,177,0,0,0,66) 
    --G.call('join',4)
   -- G.call('add_equip',0x10180028 + 15,1)
    -- local o_book_story = G.QueryName(0x101c000e)
    -- o_book_story.流程 = 0
    -- G.call('天书_鸳鸯刀') 
    -- G.call('通用_印记状态')
end   
t['in_test'] = function() 
    G.misc().测试 = 1
end 
t['input'] = function() 
    G.addUI('v_input')
    G.wait1('input_over')
    G.removeUI('v_input')   
end  
t['organ'] = function()
    G.addUI('v_organ')  
    local ui ;
    if not G.getUI('v_organ') then 
        return
    end 
    ui = G.getUI('v_organ');
    local c = ui.c_organ;  
    G.wait1('organ_over')
    local int_完成 =  c.完成  
    G.removeUI('v_organ') 
    if int_完成 == 1 then
        return true 
    else
        return false
    end
end   
t['抓蚯蚓_计时器'] = function()
    G.misc().计时器 =  15.005
    while true do 
        local ui ;
        if not G.getUI('v_dig_earthworms') then 
            return
        end 
        ui = G.getUI('v_dig_earthworms');
        local c = ui.c_dig_earthworms;
        ui.getChildByName('时间').text = math.floor(G.misc().计时器) 
        G.wait_time(500) 
        G.misc().计时器  =  G.misc().计时器 - 0.5 
        local s = G.misc().计时器
        ui.getChildByName('时间').text = math.floor(G.misc().计时器) 
        if G.misc().计时器 < 0 then
            break 
        end
    end
    G.trig_event('dig_earthworms_over')
end
t['dig_earthworms'] = function()
    G.addUI('v_dig_earthworms')
    local ui ;
    if not G.getUI('v_dig_earthworms') then 
        return
    end 
    ui = G.getUI('v_dig_earthworms');
    local c = ui.c_dig_earthworms;
    G.wait_time(1000)
    for i = 1,100 do 
       c.图片_list[i].visible = false
    end
    c.按钮.visible = true   
    G.start_program("抓蚯蚓_计时器")
    G.wait1('dig_earthworms_over')
    G.remove_program('抓蚯蚓_计时器',1)  
    G.removeUI('v_dig_earthworms') 
end 
t['拼图_计时器'] = function()
    G.misc().计时器 =  1800.002
    while true do 
        local ui ;
        if not G.getUI('v_puzzle') then 
            return
        end 
        ui = G.getUI('v_puzzle');
        ui.getChildByName('时间').text = string.format("%.2d:%.2d", math.floor(G.misc().计时器/60)%60 , math.floor(G.misc().计时器)%60) 
        local c = ui.c_puzzle;
        G.wait_time(1000) 
        G.misc().计时器  =  G.misc().计时器 - 1  
        local s = G.misc().计时器
        ui.getChildByName('时间').text = string.format("%.2d:%.2d" , math.floor(G.misc().计时器/60)%60 , math.floor(G.misc().计时器)%60) 
        if G.misc().计时器 <= 0 then
            break 
        end
    end
    G.misc().拼图结果 = 0
    G.trig_event('puzzle_over')
end 
t['puzzle'] = function()
    G.misc().拼图结果 = 0
    G.addUI('v_puzzle')
    G.Play(0x49011004, 1,true,1) 
    G.start_program("拼图_计时器")
    G.wait1('puzzle_over')
    G.remove_program('拼图_计时器',1)
    G.removeUI('v_puzzle') 
    if  G.misc().拼图结果 == 1 then 
        G.call('notice1','恭喜完成拼图')
        if 1800 - G.misc().计时器 <= 900 then 
            G.call('通用_抽礼物',9,0) 
        end
    else
        G.call('notice1','很遗憾没有完成！')
    end    
end   
t['gameout'] = function()  --游戏通关画面
    G.Stop(1)
    G.addUI('v_gameout')
    G.Play(0x4901001f, 1,true,1) 
    G.wait1('gameout_over')
    G.removeUI('v_gameout')
    G.call('call_title')  
end 
t['load'] = function() --读档界面
    G.addUI('v_load')
    G.Stop(1)
    G.Play(0x4901002f, 1,true,1) 
    local ui ;
	if not G.getUI('v_title') then 
		return
	end 
    ui = G.getUI('v_title');
    ui.visible = false
    G.wait1('load_over')
    G.removeUI('v_load') 
end
t['通用_记录继承装备']=function(int_重生)
    local _o_继承装备 = {}
    local o_body = G.QueryName(0x10030001)
    local o_store = G.QueryName(0x10190001)
    local i_继承装备_1 = o_body.头戴
    local i_继承装备_2 = o_body.手戴 
    local i_继承装备_3 = o_body.脚穿
    local i_继承装备_4 = o_body.印记
    local int_继承个数 = 0
    G.call('通用_还原装备')
    if i_继承装备_1 then 
        table.insert(_o_继承装备,i_继承装备_1)
    end
    if i_继承装备_2 then 
        table.insert(_o_继承装备,i_继承装备_2)
    end
    if i_继承装备_3 then 
        table.insert(_o_继承装备,i_继承装备_3)
    end
    if i_继承装备_4 then 
        table.insert(_o_继承装备,i_继承装备_4)
    end
    if G.call('get_point',237) > 1 and int_重生 > 0 then 
        if #o_store.装备 > 0 then
            for i = 1, #o_store.装备 do
                local o_equip = G.QueryName(o_store.装备[i].代码)
                if o_store.装备[i].数量 > 0 and o_equip.类型 == 4 then
                    table.insert(_o_继承装备,o_store.装备[i].代码) 
                end
            end
        end
    end
    if G.call('get_point',237) > 1 and int_重生 > 0  then 
        if #o_store.装备 > 0 then
            for i = 1, #o_store.装备 do
                local o_equip = G.QueryName(o_store.装备[i].代码)
                if o_store.装备[i].数量 > 0 and o_equip.类型 < 4 then
                    table.insert(_o_继承装备,o_store.装备[i].代码)  
                    int_继承个数 = int_继承个数 + 1
                    if int_继承个数 == G.call('get_point',237) - 1 then
                        break 
                    end
                end
            end
        end 
    end
    return _o_继承装备
end
t['重生']=function() 
    local o_body = G.QueryName(0x10030001)
    local o_store = G.QueryName(0x10190001)
    local int_存档位置 = G.call('get_point',143) 
    local 礼包 = G.misc().礼包
    local table_继承装备 = {}
    local int_周目 = G.call('get_point',237)
    local int_清除成就 = G.misc().清除成就
    local int_继承个数 = #o_store.装备
    table_继承装备 = G.call('通用_记录继承装备',0)
    local o_equip_usb = {}
    local i_equip
    if #table_继承装备 > 0 then 
        for i = 1,#table_继承装备 do 
            o_equip_usb[i] = {}
        end
        for i = 1,#table_继承装备 do 
            if table_继承装备[i] then 
                local o_equip_子物品 = G.QueryName(table_继承装备[i])
                G.deepcopy(o_equip_子物品, o_equip_usb[i])
            end
        end
    end
    G.call('成就_读档',10)
    local int_万金 = G.QueryName(0x10170004).进度列表[1].当前进度
    G.call('成就_读档',G.call('get_point',143))
    if int_万金 > 400000 or int_继承个数 > 3000 then
        G.call('notice1','该存档无法正常重生！')
        G.call("goto_map",G.call('get_point',140)-0x10060000)
    else
        G.trig_event('监控')
        G.call('dark')
        G.call('通用_读档',0) 
        if  int_清除成就 ~= 1 then 
            G.call('成就_读档',10)
            G.misc().清除成就 = 0 
        end
        if #o_equip_usb > 0  then 
            for i = 1,#o_equip_usb do 
                if o_equip_usb[i] then 
                    G.addNewInst2Dynamic(o_equip_usb[i],'o_equip')
                    i_equip = o_equip_usb[i].name
                    G.call('add_equip',i_equip,1)
                end
            end
        end
        G.misc().重生 = 1
        G.call('通用_印记状态')
        G.misc().礼包 = 礼包
        G.misc().切磋次数 = 0
        G.call('set_point',237,int_周目)
        G.call('set_newpoint',237,-int_周目-10)
        G.call('set_point',143,int_存档位置) 
        G.call('mapoff')
        G.Play(0x49010038, 1,true,1) 
        G.call('create')    
    end
end
t['call_title']=function(int_代码)  --开始菜单
    G.Stop(1)
    G.addUI('v_title')
    G.Play(0x49010038, 1,true,1) 
    G.wait1('开始结束')
    G.removeUI('v_title')
    if G.misc().通关 == nil or G.misc().通关 == 0 then return end
    if G.misc().通关 > 0 then
       -- G.call('mapon') 
        G.call('mapoff')
        G.Play(0x49010038, 1,true,1) 
        G.QueryName(0x10030001)[tostring(238)] = 0
        G.call('create')
        G.misc().通关 = 0
    end    
end 
t['create']=function()  --建立角色
    G.addUI('v_addpoint')
    G.wait1('建立角色结束')
    G.removeUI('v_addpoint')
    G.call('回答问题')
end
t['playmovie']=function(int_序号,int_延时,int_x,int_y)  --播放动画
    G.addUI('v_movie')
    local ui = G.getUI('v_movie');
    local c = ui.c_movie;
    if int_序号 < 14 then 
        ui.getChildByName('movie').c_button.img_normal = 0x33010000 + int_序号
    else
        ui.getChildByName('movie').c_button.img_normal = 0x33040000 + int_序号
    end
    ui.getChildByName('movie').x = int_x
    ui.getChildByName('movie').y = int_y
    G.wait_time(int_延时)
    G.removeUI('v_movie')
end
t['gameover']=function()  --游戏失败画面
    G.call('all_over') 
    G.Stop(1)
    G.addUI('v_gameover')
    G.Stop(1)
    G.Play(0x4901000d, 1,false,100) 
    G.wait1('game_over')
    G.removeUI('v_gameover')
    G.call('photo_off')
    G.call('photo0_off')
    G.call('xunbao_off')
    G.call('call_title')  
end 
t['select']=function()  --队友选择
    G.addUI('v_select')
    G.wait1('选择队友结束')
    G.removeUI('v_select')
end   
t['get_fullname']=function()  --
    return G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]
end
t['set_team']=function(int_2,int_3,int_4,int_5)  --设置战斗队友
    local team = {'team2','team3','team4','team5'}
    local o_battle = G.QueryName(0x10150001)
    local int = {int_2,int_3,int_4,int_5}
    for i = 1,4 do 
        o_battle[team[i]] = int[i]
    end
end 
t['get_battle']=function()  --取得战斗结果
   return G.QueryName(0x10030001)[tostring(235)]
end 
t['通用_战斗飘字']=function(int_位置,int_范围)  --
    local ui = G.getUI('v_battle')
    local c = ui.c_battle
    local ui_显示 = ui.getChildByName('hurt')
    local ui_特效 = ui.getChildByName('特效')
    local ui_flash = ui.getChildByName('flash')
    local o_battle = G.QueryName(0x10150001)
    local i_role = 0x10040000
    local 位置 = {'team1','team2','team3','team4','team5','enemy1','enemy2','enemy3','enemy4','enemy5','enemy6','all1','all2'}
    if o_battle.模式 >= 4 and o_battle.模式 ~= 99  then
        ui_显示.getChildByName('team1').visible = false 
    end
    local   hurt = tonumber(ui.getChildByName('hurt').getChildByName(位置[1]).getChildByName('生命').text)
    if ui.getChildByName('hurt').getChildByName(位置[1]).getChildByName('减生命').visible == true then 
        print('hurt',hurt,ui.getChildByName('hurt').getChildByName(位置[1]).getChildByName('减生命').text)
        if G.QueryName(0x10150001).模式 < 4 or  o_battle.模式 == 99 then 
            G.call('add_point',44,-hurt)
            if G.call('get_point',8) ==  4 then --判断复生效果，全真复生低于30%血10%几率触发，其他门派低于20%血5%几率触发 
                if G.call('通用_取得人物特效',0,15) and math.random(100) > 90 and G.call('get_point',44) < G.call('get_point',217)*0.3 then --主角复生效果
                    G.call('add_point',44,G.call('get_point',217))                  
                end  
            else  
                if G.call('通用_取得人物特效',0,15) and math.random(100) > 95 and G.call('get_point',44) < G.call('get_point',217)*0.2 then --主角复生效果
                    G.call('add_point',44,G.call('get_point',217))                  
                end  
            end 
        end 
    end
    for p = 2,11 do 
        if o_battle[位置[p]] > 0 then
            if  G.QueryName(i_role + o_battle[位置[p]] ).生命 > 0  then
                if  ui.getChildByName('hurt').getChildByName(位置[p]).getChildByName('减生命').visible == true then 
                    hurt = tonumber(ui.getChildByName('hurt').getChildByName(位置[p]).getChildByName('生命').text)
                    G.call('add_role',o_battle[位置[p]] ,15,-hurt)
                    if  G.call('通用_取得人物特效',o_battle[位置[p]],15) and math.random(100) > 95 and G.call('get_role',o_battle[位置[p]],15) < G.call('get_role',o_battle[位置[p]],1) *0.2 then --npc复生效果
                        G.call('add_role',o_battle[位置[p]],15,G.call('get_role',o_battle[位置[p]],1))
                    end           
                end 
                local int_hp = tonumber(ui.getChildByName('hurt').getChildByName(位置[p]).getChildByName('加生命').text)
                G.call('add_role',o_battle[位置[p]],15,int_hp)  
            end
        end 		
    end 
    local int_hp = tonumber(ui.getChildByName('hurt').getChildByName(位置[1]).getChildByName('加生命').text)
    if int_hp > 0 then 
       G.call('add_point',44,int_hp)
    end
    ui_显示.visible = true
    ui_显示.y = 0
    ui_特效.y = 0
    G.Tween('y',500, ui_显示, 80)
    G.Tween('y',500, ui_特效, 80)
    if int_范围 == 5 then 
        G.wait_time(1000)
    else
        G.wait_time(500)
    end
    ui_显示.visible = false 
    ui_特效.getChildByName('enemy').getChildByName('一').text = ''
    ui_特效.getChildByName('enemy').getChildByName('二').text = ''
    ui_特效.getChildByName('team').getChildByName('一').text = ''
    ui_特效.getChildByName('team').getChildByName('二').text = ''
    for p = 1,11 do
        ui.getChildByName('hurt').getChildByName(位置[p]).getChildByName('一').text = ''
        ui.getChildByName('hurt').getChildByName(位置[p]).getChildByName('二').text = ''
        ui.getChildByName('hurt').getChildByName(位置[p]).getChildByName('减生命').visible = false
        ui.getChildByName('hurt').getChildByName(位置[p]).getChildByName('闪避').visible = false
        ui.getChildByName('hurt').getChildByName(位置[p]).getChildByName('减生命').text = 0 
        ui.getChildByName('hurt').getChildByName(位置[p]).getChildByName('加生命').visible = false
        ui.getChildByName('hurt').getChildByName(位置[p]).getChildByName('加生命').text = 0
        ui.getChildByName('hurt').getChildByName(位置[p]).getChildByName('加内力').text = 0
    end
    if c.我方存活 > 0 and  c.敌方存活 > 0 then
       c:刷新显示()
    end
end 
t['call_wood']=function() 
    --if G.misc().战斗结果 == 0 then return end 
    G.call('set_role',223,15,9989999)
    G.call('set_role',223,1,9989999)
    local o_body = G.QueryName(0x1003001)
    local int_hp = G.call('get_point',44) 
    local int_hpmax = G.call('get_point',45)  
    for i = 3,8 do
        G.call('set_role',223,i,0)
    end
    G.call('set_role',223,31,100)
    G.call('set_roleskill',223,1,191)
    G.call('set_roleskill',223,2,191)
    G.call('set_roleskill',223,3,191)
    G.misc().木桩 = 1
    --G.call('set_point',87,1)
    --G.call('set_point',97,99999)
    G.call('set_team',2,3,4,16)
    G.call('call_battle',1,10,3,0.000000003,223,0,0,0,0,0)
    for i = 3,8 do
        G.call('set_role',223,i,100)
    end
    G.call('set_role',223,15,40000)
    G.call('set_role',223,1,40000)
    G.call('set_roleskill',223,1,167)
    G.call('set_roleskill',223,2,145)
    G.call('set_roleskill',223,3,71)
    G.misc().木桩 = 0
    G.call('add_hour',6)
    G.call('turn_map')
end 
t['get_drop']=function()  --取得战斗掉落
    local o_battle = G.QueryName(0x10150001)
    local enemy = {'enemy1','enemy2','enemy3','enemy4','enemy5','enemy6'}
    for i = 1,6 do 
        if o_battle[enemy[i]] > 0 then 
            local o_role = G.QueryName(0x10040000+o_battle[enemy[i]])
            if o_role .死亡掉落道具  and o_role .拥有 and o_role .拥有 > 0 then 
                local item = o_role .死亡掉落道具 - 0x100b0000+1
                G.call('add_item',item,1)
                local name = G.QueryName(o_role.死亡掉落道具).名称
                G.call('notice1','获得【'..name..'】')
                o_role.拥有 = 0
            end     
        end     
    end     
end   
t['call_battle']=function(int_no,int_map,int_mod,int_diffty,int_enemy1,int_enemy2,int_enemy3,int_enemy4,int_enemy5,int_enemy6,int_狙杀,int_音乐,int_用药) --呼出战斗
    local enemy = {'enemy1','enemy2','enemy3','enemy4','enemy5','enemy6'}
    local o_battle = G.QueryName(0x10150001)
    local int = {int_enemy1,int_enemy2,int_enemy3,int_enemy4,int_enemy5,int_enemy6}
    local 位置 = {'team1','team2','team3','team4','team5','enemy1','enemy2','enemy3','enemy4','enemy5','enemy6'}
    o_battle.背景 = int_map  --战斗地图
    o_battle.模式 = int_mod  --战斗模式
    local int_战斗难度 = 50
    local int_难度 =  G.QueryName(0x10160000 +G.call('get_point',143)).难度
    if int_难度 == 1 then
        int_战斗难度 = 25 
    elseif int_难度 == 2 then
        int_战斗难度 = 75
    elseif int_难度 == 3 then
        int_战斗难度 = 100    
    end
    o_battle.diffty = int_diffty + int_战斗难度 + (G.call('get_point',237)-1)*10  --战斗难度随周目增加而增加
    if G.call('get_year') > 2 then --难度随时间增长
        o_battle.diffty = o_battle.diffty + (G.call('get_year') - 2)*10
    end
    if o_battle.模式 == 4 then
        o_battle.diffty = int_diffty   
    end
    if o_battle.模式 == 5 or o_battle.模式 == 99 then
        o_battle.diffty = 0   
    end
    if o_battle.diffty > 0 then 
        G.misc().难度 = -o_battle.diffty
    else
        G.misc().难度 = 0
    end
    o_battle.逃跑 = int_no --是否可以逃跑
    if int_狙杀 then
        o_battle.狙杀 = int_狙杀
    else
        o_battle.狙杀 = 0
    end
    for i = 1,6 do 
        o_battle[enemy[i]] = int[i]
        if int[i] == nil then 
            o_battle[team[i]] = 0 
        end     
    end
    if not int_用药 or int_用药 == 0 then
        G.misc().用药 = 0
    else
        G.misc().用药 = 1
    end
    if not int_音乐 or  int_音乐 == 0 then
        G.Play(0x49010000+math.random(25,30), 1,true,1)
    else
        G.Play(0x49010000+int_音乐, 1,true,1)
    end
    if o_battle.模式 ==  1 then  --单挑战斗
       G.call('set_team',0,0,0,0)
    elseif o_battle.模式 == 3  then   --群殴
        local o_teammate_队友 = G.QueryName(0x10110001)
        local int_no = 0
        for i  = 1,12 do 
            if o_teammate_队友[tostring(i)] ~= nil then 
                int_no  = int_no + 1
            end 
        end  
        G.call('set_team',0,0,0,0) 
        if int_no > 0 then    --队友人数大于0才进入选人    
            G.call('select')  
        end 
    elseif o_battle.模式 == 4 then   --NPC互相殴打
    elseif o_battle.模式 == 5 then   --队友上阵，主角看戏
    end 
    for i = 6,11 do
        for p = 81,90 do   --清除敌人的全部异常
            G.call('set_role',o_battle[位置[i] ] ,p,0)
        end 
        G.call('set_role',o_battle[位置[i] ]  ,15,G.call('get_role',o_battle[位置[i] ],1 ) )   --回复敌人的全部HP,MP
        G.call('set_role',o_battle[位置[i] ] ,14,G.call('get_role',o_battle[位置[i ] ],2 ) ) 
    end 
    if o_battle.模式 > 3 then --模式3我方自动满状态出战
        for i = 2,5 do
            for p = 81,90 do   
                G.call('set_role',o_battle[位置[i] ] ,p,0)
            end 
            G.call('set_role',o_battle[位置[i] ]  ,15,G.call('get_role',o_battle[位置[i] ],1 ) )   --回复敌人的全部HP,MP
            G.call('set_role',o_battle[位置[i] ] ,14,G.call('get_role',o_battle[位置[i ] ],2 ) ) 
        end 
    end
    G.misc().队伍记录 = {}
    local 队伍记录 = {}
    G.deepcopy(G.misc().队伍记录,队伍记录)
    for i = 2,5 do
        table.insert(G.misc().队伍记录,o_battle['team'..i])
    end
    for i = 1,6 do
        table.insert(G.misc().队伍记录,int[i]) 
    end
    G.call('set_newpoint',48,-G.call('get_point',48)-10)
    G.call('set_newpoint',44,-G.call('get_point',44)-10)
    G.call('set_newpoint',46,-G.call('get_point',46)-10)
    G.misc().战斗结果 = 0
    G.call('line_off')
    G.addUI('v_battle')
    G.start_program('集气')
    G.start_program('战斗对话1')
    G.start_program('战斗对话2')
    G.start_program('异常显示')
    G.start_program('战斗系统_事件响应')
    G.start_program('战斗系统_主角监控')
    G.start_program('战斗系统_胜负监控')
    G.wait1('战斗结束')
    G.remove_program('集气',1)
    G.remove_program('战斗对话1',1)
    G.remove_program('战斗对话2',1)
    G.remove_program('异常显示',1)
    G.remove_program('战斗系统_事件响应',1)
    G.remove_program('战斗系统_主角监控',1)
    G.remove_program('战斗系统_胜负监控',1)
    if G.misc().随机切磋 == nil then 
        G.misc().随机切磋 = 0
    end
    if G.misc().通天塔 == nil then 
        G.misc().通天塔 = 0
    end
    if G.misc().战斗结果 == 1 and G.misc().通天塔 == 0 and G.misc().随机切磋 == 0  then 
        G.call('get_drop')  
    end
    G.misc().战斗结果 = 0
    G.wait_time(500)
    G.removeUI('v_battle')
    G.Stop(1)
    for p = 81,90 do   --战斗后清除主角除了内伤外的其他异常状态
        G.call('set_point',p,0)
    end 
    local t = G.call('get_point',84 )
    if o_battle.模式 < 4 then
        G.call('set_point',84,t)
    end
    if G.call('get_point',44) <= 0 then  --战斗后如果主角HP为0回复为1
        G.call('set_point',44,1)   
    end 
    local 位置 = {'team1','team2','team3','team4','team5','enemy1','enemy2','enemy3','enemy4','enemy5','enemy6'}
    for i = 6,11 do 
        for p = 81,90 do   --清除敌人的全部异常
            G.call('set_role',o_battle[位置[i] ] ,p,0)
        end 
    end 
    for i = 2,11 do   --清除队友的异常
        if o_battle[位置[i] ] > 0 then 
           local n = G.call('get_role',o_battle[位置[i] ],84 )
            local o_role = G.QueryName( 0x10040000 + o_battle[位置[i] ])
            if i >= 2 and i <=5 then 
                for p = 81,90 do   --战斗后清除队友除了内伤外的其他异常状态
                    G.call('set_role',o_battle[位置[i] ] ,p,0)
                end 
                G.call('set_role',o_battle[位置[i] ] ,84,n) 
                if G.call('get_role',o_battle[位置[i] ],15 ) <= 0 then --战斗后回复0hp队友hp为1
                    G.call('set_role',o_battle[位置[i] ] ,15,1)
                end  
            end 
            if G.call('get_role',o_battle[位置[i] ],15) <= 0 then 
                G.call('set_role',o_battle[位置[i] ]  ,15,1 )   --回复敌人hp为1 
            end
        end       
    end  
    G.removeUI('v_skill')
    G.removeUI('v_nature')
    G.call('指令_存储属性')  
end  
t['get_result']=function()
    local int_no = 0
    local int_mo = 0 
    local result = 0
    local o_battle = G.QueryName(0x10150001)
    local 位置 = {'team1','team2','team3','team4','team5','enemy1','enemy2','enemy3','enemy4','enemy5','enemy6'}
    for i = 2,5 do 
        if o_battle[位置[i]] > 0 then
            if  G.QueryName(0x10040000 + o_battle[位置[i]] ).生命 > 0  then
                int_mo = int_mo + 1
            end
        end	
    end 
    for i = 6,11 do 
        if o_battle[位置[i]] > 0 then
            if  G.QueryName(0x10040000 + o_battle[位置[i]] ).生命 > 0  then
                int_no = int_no + 1
            end
        end	
    end 
    if int_no == 0 then 
        result = 1
    end 
    if int_mo == 0 and (o_battle.模式 >= 4 and o_battle.模式 ~= 99)  then 
        result = 2
    end 
    if  G.call('get_point',44) <= 0 then 
        result = 2
    elseif o_battle.狙杀 > 0 and o_battle.狙杀 < 6 and G.call('get_role',o_battle[位置[o_battle.狙杀]],15) == 0 then 
        result = 2
    elseif o_battle.狙杀 >= 6 and  G.call('get_role',o_battle[位置[o_battle.狙杀]],15) == 0 then 
        result = 1
    end  
    return result
end
t['通用_随机种子']=function()
    G.misc().随机序号 = 1
    G.misc().随机库 = {}
    for i = 1,1000 do 
        table.insert(G.misc().随机库,math.random(100)) 
    end
end
t['通用_取随机']=function()
    local result = G.misc().随机库[G.misc().随机序号]
    G.misc().随机序号 = G.misc().随机序号 + 1
    if G.misc().随机序号 > 1000 then 
        G.misc().随机序号 = 1
    end
    return result
end
t['通用_宝物随机种子']=function()
    G.misc().宝物随机序号 = 1
    G.misc().宝物随机库 = {}
    for i = 1,1000 do 
        table.insert(G.misc().宝物随机库,math.random(100)) 
    end
end
t['通用_取宝物随机']=function()
    local result = G.misc().宝物随机库[G.misc().宝物随机序号]
    G.misc().宝物随机序号 = G.misc().宝物随机序号 + 1
    if G.misc().宝物随机序号 > 1000 then 
        G.misc().宝物随机序号 = 1
    end
    return result
end
t['通用_大随机种子']=function()
    G.misc().大随机序号 = 1
    G.misc().大随机库 = {}
    for i = 1,10000 do 
        table.insert(G.misc().大随机库,math.random(10000)) 
    end
end
t['通用_取大随机']=function()
    local result = G.misc().大随机库[G.misc().大随机序号]
    G.misc().大随机序号 = G.misc().大随机序号 + 1
    if G.misc().大随机序号 > 1000 then 
        G.misc().大随机序号 = 1
    end
    return result
end
t['line_off']=function()
    G.remove_program('集气',1)
    G.remove_program('战斗对话1',1)
    G.remove_program('战斗对话2',1)
    G.remove_program('异常显示',1)
	G.remove_program('伐木条',1)
	G.remove_program('伐木提示',1)
	G.remove_program('挖矿条',1)
    G.remove_program('挖矿提示',1)
	G.remove_program('挖矿时间条',1)
	G.remove_program('钓鱼时间条',1)
    G.remove_program('钓鱼提示',1)
	G.remove_program('钓鱼水花',1)
	G.remove_program('打猎时间条',1)
    G.remove_program('打猎提示',1)
    G.remove_program('猎物显示2',1)
    G.remove_program('猎物显示1',1)
    G.remove_program('猎物显示3',1)
    G.remove_program('猎物显示4',1)
end   
t['gambling']=function() 
    G.call('line_off')
    G.addUI('v_gambling')
    G.wait1('赌博结束')
    G.call('all_over')
    G.removeUI('v_gambling')
end  
local co = require "co"
t['logging']=function() --伐木小游戏
    G.call('line_off')
    G.addUI('v_logging')
    G.start_program('伐木条')
    G.start_program('伐木提示')
    G.wait1('伐木结束')
    G.remove_program('伐木条',1)
    G.remove_program('伐木提示',1)
    G.removeUI('v_logging')
end  
t['dig']=function() --挖矿小游戏
    G.call('line_off')
    G.addUI('v_dig')
    G.start_program('挖矿条')
    G.start_program('挖矿提示')
    G.start_program('挖矿时间条')
    G.wait1('挖矿结束')
    G.remove_program('挖矿条',1)
    G.remove_program('挖矿提示',1)
    G.remove_program('挖矿时间条',1)
    G.removeUI('v_dig')
end  
t['fishing']=function() --钓鱼小游戏
    G.call('line_off')
    G.addUI('v_fishing')
    G.start_program('钓鱼时间条')
    G.start_program('钓鱼提示')
    G.start_program('钓鱼水花')
    G.wait1('钓鱼结束')
    G.remove_program('钓鱼时间条',1)
    G.remove_program('钓鱼提示',1)
    G.remove_program('钓鱼水花',1)
    G.removeUI('v_fishing')
end  
t['hunting']=function() --打猎小游戏
    G.call('line_off')
    G.addUI('v_hunting') 
    G.Stop(1)
    G.Play(0x49010007,1,true,1) 
    G.start_program('打猎时间条')
    G.start_program('打猎提示') 
    G.start_program('猎物显示2') 
    G.start_program('猎物显示1')
    G.start_program('猎物显示3')
    G.start_program('猎物显示4')
    G.wait1('打猎结束')
    G.remove_program('打猎时间条',1)
    G.remove_program('打猎提示',1)
    G.remove_program('猎物显示2',1)
    G.remove_program('猎物显示1',1)
    G.remove_program('猎物显示3',1)
    G.remove_program('猎物显示4',1)
    G.removeUI('v_hunting')
end     
t['shop']=function(int_代码)  --呼出商店
    G.QueryName(0x10030001)[tostring(232)] = int_代码
    G.addUI('v_shop')
    G.wait1('关闭商店')
    G.removeUI('v_shop')
end 
t['call_lakes']=function() --呼出江湖公告
    G.addUI('v_lakes_notice')
    G.wait1('关闭公告')
    G.removeUI('v_lakes_notice')
end 
t['list']=function() --呼出创建角色回答问题后的角色初始属性
    G.addUI('v_list')
    G.wait1('offlist')
    G.removeUI('v_list')
end 
t['notice']=function(string_提示) --UI中的提示信息
    G.addUI('v_prompt')
    local ui = G.getUI('v_prompt');
    local c = ui.c_prompt;
    ui.getChildByName('提示').text = string_提示
end
t['notice1']=function(string_提示) --协程中提示信息
    G.addUI('v_prompt1')
    local ui = G.getUI('v_prompt1');
    local c = ui.c_prompt1;
    ui.getChildByName('提示').text = string_提示
    G.trig_event('提示结束') 
end
t['lvup']=function()  --战斗后等级提升提示
    G.addUI('v_lv_up')
    G.Play(0x4901000f, 1,false,100) 
    G.wait_time(1200)
    G.removeUI('v_lv_up')
end     
t['goto_map']=function(int_地图代码) --跳转地图
    local o_tsbd = G.QueryName(0x1017000c)
    local o_rwdr = G.QueryName(0x1017000d)
    local o_mpzs = G.QueryName(0x1017000e)
    local tsbd = 0
    local rwdr = 0
    local mpzs = 0
    if o_mpzs.完成 == 0 then
        for i = 1,5 do 
            if  o_mpzs.进度列表[i].完成 == 1 then 
                mpzs = mpzs + 1
            end    
        end   
        if mpzs == 5  then
            o_mpzs.完成 = 1
            G.call('notice1','完成成就【门派宗师】') 
        end    
    end
    if o_rwdr.完成 == 0 then
        for i = 1,#o_rwdr.进度列表 do 
            if  o_rwdr.进度列表[i].完成 == 1 then 
                rwdr = rwdr + 1
            end    
        end   
        if rwdr == #o_rwdr.进度列表  then
            o_rwdr.完成 = 1
            G.call('notice1','完成成就【任务达人】') 
        end    
    end
    if o_tsbd.完成 == 0 then
        for i = 1,20 do 
            if  o_tsbd.进度列表[i].完成 == 1 then 
                tsbd = tsbd + 1
            end    
        end   
        if tsbd == 20  then
            o_tsbd.完成 = 1
            G.call('notice1','完成成就【泰山北斗】') 
        end    
    end
    G.call("地图系统_进入地图",G.QueryName(0x10060000+int_地图代码))
    G.call("地图系统_刷新地图",G.QueryName(0x10060000+int_地图代码))
    G.Stop(1)
    G.call('mapon')
    if G.QueryName(0x10030001)[tostring(140)] ~= 0x10060001 then 
        if G.call('read_diffmin') >= 20 then--自动记录存档 
            if G.misc().切磋开关 == nil  then
                G.misc().切磋开关 = 1  
            end
            if G.misc().出师 and G.misc().出师 > 0 and  G.call('get_point',4) >= 50 and G.call('get_point',237) > 1 and G.misc().切磋开关 == 1 then
                G.trig_event('事件_随机切磋')
            end
            if not G.misc().人物头像 then
                G.misc().人物头像 = G.call('get_point',119) 
            end
            G.call('set_point',119,G.misc().人物头像)
            G.call('地图系统_防修改监控')
            G.call('通用_存档',4)
            G.call('write_min')
            G.call('notice1','自动记录完成')
            G.call('通用_存档',4)
        end  
    end 
end
t['turn_map']=function() --跳转到目前地图，作用是为了随时刷新进出地图事件 
    G.call('dark')
    if G.QueryName(0x10030001)[tostring(140)] ~= nil then 
        G.call("goto_map",G.QueryName(0x10030001)[tostring(140)]-0x10060000)
    end  
end
t['mapon']=function() --开启主地图UI显示
	local ui ;
	if not G.getUI('v_citymap_system_map') then 
		return
	end 
    ui = G.getUI('v_citymap_system_map');
	local c = ui.c_citymap_system_map;
    ui.visible = true
    local int_music = G.QueryName(G.QueryName(0x10030001)[tostring(140)]).音乐
    local music
    G.Stop(1)
    if int_music  then 
        if int_music > 0 and int_music < 99 then 
            music = 0x49010000 + int_music
        elseif int_music == 0 then 
            music = 0x49010000 + math.random(22,24)
        elseif int_music == 99 then 
            music = 0x49010000 + math.random(17,21)    
        end 
        G.Play(music, 1,false,1)
    end          
end
t['mapoff']=function() --关闭主地图UI显示
    local ui = G.getUI('v_citymap_system_map');
	local c = ui.c_citymap_system_map;
    ui.visible = false
    local music 
    if G.QueryName(G.QueryName(0x10030001)[tostring(140)]).音乐 ~= nil then 
        music = G.QueryName(G.QueryName(0x10030001)[tostring(140)]).音乐 + 0x49010000
    end 
    G.Stop(1)
   
end
t['photo']=function(int_代码) --显示背景地图
    G.addUI('v_photo')
    local ui = G.getUI('v_photo');
    local c = ui.c_photo;
    ui.getChildByName('背景').visible = true
    ui.getChildByName('背景').img = 0x56050000 + int_代码  
end
t['photo_off']=function() --关闭背景地图
    G.removeUI('v_photo')
end
t['xunbao']=function(int_代码) --显示藏金阁游戏单独背景地图
    G.addUI('v_xunbao')
    local ui = G.getUI('v_xunbao');
    ui.getChildByName('背景').visible = true
    ui.getChildByName('背景').img = 0x560b1000 + int_代码  
end
t['rest']=function()
    G.call('add_point',44,math.floor(G.call('get_point',217)))
    G.call('add_point',46,math.floor(G.call('get_point',218)))
end
t['xunbao_off']=function() --关闭藏金阁游戏单独背景地图
    G.removeUI('v_xunbao')
end
t['getprice']=function() --取得商店结账的钱数
    local result = G.QueryName(0x10030001)[tostring(233)]
    return result 
end
t['buyresult']=function() --买物品结算
    local int_物品总价 = G.QueryName(0x10030001)[tostring(233)]
    local 数量 = {'数量1','数量2','数量3','数量4','数量5','数量6','数量7','数量8'}  
    local item= {'物品1','物品2','物品3','物品4','物品5','物品6','物品7','物品8'}
    local int_商店代码 = G.QueryName(0x10030001)[tostring(232)]
    local int_讲价 = G.call('get_point',36)/4
    local o_shop = G.QueryName(0x10130000+int_商店代码)
    if G.call('通用_取得我方装备特效',411) then 
        int_讲价 = int_讲价 + 25
    end
    int_物品总价 =  math.floor(int_物品总价*(100 -int_讲价 )/100)
    if G.call('get_money') < int_物品总价 then return end
    for i = 1,8 do 
        if o_shop[数量[i]] ~= nil then
            if  o_shop[数量[i]] > 0 then 
                local int_物品代码 = o_shop[item[i]]-0x100b0000
                G.call('add_item',int_物品代码+1,o_shop[数量[i]])
            end
        end 
    end 
    G.call('add_money',-int_物品总价)    
end
t['sellresult']=function() --卖物品结算
    local int_物品总价 = G.QueryName(0x10030001)[tostring(233)]
    local 数量 = {'数量1','数量2','数量3','数量4','数量5','数量6','数量7','数量8'}  
    local item= {'物品1','物品2','物品3','物品4','物品5','物品6','物品7','物品8'}
    local int_商店代码 = G.QueryName(0x10030001)[tostring(232)]
    local int_讲价 = G.call('get_point',36)/2
    local o_shop = G.QueryName(0x10130000+int_商店代码)

    if G.call('通用_取得我方装备特效',411) then 
        int_讲价 = int_讲价 + 50
    end
    int_物品总价 =  math.floor(int_物品总价*(100 + int_讲价  )/100)
    G.call('add_money',int_物品总价)   
    for i = 1,8 do   
        if o_shop[数量[i]] ~= nil then
            if  o_shop[数量[i]] > 0 then 
                local int_物品代码 = o_shop[item[i]]-0x100b0000
                G.call('add_item',int_物品代码+1,-o_shop[数量[i]])
            end
        end 
    end  
end
t['photo0']=function(int_代码) --显示事件图片
    G.addUI('v_photo0')
    local ui = G.getUI('v_photo0');
    local c = ui.c_photo0;
    ui.getChildByName('图片').visible = true
    ui.getChildByName('图片').img = 0x560b0000 + int_代码  
end
t['photo0_off']=function() --关闭事件图片
    G.removeUI('v_photo0')
end
t['set_role']=function(int_id,int_编号,int_number) --设置NPC部分属性
    if int_id <= 0 then return end 
    if int_编号 > 0 and int_编号 <= 15 then 
        if int_编号 < 14 then 
            G.QueryName(0x10040000+int_id)[tostring(int_编号)] = int_number
        elseif int_编号 == 15  then  
            G.QueryName(0x10040000+int_id).生命 = int_number   
        elseif int_编号 == 14  then  
            G.QueryName(0x10040000+int_id).内力 = int_number 
        end 
    elseif int_编号 >= 81 and int_编号 <= 115 then 
        G.QueryName(0x10040000+int_id)[tostring(int_编号)] = int_number
    elseif int_编号 >= 901 and int_编号 <= 908 then 
        G.QueryName(0x10040000+int_id)[tostring(int_编号)] = int_number 
    else
        G.call('notice1','代码错误') 
    end       
end
t['set_death']=function(int_no)--设置NPC死亡信息
    G.QueryName(0x10040000+int_no).是否死亡 = true
end    
t['set_roleskill']=function(int_id,int_no,int_number) --设置NPC技能
    if int_number > 0 then 
        if int_no < 5 then 
            G.QueryName(0x10040000+int_id)['技能'..int_no] = 0x10050000 + int_number-1 
        end
    end 
    if int_number == 0 then 
        if int_no < 5 then 
            G.QueryName(0x10040000+int_id)['技能'..int_no] = nil 
        end 
    end
end
t['set_friend_skill']=function(int_id,int_no,int_number,int_熟练度) --设置NPC技能
    print(int_熟练度)
    if int_number > 0 then 
        if int_no < 5 then 
            if int_no < 5 then 
                G.QueryName(0x10040000+int_id)['技能'..int_no] = 0x10050000 + int_number-1 
            end
            if int_熟练度 then
                G.call('set_role',int_id,9+int_no,int_熟练度)
            end
            local o_skill = G.QueryName(0x10050000 + int_number-1 )
            local o_role = G.QueryName(0x10040000+int_id)
            G.call('notice1','【'..o_role.姓名..'】领悟'..'【'..o_skill.名称..'】')
        end
  
    end 
    if int_number == 0 then 
        if int_no < 5 then 
            G.QueryName(0x10040000+int_id)['技能'..int_no] = nil 
        end  
    end
end
t['get_role']=function(int_id,int_编号) --取得NPC部分属性
    if int_id <= 0 then return end
    if int_编号 > 0 and int_编号 < 16 then 
        if int_编号 < 14 then   
            return   G.QueryName(0x10040000+int_id)[tostring(int_编号)] 
        elseif int_编号 == 15  then  
            return    G.QueryName(0x10040000+int_id).生命   
        elseif int_编号 == 14  then  
            return   G.QueryName(0x10040000+int_id).内力
        end 
    elseif int_编号 >= 901 and int_编号 <= 908 then 
        return   G.QueryName(0x10040000+int_id)[tostring(int_编号)]
    elseif int_编号 >= 81 and int_编号 <= 115 then 
        return   G.QueryName(0x10040000+int_id)[tostring(int_编号)] 
    else
        G.call('notice1','代码错误')     
    end  
end  
t['get_npcskill']=function(int_id,i_skill) --NPC是否会武功
    local result = 0
    local o_role = G.QueryName(0x10040000+int_id)
    for i = 1,4 do
        if o_role['技能'..i] ==  i_skill then
            result = 1
            break 
        end
    end
    return result
end   
t['get_roleskill']=function(int_id,int_no) --取得NPC技能
    if int_no == 1 then 
        return    G.QueryName(0x10040000+int_id).技能1 - 0x10050000 - 1 
    elseif int_no == 2 then 
        return    G.QueryName(0x10040000+int_id).技能2 - 0x10050000 - 1 
    elseif int_no == 3 then 
        return    G.QueryName(0x10040000+int_id).技能3 - 0x10050000 - 1 
    elseif int_no == 4 then 
        return    G.QueryName(0x10040000+int_id).技能3 - 0x10050000 - 1 
    else
        --G.call('notice1','代码错误')
    end     
end
t['set_CH']=function(string_称号) --设置称号
    local o_CH = G.QueryName(0x10140001)
    local n = 0
    for i = 1,20 do 
        if o_CH[tostring(i)] ~= nil then 
           n = n +1
        end
    end 
    if n < 20 then
       o_CH[tostring(n+1)] = string_称号   
    end  
    G.QueryName(0x10030001)[tostring(7)] = string_称号  
end
t['get_CH']=function(string_称号) --取得称号
    local result = false
    local o_CH = G.QueryName(0x10140001)
    local n = 0
    for i = 1,20 do 
        if o_CH[tostring(i)] == string_称号 then 
            result = true 
        end
    end 
    return result   
end
t['add_schoollove']=function(int_school,int_数值) --增加门派好感度
    local o_love = G.QueryName(0x100d0001)
    o_love[tostring(int_school)] = o_love[tostring(int_school)] + int_数值
    if o_love[tostring(int_school)] < 0 then
        o_love[tostring(int_school)] = 0
    end      
end
t['get_schoollove']=function(int_school) --取得门派好感度
    local o_love = G.QueryName(0x100d0001)
    return o_love[tostring(int_school)] 
end 
t['get_school']=function()
    local result = G.QueryName(0x10030001)[tostring(8)]
    return result 
end 
t['set_note']=function(string_内容)  --写入江湖记事
    local note = G.DBTable('o_note');
    local year = {'一','二','三','四','五','六','七','八','九','十','十一','十二'}
    --local note1 = year[G.QueryName(0x10030001)[tostring(120)] ] 
    local note1 = G.call('to_chinese',G.QueryName(0x10030001)[tostring(120)])
    local day = {'一','二','三','四','五','六','七','八','九','十','十一','十二'}
    local note2 = day[G.QueryName(0x10030001)[tostring(121)] ] 
    local data = {'初一','初二','初三','初四','初五','初六','初七','初八','初九','初十',
    '十一','十二','十三','十四','十五','十六','十七','十八','十九','廿十',
    '廿一','廿二','廿三','廿四','廿五','廿六','廿七','廿八','廿九','卅十'}
    local note3 = data[G.QueryName(0x10030001)[tostring(122)] ] 
    local hour = {'子','丑','寅','卯','辰','巳','午','未','申','酉','戌','亥'}
    local note4 = hour[G.QueryName(0x10030001)[tostring(123)] ] 
    local quarter = {'一','二','三','四','五','六','七','八'}
    local note5 = quarter[G.QueryName(0x10030001)[tostring(124)] ] 
    local p = 0
    local note = G.DBTable('o_note');
    for i= 1,#note do 
        local o_note = G.QueryName(0x10120000+i)
        if o_note.时间 ~= nil then
            p = p+1
        else
            break
        end   
    end
    G.QueryName(0x10120001+p).记事 = string_内容
    G.QueryName(0x10120001+p).时间 = '江湖【'..note1..'年'..note2..'月'..note3..'日'..note4..'时'..note5..'刻'..'】'   
end
t['talk0'] = function(string_名字,string_对话,int_x,int_y) --没有头像的人物对话
    local ui_story
    ui_story = G.getUI('v_talk')
    if not ui_story then
        ui_story = G.addUI('v_talk')
    end
    ui_story.visible = true
    if ui_story.c_talk then
        ui_story.c_talk:setData(string_名字,string_对话,int_x,int_y)
    end
    G.wait1('talkover')
    G.removeUI('v_talk')
end     
t['talk'] = function(string_名字,int_编号,string_对话,int_位置,int_当前UI)   --int为10进制人物编号，位置为预设好的对话位置，1下2上，UI通过0和1对切，                                                       --相同时对话会顺序显示，不同时对话同时显示！
    if  int_当前UI == 0 or nil then 
        G.call("对话系统_显示对话上",string_名字,int_编号,string_对话,int_位置)
    end 
    if int_当前UI ==  1 then        
        G.call("对话系统_显示对话下",string_名字,int_编号,string_对话,int_位置)
    end 
    if int_当前UI ==  2 then        
        G.call("对话系统_显示对话大",string_名字,int_编号,string_对话,int_位置)
    end 
end 
t['menu'] = function(string_名字,int_编号,string_对话,int_对话位置,int_选框位置,_string_选项,int_当前UI,int_选择项)  --同上，用于对选框UI的切换
    if  int_当前UI == 0 or nil then 
        return G.call("对话系统_显示对话选择上",string_名字,int_编号,string_对话,int_对话位置,int_选框位置,_string_选项,int_选择项)
    end     
    if int_当前UI > 0 then        
        return G.call("对话系统_显示对话选择下",string_名字,int_编号,string_对话,int_对话位置,int_选框位置,_string_选项,int_选择项)
    end
end 
t['join']=function(int_编号) --加入队友
    local o_role_人物编码 = 0x10040000+int_编号
    local int_位置 = 0
    local team = G.QueryName(0x10110001)
    local o_gpmz =  G.QueryName(0x1017000f)
    local gpmz = 0
    local p = 0
    for i = 1,12 do 
       if team[tostring(i)] ~= nil then   --计算队伍在队人数
          p = p + 1
        end 
    end 
    if G.call('in_team',int_编号) == false then
        if p < 12 then   --如果不满队伍则加入
           G.QueryName(0x10110001)[tostring(p+1)] = o_role_人物编码
           G.call('notice1','【'..G.QueryName(o_role_人物编码).姓名..'】加入队伍')
        end 
        for i = 1,#o_gpmz.进度列表 do
           if o_gpmz.进度列表[i].编号 == int_编号 then 
               o_gpmz.进度列表[i].完成 = 1
           end
           if o_gpmz.进度列表[i].完成 == 1 then 
               gpmz = gpmz + 1
           end
        end           
        if gpmz == #o_gpmz.进度列表 and o_gpmz.完成 == 0 then
            o_gpmz.完成 = 1
            G.call('notice1','完成成就【高朋满座】') 
        end   
    else
        G.call('notice1','【'..G.QueryName(o_role_人物编码).姓名..'】已经在队伍') 
    end 
end
t['dark']=function() --黑幕亮屏过渡
    local ui ;
	if not G.getUI('v_citymap_system_map') then 
		return
	end 
    ui = G.getUI('v_citymap_system_map');
	local c = ui.c_citymap_system_map;
    G.call('all_over') 
    G.call('photo_off')
    G.call('photo0_off')
    G.call('xunbao_off')
    G.addUI('v_dark')
    G.Tween("color", 300, ui, 0)
    G.wait_time(500)
    G.Tween("color", 300, ui, 0xffffff)
    G.removeUI('v_dark')
end
t['leave']=function(int_编号) --离队
    local o_role_人物编码 = 0x10040000+int_编号
    local int_位置 = 0
    local team = G.QueryName(0x10110001)
    local p = 0
    for i = 1,12 do --判断队伍总人数
       if team[tostring(i)] ~= nil then 
          p = p + 1
       end 
    end     
    for i = 1, 12 do
        if team[tostring(i)] == o_role_人物编码 then    --判断离队的人物是否在队伍
            for j = i, 12 - 1 do  --剔除离队人物，后面人物顺号上排
                team[tostring(j)] = team[tostring(j + 1)];
            end
            team[tostring(p)] = nil;  --剔除最后的编号
            break   
        end
    end
end  
t['team_full']=function()  --判断满队伍
    local result = false
    local team = G.QueryName(0x10110001)
    local p = 0
    for i = 1,12 do 
       if team[tostring(i)] ~= nil then 
          p = p + 1
       end 
    end 
    if p == 12 then 
       result = true
    end 
    return result
end
t['in_team']=function(int_no)  --判断NPC是否在队伍
    local result = false
    local team = G.QueryName(0x10110001)
    for i = 1,12 do 
       if team[tostring(i)] == 0x10040000 + int_no  then 
          result = true
       end 
    end 
    return result
end
t['add_role']=function(int_编号,int_属性,int_数量) --NPC部分属性增加
    local 位置 = {'team1','team2','team3','team4','team5','enemy1','enemy2','enemy3','enemy4','enemy5','enemy6','all1','all2','all3'}
    local o_role_人物 = G.QueryName(0x10040000+int_编号)
    if o_role_人物 == nil then 
        G.call('notice','人物编号错误')
    else    
        if int_属性 > 0 and int_属性 <= 13 then 
            o_role_人物[tostring(int_属性)] =  o_role_人物[tostring(int_属性)] + int_数量
            if int_编号 == 223 or int_编号 == 390  then 
            else
                if o_role_人物[tostring(1)] > 99999 then 
                    o_role_人物[tostring(1)] = 99999  
                end 
                if    o_role_人物[tostring(2)] > 99999 then 
                    o_role_人物[tostring(2)] = 99999
                end
            end
            if int_属性 <= 8 then 
                if o_role_人物[tostring(900 + int_属性)] and  o_role_人物[tostring(int_属性)] > o_role_人物[tostring(900 + int_属性)] then 
                    o_role_人物[tostring(int_属性)] = o_role_人物[tostring(900 + int_属性)] 
                end
            end    
            if o_role_人物[tostring(9)] >= 100 then 
                o_role_人物[tostring(9)] = 100  
            end
            if o_role_人物[tostring(int_属性)] < 0 then 
                o_role_人物[tostring(int_属性)] = 0  
            end 
        elseif int_属性 >= 81 and int_属性 <= 100  then 
            o_role_人物[tostring(int_属性)] =  o_role_人物[tostring(int_属性)] + int_数量
            if o_role_人物[tostring(int_属性)] <= 0 then 
                o_role_人物[tostring(int_属性)]  = 0
            end 
        elseif int_属性 >= 901 and int_属性 <= 908  then
            o_role_人物[tostring(int_属性)] =  o_role_人物[tostring(int_属性)] + int_数量     
        elseif int_属性 == 15 then
            for i = 2,11 do  
                if G.misc()[位置[i] ]  == int_编号  then
                    G.call('set_newpoint',199+i,G.call('get_newpoint',199+i)-int_数量) 
                end
            end
            o_role_人物.生命 = o_role_人物.生命 + int_数量
            if o_role_人物.生命 > o_role_人物[tostring(1)] then 
                o_role_人物.生命 = o_role_人物[tostring(1)]  
                for i = 2,11 do  
                    if G.misc()[位置[i] ]  == int_编号  then
                        G.call('set_newpoint',199+i,-o_role_人物[tostring(1)] -10) 
                    end
                end
            elseif o_role_人物.生命 < 0 then
                for i = 2,11 do  
                    if G.misc()[位置[i] ]  == int_编号  then
                        G.call('set_newpoint',199+i,-10)  
                    end
                end
                o_role_人物.生命 = 0 
            end 
        elseif int_属性 == 14 then 
            o_role_人物.内力 = o_role_人物.内力 + int_数量
            if o_role_人物.内力 > o_role_人物[tostring(2)] then 
                o_role_人物.内力 = o_role_人物[tostring(2)]  
            end 
            if o_role_人物.内力 < 0 then 
                o_role_人物.内力 = 0 
            end 
        end 
    end 
end 
t['story']=function(string_提示) --叙事
    G.addUI('v_story')
    local ui = G.getUI('v_story');
    local c = ui.c_prompt;
    ui.getChildByName('文本').text = string_提示
    G.wait1('叙事结束')
    G.removeUI('v_story')
end
t['通用_强退游戏'] = function(int_类型) 
    if not int_类型 then
        int_类型 = '000'
    end
    G.call('notice','正当游戏，拒绝不良操作【'..int_类型..'】')
    G.wait_time(200)
    os.exit(); 
end 
t['get_time'] = function() --取得时刻
    local result = G.QueryName(0x10030001)[tostring(124)]
    return result 
end 
t['get_hour'] = function() --取得时辰
    local result = G.QueryName(0x10030001)[tostring(123)]
    return result 
end 
t['get_day'] = function() --取得日期
    local result = G.QueryName(0x10030001)[tostring(122)]
    return result 
end 
t['get_month'] = function() --取得月份
    local result = G.QueryName(0x10030001)[tostring(121)]
    return result 
end 
t['get_year'] = function() --取得年数
    local result = G.QueryName(0x10030001)[tostring(120)]
    return result 
end 
t['set_time'] = function(int_数值) --设置时刻
    if int_数值 > 0 and int_数值 < 9 then 
        G.call('set_point',124,  int_数值 )
        G.call('set_newpoint',124,- int_数值 )  
        G.call('count_time') 
    end 
end 
t['set_hour'] = function(int_数值) --设置时辰
    if int_数值 > 0 and int_数值 < 12 then  
        G.call('set_point',123,  int_数值 )
        G.call('set_newpoint',123,- int_数值 ) 
        G.call('count_time') 
    end 
end 
t['set_day'] = function(int_数值) --设置日期
    if int_数值 > 0 and int_数值 < 30 then  
        G.call('set_point',122, int_数值 )
        G.call('set_newpoint',122,- int_数值 ) 
        G.call('count_time') 
    end 
end 
t['set_month'] = function(int_数值) --设置月份
    if int_数值 > 0 and int_数值 <= 12 then  
        G.call('set_point',121, int_数值 )
        G.call('set_newpoint',121,- int_数值 ) 
        G.call('count_time') 
    end 
end 
t['set_year'] = function(int_数值) --设置年数
    if int_数值 > 0  then  
        G.call('set_point',120, int_数值 )
        G.call('set_newpoint',120,- int_数值 ) 
        G.call('count_time') 
    end 
end 
t['set_alltime'] = function(int_年数,int_月数,int_天数,int_时辰,int_时刻) --设置年月日时以及时刻
    G.call('set_time',int_时刻)
    G.call('set_hour',int_时辰)
    G.call('set_day',int_天数)
    G.call('set_month',int_月数)
    G.call('set_year',int_年数)
end 
t['add_time'] = function(int_时刻) --增加时刻
    G.call('set_point',124,G.call('get_point',124) + int_时刻 )
    G.call('set_newpoint',124,G.call('get_newpoint',124) - int_时刻 ) 
    if G.call('get_point',124) > 8 then 
       G.call('add_hour',math.floor(G.call('get_point',124)/8)) 
       G.call('set_newpoint',124,- ( (-G.call('get_newpoint',124))  %8)  ) 
       G.call('set_point',124,G.call('get_point',124)%8) 
       
    end 
    G.call('count_time')
end
t['add_hour'] = function(int_时辰) --增加时辰
    G.call('set_point',123,G.call('get_point',123) + int_时辰 )
    G.call('set_newpoint',123,G.call('get_newpoint',123) - int_时辰 ) 
    if G.call('get_point',123) > 12 then
        G.call('add_day',math.floor(G.call('get_point',123)/12)) 
        G.call('set_newpoint',123,- ( (-G.call('get_newpoint',123))  %12)  ) 
        G.call('set_point',123,G.call('get_point',123)%12)    
    end
    G.call('count_time')
end  
t['add_day'] = function(int_天数) --增加天数
    G.call('set_point',122,G.call('get_point',122) + int_天数)
    G.call('set_newpoint',122,G.call('get_newpoint',122) - int_天数)
    if G.call('get_month') == 2 then 
        if G.call('get_point',122) > 28 then  
            G.call('add_month',math.floor(G.call('get_point',122)/28))   
            G.call('set_newpoint',122,- ( (-G.call('get_newpoint',122))  %28)  ) 
            G.call('set_point',122,G.call('get_point',122)%28)                             
        end
    else
        if G.call('get_point',122) > 30 then  
            G.call('add_month',math.floor(G.call('get_point',122)/30))    
            G.call('set_newpoint',122,-(-G.call('get_newpoint',122)%30)) 
            G.call('set_point',122,G.call('get_point',122)%30)      
        end
    end
end 
t['add_month'] = function(int_月份) --增加月份
    G.call('set_point',121,G.call('get_point',121) + int_月份)
    G.call('set_newpoint',121,G.call('get_newpoint',121) - int_月份)
    if G.call('get_point',121) > 12 then 
        G.call('add_year',math.floor(G.call('get_point',121)/12))  
        G.call('set_newpoint',121,- ( (-G.call('get_newpoint',121))  %12)  )  
        G.call('set_point',121,G.call('get_point',121)%12)                        
    end
end 
t['add_year'] = function(int_年数) --增加月份
    G.call('set_point',120,G.call('get_point',120) + 1) 
    G.call('set_newpoint',120,G.call('get_newpoint',120) - 1) 
end
t['count_day'] = function() --计算总天数
    local result = G.call('get_year') * (11*30+28)+G.call('get_day')
    if G.call('get_month') > 2 then 
        result = result+ G.call('get_month')*30 - 2
    else
        result =  result +G.call('get_month')*30 
    end    
    return result
end
t['count_time'] = function() --计算总时刻
    local i = 0
    i = G.QueryName(0x10030001)[tostring(120)] * 12*30*12*8+
    G.QueryName(0x10030001)[tostring(121)]*30*12*8+
    G.QueryName(0x10030001)[tostring(122)]*12*8+
    G.QueryName(0x10030001)[tostring(123)]*8
    G.QueryName(0x10030001)[tostring(145)] = i
end
t['逻辑_判断装备'] = function()  --判断身上装备是否是队友喜好物
    local result = true 
    local o_item_物品 = G.QueryName(0x10030001)[tostring(230)]
    for i = 193,198 do 
        if o_item_物品 == G.QueryName(0x10030001)[tostring(i)] then 
            result = false         
        end 
    end     
    return result
end  
t['指令_重铸'] = function() --洗去经脉和内功轻功并返还修为点
    local skill = G.DBTable('o_skill')
    local n = 0
    for i = 1,#skill do 
        local o_skill = G.QueryName(0x10050000+i)
        if o_skill.类别 == 6 or o_skill.类别 == 7  then  --计算现有内功和轻功所用修为点
            if not o_skill.修为等级 then
                o_skill.修为等级 = 0 
            end
            n = n + o_skill.修为等级
            o_skill.修为等级 = 0  
        end 
    end        
    for i = 1,9 do  --计算经脉所用的所有修为点
        local o_jm = G.QueryName(0x100a0000+i)
        n = o_jm.打通数量 + n
        o_jm.打通数量 = 0
        o_jm.是否打通 = false
    end
    G.QueryName(0x100c0001)[tostring(7)] = nil 
    G.QueryName(0x100c0001)[tostring(8)] = nil 
    G.QueryName(0x10030001)[tostring(196)] = nil
    G.QueryName(0x10030001)[tostring(197)] = nil 
    if n > 0 then 
        G.call('add_point',5,n)   --增加修为点
        G.call('add_point',27,-n) 
    end
    G.call('指令_存储属性')
end    
t['指令_存储属性'] = function() --计算主角最终属性
    local o_body = G.QueryName(0x10030001)
    local add = {};
    for i = 1,18 do 
        add[i] = 0  
    end  
    if G.call('get_point',197) ~= nil  and  G.call('get_point',197) > 0  then--轻功附加装备属性
       local o_skill_技能 = G.QueryName(G.call('get_point',197))  
       add[17] = add[17] + o_skill_技能.生命加 * o_skill_技能.修为等级
       add[18] = add[18] + o_skill_技能.内力加* o_skill_技能.修为等级
       add[1] = add[1] + o_skill_技能.拳掌加 * o_skill_技能.修为等级
       add[2] = add[2] + o_skill_技能.弹指加 * o_skill_技能.修为等级
       add[3] = add[3] + o_skill_技能.御剑加 * o_skill_技能.修为等级
       add[4] = add[4] + o_skill_技能.耍刀加 * o_skill_技能.修为等级
       add[5] = add[5] + o_skill_技能.舞棍加 * o_skill_技能.修为等级
       add[6] = add[6] + o_skill_技能.内功加 * o_skill_技能.修为等级
       add[7] = add[7] + o_skill_技能.拆招加 * o_skill_技能.修为等级
       add[8] = add[8] + o_skill_技能.搏击加 * o_skill_技能.修为等级 
       add[9] = add[9] + o_skill_技能.闪躲加 * o_skill_技能.修为等级 
       add[10] = add[10] + o_skill_技能.轻身加 * o_skill_技能.修为等级
    end
    if G.call('get_point',196) ~= nil  and  G.call('get_point',196) > 0  then--内功附加装备属性
        local o_skill_技能 = G.QueryName(G.call('get_point',196))  
        add[17] = add[17] + o_skill_技能.生命加 * o_skill_技能.修为等级
        add[18] = add[18] + o_skill_技能.内力加 * o_skill_技能.修为等级
        add[1] = add[1] + o_skill_技能.拳掌加 * o_skill_技能.修为等级
        add[2] = add[2] + o_skill_技能.弹指加 * o_skill_技能.修为等级
        add[3] = add[3] + o_skill_技能.御剑加 * o_skill_技能.修为等级
        add[4] = add[4] + o_skill_技能.耍刀加 * o_skill_技能.修为等级
        add[5] = add[5] + o_skill_技能.舞棍加 * o_skill_技能.修为等级
        add[6] = add[6] + o_skill_技能.内功加 * o_skill_技能.修为等级
        add[7] = add[7] + o_skill_技能.拆招加 * o_skill_技能.修为等级
        add[8] = add[8] + o_skill_技能.搏击加 * o_skill_技能.修为等级
        add[9] = add[9] + o_skill_技能.闪躲加 * o_skill_技能.修为等级
        add[10] = add[10] + o_skill_技能.轻身加 * o_skill_技能.修为等级
    end
    add[8] = add[8] + math.floor(G.call('get_point',16)/5)
    add[9] = add[9] + math.floor(G.call('get_point',20)/5)
    add[10] = add[10] +math.floor(G.call('get_point',20)/5)
    local o_jm = 0x100a0000          --计算经脉临时加的生命值和内力值
    local int_打通经脉数量 = 0
    for i = 1,9 do 
        int_打通经脉数量 = int_打通经脉数量  + G.QueryName(o_jm + i).打通数量
        add[17] =  add[17] + G.QueryName(o_jm + i).打通数量*10
        add[18] =  add[18] + G.QueryName(o_jm + i).打通数量*10 
        if G.QueryName(o_jm + i).是否打通 == true then 
           add[18] = add[18] + 200
           if i == 4 or i == 8 then
               add[18] = add[18] + 300
           elseif i == 9 then 
               add[18] = add[18] + 150
           end 
        end     
    end  
    local 属性 = {'内功','拆招','搏击','闪躲','轻身'}
    local 装备 = {'头戴','手戴','脚穿','印记'}
    local int_套装号 = 0
    local int_套装数 = 0
    local o_body = G.QueryName(0x10030001)
    for i = 1,4 do
        local i_equip = o_body[装备[i]]
        if i_equip then
            local o_equip = G.QueryName(i_equip) 
            for j = 6,10 do 
                add[j] = add[j] + o_equip[属性[j-5]]
                if o_equip[属性[j-5]] > 100 or o_equip.生命 > 15000 or o_equip.内力 > 15000 then
                    G.call('通用_强退游戏') 
                end
            end
            add[17] = add[17] + math.floor(o_equip.生命*G.call('get_point',4)/100)
            add[18] = add[18] + math.floor(o_equip.内力*G.call('get_point',4)/100)
        end
    end  
    for i = 1,6 do 
        if G.call('通用_取得套装',0,i) >= 2 then
            int_套装数 = G.call('通用_取得套装',0,i)
            int_套装号 = i 
            break
        end
    end
    if int_套装数 > 0 then 
        add[17] = add[17] + math.floor(2500 * (int_套装数- 1)*G.call('get_point',4)/100)
        add[18] = add[18] + math.floor(2500 * (int_套装数- 1)*G.call('get_point',4)/100)
    end
    --add[6] =  add[6] + int_打通经脉数量
    for i =16,37 do 
        if G.call('get_point',i) < 0 then
            G.call('set_point',i,1) 
        end       
    end    
    for i = 1,16 do
        G.call('set_point',200+i,G.call('get_point',21+i)+ add[i]) 
    end 
    local int_难度 = G.QueryName(0x10160000 +G.call('get_point',143)).难度
    local int_点数 = 200
    if int_难度 == 1 then 
        int_点数 = 200
    elseif int_难度 == 2 then 
        int_点数 = 220
    elseif int_难度 == 3 then 
        int_点数 = 250
    end
    if G.call('get_point',206) >  int_点数 then 
        G.call('set_point',206,int_点数)
    end
    G.call('set_point',49,100)
    G.call('set_point',218,G.call('get_point',47)+ add[18]) 
    G.call('set_point',217,G.call('get_point',45)+ add[17]+ G.call('get_point',17)*70) 
    if G.call('get_point',217) > 99999 then
        G.call('set_point',217,99999) 
    end
    if G.call('get_point',218) > 99999 then
        G.call('set_point',218,99999) 
    end
    if int_难度 == 1 then 
        int_点数 = 100
    elseif int_难度 == 2 then 
        int_点数 = 110
    elseif int_难度 == 3 then 
        int_点数 = 120
    end
    if G.call('get_point',210) > int_点数 then
        G.call('set_point',210,int_点数) 
    end
    if G.call('get_point',44) > G.call('get_point',217) then 
        G.call('set_point',44,G.call('get_point',217)) 
        G.call('set_newpoint',44,-G.call('get_point',217)-10) 
    end
    if G.call('get_point',46) > G.call('get_point',218) then 
        G.call('set_point',46,G.call('get_point',218)) 
        G.call('set_newpoint',46,-G.call('get_point',218)-10) 
    end
    if  G.call('get_point',218) <= 0 then 
        G.call('set_point',218,1) 
    end 

end
t['set_item']=function(int_代码,int_数量) --设置物品数量
    G.QueryName(0x100b0000 + int_代码 -1).数量 = int_数量
end 
t['get_item']=function(int_编号)  --取得物品数量
    return   G.QueryName(0x100b0000+int_编号-1).数量    
end 
t['add_item']=function(int_代码,int_数量) --增加物品数量
    local i_item = 0x100b0000 + int_代码-1
    local n = math.abs(int_数量) 
    if  int_数量 < 0 and  math.abs(int_数量) > G.call('get_item',int_代码) then
        int_数量 = -G.call('get_item',int_代码) 
    end
    if int_代码 > 1 and int_数量 ~= 0 then  
        if int_数量 >  0 then 
            G.call('notice1','获得【'..G.QueryName(0x100b0000 + int_代码-1).名称..'】x'..tostring(n))
        end  
        if int_数量 <  0 then 
            G.call('notice1','失去【'..G.QueryName(0x100b0000 + int_代码-1).名称..'】x'..tostring(n))
        end    
        G.call('set_newpoint',76,G.call('get_newpoint',76)-int_数量) 
        G.QueryName(0x100b0000 + int_代码-1 ).数量 = G.QueryName(0x100b0000 + int_代码-1).数量 + int_数量      
        if G.call('get_item',int_代码) > 999 then
            G.call('set_newpoint',76,G.call('get_newpoint',76)-999+G.call('get_item',int_代码)) 
            G.QueryName(0x100b0000 + int_代码-1).数量 = 999
        end 
    end  
    local o_item_物品 = G.QueryName(0x100b0000 + int_代码-1 )       
    local o_item = 0x100b0000 + int_代码-1
    for i = 11,14 do 
        if G.QueryName(0x100c0001)[tostring(i)] ~= nil then 
            if o_item_物品.数量 == 0  and G.QueryName(0x100c0001)[tostring(i)] == o_item      then   --判断物品数量为0清除快捷物品
                G.QueryName(0x100c0001)[tostring(i)] = nil
            end
        end 
    end 
    if G.call('get_point',198) ~= nil then 
        local item = G.call('get_point',198) - 0x100b0000 +1
        if item == int_代码 then
            if G.call('get_point',198) == 0 then
                G.QueryName(0x10030001)[tostring(198)] = nil
            end    
        end   
    end  
end
t['add_love'] = function(int_编号,int_数量) --增加人物好感度
    G.QueryName(0x10040000+int_编号)[tostring(9)] = G.QueryName(0x10040000+int_编号)[tostring(9)] + int_数量
    if G.QueryName(0x10040000+int_编号)[tostring(9)] > 100 then 
        G.QueryName(0x10040000+int_编号)[tostring(9)] = 100
    end    
    if G.QueryName(0x10040000+int_编号)[tostring(9)] < 10 then 
        G.QueryName(0x10040000+int_编号)[tostring(9)] = 10
    end  
end  
t['set_love'] = function(int_编号,int_数量) --设置人物好感度
    G.QueryName(0x10040000+int_编号)[tostring(9)] = int_数量
 end  
t['get_love'] = function(int_编号) --取得人物好感度
   return G.QueryName(0x10040000+int_编号)[tostring(9)]
end     
t['set_point']=function(int_代码,int_数量) --设置主角部分属性
    local o_body = G.QueryName(0x10030001)
    local o_newbody = G.QueryName(0x101b0001)
    G.QueryName(0x10030001)[tostring(int_代码)] =  int_数量
    if  int_代码 == 5 then 
        o_body[tostring(5)] =  int_数量
    elseif int_代码 == 4 then   --等级 
        o_body[tostring(4)] =  int_数量 
    elseif int_代码 == 11 then   --名望
        o_body[tostring(11)] = int_数量
        if o_body[tostring(11)] > 9999 then
            o_body[tostring(11)] = 9999
        end 
    elseif int_代码 == 14 then   --名望
        o_body[tostring(14)] = int_数量
        if o_body[tostring(14)] > 9999 then
            o_body[tostring(14)] = 9999
        end    
    elseif int_代码 == 15 then    --侠义
        o_body[tostring(15)] = int_数量
        if o_body[tostring(15)] > 100 then
            o_body[tostring(15)] = 100
        end 
        if o_body[tostring(15)] < -100 then
            o_body[tostring(15)] = -100
        end
    elseif int_代码 == 45 or int_代码 == 47  then  --MAX生命值内力值
        o_body[tostring(int_代码)] =  int_数量  
    elseif int_代码 >= 201 and int_代码 <= 218 then   -- 设置基础属性
        o_body[tostring(int_代码)] =  int_数量 
    elseif int_代码 >= 160 and int_代码 <= 182 then   -- 设置征服门派属性
        o_body[tostring(int_代码)] =  int_数量   
    elseif int_代码 == 44 or int_代码 == 46  then  --当前生命值内力值
        o_body[tostring(int_代码)] = int_数量  
    elseif (int_代码 >= 16 and int_代码 <= 37) then   -- 设置基础属性
        o_body[tostring(int_代码)] = int_数量
    elseif (int_代码 >= 80 and int_代码 <= 100) then   -- 设置异常等
        o_body[tostring(int_代码)] = int_数量
    elseif (int_代码 >= 101 and int_代码 <= 106) then   --设置力道等经验
        o_body[tostring(int_代码)] =  int_数量
    else
        o_body[tostring(int_代码)] =  int_数量
    end    
end
t['通用_重置检测']=function() --
    if  G.misc().检测_1008 == nil  then
        local role = G.DBTable('o_role')
        for i = 1,#role do 
            for p = 81,90 do 
                if not G.call('get_role',i,p) then 
                    G.call('set_role',i,p,0)
                    G.call('set_role',i,p+10,0)
                end    
            end 
        end
        G.call('指令_备份基础属性')
    end
end
t['指令_备份基础属性']=function() --
    for i = 16,37 do
        G.call('set_newpoint',i,-G.call('get_point',i)-10) 
    end
    local int_成就 = G.QueryName(0x10170002).进度列表[1].当前进度 + G.QueryName(0x10170004).进度列表[1].当前进度+ G.QueryName(0x10170005).进度列表[1].当前进度 + G.QueryName(0x10170007).进度列表[1].当前进度+ G.QueryName(0x10170008).进度列表[1].当前进度+ G.QueryName(0x1017000a).进度列表[1].当前进度+ G.QueryName(0x1017000b).进度列表[1].当前进度+ G.QueryName(0x10170015).进度列表[1].当前进度+ G.QueryName(0x10170014).进度列表[1].当前进度+ G.QueryName(0x10170012).进度列表[6].当前进度+ G.QueryName(0x10170011).进度列表[1].当前进度+ G.QueryName(0x10170009).进度列表[1].当前进度
    local int_物品数量 = 0
    local item = G.DBTable('o_item')
    for i = 1,#item do
        local o_item = G.QueryName(0x100b0000 + i)
        if o_item.数量 then
            int_物品数量 = int_物品数量 + o_item.数量 
        end
    end
    G.call('set_newpoint',4,-G.call('get_point',4)-10) 
    for i = 111,115 do 
        G.call('set_newpoint',i,-G.call('get_point',i)-10) 
    end
    for i = 120,124 do 
        G.call('set_newpoint',i,-G.call('get_point',i)) 
    end
    G.call('set_newpoint',130,-G.call('get_point',130)-10)
    G.call('set_newpoint',237,-G.call('get_point',237)-10)
    G.call('set_newpoint',76,-int_物品数量-2000)
    G.call('set_newpoint',80,-int_成就-2000)
    G.call('set_newpoint',3,-G.call('get_point',3)-10) 
    G.call('set_newpoint',5,-G.call('get_point',5)-10) 
    G.call('set_newpoint',63,-G.call('get_point',63)-10) 
    G.call('set_newpoint',77,-G.call('get_magicexp',83)-10) 
    G.call('set_newpoint',110,-G.call('get_point',110)-2000) 
    for i = 45,47 do 
        G.call('set_newpoint',i,-G.call('get_point',i)-10) 
    end
    G.misc().检测_1008 = 1
end 
t['get_newpoint']=function(int_代码) --取得主角副属性
    return G.QueryName(0x101b0001)[tostring(int_代码)]
end     
t['set_newpoint']=function(int_代码,int_数量) --设置主角副属性
    G.QueryName(0x101b0001)[tostring(int_代码)] = int_数量
end
t['get_point']=function(int_代码) --取得主角属性
    return G.QueryName(0x10030001)[tostring(int_代码)]
end      
t['add_point']=function(int_代码,int_数量) --增加主角部分属性
    local o_body = G.QueryName(0x10030001)
    local int_难度 = G.QueryName(0x10160000 +G.call('get_point',143)).难度
    if int_数量 < 0 and math.abs(int_数量) > G.call('get_point',int_代码) and int_代码 ~= 15 then 
        int_数量 = -G.call('get_point',int_代码)
    end
    if int_代码 == 3 then   --经验升级计算
        local int_升级经验 = math.floor(15 *G.call('get_point',4)* (G.call('get_point',4)+1) * (int_难度+1)/2   )
        G.call('set_point',3,G.call('get_point',3)+ int_数量) 
        G.call('set_newpoint',3,G.call('get_newpoint',3)- int_数量) 
        while true  do  --循环判断升级
            if G.call('get_point',3) >= int_升级经验  and int_升级经验 > 0 and G.call('get_point',4) < 100  then 
                G.call('add_point',4, 1) 
                local int_随机种子 = G.call('通用_取随机')
                local int_point = math.floor(int_随机种子/100 * G.call('get_point',18)/20 + 0.5)+3
                if G.call('通用_取得套装',0,2) == 3  then --套装2升级修为点+1
                    int_point = int_point + 1
                end
                if G.call('通用_取得人物特效',0,16) and G.call('get_point',4)%2 == 0  then 
                    int_point = int_point + 1
                end
                G.call('add_point',5,int_point  ) 
                G.call('set_point',76,G.call('get_point',76) + int_point  ) 
                G.call('set_point',3,G.call('get_point',3)- int_升级经验) 
                G.call('set_newpoint',3,G.call('get_newpoint',3)+ int_升级经验) 
                int_升级经验 = math.floor(15 *G.call('get_point',4)* (G.call('get_point',4)+1) * (G.call('get_point',200) + 25)  /100)
                G.Play(0x4901000f, 1,false,100)
                G.trig_event('等级提升')
            else
                break
            end
        end
    elseif int_代码 == 4 then   --等级计算 
        G.call('set_point',int_代码,G.call('get_point',int_代码)+ int_数量)
        G.call('set_newpoint',int_代码,G.call('get_newpoint',int_代码)- int_数量)
        if G.call('get_point',4) >= 100 then
            G.call('set_newpoint',int_代码,-100-10 )
            G.call('set_point',int_代码,100)
        end
    elseif int_代码 >= 80 and int_代码 <=100 then  --异常
        G.call('set_point',int_代码,G.call('get_point',int_代码)+ int_数量)
        if  G.call('get_point',int_代码) <= 0 then 
            G.call('set_point',int_代码,0)
        end  
    elseif int_代码 == 48 then  --怒气
        G.call('set_point',int_代码,G.call('get_point',int_代码)+ int_数量)
        G.call('set_newpoint',int_代码,G.call('get_newpoint',int_代码)- int_数量)
        if  G.call('get_point',int_代码) > 100 then 
            G.call('set_newpoint',int_代码,-100-10 )
            G.call('set_point',int_代码,100)
        end  
        if  G.call('get_point',int_代码) < 0 then 
            G.call('set_newpoint',int_代码,-10)
            G.call('set_point',int_代码,0)
         
        end  
    elseif int_代码 == 63 then --北冥真气吸蓝统计
        G.call('set_point',int_代码,G.call('get_point',int_代码)+ int_数量)
        G.call('set_newpoint',int_代码,G.call('get_newpoint',int_代码)- int_数量)
        if  G.call('get_point',int_代码) > 10000 then 
            G.call('set_point',int_代码,10000)
            G.call('set_newpoint',int_代码,-10000-10) 
        end  
        if  G.call('get_point',int_代码) < 0 then 
            G.call('set_point',int_代码,0)
            G.call('set_newpoint',int_代码,-10)
        end  
    elseif int_代码 == 64 then --存档次数
        G.call('set_point',int_代码,G.call('get_point',int_代码)+ int_数量)
    elseif int_代码 == 5 then  --修为点
        G.call('set_point',int_代码,G.call('get_point',int_代码)+ int_数量)
        G.call('set_newpoint',int_代码,G.call('get_newpoint',int_代码)- int_数量)
        if   G.call('get_point',int_代码) < 0 then
            G.call('set_point',int_代码,0)
            G.call('set_newpoint',int_代码,-10)
        end  
    elseif int_代码 == 11 then  --门派经验
        G.call('set_point',int_代码,G.call('get_point',int_代码)+ int_数量)
        if  G.call('get_point',int_代码) > 9999 then 
            G.call('set_point',int_代码,9999)
        end  
    elseif int_代码 == 14 then   --名望
        G.call('set_point',int_代码,G.call('get_point',int_代码)+ int_数量)
        if  G.call('get_point',int_代码) > 9999 then 
            G.call('set_point',int_代码,9999)
        end     
    elseif int_代码 == 15 then    --侠义
        G.call('set_point',int_代码,G.call('get_point',int_代码)+ int_数量)
        if  G.call('get_point',int_代码) > 100 then 
            G.call('set_point',int_代码,100)
        end  
        if  G.call('get_point',int_代码) < -100 then 
            G.call('set_point',int_代码,-100)
        end  
    elseif int_代码 == 107 then   --门派经验增加
        local school_magic = {'【侠义】技能','【佛法】修为','【儒风】技能','【养生】技能','【寡欲】技能','','【软言】技能','【怪才】技能','【乞讨】技能','【谄媚】技能'}
        local o_school = G.call('get_point',8)
       -- local o_body = G.QueryName(0x10030001)
        if o_school > 0 then    
            G.call('set_point',int_代码,G.call('get_point',int_代码) + int_数量)
            if G.call('get_point',int_代码) >= 100  then
                if  G.call('get_point',11) < 10 then
                    G.call('set_point',11,G.call('get_point',11)+ math.floor(G.call('get_point',int_代码)  / 100))
                    G.call('set_point',int_代码,G.call('get_point',int_代码)%100)
                    --门派技能升级
                    if o_school == 1 then 
                        G.call('notice1','【侠义】技能提升')
                    elseif o_school == 2 then 
                        G.call('add_point',21,5) 
                        G.call('notice1','【佛法】修为提升，【定力】提升')
                    elseif o_school == 3 then 
                        G.call('add_point',18,2) 
                        G.call('notice1','【儒风】技能提升，【悟性】提升')
                    elseif o_school == 4 then 
                        G.call('add_point',17,5) 
                        G.call('notice1','【养生】技能提升，【根骨】提升')
                    elseif o_school == 7 then 
                        G.call('add_point',15,-5) 
                        G.call('notice1','【软言】技能提升，【侠义】降低')
                    elseif o_school == 8 then 
                        G.call('add_point',33,5) 
                        G.call('add_point',36,5) 
                        G.call('add_point',37,5) 
                        G.call('notice1','【怪才】技能提升，【医疗】【烹饪】【交易】提升')
                    elseif o_school == 9 then
                        G.call('add_point',19,5) 
                        G.call('notice1','【乞讨】技能提升，【福缘】提升')
                    elseif o_school == 10 then
                        G.call('add_point',32,2) 
                        G.call('notice1','【谄媚】技能提升，【施毒】提升')
                    elseif o_school == 5 then 
                        G.call('notice1','【寡欲】技能提升，【生命内力】提升')
                        G.call('add_point',45,500) 
                        G.call('add_point',47,500) 
                    end
                    if G.call('get_point',11)> 10 then 
                        G.call('set_point',11,10)
                    end    
                else 
                    G.call('set_point',int_代码,100)
                    G.call('notice1',school_magic[o_school]..'已经升到顶级')
                end
            end
        end    
    elseif int_代码 == 110 then   --
        G.call('set_point',int_代码,G.call('get_point',int_代码)+ int_数量) 
        G.call('set_newpoint',int_代码,G.call('get_newpoint',int_代码)- int_数量)  
    elseif int_代码 == 45 or int_代码 == 47  then  --MAX生命值内力值
        G.call('set_point',int_代码,G.call('get_point',int_代码)+ int_数量)
        G.call('set_newpoint',int_代码,G.call('get_newpoint',int_代码)- int_数量)
        if  G.call('get_point',int_代码) > 50000 then 
            G.call('set_newpoint',int_代码,-50000-10)
            G.call('set_point',int_代码,50000)
        end      
        if  G.call('get_point',int_代码) < 0 then 
            G.call('set_point',int_代码,0)
            G.call('set_newpoint',int_代码,-10)
        end  
    elseif int_代码 >= 201 and  int_代码 <= 218  then  --MAX生命值内力值
        G.call('set_point',int_代码,G.call('get_point',int_代码)+ int_数量)
        if  G.call('get_point',int_代码) > 99999 then 
            G.call('set_point',int_代码,99999)
        end      
    elseif int_代码 == 44  then  --当前生命值内力值
        if int_数量 == 0 then return end
        G.call('set_point',int_代码,G.call('get_point',int_代码)+ int_数量)
        G.call('set_newpoint',int_代码,G.call('get_newpoint',int_代码)- int_数量)
        if  G.call('get_point',44) > G.call('get_point',217) then 
            G.call('set_point',44,G.call('get_point',217))
            G.call('set_newpoint',int_代码,-G.call('get_point',217)- 10)
        end   
        if  G.call('get_point',44) < 0 then 
            G.call('set_newpoint',int_代码, -10)
            G.call('set_point',44,0)
        end    
    elseif  int_代码 == 46  then  --当前生命值内力值
        if int_数量 == 0 then return end
        G.call('set_point',int_代码,G.call('get_point',int_代码)+ int_数量)
        G.call('set_newpoint',int_代码,G.call('get_newpoint',int_代码)- int_数量)  
        if  G.call('get_point',46) > G.call('get_point',218) then 
            G.call('set_point',46,G.call('get_point',218))
            G.call('set_newpoint',46,-G.call('get_point',218)- 10)
        end 
        if  G.call('get_point',46) < 0 then
            G.call('set_point',46,0)
            G.call('set_newpoint',46, -10) 
        end 
    elseif (int_代码 >= 16 and int_代码 <= 37) then   -- 基础属性的增加
        G.call('set_point',int_代码,G.call('get_point',int_代码)+ int_数量)
        G.call('set_newpoint',int_代码,G.call('get_newpoint',int_代码)- int_数量)
        if  G.call('get_point',int_代码) < 0 then 
            G.call('set_newpoint',int_代码,-10)
            G.call('set_point',int_代码,0)
        end 
        local int_难度 = G.QueryName(0x10160000 +G.call('get_point',143)).难度
        local int_点数 = 100
        if int_代码 >= 22 then 
            if int_难度 == 1 then 
                int_点数 = 100
            elseif int_难度 == 2 then 
                int_点数 = 120
            elseif int_难度 == 3 then 
                int_点数 = 150
            end
        end
        if G.call('get_point',int_代码)  > int_点数   then 
            G.call('set_newpoint',int_代码,-int_点数-10)
            G.call('set_point',int_代码,int_点数)
        end 
    elseif (int_代码 >= 101 and int_代码 <= 106) then   --力道等经验的增加
        G.call('set_point',int_代码,G.call('get_point',int_代码) + int_数量)
        if  G.call('get_point',int_代码) < 0 then 
            G.call('set_point',int_代码,0)
        end 
        if G.call('get_point',int_代码) >= 100  then 
            local t = {'力道','根骨','灵敏','悟性','福缘','定力'}
            local int_no = {16,17,20,18,19,21}
            G.call('notice1',t[int_代码-100]..'提升') 
            G.call('add_point',int_no[int_代码-100],math.floor(G.call('get_point',int_代码) /100))
            G.call('set_point',int_代码,G.call('get_point',int_代码)%100)
            -- if G.call('get_point',int_代码 - 85) > 100 then
            --     G.call('set_point',int_代码-85,100)
            -- end
        end 
    else
        G.call('set_point',int_代码,G.call('get_point',int_代码)+ int_数量)
        G.call('set_newpoint',int_代码,G.call('get_newpoint',int_代码)- int_数量)   
    end 
    G.call('指令_存储属性')
end
t['add_money'] = function(int_数值)--增加钱数
    G.QueryName(0x10030001)[tostring(110)] = G.QueryName(0x10030001)[tostring(110)]  + int_数值
    G.call('set_newpoint',110,G.call('get_newpoint',110)- int_数值)
    if    G.QueryName(0x10030001)[tostring(110)]  < 0 then 
        G.call('set_newpoint',110,-2000)
        G.QueryName(0x10030001)[tostring(110)] = 0
    elseif G.QueryName(0x10030001)[tostring(110)]  > 99999999 then
        G.call('set_newpoint',110,- 99999999 -2000)
        G.QueryName(0x10030001)[tostring(110)]  = 99999999 
    end 
    local n = math.abs(int_数值)
    if int_数值 > 0 then       
        G.call('notice1','获得铜钱'..tostring(n))  
    elseif int_数值 < 0 then  
        G.call('notice1','失去铜钱'..tostring(n)) 
    end    
end  
t['get_money']=function() --取得现有钱数
    local result = G.QueryName(0x10030001)[tostring(110)]
    return result 
end   
t['add_maxhpmp']=function(int_代码,int_百分比)    --增加MAX生命值内力值百分比
    if int_代码 == 45 then 
        G.call('add_point',45, math.floor(G.call('get_point',217)*int_百分比/100  )      )   
    elseif int_代码 == 47  then
        G.call('add_point',47, math.floor(G.call('get_point',218)*int_百分比/100  )      )
    end 
end 
t['add_hp%']=function(int_百分比)    --%生命值内力值增加
    G.call('add_point',44,math.floor(G.call('get_point',217) *int_百分比/100))
end 
t['add_mp%']=function(int_百分比)    --%生命值内力值增加
    G.call('add_point',46,math.floor(G.call('get_point',218) *int_百分比/100))
end 
t['can_equip']=function() --能否装备当前内功或者轻功
    local result = true
    local o_skill = G.QueryName(G.call('get_point',191))
    local o_body = G.QueryName(0x10030001)
    local 经脉 = {'阳维脉','阴维脉','带脉','任脉','阳跷脉','阴跷脉','冲脉','督脉','经外奇脉'}
    for i = 1,9 do 
        if o_skill[经脉[i]] == nil then 
            o_skill[经脉[i]] = 0
        end
    end  
    for i = 1,9 do 
        if o_skill[经脉[i]] > G.call('get_point',220+i) then 
            result = false
        end  
    end 
    if G.call('通用_取得套装',0,6) == 3 then --套装6效果无视条件装备
        result = true
    end
    return result
end
t['can_use']=function() --能否修炼当前秘籍
    local o_item_物品 = G.QueryName(G.call('get_point',192))
    local o_body_属性 = G.QueryName(0x10030001)
    local int_内功 = 0
    if o_body_属性[tostring(197)] ~= nil  and  o_body_属性[tostring(197)] > 0  then--轻功附加装备属性
        local o_skill_技能 = G.QueryName(o_body_属性[tostring(197)])  
        int_内功  = int_内功  + o_skill_技能.内功加 * o_skill_技能.修为等级
     end
     if o_body_属性[tostring(196)] ~= nil  and  o_body_属性[tostring(196)] > 0  then--内功附加装备属性
        local o_skill_技能 = G.QueryName(o_body_属性[tostring(196)])  
        int_内功  = int_内功  + o_skill_技能.内功加 * o_skill_技能.修为等级
     end
    local result = true 
    if o_item_物品.拳掌 > o_body_属性[tostring(22)] then 
        result = false
    elseif o_item_物品.弹指 > o_body_属性[tostring(23)] then 
        result = false
    elseif o_item_物品.御剑 > o_body_属性[tostring(24)] then 
        result = false
    elseif o_item_物品.耍刀 > o_body_属性[tostring(25)] then 
        result = false 
    elseif o_item_物品.舞棍 > o_body_属性[tostring(26)] then 
        result = false
    elseif o_item_物品.内功 > o_body_属性[tostring(27 )]  then --计算内功减去装备内功效果
        result = false
    elseif o_item_物品.施毒 > o_body_属性[tostring(32)] then 
        result = false
    elseif o_item_物品.医疗 > o_body_属性[tostring(33)] then 
        result = false
    elseif o_item_物品.暗器 > o_body_属性[tostring(34)] then 
        result = false
    elseif o_item_物品.读书 > o_body_属性[tostring(35)] then 
        result = false
    -- elseif o_item_物品.自宫 > o_body_属性[tostring(41)]   then 
    --     result = false
    --     if G.misc().太监 ~= nil and G.misc().太监 == 0 then 
    --         result = true
    --     end
    elseif o_item_物品.阴跷脉 > o_body_属性[tostring(226)] then 
        result = false
    elseif o_item_物品.阴维脉 > o_body_属性[tostring(222)] then 
        result = false
    elseif o_item_物品.阳跷脉 > o_body_属性[tostring(225)] then 
        result = false
    elseif o_item_物品.阳维脉 > o_body_属性[tostring(221)] then 
        result = false
    elseif o_item_物品.带脉 > o_body_属性[tostring(223)] then 
        result = false
    elseif o_item_物品.冲脉 > o_body_属性[tostring(227)] then 
        result = false
    elseif o_item_物品.任脉 > o_body_属性[tostring(224)] then 
        result = false
    elseif o_item_物品.督脉 > o_body_属性[tostring(228)] then 
        result = false
    elseif o_item_物品.经外奇脉 > o_body_属性[tostring(229)] then 
        result = false
    end
    if G.call('通用_取得套装',0,6) == 3 then --套装6效果无视条件修炼秘籍
        result = true
    end
    -- if result == false and o_item_物品.自宫 > 0 then
    --     result = G.call('通用_自宫') 
    -- end
    return result
end
t['通用_自宫_1']=function() 
    local ui = G.addUI('v_yes_or_no')
    local c = ui.c_yes_or_no
    c:显示('是否需要自宫？')
    G.wait1('选择结束')
    local int_选择 = c.选择
    G.removeUI('v_yes_or_no')
    if int_选择 == 1 then 
        local i_item_物品 = G.call('get_point',192)   
        local o_item_物品 = G.QueryName(i_item_物品)
        G.call('photo0',20)
        G.wait_time(1000)
        G.call('photo0',21)
        G.Play(0x4902000a , 1,false,100)
        G.wait_time(1000)
        G.call('photo0_off')
        G.call('set_point',41,1)
        G.misc().人物头像 = 0x560800e2
        G.QueryName(0x10030001)[tostring(119)] = 0x560800e2
        G.call('learn_magic',o_item_物品.武功-0x10050000+1) 
    end
end
t['通用_自宫_2']=function() 
    local ui_1 = G.getUI('v_item')
    local c_1 = ui_1.c_item 
    local i_item = G.call('get_point',192)
    local int_物品代码 
    if i_item then 
        int_物品代码= G.call('get_point',192)-0x100b0000
    end
    local o_item = G.QueryName(i_item)
    local int_武功代码 = o_item.武功 - 0x10050000
    local o_teammate_队友 = G.QueryName(0x10110001)
    local o_role_人物 = G.QueryName(o_teammate_队友[tostring(c_1.队友编号)])
    local int_队员编号 = o_teammate_队友[tostring(c_1.队友编号)] - 0x10040000
    local ui = G.addUI('v_yes_or_no')
    local c = ui.c_yes_or_no
    c_1.队伍.getChildByName('输入框').visible = false 
    c_1.队伍.getChildByName('副按钮').visible = false
    c:显示('[08]需要将【[03]'..o_role_人物.姓名..'[08]】阉割吗？')
    G.wait1('选择结束')
    local int_选择 = c.选择
    G.removeUI('v_yes_or_no')
    if int_选择 == 1 then
        G.call('add_item',int_物品代码+1,-1 )
        G.call('photo0',20)
        G.wait_time(1000)
        G.call('photo0',21)
        G.Play(0x4902000a , 1,false,100)
        G.wait_time(1000)
        G.call('photo0_off')
        G.call('set_friend_skill',int_队员编号,4,int_武功代码+1,1) 
        o_role_人物.性别 = 0
        c_1.队伍.visible = false
    else
        --c_1.队伍.getChildByName('输入框').visible = true
    end
end
t['use_item']=function(int_物品,int_数量) --使用物品
    local o_item_物品 = G.QueryName(0x100b0000+int_物品-1)
    local i_item = 0x100b0000+int_物品-1
    local o_body_属性 = G.QueryName(0x10030001)    
    local add = {};
    for i = 1,22 do 
        add[i] = 0
    end 
    -- if i_item == 0x100b00df and G.call('get_item',224) > 10 then --大还丹超过10颗使用时直接变成1颗
    --     G.call('add_item',224,-G.call('get_item',224)+1)
    -- end
    add[1] = o_item_物品.加拳掌
    add[2] = o_item_物品.加弹指
    add[3] = o_item_物品.加御剑
    add[4] = o_item_物品.加耍刀
    add[5] = o_item_物品.加舞棍
    add[6] = o_item_物品.加内功
    add[7] = o_item_物品.加拆招
    add[8] = o_item_物品.加搏击
    add[9] = o_item_物品.加闪躲
    add[10] = o_item_物品.加轻身
    add[11] = o_item_物品.加施毒
    add[12] = o_item_物品.加医疗
    add[13] = o_item_物品.加暗器
    add[14] = o_item_物品.加读书
    add[15] = o_item_物品.加生命百分比 
    add[16] = o_item_物品.加内力百分比  
    add[17] = o_item_物品.加生命max 
    add[18] = o_item_物品.加内力max
    add[19] = o_item_物品.加修为
    add[20] = o_item_物品.解毒
    add[21] = o_item_物品.解流血
    add[22] = o_item_物品.解内伤
    add[23] = o_item_物品.加体力
    add[24] = o_item_物品.加生命最大值
    add[25] = o_item_物品.加内力最大值
    if o_item_物品.加体力 == nil then 
        o_item_物品.加体力 = 0 
        add[23] = 0
    end 
    if o_item_物品.加拳掌 == nil then 
        o_item_物品.加拳掌 = 0 
        add[1] = 0
    end     
    if o_item_物品.加弹指 == nil then
        o_item_物品.加弹指 = 0
        add[2] = 0
    end     
    if o_item_物品.加御剑 == nil then
        o_item_物品.加御剑 = 0
        add[3] = 0
    end     
    if o_item_物品.加耍刀 == nil then
        o_item_物品.加耍刀 = 0
        add[4] = 0
    end     
    if o_item_物品.加舞棍 == nil then
        o_item_物品.加舞棍 = 0
        add[5] = 0
    end     
    if o_item_物品.加内功 == nil then
        o_item_物品.加内功 = 0
        add[6] = 0
    end     
    if o_item_物品.加拆招 == nil then
        o_item_物品.加拆招 = 0
        add[7] = 0
    end     
    if o_item_物品.加搏击 == nil then
        o_item_物品.加搏击 = 0
        add[8] = 0
    end     
    if o_item_物品.加闪躲 == nil then
        o_item_物品.加闪躲 = 0
        add[9] = 0
    end     
    if o_item_物品.加轻身 == nil then
        o_item_物品.加轻身 = 0
        add[10] = 0
    end     
    if o_item_物品.加施毒 == nil then
        o_item_物品.加施毒 = 0
        add[11] = 0
    end    
    if o_item_物品.加医疗 == nil then
        o_item_物品.加医疗 = 0
        add[12] = 0
    end     
    if o_item_物品.加暗器 == nil then
        o_item_物品.加暗器 = 0
        add[13] = 0
    end     
    if o_item_物品.加读书 == nil then
        o_item_物品.加读书 = 0
        add[14] = 0
    end     
    if o_item_物品.加生命百分比== nil then
        o_item_物品.加生命百分比 = 0
        add[15] = 0
    end     
    if o_item_物品.加内力百分比 == nil then
        o_item_物品.加内力百分比  = 0 
        add[16] = 0
    end       
    if o_item_物品.加生命max == nil then
        o_item_物品.加生命max = 0
        add[17] = 0
    end 
    if o_item_物品.加内力max == nil then
        o_item_物品.加内力max = 0
        add[18] = 0
    end 
    if o_item_物品.加修为 == nil then
        o_item_物品.加修为 = 0
        add[19] = 0
    end 
    if o_item_物品.解毒 == nil then
        o_item_物品.解毒 = 0
        add[20] = 0
    end 
    if o_item_物品.解流血 == nil then
        o_item_物品.解流血 = 0
        add[21] = 0
    end     
    if o_item_物品.解内伤 == nil then
        add[22] = 0
        o_item_物品.解内伤 = 0
    end 
    if o_item_物品.加生命最大值 == nil then
        add[24] = 0
        o_item_物品.加生命最大值 = 0
    end 
    if o_item_物品.加内力最大值 == nil then
        add[25] = 0
        o_item_物品.加内力最大值 = 0
    end 
    if o_item_物品.数量 >= int_数量 then 
        for i = 1,14 do 
            G.call('add_point',21+i,add[i]*int_数量)
        end  
        G.call('add_maxhpmp',45,add[17]*int_数量) 
        G.call('add_maxhpmp',47,add[18]*int_数量) 
        G.call('add_mp%',add[16]*int_数量) 
        G.call('add_hp%',add[15]*int_数量)
        G.call('add_point',45,add[24])
        G.call('add_point',47,add[25])
        if add[19] > 0 then 
            G.call('add_point',5,add[19]*int_数量)
        end
        if o_body_属性[tostring(81)] > 0 and add[20] > 0 then --判断解毒
            o_body_属性[tostring(81)] = 0
        end     
        if o_body_属性[tostring(85)] > 0 and add[21] > 0 then --判断解流血
            o_body_属性[tostring(85)] = 0
        end  
        if o_body_属性[tostring(84)] > 0 and add[22] > 0 then --判断解内伤
            o_body_属性[tostring(84)] = 0
        end 
        G.call('add_item',int_物品,-int_数量) 
        if i_item == 0x100b0072 then 
            local int_no = {121,17,26,30,79,108,122,127,136}
            local result = false
            for i = 1,#int_no do 
                if G.call('get_magic',int_no[i]+1) == 0 then 
                    result = true
                    break
                end
            end
            if result == true then
                local int_mo = int_no[math.random(#int_no)]+1
                while true do 
                    if G.call('get_magic',int_mo) > 0 then 
                        int_mo = int_no[math.random(#int_no)]+1
                    else
                        G.call('learnmagic',int_mo) 
                        break
                    end              
                end 
            else
                G.call('notice1','没有什么可以领悟了！')
            end    
        end
    else
        G.call('notice1','使用物品数量大于已有数量')
    end         
end 
t['逻辑_拥有被动']=function(int_编号)
    local result = false
    for i = 111,115 do 
        if G.call('get_point',i) == int_编号 then 
            result = true
            break
        end    
    end
    return result 
end
t['出师-增加被动']=function() 
    local int_门派 = G.QueryName(0x10030001)[tostring(8)]
    local result = false
    local magic = {'破绽','慈悲','先攻','妙手','急速','冰心','暴击','激励','见切','万毒','强体','回春','强力','强行','复生','奇才','活力','阴毒','舔血','北冥','真武'}
    if int_门派 == 1 then
        G.call('set_point',115,21)
        G.call('notice1','领悟【'..magic[21]..'】')
    elseif int_门派 == 2 then
        G.call('set_point',115,2)
        G.call('notice1','领悟【'..magic[2]..'】')
    elseif int_门派 == 3 then
        if G.call('get_point',12) == '岳不群' then 
            G.call('set_point',115,9)
            G.call('notice1','领悟【'..magic[9]..'】')
        else
            G.call('set_point',115,3)
            G.call('notice1','领悟【'..magic[3]..'】')
        end
    elseif int_门派 == 4 then
        G.call('set_point',115,15)
        G.call('notice1','领悟【'..magic[15]..'】')
    elseif int_门派 == 5 then
        G.call('set_point',115,6)
        G.call('notice1','领悟【'..magic[6]..'】')
    elseif int_门派 == 6 then
        G.call('set_point',115,20)
        G.call('notice1','领悟【'..magic[20]..'】')
    elseif int_门派 == 7 then
        G.call('set_point',115,19)
        G.call('notice1','领悟【'..magic[19]..'】')
    elseif int_门派 == 8 then
        G.call('set_point',115,16)
        G.call('notice1','领悟【'..magic[16]..'】')
    elseif int_门派 == 9 then
        G.call('set_point',115,17)
        G.call('notice1','领悟【'..magic[17]..'】')
    elseif int_门派 == 10 then
        G.call('set_point',115,18)
        G.call('notice1','领悟【'..magic[18]..'】')
    end 
    G.call('set_newpoint',115,-10-G.call('get_point',115)) 
end 
t['逻辑读取-武功等级']=function(int_代码) --
    local o_skill = G.QueryName(0x10050000+int_代码)
    local int_等级 = 1
    if o_skill.当前熟练度 > 0 then 
        o_skill.等级 = 1
    end     
    if  o_skill.当前熟练度>= 10*o_skill.满级熟练度/450 then
        o_skill.等级= 2
    end 
    if  o_skill.当前熟练度>= 30*o_skill.满级熟练度/450 then
        o_skill.等级 = 3
    end     
    if  o_skill.当前熟练度 >= 60*o_skill.满级熟练度/450 then
        o_skill.等级 = 4
    end 
    if  o_skill.当前熟练度>= 100*o_skill.满级熟练度/450 then
        o_skill.等级 = 5
    end 
    if  o_skill.当前熟练度>= 150*o_skill.满级熟练度/450 then
        o_skill.等级 = 6
    end 
    if  o_skill.当前熟练度 >= 210*o_skill.满级熟练度/450 then
        o_skill.等级 = 7
    end 
    if  o_skill.当前熟练度>= 280*o_skill.满级熟练度/450 then
        o_skill.等级 = 8
    end 
    if  o_skill.当前熟练度 >= 360*o_skill.满级熟练度/450 then
        o_skill.等级= 9
    end 
    if  o_skill.当前熟练度>= 450*o_skill.满级熟练度/450 then
        o_skill.等级= 10
    end

end
t['逻辑整理-武功等级']=function() --整理判断主角武功等级
    local skill = G.DBTable('o_skill')
    for i = 1,#skill do 
        if G.QueryName(0x10050000+i).当前熟练度 > 0 then 
            G.QueryName(0x10050000+i).等级 = 1
        end     
        if  G.QueryName(0x10050000+i).当前熟练度>= 10*G.QueryName(0x10050000+i).满级熟练度/450 then
            G.QueryName(0x10050000+i).等级= 2
        end 
        if  G.QueryName(0x10050000+i).当前熟练度>= 30*G.QueryName(0x10050000+i).满级熟练度/450 then
            G.QueryName(0x10050000+i).等级 = 3
        end     
        if  G.QueryName(0x10050000+i).当前熟练度 >= 60*G.QueryName(0x10050000+i).满级熟练度/450 then
            G.QueryName(0x10050000+i).等级 = 4
        end 
        if  G.QueryName(0x10050000+i).当前熟练度>= 100*G.QueryName(0x10050000+i).满级熟练度/450 then
            G.QueryName(0x10050000+i).等级 = 5
        end 
        if  G.QueryName(0x10050000+i).当前熟练度>= 150*G.QueryName(0x10050000+i).满级熟练度/450 then
            G.QueryName(0x10050000+i).等级 = 6
        end 
        if  G.QueryName(0x10050000+i).当前熟练度 >= 210*G.QueryName(0x10050000+i).满级熟练度/450 then
            G.QueryName(0x10050000+i).等级 = 7
        end 
        if  G.QueryName(0x10050000+i).当前熟练度>= 280*G.QueryName(0x10050000+i).满级熟练度/450 then
            G.QueryName(0x10050000+i).等级 = 8
        end 
        if  G.QueryName(0x10050000+i).当前熟练度 >= 360*G.QueryName(0x10050000+i).满级熟练度/450 then
            G.QueryName(0x10050000+i).等级= 9
        end 
        if  G.QueryName(0x10050000+i).当前熟练度>= 450*G.QueryName(0x10050000+i).满级熟练度/450 then
            G.QueryName(0x10050000+i).等级= 10
        end
    end 
end  
t['逻辑整理-NPC武功等级']=function(int_id,int_no) --整理判断NPC当前使用武功等级
    local o_skill = G.QueryName(0x10050000+int_id)
    if o_skill == nil then
        return 10 
    end
    local data = o_skill.满级熟练度/450
    local o_skill_武功当前熟练度 = int_no
    local o_skill_武功等级 = 1
    if o_skill_武功当前熟练度 > 0 then 
        o_skill_武功等级 = 1
    end     
    if  o_skill_武功当前熟练度 > 10*data then
        o_skill_武功等级 = 2
    end 
    if  o_skill_武功当前熟练度 > 30*data then
        o_skill_武功等级 = 3
    end     
    if  o_skill_武功当前熟练度 > 60*data then
        o_skill_武功等级 = 4
    end 
    if  o_skill_武功当前熟练度 > 100*data then
        o_skill_武功等级 = 5
    end 
    if  o_skill_武功当前熟练度 > 150*data then
        o_skill_武功等级 = 6
    end 
    if  o_skill_武功当前熟练度 > 210*data then
        o_skill_武功等级 = 7
    end 
    if  o_skill_武功当前熟练度 > 280*data then
        o_skill_武功等级 = 8
    end 
    if  o_skill_武功当前熟练度 > 360*data then
        o_skill_武功等级 = 9
    end 
    if  o_skill_武功当前熟练度 > 450*data then
        o_skill_武功等级 = 10
    end   
    return o_skill_武功等级
end     
t['learn_magic']=function(int_代码) --UI界面增加主角武功，需要点击确定
    local o_skill_武功 = G.QueryName(0x10050000+int_代码-1)
    local i_skill = 0x10050000+int_代码-1
    if o_skill_武功 ~= nil then
        o_skill_武功.等级 = 1
        o_skill_武功.当前熟练度 = 1
        o_skill_武功.修为等级 = 1
        if o_skill_武功.名称 ~= '北冥神功'   then
            G.Play(0x4901000f, 1,false,100)
            G.call('notice','恭喜领悟'..o_skill_武功.名称) 
        else
            G.call('add_point',47,1-G.call('get_point',47))
            G.Play(0x4901000f, 1,false,100)
            G.call('notice','散去内力领悟'..o_skill_武功.名称)
        end     
    end 
end 
t['set_magic']=function(int_代码) --协程主角增加武功
    local o_skill_武功 = G.QueryName(0x10050000-1+int_代码)
    if o_skill_武功 ~= nil then
        o_skill_武功.等级 = 1
        o_skill_武功.当前熟练度 = 1
        o_skill_武功.修为等级 = 1    
    end 
end
t['learnmagic']=function(int_代码) --协程主角增加武功
    local o_skill_武功 = G.QueryName(0x10050000-1+int_代码)
    if o_skill_武功 ~= nil then
        o_skill_武功.等级 = 1
        o_skill_武功.当前熟练度 = 1
        o_skill_武功.修为等级 = 1
        if o_skill_武功.名称 ~= '北冥神功'   then 
            G.Play(0x4901000f, 1,false,100)
            G.call('notice1','恭喜领悟'..o_skill_武功.名称) 
        else
            G.call('add_point',47,1-G.call('get_point',47))
            G.Play(0x4901000f, 1,false,100)
            G.call('notice1','散去内力领悟'..o_skill_武功.名称)
        end     
    end 
end 
t['get_magic']=function(int_编号)--取得主角武功等级
    return G.QueryName(0x10050000+int_编号-1).等级 
end 
t['add_magicexp']=function(int_编号,int_经验) --取得主角武功当前熟练度
    local i_skill =  0x10050000+int_编号-1
    local o_skill = G.QueryName(i_skill)
    if int_编号 == 83 then 
        G.call('set_newpoint',77,G.call('get_newpoint',77) - int_经验) 
    end 
    o_skill.当前熟练度 = o_skill.当前熟练度 + int_经验
  
end 
t['get_magicexp']=function(int_编号) --取得主角武功当前熟练度
    return G.QueryName(0x10050000+int_编号-1).当前熟练度 
end 
t['get_magic_lv']=function(int_编号) --取得主角武功当前修为等级
    return G.QueryName(0x10050000+int_编号-1).修为等级 
end 
t['set_magic_lv']=function(int_编号,int_no) --设置主角武功当前修为等级
    G.QueryName(0x10050000+int_编号-1).修为等级 =  int_no
end 
t['set_magicexp']=function(int_编号,int_no) --设置主角武功当前熟练度
    G.QueryName(0x10050000+int_编号-1).当前熟练度  = int_no
end 
t['set_story']=function(int_编号,int_进程) --设置事件进程
    G.QueryName(0x10090001)[tostring(int_编号)] = int_进程
end 
t['get_story']=function(int_编号) --取得事件进程
    return G.QueryName(0x10090001)[tostring(int_编号)]   
end 
t['to_chinese']=function(int_number) --数字转换大写
    local i = int_number
    --G.call('to_chinese',)
    local result
    local c_digit = { [0]="零","十","百","千","万","亿","兆" };

	local c_num = {[0]="零","一","二","三","四","五","六","七","八","九","十"};

	local sym_tian = { [0]="甲","乙","丙","丁","戊","己","庚","辛","壬","癸" };

	local sym_di = { [0]="子","丑","寅","卯","辰","巳","午","未","申","酉","戌","亥" };
    if (i < 0) then
		return "负" .. G.call('to_chinese',-i)
	elseif (i < 11) then
		return c_num[i];
	elseif (i < 20) then
		return c_digit[1] .. c_num[i - 10];
	elseif (i < 100) then
		if (i % 10)>0 then
			return c_num[math.floor(i / 10)] .. c_digit[1] .. c_num[i % 10];
		else
			return c_num[math.floor(i / 10)] .. c_digit[1];
		end
	elseif (i < 1000) then
		if (i % 100 == 0) then
			return c_num[math.floor(i / 100)] .. c_digit[2];
		elseif (i % 100 < 10) then
			return c_num[math.floor(i / 100)] .. c_digit[2] ..c_num[0] ..G.call('to_chinese',i % 100) 
		elseif (i % 100 < 20) then
			return c_num[math.floor(i / 100)] .. c_digit[2] ..c_num[1] ..G.call('to_chinese',i % 100)   
		else
			return c_num[math.floor(i / 100)] .. c_digit[2] ..G.call('to_chinese',i % 100)  
		end
	elseif (i < 10000) then
		if (i % 1000 == 0) then
			return c_num[math.floor(i / 1000)] .. c_digit[3];
		elseif (i % 1000 < 100) then
			return c_num[math.floor(i / 1000)] .. c_digit[3] ..	c_num[0] ..G.call('to_chinese',i % 1000) 
		else 
			return c_num[math.floor(i / 1000)] ..c_digit[3] ..G.call('to_chinese',i % 1000) 	
		end
	elseif (i < 100000000) then
		if (i % 10000 == 0) then
			return G.call('to_chinese',math.floor(i / 10000)) .. c_digit[4];
		elseif (i % 10000 < 1000) then
			return G.call('to_chinese',math.floor(i / 10000)) .. c_digit[4] ..c_num[0] ..G.call('to_chinese',i % 10000)  
		else
			return G.call('to_chinese',math.floor(i / 10000)) .. c_digit[4] ..G.call('to_chinese',i % 10000) 
		end
	elseif (i < 1000000000000) then
		if (i % 100000000 == 0) then
			return G.call('to_chinese',math.floor(i / 100000000)) .. c_digit[5];
		elseif (i % 100000000 < 1000000) then
			return G.call('to_chinese',math.floor(i / 100000000)) .. c_digit[5] ..c_num[0] ..G.call('to_chinese',i % 100000000)  
		else 
			return G.call('to_chinese',math.floor(i / 100000000)) .. c_digit[5] ..G.call('to_chinese',i % 100000000)  
		end
	elseif (i % 1000000000000 == 0) then
		return G.call('to_chinese',math.floor(i / 1000000000000)) .. c_digit[6];
	elseif (i % 1000000000000 < 100000000) then
		return G.call('to_chinese',math.floor(i / 1000000000000)) .. c_digit[6] ..c_num[0] ..G.call('to_chinese',i % 1000000000000) 
	else
		return G.call('to_chinese',math.floor(i / 1000000000000)) .. c_digit[6] ..G.call('to_chinese',i % 1000000000000)  
	end
end 
t['通用_还原装备']=function()
    local 装备 = {'头戴','手戴','脚穿','印记'}
    local 属性 = {'生命','内力','拆招','搏击','闪躲','内功','轻身','减伤','左右','斗转'}
    local int_递增属性 = G.call('get_point',237) - 2
    local o_body = G.QueryName(0x10030001)
    for i = 1,3 do
        if o_body[装备[i]] then
            local o_equip = G.QueryName(o_body[装备[i]])
            local int_品质 = o_equip.品质 - 1
            if o_equip.品质转换 == 1 then 
                o_equip.品质转换 = 2
                local string_cut = G.utf8sub(o_equip.名称,4,G.getStrLen(o_equip.名称) )
                for j = 1,40 do 
                    local o_equip_mod = G.QueryName(0x10180000+j)
                    if o_equip_mod.名称 == string_cut then 
                        if o_equip[属性[1]] > o_equip_mod[属性[1]] + int_递增属性*500 then
                            o_equip[属性[1]] = o_equip_mod[属性[1]] + int_递增属性*500
                        end
                        if o_equip[属性[2]] > o_equip_mod[属性[2]] + int_递增属性*250 then
                            o_equip[属性[2]] = o_equip_mod[属性[2]] + int_递增属性*250
                        end
                        for p = 3,10 do
                            if o_equip[属性[p]] > o_equip_mod[属性[p]]*(0.7+int_品质*0.2) + int_递增属性 then
                                o_equip[属性[p]] = math.floor(o_equip_mod[属性[p]]*(0.7+int_品质*0.2)) + int_递增属性
                            end 
                        end
                        break	
                    end
                    
                end	
            end
        end
    end
    local o_store = G.QueryName(0x10190001)
    local int_继承个数 = 0
    if G.call('get_point',237) > 1   then 
        if #o_store.装备 > 0 then
            for i = 1, #o_store.装备 do
                int_继承个数 = int_继承个数 + 1
                if int_继承个数 == G.call('get_point',237) + 1 then
                    break 
                end
                local o_equip = G.QueryName(o_store.装备[i].代码)
                local int_品质 = o_equip.品质 - 1
                if o_store.装备[i].数量 > 0 and o_equip.类型 < 4 and o_equip.品质转换 == 1 then
                    o_equip.品质转换 = 2
                    local string_cut = G.utf8sub(o_equip.名称,4,G.getStrLen(o_equip.名称) )
                    for j = 1,40 do 
                        local o_equip_mod = G.QueryName(0x10180000+j)
                        if o_equip_mod.名称 == string_cut then 
                            if o_equip[属性[1]] > o_equip_mod[属性[1]] + int_递增属性*500 then
                                o_equip[属性[1]] = o_equip_mod[属性[1]] + int_递增属性*500
                            end
                            if o_equip[属性[2]] > o_equip_mod[属性[2]] + int_递增属性*250 then
                                o_equip[属性[2]] = o_equip_mod[属性[2]] + int_递增属性*250
                            end
                            for p = 3,10 do
                                if o_equip[属性[p]] > o_equip_mod[属性[p]]*(0.7+int_品质*0.2) + int_递增属性 then
                                    o_equip[属性[p]] = math.floor(o_equip_mod[属性[p]]*(0.7+int_品质*0.2)) + int_递增属性
                                end 
                            end
                            break	
                        end    
                    end	 
                end
            end
        end 
    end
end
t['produce_equip']=function(i_equip_装备,int_数量,int_随机类型,int_品质级别,int_递增属性) 
    if not i_equip_装备 then return end
    local i_equip =  i_equip_装备
    local o_equip_子物品 = G.QueryName(i_equip)
    if int_数量  > 0 then
        if o_equip_子物品.类型 > 0 then
            for i = 1,int_数量 do 
                local equip = G.DBTable('o_equip');
				local o_equip_usb = {}
                G.deepcopy(o_equip_子物品, o_equip_usb)
				G.addNewInst2Dynamic(o_equip_usb,'o_equip')
                equip = G.DBTable('o_equip');
                i_equip = o_equip_usb.name
                local o_equip_物品 = G.QueryName(i_equip)
                local str_品质 = {'普通的','華麗的','璀璨的','五彩的','傳家的'}	
                o_equip_子物品 = o_equip_物品
                G.call('功能_物品转换',i_equip,int_随机类型,int_品质级别,int_递增属性)
				if o_equip_物品.套装 > 0 then 
                    if o_equip_物品.套装 == 1 then
                        o_equip_物品.名称 = '游俠之'..o_equip_物品.名称
						G.call('notice1', '得到【'..'[07]'..o_equip_物品.名称..'】'); 
                    elseif o_equip_物品.套装 == 2 then 
                        o_equip_物品.名称 = '學士之'..o_equip_物品.名称
						G.call('notice1', '得到【'..'[07]'..o_equip_物品.名称..'】');
                    elseif o_equip_物品.套装 == 3 then 
                        o_equip_物品.名称 = '霸王之'..o_equip_物品.名称
						G.call('notice1', '得到【'..'[07]'..o_equip_物品.名称..'】');
                    elseif o_equip_物品.套装 == 5 then 
                        o_equip_物品.名称 = '淑女之'..o_equip_物品.名称
						G.call('notice1', '得到【'..'[07]'..o_equip_物品.名称..'】');
                    elseif o_equip_物品.套装 == 4 then 
                        o_equip_物品.名称 = '修羅之'..o_equip_物品.名称
						G.call('notice1', '得到【'..'[07]'..o_equip_物品.名称..'】');
                    elseif o_equip_物品.套装 == 6 then 
                        o_equip_物品.名称 = '傳奇之'..o_equip_物品.名称
						G.call('notice1', '得到【'..'[07]'..o_equip_物品.名称..'】');
                    end
                else
                    --o_equip_物品.名称 = str_品质[o_equip_物品.品质].. o_equip_子物品.名称
                    G.call('notice1', '得到[07]【'..o_equip_物品.名称..'】');
                end
                G.call('add_equip',i_equip,1)
            end    
        else
            G.call('add_equip',i_equip,int_数量)
        end
    end
end
t['add_equip']=function(i_equip_装备,int_数量)
    if not i_equip_装备 then return end 
    local o_store = G.QueryName(0x10190001)
    if #o_store.装备 > 0 then 
        local result = false
        local int_序号 = 0
        for i = 1,#o_store.装备 do
            if  o_store.装备[i].代码 == i_equip_装备 then 
                result = true
                o_store.装备[i].数量 = o_store.装备[i].数量 + int_数量
                break
            end    
        end
        if not result  then 
            if int_数量 < 0 then
                int_数量  = 0 
            end
            local int_位置 = #o_store.装备+1
            o_store.装备[int_位置] = {}
            o_store.装备[int_位置].代码 =  i_equip_装备
            o_store.装备[int_位置].数量 = int_数量
        end
    else
        o_store.装备[1] = {}
        o_store.装备[1].代码 = i_equip_装备
        o_store.装备[1].数量 = int_数量
    end
end
t['功能_物品转换']=function(i_equip_装备,int_随机类型,int_品质级别,int_递增属性)
    local o_equip_物品 = G.QueryName(i_equip_装备)
    local str = {'生命','内力','拆招','搏击','闪躲','内功','轻身','减伤','左右','斗转'}
    local str_品质 = {'普通的','華麗的','璀璨的','五彩的','傳家的'}				
    local int_几率 = math.random(10000)
    if int_随机类型 == 1 then 
        int_几率 = G.call('通用_取大随机') 
    end
    if int_品质级别 and int_品质级别 == 1 then 
        int_几率 = math.random(9400,10000)
    elseif int_品质级别 and int_品质级别 == 2 then 
        int_几率 = math.random(9900,10000)
    else
        local int_寻宝 = 0
        if G.call('通用_取得套装',0,2) == 2 then
            int_寻宝 = 50
        elseif G.call('通用_取得套装',0,2) == 3 then 
            int_寻宝 = 100
        end
        if G.call('get_point',115) == 16 then
            int_寻宝 = 50 
        end
        int_几率 = int_几率 + int_寻宝
    end
    if o_equip_物品.品质转换 and o_equip_物品.品质转换 >= 1 then
        int_递增属性 = 0 
    end
    if int_递增属性 and int_递增属性 > 0 and G.call('get_point',237) > 2  and not o_equip_物品.品质转换 then
        int_递增属性 = G.call('get_point',237) - 2
        o_equip_物品.品质转换 = 1
    else
        int_递增属性 = 0
    end
    if int_几率 <= 5890 then --0.589
        o_equip_物品.品质 = 1
    elseif int_几率 <= 8890 and int_几率 > 5890 then  --0.3
        o_equip_物品.品质 = 2
    elseif int_几率 <= 9890 and int_几率 > 8890 then --0.1
        o_equip_物品.品质 = 3
    elseif int_几率 <= 9990 and int_几率 > 9890 then --0.01
        o_equip_物品.品质 = 4
    elseif  int_几率 > 9990 then --0.001  
        o_equip_物品.品质 = 5
    end
	if o_equip_物品.套装 > 0 then 
		o_equip_物品.品质 = 3
    end
    local o_equip = {}
    local o_equip_mod = {}
    local result = false
	for i = 1,40 do 
		o_equip = G.QueryName(0x10180000+i)
        if o_equip_物品.名称 == o_equip.名称  then 
            o_equip_mod = G.QueryName(0x10180000+i)
            result = true
            if o_equip_物品.套装 > 0 then
                o_equip_物品.名称 = o_equip.名称
            else
                o_equip_物品.名称 =  str_品质[o_equip_物品.品质]..o_equip.名称
            end
            break
        end	
    end	
    if result == false then
        local string_cut = G.utf8sub(o_equip_物品.名称,4,G.getStrLen(o_equip_物品.名称) )
        for i = 1,40 do 
            o_equip = G.QueryName(0x10180000+i)
            if o_equip.名称 == string_cut then
                o_equip_mod = G.QueryName(0x10180000+i)
                break 
            end
        end
        o_equip_物品.名称 = str_品质[o_equip_物品.品质]..string_cut
    end
	if o_equip_物品.转换次数 == nil then 
		o_equip_物品.转换次数 = 0
    end	
    o_equip_物品.转换次数 = o_equip_物品.转换次数 + 1
    if o_equip_物品.品质 >= 5 and o_equip_物品.级别 >= 5 then --传家品质的高级别装备附加特效
        local int_宝物随机 = G.call('通用_取宝物随机')
        if int_随机类型 == 1 then 
            if o_equip_物品.类型 == 1 then
                o_equip_物品.特效 = 100 + math.ceil(int_宝物随机*6/100)
            elseif o_equip_物品.类型 == 2 then
                o_equip_物品.特效 = 200 + math.ceil(int_宝物随机*7/100)
            elseif o_equip_物品.类型 == 3 then
                o_equip_物品.特效 = 300 + math.ceil(int_宝物随机*4/100)
            end
            if o_equip_物品.特效 == 101 then
                o_equip_物品.生命 = 5000 + math.floor(int_宝物随机*5000/100)+ int_递增属性 * 500
            elseif o_equip_物品.特效 == 102 then
                o_equip_物品.内力 = 5000 + math.floor(int_宝物随机*5000/100)+ int_递增属性 * 500
            elseif o_equip_物品.特效 == 103 then
                o_equip_物品.生命 = 2500 + math.floor(int_宝物随机*2500/100)+ int_递增属性 * 250
                o_equip_物品.内力 = 2500 + math.floor(int_宝物随机*2500/100)+ int_递增属性 * 250
            end
        else
            if o_equip_物品.类型 == 1 then
                o_equip_物品.特效 = 100 + math.random(6)
            elseif o_equip_物品.类型 == 2 then
                o_equip_物品.特效 = 200 + math.random(7)
            elseif o_equip_物品.类型 == 3 then
                o_equip_物品.特效 = 300 + math.random(4)
            end 
            if o_equip_物品.特效 == 101 then
                o_equip_物品.生命 = math.random(5000 ,10000+ int_递增属性 * 500)
            elseif o_equip_物品.特效 == 102 then
                o_equip_物品.内力 = math.random(5000,10000+ int_递增属性 * 500)
            elseif o_equip_物品.特效 == 103 then
                o_equip_物品.生命 = math.random(2500,5000+ int_递增属性 * 250)
                o_equip_物品.内力 = math.random(2500,5000+ int_递增属性 * 250)
            end
        end

    end
    for i = 1,#str do 
        if o_equip_物品[str[i]] ~= 0 then 
            if o_equip_物品.品质 == 1 then 
                if o_equip[str[i]] > 0 then 
                    o_equip_物品[str[i]] = math.random(math.floor(o_equip_mod[str[i]] * 0.5+0.5) ,int_递增属性 +math.floor(o_equip_mod[str[i]] * 0.7+0.5))
                elseif o_equip_物品[str[i]] < 0 then 
                    o_equip_物品[str[i]] = math.random( math.floor(o_equip_mod[str[i]] * 0.7-0.5),int_递增属性 +math.floor(o_equip_mod[str[i]] * 0.5-0.5))
                end
            elseif o_equip_物品.品质 == 2 then 
                if o_equip_物品[str[i]] > 0 then 
                    o_equip_物品[str[i]] = math.random( math.floor(o_equip_mod[str[i]] * 0.7+0.5),int_递增属性 +math.floor(o_equip_mod[str[i]] * 0.9+0.5))
                elseif o_equip_物品[str[i]] < 0 then 
                    o_equip_物品[str[i]] = math.random(math.floor(o_equip_mod[str[i]] * 0.9-0.5),int_递增属性 +math.floor(o_equip_mod[str[i]] * 0.7-0.5))
                end
            elseif o_equip_物品.品质 == 3 then 
                if o_equip_物品[str[i]] > 0 then 
                    o_equip_物品[str[i]] = math.random( math.floor(o_equip_mod[str[i]] * 0.9+0.5),int_递增属性 +math.floor(o_equip_mod[str[i]] * 1.1+0.5))
                elseif o_equip_物品[str[i]] < 0 then 
                    o_equip_物品[str[i]] = math.random(math.floor(o_equip_mod[str[i]] * 1.1-0.5),int_递增属性 +math.floor(o_equip_mod[str[i]] * 0.9-0.5))
                end
            elseif o_equip_物品.品质 == 4 then 
                if o_equip_物品[str[i]] > 0 then 
                    o_equip_物品[str[i]] = math.random(math.floor(o_equip_mod[str[i]] * 1.1+0.5),int_递增属性 +math.floor(o_equip_mod[str[i]] * 1.3+0.5))
                elseif o_equip_物品[str[i]] < 0 then 
                    o_equip_物品[str[i]] = math.random( math.floor(o_equip_mod[str[i]] * 1.3-0.5),int_递增属性 +math.floor(o_equip_mod[str[i]] * 1.1-0.5))
                end
            elseif o_equip_物品.品质 == 5 then 
                if o_equip_物品[str[i]] > 0 then 
                    o_equip_物品[str[i]] = math.random(math.floor(o_equip_mod[str[i]] * 1.3+0.5),int_递增属性 +math.floor(o_equip_mod[str[i]] * 1.5+0.5))
                elseif o_equip_物品[str[i]] < 0 then 
                    o_equip_物品[str[i]] = math.random( math.floor(o_equip_mod[str[i]] * 1.5-0.5),int_递增属性 +math.floor(o_equip_mod[str[i]] * 1.3-0.5))
                end
            end
        end
    end	
end  
t['通用_取得敌方队伍特效']=function(int_特效号)
    local o_battle = G.QueryName(0x10150001)
    local 位置 = {'team1','team2','team3','team4','team5','enemy1','enemy2','enemy3','enemy4','enemy5','enemy6'}
    local result = false 
    local i_role = 0x10040000 
    for i = 6,11 do 
        if o_battle[位置[i]] > 0 then
            if G.QueryName(i_role + o_battle[位置[i]] ).生命 > 0 then
                if G.call('通用_取得人物特效',o_battle[位置[i]],int_特效号) then 
                    result = true 
                    break
                end
            end
        end
    end    
    return result
end
t['通用_取得我方队伍特效']=function(int_特效号)
    local o_battle = G.QueryName(0x10150001)
    local 位置 = {'team1','team2','team3','team4','team5','enemy1','enemy2','enemy3','enemy4','enemy5','enemy6'}
    local result = false 
    local i_role = 0x10040000 
    if G.call('通用_取得人物特效',0,int_特效号) and o_battle.模式 < 4 then
        result = true 
    else
        for i = 2,5 do 
            if o_battle[位置[i]] > 0 then
                if G.QueryName(i_role + o_battle[位置[i]] ).生命 > 0 then
                    if G.call('通用_取得人物特效',o_battle[位置[i]],int_特效号) then 
                        result = true 
                        break
                    end
                end
            end
        end
    end  
    return result
end
t['通用_取得我方装备特效']=function(int_特效号)
    local o_battle = G.QueryName(0x10150001)
    local 位置 = {'team1','team2','team3','team4','team5','enemy1','enemy2','enemy3','enemy4','enemy5','enemy6'}
    local result = false 
    local i_role = 0x10040000 
    if G.call('通用_取得装备特效',0,int_特效号) and o_battle.模式 < 4 then
        result = true 
    else
        for i = 2,5 do 
            if o_battle[位置[i]] > 0 then
                if G.QueryName(i_role + o_battle[位置[i]] ).生命 > 0 then
                    if G.call('通用_取得装备特效',o_battle[位置[i]],int_特效号) then 
                        result = true 
                        break
                    end
                end
            end
        end
    end
    return result
end
t['通用_取得敌方装备特效']=function(int_特效号)
    local o_battle = G.QueryName(0x10150001)
    local 位置 = {'team1','team2','team3','team4','team5','enemy1','enemy2','enemy3','enemy4','enemy5','enemy6'}
    local result = false 
    local i_role = 0x10040000 
    for i = 6,11 do 
        if o_battle[位置[i]] > 0 then
            if G.QueryName(i_role + o_battle[位置[i]] ).生命 > 0 then
                if G.call('通用_取得装备特效',o_battle[位置[i]],int_特效号) then 
                    result = true 
                    break
                end
            end
        end
    end
    return result
end
t['通用_取得NPC内功效果']=function(int_编号,int_效果)
    local o_body = G.QueryName(0x10030001)
    local o_role = o_body
    local result = 0 
    if int_编号 > 0 then
        o_role = G.QueryName(0x10040000 + int_编号)
    else
        return 0
    end
    for i = 1,4 do
        if o_role['技能'..i] then 
            local o_skill = G.QueryName(o_role['技能'..i])
            if o_skill.内功轻功效果 ==  int_效果 then 
                result = o_skill.效果等级
                break
            end
        end
    end
    return result
end
t['通用_取得人物特效']=function(int_编号,int_特效号)
    local o_body = G.QueryName(0x10030001)
    local o_battle = G.QueryName(0x10150001)
    local o_role = o_body
    local result = false 
    if int_编号 > 0 then
        o_role = G.QueryName(0x10040000 + int_编号)
    end
    for i = 110,115 do
        if o_role[tostring(i)] ==  int_特效号 then 
            result = true
            break
        end
    end
    if G.misc().被动开关 == 0 and int_编号 == 0 then 
        result = false
    end
    return result
end
t['通用_取得装备减伤效果']=function(int_编号)
    local 装备 = {'头戴','手戴','脚穿','印记'}
    local o_body = G.QueryName(0x10030001)
    local o_role = o_body
    local result = false
    if int_编号 > 0 then
        o_role = G.QueryName(0x10040000 + int_编号)
    end
    local int_减伤 = 0
    for i = 1,4 do
        if o_role[装备[i]] then 
            local o_equip = G.QueryName(o_role[装备[i]]) 
            int_减伤 = int_减伤 + o_equip.减伤
        end
    end
    return int_减伤
end
t['通用_取得装备左右效果']=function(int_编号)
    local 装备 = {'头戴','手戴','脚穿','印记'}
    local o_body = G.QueryName(0x10030001)
    local o_role = o_body
    local result = false
    if int_编号 > 0 then
        o_role = G.QueryName(0x10040000 + int_编号)
    end
    local int_左右 = 0
    for i = 1,4 do
        if o_role[装备[i]] then 
            local o_equip = G.QueryName(o_role[装备[i]]) 
            int_左右 = int_左右 + o_equip.左右
        end
    end
    return int_左右
end
t['通用_取得装备斗转效果']=function(int_编号)
    local 装备 = {'头戴','手戴','脚穿','印记'}
    local o_body = G.QueryName(0x10030001)
    local o_role = o_body
    local result = false
    if int_编号 > 0 then
        o_role = G.QueryName(0x10040000 + int_编号)
    end
    local int_斗转 = 0
    for i = 1,4 do
        if o_role[装备[i]] then 
            local o_equip = G.QueryName(o_role[装备[i]]) 
            int_斗转 = int_斗转 + o_equip.斗转
        end
    end
    return int_斗转
end
t['通用_取得装备特效']=function(int_编号,int_特效号)
    local 装备 = {'头戴','手戴','脚穿','印记'}
    local o_body = G.QueryName(0x10030001)
    local o_role = o_body
    local result = false
    local int_特效类型 = math.floor(int_特效号/100)
    if int_编号 > 0 then
        o_role = G.QueryName(0x10040000 + int_编号)
    end
    if o_role[装备[int_特效类型]]  then 
        local o_equip = G.QueryName(o_role[装备[int_特效类型]])
        if o_equip.特效 == int_特效号 then
           result = true
        end
        if o_equip.转换次数 < 2  and o_equip.类型 == 4 then 
            result = false
        end
    end
    return result
end
t['通用_取得套装']=function(int_编号,int_套装号)
    local 装备 = {'头戴','手戴','脚穿'}
    local o_body = G.QueryName(0x10030001)
    local int_套装数 = 0
    local o_role = o_body
    if int_编号 > 0 then
        o_role = G.QueryName(0x10040000 + int_编号)
    end
    for i = 1,3 do
        if o_role[装备[i]] then 
            local o_equip = G.QueryName(o_role[装备[i]]) 
            if o_equip.套装 == int_套装号 then 
                int_套装数 = int_套装数 + 1
            end
        end
    end
    return int_套装数
end  
t['通用_取得内功轻功特效']=function(int_编号,int_效果)
    local result = false
    local o_body = G.QueryName(0x10030001)
    local o_role = o_body
    if int_编号 == 0 then
        if (G.call('get_point',196) and G.QueryName(G.call('get_point',196) ).内功轻功效果 == int_效果)  or (G.call('get_point',197) and G.QueryName(G.call('get_point',197) ).内功轻功效果 == int_效果)  then 
            result = true
        end
    else
        o_role = G.QueryName(0x10040000 + int_编号)
        for i = 1,4 do 
            local i_skill = o_role['技能'..i]
            if i_skill  and G.QueryName(i_skill).内功轻功效果 == int_效果 then 
                result = true
                break
            end
        end

    end
    return result
end
t['通用_卸下装备']=function(i_role,i_equip)
    local int_生命 = 0
    local int_内力 = 0
    local int_内功 = 0
    local int_拆招 = 0
    local int_搏击 = 0
    local int_闪躲 = 0
    local int_轻身 = 0
    local int_套装号 = 0
    local int_套装数 = 0
    local 效果 = {'生命','内力','拆招','搏击','闪躲','内功','轻身'}
    local 装备 = {'头戴','手戴','脚穿','印记'}
    local int_属性 = {int_生命,int_内力,int_拆招,int_搏击,int_闪躲,int_内功,int_轻身}
    local o_role = G.QueryName(i_role)
    local o_equip = G.QueryName(i_equip) 
    for i = 1,7 do
        int_属性[i] = -o_equip[效果[i]] 
    end 
    local int_队员编号 = i_role - 0x10040000
    local int_生命_1 = 0
    local int_生命_2 = 0
    local int_内力_1 = 0
    local int_内力_2 = 0
    for i = 1,6 do 
        if G.call('通用_取得套装',int_队员编号,i) >= 2 then
            int_套装数 = G.call('通用_取得套装',int_队员编号,i)
            int_套装号 = i 
            break
        end
    end
    if int_套装数 >= 2 then 
        int_生命_1 =  2500 * (int_套装数- 1)
        int_内力_1 =  2500 * (int_套装数- 1)
    end
    o_role[装备[o_equip.类型]] = nil
    int_套装号 = 0
    int_套装数 = 0
    for i = 1,6 do 
        if G.call('通用_取得套装',int_队员编号,i) >= 2 then
            int_套装数 = G.call('通用_取得套装',int_队员编号,i)
            int_套装号 = i 
            break
        end
    end
    if int_套装数 >= 2 then 
        int_生命_2 =  2500 * (int_套装数- 1)
        int_内力_2 =  2500 * (int_套装数- 1)
    end
    int_生命 = int_生命_2 - int_生命_1 
    int_内力 = int_内力_2 - int_内力_1
    for i = 1,6 do 
        G.call('add_role',int_队员编号,900+i,int_属性[i])
        G.call('add_role',int_队员编号,i,int_属性[i])
    end
    G.call('add_role',int_队员编号,901,int_生命)
    G.call('add_role',int_队员编号,902,int_内力)
    G.call('add_role',int_队员编号,908,int_属性[7])
    G.call('add_role',int_队员编号,1,int_生命)
    G.call('add_role',int_队员编号,2,int_内力)
    G.call('add_role',int_队员编号,8,int_属性[7])
    G.call('add_role',int_队员编号,15,int_生命)
    G.call('add_role',int_队员编号,14,int_内力)
    if G.call('get_role',int_队员编号,15) < 0 then 
        G.call('set_role',int_队员编号,15,1)
    end
end
t['通用_替换装备']=function(i_role,i_equip)
    local int_生命 = 0
    local int_内力 = 0
    local int_内功 = 0
    local int_拆招 = 0
    local int_搏击 = 0
    local int_闪躲 = 0
    local int_轻身 = 0
    local int_套装号 = 0
    local int_套装数 = 0
    local 效果 = {'生命','内力','拆招','搏击','闪躲','内功','轻身'}
    local 装备 = {'头戴','手戴','脚穿','印记'}
    local int_属性 = {int_生命,int_内力,int_拆招,int_搏击,int_闪躲,int_内功,int_轻身}
    local o_role = G.QueryName(i_role)
    local o_equip_2 = G.QueryName(i_equip) 
    if o_role[装备[o_equip_2.类型]] then
        local o_equip_1 = G.QueryName(o_role[装备[o_equip_2.类型]])
        for i = 1,7 do
            int_属性[i] = o_equip_2[效果[i]] - o_equip_1[效果[i]]
            if i < 3 and (o_equip_2[效果[i]] > 15000 or o_equip_1[效果[i]] > 15000) then 
                G.call('通用_强退游戏') 
            elseif i > 2 and (o_equip_2[效果[i]] > 100 or o_equip_1[效果[i]] > 100) then 
                G.call('通用_强退游戏') 
            end
        end
    else
        for i = 1,7 do
            int_属性[i] = o_equip_2[效果[i]] 
        end 
    end
    local int_队员编号 = i_role - 0x10040000
    local int_生命_1 = 0
    local int_生命_2 = 0
    local int_内力_1 = 0
    local int_内力_2 = 0
    for i = 1,6 do 
        if G.call('通用_取得套装',int_队员编号,i) >= 2 then
            int_套装数 = G.call('通用_取得套装',int_队员编号,i)
            int_套装号 = i 
            break
        end
    end
    if int_套装数 >= 2 then 
        int_生命_1 =  2500 * (int_套装数- 1)
        int_内力_1 =  2500 * (int_套装数- 1)
    end
    o_role[装备[o_equip_2.类型]] = i_equip
    int_套装号 = 0
    int_套装数 = 0
    for i = 1,6 do 
        if G.call('通用_取得套装',int_队员编号,i) >= 2 then
            int_套装数 = G.call('通用_取得套装',int_队员编号,i)
            int_套装号 = i 
            break
        end
    end
    if int_套装数 >= 2 then 
        int_生命_2 =  2500 * (int_套装数- 1)
        int_内力_2 =  2500 * (int_套装数- 1)
    end
    int_生命 = int_生命_2 - int_生命_1 
    int_内力 = int_内力_2 - int_内力_1
    for i = 1,6 do 
        G.call('add_role',int_队员编号,900+i,int_属性[i])
        G.call('add_role',int_队员编号,i,int_属性[i])
    end
    G.call('add_role',int_队员编号,901,int_生命)
    G.call('add_role',int_队员编号,902,int_内力)
    G.call('add_role',int_队员编号,908,int_属性[7])
    G.call('add_role',int_队员编号,1,int_生命)
    G.call('add_role',int_队员编号,2,int_内力)
    G.call('add_role',int_队员编号,8,int_属性[7])
    G.call('add_role',int_队员编号,15,int_生命)
    G.call('add_role',int_队员编号,14,int_内力)
end
t['通用_抽礼物']=function(int_类型,int_随机类型,int_通关级别,int_品质级别,int_递增属性)
    local o_store = G.QueryName(0x10190001)
    local int_继承个数 = 0
    for i = 1,#o_store.装备 do
        if o_store.装备[i].数量 > 0 then
            int_继承个数 = int_继承个数 + 1  
        end  
    end
    if int_继承个数 >= 200 then
        G.call('notice1','装备过多请速度分解')
        return  
    end
    local int_级别 = 1
    local int_几率 = math.random(10000)
    local int_礼物 = 1
    if int_随机类型 == 1 then 
        int_几率 = G.call('通用_取大随机')
    end
    if int_通关级别 and int_通关级别 == 1 then 
        int_几率 = math.random(9400,10000)
    elseif int_通关级别 and int_通关级别 == 2 then 
        int_几率 = math.random(9900,10000)
    else
        local int_寻宝 = 0
        if G.call('通用_取得套装',0,2) == 2 then
            int_寻宝 = 50
        elseif G.call('通用_取得套装',0,2) == 3 then 
            int_寻宝 = 100
        end
        if G.call('get_point',115) == 16 then
            int_寻宝 = 50 
        end
        int_几率 = int_几率 + int_寻宝
    end
    if int_几率 <= 5390 then --0.539 
        int_级别 = 1
    elseif int_几率 <= 8390 and int_几率 > 5390 then  --0.30
        int_级别= 2
    elseif int_几率 <= 9390 and int_几率 > 8390 then --0.10
        int_级别 = 3
    elseif int_几率 <= 9890 and int_几率 > 9390 then --0.05
        int_级别 = 4
    elseif int_几率 <= 9990 and int_几率 > 9890 then  --0.01
        int_级别 = 5
    elseif  int_几率 > 9990 then  --0.001
        int_级别 = 6
    end
    if int_随机类型 == 1 then 
        int_几率 = G.call('通用_取宝物随机')
    else
        int_几率 = math.random(100)
    end
    if int_类型 > 3 then
        if int_随机类型 == 1 then 
            local int_随机数 = G.call('通用_取宝物随机')
            int_类型 = math.ceil(int_随机数*3/100)
        else
            int_类型 = math.random(3) 
        end
    end
    if int_类型 == 1 then
        if int_级别 == 1 then 
            if int_几率 > 50 then 
                int_礼物 = 6
            else
                int_礼物 = 1
            end
        elseif int_级别 == 2 then
            if int_几率 > 50 then 
                int_礼物 = 7
            else
                int_礼物 = 3
            end
        elseif int_级别 == 3 then
            if int_几率 > 50 then 
                int_礼物 = 8
            else
                int_礼物 = 2
            end
        elseif int_级别 == 4 then
            int_礼物 = 4
        elseif int_级别 == 5 then
            int_礼物 = 5
        elseif int_级别 == 6 then
            int_礼物 = math.max(1,7*int_几率/100) + 8
        end
    elseif  int_类型 == 3 then
        if int_级别 == 1 then 
            int_礼物 = 16
        elseif int_级别 == 2 then
            int_礼物 = 17
        elseif int_级别 == 3 then
            if int_几率 > 50 then 
                int_礼物 = 18
            else
                int_礼物 = 20
            end
        elseif int_级别 == 4 then
            int_礼物 = 19
        elseif int_级别 == 5 then
            if int_几率 > 50 then 
                int_礼物 = 21
            else
                int_礼物 = 22
            end
        elseif int_级别 == 6 then
            int_礼物 = math.max(1,7*int_几率/100) + 22
        end
    elseif  int_类型 == 2 then
        if int_级别 == 1 then 
            int_礼物 = 30
        elseif int_级别 == 2 then
            int_礼物 = 31
        elseif int_级别 == 3 then
            int_礼物 = 32
        elseif int_级别 == 4 then
            int_礼物 = 34
        elseif int_级别 == 5 then
            int_礼物 = 33
        elseif int_级别 == 6 then
            int_礼物 = math.max(1,6*int_几率/100) + 34
        end
    end
    local i_equip = 0x10180000 + int_礼物
    G.call('produce_equip',i_equip,1,int_随机类型,int_品质级别,int_递增属性)
end
t['通用_发放礼包']=function()
    if G.misc().礼包 == nil or (G.misc().礼包 == 1 and G.call('get_point',4) < 50) then
        G.call('notice1','礼包需入[03]聚贤庄[01]且等级超过[03]50级[01]才能领取！')
    elseif G.misc().礼包 == 0  then
        G.call('notice1','你已经领取过该礼包，请[03]下周目[01]再来领取！')
    elseif G.misc().礼包 == 1 and G.call('get_point',4) >= 0  then
        G.call('add_item',340,50 + G.call('通用_取宝物随机')) 
        G.misc().礼包 = 0
    end 
end
t['count_inversion']=function(_table_数组) --逆序数计算
    local inversions = 0
    for i=1,#_table_数组 do
        for j=i+1,#_table_数组 do
            if _table_数组[i] > _table_数组[j] then
                inversions = inversions + 1
            end
        end
    end
    print('count_inversion='..inversions)
    return inversions
end
t['通用_取得青龙附加效果']=function(int_编号,i_skill) 
    if int_编号 < 0 or not i_skill or i_skill == nil  then 
        return false
    end
    local 装备 = {'头戴','手戴','脚穿','印记'}
    local o_body = G.QueryName(0x10030001)
    local o_role = o_body
    local o_skill = G.QueryName(i_skill)
    local int_武功类型 = o_skill.类别 + 1
    local result = false
    if int_编号 > 0 then
        o_role = G.QueryName(0x10040000 + int_编号)
    end
    if G.call('通用_取得人物特效',int_编号,24) or G.call('通用_取得人物特效',int_编号,25 + int_武功类型)  or G.call('通用_取得装备特效',int_编号,304) or G.call('通用_取得装备特效',int_编号,400+int_武功类型)  then 
        result = true
    end
    return result
end
t['通用_拥有印记']=function(int_印记) 
    local o_store = G.QueryName(0x10190001)
    local 印记名称 = {'飞','雪','连','天','射','白','鹿','笑','书','神','侠','倚','碧','鸳','越'}
    local result = false
    if #o_store.装备 > 0 then 
        for i = 1,#o_store.装备 do
            local i_equip = o_store.装备[i].代码
            local o_equip = G.QueryName(i_equip)
            if o_equip.名称 == 印记名称[int_印记]   then 
                result = true
                break
            end
        end
    end
    return result
end
t['通用_印记状态']=function()
    local book_story_list = G.DBTable('o_book_story_list')
    for i = 1,#book_story_list do
        local o_book_story_list = G.QueryName(0x101e0000 + i)
        if o_book_story_list.完美 == 1 then
            local i_equip = 0x10180028 + i
            local o_equip = G.QueryName(i_equip)
            o_equip.转换次数 = 2
        end
    end
end
t['模式_笑梦游记']=function() 
    local ui = G.addUI('v_heaven_book')
    local c = ui.c_heaven_book
    G.wait1('选择天书结束')
    local int_天书 = c.天书
    G.removeUI('v_heaven_book')
    local str = {'飞狐外传','雪山飞狐','连城诀','天龙八部','射雕英雄传','白马啸西风','鹿鼎记','笑傲江湖','书剑恩仇录','神雕侠侣','侠客行','倚天屠龙记','碧血剑','鸳鸯刀','越女剑'}
    if int_天书 > 0 then 
        local o_book_story = G.QueryName(0x101c0000 + int_天书)
        local o_achieve_xmyj = G.QueryName(0x10170017).进度列表[int_天书]
        if G.call('通用_拥有印记',int_天书)   then 
            if o_book_story.完成 == 0 then 
                G.call('天书_'..str[int_天书])
                local o_book_story_list = G.QueryName(0x101e0000 + int_天书)
                if o_book_story.完美 == 1 and o_book_story_list.完美 == 0 then
                    o_book_story_list.完美 = 1
                end
                if o_book_story.完成 == 1 and o_achieve_xmyj.完成 == 0 then
                    o_achieve_xmyj.完成 = 1
                    G.call('notice1','完成成就【'..str[int_天书]..'】！')
                end
                G.call('通用_印记状态')
            else
                G.call("talk",'',38,'   你已经完成【'..str[int_天书]..'】！',2,1)
            end
            G.call('all_over')
        else
            G.call("talk",'',38,'   你还没有【'..str[int_天书]..'】的印记无法发展此模式！',2,1)
            G.call('all_over')
        end
        if G.QueryName(0x10170017).完成 == 0 then
            local int_完成数 = 0
            for i  = 1,#o_achieve_xmyj do 
                if o_achieve_xmyj.完成 == 1 then
                    int_完成数 = int_完成数 + 1 
                end
            end
            if int_完成数 == 15 then
                G.QueryName(0x10170017).完成 = 1
                G.call('notice1','完成成就【笑梦游记】！') 
            end 
        end
    end
end
t['通用_神秘商店']=function() 
    local result = false
    G.addUI('v_mystery_store')
    local ui = G.getUI('v_mystery_store')
    local c = ui.c_mystery_store
    G.wait1('神秘结束')
    G.removeUI('v_mystery_store')
    result = c.交易
    return result
end
t['通用_神秘结算']=function()
    if not G.getUI('v_mystery_store') then return end
    local ui = G.getUI('v_mystery_store')
    local c = ui.c_mystery_store
    local int_总价 = 0
    local int_讲价 = G.call('get_point',36)/4
    local o_store = G.QueryName(0x101d0001)
    if G.call('通用_取得我方装备特效',411) then 
        int_讲价 = int_讲价 + 25
    end
    for i = 1,#o_store.物品 do 
        if o_store.物品[i].数量 > 0 then 
            local int_价格 = o_store.物品[i].价格
            int_价格 = math.floor(int_价格 *(100-int_讲价)/100)
            int_总价 = int_总价 + int_价格* o_store.物品[i].数量
        end
    end
    if G.call('get_point',110) > int_总价 then
        c.交易 = true
        G.call('add_money',-int_总价)
        for i = 1,#o_store.物品 do 
            if o_store.物品[i].数量 > 0 then 
                local i_item = o_store.物品[i].物品
                local int_item = i_item - 0x100b0000 + 1
                G.call('add_item',int_item,o_store.物品[i].数量)
            end
        end
        c:刷新显示(c.页数,c.当前序号)
    else
        G.call("talk",'',148,'   你这貌似钱不够买那多，请减去部分再试试！',2,1)
        G.call('all_over')
    end
end