--[[0

]]
local G = require "gf"
local t = G.api
local L = {}
local GF = require "gfbase"
--type=系统
--hide=false
--private=false
t['初始化'] = function()
-->	G.log("欢迎使用梦江湖编辑器")
-->	G.addUI("v_helloworld")
	math.randomseed(tostring(os.time()):reverse():sub(1, 6)) --随机种子
	--下面为人物头像，物品图像，技能图像赋值
	local item =G.DBTable('o_item')
	local skill =G.DBTable('o_skill')
	local role =G.DBTable('o_role')
	for i = 1,#item do
		G.QueryName(0x100b0000 + i).图标 = 0x560e0000 + i
	end	
	for i = 1,#skill do
		G.QueryName(0x10050000 + i).图像 = 0x560c0000 + i
	end	
	for i = 1,#role  do
		if 0x56080000 + i ~= nil then 
		    G.QueryName(0x10040000 + i).头像 = 0x56080000 + i
		end
		-- if 0x33060000 + i ~= nil  then 
		-- 	G.QueryName(0x10040000 + i).站立图像 = 0x33060000 + i
		-- end
	end	
	G.QueryName(0x10060002).城市列表[10].位置.x = 200
	G.QueryName(0x10060002).城市列表[10].位置.y = 280
	G.QueryName(0x10060003).城市列表[8].位置.x = 200
	G.QueryName(0x10060003).城市列表[8].位置.y = 280
	G.QueryName(0x10060022).城市列表[3].位置.x = 50
	G.QueryName(0x10060022).城市列表[3].位置.y = 270
	G.QueryName(0x1006002e).城市列表[4].位置.x = 400
	G.QueryName(0x1006002e).城市列表[4].位置.y = 250
	local role = G.DBTable('o_role')
	for i = 1,#role do 
		for p = 81,90 do 
			G.QueryName(0x10040000 + i)[tostring(p)] = 0
			G.QueryName(0x10040000 + i)[tostring(p+10)] = 0
		end 
		for n = 10,12 do
			if G.QueryName(0x10040000 + i)[tostring(n)] ~= nil then 
			    G.QueryName(0x10040000 + i)[tostring(n)] = G.QueryName(0x10040000 + i)[tostring(n)] + 1
			end 
	    end
	end 
	local map = G.DBTable('o_citymap_system_map')	
	for i ,v in pairs(map) do  --地图布局偏移
		for n = 1,#v.城市列表 do
			if v.城市列表[n].城市 and v.城市列表[n].位置 and v.城市列表[n].位置.x and v.城市列表[n].位置.y then
				v.城市列表[n].位置.x = v.城市列表[n].位置.x + 110
            end
        end
	end		
	G.misc().code = 0
	G.call('goto_map',1)
	G.misc().木桩 = 0
	G.misc().通关 = 0
	G.misc().密令 = ''
	G.misc().密令年数 = 0
	G.misc().切磋次数 = 0
	G.misc().重生 = 0
	G.misc().出师 = nil
	G.misc().礼包 = nil
	G.call('通用_存档',0)
	G.start_program("地图系统_初始化地图系统")
	G.start_program('地图系统_事件响应')
	G.start_program('地图系统_人物')
	G.start_program('地图系统_聚贤庄任务')
	G.start_program('地图系统_功能')
	G.start_program('地图系统_提示')
	G.call('mapoff') 
    G.call('call_title')      --开始游戏界面  
end
t['地图系统_提示'] = function()
	while true do
		G.case(1, '提示结束')
		G.case(2, '监控')
		local r = G.wait_case();
		if r == 1 then
			G.wait_time(1200)
			G.removeUI('v_prompt1')
		elseif r == 2 then 
			G.call('地图系统_防修改监控')
		end	
	end
end	
t['地图系统_游戏时长监控'] = function()
	if G.misc().通天塔进行时间 == nil then 
		G.misc().通天塔进行时间 = 1
		G.misc().通天塔监控 = -8
	end
	while true do 
		G.wait_time(60000)
		if G.misc().通天塔进行时间 == nil then 
			G.misc().通天塔进行时间 = 1
			G.misc().通天塔监控 = -8
		end
		if G.misc().通天塔进行时间 > 0 then 
			G.misc().通天塔进行时间 = G.misc().通天塔进行时间 + 1
			G.misc().通天塔监控 = G.misc().通天塔监控 - 1
		end
	end
end
t['地图系统_游戏加速监控'] = function()
	G.misc().游戏时间 = 0
	G.misc().监控时间 = -7
	while true do 
		G.wait_time(60000) 
		G.misc().游戏时间 = G.misc().游戏时间 + 1
		G.misc().监控时间 = G.misc().监控时间 - 1
		if G.misc().游戏时间 ~= math.abs(G.misc().监控时间+7) then
			G.call('通用_强退游戏')  
		end
		if G.misc().测试 == 1 then 
			G.call('notice1','游戏时间'..G.misc().游戏时间..'时间差'..G.call('通用_读取时间差'))
		end
		if G.misc().游戏时间%5 == 0 then
			if G.misc().游戏时间 - G.call('通用_读取时间差')   > 2 then
				G.call('通用_强退游戏')
			end 
		end

	end
end
t['地图系统_防修改监控'] = function()
	G.call('通用_重置检测')
	local int_成就 = G.QueryName(0x10170002).进度列表[1].当前进度 + G.QueryName(0x10170004).进度列表[1].当前进度+ G.QueryName(0x10170005).进度列表[1].当前进度 + G.QueryName(0x10170007).进度列表[1].当前进度+ G.QueryName(0x10170008).进度列表[1].当前进度+ G.QueryName(0x1017000a).进度列表[1].当前进度+ G.QueryName(0x1017000b).进度列表[1].当前进度+ G.QueryName(0x10170015).进度列表[1].当前进度+ G.QueryName(0x10170014).进度列表[1].当前进度+ G.QueryName(0x10170012).进度列表[6].当前进度+ G.QueryName(0x10170011).进度列表[1].当前进度+ G.QueryName(0x10170009).进度列表[1].当前进度
    local int_检测 = 0
	if int_成就 ~= math.abs(G.call('get_newpoint',80)+2000) then 
		--print('成就',int_成就,G.call('get_newpoint',80))
		int_检测 = int_检测 + 1
	end
	if G.call('get_point',237) ~= math.abs(G.call('get_newpoint',237) + 10 )  then
		--print('周目',G.call('get_point',237),G.call('get_newpoint',237))
		int_检测 = int_检测 + 1
	end
	if G.call('get_point',237) == 1 then return end
	local o_body = G.QueryName(0x10030001)
	local o_newbody = G.QueryName(0x101b0001)
	if G.call('get_point',5) ~= math.abs(G.call('get_newpoint',5) + 10)  then
		--print('修为点',G.call('get_point',5),G.call('get_newpoint',5))
		int_检测 = int_检测 + 1
	end 
	if G.call('get_point',4) ~= math.abs(G.call('get_newpoint',4)+10)  then
		--print('等级',G.call('get_point',4),G.call('get_newpoint',4))
		int_检测 = int_检测 + 1
	end
	if G.call('get_point',110) ~= math.abs(G.call('get_newpoint',110)+2000)  then
		print('金钱',G.call('get_point',110),G.call('get_newpoint',110))
		int_检测 = int_检测 + 1
	end
	if G.call('get_point',45) ~= math.abs(G.call('get_newpoint',45) + 10)  then
		--print('HP',G.call('get_point',45),G.call('get_newpoint',45))
		int_检测 = int_检测 + 1 
	end 
	if G.call('get_point',47) ~= math.abs(G.call('get_newpoint',47) + 10)  then
		--print('MP',G.call('get_point',47),G.call('get_newpoint',47))
		int_检测 = int_检测 + 1
	end
	if G.call('get_point',63) ~= math.abs(G.call('get_newpoint',63) + 10)  then
		--print('北冥',G.call('get_point',63),G.call('get_newpoint',63))
		int_检测 = int_检测 + 1 
	end
	-- if G.call('get_point',130) ~= math.abs(G.call('get_newpoint',130) + 10)  then
	-- 	print('本金',G.call('get_point',130),G.call('get_newpoint',130))
	-- 	G.call('通用_强退游戏') 
	-- end
	if G.call('get_magicexp',83) ~= math.abs(G.call('get_newpoint',77) + 10) then 
		--print('野球拳',G.call('get_magicexp',83),G.call('get_newpoint',77))
		int_检测 = int_检测 + 1
	end
	local int_物品数量 = 0
	local item = G.DBTable('o_item')
    for i = 1,#item do
        local o_item = G.QueryName(0x100b0000 + i)
        if o_item.数量 then
            int_物品数量 = int_物品数量 + o_item.数量 
        end
	end
	if int_物品数量 ~= math.abs(G.call('get_newpoint',76)+2000) then 
		print('物品数量',int_物品数量,G.call('get_newpoint',76))
		int_检测 = int_检测 + 1
	end
	print('int_检测',int_检测)
	G.call('通用_队伍检测') 
	if int_检测 > 0 and int_检测 < 9 then
		G.call('通用_强退游戏',299)  
	end
	if int_检测 == 9 then
		G.call('指令_备份基础属性')
	end
	if G.call('get_newpoint',115) == 0  then 
		G.call('set_newpoint',115,-10-G.call('get_point',115)) 
	end
	for i = 111,115 do
		if G.call('get_point',i) ~= math.abs(G.call('get_newpoint',i) + 10)  then 
			--print(i,G.call('get_point',i),G.call('get_newpoint',i)+10)
			G.call('通用_强退游戏',211) 
			break
		end
	end
	for i = 120,124 do
		if G.call('get_point',i) ~= math.abs(G.call('get_newpoint',i))  then 
			--print(i,G.call('get_point',i),G.call('get_newpoint',i))
			G.call('通用_强退游戏',212) 
			break
		end
	end
	for i = 16,35 do 
		if i < 22 then 
			if G.call('get_point',i) > 100 then 
				--print(i,G.call('get_point',i),G.call('get_newpoint',i))
				G.call('通用_强退游戏',213)
			end
		end
		if G.call('get_point',i) ~=  math.abs(G.call('get_newpoint',i) + 10)  then
			--print(i,G.call('get_point',i),G.call('get_newpoint',i))
			G.call('通用_强退游戏',214) 
			break
		end
	end
	local o_team = G.QueryName(0x10110001)
	for j = 1,12 do 
		local i_team = o_team[tostring(j)]
		if i_team ~= nil then
			local o_role_人物 = G.QueryName( i_team)
			for i = 1,8 do 
				if o_role_人物[tostring(900 + i)] and o_role_人物[tostring(i)] > o_role_人物[tostring(900 + i)] then 
					o_role_人物[tostring(i)] = o_role_人物[tostring(900 + i)]
				end
			end
		end
	end		
end
t['地图系统_功能'] = function()
	while true do
        G.case(1, '创建角色')
		G.case(2, '读取存档')
		G.case(3, '打猎动画关闭')
		G.case(4, '等级提升')
		G.case(5, '测试')
		G.case(6, '重生')
		G.case(8, '转换装备')
		G.case(9, '强制退出')
		G.case(7, '内部测试')
		G.case(10, '系统测试')
		G.case(11, '神秘结算')
		G.case(12, '主角自宫')
		G.case(13, '队友自宫')
        local r = G.wait_case();
        if r == 1  then 
			G.call('create')
		elseif r == 2  then 
			G.call('load')
		elseif r == 3  then 
			G.call('打猎动画关闭')
		elseif r == 7  then 
			G.call('in_test')
		elseif r == 10  then 
			G.call('new_test')
		elseif r == 5  then 
			G.call('test')
		elseif r == 6  then 
			G.call('重生')
		elseif r == 11  then 
			G.call('通用_神秘结算') 
		elseif r == 12  then 
			G.call('通用_自宫_1') 
		elseif r == 13  then 
			G.call('通用_自宫_2') 
		elseif r == 9  then 
			G.call('通用_强退游戏') 
		elseif r == 8  then
			G.call('通用_转换装备',G.misc().转换装备) 
        end
    end    
end  
t['地图系统_事件响应'] = function()
	local ui ;
	if not G.getUI('v_citymap_system_map') then 
		return
	end 
    ui = G.getUI('v_citymap_system_map');
	local c = ui.c_citymap_system_map;
	while true do
		G.case(1, '休息')
		G.case(2, '战斗飘字')
		G.case(3, '宴请')
		G.case(5, '馈赠')
		G.case(4, '测试')
		G.case(6, '治疗')
		G.case(7, '切磋')
		G.case(8, '离队')
		G.case(9, '跳骰')
		G.case(10, '伐木')
		G.case(11, '钓鱼')
		G.case(12, '打猎')
		G.case(13, '挖矿')
		G.case(14, '返回标题')
		G.case(15, '木桩')
	    local r = G.wait_case();
		if r == 1 then
			G.Tween("color", 800, ui, 0)
			G.Play(0x49010035, 1,false,100) 
			G.call('地图系统_防修改监控')
			G.wait_time(1200)
			G.call('rest')
			G.Tween("color", 800, ui, 0xffffff)
			G.call('add_hour',6)
			G.call("goto_map",G.QueryName(0x10030001)[tostring(140)]-0x10060000)
			local o_gpmz =  G.QueryName(0x1017000f)
			G.call('通用_存档',G.call('get_point',143))
		elseif r == 2 then
			G.call('通用_战斗飘字')
		elseif r == 14  then 
			G.call('成就_读档',10)
			G.call('call_title')	
		elseif r == 15  then 
			G.call('call_wood')
        elseif r == 4 then
		elseif r == 3 then
			G.call('宴请')
		elseif r == 5 then
			G.call('馈赠')
		elseif r == 6 then
			G.call('治疗')
		elseif r == 7 then
			G.call('切磋')
		elseif r == 8 then
			G.call('离队')

		
		elseif r == 9 then
			local ui1 ;
			if not G.getUI('v_gambling') then 
				return
			end 
		    ui1 = G.getUI('v_gambling');
			local c = ui1.c_gambling;
			ui1.getChildByName('开始').getChildByName('一').visible = false
			ui1.getChildByName('开始').getChildByName('二').visible = false
			G.call('playmovie',4,800,8,90)
	        ui1.getChildByName('开始').getChildByName('一').visible = true
			ui1.getChildByName('开始').getChildByName('二').visible = true 
			G.wait_time(500)
			local a = math.random(6)
			local b = math.random(6)
		    local p1 
			local p2
			local c = (a + b)%2
			local p= {'单','双','小','大'}
			local BJ = G.call('get_point',130)
			local BJ1 = BJ
			if c == 0 then 
			   p1 = '双'
			   G.call('add_money',tonumber(ui1.getChildByName('显示').getChildByName('双').text )*10)
			   BJ = BJ - tonumber(ui1.getChildByName('显示').getChildByName('双').text )*5
			   BJ = BJ + tonumber(ui1.getChildByName('显示').getChildByName('单').text )*5
			elseif c == 1 then 
				G.call('add_money',tonumber(ui1.getChildByName('显示').getChildByName('单').text )*10) 
				BJ = BJ + tonumber(ui1.getChildByName('显示').getChildByName('双').text )*5
				BJ = BJ - tonumber(ui1.getChildByName('显示').getChildByName('单').text )*5
				p1 = '单'  
			end 
			if a + b > 6 then 
				G.call('add_money',tonumber(ui1.getChildByName('显示').getChildByName('大').text )*10)
				BJ = BJ - tonumber(ui1.getChildByName('显示').getChildByName('大').text )*5
				BJ = BJ + tonumber(ui1.getChildByName('显示').getChildByName('小').text )*5
				p2 = '大'	
			elseif a + b <= 6 then 	
				G.call('add_money',tonumber(ui1.getChildByName('显示').getChildByName('小').text )*10)	
				BJ = BJ + tonumber(ui1.getChildByName('显示').getChildByName('大').text )*5
				BJ = BJ - tonumber(ui1.getChildByName('显示').getChildByName('小').text )*5	 
				p2 = '小'	
			end	
			local BJ2 = BJ
			local o_xdyq = G.QueryName(0x10170001)
			local o_yzwj = G.QueryName(0x10170002)
			o_yzwj.进度列表[1].当前进度 = o_yzwj.进度列表[1].当前进度 - BJ2 + BJ1
			G.call('set_newpoint',80,G.call('get_newpoint',80)- (BJ1- BJ2)    )
			G.call('set_newpoint',130,G.call('get_newpoint',130) + (BJ1- BJ2) )
			G.call('set_point',130,G.call('get_point',130) - (BJ1- BJ2) )
			ui1.getChildByName('一').text = tostring(a)
			ui1.getChildByName('二').text = tostring(b)
			ui1.getChildByName('提示2').visible = true
			ui1.getChildByName('提示2').getChildByName(tostring(1)).text = G.call('to_chinese',a + b)..'点【'..p1..'.'..p2..'】'
			G.wait_time(1500)
			if BJ2 <= 0 and o_xdyq.完成 == 0 then
				o_xdyq.进度列表[1].完成 = 1
				o_xdyq.完成 = 1
				G.call('notice1','完成成就【小赌怡情】')
			end	
			if o_yzwj.进度列表[1].当前进度 >= 10000 and o_yzwj.完成 == 0 then
				o_yzwj.进度列表[1].完成 = 1
				o_yzwj.完成 = 1
				G.call('notice1','完成成就【一掷万金】')
			end	
            for i = 1 ,4 do
                ui1.getChildByName('显示').getChildByName(p[i]).text = tostring(0)
            end 
			ui1.getChildByName('提示2').getChildByName(tostring(1)).text = '其他人下完注请您下注'
			local a1 = math.random(3) - 1
			local a2 = math.random(3) - 1
			local a3 = math.random(3) - 1
			local a4 = math.random(3) - 1
			local d = {a1,a2,a3,a4}
			for i = 1,4 do 
		        ui1.getChildByName(tostring(i)).getChildByName('注数').text = d[i]
			end 
			G.misc().下注 = 0
		elseif r == 13 then	
			local ui ;
			if not G.getUI('v_dig') then 
				return
			end 
			ui = G.getUI('v_dig');
			local c = ui.c_dig;
			G.remove_program('挖矿条',1)
			c.挖矿 = 1
			local a1 = '呀嘿—呀嘿——呀——嘿！！！'
			local a2 = '水底练功兼采矿，一举两得！'
			local a3 = '本游戏为专业人士演练，未成年人请不要在擅自效仿'
			local a4 = '水底说话会不会被呛到呢？'
			local a5 = '有谁听说过——矿石都是用肉掌一下下在海底的大岩石上拍下来的'
			local a6 = '我拍！我拍！我拍拍拍！！！'
			local a7 = '把这块石头当做是假想敌，这样拍起来就心底就爽多了'
			local a8 = '说不定我能在水中悟出【以柔克刚】之类的技击法门来'
			local a = {a1,a2,a3,a4,a5,a6,a7,a8}
			local b = a[math.random(8)]
			G.call('add_point',102,10)
            ui.getChildByName('人物').visible = false
			ui.getChildByName('动画').visible = true
			G.Play(0x49020000+191 , 1,false,100)
			G.wait_time(1000)
			ui.getChildByName('口白').text = b
			local n = tonumber(ui.getChildByName('力').text)
			local m = tonumber(ui.getChildByName('气').text)
			local p = n + m 
			local h = tonumber(ui.getChildByName('耐久').text)
			ui.getChildByName('击打值').text = tostring(p)
			if p > h then 
				ui.getChildByName('耐久').text = '0'
				c.挖矿值 = 0
			else
				c.挖矿值 = c.挖矿值 + p
				ui.getChildByName('耐久').text = h - p
				if tonumber(ui.getChildByName('耐久').text) ~= math.abs(c.挖矿值) then
					G.call('通用_强退游戏',301) 
				end
			end 
			ui.getChildByName('击打值').visible = true
			if ui.getChildByName('时间').width > 0 and tonumber(ui.getChildByName('耐久').text)  > 0  then
				c.挖矿 = 0
				G.start_program('挖矿条')
			end
			G.wait_time(300) 
            ui.getChildByName('击打值').visible = false
			ui.getChildByName('人物').visible = true
			ui.getChildByName('动画').visible = false
			if tonumber(ui.getChildByName('耐久').text)  == 0 then 
				if math.random(100) > 30 then 
				    G.call('add_point',22,1)
				end 
				local a = math.random(3)
				local b = math.random(7)
				local c = math.random(7)
				local name1 = ''
			    local name2 = ''
				local name3 = ''
				local str1 = ''
				local str2 = ''
				local str3 = ''
				local r1 = math.random(3)
				local r2 = math.random(3)
				local r3 = math.random(3)
				local o_qcbl = G.QueryName(0x10170006)
				if a == 1 then 
					G.call('add_item',311,r1)
					name1 = '【铜矿】' 
					o_qcbl.进度列表[1].当前进度 = o_qcbl.进度列表[1].当前进度 + r1
					if o_qcbl.进度列表[1].当前进度 >= 100 then 
						o_qcbl.进度列表[1].完成 = 1
				    end	
				else 
					G.call('add_item',310,r1)
					name1 = '【铁矿】'
					o_qcbl.进度列表[2].当前进度 = o_qcbl.进度列表[2].当前进度 + r1
					if o_qcbl.进度列表[2].当前进度 >= 100 then 
						o_qcbl.进度列表[2].完成 = 1
				    end	
				end 
				if b == 1 then 
					G.call('add_item',312,r2)
					name2 = '【红晶矿】'
					o_qcbl.进度列表[3].当前进度 = o_qcbl.进度列表[3].当前进度 + r2
					if o_qcbl.进度列表[3].当前进度 >= 100 then 
						o_qcbl.进度列表[3].完成 = 1
				    end
				elseif b == 2 then 
					G.call('add_item',313,r2)
					name2 = '【蓝晶矿】'
					o_qcbl.进度列表[4].当前进度 = o_qcbl.进度列表[4].当前进度 + r2
					if o_qcbl.进度列表[4].当前进度 >= 100 then 
						o_qcbl.进度列表[4].完成 = 1
				    end
				elseif b == 3 then 
					G.call('add_item',314,r2)
					name2 = '【白晶矿】'
					o_qcbl.进度列表[5].当前进度 = o_qcbl.进度列表[5].当前进度 + r2
					if o_qcbl.进度列表[5].当前进度 >= 100 then 
						o_qcbl.进度列表[5].完成 = 1
				    end
				end 
				if c == 1 then 
					G.call('add_item',315,r3)
					name3 = '【玄铁矿】'
					o_qcbl.进度列表[6].当前进度 = o_qcbl.进度列表[6].当前进度 + r3
					if o_qcbl.进度列表[6].当前进度 >= 100 then 
						o_qcbl.进度列表[6].完成 = 1
				    end
				elseif c == 2 then 
					G.call('add_item',316,r3)
					name3 = '【蓝宝石】'
					o_qcbl.进度列表[7].当前进度 = o_qcbl.进度列表[7].当前进度 + r3
					if o_qcbl.进度列表[7].当前进度 >= 100 then 
						o_qcbl.进度列表[7].完成 = 1
				    end
				elseif c == 3 then 
					G.call('add_item',317,r3)
					name3 = '【红宝石】'
					o_qcbl.进度列表[8].当前进度 = o_qcbl.进度列表[8].当前进度 + r3
					if o_qcbl.进度列表[8].当前进度 >= 100 then 
						o_qcbl.进度列表[8].完成 = 1
				    end
				end 
				str1 = tostring(r1)
				if b < 4 then 
					str2 = tostring(r2)..'块 '
				end	
				if c < 4 then 
					str2 = tostring(r3)..'块'
				end	
				ui.getChildByName('口白').text = '    得到'..name1..str1..'块 '..name2..str2..name3..str3
				G.wait_time(500)
				local qcbl = 0
				if o_qcbl.完成 == 0 then
					for i = 1,8 do 
						if o_qcbl.进度列表[i].完成 == 1 then
							qcbl = qcbl + 1
						end	
					end		
					if qcbl == 8  then
						o_qcbl.完成 = 1
						G.call('notice1','完成成就【千锤百炼】')
					end	
				end
				G.trig_event('挖矿结束')
            end 
		elseif r == 10 then
			local ui3 ;
			if not G.getUI('v_logging') then 
				return
			end 
			ui3 = G.getUI('v_logging');
			local c = ui3.c_logging;
			G.remove_program('伐木条',1)
			c.伐木 = 1
			local a1 = '呀嘿—呀嘿——呀——嘿！！！'
			local a2 = '想不到我堂堂未来的救世主，却要做这种粗活'
			local a3 = '会不会有人状告我滥砍乱伐呢？'
			local a4 = '为啥砍柴非要找这么粗壮的树呢？'
			local a5 = '我不认为这是在自虐，而是被虐！'
			local a6 = '我砍！我砍！我砍砍砍！！！'
			local a7 = '把这棵树当做是假想敌，这样砍起来就愉悦多了'
			local a8 = '砍完之后，这棵树会向哪边到呢？'
			local a = {a1,a2,a3,a4,a5,a6,a7,a8}
			local b = a[math.random(8)]
			local o_mxyl = G.QueryName(0x10170007)
			G.call('add_point',101,10) 
			G.call('playmovie',5,600,1,22)
			ui3.getChildByName('口白').text = b
			local n = tonumber(ui3.getChildByName('力').text)
			local m = tonumber(ui3.getChildByName('气').text)
			local p = n + m 
			local h = tonumber(ui3.getChildByName('耐久').text)
			local t = tonumber(ui3.getChildByName('体力').text)
			ui3.getChildByName('伐木值').visible = true
			ui3.getChildByName('伐木值').text = tostring(p)
			if p > h then 
				ui3.getChildByName('耐久').text = '0'
				c.伐木值 = 0
			else
				c.伐木值 = c.伐木值 + p
				ui3.getChildByName('耐久').text = h - p
				print(ui3.getChildByName('耐久').text,c.伐木值)
				if tonumber(ui3.getChildByName('耐久').text) ~= math.abs(c.伐木值) then
					G.call('通用_强退游戏',302) 
				end
			end 
			if t - 10 > 0 then 
				ui3.getChildByName('体力').text = tostring(t - 10)	
			else
				ui3.getChildByName('体力').text = tostring(0)	
			end 
			if tonumber(ui3.getChildByName('体力').text) > 0  and tonumber(ui3.getChildByName('耐久').text) > 0 then 
				c.伐木 = 0
			    G.start_program('伐木条')
			end 
			G.wait_time(500)
			ui3.getChildByName('伐木值').visible = false
			if tonumber(ui3.getChildByName('体力').text) == 0  and tonumber(ui3.getChildByName('耐久').text) > 0 then 
				ui3.getChildByName('口白').text = '没有体力了，这棵树到底是没有砍到'
				G.trig_event('伐木结束')
			elseif tonumber(ui3.getChildByName('体力').text)  >= 0 and tonumber(ui3.getChildByName('耐久').text)  == 0 then 
				ui3.getChildByName('口白').text = '累死了，总算砍完了'
				G.call('add_point',101,50)
				G.call('add_item',280,1)
				o_mxyl.进度列表[1].当前进度 = o_mxyl.进度列表[1].当前进度 + 1
				G.call('set_newpoint',80,G.call('get_newpoint',80)- 1   )
				if o_mxyl.进度列表[1].当前进度 >= 500 and o_mxyl.完成 == 0 then 
					o_mxyl.进度列表[1].完成 = 1
					o_mxyl.完成 = 1
					G.call('notice1','完成成就【木秀于林】')
				end	
				G.trig_event('伐木结束')	
			end 
		elseif r == 11 then
			local ui2 ;
			if not G.getUI('v_fishing') then 
				return
			end 
			ui2 = G.getUI('v_fishing') 		
			local result = tonumber(ui2.getChildByName('结果').text)
			local qysl = tonumber(ui2.getChildByName('显示').getChildByName('蚯蚓').text)
			local JF = tonumber(ui2.getChildByName('显示').getChildByName('积分').text)
			local a1 = '真扫兴，啥也没有！'
			local a2 = '钓到一个【河蚌】'
			local a3 = '钓到一个【海螺】' 
			local a4 = '钓到一只【螃蟹】"'
			local a5 = '钓到一只【鳖】'
			local a6 = '钓到一条【草鱼】'
			local a7 = '钓到一条【鲤鱼】'
			local a8 = '钓到一条【娃娃鱼】'
			local a9 = '钓到一条【黄金鱼】'
			local a10 = '哇！【宝箱】里好多银子'
			local a11 = '我去,钓到一个【破木桩】'
			local a13 = '哇！【宝箱】里有口宝刀'
			local a12 = '哇！【宝箱】里有口宝剑'
			local a14 = '箱子里面没值钱的'
			local a = {a1,a2,a3,a4,a5,a6,a7,a8,a9,a10,a11,a12,a13,a14}
			local o_dyns = G.QueryName(0x10170003)
			local o_wjyd = G.QueryName(0x10170004)
			local o_dsyy = G.QueryName(0x10170005)
			ui2.getChildByName('背景').visible = true 
			G.remove_program('钓鱼水花',1)
			ui2.getChildByName('动画').visible = false
			ui2.getChildByName(tostring(3)).visible = false
			ui2.getChildByName(tostring(1)).visible = false
			if result == 0 then
				local FY = G.call('get_point',19)
				local p = math.random(100)
				if p <= 60 then  
					if p  > 30 then 
					    ui2.getChildByName('背景').getChildByName('提示').text = a[1]
						ui2.getChildByName(tostring(2)).visible = true
					else
					    ui2.getChildByName('物品').visible = true 
						ui2.getChildByName('物品').img = 0x5610001a
						ui2.getChildByName('背景').getChildByName('提示').text = a[11]
					end 	
				elseif p > 60 then 
					ui2.getChildByName('物品').visible = true 
					ui2.getChildByName('物品').img = 0x56100019
					local n = math.random(FY)
					if n < 50 then 
					   ui2.getChildByName('背景').getChildByName('提示').text = a[14]
					else
                        if n >= 50 and n <= 90 then 
							JF = JF + 50
							ui2.getChildByName('背景').getChildByName('提示').text = a[10]
							local money = math.random(100)
							G.call('add_money',money)
							G.call('add_point',19,2)
							if o_wjyd.进度列表[1].当前进度 < 20000 then
								o_wjyd.进度列表[1].当前进度 = o_wjyd.进度列表[1].当前进度 + money							
								G.call('set_newpoint',80,G.call('get_newpoint',80)- money   )
							end
						elseif n <= 100 and n > 95 then 
							JF = JF + 150
							ui2.getChildByName('背景').getChildByName('提示').text = a[12]
							G.call('add_point',19,5)
							G.call('add_item',8,1)
						elseif n <= 95 and n > 90 then 
							JF = JF + 150
							ui2.getChildByName('背景').getChildByName('提示').text = a[13]
							G.call('add_point',19,5)
							G.call('add_item',41,1)
						end 	
					end  	  
				end 
			elseif result == 1 then 
			    ui2.getChildByName('物品').visible = true 
				G.call('add_point',106,10) 
				JF = JF + 5
				local b = math.random(2,4)
				if b == 2 then 
					G.call('add_item',319,1)
					ui2.getChildByName('背景').getChildByName('提示').text = a[2]
					ui2.getChildByName('物品').img = 0x56100011
					ui2.getChildByName('显示').getChildByName(tostring(1)).text  = tostring(tonumber(ui2.getChildByName('显示').getChildByName(tostring(1)).text ) +1       )
					o_dyns.进度列表[1].当前进度 = o_dyns.进度列表[1].当前进度 + 1
					if o_dyns.进度列表[1].当前进度 >= 100 then 
						o_dyns.进度列表[1].完成 = 1
				    end		
				elseif b == 3 then 
					G.call('add_item',320,1)
					ui2.getChildByName('背景').getChildByName('提示').text = a[3]
					ui2.getChildByName('物品').img = 0x56100012
					ui2.getChildByName('显示').getChildByName(tostring(2)).text  = tostring(tonumber(ui2.getChildByName('显示').getChildByName(tostring(2)).text  ) +1)
					o_dyns.进度列表[2].当前进度 = o_dyns.进度列表[2].当前进度 + 1
					if o_dyns.进度列表[2].当前进度 >= 100 then 
						o_dyns.进度列表[2].完成 = 1
				    end	
				elseif b == 4 then 	
					G.call('add_item',325,1)
					ui2.getChildByName('背景').getChildByName('提示').text = a[4]
					ui2.getChildByName('物品').img = 0x56100013	
					ui2.getChildByName('显示').getChildByName(tostring(3)).text  = tostring(tonumber(ui2.getChildByName('显示').getChildByName(tostring(3)).text ) +1)
					o_dyns.进度列表[3].当前进度 = o_dyns.进度列表[3].当前进度 + 1
					if o_dyns.进度列表[3].当前进度 >= 100 then 
						o_dyns.进度列表[3].完成 = 1
				    end	
				end  
				
			elseif result == 2 then 
			    ui2.getChildByName('物品').visible = true 
				G.call('add_point',106,25) 
				JF = JF + 15
				local b = math.random(5,7)
				if b == 5 then 
					G.call('add_item',326,1)
					ui2.getChildByName('背景').getChildByName('提示').text = a[5]
					ui2.getChildByName('物品').img = 0x56100014
					ui2.getChildByName('显示').getChildByName(tostring(4)).text  = tostring(tonumber(ui2.getChildByName('显示').getChildByName(tostring(4)).text ) +1)
					o_dyns.进度列表[4].当前进度 = o_dyns.进度列表[4].当前进度 + 1
					if o_dyns.进度列表[4].当前进度 >= 100 then 
						o_dyns.进度列表[4].完成 = 1
				    end	
				elseif b == 6 then 
					G.call('add_item',321,1)
					ui2.getChildByName('背景').getChildByName('提示').text = a[6]
					ui2.getChildByName('物品').img = 0x56100015
					ui2.getChildByName('显示').getChildByName(tostring(5)).text  = tostring(tonumber(ui2.getChildByName('显示').getChildByName(tostring(5)).text ) +1)
					o_dyns.进度列表[5].当前进度 = o_dyns.进度列表[5].当前进度 + 1
					if o_dyns.进度列表[5].当前进度 >= 100 then 
						o_dyns.进度列表[5].完成 = 1
				    end	
				elseif b == 7 then 	
					G.call('add_item',322,1)
					ui2.getChildByName('背景').getChildByName('提示').text = a[7]
					ui2.getChildByName('物品').img = 0x56100016	
					ui2.getChildByName('显示').getChildByName(tostring(6)).text  = tostring(tonumber(ui2.getChildByName('显示').getChildByName(tostring(6)).text ) +1)
					o_dyns.进度列表[6].当前进度 = o_dyns.进度列表[6].当前进度 + 1
					if o_dyns.进度列表[6].当前进度 >= 100 then 
						o_dyns.进度列表[6].完成 = 1
				    end	
				end 
			elseif result == 3 then
				ui2.getChildByName('物品').visible = true 
				G.call('add_point',106,50) 
				G.call('add_point',19,5)
				JF = JF + 100
				local b = math.random(8,9)
				if b == 8 then 
					G.call('add_item',323,1)
					ui2.getChildByName('背景').getChildByName('提示').text = a[8]
					ui2.getChildByName('物品').img = 0x56100017
					ui2.getChildByName('显示').getChildByName(tostring(7)).text  = tostring(tonumber(ui2.getChildByName('显示').getChildByName(tostring(7)).text ) +1)
					o_dyns.进度列表[7].当前进度 = o_dyns.进度列表[7].当前进度 + 1
					if o_dyns.进度列表[7].当前进度 >= 100 then 
						o_dyns.进度列表[7].完成 = 1
				    end	
				elseif b == 9 then 
					G.call('add_item',324,1)
					ui2.getChildByName('背景').getChildByName('提示').text = a[9]
					ui2.getChildByName('物品').img = 0x56100018
					ui2.getChildByName('显示').getChildByName(tostring(8)).text  = tostring(tonumber(ui2.getChildByName('显示').getChildByName(tostring(8)).text ) +1)
					o_dyns.进度列表[8].当前进度 = o_dyns.进度列表[8].当前进度 + 1
					if o_dyns.进度列表[8].当前进度 >= 100 then 
						o_dyns.进度列表[8].完成 = 1
				    end	
				end
			end	
			qysl = qysl - 1
			G.misc().钓鱼 = 1
			ui2.getChildByName('显示').getChildByName('蚯蚓').text = tostring(qysl)
			ui2.getChildByName('显示').getChildByName('积分').text = tostring(JF)
			G.wait_time(1000)
			ui2.getChildByName('结果').text = tostring(0)  
			ui2.getChildByName(tostring(2)).visible = false
			ui2.getChildByName('背景').visible = false
			ui2.getChildByName('物品').visible = false
			G.call('add_item',318,-1)
			o_dsyy.进度列表[1].当前进度 = o_dsyy.进度列表[1].当前进度 + 1
			G.call('set_newpoint',80,G.call('get_newpoint',80)- 1   )
			if o_dsyy.进度列表[1].当前进度 >= 10000 and o_dsyy.完成 == 0 then 
				o_dsyy.进度列表[1].完成 = 1
				o_dsyy.完成 = 1 
				G.call('notice1','完成成就【钓胜于鱼】')
			end	
			local dyns = 0
			if o_dyns.完成 == 0 then 
				for i = 1,8 do 
					if o_dyns.进度列表[i].完成 == 1 then
						dyns = dyns + 1
					end		
				end 
				if dyns == 8 then
					o_dyns.完成 = 1
					G.call('notice1','完成成就【钓鱼能手】')		
				end	
			end
			if o_wjyd.进度列表[1].当前进度 >= 10000 and o_wjyd.完成 == 0 then 
				o_wjyd.进度列表[1].完成 = 1
				o_wjyd.完成 = 1
				G.call('notice1','完成成就【万金于钓】')
			end	
			if ui2.getChildByName('时间').width > 0 and G.QueryName(0x100b013d).数量 > 0  then
			    G.start_program('钓鱼水花')
			end
			G.misc().钓鱼 = 0
		    if G.QueryName(0x100b013d).数量 == 0 then 
				ui2.getChildByName(tostring(1)).visible = true
				ui2.getChildByName(tostring(1)).getChildByName(tostring(1)).text = '   蚯蚓没了'
				G.wait_time(500)
				G.trig_event('钓鱼结束')	
			end		
		elseif r == 12 then
			local ui4 ;
			if not G.getUI('v_hunting') then 
				return
			end 
			ui4 = G.getUI('v_hunting') 
			local MB = tonumber(ui4.getChildByName('目标').text)
			local MS = tonumber(ui4.getChildByName('模式').text)
			local WZ = tonumber(ui4.getChildByName('位置').text)
			local FS = tonumber(ui4.getChildByName('得分').text)
			local ZF = tonumber(ui4.getChildByName('总分').text)
			local exp = 5 + math.random(5)
			local JL = math.random(100)
			local o_yhmp = G.QueryName(0x10170008)
			local o_yssd = G.QueryName(0x10170009)
            if MB == 0 then 
				return
			end 
			ui4.getChildByName('猎物').getChildByName(tostring(MB)).getChildByName(tostring(WZ)).getChildByName(tostring(1)).visible = false
			ui4.getChildByName('猎物').getChildByName(tostring(MB)).getChildByName(tostring(WZ)).getChildByName(tostring(2)).visible = true 
			ui4.getChildByName('猎物').getChildByName(tostring(MB)).getChildByName(tostring(WZ)).getChildByName(tostring(0)).getChildByName(tostring(3)).visible = true 
			local item = {'蝎子','蜈蚣','蜘蛛','蟾蜍','蝮蛇','獐鹿皮','兔肉','','野猪皮','虎皮','熊皮'}	
			if MB < 5 then 
				if G.misc().模式 == 2 then 
					if JL > 0 and JL<= 35 then  
						if G.QueryName(0x10030001)[tostring(32)] < math.random(30)    then  
							ui4.getChildByName('口白').text = '   糟糕！中毒了！'
							ui4.getChildByName('时间').width = ui4.getChildByName('时间').width - 50
							if ui4.getChildByName('时间').width < 0 then 
								ui4.getChildByName('时间').widt = 0 
							end 
						else
							ui4.getChildByName('口白').text = '   哇！！真疼！！！！竟然咬我！'	
						end 
					elseif JL > 35 and JL<= 70 then 
						ui4.getChildByName('口白').text = '   好可惜，竟然跑掉了'
					elseif JL > 70 then 	
						ui4.getChildByName('口白').text = '   运气真不错，得到【'..item[MB]..'】一只'	
						G.call('add_item',290+MB,1)
					end 	
				end
				FS = FS + math.random(5,8) 		
				
			end 	
			if MB == 5 then
				if G.misc().模式 == 1 then 
					if JL < 35 then
						ui4.getChildByName('口白').text = '   运气真不错，得到【'..'蛇胆'..'】一只'
						G.call('add_item',217,1)	
					else
						ui4.getChildByName('口白').text = '   真晦气，什么也没有得到'
				
					end 
                elseif G.misc().模式 == 2 then 
					if math.random(100) > 50 then 
						ui4.getChildByName('口白').text = '   呜啊！好疼！！！'	
						ui4.getChildByName('猎物').getChildByName(tostring(MB)).getChildByName(tostring(WZ)).getChildByName(tostring(3)).visible = true 
						ui4.getChildByName('时间').width = ui4.getChildByName('时间').width - 20
						if ui4.getChildByName('时间').width < 0 then 
							ui4.getChildByName('时间').widt = 0 
						end 
						
					else
						if JL > 0 and JL<= 35 then  
							if G.QueryName(0x10030001)[tostring(32)] < math.random(30)    then  
								ui4.getChildByName('口白').text = '   糟糕！中毒了！'
								ui4.getChildByName('时间').width = ui4.getChildByName('时间').width - 50
								if ui4.getChildByName('时间').width < 0 then 
									ui4.getChildByName('时间').widt = 0 
								end 
							else
								ui4.getChildByName('口白').text = '   哇！！真疼！！！！竟然咬我！'	
							end 
						elseif JL > 35 and JL<= 70 then 
							ui4.getChildByName('口白').text = '   好可惜，竟然跑掉了'
						elseif JL > 70 then 	
							ui4.getChildByName('口白').text = '   运气真不错，得到【'..item[MB]..'】一只'	
							G.call('add_item',286,1)
						end 
                    end 
				end
				FS = FS + 8 
		    end		
			if MB == 6 then 
			    if G.misc().模式 == 1 then 
					if JL >= 35 then
						ui4.getChildByName('口白').text = '   真晦气，什么也没有得到'	
					else
						ui4.getChildByName('口白').text = '   运气真不错，得到【'..'獐腿肉'..'】一只'
						G.call('add_item',299,1)
					end 	
				elseif G.misc().模式 == 2 then 
					if G.call('get_item',278) > 0 then 
						if JL < 35 then
							ui4.getChildByName('口白').text = '   运气真不错，得到【'..'獐鹿皮'..'】一付'
							G.call('add_item',327,1)
								
						else
							ui4.getChildByName('口白').text = '   真晦气，什么也没有得到'
						end 	
					else
						ui4.getChildByName('口白').text = '   如果随身带着【'..'剥皮刀'..'】就好了'
				    end			
                end 
				FS = FS + 8
            end 
			if MB == 7 then 
			   if  JL < 25 then 
				   ui4.getChildByName('口白').text = '   运气真不错，得到【'..'兔肉'..'】一只'
				   G.call('add_item',300,1)

			   else
				   ui4.getChildByName('口白').text = '   真晦气，什么也没有得到'
			   end 
			   FS = FS + 6
			end
			if MB == 8 then 
				if G.misc().模式 == 2 then  
					ui4.getChildByName('口白').text = '   让我空手去抓天上的老鹰，未免太搞笑了吧。'
				else
				end
				FS = FS + 16
			end
			if MB == 9 then 
				if math.random(100) > 50 and G.misc().模式 == 2 then 
					ui4.getChildByName('口白').text = '   呜啊！好疼！！！'	
					ui4.getChildByName('猎物').getChildByName(tostring(MB)).getChildByName(tostring(WZ)).getChildByName(tostring(3)).visible = true 
					ui4.getChildByName('时间').width = ui4.getChildByName('时间').width - 20
					if ui4.getChildByName('时间').width < 0 then 
						ui4.getChildByName('时间').widt = 0 
					end 
				end	
				if G.misc().模式 == 1 then 
					if  JL < 35 then 
						ui4.getChildByName('口白').text = '   运气真不错，得到【'..'野猪肉'..'】一只'
						G.call('add_item',331,1)
	
					else
						ui4.getChildByName('口白').text = '   真晦气，什么也没有得到'
					end 
				elseif G.misc().模式 == 2 then 
					if G.call('get_item',278) > 0 then 
						if JL < 35 then
							ui4.getChildByName('口白').text = '   运气真不错，得到【'..'野猪皮'..'】一付'
							G.call('add_item',333,1)
								
						else
							ui4.getChildByName('口白').text = '   真晦气，什么也没有得到'
						end 	
					else
						ui4.getChildByName('口白').text = '   如果随身带着【'..'剥皮刀'..'】就好了'
					end	
				end	
				
				FS = FS + 10	
			end
			if MB == 10 then 
				if math.random(100) > 50 and G.misc().模式 == 2 then
					ui4.getChildByName('口白').text = '   呜啊！好疼！！！'	
					ui4.getChildByName('猎物').getChildByName(tostring(MB)).getChildByName(tostring(WZ)).getChildByName(tostring(3)).visible = true 
					ui4.getChildByName('时间').width = ui4.getChildByName('时间').width - 20
					if ui4.getChildByName('时间').width < 0 then 
						ui4.getChildByName('时间').widt = 0 
					end 
				end	
				if G.misc().模式 == 2 then 
					if G.call('get_item',278) > 0 then 
						if JL < 15 then
							ui4.getChildByName('口白').text = '   运气真不错，得到【'..'虎皮'..'】一付'
							G.call('add_item',328,1)
							o_yhmp.进度列表[1].当前进度 = o_yhmp.进度列表[1].当前进度 + 1	
							G.call('set_newpoint',80,G.call('get_newpoint',80)- 1   )
						else
							if JL >= 15 and JL < 35 then 
								ui4.getChildByName('口白').text = '   运气真不错，得到【'..'虎掌'..'】一只'
								G.call('add_item',330,1)
							else	
								ui4.getChildByName('口白').text = '   真晦气，什么也没有得到'
							end 
						end 	
					else
						ui4.getChildByName('口白').text = '   如果随身带着【'..'剥皮刀'..'】就好了'
					end
		
				end	
				
				FS = FS + math.random(30,50)	
			end
			if MB == 11 then 
				if math.random(100) > 50 and G.misc().模式 == 2 then
					ui4.getChildByName('口白').text = '   呜啊！好疼！！！'	
					ui4.getChildByName('猎物').getChildByName(tostring(MB)).getChildByName(tostring(WZ)).getChildByName(tostring(3)).visible = true 
					ui4.getChildByName('时间').width = ui4.getChildByName('时间').width - 20
					if ui4.getChildByName('时间').width < 0 then 
						ui4.getChildByName('时间').widt = 0 
					end 
				end	
				if G.misc().模式 == 1 then 
					if  JL < 35 then 
						ui4.getChildByName('口白').text = '   运气真不错，得到【'..'熊胆'..'】一只'
						G.call('add_item',218,1)
						o_yssd.进度列表[1].当前进度 = o_yssd.进度列表[1].当前进度 + 1
						G.call('set_newpoint',80,G.call('get_newpoint',80)- 1   )
					else
						ui4.getChildByName('口白').text = '   真晦气，什么也没有得到'
					end 
				elseif G.misc().模式 == 2 then 
					if G.call('get_item',278) > 0 then 
						if JL < 15 then
							ui4.getChildByName('口白').text = '   运气真不错，得到【'..'熊皮'..'】一付'
							G.call('add_item',332,1)
								
						else
							if JL >= 15 and JL < 35 then 
								ui4.getChildByName('口白').text = '   运气真不错，得到【'..'熊掌'..'】一只'
								G.call('add_item',329,1)
							else	
								ui4.getChildByName('口白').text = '   真晦气，什么也没有得到'
							end 
						end 	
					else
						ui4.getChildByName('口白').text = '   如果随身带着【'..'剥皮刀'..'】就好了'
					end	
				end	
				
				FS = FS + 20	    	
			end
			local lv1 = math.floor(tonumber(FS)/100)
			local lv2 = math.floor(tonumber(ZF)/100)
			if lv2 > lv1 - 20 and lv2 <= 2 * lv1 then 
				if G.call('get_point',34) < 100 then 
					exp = math.floor(exp * 3/2)
					if math.random(100) < 20 then 
						G.call('add_point',34,1)
						ui4.getChildByName('口白').text ='   我的【暗器】水平近来也是大有长进啊'
					end 	
				end 
			elseif lv2 > 2*lv1 -50 and lv2 <= lv1 * 3 then 
				if G.call('get_point',34) < 100 then
					exp = exp * 2 
					if math.random(100) < 20 then 
						G.call('add_point',34,1)
						ui4.getChildByName('口白').text ='   我的【暗器】水平近来也是大有长进啊'
					end 	
				end 
			elseif lv2 > 3*lv1 then 
				if G.call('get_point',34) < 100 then 
					exp = exp * 3
					if math.random(100) < 20 then 
						G.call('add_point',34,1)
						ui4.getChildByName('口白').text = '   我的【暗器】水平近来也是大有长进啊'
					end 	
				end 
			end 
			ZF = FS + exp
			G.call('add_point',103,exp)	
			ui4.getChildByName('猎物').getChildByName(tostring(MB)).getChildByName(tostring(WZ)).getChildByName('dead').text = 1 
			G.trig_event('打猎动画关闭')
			if o_yssd.进度列表[1].当前进度 >= 500 and o_yssd.完成 == 0 then 
				o_yssd.进度列表[1].完成 = 1
				o_yssd.完成 = 1
				G.call('notice1','完成成就【一身是胆】')
			end	
			if o_yhmp.进度列表[1].当前进度 >= 100 and o_yhmp.完成 == 0 then 
				o_yhmp.进度列表[1].完成 = 1
				o_yhmp.完成 = 1
				G.call('notice1','完成成就【与虎谋皮】')
			end		
			ui4.getChildByName('得分').text = tostring(FS)
			ui4.getChildByName('总分').text = tostring(ZF)
		end
	end
end
t['打猎动画关闭'] = function()
	local ui4 ;
	if not G.getUI('v_hunting') then 
		return
	end 
	ui4 = G.getUI('v_hunting') 
	local MB = tonumber(ui4.getChildByName('目标').text)
	local WZ = tonumber(ui4.getChildByName('位置').text)
	G.wait_time(300)
	ui4.getChildByName('口白').text = '   '
	ui4.getChildByName('猎物').getChildByName(tostring(MB)).getChildByName(tostring(WZ)).getChildByName(tostring(2)).visible = false 
	ui4.getChildByName('猎物').getChildByName(tostring(MB)).getChildByName(tostring(WZ)).getChildByName(tostring(0)).getChildByName(tostring(3)).visible = false
	if ui4.getChildByName('猎物').getChildByName(tostring(MB)).getChildByName(tostring(WZ)).getChildByName(tostring(3)) ~= nil then 
		ui4.getChildByName('猎物').getChildByName(tostring(MB)).getChildByName(tostring(WZ)).getChildByName(tostring(3)).visible = false 
	end 
end
t['伐木提示'] = function()
	local ui2 ;
	if not G.getUI('v_logging') then 
		return
	end 
    ui2 = G.getUI('v_logging');
	local a1 = '【力道】和【气劲】越是接近，所发挥的威力也是越大'
	local a2 = '每挥刀一次，体力减少10，体力耗尽，伐木结束'
	local a3 = '每次挥刀都能对巨树造成伤害，巨树耐久耗完，伐木成功'
	local a4 = '【伐木】劳作对提升【力道】属性有很好的帮助'
	local a5 = '体验下当樵夫的感觉吧'
	local a6 = '【伐木】成功会得到【木柴】一捆，别处可是买不到的'
	local a7 = '【伐木的诀窍】在于：眼快手急，力劲合一！'
	local a = {a1,a2,a3,a4,a5,a6,a7}
    while true  do
		G.wait_time(4000) 
		local b = a[math.random(7)]
		ui2.getChildByName('提示').text = b
	end 
end	
t['挖矿提示'] = function()
	local ui2 ;
	if not G.getUI('v_dig') then 
		return
	end 
    ui2 = G.getUI('v_dig');
	local a1 = '【力道】和【气劲】越是接近，所发挥的威力也是越大'
	local a2 = '在海底练功，即可锻炼拳掌，对根骨成长也有很大好处'
	local a3 = '时间耗尽即氧气耗尽，【采矿】结束'
	local a4 = '在时间结束前，将矿石耐久耗尽，则【采矿】成功'
	local a5 = '【采矿】成功能随机获得数量品质不等的矿石'
	local a6 = '海底采到的矿石可不是随便可以买到的'
	local a7 = '【采矿的诀窍】在于：眼快手急，力劲合一！！'
	local a = {a1,a2,a3,a4,a5,a6,a7}
    while true  do
		G.wait_time(4000) 
		local b = a[math.random(7)]
		ui2.getChildByName('提示').text = b
	end 
end	
t['钓鱼提示'] = function()
	local ui2 ;
	if not G.getUI('v_fishing') then 
		return
	end 
    ui2 = G.getUI('v_fishing');
	local a1 = '游戏中可跟据水纹变化，判断所钓物的大小'
	local a2 = '时间结束或鱼饵—蚯蚓用光，都将结束本次钓鱼'
	local a3 = '钓鱼能够锻炼人的定力'
	local a4 = '有一种极其珍惜的鱼类，钓上后能够增长福缘'
	local a5 = '【鼠标点击】就可【提竿】，查看是否钓到东西'
	local a6 = '每次【提竿】，不管是否钓到东西，都会损失一只蚯蚓'
	local a7 = '【钓鱼的诀窍】在于：看准水花，及时提竿！'
	local a = {a1,a2,a3,a4,a5,a6,a7}
    while true  do
		G.wait_time(4000) 	
		local b = a[math.random(7)]
		ui2.getChildByName('提示').text = b
	end 
end	
t['打猎提示'] = function()
	local ui2 ;
	if not G.getUI('v_hunting') then 
		return
	end 
    ui2 = G.getUI('v_hunting');
	local a1 = '捕获或杀死体型越大的动物，得分越高'
	local a2 = '狩猎有2种方法，一种是弓箭射；一种是手捕捉'
	local a3 = '弓箭能够一击必杀任何动物，但是得分较少'
	local a4 = '动手捕捉成功会得到更多分数，但是有风险性'
	local a5 = '捕捉毒虫有一定几率会中毒，导致时间锐减'
	local a6 = '两种狩猎方式最终获得的动物身上的产物也不同'
	local a7 = '快捷键【1】【2】，可切换狩猎方式'
	local a = {a1,a2,a3,a4,a5,a6,a7}
    while true  do
		G.wait_time(4000) 	
		local b = a[math.random(7)]
		ui2.getChildByName('提示').text = b
	end 
end	
local co = require "co"
t['伐木条'] = function()
	local ui2 ;
	if not G.getUI('v_logging') then 
		return
	end 
    ui2 = G.getUI('v_logging');
	while true do 
		G.wait_time(5) 
		local n = tonumber(ui2.getChildByName('力').text)
		local m = tonumber(ui2.getChildByName('气').text)
		n = n + math.random(10)
		m = m + math.random(10)
		if n > 100 then 
			n = 0
		end
		if m > 100 then 
			m = 0
		end
		ui2.getChildByName('力').text = tostring(n)  
		ui2.getChildByName('气').text = tostring(m) 
	    ui2.getChildByName('力道').width = 137*n/100
		ui2.getChildByName('气劲').width = 137*m/100
	
	end 
end	
t['挖矿条'] = function()
	local ui2 ;
	if not G.getUI('v_dig') then 
		return
	end 
    ui2 = G.getUI('v_dig');
	while true do 
		G.wait_time(5) 
		local n = tonumber(ui2.getChildByName('力').text)
		local m = tonumber(ui2.getChildByName('气').text)
		n = n + math.random(10)
		m = m + math.random(10)
		if n > 100 then 
			n = 0
		end
		if m > 100 then 
			m = 0
		end
		ui2.getChildByName('力').text = tostring(n)  
		ui2.getChildByName('气').text = tostring(m) 
	    ui2.getChildByName('力道').width = 137*n/100
		ui2.getChildByName('气劲').width = 137*m/100
	end 
end	
t['挖矿时间条'] = function()
	local ui2 ;
	if not G.getUI('v_dig') then 
		return
	end 
	ui2 = G.getUI('v_dig');
	local c = ui2.c_dig
	while true do 
		G.wait_time(100)
		ui2.getChildByName('时间').width = ui2.getChildByName('时间').width - 0.5
		if ui2.getChildByName('时间').width  < 0 then 
			ui2.getChildByName('时间').width = 0
		end 
		if ui2.getChildByName('时间').width == 0 then
			ui2.getChildByName('口白').text = '   换口气再来'
			G.wait_time(500)
			G.trig_event('挖矿结束')
			c.挖矿 = 1
			break
		end 
	end 
end	
t['钓鱼时间条'] = function()
	local ui2 ;
	if not G.getUI('v_fishing') then 
		return
	end 
    ui2 = G.getUI('v_fishing');
	while true do 
		G.wait_time(100)
		
		ui2.getChildByName('时间').width = ui2.getChildByName('时间').width - 0.5
		if ui2.getChildByName('时间').width  < 0 then 
			ui2.getChildByName('时间').width = 0
		end 
		if ui2.getChildByName('时间').width == 0 then
			ui2.getChildByName(tostring(1)).visible = true
			ui2.getChildByName(tostring(1)).getChildByName(tostring(1)).text = '   时间到'
			G.wait_time(500)
			G.trig_event('钓鱼结束')
			break
		end 
	end 
end	
t['打猎时间条'] = function()
	local ui2 ;
	if not G.getUI('v_hunting') then 
		return
	end 
    ui2 = G.getUI('v_hunting');
	while true do 
		G.wait_time(100)
		ui2.getChildByName('时间').width = ui2.getChildByName('时间').width - 0.5
		if ui2.getChildByName('时间').width  < 0 then 
			ui2.getChildByName('时间').width = 0
		end 
		if ui2.getChildByName('时间').width == 0 then
			ui2.getChildByName('口白').text = '   时间过的好快！好多猎物还没打到呢。'
			G.wait_time(500)
			G.trig_event('打猎结束')
			break
		end 
	end 
end	
t['猎物显示2'] = function()
	local ui2 ;
	if not G.getUI('v_hunting') then 
		return
	end 
    ui2 = G.getUI('v_hunting');
	while true do
		G.wait_time(2500)
		local a = math.random(4,6)
		local b = math.random(4)
		for i = 1,b do 
			ui2.getChildByName('猎物').getChildByName(tostring(a)).getChildByName(tostring(i)).getChildByName('dead').text = 0
			ui2.getChildByName('猎物').getChildByName(tostring(a)).getChildByName(tostring(i)).visible = true 
			ui2.getChildByName('猎物').getChildByName(tostring(a)).getChildByName(tostring(i)).getChildByName(tostring(1)).visible = true 
			ui2.getChildByName('猎物').getChildByName(tostring(a)).getChildByName(tostring(i)).getChildByName(tostring(2)).visible = false 
			ui2.getChildByName('猎物').getChildByName(tostring(a)).getChildByName(tostring(i)).getChildByName(tostring(0)).getChildByName(tostring(3)).visible = false
			if ui2.getChildByName('猎物').getChildByName(tostring(a)).getChildByName(tostring(i)).getChildByName(tostring(3)) ~= nil then 
				ui2.getChildByName('猎物').getChildByName(tostring(a)).getChildByName(tostring(i)).getChildByName(tostring(3)).visible = false 
			end
		end 
		G.wait_time(2000)		
		for i = 1,b do 
			ui2.getChildByName('猎物').getChildByName(tostring(a)).getChildByName(tostring(i)).visible = false
			ui2.getChildByName('猎物').getChildByName(tostring(a)).getChildByName(tostring(i)).getChildByName(tostring(1)).visible = false 

		end
    end 		 
end		
t['猎物显示1'] = function()
	local ui2 ;
	if not G.getUI('v_hunting') then 
		return
	end 
    ui2 = G.getUI('v_hunting');
	while true do
		G.wait_time(1500)
		local a = math.random(1,3)
		local b = math.random(4)
		for i = 1,b do 
			ui2.getChildByName('猎物').getChildByName(tostring(a)).getChildByName(tostring(i)).getChildByName('dead').text = 0
			ui2.getChildByName('猎物').getChildByName(tostring(a)).getChildByName(tostring(i)).visible = true 
			ui2.getChildByName('猎物').getChildByName(tostring(a)).getChildByName(tostring(i)).getChildByName(tostring(1)).visible = true 
			ui2.getChildByName('猎物').getChildByName(tostring(a)).getChildByName(tostring(i)).getChildByName(tostring(2)).visible = false 
			ui2.getChildByName('猎物').getChildByName(tostring(a)).getChildByName(tostring(i)).getChildByName(tostring(0)).getChildByName(tostring(3)).visible = false
			if ui2.getChildByName('猎物').getChildByName(tostring(a)).getChildByName(tostring(i)).getChildByName(tostring(3)) ~= nil then 
				ui2.getChildByName('猎物').getChildByName(tostring(a)).getChildByName(tostring(i)).getChildByName(tostring(3)).visible = false 
			end
		end 
		G.wait_time(2000)		
		for i = 1,b do 
			ui2.getChildByName('猎物').getChildByName(tostring(a)).getChildByName(tostring(i)).visible = false
			ui2.getChildByName('猎物').getChildByName(tostring(a)).getChildByName(tostring(i)).getChildByName(tostring(1)).visible = false

		end
    end 		 
end	
t['猎物显示3'] = function()
	local ui2 ;
	if not G.getUI('v_hunting') then 
		return
	end 
    ui2 = G.getUI('v_hunting');
	while true do
		G.wait_time(3500)
		local a = math.random(7,9)
		local b = math.random(4)
		if a == 9 then 
			b = math.random(2)
		end 	
		for i = 1,b do 
			ui2.getChildByName('猎物').getChildByName(tostring(a)).getChildByName(tostring(i)).getChildByName('dead').text = 0
			ui2.getChildByName('猎物').getChildByName(tostring(a)).getChildByName(tostring(i)).visible = true 
			ui2.getChildByName('猎物').getChildByName(tostring(a)).getChildByName(tostring(i)).getChildByName(tostring(1)).visible = true 
			ui2.getChildByName('猎物').getChildByName(tostring(a)).getChildByName(tostring(i)).getChildByName(tostring(2)).visible = false 
			ui2.getChildByName('猎物').getChildByName(tostring(a)).getChildByName(tostring(i)).getChildByName(tostring(0)).getChildByName(tostring(3)).visible = false
			if ui2.getChildByName('猎物').getChildByName(tostring(a)).getChildByName(tostring(i)).getChildByName(tostring(3)) ~= nil then 
				ui2.getChildByName('猎物').getChildByName(tostring(a)).getChildByName(tostring(i)).getChildByName(tostring(3)).visible = false 
			end
        end 
		G.wait_time(2000)		
		for i = 1,b do 
			ui2.getChildByName('猎物').getChildByName(tostring(a)).getChildByName(tostring(i)).visible = false
			ui2.getChildByName('猎物').getChildByName(tostring(a)).getChildByName(tostring(i)).getChildByName(tostring(1)).visible = false

		end
    end 		 
end	
t['猎物显示4'] = function()
	local ui2 ;
	if not G.getUI('v_hunting') then 
		return
	end 
    ui2 = G.getUI('v_hunting');
	while true do
		local DF = tonumber(ui2.getChildByName('得分').text)
		G.wait_time(4500)
		local int_1 = 200
		local int_2 = 350
		if DF >= int_1 then 
			local a = DF - int_1
			if  100*a/int_1 >= math.random(100) then 
				ui2.getChildByName('猎物').getChildByName(tostring(11)).getChildByName(tostring(1)).getChildByName('dead').text = 0
				ui2.getChildByName('猎物').getChildByName(tostring(11)).getChildByName(tostring(1)).visible = true 
				ui2.getChildByName('猎物').getChildByName(tostring(11)).getChildByName(tostring(1)).getChildByName(tostring(1)).visible = true 
				ui2.getChildByName('猎物').getChildByName(tostring(11)).getChildByName(tostring(1)).getChildByName(tostring(2)).visible = false 
				ui2.getChildByName('猎物').getChildByName(tostring(11)).getChildByName(tostring(1)).getChildByName(tostring(0)).getChildByName(tostring(3)).visible = false
				if ui2.getChildByName('猎物').getChildByName(tostring(11)).getChildByName(tostring(1)).getChildByName(tostring(3)) ~= nil then 
					ui2.getChildByName('猎物').getChildByName(tostring(11)).getChildByName(tostring(1)).getChildByName(tostring(3)).visible = false 
				end
			end 
		end	
		if 	DF >= int_2 then 
			local b = DF - int_2
			if  100*b/int_2 >= math.random(100) then 
				ui2.getChildByName('猎物').getChildByName(tostring(10)).getChildByName(tostring(1)).getChildByName('dead').text = 0
				ui2.getChildByName('猎物').getChildByName(tostring(10)).getChildByName(tostring(1)).visible = true 
				ui2.getChildByName('猎物').getChildByName(tostring(10)).getChildByName(tostring(1)).getChildByName(tostring(1)).visible = true 
				ui2.getChildByName('猎物').getChildByName(tostring(10)).getChildByName(tostring(1)).getChildByName(tostring(2)).visible = false 
				ui2.getChildByName('猎物').getChildByName(tostring(10)).getChildByName(tostring(1)).getChildByName(tostring(0)).getChildByName(tostring(3)).visible = false
				if ui2.getChildByName('猎物').getChildByName(tostring(10)).getChildByName(tostring(1)).getChildByName(tostring(3)) ~= nil then 
					ui2.getChildByName('猎物').getChildByName(tostring(10)).getChildByName(tostring(1)).getChildByName(tostring(3)).visible = false 
				end
            end
		end 
		G.wait_time(2000)
		ui2.getChildByName('猎物').getChildByName(tostring(10)).getChildByName(tostring(1)).visible = false 
		ui2.getChildByName('猎物').getChildByName(tostring(11)).getChildByName(tostring(1)).visible = false 
		ui2.getChildByName('猎物').getChildByName(tostring(11)).getChildByName(tostring(1)).getChildByName(tostring(1)).visible = false
		ui2.getChildByName('猎物').getChildByName(tostring(10)).getChildByName(tostring(1)).getChildByName(tostring(1)).visible = false
    end 		 
end	
t['钓鱼水花'] = function()
	local ui2 ;
	if not G.getUI('v_fishing') then 
		return
	end 
    ui2 = G.getUI('v_fishing');
	while true do 	
		G.wait_time(1000)	
		local a = math.random(30)
		if a == 2  or a == 3 or a == 4 then
			ui2.getChildByName(tostring(1)).visible = true
			ui2.getChildByName('动画').visible = true
			ui2.getChildByName(tostring(1)).getChildByName(tostring(1)).text = '是风在吹吗？'
			ui2.getChildByName('结果').text = tostring(1)     --小水花
			ui2.getChildByName('动画').c_button.img_normal = 0x33010007
		    G.wait_time(600)
		elseif a == 12 or a == 13 then 
			ui2.getChildByName(tostring(1)).visible = true
			ui2.getChildByName('动画').visible = true
			ui2.getChildByName(tostring(1)).getChildByName(tostring(1)).text = '这水花不小啊'
			ui2.getChildByName('结果').text = tostring(2)   --中水花
			ui2.getChildByName('动画').c_button.img_normal = 0x33010009
		    G.wait_time(600)
			ui2.getChildByName(tostring(1)).visible = false
	    elseif a == 15 then 		
			ui2.getChildByName(tostring(3)).visible = true
			ui2.getChildByName('动画').visible = true
			ui2.getChildByName('动画').c_button.img_normal = 0x33010006
			ui2.getChildByName('结果').text = tostring(3)  --大水花
			G.wait_time(600)
			ui2.getChildByName(tostring(3)).visible = false
		else
			ui2.getChildByName('结果').text = tostring(0)		
		end 
		ui2.getChildByName('结果').text = tostring(0)		
		ui2.getChildByName(tostring(1)).visible = false
		ui2.getChildByName('动画').visible = false	
	end 
end
t['宴请'] = function()
	local o_role_人物 = G.QueryName(G.QueryName(0x10030001)[tostring(189)])
	if   o_role_人物 ~= nil then 
		local o_role_人物代码 = G.QueryName(0x10030001)[tostring(189)] - 0x10040000
		local string_1 = {'喝','品','吃'}
		local int_编号 = {math.random(186,198),math.random(200,210),math.random(148,185)}
		if o_role_人物.喜好物种类 == 0 or  o_role_人物.喜好物种类 == nil then 
			G.call("talk",'',o_role_人物代码,'   我没有什么喜欢的，也没有什么讨厌的，你就别在我身上下工夫了',1,1)
		else
			local o_role_喜好物编号 = int_编号[o_role_人物.喜好物种类]
			local o_role_喜好物 = G.QueryName(0x100b0000+o_role_喜好物编号)
			local string_2 = string_1[o_role_人物.喜好物种类]..o_role_喜好物.名称
			if o_role_喜好物.数量 <= 0 or o_role_喜好物.数量 == nil  then 
				G.call('talk','',o_role_人物代码,'   可惜你不知道我最爱'..string_2..',其他的我一律不想多瞧一眼，你也就别费心思了',1,1)
			end 
			if o_role_喜好物.数量 > 0 then
				G.call('talk','',o_role_人物代码,'   你怎么知道我喜好'..string_2..',还特意准备了来给我，真是多谢你了',1,1)
                G.call('add_item',o_role_喜好物编号+1,-1)
			    G.call('add_love',o_role_人物代码,1)
			end 	
        end
	end 
	G.call('all_over') 		
end
t['馈赠'] = function()
	local o_role_人物 = G.QueryName(G.QueryName(0x10030001)[tostring(189)])
	if   o_role_人物 ~= nil then
		local o_role_人物代码 = G.QueryName(0x10030001)[tostring(189)] - 0x10040000
		local item = {o_role_人物['需求道具'..1],o_role_人物['需求道具'..2],o_role_人物['需求道具'..3],o_role_人物['需求道具'..4]} 
		if item[1] ~= nil and  o_role_人物['拥有'..1] == 0 and  G.QueryName(item[1]).数量 >  0 then 
			G.QueryName(0x10030001)[tostring(230)] = item[1]
			G.QueryName(0x10030001)[tostring(231)] = 1
			if  G.call('逻辑_判断装备') == true then 
				G.call('馈赠_1')
				do return end
			else
				G.call("talk",'',o_role_人物代码,'   我也好想要你身上的【'..G.QueryName(item[1]).名称..'】,看你一直装备着,应该是很喜欢吧,我就不夺人所爱了',1,1)
				  G.call('all_over')
			end 
		elseif item[2] ~= nil and  o_role_人物['拥有'..2] == 0 and  G.QueryName(item[2]).数量 >  0 then 
			G.QueryName(0x10030001)[tostring(230)] = item[2]
			G.QueryName(0x10030001)[tostring(231)] = 2
			if  G.call('逻辑_判断装备') == true then 
	
				G.call('馈赠_1')
				do return end
			else
				G.call("talk",'',o_role_人物代码,'   我也好想要你身上的【'..G.QueryName(item[2]).名称..'】,看你一直装备着,应该是很喜欢吧,我就不夺人所爱了',1,1)
				  G.call('all_over')
			end 	
		elseif item[3] ~= nil and  o_role_人物['拥有'..3]  == 0 and  G.QueryName(item[3]).数量 >  0 then 
			G.QueryName(0x10030001)[tostring(230)] = item[3]
			G.QueryName(0x10030001)[tostring(231)] = 3
			if  G.call('逻辑_判断装备') == true then 
	
				G.call('馈赠_1')
				do return end
			else
				G.call("talk",'',o_role_人物代码,'   我也好想要你身上的【'..G.QueryName(item[3]).名称..'】,看你一直装备着,应该是很喜欢吧,我就不夺人所爱了',1,1)
				  G.call('all_over')
			end 
		elseif item[4] ~= nil and  o_role_人物['拥有'..4] == 0 and  G.QueryName(item[4]).数量 >  0 then 
			G.QueryName(0x10030001)[tostring(230)] = item[4]
			G.QueryName(0x10030001)[tostring(231)] = 4
			if  G.call('逻辑_判断装备') == true then 
	
				G.call('馈赠_1')
				do return end
			else
				G.call("talk",'',o_role_人物代码,'   我也好想要你身上的【'..G.QueryName(item[4]).名称..'】,看你一直装备着,应该是很喜欢吧,我就不夺人所爱了',1,1)
				  G.call('all_over')
			end 
		else 
			if item[1] ~= nil then 
				if o_role_人物['拥有'..1]  == 0 then
					G.call("talk",'',o_role_人物代码,'   我在找【'..G.QueryName(item[1]).名称..'】，此物和我或许冥冥中有段渊源，不知道何年何月才能找的到。',1,1)
				else
					if item[2] ~= nil then 
						if o_role_人物['拥有'..2]  == 0 then
							G.call("talk",'',o_role_人物代码,'   我在找【'..G.QueryName(item[2]).名称..'】，此物和我或许冥冥中有段渊源，不知道何年何月才能找的到。',1,1)
						else
							if item[3] ~= nil then
								if o_role_人物['拥有'..3]  == 0 then
									G.call("talk",'',o_role_人物代码,'   我在找【'..G.QueryName(item[3]).名称..'】，此物和我或许冥冥中有段渊源，不知道何年何月才能找的到。',1,1)
								else 
									if item[4] ~= nil then
										if o_role_人物['拥有'..4]  == 0 then
											G.call("talk",'',o_role_人物代码,'   我在找【'..G.QueryName(item[4]).名称..'】，此物和我或许冥冥中有段渊源，不知道何年何月才能找的到。',1,1)
										else
											G.call("talk",'',o_role_人物代码,'   似乎我也没有什么需要的东西，等我想到再告诉你吧。',1,1)		
									    end 		
                                    else
                                        G.call("talk",'',o_role_人物代码,'   似乎我也没有什么需要的东西，等我想到再告诉你吧。',1,1)		
									end 
                                end 
							else
								G.call("talk",'',o_role_人物代码,'   似乎我也没有什么需要的东西，等我想到再告诉你吧。',1,1)			
                            end 
                        end 
					else
						G.call("talk",'',o_role_人物代码,'   似乎我也没有什么需要的东西，等我想到再告诉你吧。',1,1)			
                    end 
				end   		
			else    
                G.call("talk",'',o_role_人物代码,'   似乎我也没有什么需要的东西，等我想到再告诉你吧。',1,1)			
			end 	
			G.call('all_over')	
        end 
	end 
end 
t['馈赠_1'] = function()
	local ui = G.getUI('v_teammate')
	local c = ui.c_teammate
	local o_role_人物 = G.QueryName(G.QueryName(0x10030001)[tostring(189)])
	local o_item_物品 = G.QueryName(G.QueryName(0x10030001)[tostring(230)])
	local int_道具 = G.QueryName(0x10030001)[tostring(231)]
	local o_role_人物代码 = G.QueryName(0x10030001)[tostring(189)] - 0x10040000
	local 道具效果 = {'道具一效果','道具二效果','道具三效果','道具四效果'}
	local 拥有 = {'拥有1','拥有2','拥有3','拥有4'}
	local 技能 = {'技能1','技能2','技能3'}
	local o_role_人物 = G.QueryName(G.QueryName(0x10030001)[tostring(189)])
	local o_role_人物 = G.QueryName(G.QueryName(0x10030001)[tostring(189)])
    local o_item_物品代码 = G.QueryName(0x10030001)[tostring(230)] - 0x100b0000
    local int_选项 = 0
	G.call("talk",'',o_role_人物代码,'   你背包里的【'..o_item_物品.名称..'】和我极是有缘，你如果真打算送我东西的话,不如割爱把那个送给我吧。',1,1)
	while int_选项 == 0 do
		int_选项 = G.call("menu",'',0,'',0,0,{"1,身外之物何须挂齿", "2,这可不行,暂时我还要用,不能给别人。"},0)
		if int_选项 == 1 then 
			G.call('all_over')
			G.call("talk",'',o_role_人物代码,'   果然没有看错你,不枉我们相交一场。',1,1)
			o_role_人物['拥有'..int_道具]  = 1
			for i = 1,9 do     --循环将道具效果给予选择的队友
				G.call('add_role',o_role_人物代码,i,o_role_人物[道具效果[int_道具]][tostring(i)])	
			end 
			for i = 1,3 do    --判断道具带来的队友技能变化
				if o_role_人物[道具效果[int_道具]][技能[i]] ~= nil  then 
				   o_role_人物[技能[i]] = o_role_人物[道具效果[int_道具]][技能[i]]
				   o_role_人物[tostring(i+9)] = o_role_人物[道具效果[int_道具]][tostring(i+9)] + o_role_人物[tostring(i+9)]
				   o_role_人物[tostring(i+9)] = o_role_人物[道具效果[int_道具]][tostring(i+9)]
				end
			end 
			if G.call('get_point',230) == 0x100b005c or G.call('get_point',230) == 0x100b005b then --馈赠物品为葵花或者辟邪时设定队友性别为太监
				o_role_人物.性别 = 2
			end 
			G.call('add_item',o_item_物品代码+1,-1)
			G.call('all_over')
			c:显示更新(G.misc().队友) 
			do return end
		elseif int_选项 == 2 then  
			G.call('all_over')
			G.call("talk",'',o_role_人物代码,'   原来是这样啊，我还以为凭咱俩的感情你不会吝惜此物呢！',1,1)
			G.call('all_over')
		else	
		end 			
	end
	local ui = G.getUI('v_teammate')
	local c = ui.c_teammate
	c.副按钮.visible = true
end	
t['治疗'] = function()
	local o_role_人物 = G.QueryName(G.QueryName(0x10030001)[tostring(189)])
	local o_role_人物代码 = G.QueryName(0x10030001)[tostring(189)] - 0x10040000  
	local o_body_主角当前内力 = G.QueryName(0x10030001)[tostring(46)]  
	if  o_role_人物.生命 ==  o_role_人物[tostring(1)]   then 
		G.call("talk",'',o_role_人物代码,'   我现在很好啊，你要给我治疗什么？',1,1)  
		  G.call('all_over')
	else
		if o_role_人物[tostring(1)] - o_role_人物.生命 >= o_body_主角当前内力 then 
		    o_role_人物.生命 = o_role_人物.生命 + o_body_主角当前内力	
			o_role_人物.内力 = o_role_人物.内力 + o_body_主角当前内力
			o_body_主角当前内力 = 0

		else
			o_body_主角当前内力 = o_body_主角当前内力 -(o_role_人物[tostring(1)] - o_role_人物.生命)
			local o_role_增加好感 = math.floor((o_role_人物[tostring(1)] - o_role_人物.生命)/1000)	
		
			
			o_role_人物.生命 = o_role_人物[tostring(1)]
			o_role_人物.内力 = o_role_人物[tostring(2)]
            G.call('add_love',o_role_人物代码,o_role_增加好感)
		end 
		G.call("talk",'',o_role_人物代码,'   多谢你不惜消耗内力为我疗伤',1,1)  
		G.call('all_over')
		if o_role_人物.内力 >=  o_role_人物[tostring(2)] then 
			o_role_人物.内力 =  o_role_人物[tostring(2)] 
		end 
    end 
end

t['切磋'] = function()
	local o_role_人物 = G.QueryName(G.QueryName(0x10030001)[tostring(189)])
	local o_role_人物代码 = G.QueryName(0x10030001)[tostring(189)] - 0x10040000
	local o_body_主角名字 = G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)] 
	if math.random(o_role_人物[tostring(9)]) < (math.random(30) + 30 )  then 
		G.call("talk",'',o_role_人物代码,'   '..o_role_人物.切磋拒绝对白,0,0)  
		  G.call('all_over') 
	else 
		G.call("talk",'',o_role_人物代码,'   '..o_role_人物.切磋接受对白,0,0)  
		G.call('all_over')
		G.call('call_battle',1,10,1,50 + G.call('get_love',o_role_人物代码),o_role_人物代码,0,0,0,0,0)
		local o_battle_结果 = G.call('get_battle')
		if o_battle_结果  == 1 then 
			local int_mo = {}
			for i = 1,8 do 
				if G.call('get_role',o_role_人物代码,i) < G.call('get_role',o_role_人物代码,900 + i) then 
					table.insert(int_mo,i)
				end
			end
			if #int_mo > 0 then 
				local num = int_mo[math.random(#int_mo)]
				local num0 = math.floor(o_role_人物[tostring(9)]/25)
				local num1 = 0
				if num0 > 0 then 
					num1 = math.random(num0)
				else
					num1 = 1
				end 
				if num1 > 1 then
					local int_属性 =  math.random(250,500) 
					if num == 1 then
						G.call('add_role',o_role_人物代码,1, int_属性 )
						if G.call('get_role',o_role_人物代码,1) >= G.call('get_role',o_role_人物代码,901) then 
							G.call('notice1','【'..o_role_人物.姓名..'】生命已经达到上限！')
						else
							G.call('notice1','【'..o_role_人物.姓名..'】生命增长'..int_属性)
						end
					elseif num == 2 then 
						G.call('add_role',o_role_人物代码,2,int_属性  )
						if G.call('get_role',o_role_人物代码,2) >= G.call('get_role',o_role_人物代码,902) then 
							G.call('notice1','【'..o_role_人物.姓名..'】内力已经达到上限！')
						else
							G.call('notice1','【'..o_role_人物.姓名..'】内力增长'..int_属性)
						end
					elseif num == 3 then 
						G.call('add_role',o_role_人物代码,3,num1-1) 
					elseif num == 4 then 
						G.call('add_role',o_role_人物代码,4,num1-1)	
					elseif num == 5 then 
						G.call('add_role',o_role_人物代码,5,num1-1)
					elseif num == 6 then 
						G.call('add_role',o_role_人物代码,6,num1-1)
					elseif num == 7 then 
						G.call('add_role',o_role_人物代码,7,num1-1)
					elseif num == 8 then 
						G.call('add_role',o_role_人物代码,8,num1-1)	
					end 
					if num > 2  and (num1-1) > 0 then
						local str = {'生命','内力','拆招','搏击','闪躲','内功','攻击','轻身'} 
						if G.call('get_role',o_role_人物代码,num) >= G.call('get_role',o_role_人物代码,900 + num) then 
							G.call('notice1','【'..o_role_人物.姓名..'】'..str[num]..'已经达到上限！')
						else
							G.call('notice1','【'..o_role_人物.姓名..'】'..str[num]..'增长'..(num1-1))
						end
					end
				end	
				G.call("talk",'',o_role_人物代码,'   太痛快了，看来你的武功精进不少，也使我受益匪浅啊。下次有机会咱们再来比过。',1,1) 
			else
				G.call("talk",'',o_role_人物代码,'   太痛快了，看来你的武功精进不少，也使我受益匪浅啊。下次有机会咱们再来比过。',1,1)  
				G.call('notice1','【'..o_role_人物.姓名..'】全部属性已经达到上限！')
			end
		else	
			G.call("talk",'',o_role_人物代码,'   【'..G.QueryName(0x10030001)[tostring(1)]..'】兄需得努力啊，看来最近你的功夫没有什么提高',1,1)  
		end 
		local ui = G.getUI('v_teammate')
		local c = ui.c_teammate
		c.副按钮.visible = true
		c:显示更新(G.misc().队友) 	
	end 
	G.call('all_over')
	G.call('add_time',2)
	G.call('地图事件_逻辑处理')
end 
t['离队'] = function()
	local o_role_人物 = G.QueryName(G.QueryName(0x10030001)[tostring(189)])
	local o_role_人物代码 = G.QueryName(0x10030001)[tostring(189)] - 0x10040000
	local o_body_主角名字 = G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]  
	G.call("talk",'',o_role_人物代码,'   怎么,要赶我离队?前途虽然凶险，但是我何时退缩过。莫非你已有了合适人选要取代我？假如你执意如此，我也无可奈何！',1,1)
	local int_选项 = 0
	while int_选项 == 0 do
		int_选项 = G.call("menu",'',0,'',0,0,{"1,天下无不散之筵席,你我已经缘尽于此!", "2,给你开个玩笑,我怎么舍得你离开我呢？"},0)
		if int_选项 == 1 then 
			G.call('all_over')
			G.call("talk",'',o_role_人物代码,'   好吧，看来你我缘分已尽，都不必相互耽搁前途了，道不同不相为谋，以后或许见面就是兵刃相见了，望君好自珍重，好自为之！',1,1)
			G.call('all_over')
			local ui = G.getUI('v_teammate')
			local c = ui.c_teammate
	     	ui.getChildByName('属性').visible = false
			ui.getChildByName('子菜单').visible = false
			G.call('leave',o_role_人物代码)
			G.misc().队友 = 0
			c:显示更新(G.misc().队友) 
		elseif int_选项 == 2 then 
			G.call('all_over')
			G.call("talk",'',o_role_人物代码,'   咱们虽说有着过命交情，可也不能无差别的乱开玩笑,你若真有此意,请趁早言明！',1,1)
			G.call('all_over')
        end 
	end
	local ui = G.getUI('v_teammate')
	local c = ui.c_teammate
	c.副按钮.visible = true 
	c:显示队友()		
end 
t['all_over'] = function()
	G.removeUI('v_dialogue_system_select')
    G.removeUI('v_dialogue_system_select1')
    G.removeUI('v_dialogue_system_story')
	G.removeUI('v_dialogue_system_story1')
	G.removeUI('v_dialogue_system_story3')
end
t['all_off'] = function()
	local ui1 = G.getUI('v_dialogue_system_select')  
	local ui2 = G.getUI('v_dialogue_system_story') 
	local ui3 = G.getUI('v_dialogue_system_story1')
    ui1.visible = false
	ui2.visible = false
	ui3.visible = false
end
t['all_on'] = function()
	local ui1 = G.getUI('v_dialogue_system_select')  
	local ui2 = G.getUI('v_dialogue_system_story') 
	local ui3 = G.getUI('v_dialogue_system_story1')
    ui1.visible = true
	ui2.visible = true
	ui3.visible = true	
end

t['talk_over'] = function()
	G.removeUI('v_dialogue_system_story')
	G.removeUI('v_dialogue_system_story1')
	G.removeUI('v_dialogue_system_story3')
end
t['menu_over'] = function()
	G.removeUI('v_dialogue_system_select')
	G.removeUI('v_dialogue_system_select1')
end

--type=系统
--hide=true
--private=false
t['修改横幅字体'] = function(string_文本)
	local ui_obj
	ui_obj = G.getUI('v_helloworld')
	if ui_obj then 
		ui_obj.getChildByName('标题').text = string_文本 or ""
	end
end
cc = {};
function cc.limitX(v, minV, maxV)
    if v < minV then
        return minV;
    elseif v > maxV then
        return maxV;
    else
        return v;
    end
end


