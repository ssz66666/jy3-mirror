--[[3024

]]

local G = require "gf"
local t = G.com()
local GF = require "gfbase"
function t:init()
    self.存档 = self.obj.getChildByName('save')
end
function t:start()
    --local r = {'R1.lua','R2.lua','R3.lua','R4.lua'}
    local save = {'save1','save2','save3','save4'}
    G.call('信息_读档',5)
    for i = 1,4 do
        local o_files = G.QueryName(0x10160000 + i)
        local t = {}
        t[2] = o_files.门派 
        t[1] = o_files.等级 
        t[6] = o_files.时间 
        t[3] = o_files.难度 
        t[5] = o_files.通关 
        t[4] = o_files.周目 
        t[7] = o_files.记录 
        t[8] = o_files.次数 
        if t[8] == nil then
            t[8] = 0 
        end
        if tonumber(t[1]) > 0  then 
            self.obj.getChildByName('save').getChildByName(save[i]).getChildByName('true').visible = true
            self.obj.getChildByName('save').getChildByName(save[i]).getChildByName('false').visible = false
            if tonumber(t[3]) == 1 then
                self.存档.getChildByName(save[i]).getChildByName('true').getChildByName('难度').text = '难度:休闲'
            elseif  tonumber(t[3]) == 2 then    
                self.存档.getChildByName(save[i]).getChildByName('true').getChildByName('难度').text = '难度:普通'
            elseif  tonumber(t[3]) == 3 then    
                self.存档.getChildByName(save[i]).getChildByName('true').getChildByName('难度').text = '难度:困难'
            end
            local school = {'无门派','武当派','少林派','华山派','全真教','古墓派','逍遥派','血刀门','桃花岛','丐  帮','星宿派'}
            local int_no = 1
            if t[7] ~= nil and t[7] ~= '' then 
                int_no = tonumber(t[7])  
            end   
            local place = G.QueryName(0x10060000+int_no).名称
            self.存档.getChildByName(save[i]).getChildByName('true').getChildByName('门派').text = school[tonumber(t[2])+1]
            self.存档.getChildByName(save[i]).getChildByName('true').getChildByName('等级').text = place..t[1]..'级'
            self.存档.getChildByName(save[i]).getChildByName('true').getChildByName('时间').text = t[6] 
            self.存档.getChildByName(save[i]).getChildByName('true').getChildByName('次数').text = t[8]..'次' 
            if tonumber(t[5]) > 0 then 
                self.obj.getChildByName('save').getChildByName(save[i]).getChildByName('over').text = 1
                self.存档.getChildByName(save[i]).getChildByName('true').getChildByName('周目').text = '周目'..G.call('to_chinese',tonumber(t[4]))..'(通关)'
            else
                self.存档.getChildByName(save[i]).getChildByName('true').getChildByName('周目').text = '周目'..G.call('to_chinese',tonumber(t[4]))
                self.obj.getChildByName('save').getChildByName(save[i]).getChildByName('over').text = 0
            end     
        else
            self.obj.getChildByName('save').getChildByName(save[i]).getChildByName('true').visible = false
            self.obj.getChildByName('save').getChildByName(save[i]).getChildByName('false').visible = true
        end 


    end      
    G.misc().通关 = 0
end
function t:rclick(tar)
    G.Play(0x49011003, 1,false,100) 
    local ui ;
    if not G.getUI('v_title') then 
        return
    end 
    G.Play(0x49011001, 1,true,1) 
    ui = G.getUI('v_title');
    ui.visible = true
    G.trig_event('load_over')
end    
function t:click(tar)
    if tar == self.obj.getChildByName('结束') or tar == self.obj.getChildByName('关闭菜单') then
       G.Play(0x49011003, 1,false,100) 
       local ui ;
       if not G.getUI('v_title') then 
           return
       end 
       G.Play(0x49011001, 1,true,1) 
       ui = G.getUI('v_title');
       ui.visible = true
       G.trig_event('load_over')
    end    
    local save = {'save1','save2','save3','save4'}  
    for i = 1,4 do
        if tar == self.obj.getChildByName('save').getChildByName(save[i]) then 
            local ui ;
            if not G.getUI('v_title') then 
                return
            end 
            ui = G.getUI('v_title');
            if  self.obj.getChildByName('save').getChildByName(save[i]).getChildByName('true').visible == true then
                local  n = tonumber(self.obj.getChildByName('save').getChildByName(save[i]).getChildByName('over').text)
                if n > 0  then
                    G.call('mapoff')
                    G.Play(0x49011001, 1,true,1)
                    G.call('信息_读档',5)
                    local o_files = G.QueryName(0x10160000 + i)
                    local int_周目 = o_files.周目
                    local int_清除成就 = G.misc().清除成就
                    local int_通关 = o_files.通关
                    G.call('继承_读档',10)
                    if int_通关 > 0  then 
                        local o_store = G.QueryName(0x10190001)
                        int_周目 = int_周目 + 1
                        local int_继承个数 = 0
                        for i = 1,#o_store.装备 do
                            if o_store.装备[i].数量 > 0 then
                                int_继承个数 = int_继承个数 + 1
                            end  
                        end
                        local table_继承装备 = {}
                        G.call('set_point',237,int_周目)
                        table_继承装备 =  G.call('通用_记录继承装备',1)
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
                        local int_礼包 = G.misc().礼包
                        local int_梦幻完成 = G.misc().梦幻完成
                        local int_重置梦幻 = G.misc().重置梦幻 
                        G.call('通用_检测装备')
                        G.call('通用_读档',0)
                        G.misc().出师 = nil
                        G.misc().礼包 = int_礼包
                        if int_清除成就 ~= 1 then   
                            G.call('成就_读档',10)
                            G.call('故事_读档',10)
                        end 
                        G.misc().重生 = 0
                        local int_万金 = G.QueryName(0x10170004).进度列表[1].当前进度
                        G.call('set_point',237,int_周目)
                        G.call('set_newpoint',237,-int_周目-10)
                        G.call('set_point',143,i)  
                        if int_万金 > 400000 or int_继承个数 > 3000 then 
                            G.call('notice1','该存档无法正常读取，请重新开始游戏！')
                        else
                            G.call('通用_印记状态')       
                            local book_story_list = G.DBTable('o_book_story_list')
                            local int_完美 = 0
                            for i = 1,#book_story_list do
                                local o_book_story_list = G.QueryName(0x101e0000 + i)
                                if o_book_story_list.完美 == 1 then
                                    int_完美 = int_完美 + 1 
                                end
                            end
                            if int_梦幻完成~= 1 and int_完美 >= 15 then 
                                G.call('notice1','拒绝非法操作，请正常读取')
                            else
                                if #o_equip_usb > 0 and int_继承个数 < 3000 then 
                                    for i = 1,#o_equip_usb do 
                                        if o_equip_usb[i] then 
                                            G.addNewInst2Dynamic(o_equip_usb[i],'o_equip')
                                            i_equip = o_equip_usb[i].name
                                            G.call('add_equip',i_equip,1)
                                        end
                                    end  
                                end
                                if int_完美 >= 15 or int_重置梦幻 == nil  then 
                                    for i = 1,#book_story_list do
                                        local o_book_story_list = G.QueryName(0x101e0000 + i)
                                        o_book_story_list.完美 = 0
                                    end
                                end
                                if int_重置梦幻 == nil  then
                                    local o_achieve = G.QueryName(0x10170017) 
                                    for i = 1,#o_achieve.进度列表 do
                                        o_achieve.进度列表[i].完成 = 0
                                    end
                                    G.misc().重置梦幻 = 1
                                else
                                    G.misc().重置梦幻 = int_重置梦幻
                                end
                                G.misc().梦幻完成 = nil
                                G.misc().密令序号 = nil
                                G.misc().切磋次数 = 0
                                G.trig_event('load_over')
                                G.misc().通关 = 1
                                G.trig_event('开始结束')    
                            end
                        end
                    else
                        G.call('notice1','拒绝非法操作，请正常读取')
                    end
                else
                    G.Play(0x4901000f, 1,false,100) 
                    G.call('通用_读档',i)
                    if tonumber(ui.getChildByName('no').text) > 0 then 
                        G.misc().code = 4    
                    end
                    G.trig_event('监控')
                    G.trig_event('load_over')
                    G.trig_event('开始结束')
                end
            else
                G.Play(0x49011003, 1,false,100) 
                G.call('notice','无存档记录')
            end
        end 
    end 
end
return t