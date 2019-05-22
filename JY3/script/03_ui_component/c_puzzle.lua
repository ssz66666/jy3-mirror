--[[302b

]]

local G = require "gf"
local t = G.com()
function t:init()
    self.拼图_list = {}
end
function t:start()
    self.按钮 = self.obj.getChildByName('按钮')
    self.拼图 = self.按钮.getChildByName('拼图')
    self.闪光 = self.按钮.getChildByName('闪光')
    for x = 1, 8, 1 do
        for y = 1, 8, 1 do
            local ui_sub = G.Clone(self.拼图)
            ui_sub.x = -270 + (x - 1) * 78 
            ui_sub.y = 210 + (y - 1) * -60
            self.按钮.addChild(ui_sub)
            ui_sub.visible = true
            self.拼图_list [(y - 1) * 8 + x] = ui_sub
        end
    end
    local pullze = {}
    G.misc().拼图 = {}
    for i = 1,63 do 
        table.insert(pullze,i) 
    end    
    local len 
    local r
    local table_拼图_usb = {}
    local pullze_usb = {}
    local table_拼图 = {}
    while true do  
        pullze_usb = {}
        table_拼图 = {}
        table_拼图_usb = {}
        G.deepcopy(table_拼图, table_拼图_usb)
        G.deepcopy(pullze, pullze_usb)
        for i = 1,63 do 
            len = #pullze_usb
            r = math.random(len)
            table.insert(table_拼图_usb,pullze_usb[r]) 
            table.remove(pullze_usb, r)   
        end
        if G.call('count_inversion',table_拼图_usb) % 2 == 0 then 
            break
        end 
    end
    G.misc().拼图 = table_拼图_usb
    table.insert(G.misc().拼图,64)    
    for i = 1,63 do 
        self.拼图_list[i].img = 0x56170000 + G.misc().拼图[i]
    end 
    self.拼图_list[64].img = 0x56170000 + G.misc().拼图[64]
    G.misc().拼图位置 = 64
    self.闪光.x =  self.拼图_list[G.misc().拼图位置].x
    self.闪光.y =  self.拼图_list[G.misc().拼图位置].y 
end
function t:update()

end
function t:click(tar)
    local img_拼图 =  self.拼图_list[G.misc().拼图位置].img
    for i = 1,64 do 
        if tar == self.拼图_list[i] then 
            local int_位置_1 = i % 8
            local int_位置_2 = math.floor(i / 8) + 1
            if i ==  G.misc().拼图位置 - 1  and  int_位置_1 > 0 then 
                G.Play(0x49011003, 1,false,100) 
                self.拼图_list[G.misc().拼图位置].img = self.拼图_list[i].img
                self.拼图_list[i].img = img_拼图 
                G.misc().拼图位置 = i
            elseif i == G.misc().拼图位置 + 1 and int_位置_1 ~= 1 then 
                G.Play(0x49011003, 1,false,100) 
                self.拼图_list[G.misc().拼图位置].img = self.拼图_list[i].img
                self.拼图_list[i].img = img_拼图 
                G.misc().拼图位置 = i
            elseif i == G.misc().拼图位置 - 8 and G.misc().拼图位置 -8 > 0 then
                G.Play(0x49011003, 1,false,100) 
                self.拼图_list[G.misc().拼图位置].img = self.拼图_list[i].img
                self.拼图_list[i].img = img_拼图 
                G.misc().拼图位置 = i
            elseif i == G.misc().拼图位置 + 8 and G.misc().拼图位置 + 8 <= 64 then
                G.Play(0x49011003, 1,false,100) 
                self.拼图_list[G.misc().拼图位置].img = self.拼图_list[i].img
                self.拼图_list[i].img = img_拼图 
                G.misc().拼图位置 = i
            end    
        end    
    end 
    self.闪光.x =  self.拼图_list[G.misc().拼图位置].x
    self.闪光.y =  self.拼图_list[G.misc().拼图位置].y   
    local result = true
    for i = 1,64 do 
        if self.拼图_list[i].img ~= 0x56170000 + i then 
            result = false
            break
        end    
    end    
    if result == true then
        G.misc().拼图结果 = 1
    else
        G.misc().拼图结果 = 0
    end
    if tar == self.obj.getChildByName('完成') then
        G.trig_event('puzzle_over')
    end
    if tar == self.obj.getChildByName('参考') then
        if self.obj.getChildByName('参考图').visible == false then 
            self.obj.getChildByName('参考图').visible = true
        else
            self.obj.getChildByName('参考图').visible = false
        end
    end
end
return t