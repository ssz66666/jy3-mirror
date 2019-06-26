--[[4004

]]
local G = require "gf"
local L = {}
local t = G.api
local JY = 0
--type=
--hide=true
--private=false
t['地图系统_人物'] = function()
	local ui ;
	if not G.getUI('v_citymap_system_map') then 
		return
	end 
    ui = G.getUI('v_citymap_system_map');
	local c = ui.c_citymap_system_map;
	while true do
        G.case(1, '途径牛家村-书生')
        G.case(2, '途径牛家村-曲菲菲')
        G.case(3, '途径牛家村-算命先生') 
        G.case(4, '途径牛家村-乞丐甲')
        G.case(5, '途径牛家村-乞丐乙')
        G.case(6, '途径牛家村-肉贩')
        G.case(7, '途径牛家村-慧伦')
        G.case(8, '途径牛家村-渔夫')
        G.case(9, '途径牛家村-老猎人')
        G.case(10, '途径牛家村-中年樵夫')
        G.case(11, '途径牛家村-乞丐丙')
        G.case(12, '途径牛家村-何红药')
        G.case(13, '途径牛家村-破庙无人')
        G.case(14, '途径牛家村-李捕头索债')
        G.case(15, '途径牛家村-何红药')
        G.case(16, '途径牛家村-丘处机入全真')
        G.case(17, '途径牛家村-丘处机2')
        G.case(18, '途径牛家村-破庙分赃')
        G.case(19, '途径牛家村-半瓶神仙醋')
        G.case(20, '途径牛家村-木高峰行凶')
        G.case(21, '途径牛家村-强盗屠村')
        G.case(22, '途径牛家村-超时')
        G.case(23, '聚贤庄-华山之巅')
        G.case(24, '初入全真-赵志敬')
        G.case(25, '初入全真-甄志炳')
        G.case(26, '初入全真-鹿清笃')
        G.case(27, '初入全真-丘处机')
        G.case(28, '初入全真-三月大比较')
        G.case(29, '初入全真-六月大比较')
        G.case(30, '初入全真-九月大比较')
        G.case(31, '初入全真-出师')
        G.case(32, '初入古墓-小龙女')
        G.case(33, '初入古墓-李莫愁来访')
        G.case(34, '初入武当-张三丰')
        G.case(35, '初入武当-俞岱岩')
        G.case(36, '初入武当-俞莲舟')
        G.case(37, '初入武当-殷梨亭')
        G.case(38, '初入武当-宋青书')
        G.case(39, '初入武当-宋远桥')
        G.case(47, '初入少林-慧伦')
        G.case(40, '初入少林-虚竹')
        G.case(41, '初入少林-玄慈')
        G.case(42, '初入少林-空闻')
        G.case(43, '初入少林-澄观')
        G.case(44, '初入少林-无名僧')
        G.case(45, '初入少林-方证')
        G.case(46, '初入少林-缘根')
        G.case(48, '初入武当-出师')
        G.case(49, '初入少林-出师')
        G.case(51, '初入少林-出南少林')
        G.case(50, '初入少林-测试')
        G.case(52, '初入华山-岳不群')
        G.case(53, '初入华山-岳灵姗')
        G.case(54, '初入华山-宁中则')
        G.case(55, '初入华山-令狐冲1')
        G.case(56, '初入华山-令狐冲2')
        G.case(57, '初入华山-林平之')
        G.case(58, '初入华山-穆人清')
        G.case(59, '初入华山-出师')
        G.case(60, '牛家村-破败')
        G.case(61, '牛家村-秀才')
        G.case(62, '牛家村-黄蓉')
        G.case(63, '牛家村-穆念慈')
        G.case(64, '牛家村-茶博士')
        G.case(65, '牛家村-肉贩')
        G.case(66, '牛家村-冯铁匠')
        G.case(67, '牛家村-祖千秋')
        G.case(68, '牛家村-老猎人')
        G.case(69, '牛家村-中年樵夫')
        G.case(70, '牛家村-渔夫')
        G.case(71, '城镇-京城')
        G.case(72, '城镇-西夏')
        G.case(73, '城镇-梅庄')
        G.case(74, '城镇-渡口')
        G.case(75, '城镇-无量山洞')
        G.case(76, '城镇-密林')
        G.case(77, '城镇-树林')
        G.case(78, '城镇-塞外')
        G.case(79, '城镇-还施水阁')
        G.case(80, '城镇-林家老宅')
        G.case(81, '城镇-苗人凤居')
        G.case(82, '城镇-阎基居')
        G.case(83, '城镇-药王庄')
        G.case(84, '城镇-蝴蝶谷')
        G.case(85, '城镇-胡斐居')
        G.case(86, '门派-征服')
        G.case(87, '大地图-称号')
        G.case(88, '城镇-绿柳山庄')
        G.case(89, '途径牛家村-水笙与血刀僧')
        G.case(90, '初入血刀门-宝象')
        G.case(91, '初入血刀门-血刀老祖')
        G.case(92, '初入血刀门-水笙')
        G.case(93, '初入血刀门-狄云')
        G.case(94, '初入血刀门-出师')
        G.case(95, '初入桃花岛-黄药师')
        G.case(96, '初入桃花岛-黄蓉')
        G.case(97, '初入桃花岛-傻姑')
        G.case(98, '初入桃花岛-家丁')
        G.case(99, '初入桃花岛-周伯通')
        G.case(100, '初入桃花岛-桃花阵')
        G.case(101, '初入桃花岛-出师')
        G.case(102, '初入丐帮-分舵')
        G.case(103, '初入丐帮-洪七公')
        G.case(104, '初入丐帮-全冠清')
        G.case(105, '初入丐帮-掌钵长老')
        G.case(106, '初入丐帮-执法长老')
        G.case(107, '初入丐帮-传功长老')
        G.case(108, '初入丐帮-持棒长老')
        G.case(109, '初入丐帮-出师')
        G.case(110, '初入丐帮-升袋比试')
        G.case(111, '初入丐帮-帮主不见')
        G.case(112, '初入丐帮-轩辕台')
        G.case(113, '特别剧情-十年生死两茫茫')
        G.case(114, '初入星宿-三月大比较')
        G.case(115, '初入星宿-六月大比较')
        G.case(116, '初入星宿-九月大比较')
        G.case(117, '初入星宿-丁春秋')
        G.case(118, '初入星宿-阿紫')
        G.case(119, '初入星宿-摘星子')
        G.case(120, '初入星宿-出尘子')
        G.case(121, '初入星宿-天狼子')
        G.case(122, '初入星宿-狮吼子')
        G.case(123, '初入星宿-出师')
        G.case(124, '小游戏-野球拳')
        G.case(125, '锻造师-BT')
        











        G.case(801, '初入武当')
        G.case(802, '初入少林')
        G.case(803, '初入华山')
        G.case(804, '初入全真')
        G.case(805, '初入古墓')
        G.case(806, '初入血刀门')
        G.case(807, '初入桃花岛')
        G.case(808, '初入星宿')
        G.case(809, '事件_随机切磋')
        G.case(810, '初入聚贤庄')

        G.case(997, '聚贤庄-结局')
        G.case(998, '聚贤庄-应劫')
        G.case(999, '聚贤庄-半瓶神仙醋')
        G.case(1000, '聚贤庄-华山论剑')
        G.case(1014, '地图抓蚯蚓')
        G.case(1015, '地图打猎')
        G.case(1016, '地图砍柴')
        G.case(1017, '地图钓鱼')
        local r = G.wait_case();
		if r == 1 then
            G.call('途径牛家村-书生')
        elseif r == 1017 then
			if G.call('get_item',318) > 0 then 
			   G.call('fishing')
			   G.call('add_time',4)
			   G.call('turn_map')
			else
			   G.call("talk",'',0,'   还是先去树林抓蚯蚓再来吧',0,0)
			   G.call('all_over')
			end    
		elseif r == 1015 then
			G.call('hunting')
			G.call('add_time',4)
			G.call('turn_map')
		elseif r == 1016 then
			G.call('logging')
			G.call('add_time',4)
			G.call('turn_map')
        elseif r == 1014 then
            G.call("talk",'',0,'   今日天气真不错，看能挖到多少蚯蚓吧!',0,0)
            G.call('dig_earthworms')
            G.call("talk",'',0,'   挖到了'..G.misc().蚯蚓数量..'条蚯蚓',0,0)
            if G.misc().蚯蚓数量 > 20 then 
                G.misc().蚯蚓数量 = 20
            end
            if G.misc().计时器 >= 5 and G.misc().蚯蚓数量 >= 15 then 
                G.misc().挖宝 = 0
            end
            if G.misc().挖宝 == 1 and  G.misc().蚯蚓数量 >= 10 then
                if math.random(100) > 50 then 
                    local int_几率 = math.random(10000)
                    local item_1 = {5,32,63,188} --
                    local item_2 = {17,43,65}    --
                    local item_3 = {115,249,265} --
                    local item_4 = {214,215,234,235} --
                    local item_5 = {97,118,121 }  --
                    local item = 5
                    if int_几率 <= 5890 then 
                        item = item_1[math.random(#item_1)]
                    elseif int_几率 <= 8890 and int_几率 > 5890 then
                        item = item_2[math.random(#item_2)]
                    elseif int_几率 <= 9950 and int_几率 > 8890 then
                        item = item_3[math.random(#item_3)]
                    elseif int_几率 <= 9995 and int_几率 > 9950 then 
                        item = item_4[math.random(#item_4)]
                    elseif int_几率 <= 10000 and int_几率 > 9995 then  
                        item = item_5[math.random(#item_5)] 
                    end
                    local str = G.QueryName(0x100b0000 + item - 1).名称
                    G.call('add_item',item,1)
                    G.call("talk",'',0,'   心在跳，火在烧，竟然还挖到一个宝箱，里面竟然是【'..str..'】！',0,0)
                    if int_几率 > 8890 then
                        G.call("talk",'',0,'   心在跳，火在烧，竟然还有一个额外奖励！',0,0)
                        G.call('通用_抽礼物',9,0) 
                    end
                else
                    G.call("talk",'',0,'   心在跳，火在烧，竟然还挖到一个宝箱....里面竟然有1文钱！',0,0)
                    G.call('add_money',1)
                end
            end    
            local o_zzqy = G.QueryName(0x10170014)
            if o_zzqy.进度列表[1].当前进度 < 20000 then 
                o_zzqy.进度列表[1].当前进度 = o_zzqy.进度列表[1].当前进度 + G.misc().蚯蚓数量
                G.call('set_newpoint',80,G.call('get_newpoint',80)- G.misc().蚯蚓数量  )
            end
            if o_zzqy.进度列表[1].当前进度 >= 10000 then 
                o_zzqy.进度列表[1].完成 = 1
                if o_zzqy.完成 == 0 then 
                    o_zzqy.完成 = 1
                    G.call('notice1','恭喜完成成就【抓抓蚯蚓】')
                end
            end
            G.call('add_item',318,G.misc().蚯蚓数量)
            G.call('all_over')
            G.call('turn_map')
        elseif r == 2 then
            G.call('途径牛家村-曲菲菲')
        elseif r == 3 then
            G.call('途径牛家村-算命先生')
        elseif r == 4 then
            G.call('途径牛家村-乞丐甲')
        elseif r == 5 then
            G.call('途径牛家村-乞丐乙')
        elseif r == 6 then
            G.call('途径牛家村-肉贩')
        elseif r == 7 then
            G.call('途径牛家村-慧伦')
        elseif r == 8 then
            G.call('途径牛家村-渔夫')
        elseif r == 9 then
            G.call('途径牛家村-老猎人')
        elseif r == 10 then
            G.call('途径牛家村-中年樵夫')
        elseif r == 11 then
            G.call('途径牛家村-乞丐丙')
        elseif r == 12 then
            G.call('途径牛家村-何红药')
        elseif r == 13 then
            G.call('途径牛家村-破庙无人')
        elseif r == 14 then
            G.call('途径牛家村-李捕头索债')
        elseif r == 15 then
            G.call('途径牛家村-何红药')
        elseif r == 16 then
            G.call('途径牛家村-丘处机入全真')
        elseif r == 17 then
            G.call('途径牛家村-丘处机2')
        elseif r == 18 then
            G.call('途径牛家村-破庙分赃')
        elseif r == 19 then
            G.call('途径牛家村-半瓶神仙醋')
        elseif r == 20 then
            G.call('途径牛家村-木高峰行凶')
        elseif r == 21 then
            G.call('途径牛家村-强盗屠村')
        elseif r == 22 then
            G.call('途径牛家村-超时')
        elseif r == 23 then
            G.call('聚贤庄-华山之巅')
        elseif r == 24 then
            G.call('初入全真-赵志敬')
        elseif r == 25 then
            G.call('初入全真-甄志炳')
        elseif r == 26 then
            G.call('初入全真-鹿清笃')
        elseif r == 27 then
            G.call('初入全真-丘处机')
        elseif r == 28 then
            G.call('初入全真-三月大比较')
        elseif r == 29 then
            G.call('初入全真-六月大比较')
        elseif r == 30 then
            G.call('初入全真-九月大比较')
        elseif r == 31 then
            G.call('初入全真-出师')
        elseif r == 32 then
            G.call('初入古墓-小龙女')
        elseif r == 33 then
            G.call('初入古墓-李莫愁来访')
        elseif r == 34 then
            G.call('初入武当-张三丰')
        elseif r == 35 then
            G.call('初入武当-俞岱岩')
        elseif r == 36 then
            G.call('初入武当-俞莲舟')
        elseif r == 37 then
            G.call('初入武当-殷梨亭')
        elseif r == 38 then
            G.call('初入武当-宋青书')
        elseif r == 39 then
            G.call('初入武当-宋远桥')
        elseif r == 40 then
            G.call('初入少林-虚竹')
        elseif r == 41 then
            G.call('初入少林-玄慈')
        elseif r == 42 then
            G.call('初入少林-空闻')
        elseif r == 43 then
            G.call('初入少林-澄观')
        elseif r == 44 then
            G.call('初入少林-无名僧')
        elseif r == 45 then
            G.call('初入少林-方证')
        elseif r == 46 then
            G.call('初入少林-缘根')
        elseif r == 47 then
            G.call('初入少林-慧伦')
        elseif r == 48 then
            G.call('初入武当-出师')
        elseif r == 49 then
            G.call('初入少林-出师')
        elseif r == 51 then
            G.call('初入少林-出南少林')
        elseif r == 50 then
            G.call('初入少林-测试')
        elseif r == 52 then
            G.call('初入华山-岳不群')
        elseif r == 53 then
            G.call('初入华山-岳灵姗')
        elseif r == 54 then
            G.call('初入华山-宁中则')
        elseif r == 55 then
            G.call('初入华山-令狐冲1')
        elseif r == 56 then
            G.call('初入华山-令狐冲2')
        elseif r == 57 then
            G.call('初入华山-林平之')
        elseif r == 58 then
            G.call('初入华山-穆人清')
        elseif r == 59 then
            G.call('初入华山-出师')
        elseif r == 60 then
            G.call('牛家村-破败')
        elseif r == 61 then
            G.call('牛家村-秀才')
        elseif r == 62 then
            G.call('牛家村-黄蓉')
        elseif r == 63 then
            G.call('牛家村-穆念慈')
        elseif r == 64 then
            G.call('牛家村-茶博士')
        elseif r == 65 then
            G.call('牛家村-肉贩')
        elseif r == 66 then
            G.call('牛家村-冯铁匠')
        elseif r == 67 then
            G.call('牛家村-祖千秋')
        elseif r == 68 then
            G.call('途径牛家村-老猎人')
        elseif r == 69 then
            G.call('途径牛家村-中年樵夫')
        elseif r == 70 then
            G.call('途径牛家村-渔夫')
        elseif r == 71 then
            G.call('城镇-京城')
        elseif r == 72 then
            G.call('城镇-西夏')
        elseif r == 73 then
            G.call('城镇-梅庄')
        elseif r == 74 then
            G.call('城镇-渡口')
        elseif r == 75 then
            G.call('城镇-无量山洞')
        elseif r == 76 then
            G.call('城镇-密林')
        elseif r == 77 then
            G.call('城镇-树林')
        elseif r == 78 then
            G.call('城镇-塞外')
        elseif r == 79 then
            G.call('城镇-还施水阁')
        elseif r == 80 then
            G.call('城镇-林家老宅')
        elseif r == 81 then
            G.call('城镇-苗人凤居')
        elseif r == 82 then
            G.call('城镇-阎基居')
        elseif r == 83 then
            G.call('城镇-药王庄')
        elseif r == 84 then
            G.call('城镇-蝴蝶谷')
        elseif r == 85 then
            G.call('城镇-胡斐居')
        elseif r == 88 then
            G.call('城镇-绿柳山庄')
        elseif r == 86 then
            G.call('门派-征服')  
        elseif r == 87 then
            G.call('大地图-称号')  
        elseif r == 89 then
            G.call('途径牛家村-水笙与血刀僧')
        elseif r == 90 then
            G.call('初入血刀门-宝象')
        elseif r == 91 then
            G.call('初入血刀门-血刀老祖')
        elseif r == 92 then
            G.call('初入血刀门-水笙')
        elseif r == 93 then
            G.call('初入血刀门-狄云')
        elseif r == 94 then
            G.call('初入血刀门-出师')
        elseif r == 95 then
            G.call('初入桃花岛-黄药师')
        elseif r == 96 then
            G.call('初入桃花岛-黄蓉')
        elseif r == 97 then
            G.call('初入桃花岛-傻姑')
        elseif r == 98 then
            G.call('初入桃花岛-家丁')
        elseif r == 99 then
            G.call('初入桃花岛-周伯通')
        elseif r == 100 then
            G.call('初入桃花岛-桃花阵')
        elseif r == 101 then
            G.call('初入桃花岛-出师')
        elseif r == 102 then
            G.call('初入丐帮-分舵')
        elseif r == 103 then
            G.call('初入丐帮-洪七公')
        elseif r == 104 then
            G.call('初入丐帮-全冠清')
        elseif r == 105 then
            G.call('初入丐帮-掌钵长老')
        elseif r == 106 then
            G.call('初入丐帮-执法长老')
        elseif r == 107 then
            G.call('初入丐帮-传功长老')
        elseif r == 108 then
            G.call('初入丐帮-持棒长老')
        elseif r == 109 then
            G.call('初入丐帮-出师')
        elseif r == 110 then
            G.call('初入丐帮-升袋比试')
        elseif r == 111 then
            G.call('初入丐帮-帮主不见')
        elseif r == 112 then
            G.call('初入丐帮-轩辕台')
        elseif r == 113 then
            G.call('特别剧情-十年生死两茫茫')
        elseif r == 114 then
            G.call('初入星宿-三月大比较')
        elseif r == 115 then
            G.call('初入星宿-六月大比较')
        elseif r == 116 then
            G.call('初入星宿-九月大比较')
        elseif r == 117 then
            G.call('初入星宿-丁春秋')
        elseif r == 118 then
            G.call('初入星宿-阿紫')
        elseif r == 119 then
            G.call('初入星宿-摘星子')
        elseif r == 120 then
            G.call('初入星宿-出尘子')
        elseif r == 121 then
            G.call('初入星宿-天狼子')
        elseif r == 122 then
            G.call('初入星宿-狮吼子')
        elseif r == 123 then
            G.call('初入星宿-出师')
        elseif r == 124 then
            G.call('小游戏-野球拳')
        elseif r == 125 then
            G.call('锻造师-BT')




        elseif r == 801 then
            G.call('初入武当')
        elseif r == 802 then
            G.call('初入少林')
        elseif r == 803 then
            G.call('初入华山')
        elseif r == 804 then
            G.call('初入全真')
        elseif r == 805 then
            G.call('初入古墓')
        elseif r == 806 then
            G.call('初入血刀门')
        elseif r == 807 then
            G.call('初入桃花岛')
        elseif r == 808 then
            G.call('初入星宿')
        elseif r == 809 then
            G.call('事件_随机切磋')
        elseif r == 810 then
            G.call('初入聚贤庄')
        elseif r == 997 then
            G.call('聚贤庄-结局')
        elseif r == 998 then
            G.call('聚贤庄-应劫')
        elseif r == 999 then
            G.call('聚贤庄-半瓶神仙醋')
        elseif r == 1000 then
            G.call('聚贤庄-华山论剑')


        end	


    end		

end 
--type=
--hide=true
--private=false
t['大地图-称号']=function()
    if G.call('get_story',32) == 1 and G.call('get_story',34) == 1 and G.call('get_story',36) == 1 
    and G.call('get_story',37) == 1 and G.call('get_story',17) == 1 and G.call('get_point',160) == 0  then 
        G.call("talk",'',0,'   我现在统领五岳剑派：华山派、嵩山派、衡山派、恒山派、泰山派...可说的上是名副其实的【五岳盟主】了。',0,0)
        G.call('set_CH','五岳盟主')
        G.call('set_point',160,1)
    end   
    local int_no = 0
    for i = 20,38 do
        if G.call('get_story',i) == 1 then 
            int_no = int_no + 1
        end
    end    
    if int_no > 10 and G.call('get_point',161) == 0 then 
        if G.call('get_point',15) > 49 then 
            G.call("talk",'',0,'   我现在已经统率江湖上半数门派，是理所当然的【武林盟主】了。',0,0)
            G.call('set_CH','武林盟主')
        else
            G.call("talk",'',0,'   我现在已经统率江湖上半数门派，是理所当然的【武林霸主】了。',0,0)
            G.call('set_CH','武林霸主')
        end 
        G.call('set_point',161,1)
    end  
    if int_no ==19  and G.call('get_point',162) == 0 and G.call('get_story',40) == 1 and G.call('get_story',42) == 1  then  
        G.call("talk",'',0,'   现在江湖之中所有门派尽归我的旗号下，这个【武林皇帝】那是非我莫属啦。哈哈哈哈...',0,0)
        G.call('set_CH','武林皇帝')
        G.call('set_point',162,1)
    end 
    if G.call('get_point',14) >= 999  and G.call('get_story',47) == 0 then 
        G.call('set_story',47,1)
        G.call("talk",'',38,'    '..G.QueryName(0x10030001)[tostring(1)]..G.QueryName(0x10030001)[tostring(2)]..'你现在终于闯出很大的名堂了。但是你可知你现在的处境有多危险吗？当今世上势力极强的几伙人看你极不顺眼，特让我来给你下【挑战书】！',1,1)
        G.call("talk",'',38,'你要是够胆，就去【华山之巅】跟他们一绝生死。可别忘了多准备些丹药救命。',1,1)
    end 
    G.call('all_over')
end
--type=
--hide=true
--private=false
t['初入聚贤庄']=function()
    G.call('地图_进入地图','大地图',41,22)
    G.call("talk",'',0,'    这中原大地如此广阔，我该从何处开始我的江湖行程呢？',0,0)
    G.call("talk",'',38,'    这位兄弟一脸茫然的样子，想必是刚出来行走江湖。在下【聚贤庄】庄主半瓶神仙醋，醋某生平最好结交江湖朋友。小兄弟可随醋某到敝庄一叙，待醋某为你指点困惑。',2,1)
    G.call("talk",'',0,'    既如此，那就多多打扰醋庄主了。~（真是标新立异的称呼）',0,0)
    G.call('地图_进入地图','聚贤庄',40,59)
    G.call("talk",'',38,'   此处便是醋某的【聚贤庄】，本来是叫【醋仙居】的，后来被误认做副食店，所以才无奈改名。此庄乃是为结交天下各路豪杰好汉而建，而且还为过往的江湖人士免费提供住宿、练功的场所，',2,1)
    G.call("talk",'',38,'因此在江湖上颇有微名。即使是像兄弟这般初入江湖的，醋某也是一视同仁。',2,1)
    G.call("talk",'',0,'   也就是说我可以在这庄里蹭吃蹭喝咯？',0,0)
    G.call("talk",'',38,'   心无忧虑才会整天享受吃喝玩乐，我还真是羡慕你有这种心态。',2,1)
    G.call("talk",'',0,'   怎么可能没有忧虑呢？我可是将来要干大事的人，当然不会满脑子吃吃喝喝的事情。',0,0)
    G.call("talk",'',38,'   你现在的运气要算是好的，就算是无所事事混个七八十年只要不去自找麻烦也就不会性命之忧。不过这个江湖世界本来就是弱肉强食，只有真正强者才能安身立命，守好自己的家财，保护自己心爱的人。',2,1)
    G.call("talk",'',38,'   否则，你总有一日眼看着自己的钱财、爱人被别人夺走！',2,1)
    G.call("talk",'',0,'   说不定还没搞到银子和女人我都被人虐了，这种提心吊胆的江湖生涯实在望而生畏。',0,0)
    G.call("talk",'',38,'   放心，有我在，保你女人银子都有，还会让你有机会学成上乘武功！',2,1)
    G.call("talk",'',0,'   你早说嘛，害的人家小心肝扑通扑通的跳了半天。有你老哥在真是叫我有惊无险，谢天谢地。',0,0)
    G.call("talk",'',38,'   我可没保证你能长命百岁寿与天齐。人在江湖飘本来就是九死一生的事情，真要是命数使然，那也无可奈何。',2,1)
    G.call("talk",'',0,'   说了半天净是废话。赶紧切入正题吧，我还要赶时间！',0,0)
    G.call("talk",'',38,'   好，咱们先说眼下的事情。我聚贤庄消息灵通，江湖上发生的大小事情多半都瞒不过我的耳目。我会每月发布【江湖事件公告】，上面列举了本月江湖上发生的事情。',2,1)
    G.call("talk",'',38,'   你若是能帮忙解决那些事情，对你的江湖地位都会有莫大好处，前提是你要有足够的能力。',2,1)
    G.call("talk",'',38,'   也并不是说呆在庄里就尽知天下事的，有些【江湖奇遇】我无法探听到，还须得你亲自去经历。这里可以免费休息和练功。每次休息时间是六个时辰，同时会保存记录，这一点须得切记切记！',2,1)
    G.call("talk",'',0,'   偌大一个中原武林，光是跑个来回就是几个月，累也累虚脱了，还谈经历什么江湖奇遇艳遇的。',0,0)
    G.call("talk",'',38,'   这一点你大可不必担心。醋某送一匹好马，此马一个跟头就是十万八千里，小小中原弹丸之地，无论你去到哪里，都不会花费你半点时间。',2,1)
    G.call("talk",'',0,'   （原来这马是齐天大圣转世...）原来什么事情你都准备好了，我还担心什么。这就立刻开始这段惊心动魄的江湖旅程咯！',0,0)
    G.call('all_over')
    if G.misc().礼包 == nil  and G.call('get_point',237) > 1 then 
        G.misc().礼包 = 1
    end
    if G.misc().出师 == nil then 
        G.misc().出师 = 1
    end
    G.call('goto_map',4)

end  
--type=
--hide=true
--private=false  
t['聚贤庄-半瓶神仙醋']=function()
    if G.call('in_team',38) == true and G.call('get_point',237) > 1 then
        G.call("talk",'',38,'   '..G.QueryName(0x10030001)[tostring(1)]..'兄弟找我有什么事情吗？',2,1)
        local int_选项 = 0
        while int_选项 == 0 do
            int_选项 = G.call("menu",'',0,'',0,0,{"1,查看本月公告","2,修为点转化属性","3,闭关十天修炼武功","4,猜数字","5,没有事情","6,下一页"},0)
            if int_选项 == 1 then
                G.call('all_over')
                G.call('call_lakes')
            elseif  int_选项 == 2 then
                if G.call('get_point',5) > 0 then  
                    G.call('all_over')
                    G.call("talk",'',38,'   你现在有【'..G.call('to_chinese',G.QueryName(0x10030001)[tostring(5)])..'点'..'】,你想转化成什么属性?',2,1)
                    local int_选项 = 0
                    while true do
                        int_选项 = G.call("menu",'',0,'',0,0,{"1,转化生命为【生命内力+50】","2,转化成搏击属性【搏击+1】",'3,转化成拆招属性【拆招+1】',"4,转化成闪躲属性【闪躲+1】","5,没有事情"},0)
                        local int_难度 = G.QueryName(0x10160000 +G.call('get_point',143)).难度
                        local int_点数 = 100
                        if int_难度 == 1 then 
                            int_点数 = 100
                        elseif int_难度 == 2 then 
                            int_点数 = 120
                        elseif int_难度 == 3 then 
                            int_点数 = 150
                        end
                        if int_选项 == 1 then 
                            if G.call('get_point',45) >= 50000 and G.call('get_point',47) >= 50000 then 
                                G.call("talk",'',38,'    已经不需要再提升了',2,1)
                            else
                                if G.call('get_point',5) > 0 then 
                                    G.call('add_point',45,50)
                                    G.call('add_point',47,50)
                                    G.call('add_point',5,-1)
                                    G.call("talk",'',38,'    生命内力各加50',2,1) 
                                    G.call("talk",'',38,'   你现在有【'..G.call('to_chinese',G.QueryName(0x10030001)[tostring(5)])..'点'..'】,你想转化成什么属性?',2,1)
                                else     
                                    G.call("talk",'',38,'    你还没有修为点，等你升过级，有了修为点再找我转化吧。',2,1) 
                                    G.call('all_over')
                                    break
                                end 
                            end
                        elseif int_选项 == 2 then 
                            if G.call('get_point',29) >=  int_点数 then 
                                G.call("talk",'',38,'    已经不需要再提升了',2,1)
                            else  
                                if G.call('get_point',5) > 0 then 
                                    G.call('add_point',29,1)
                                    G.call('add_point',5,-1)
                                    G.call("talk",'',38,'    搏击加1',2,1) 
                                    G.call("talk",'',38,'   你现在有【'..G.call('to_chinese',G.QueryName(0x10030001)[tostring(5)])..'点'..'】,你想转化成什么属性?',2,1)
                                else     
                                    G.call("talk",'',38,'    你还没有修为点，等你升过级，有了修为点再找我转化吧。',2,1) 
                                    G.call('all_over')
                                    break
                                end    
                            end
                        elseif int_选项 == 3 then 
                            if G.call('get_point',28) >=  int_点数 then 
                                G.call("talk",'',38,'    已经不需要再提升了',2,1)
                                G.call('all_over')
                                break
                            else  
                                if G.call('get_point',5) > 0 then 
                                    G.call('add_point',28,1)
                                    G.call('add_point',5,-1)
                                    G.call("talk",'',38,'    拆招加1',2,1) 
                                    G.call("talk",'',38,'   你现在有【'..G.call('to_chinese',G.QueryName(0x10030001)[tostring(5)])..'点'..'】,你想转化成什么属性?',2,1)  
                                else     
                                    G.call("talk",'',38,'    你还没有修为点，等你升过级，有了修为点再找我转化吧。',2,1) 
                                    G.call('all_over')
                                    break
                                end  
                            end
                        elseif int_选项 == 4 then 
                            if G.call('get_point',30) >=  int_点数 then 
                                G.call("talk",'',38,'    已经不需要再提升了',2,1) 
                                G.call('all_over')
                                break
                            else
                                if G.call('get_point',5) > 0 then 
                                    G.call('add_point',30,1)
                                    G.call('add_point',5,-1)
                                    G.call("talk",'',38,'    闪躲加1',2,1) 
                                    G.call("talk",'',38,'   你现在有【'..G.call('to_chinese',G.QueryName(0x10030001)[tostring(5)])..'点'..'】,你想转化成什么属性?',2,1)
                                else     
                                    G.call("talk",'',38,'    你还没有修为点，等你升过级，有了修为点再找我转化吧。',2,1) 
                                    G.call('all_over')
                                    break
                                end  
                            end
                        elseif int_选项 == 5 then
                            G.call('all_over')
                            break
                        end      
                    end 
                else
                    G.call("talk",'',38,'    你还没有修为点，等你升过级，有了修为点再找我转化吧。',2,1) 
                    G.call('all_over')
                end  
            elseif  int_选项 == 3 then  
                G.call('all_over')
                local JY = 0
                if G.call('get_point',4) < 50 then
                    local n = G.call('get_point',4)
                    JY = math.floor(15 *n* (n+1)*   G.QueryName(0x10030001)[tostring(200)]/100 * 0.3) 
                else
                    JY = math.floor(15 *50* 51*   G.QueryName(0x10030001)[tostring(200)]/100* 0.85)
                end  
                --G.call('dark')
                if G.call('get_point',4) > 79 and G.call('get_story',14) == 0 and G.call('get_point',22) > 80 and G.call('get_point',23) > 80 and G.call('get_point',24) > 80
                and G.call('get_point',25) > 80 and G.call('get_point',8) == 0 then 
                    G.call('set_story',14,1) 
                    G.call("talk",'',0,'    我已学会了这么多功夫，何不融汇百家独创一门？我得想想我发明的这个功夫叫什么名堂。',0,0) 
                    G.call('自创武功')
                    G.call('learnmagic',139)
                    --自创条件等级>=80,5项兵器值80+
                end 
                G.call('add_day',10)
                G.call('add_point',3,JY)
                G.call('all_over') 
                G.call('turn_map')  
            elseif  int_选项 == 4 then
                G.call('all_over')
                G.call('猜数字')  
            elseif int_选项 == 5 then 
                G.call('all_over')
            elseif  int_选项 == 6 then 
                G.call('all_over')
                if not G.misc().梦幻测试 then 
                    G.misc().梦幻测试 = 0
                end
                G.call("talk",'',38,'   兄弟找我有什么事情吗？',2,1)
                local int_选项 = 0
                while int_选项 == 0 do
                    if G.misc().梦幻测试 == 1 then
                        int_选项 = G.call("menu",'',0,'',0,0,{"1,笑梦游记(需对应印记)","2,无尽挑战","3,没有事情"},0)
                    else
                        int_选项 = G.call("menu",'',0,'',0,0,{"1,机关拼图(无奖励)","2,无尽挑战","3,没有事情"},0)
                    end
                    if int_选项 == 1 then 
                        if G.misc().梦幻测试 == 1 then
                            G.call('all_over')
                            G.call('模式_笑梦游记')
                        else
                            G.call('all_over')
                            G.call('organ')
                        end
                    elseif int_选项 == 2 then
                        for i = 1,5 do
                            if  G.misc()['通天塔奖励_'..i] == nil then 
                                G.misc()['通天塔奖励_'..i] = 0
                            end
                            if  G.misc()['通天塔单人奖励_'..i] == nil then 
                                G.misc()['通天塔单人奖励_'..i] = 0
                            end
                        end
                        G.call('all_over')
                        local int_min = G.call('通用_读取时间差')  
                        if int_min   >= 60  then   
                            G.call("talk",'',38,'    请选择无尽模式！',2,1) 
                            local int_选项 = 0
                            while int_选项 == 0 do
                                int_选项 = G.call("menu",'',0,'',0,0,{"1,单人模式","2,组队模式","3,没有事情"},0)
                                if int_选项 == 1 then 
                                    G.call("talk",'',38,'    无尽挑战游戏时间每经过60分钟才能完成一次，请小心应对！',2,1) 
                                    G.call('all_over')
                                    G.call('通用_存档',G.call('get_point',143))
                                    G.call('副本_通天塔',1) 
                                    G.call('通用_记录时间')
                                    G.misc().通天塔监控 = -8
                                elseif int_选项 == 2 then
                                    G.call("talk",'',38,'    无尽挑战游戏时间每经过60分钟才能完成一次，请小心应对！',2,1) 
                                    G.call('all_over')
                                    G.call('通用_存档',G.call('get_point',143))
                                    G.call('副本_通天塔',0) 
                                    G.call('通用_记录时间')
                                    G.misc().通天塔监控 = -8
                                elseif int_选项 == 3 then
                                    G.call('all_over')
                                end    
                            end   
                        else
                            G.call("talk",'',38,'    还需'..60-int_min..'分钟才能再次挑战',2,1) 
                        end   
                        G.call('all_over')
                    elseif int_选项 == 3 then
                        G.call('all_over')
                    end
                end
            end 
        end 
    else 
        G.call("talk",'',38,'   '..G.QueryName(0x10030001)[tostring(1)]..'兄弟找我有什么事情吗？',2,1)
        local int_选项 = 0
        while int_选项 == 0 do
            int_选项 = G.call("menu",'',0,'',0,0,{"1,查看本月公告","2,与庄主切磋武功","3,修为点转化属性","4,闭关十天修炼武功","5,没有事情"},0)
            if int_选项 == 1 then
                G.call('all_over')
                G.call('call_lakes')
                
            elseif  int_选项 == 2 then  
                G.call('all_over')
                local p = 0
                for i = 1,38 do 
                    if G.QueryName(0x10080000+i).是否完成 == true then 
                       p = p + 1
                    end    
                end 
                if G.call('get_love',38) >= 80 and p >= 20 and G.call('in_team',38) == false and G.call('get_point',237)  >= 2 then 
                    G.call("talk",'',38,'    咱们也不是一两天的交情了，看你现在奋斗得这么辛苦，我真是有心想帮你一把。把你的队伍给我腾出一个空位，我好与你并肩作战！',2,1)
                    G.call('join',38)
                    G.call('all_over')
                else    
                    G.call("talk",'',0,'   我学了这么多招数还没地方施展，就拿你过过招吧！',0,0)
                    G.call('all_over')
                    local o_role = G.QueryName(0x100400df)
                    o_role.拥有 = 0
                    G.call('set_role',223,1,4000)
                    G.call('set_role',223,2,4000)
                    G.call('set_role',223,15,4000)
                    G.call('set_role',223,14,4000)
                    G.call('set_role',223,10,500)
                    G.call('set_role',223,11,500)
                    G.call('set_role',223,12,500)
                    G.call('set_roleskill',223,1,math.random(129)+1)
                    G.call('set_roleskill',223,2,math.random(129)+1)
                    G.call('set_roleskill',223,3,math.random(129)+1)
                    if G.call('get_roleskill',223,1) == 83 or G.call('get_roleskill',223,1) == 97 then 
                        G.call('set_roleskill',223,1,80) 
                    end 
                    if G.call('get_roleskill',223,2) == 83 or G.call('get_roleskill',223,2) == 97 then 
                        G.call('set_roleskill',223,2,81) 
                    end  
                    if G.call('get_roleskill',223,3) == 83 or G.call('get_roleskill',223,3) == 97 then 
                        G.call('set_roleskill',223,3,82) 
                    end 
                    G.call('call_battle',1,10,1,G.call('get_love',38)*0.3,223,0,0,0,0,0)
                    local o_battle_结果 = G.call('get_battle') 
                    if o_battle_结果  == 1 then--
                        G.call('add_love',38,3)
                        G.call("talk",'',38,'    我真的很想怀疑一下，你是不是又偷偷作弊了？我这么强悍怎会被你打倒，不甘心啊！',2,1)
                        G.call('all_over')
                    else
                        G.call('add_love',38,-4)
                        if G.call('get_love',38) < 10 then 
                            G.call('set_love',38,10) 
                        end 
                        local m = math.random(10) 
                        if G.call('get_point',4) < 31 then 
                            local num = {17,30,54,106,116,173,156} 
                            if m < 8 then 
                                local str = G.QueryName(0x10050000 + num[m] - 1).名称
                                if G.call('get_magic',num[m]) <= 0 then 
                                    G.call("talk",'',38,'    你的功夫太差，我传你一套【'..str..'】，平时好好练练吧。',2,1)
                                    G.call('learnmagic',num[m])
                                    G.call('all_over')
                                else
                                    G.call("talk",'',38,'    我会使百家拳术，要是会被你打败，那真是没天理了，哇哈哈哈。',2,1)
                                    G.call('all_over')
                                end
                            else 
                                G.call("talk",'',38,'    我会使百家拳术，要是会被你打败，那真是没天理了，哇哈哈哈。',2,1)
                                G.call('all_over')
                            end 
                        else
                            local num = {19,24,65,82,130,171,169} 
                            if m < 8 then 
                                local str = G.QueryName(0x10050000 + num[m] - 1).名称
                                if G.call('get_magic',num[m]) <= 0 then 
                                    G.call("talk",'',38,'    你的功夫太差，我传你一套【'..str..'】，平时好好练练吧。',2,1)
                                    G.call('learnmagic',num[m])
                                    G.call('all_over')
                                else
                                    G.call("talk",'',38,'    我会使百家拳术，要是会被你打败，那真是没天理了，哇哈哈哈。',2,1)
                                    G.call('all_over')
                                end
                            else 
                                G.call("talk",'',38,'    我会使百家拳术，要是会被你打败，那真是没天理了，哇哈哈哈。',2,1)
                                G.call('all_over')
                            end 
                        end 
                    end 
                    o_role.拥有 = 1
                    G.call('add_time',4)
                    G.call('turn_map')
                end     
            elseif  int_选项 == 3 then
                if G.call('get_point',5) > 0 then  
                    G.call('all_over')
                    G.call("talk",'',38,'   你现在有【'..G.call('to_chinese',G.QueryName(0x10030001)[tostring(5)])..'点'..'】,你想转化成什么属性?',2,1)
                    local int_选项 = 0
                    while true do
                        int_选项 = G.call("menu",'',0,'',0,0,{"1,转化生命为【生命内力+50】","2,转化成搏击属性【搏击+1】",'3,转化成拆招属性【拆招+1】',"4,转化成闪躲属性【闪躲+1】","5,没有事情"},0)
                        local int_难度 = G.QueryName(0x10160000 +G.call('get_point',143)).难度
                        local int_点数 = 100
                        if int_难度 == 1 then 
                            int_点数 = 100
                        elseif int_难度 == 2 then 
                            int_点数 = 120
                        elseif int_难度 == 3 then 
                            int_点数 = 150
                        end
                        if int_选项 == 1 then 
                            if G.call('get_point',45) >= 50000 and G.call('get_point',47) >= 50000 then 
                                G.call("talk",'',38,'    已经不需要再提升了',2,1)
                            else
                                if G.call('get_point',5) > 0 then 
                                    G.call('add_point',45,50)
                                    G.call('add_point',47,50)
                                    G.call('add_point',5,-1)
                                    G.call("talk",'',38,'    生命内力各加50',2,1) 
                                    G.call("talk",'',38,'   你现在有【'..G.call('to_chinese',G.QueryName(0x10030001)[tostring(5)])..'点'..'】,你想转化成什么属性?',2,1)
                                else     
                                    G.call("talk",'',38,'    你还没有修为点，等你升过级，有了修为点再找我转化吧。',2,1) 
                                    G.call('all_over')
                                    break
                                end 
                            end
                        elseif int_选项 == 2 then  
                            if G.call('get_point',5) > 0 then 
                                if G.call('get_point',29) >=  int_点数 then 
                                    G.call("talk",'',38,'    已经不需要再提升了',2,1) 
                                else
                                    G.call('add_point',29,1)
                                    G.call('add_point',5,-1)
                                    G.call("talk",'',38,'    搏击加1',2,1) 
                                    G.call("talk",'',38,'   你现在有【'..G.call('to_chinese',G.QueryName(0x10030001)[tostring(5)])..'点'..'】,你想转化成什么属性?',2,1)
                                end
                            else     
                                G.call("talk",'',38,'    你还没有修为点，等你升过级，有了修为点再找我转化吧。',2,1) 
                                G.call('all_over')
                                break
                            end    
                        elseif int_选项 == 3 then 
                            if G.call('get_point',5) > 0 then 
                                if G.call('get_point',28) >=  int_点数 then 
                                    G.call("talk",'',38,'    已经不需要再提升了',2,1) 
                                else
                                    G.call('add_point',28,1)
                                    G.call('add_point',5,-1)
                                    G.call("talk",'',38,'    拆招加1',2,1) 
                                    G.call("talk",'',38,'   你现在有【'..G.call('to_chinese',G.QueryName(0x10030001)[tostring(5)])..'点'..'】,你想转化成什么属性?',2,1)
                                end
                            else     
                                G.call("talk",'',38,'    你还没有修为点，等你升过级，有了修为点再找我转化吧。',2,1) 
                                G.call('all_over')
                                break
                            end  
                        elseif int_选项 == 4 then 
                            if G.call('get_point',5) > 0 then 
                                if G.call('get_point',30) >=  int_点数 then 
                                    G.call("talk",'',38,'    已经不需要再提升了',2,1) 
                                else
                                    G.call('add_point',30,1)
                                    G.call('add_point',5,-1)
                                    G.call("talk",'',38,'    闪躲加1',2,1) 
                                    G.call("talk",'',38,'   你现在有【'..G.call('to_chinese',G.QueryName(0x10030001)[tostring(5)])..'点'..'】,你想转化成什么属性?',2,1)
                                end
                            else     
                                G.call("talk",'',38,'    你还没有修为点，等你升过级，有了修为点再找我转化吧。',2,1) 
                                G.call('all_over')
                                break
                            end  
                        elseif int_选项 == 5 then
                            G.call('all_over')
                            break
                        end      
                    end 
                else
                    G.call("talk",'',38,'    你还没有修为点，等你升过级，有了修为点再找我转化吧。',2,1) 
                    G.call('all_over')
                end  
            elseif  int_选项 == 4 then  
                G.call('all_over')
                local JY = 0
                if G.call('get_point',4) < 50 then
                    local n = G.call('get_point',4)
                    JY = math.floor(15 *n* (n+1)*   G.QueryName(0x10030001)[tostring(200)]/100 * 0.3) 
                else
                    JY = math.floor(15 *50* 51*   G.QueryName(0x10030001)[tostring(200)]/100* 0.85)
                end  
                G.call('dark')
                if G.call('get_point',4) > 79 and G.call('get_story',14) == 0 and G.call('get_point',22) > 80 and G.call('get_point',23) > 80 and G.call('get_point',24) > 80
                and G.call('get_point',25) > 80  and G.call('get_point',8) == 0 then  
                    G.call('set_story',14,1) 
                    G.call("talk",'',0,'    我已学会了这么多功夫，何不融汇百家独创一门？我得想想我发明的这个功夫叫什么名堂。',0,0) 
                    G.call('自创武功')
                    G.call('learnmagic',139)
                end  
                G.call('add_day',10)
                G.call('add_point',3,JY)
                G.call('all_over') 
                G.call('turn_map') 
            elseif  int_选项 == 5 then 
                G.call('all_over')
            end 
        end 
    end  
    for i = 1,38 do 
        local o_gut = G.QueryName(0x10080000+i)
        local o_achieve = G.QueryName(0x1017000d)
        if o_gut.是否完成 then 
            o_achieve.进度列表[i].完成 = 1 
        end    
    end    

end 
--type=
--hide=true
--private=false
t['聚贤庄-应劫']=function()
    G.call("talk",'',38,'   友情提示一下：距离最后你要遭遇的【末世之劫】还有三十天！',2,1)
    G.call('all_over')
    G.call('set_story',46,1)
end  
--type=
--hide=true
--private=false
t['聚贤庄-结局']=function()
    G.call('dark')
    G.call('goto_map',4)
    G.call("talk",'',38,'   两年之期转瞬即过，你准备应【劫】吧。',2,1)
    G.call("talk",'',0,'   什么【劫】？',0,0)
    G.call("talk",'',38,'   你如一心向善，恶人则不准你存活于世；你若存心为恶，众侠士亦不能容你。只要你能活过今日，为善，你将是侠之大者；',2,1)
    G.call("talk",'',38,'   为恶，你就是混世魔王。你是否后悔没有抓紧练功呢？时机已到，听天由命吧！',2,1)
    G.call('all_over')
    G.call('dark')
    G.call('set_story',47,1) 
    G.call('goto_map',22)
end   
--type=
--hide=true
--private=false
t['聚贤庄-华山论剑']=function()
    local str1 = G.QueryName(0x10030001)[tostring(1)]
    local str2 = G.QueryName(0x10030001)[tostring(2)]
    G.call('dark')
    G.call('set_story',47,1) 
    G.call("talk",'',38,'    '..str1..str2..'，你现在终于闯出很大的名堂了。但是你可知你现在的处境有多危险吗？当今世上势力极强的几伙人看你极不顺眼，特让我来给你下【挑战书】！',2,1)  
    G.call("talk",'',38,'    你要是够胆，就去【华山之巅】跟他们一绝生死。可别忘了多准备些丹药救命。',2,1)
    G.call('all_over')
end
--type=
--hide=true
--private=false
t['聚贤庄-华山之巅']=function()
    local str1 = G.QueryName(0x10030001)[tostring(1)]
    local str2 = G.QueryName(0x10030001)[tostring(2)]
    if G.call('get_story',47) == 0 then 
        G.call("talk",'',0,'    【华山之巅】地势险要壁立千仞，果然是习武之人做生死之绝的最佳场所。',0,0) 
        G.call('goto_map',4)
        G.call('all_over')
    else
        G.call('goto_map',17)
        if G.call('get_point',15) > 0 then 
            G.call("talk",'',82,'   姓'..str1..'的小子，这几年你的出现可把我们这群邪魔外道给害苦了。今日我们大家要一鼓作气把你碎尸万段，以消昔日之恨！',2,1)
            G.call("talk",'',104,'   我们四大恶人先来会会这小子！',2,1)
            G.call('all_over')
            G.call('call_battle',0,81,3,130,104,105,106,107,0,0)
            ---1_root.War("华山论剑", 0,104, 0, 105, 106,107, 1, 1.3, 1);
            local o_battle_结果 = G.call('get_battle')
            if o_battle_结果 == 1 then     
                 G.call("talk",'',185,'   我们江南四友来会会这小子！',2,1)
                 G.call('all_over')
                 G.call('call_battle',0,81,3,150,185,186,187,188,0,0)
                 local o_battle_结果 = G.call('get_battle')
                --_root.War("华山论剑", 0,185, 0, 186, 187,188, 1, 1.5, 1);
                if o_battle_结果 == 1 then 
                    G.call("talk",'',123,'   确实有两下子，不知道能不能过的了我们这关！',2,1)
                    G.call('all_over')
                    G.call('call_battle',0,81,3,170,245,123,95,0,0,0)
                    local o_battle_结果 = G.call('get_battle')
                    --_root.War("华山论剑", 123,245, 95, 0, 0,0, 1, 1.7, 1);
                    if o_battle_结果 == 1 then 
                        G.call("talk",'',82,'   一群没用的废物，还要迫得老夫出手！',2,1)
                        G.call('all_over')
                        G.call('call_battle',0,81,3,130,81,82,52,0,0,0)
                        local o_battle_结果 = G.call('get_battle')
                        --_root.War("华山论剑", 82, 81, 52, 0, 0, 0, 1, 1.3, 1);
                        if o_battle_结果 == 1 then 
                            G.call("talk",'',180,'   小兄弟，你好福气呀，武林中有多少人梦寐以求想挣得天下第一，但是你知道什么样的人才配称作【天下第一】吗？今天见识我东方不败真正的实力！',2,1)
                            G.call('all_over')
                            G.call('call_battle',0,81,3,100,180,114,115,200,0,0)
                            local o_battle_结果 = G.call('get_battle')
                             --_root.War("华山论剑", 0, 180, 0, 0, 0, 0, 1, 1.5, 1);
                            if o_battle_结果 == 1 then 
                                G.call("talk",'',159,'   终于走到这里了，让我们也来送你一程吧',2,1)
                                G.call('all_over')
                                G.call('call_battle',0,81,3,100,209,159,210,147,0,0)
                                local o_battle_结果 = G.call('get_battle')
                                if o_battle_结果 == 1 then 
                                    G.call("talk",'',38,'   恭喜你渡过此劫！普天之下，声望武功，无人再能高过于你，你是古往今来第一人！前提是——你必须再打过我！',2,1)
                                    G.call("talk",'',0,'   我为什么还要跟你打？那么多高手都被我们打败了，你这不是自不量力吗。',0,0)    
                                    G.call("talk",'',38,'   你那是靠群殴赢的，你也有脸说！有本事跟我单打独斗，打胜了我，你才算功德圆满。不然被我打败，你一样会GameOver',2,1)
                                    G.call("talk",'',0,'   真是没事找打。谁怕谁啊，打就打！',0,0)  
                                    G.call('all_over')
                                    local int_难度 = G.QueryName(0x10160000 +G.call('get_point',143)).难度
                                    G.call('set_role',223,1,30000 + int_难度*10000  ) --设置HPmax
                                    G.QueryName(0x10040000+223).存储记录 = -10-G.call('get_role',223,1)
                                    G.call('set_role',223,2,1000000)--设置MPmax
                                    G.call('set_role',223,15,30000 + int_难度*10000)--设置HP
                                    G.call('set_role',223,14,1000000)--设置MP
                                    G.call('set_role',223,10,750)--设置武功等级
                                    G.call('set_role',223,11,750)--设置武功等级
                                    G.call('set_role',223,12,750)--设置武功等级
                                    local int_点数 = 0
                                    if int_难度 == 1 then 
                                        int_点数 = 120
                                    elseif int_难度 == 2 then 
                                        int_点数 = 150
                                    elseif int_难度 == 3 then 
                                        int_点数 = 180
                                    end
                                    for i = 2,8 do  --设置半瓶基本属性
                                        G.call('set_role',223,i,120 )
                                    end   
                                    G.call('set_roleskill',223,1,131)
                                    G.call('set_roleskill',223,2,141)
                                    G.call('set_roleskill',223,3,199)
                                    --_root.War("华山论剑", 0, 223, 0, 0, 0, 0, 0, 1.5, 1);
                                    G.call('call_battle',1,81,1,int_点数,223,0,0,0,0,0)
                                    local o_battle_结果 = G.call('get_battle')
                                    if o_battle_结果 == 1 then  
                                        G.call("talk",'',38,'   哈哈哈哈...我苦熬了四个多月，直到今日才可交差了。今天不但你功德圆满，就连我也大功告成了…',2,1)
                                        G.call('all_over')
                                        G.call('通关_存档')
                                        G.call('gameout')
                                    else
                                        G.call('all_over')
                                        G.call('gameover')
                                    end
                                else
                                    G.call('all_over')
                                    G.call('gameover')
                                end
                            else
                                G.call('gameover')
                            end 
                        else
                           G.call('gameover')
                        end                         
                    else
                       G.call('gameover')
                    end  
                else
                   G.call('gameover')
                end          
            else
               G.call('gameover')
            end                 
        else  
            G.call("talk",'',191,str1..str2..'你罪恶滔天、恶贯满盈。还不束手就擒，更待何时？',2,1)
            G.call("talk",'',139,'   让我们【落花流水】先陪他活动活动筋骨',2,1)
            G.call('all_over')
            ---_root.War("华山论剑", 0,139, 0, 140, 141,142, 1, 1.3, 1);
            G.call('call_battle',0,81,3,130,140,141,142,0,0,0)
            local o_battle_结果 = G.call('get_battle')
            if o_battle_结果 == 1 then  
                G.call("talk",'',189,'   我们五岳剑派，要看他有多大能耐！',2,1)
                G.call('all_over')
                --__root.War("华山论剑", 191, 189, 190, 192, 0, 193, 1, 1.5, 1);
                G.call('call_battle',0,81,3,150,189,190,191,192,193,0)
                local o_battle_结果 = G.call('get_battle')
                if o_battle_结果 == 1 then
                    G.call("talk",'',160,'   武当派在此，看看你有多少能耐！',2,1)
                    G.call('all_over')
                    G.call('call_battle',0,81,3,130,162,161,160,164,165,0)
                    local o_battle_结果 = G.call('get_battle')
                    --_root.War("华山论剑", 160,175, 61, 100, 131,119, 1, 1.7, 1);
                    --159，
                    if o_battle_结果 == 1 then 
                        G.call("talk",'',165,'   好久没活动筋骨了',2,1)
                        G.call('all_over')
                        G.call('call_battle',0,81,3,100,94,111,165,75,0,0,0)
    
                        local o_battle_结果 = G.call('get_battle')
                        --__root.War("华山论剑", 0, 159, 0, 0, 0, 0, 1, 1.3, 1);
                        if o_battle_结果 == 1 then 
                            G.call("talk",'',159,'   终于走到这里了，让我们也来送你一程吧',2,1)
                            G.call('all_over')
                            G.call('call_battle',0,81,3,100,209,159,210,147,0,0)
                            local o_battle_结果 = G.call('get_battle')
                            if o_battle_结果 == 1 then 
                                G.call("talk",'',38,'   恭喜你渡过此劫！普天之下，声望武功，无人再能高过于你，你是古往今来第一人！前提是——你必须再打过我！',2,1)
                                G.call("talk",'',0,'   我为什么还要跟你打？那么多高手都被我们打败了，你这不是自不量力吗。',0,0)    
                                G.call("talk",'',38,'   你那是靠群殴赢的，你也有脸说！有本事跟我单打独斗，打胜了我，你才算功德圆满。不然被我打败，你一样会GameOver',2,1)
                                G.call("talk",'',0,'   真是没事找打。谁怕谁啊，打就打！',0,0)  
                                G.call('all_over')
                                local int_难度 = G.QueryName(0x10160000 +G.call('get_point',143)).难度
                                G.call('set_role',223,1,30000 + int_难度*10000  ) --设置HPmax
                                G.call('set_role',223,2,1000000)--设置MPmax
                                G.call('set_role',223,15,30000 + int_难度*10000)--设置HP
                                G.call('set_role',223,14,1000000)--设置MP
                                G.call('set_role',223,10,750)--设置武功等级
                                G.call('set_role',223,11,750)--设置武功等级
                                G.call('set_role',223,12,750)--设置武功等级
                                local int_点数 = 0
                                if int_难度 == 1 then 
                                    int_点数 = 120
                                elseif int_难度 == 2 then 
                                    int_点数 = 150
                                elseif int_难度 == 3 then 
                                    int_点数 = 180
                                end
                                for i = 2,8 do  --设置半瓶基本属性
                                    G.call('set_role',223,i,120 )
                                end   
                                G.call('set_roleskill',223,1,131)
                                G.call('set_roleskill',223,2,141)
                                G.call('set_roleskill',223,3,199)
                                --_root.War("华山论剑", 0, 223, 0, 0, 0, 0, 0, 1.5, 1);
                                G.call('call_battle',1,81,1,int_点数,223,0,0,0,0,0)
                                local o_battle_结果 = G.call('get_battle')
                                if o_battle_结果 == 1 then  
                                    G.call("talk",'',38,'   哈哈哈哈...我苦熬了四个多月，直到今日才可交差了。今天不但你功德圆满，就连我也大功告成了…',2,1)
                                    G.call('all_over')
                                    G.call('通关_存档')
                                    G.call('gameout')
                                else
                                    G.call('all_over')
                                    G.call('gameover')
                                end
                            else
                                G.call('all_over')
                                G.call('gameover')
                            end
                        else     
                           G.call('gameover')
                        end
                    else
                       G.call('gameover')
                    end 
                else
                   G.call('gameover')
                end    
            else
               G.call('gameover')
            end  
        end
     
    end     
end
t['自创武功']=function() --
    local o_skill = G.QueryName(0x1005008a)
    if G.call('get_point',18) > 50 then 
        G.misc().自创条件 = 1
        o_skill.生命加 = math.floor(G.call('get_point',217)/25)
        o_skill.内力加 = math.floor(G.call('get_point',218)/25)
        o_skill.内功加 = 4
        o_skill.拆招加 = math.floor(G.call('get_point',28)/50)
        o_skill.搏击加 = math.floor(G.call('get_point',29)/50+1)
        o_skill.闪躲加 = math.floor(G.call('get_point',30)/50)
        o_skill.轻身加 = 3
    else 
        G.misc().自创条件 = 2
        o_skill.生命加 = math.floor(G.call('get_point',217)/20)
        o_skill.内力加 = math.floor(G.call('get_point',218)/20)
        o_skill.内功加 = 5
        o_skill.拆招加 = math.floor(G.call('get_point',28)/25)
        o_skill.搏击加 = math.floor(G.call('get_point',29)/25+1)
        o_skill.闪躲加 = math.floor(G.call('get_point',30)/25)
        o_skill.轻身加 = 4
    end
    if o_skill.生命加 > 9999 then
        o_skill.生命加 = 9999 
    end
    if o_skill.内力加 > 9999 then
        o_skill.内力加 = 9999 
    end
    o_skill.伤害倍数 = (G.call('get_point',22) + G.call('get_point',23) + G.call('get_point',24) +G.call('get_point',25) +G.call('get_point',26) + G.call('get_point',34)) * 3
    G.misc().自创武功 = 1 
    G.call('input')
    o_skill.名称 = G.misc().自创武功名字
    G.misc().自创武功 = 0
    --print(o_skill.伤害倍数)
end 
t['猜数字']=function()
    local int_mo = 0
    local m = {0,0,0,0}
    local t = {0,1,2,3,4,5,6,7,8,9}
    for i = 1,4 do 
        local len = #t
        local r = math.random(len)
        m[i] =t[r]
        table.remove(t, r)
    end
    -- len = #t
    -- r = math.random(len)	
    -- m[2] =t[r]
    -- table.remove(t, r)
    -- len = #t
    -- r = math.random(len)	
    -- m[3] =t[r]
    -- table.remove(t, r)
    -- len = #t
    -- r = math.random(len)	
    -- m[4] =t[r]
    -- table.remove(t, r)
    local int_no = m[1]*1000 + m[2]*100 + m[3]*10 + m[4]   
    --print(int_no)
    G.call("talk",'',38,'   来来来，猜数字，规则很简单，猜出4个不同数字!',2,1)
    local int_选项 = 0
    while true do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,我猜","2,不猜了"},0)
        if int_选项 == 1 then 
            G.misc().猜数字 = 1
            G.call('input')
            G.misc().猜数字 = 0
            int_mo = int_mo + 1
            if G.misc().number == int_no then 
                G.call('all_over')
                break
            else
                local p = G.misc().number
                local n = {0,0,0,0}
                local r = 0
                local e = 0
                n[1] =  math.floor(p/1000)
                n[2] =  math.floor((p - n[1] *1000)/100)
                n[3] =  math.floor((p - n[1] *1000 - n[2] *100)/10 )
                n[4] =  p - n[1] *1000 - n[2] *100 - n[3] * 10 
                for i = 1,4 do --计算猜中数字位置正确和位置错误的个数
                    if n[i] == m[i] then 
                        r = r + 1
                    end
                    for t = 1,4 do 
                        if n[i] == m[t] and i ~= t then 
                            e = e + 1
                        end
                    end     
                end 
                local str = tostring(n[1])..tostring(n[2])..tostring(n[3])..tostring(n[4])
                G.call("talk",'',38,'   [02]第【[05]'..int_mo..'[02]】次你猜的是【[03]'..str..'[02]】[br] 【[03]'..e..'[02]】阴【[06]'..r..'[02]】阳',2,1)  
                --G.call("talk",'',38,'   第'..int_mo..'次你猜的是【'..str..'】[br]  【'..r..'】个数字位置正确，【'..e..'】个数字位置错误！',2,1)   
            end    
        elseif int_选项 == 2 then
            G.call('all_over')
            break
        end
    end
    --print(int_mo)
    if G.misc().number == int_no then 
        local o_szyy = G.QueryName(0x10170012)
        if int_mo <= 5 then
            G.call('通用_抽礼物',9,0) 
            G.call("talk",'',38,'   竟然如此厉害，就给你点奖励吧！',2,1)
            if int_mo == 1 then
                G.call('add_item',235,1)
            end
            G.call('all_over')
            o_szyy.进度列表[int_mo].当前进度 = o_szyy.进度列表[int_mo].当前进度 + 1
            if o_szyy.进度列表[int_mo].完成 == 0 then 
                o_szyy.进度列表[int_mo].完成 = 1
                G.call('notice1','完成成就【'..o_szyy.进度列表[int_mo].名称..'】') 
            end 
            G.call('add_point',104,(6-int_mo)*10)  --猜中后按照需要次数计算增加的悟性经验
        else
            G.call('add_point',104,5)
        end 
        o_szyy.进度列表[6].当前进度 = o_szyy.进度列表[6].当前进度 + 1
        G.call('set_newpoint',80,G.call('get_newpoint',80)- 1   )
        if o_szyy.进度列表[6].完成 == 0 then 
            if o_szyy.进度列表[6].当前进度 >= 100 then 
                o_szyy.进度列表[6].完成 = 1
                G.call('notice1','完成成就【'..o_szyy.进度列表[6].名称..'】') 
            end
        end
        if o_szyy.完成 == 0 then 
            local szyy = 0
            for i = 1,6 do 
                if o_szyy.进度列表[i].完成 == 1 then 
                    szyy = szyy + 1
                end    
            end    
            if szyy == 6 then 
                o_szyy.完成 = 1 
            end   
        end
        G.call("talk",'',38,'   竟然只猜了【'..int_mo..'】次就猜出来了',2,1)
        G.call('all_over')
    end    
end    
t['事件_随机切磋']=function()
    if G.call('get_point',4) < 50 then return end
    G.call('dark')
    G.misc().随机切磋 = 1
    if  G.misc().随机切磋次数 == nil then 
        G.misc().随机切磋次数 = 0
        G.misc().随机切磋监控 = -7
    end
    if G.misc().随机切磋次数 ~= math.abs(G.misc().随机切磋监控 + 7) then 
        G.misc().随机切磋 = 0
        G.call('通用_强退游戏',401)
    end
    --lv50~ lv60 hp 低于10000大于8000
    local boos_1 = {}
    --lv61~ lv70 hp 10000-12999
    local boos_2 = {}
    --lv71~ lv80  hp 13000 - 16999
    local boos_3 = {}
    --lv81 lv90  hp17000 - 20000
    local boos_4 = {}
   --lv91~ lv100 20000+
    local boos_5 = {}
    local role =G.DBTable('o_role')
    local o_role
    for i = 1,#role do
        local i_role = 0x10040000 + i
        o_role = G.QueryName(i_role)
        local int_hp = G.call('get_role',i,1)
        if int_hp > 0 and (not G.call('get_role',i,901)   )    then --判断为非队友
            if int_hp >= 10000 and int_hp < 15000 then 
                table.insert(boos_1 ,i )
            elseif int_hp >= 15000 and int_hp < 20000 then 
                table.insert(boos_2 ,i )
            elseif int_hp >= 20000 and int_hp < 25000 then 
                table.insert(boos_3 ,i )
            elseif int_hp >= 25000 and int_hp < 35000 then 
                table.insert(boos_4 ,i )
            elseif int_hp >= 35000 then 
                table.insert(boos_5 ,i )
            end
        end
    end
    print('人数=',#boos_5)
    local boss_final = {}
    local int_lv = G.call('get_point',4)
    if int_lv >= 50 and int_lv <= 60 then 
        boss_final = boos_1
    elseif int_lv >= 61 and int_lv <= 70 then 
        boss_final = boos_2
    elseif int_lv >= 71 and int_lv <= 80 then 
        boss_final = boos_3
    elseif int_lv >= 81 and int_lv <= 90 then 
        boss_final = boos_4
    elseif int_lv >= 91 and int_lv <= 100 then 
        boss_final = boos_5
    end
    local int_role = boss_final[math.ceil(G.call('通用_取宝物随机')*#boss_final/100)]
    local skill = {}
    for j = 1,24 do 
        table.insert(skill,j )
    end 
    table.insert(skill,31 )
    table.insert(skill,32 )
    table.insert(skill,33 )
    local team_skill = {0,0,0,0,0}
    -- local team_skill_2 = {0,0,0,0,0}
    local skill_mod = {0,0,0,0,0} 
    local o_role = G.QueryName(0x10040000+int_role)
    for i = 1,5 do
        local int_记录被动 = G.call('get_role',int_role,110+i) 
        if int_记录被动 == nil then
            int_记录被动 = 0 
        end
        team_skill[i] = int_记录被动  
    end
    local int_被动 = math.random(5)
    for i = 1,int_被动 do 
        local len = #skill
        local r = math.ceil(G.call('通用_取宝物随机')*len/100) 
        skill_mod[i] = skill[r]
        table.remove(skill, r)
    end
    local magic = {'破绽','慈悲','先攻','妙手','急速','冰心','暴击','激励','见切','万毒','强体','回春','强力','强行','复生','奇才','活力','阴毒','舔血','北冥','真武','霸王','真意','昊天','朱雀','玄武','青龙','白虎'}
    o_role = G.QueryName(0x10040000 + int_role)
    if int_被动 > 0 and int_role ~= 418 then --分配被动
        for j = 1,int_被动 do 
            G.call('set_role',int_role,110+j,skill_mod[j]) 
        end   
    end 
    local name = G.call('get_point',1)
    G.call("talk",'',int_role,'   【'..name..'】大侠，久闻大名，今日特来领教阁下高招！',1,1)
    G.call('call_battle',1,10,1,400,int_role,0,0,0,0,0,0,0,1)
    if int_被动 > 0 and int_role ~= 418 then--还原被动
        for j = 1,int_被动 do 
            G.call('set_role',int_role,110+j,team_skill[j]) 
        end   
    end 
    G.misc().随机切磋 = 0
    if G.call('get_battle') == 1 then
        G.call("talk",'',int_role,'   【'..name..'】大侠果然功夫过人，些许薄礼就送与大侠了，有机会再来挑战！',1,1) 
        G.misc().随机切磋次数 = G.misc().随机切磋次数 + 1
        G.misc().随机切磋监控 = G.misc().随机切磋监控 - 1
        if int_role == 390   then
            if G.call('通用_取宝物随机') > 70 then 
                G.call('通用_抽礼物',9,1,1,1)
            else
                G.call('通用_抽礼物',9,1,1,0)
            end
        else
            if G.misc().随机切磋次数%100 == 0 then 
                if G.call('通用_取宝物随机') > 70 then 
                    if G.call('通用_取宝物随机') > 50 then 
                        G.call('通用_抽礼物',9,1,1,1,1)
                    else
                        G.call('通用_抽礼物',9,1,1,1)
                    end
                else
                    if G.call('通用_取宝物随机') > 50 then 
                        G.call('通用_抽礼物',9,1,1,0,1)
                    else
                        G.call('通用_抽礼物',9,1,1,0)
                    end
                end
                
            else
                if G.misc().随机切磋次数%20 == 0 then
                    if G.call('通用_取宝物随机') > 50 then 
                        G.call('通用_抽礼物',1,0,1,0,1)
                    else
                        G.call('通用_抽礼物',1,0,1) 
                    end
                else
                    G.call('通用_抽礼物',1,0) 
                end
            end
        end
    else
        G.call("talk",'',int_role,'   哈哈哈.......【'..name..'】大侠看来也不过是徒有虚名！',1,1)
    end
    if int_被动 > 0 then --还原被动
        for j = 1,int_被动 do 
            G.call('set_role',int_role,110+j,team_skill[j]) 
        end   
    end 
    G.call('通用_存档',4)
    G.call('通用_存档',G.call('get_point',143))
    G.call('all_over')
end     
t['副本_通天塔']=function(int_模式)
    --1-19 层
    local person_1 = {46,47,48,203,221,222,224,225} --非人队
    --20-39 层
    local person_2 = {226,227,228,229,230,231,232,233,234,235,236,237,238,239,240}  --门派弟子
    --40-59 层
    local person_3 = {50,51,53,56,65,80,129,131,196,202,218} --弱鸡
    --60-79层
    local person_4 = {57,58,59,70,72,74,95,119,126,143,148} --稍强
    --80-100层
    local person_5 = {189,191,190,192,193,166,169,177,195} --掌门队
    local person_6 = {61,88,89,102,108,109,112,102,128,135,198} --女魔队
    --boss 1- 25 层
    local boos_1 = {156,157,178} --飞狐
    local boos_2 = {185,186,187,188} --四友
    local boos_3 = {104,105,106,107} --四恶
    local boos_4 = {43,44,76,77,120} --倚天邪
    --boss 30- 50 层
    local boos_5 = {121,81,52} --法王队
    local boos_6 = {144,145,146} --侠客队
    local boos_7 = {166,167,168,214} --全真废物
    local boos_8 = {160,161,162,163,164} --武当废物
        --boss 55- 75 层
    local boos_9 = {114,115,116} --逍遥队
    local boos_12 = {149,150,151,152,153,154} --明教队 
    local boos_10 = {92,93,110,175,176}  --大师队
    local boos_11 = {211,212,213} --三渡 
    --boss 80- 100 层
    local boos_13 = {215,216,217} --波斯三使
    local boos_14 = {82,83,84,85,86,165} --五绝
    local boos_15 = {75,94,180,200,204,111} --强力队
    local boos_16 = {209,210,159,147} --四绝
    local boss = {boos_1,boos_2,boos_3,boos_4,boos_5,boos_6,boos_7,boos_8,boos_9,boos_10,boos_11,boos_12,boos_13,boos_14,boos_15,boos_16}
    G.misc().通天塔 = 1
    G.misc().通天塔层数 = 1
    local team_boss = {}
    local team_rose = {}
    local team_pese = {}
    local team_pese_mod = {}
    local int_boss = math.random(4)
    local team_final = {}
    local team_skill_a = {}
    local team_skill_b = {}
    local team_skill_1 = {}
    local team_skill_2 = {}
    local skill_use = {} 
    local skill = {} 
    local skill_mod = {0,0,0,0,0} 
    local battle = {}
    local int_层数判定 = 0
    local int_整数层数 = 0
    local int_通天塔层数 = 0
    local int_通天塔判定 = 0
    for j = 1,25 do 
       table.insert(skill_use,j )
    end 
    table.insert(skill_use,31 )
    table.insert(skill_use,32 )
    table.insert(skill_use,33 )
    while true do 
       if int_通天塔判定 == 0 then 
            int_通天塔层数 = -G.misc().通天塔层数 - 7
            int_通天塔判定 = 1
       end
       int_层数判定 = G.misc().通天塔层数 % 5 
       int_整数层数 = math.floor(G.misc().通天塔层数/5) 
       int_boss = math.random(4)
       if int_层数判定 == 0 then
            if G.misc().通天塔层数 <= 25 then 
                G.deepcopy( boss[int_boss],team_boss)
            elseif G.misc().通天塔层数 > 25 and G.misc().通天塔层数 <= 50   then
                G.deepcopy( boss[int_boss+4],team_boss)
            elseif G.misc().通天塔层数 > 50 and G.misc().通天塔层数 <= 75   then
                G.deepcopy( boss[int_boss+8],team_boss)
            elseif G.misc().通天塔层数 > 75 and G.misc().通天塔层数 <= 100   then
                G.deepcopy( boss[int_boss+12],team_boss) 
            end
        else
            if int_整数层数 < 4 then 
                G.deepcopy( person_1,team_rose)
            elseif int_整数层数 < 8 and int_整数层数 >= 4 then 
                G.deepcopy( person_2,team_rose)
            elseif int_整数层数 < 12 and int_整数层数 >= 8 then 
                G.deepcopy( person_3,team_rose)
            elseif int_整数层数 < 16 and int_整数层数 >= 12 then 
                G.deepcopy( person_4,team_rose)
            elseif  int_整数层数 >= 16 then 
                local int_随机数 = math.random(2)
                if int_随机数 == 1 then
                    G.deepcopy( person_5,team_rose)
                else
                    G.deepcopy( person_6,team_rose)
                end
            end 
            --随机出6个数字决定最后普通层6个敌人
            for i = 1,6 do 
                local len = #team_rose
                local r = math.random(len)
                table.insert(team_pese,team_rose[r] )
                table.remove(team_rose, r)
            end
        end 
        if int_层数判定 == 0 then
            team_final = team_boss
        else
            team_final = team_pese
        end
        for i = 1,#team_final do --记录敌人原有被动
            table.insert(team_skill_1,{
                被动_1 = G.call('get_role',team_final[i],111),
                被动_2 = G.call('get_role',team_final[i],112),
                被动_3 = G.call('get_role',team_final[i],113),
                被动_4 = G.call('get_role',team_final[i],114),
                被动_5 = G.call('get_role',team_final[i],115),
            }
        )       
        end 
        local int_被动 = math.max(1, math.floor((G.misc().通天塔层数-1)/10) - 4)
        for i = 1,#team_final do --记录敌人的随机被动
            G.deepcopy(skill_use,skill)
            for j = 1,int_被动 do 
                local len = #skill
                local r = math.random(len) 
                skill_mod[j] = skill[r]
                table.remove(skill, r)
            end
            table.insert(team_skill_2,{
                被动_1 = skill_mod[1],
                被动_2 = skill_mod[2],
                被动_3 = skill_mod[3],
                被动_4 = skill_mod[4],
                被动_5 = skill_mod[5],
                }
            )
        end
        if int_被动 > 0 and  int_模式 == 0 then 
            for i = 1,#team_final do --分配敌人被动
                for j = 1,int_被动 do 
                    G.call('set_role',team_final[i],110+j,team_skill_2[i]['被动_'..j]) 
                    
                end
            end  
        end  
        if #team_final < 6 then 
            for i = 1,6-#team_final do 
                table.insert(team_final,0 )
            end    
        end  
        if int_层数判定 == 0 then
            G.call("talk",'',38,'   下面是第'..G.misc().通天塔层数..'层，强力对手在等着你！',2,1)  
        else
            G.call("talk",'',38,'   下面是第'..G.misc().通天塔层数..'层，请小心应对！',2,1) 
        end
        if int_模式 == 1 then 
            G.call('call_battle',0,80,1,100 + G.misc().通天塔层数*6 ,team_final[2],team_final[1],team_final[3],team_final[4],team_final[5],team_final[6],0,0,1)
        else
            G.call('call_battle',0,80,3,100 + G.misc().通天塔层数*6 ,team_final[2],team_final[1],team_final[3],team_final[4],team_final[5],team_final[6],0,0,1)
            --G.call('call_battle',1,80,3,0.00001 ,team_final[2],team_final[1],team_final[3],team_final[4],team_final[5],team_final[6])
        end    
        for i = 1,#team_final do --还原敌人被动
            if team_final[i] > 0 then 
                for j = 1,5 do 
                    if team_skill_1[i]['被动_'..j] == nil then
                        team_skill_1[i]['被动_'..j] = 0 
                    end
                    G.call('set_role',team_final[i],110+j,team_skill_1[i]['被动_'..j]) 
                end
            end
        end 
        team_boss = {}
        team_rose = {}
        team_pese = {}
        team_final = {}
        team_skill_1 = {}
        team_skill_2 = {}
        skill = {} 
        if G.call('get_battle') == 1 then
            if G.misc().通天塔层数 >= 80  then --80层开始掉靴子
                if int_层数判定 == 0 then 
                    if int_模式 == 1 then 
                        G.call('通用_抽礼物',3,0) 
                    else
                        G.call('通用_抽礼物',2,0) 
                    end
                else
                    if math.random(100) > 20 then 
                        if int_模式 == 1 then 
                            G.call('通用_抽礼物',3,0)
                        else
                            G.call('通用_抽礼物',2,0) 
                        end 
                    end
                end   
            end
            if G.misc().通天塔层数 >= 100 then 
                if int_模式 == 0 then 
                    G.call('通用_抽礼物',2,0,1,0,1) 
                else
                    G.call('通用_抽礼物',3,0,1,0,1) 
                end
                G.misc().通天塔层数 = 101
                break
            else
                if G.misc().通天塔层数 % 10 == 0 then --每10层回复一次
                    G.call("talk",'',38,'   不错，先回复一下吧！',2,1) 
                    G.Play(0x49010035, 1,false,100)
                    if int_模式 == 1 then 
                        G.call('add_point',44,math.floor(G.call('get_point',217)))
                        G.call('add_point',46,math.floor(G.call('get_point',218)))
                    else
                        G.call('add_point',44,math.floor(G.call('get_point',217)/2))
                        G.call('add_point',46,math.floor(G.call('get_point',218)/2))
                    end
                end
                G.misc().通天塔层数 = G.misc().通天塔层数 + 1
                int_通天塔层数 = int_通天塔层数 - 1
                if G.misc().通天塔层数 ~= math.abs(int_通天塔层数 + 7 ) then 
                    G.misc().通天塔 = 0 
                    G.call('通用_强退游戏',402) 
                end
            end
        else
            break 
        end
    end
    G.misc().通天塔 = 0 
    local o_wjtz = G.QueryName(0x10170013)
    local int_难度 = G.QueryName(0x10160000 +G.call('get_point',143)).难度 
    if int_模式 == 0 then 
        if G.misc().通天塔层数 > 20 and G.misc().通天塔奖励_1 == 0 then
            G.misc().通天塔奖励_1 = 1
            G.call('add_item',224,2)
            G.call('add_item',340,10)
            G.call("talk",'',38,'   恭喜突破20层，这是给你的奖励！',2,1) 
            if int_难度 == 1 then
                if o_wjtz.进度列表[1].完成 == 0 then
                    o_wjtz.进度列表[1].完成 = 1
                    G.call('notice1','恭喜完成初级无尽20层') 
                end    
            elseif int_难度 == 2 then
                if o_wjtz.进度列表[6].完成 == 0 then
                    o_wjtz.进度列表[6].完成 = 1
                    G.call('notice1','恭喜完成中级无尽20层') 
                end 
            elseif int_难度 == 3 then  
                if o_wjtz.进度列表[11].完成 == 0 then
                    o_wjtz.进度列表[11].完成 = 1
                    G.call('notice1','恭喜完成高级级无尽20层') 
                end   
            end 
        elseif  G.misc().通天塔层数 > 40 and G.misc().通天塔奖励_2 == 0 then
            G.misc().通天塔奖励_2 = 1
            G.call('add_item',224,4)
            G.call('add_item',340,20)
            G.call("talk",'',38,'   恭喜突破40层，这是给你的奖励！',2,1) 
            if int_难度 == 1 then
                if o_wjtz.进度列表[2].完成 == 0 then
                    o_wjtz.进度列表[2].完成 = 1
                    G.call('notice1','恭喜完成初级无尽40层') 
                end    
            elseif int_难度 == 2 then
                if o_wjtz.进度列表[7].完成 == 0 then
                    o_wjtz.进度列表[7].完成 = 1
                    G.call('notice1','恭喜完成中级无尽40层') 
                end 
            elseif int_难度 == 3 then  
                if o_wjtz.进度列表[12].完成 == 0 then
                    o_wjtz.进度列表[12].完成 = 1
                    G.call('notice1','恭喜完成高级级无尽40层') 
                end   
            end
        elseif  G.misc().通天塔层数 > 60 and G.misc().通天塔奖励_3 == 0 then
            G.misc().通天塔奖励_3 = 1
            G.call('add_item',224,6)
            G.call('add_item',340,30)
            G.call("talk",'',38,'   恭喜突破60层，这是给你的奖励！',2,1) 
            if int_难度 == 1 then
                if o_wjtz.进度列表[3].完成 == 0 then
                    o_wjtz.进度列表[3].完成 = 1
                    G.call('notice1','恭喜完成初级无尽60层') 
                end    
            elseif int_难度 == 2 then
                if o_wjtz.进度列表[8].完成 == 0 then
                    o_wjtz.进度列表[8].完成 = 1
                    G.call('notice1','恭喜完成中级无尽60层') 
                end 
            elseif int_难度 == 3 then  
                if o_wjtz.进度列表[13].完成 == 0 then
                    o_wjtz.进度列表[13].完成 = 1
                    G.call('notice1','恭喜完成高级级无尽60层') 
                end   
            end
        elseif  G.misc().通天塔层数 > 80 and G.misc().通天塔奖励_4 == 0 then
            G.misc().通天塔奖励_4 = 1
            G.call('add_item',224,8)
            G.call('add_item',340,40)
            G.call("talk",'',38,'   恭喜突破80层，这是给你的奖励！',2,1) 
            if int_难度 == 1 then
                if o_wjtz.进度列表[4].完成 == 0 then
                    o_wjtz.进度列表[4].完成 = 1
                    G.call('notice1','恭喜完成初级无尽80层') 
                end    
            elseif int_难度 == 2 then
                if o_wjtz.进度列表[9].完成 == 0 then
                    o_wjtz.进度列表[9].完成 = 1
                    G.call('notice1','恭喜完成中级无尽80层') 
                end 
            elseif int_难度 == 3 then  
                if o_wjtz.进度列表[14].完成 == 0 then
                    o_wjtz.进度列表[14].完成 = 1
                    G.call('notice1','恭喜完成高级级无尽80层') 
                end   
            end
        elseif  G.misc().通天塔层数 > 100 and G.misc().通天塔奖励_5 == 0 then
            G.misc().通天塔奖励_5 = 1
            G.call('add_item',341,1)
            G.call("talk",'',38,'   恭喜突破100层，这是给你的奖励！',2,1) 
            G.call('add_item',340,50)
            G.call('通用_抽礼物',9,1,1,2,1)
            if int_难度 == 1 then
                if o_wjtz.进度列表[5].完成 == 0 then
                    o_wjtz.进度列表[5].完成 = 1
                    G.call('notice1','恭喜完成初级无尽100层') 
                end    
            elseif int_难度 == 2 then
                if o_wjtz.进度列表[10].完成 == 0 then
                    o_wjtz.进度列表[10].完成 = 1
                    G.call('notice1','恭喜完成中级无尽100层') 
                end 
            elseif int_难度 == 3 then  
                if o_wjtz.进度列表[15].完成 == 0 then
                    o_wjtz.进度列表[15].完成 = 1
                    G.call('notice1','恭喜完成高级级无尽100层') 
                end   
            end
        end
    elseif int_模式 == 1 then
        if G.misc().通天塔层数 > 25 and G.misc().通天塔单人奖励_1 == 0 then
            G.misc().通天塔单人奖励_1 = 1
            G.call('add_item',238,1)
            G.call("talk",'',38,'   恭喜突破20层，这是给你的奖励！',2,1) 
            G.call('add_item',340,25)
            if o_wjtz.进度列表[16] and o_wjtz.进度列表[16].完成 == 0 then
                o_wjtz.进度列表[16].完成 = 1
                G.call('notice1','恭喜完成单人无尽25层') 
            end 
        elseif  G.misc().通天塔层数 > 50 and G.misc().通天塔单人奖励_2 == 0 then
            G.misc().通天塔单人奖励_2 = 1
            G.call('add_item',238,2)
            G.call("talk",'',38,'   恭喜突破50层，这是给你的奖励！',2,1) 
            G.call('add_item',340,50)
            if o_wjtz.进度列表[17] and o_wjtz.进度列表[17].完成 == 0 then
                o_wjtz.进度列表[17].完成 = 1
                G.call('notice1','恭喜完成单人无尽50层') 
            end 
        elseif  G.misc().通天塔层数 > 75 and G.misc().通天塔单人奖励_3 == 0 then
            G.misc().通天塔单人奖励_3 = 1
            G.call('add_item',238,5)
            G.call("talk",'',38,'   恭喜突破75层，这是给你的奖励！',2,1) 
            G.call('add_item',340,100)
            if o_wjtz.进度列表[18] and o_wjtz.进度列表[18].完成 == 0 then
                o_wjtz.进度列表[18].完成 = 1
                G.call('notice1','恭喜完成单人无尽75层') 
            end 
        elseif  G.misc().通天塔层数 > 100 and G.misc().通天塔单人奖励_4 == 0 then
            G.misc().通天塔单人奖励_4 = 1
            G.call('add_item',341,1)
            G.call('通用_抽礼物',9,1,2,2,1)
            G.call("talk",'',38,'   恭喜突破100层，这是给你的奖励！',2,1) 
            G.call('add_item',238,10)
            G.call('add_item',340,200)
            if o_wjtz.进度列表[19] and o_wjtz.进度列表[19].完成 == 0 then
                o_wjtz.进度列表[19].完成 = 1
                G.call('notice1','恭喜完成单人无尽100层') 
            end 
        end
    end
    local int_无尽完成 = 0
    for i = 1,#o_wjtz.进度列表 do
        if   o_wjtz.进度列表[i].完成 == 1 then
            int_无尽完成 = int_无尽完成  + 1
        end
    end
    if int_无尽完成 == #o_wjtz.进度列表 and o_wjtz.完成 == 0 then
        o_wjtz.完成  = 1
        G.call('notice1','恭喜完成【无尽挑战】') 
    end 
end    
t['特别剧情-十年生死两茫茫']=function()
    G.misc().密令年数 = G.call('get_year')
    for i = 16,37 do --基础属性全+1
        G.call('add_point',i,1)
    end  
    G.call('add_point',14,50)
    G.call('add_point',15,10)
    if G.call('in_team',6)  then 
    else
        local map = G.call('get_point',140)
        G.call('地图_进入地图','断肠崖',90,1,0)
        if G.misc().密令年数 == 16 then 
            G.call("talk",'',0,'   龙儿，我等的你好苦啊!',0,0)
            G.call("talk",'',0,'   十年生死两茫茫，不思量，自难忘。千里孤坟，无处话凄凉。',0,0)
            if G.call('get_magic',66) == 0 then
                G.call('learnmagic',66) 
            end
            G.call("talk",'',6,'   过儿，没想到你真的等了我16年！',2,1)
            G.call("talk",'',200,'   真是一对痴儿怨女，贫尼去也！',2,1)
            G.call("talk",'',0,'   这......，龙儿，我们也走吧！',0,0)
            G.call('join',6)
            G.call('add_item',121,1)
        else
            G.call("talk",'',0,'   看来今年还是等不到龙儿，还是先回去吧！',0,0)
        end
        G.call('all_over')
        G.call('turn_map')
    end
end
t['小游戏-野球拳']=function()
    G.call("talk",'？？？？',247,'   当日华山论剑，他用【黯然销魂掌】，破了我的七十二路【空明拳】；我改【降龙十八掌】，他伸开食指中指，竟是【六脉神剑】商阳剑和中冲剑并用，又胜我一筹。可见天下武功彼此克制，武学之道玄之又玄！',1,1) 
    if G.call('get_magic',83) > 0 then 
        G.call("talk",'',0,'   这不就是【野球拳】吗？',0,0)
        G.call("talk",'？？？？',247,'   小子既然知道这是【野球拳】，那就来比比吧！',1,1) 
        local int_猜拳_1 = 0
        local int_猜拳_2 = 0
        local int_猜拳结果 = 0
        local int_连胜 = 10
        local str = {'六脉神剑','空明拳','降龙十八掌'}
        while true do 
            int_猜拳_2 = math.random(3)
            if int_连胜-10 > 0 then 
                G.call("talk",'？？？？',247,'   你已经连续胜利了'..(int_连胜-10)..'次!',1,1) 
            end
            local int_选项 = 0       
            while int_选项 == 0 do
                if int_连胜-10 > 0 then 
                    int_选项 = G.call("menu",'',0,'我要出什么呢？',0,4,
                    {"1,六脉神剑","2,空明拳","3,降龙十八掌","4,见好就收"},0)
                else
                    int_选项 = G.call("menu",'',0,'我要出什么呢？',0,4,
                    {"1,六脉神剑","2,空明拳","3,降龙十八掌","4,不玩了"},0)
                end
                if int_选项 == 1 then
                    int_猜拳_1 = 1
                elseif int_选项 == 2 then
                    int_猜拳_1 = 2
                elseif int_选项 == 3 then
                    int_猜拳_1 = 3
                elseif int_选项 == 4 then
                    int_猜拳结果 = 9
                end
                G.call('all_over')
            end
            if int_猜拳结果 ~= 9 then
                int_猜拳结果 = int_猜拳_1 - int_猜拳_2
                if int_猜拳结果 == 0 then 
                    G.call("talk",'',0,'   我出【'..str[int_猜拳_1]..'】！',0,0)
                    G.call("talk",'？？？？',247,'   我出【'..str[int_猜拳_2]..'】平手，再来！',1,1) 
                end
                if int_猜拳结果 == 1 or int_猜拳结果 == -2 then 
                    G.call("talk",'',0,'   我出【'..str[int_猜拳_1]..'】',0,0)
                    G.call("talk",'？？？？',247,'   我出【'..str[int_猜拳_2]..'】你赢了，再来！',1,1) 
                    int_连胜 = int_连胜 + 1
                end
                if int_猜拳结果 == -1 or int_猜拳结果 == 2 then 
                    G.call("talk",'',0,'   我出【'..str[int_猜拳_1]..'】！',0,0)
                    G.call("talk",'？？？？',247,'   我出【'..str[int_猜拳_2]..'】你输了，下次再来！',1,1) 
                    int_连胜 = 10
                    break
                end
            end
            if int_猜拳结果 == 9 then
                if  int_连胜-10 > 0 then 
                    local o_yqwd = G.QueryName(0x10170015)
                    if o_yqwd.进度列表[1].当前进度 < 20000 then 
                        G.call('set_newpoint',80,G.call('get_newpoint',80)- (int_连胜-10)   )
                        o_yqwd.进度列表[1].当前进度 = o_yqwd.进度列表[1].当前进度 + int_连胜-10
                    end
                    if o_yqwd.进度列表[1].当前进度 >= 10000 and o_yqwd.进度列表[1].完成 == 0 then 
                        o_yqwd.进度列表[1].完成 = 1
                        if o_yqwd.完成 == 0 then 
                           o_yqwd.完成 = 1
                           G.call('notice1','恭喜完成成就【野球无敌】')
                        end
                    end
                    local int_经验 = 5 + math.floor(G.call('get_point',18)/10)
                    G.call("talk",'？？？？',247,'   见好就收也不失为一种胜利！',1,1) 
                    G.call('add_magicexp',83,math.floor(int_经验*2^(int_连胜-11)) ) 
                    if int_连胜 >= 17 then 
                        G.call("talk",'？？？？',247,'   表现不错，给你点奖励吧！',1,1) 
                        G.call('通用_抽礼物',9,0) 
                        if int_连胜 >= 21 then 
                            G.call('add_item',235,1)
                        end
                    end
                else
                    G.call("talk",'？？？？',247,'   哈哈，还没比就怂了啊！',1,1) 
                end
                break
            end
        end
    else
        G.call("talk",'',0,'   这场华山论剑看来异常轰烈，改日再来听故事吧！',0,0)
    end
    G.call('all_over')
end
t['锻造师-BT']=function()
    if G.call('get_point',237) < 2 then 
        G.call("talk",'？？？？',390,'   现在不要打搅我，我正在想怎么转换和重新打造这个世界的神奇装备！',1,1) 
        G.call("talk",'',0,'   真是个BT！',0,0)
    else
        if not G.misc().初识BT then  
            G.call("talk",'',0,'   你是谁？怎么在这里。。。，看着很奇怪的感觉？！',0,0)
            G.call("talk",'？？？？',390,'   你看我像谁我就是谁，我嗖一下就到这里来了！',1,1) 
            G.call("talk",'',0,'   那你能做些什么呢？',0,0)
            G.call("talk",'？？？？',390,'   那我得想想，我貌似可以将你们多余的神奇装备转换成神秘宝石，也可以用这些宝石打造新的神奇装备，当然也可以转换装备的品质....',1,1) 
            G.misc().初识BT = 1
            G.call('通用_锻造')
        else
            G.call('通用_锻造')
        end
    end
    G.call('all_over')
end
t['通用_锻造']=function()
    local int_宝石数量 = G.call('get_item',340)
    G.call("talk",'？？？？',390,'   你现在拥有'..int_宝石数量..'颗【神奇宝石】，有什么需要？',1,1) 
    local int_选项 = 0       
    while true do
        int_选项 = G.call("menu",'',0,'',0,0,{"1,分解神奇装备(获得神奇宝石)","2,转换神奇装备(需神奇宝石)","3,打造神奇装备(需神奇宝石10个)","4,没有事情"},0)
        if int_选项 == 1 then 
            G.misc().神奇装备 = 1
            G.addUI('v_equip')
            local  ui = G.getUI('v_equip');
            local c = ui.c_equip
            c:角色操作(0)
            G.wait1('锻造装备结束')
            local int_宝石数量 = G.call('get_item',340)
            G.call("talk",'？？？？',390,'   你现在拥有'..int_宝石数量..'颗【神奇宝石】，有什么需要？',1,1) 
        elseif int_选项 == 2 then 
            G.misc().神奇装备 = 2
            G.addUI('v_equip')
            local  ui = G.getUI('v_equip');
            local c = ui.c_equip
            c:角色操作(0)
            G.wait1('锻造装备结束')
            local int_宝石数量 = G.call('get_item',340)
            G.call("talk",'？？？？',390,'   你现在拥有'..int_宝石数量..'颗【神奇宝石】，有什么需要？',1,1) 
        elseif int_选项 == 3 then 
            if G.call('get_item',340) >= 10 then
                local int_宝石数量 = G.call('get_item',340)
                G.call('add_item',340,-10)
                G.call("talk",'？？？？',390,'   见证神奇的时刻到了，闭上眼睛！',1,1)
                G.call('dark')
                G.wait_time(500)
                G.call('通用_抽礼物',9,1)
                G.wait_time(500)
                G.call('地图系统_防修改监控') 
                local int_宝石数量 = G.call('get_item',340)
                G.call("talk",'？？？？',390,'   你现在拥有'..int_宝石数量..'颗【神奇宝石】，有什么需要？',1,1) 
            else
                G.call("talk",'？？？？',390,'   【神奇宝石】数量不够无法打造神奇装备！',1,1)  
                local int_宝石数量 = G.call('get_item',340)
                G.call("talk",'？？？？',390,'   你现在拥有'..int_宝石数量..'颗【神奇宝石】，有什么需要？',1,1) 
            end 
        elseif int_选项 == 4 then 
            break
        end
    end
    G.call('all_over')
end
t['通用_转换装备']=function(i_equip)
    if not i_equip then return end
    local o_equip = G.QueryName(i_equip)
    G.call("talk",'？？？？',390,'   需要【神奇宝石】'..(o_equip.转换次数*5)..'个,转换装备只会改变当前装备的品质！',1,1)  
    if G.call('get_item',340) >= o_equip.转换次数*5 then
        G.call('add_item',340,-o_equip.转换次数*5)
        G.call("talk",'？？？？',390,'   见证神奇的时刻到了，闭上眼睛！',1,1)
        G.call('dark')
        G.wait_time(500)
        G.call('功能_物品转换',i_equip,1)
        G.call('地图系统_防修改监控') 
        local ui 
        if not G.getUI('v_equip') then 
            return
        end 
        ui = G.getUI('v_equip') 
        local c = ui.c_equip
        c:显示装备()  
        c:角色操作(0)
    else
        G.call("talk",'？？？？',390,'   【神奇宝石】数量不够无法转换神奇装备！',1,1)  
        G.call('all_over')
    end 
end