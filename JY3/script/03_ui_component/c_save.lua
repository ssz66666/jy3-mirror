--[[3036

]]

local G = require "gf"
local t = G.com()
function t:init()
    self.存档 = self.obj.getChildByName('save')
    self.确认 = self.obj.getChildByName('确认')
    self.按钮 = self.确认.getChildByName('按钮')
    self.存档位置 = 1
end
function t:start()
    self:刷新显示()   
end
function t:刷新显示()
    local save = {'save1','save2','save3','save4'}
    G.call('信息_读档',5)
    for i = 1,3 do
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
        if o_files.次数 > 999 then
            t[8] = '???'
        end
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
            elseif  tonumber(t[3]) == 4 then    
                self.存档.getChildByName(save[i]).getChildByName('true').getChildByName('难度').text = '难度:噩梦'
            elseif  tonumber(t[3]) == 5 then    
                self.存档.getChildByName(save[i]).getChildByName('true').getChildByName('难度').text = '生存模式'
            end
            local school = {'无门派','武当派','少林派','华山派','全真教','古墓派','逍遥派','血刀门','桃花岛','丐  帮','星宿派','峨嵋派'}
            local int_no = 1
            if t[7] ~= nil and t[7] ~= '' then 
                int_no = tonumber(t[7])  
            end   
            local place = G.QueryName(0x10060000+int_no).名称
            self.存档.getChildByName(save[i]).getChildByName('true').getChildByName('门派').text = school[tonumber(t[2])+1]
            self.存档.getChildByName(save[i]).getChildByName('true').getChildByName('等级').text = place..t[1]..'级'
            self.存档.getChildByName(save[i]).getChildByName('true').getChildByName('时间').text = t[6] 
            if t[3] == 5 then 
                self.存档.getChildByName(save[i]).getChildByName('true').getChildByName('次数').text = '死亡'..t[8]..'次' 
            else
                self.存档.getChildByName(save[i]).getChildByName('true').getChildByName('次数').text = '存档'..t[8]..'次' 
            end
            if tonumber(t[5]) == 1 then 
                self.obj.getChildByName('save').getChildByName(save[i]).getChildByName('over').text = 1
                self.存档.getChildByName(save[i]).getChildByName('true').getChildByName('周目').text = '周目'..G.call('to_chinese',tonumber(t[4]))..'(通关)'
            elseif tonumber(t[5]) == 2 then 
                self.obj.getChildByName('save').getChildByName(save[i]).getChildByName('over').text = 1
                self.存档.getChildByName(save[i]).getChildByName('true').getChildByName('周目').text = '周目'..G.call('to_chinese',tonumber(t[4]))..'(重开)'
            else
                self.存档.getChildByName(save[i]).getChildByName('true').getChildByName('周目').text = '周目'..G.call('to_chinese',tonumber(t[4]))
                self.obj.getChildByName('save').getChildByName(save[i]).getChildByName('over').text = 0
            end    
        else
            self.obj.getChildByName('save').getChildByName(save[i]).getChildByName('true').visible = false
            self.obj.getChildByName('save').getChildByName(save[i]).getChildByName('false').visible = true
        end 
    end  
end
function t:click(tar)
    if tar == self.obj.getChildByName('结束')  then
       G.Play(0x49011003, 1,false,100) 
       G.trig_event('save_over')
    end  
    local save = {'save1','save2','save3','save4'}
    for i = 1,3 do 
        if tar == self.存档.getChildByName(save[i]) then
            self.存档位置 = i
            self.确认.visible = true
        end
    end
    if tar == self.按钮.getChildByName('是') then
        G.Play(0x49010035, 1,false,100) 
        local  int_难度 = G.QueryName(0x10160000 +G.call('get_point',143)).难度
        G.QueryName(0x10030001)[tostring(143)] = self.存档位置
        G.QueryName(0x10160000 +G.call('get_point',143)).难度 = int_难度
        G.call('add_point',64,1)
        G.call('通用_存档',self.存档位置)
        self.确认.visible = false
        G.trig_event('save_over')
    elseif tar == self.按钮.getChildByName('否') then
        self.确认.visible = false
    end
end
return t