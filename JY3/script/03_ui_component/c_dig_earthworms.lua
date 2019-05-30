--[[302c

]]

local G = require "gf"
local t = G.com()
function t:init()
    self.按钮_list = {}
    self.图片_list = {}
end
function t:start()
    self.按钮 = self.obj.getChildByName('按钮')
    self.图片 = self.obj.getChildByName('图片')
    G.misc().蚯蚓数量 = 0
    G.misc().蚯蚓监听 = 0
    G.misc().挖宝 = 0 
    G.misc().挖宝次数 = 20
    G.misc().挖宝监听 = -20
    G.misc().宝物标识 = math.random(20)
    for x = 1, 10, 1 do
        for y = 1, 10, 1 do
            local ui_sub = G.Clone(self.按钮.getChildByName('点击'))
            ui_sub.x = -285 + (x - 1) * 64 
            ui_sub.y = 215 + (y - 1) * -48
            self.按钮.addChild(ui_sub)
            ui_sub.visible = true
            self.按钮_list [(y - 1) * 10 + x] = ui_sub
        end
    end
    for x = 1, 10, 1 do
        for y = 1, 10, 1 do
            local ui_sub = G.Clone(self.图片.getChildByName('五星'))
            ui_sub.x = -285 + (x - 1) * 64 
            ui_sub.y = 215 + (y - 1) * -48
            self.图片.addChild(ui_sub)
            ui_sub.visible = true
            self.图片_list [(y - 1) * 10 + x] = ui_sub
        end
    end
    local earthworms = {}
    G.misc().蚯蚓 = {}
    for i = 1,100 do 
        table.insert(earthworms,i) 
    end    
    local len 
    local r 
    for i = 1,20 do 
        len = #earthworms
        r = math.random(len)
        table.insert(G.misc().蚯蚓,earthworms[r]) 
        table.remove(earthworms, r)   
    end
    for i = 1,20 do
        self.图片_list[G.misc().蚯蚓[i]].img = 0x56160072 
    end
end
function t:click(tar)
    local result = false
    for i = 1,100 do 
        if tar == self.按钮_list[i]  then
            G.misc().挖宝监听 = G.misc().挖宝监听 + 1
            G.misc().挖宝次数 = G.misc().挖宝次数 - 1
            self.obj.getChildByName('次数').text  = '[08]剩余次数[br][01]   '..G.misc().挖宝次数 
            self.按钮_list[i].visible = false
            self.图片_list[i].visible = true
            for j = 1,20 do
                if i == G.misc().蚯蚓[j] then
                    if j ==  G.misc().宝物标识 then 
                        G.misc().挖宝 = 1
                    end
                    result = true
                end 
            end   
        end    
    end
    if result == true then 
        G.misc().蚯蚓数量 = G.misc().蚯蚓数量 + 1
        G.misc().蚯蚓监听 =  G.misc().蚯蚓监听 -1
    end
    if G.misc().挖宝次数  == 0 then 
        G.trig_event('dig_earthworms_over')
    end
    self.obj.getChildByName('数量').text = '蚯蚓数量[br][01]   '..G.misc().蚯蚓数量
    if G.misc().挖宝次数 ~= math.abs(G.misc().挖宝监听) or G.misc().蚯蚓数量 ~= math.abs(G.misc().蚯蚓监听) then 
        G.trig_event('强制退出')
    end
end
return t