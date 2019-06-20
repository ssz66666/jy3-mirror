--[[3003

]]

local G = require "gf"
local t = G.com()

function t:init()
    self.按钮 = self.obj.getChildByName('按钮')
    self.锁 = self.obj.getChildByName('锁')
    self.名称 = self.obj.getChildByName('名称')
    self.闪名 = self.obj.getChildByName('闪名')
    self.方框 = self.obj.getChildByName('方框')
end
function t:start()
    self.闪名.shadowX = 1
    self.闪名.shadowAlpha = 255
    local lock = G.DBTable('o_citymap_system_city')
    for i, v in pairs(lock) do
        if v.显示名称 == nil then 
        if v.名称 == self.名称.text then 
                self.obj.getChildByName('闪名').visible = true 
                if v.名称 == '华山之巅' then
                    self.闪名.visible = false
                    --self.名称.visible = false
                else
                    self.闪名.visible = true
                end
            end 
        end 
    end 
    self:update()
end
function t:update()
    local ui1 = 'v_dialogue_system_story'
    local ui2 = 'v_dialogue_system_story1'
    local ui3 = 'v_dialogue_system_select'
    local ui4 = 'v_talk'
    if not G.getUI(ui1) and not G.getUI(ui2) and not G.getUI(ui3) and not G.getUI(ui4) then 
        self.obj.visible = true
    else
        self.obj.visible = false
    end      
end
function t:setData(city)
    self.名称.text = city.名称
    self.obj.getChildByName('闪名').text = city.名称
    self.按钮.c_button.img_normal = city.图标
   
    if city.锁定 then
        self.锁.visible = true
        self.按钮.color = 0x707070
    else
        self.锁.visible = false
        self.按钮.color = 0xffffff
    end
    self.city = city
    self.名称.visible = false
    self.方框.visible = false
    local lock = G.DBTable('o_citymap_system_city')
    for i, v in pairs(lock) do
        if  v.关联事件 ~= nil and v.关联地图 == nil  then 
            if v.名称 == self.名称.text then     
                self.方框.visible = true
            end
    
        end
    end
end
function t:rollOver(tar)
    local lock = G.DBTable('o_citymap_system_city')
    if tar == self.按钮 then 
        for i, v in pairs(lock) do
            if v.显示名称 == nil then 
                local ui = self.obj.getChildByName('闪名')
                if ui then 
                    ui.style = 1
                end
            end 
        end 
    end         
end  
function t:rollOut(tar)
    local lock = G.DBTable('o_citymap_system_city')
    if tar == self.按钮 then 
        for i, v in pairs(lock) do
            if v.显示名称 == nil then 
               if v.名称 == self.名称.text then 
                    local ui = self.obj.getChildByName('闪名')
                    if ui then 
                        ui.style = 4
                    end
                end 
            end 
        end 
    end  
end
function t:click(tar)
    G.trig_event('点击城市事件', self.city, {['是否进入'] = true})
    local lock = G.DBTable('o_citymap_system_city')
    for i, v in pairs(lock) do
        if v.关联地图 == nil and v.关联事件 ~= nil then
            if v.名称 == self.名称.text then                  --地图人物事件处理
                G.trig_event(G.QueryName(v.关联事件).名称)
            end
        elseif v.事件记录 ~= nil then
            if v.名称 == self.名称.text then  
                G.QueryName(0x10030001)[tostring(190)] = v.事件记录 --记录进入山门的门派
            end   
        elseif v.关联地图 ~= nil then
            if v.名称 == self.名称.text and v.锁定 == false then  
                G.Play(0x4901000f, 1,false,100) 
            end      
        end
    end
end

return t