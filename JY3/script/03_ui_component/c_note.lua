--[[3010

]]

local G = require "gf"
local t = G.com()
function t:init()
self.note=self.obj.getChildByName('note')
self.left=self.obj.getChildByName('left')
self.right=self.obj.getChildByName('right')
self.data =self.note.getChildByName('data')
self.story =self.note.getChildByName('story')
self.展示list = {}
self.ys = self.obj.getChildByName('页数')
self.zys = self.obj.getChildByName('总页数')
self.zgs = self.obj.getChildByName('总个数')
end
function t:start()
--初始位置0,0
--每页6个，X同Y-40
self.data.shadowX = 1
self.data.shadowAlpha = 255
for x = 1, 1, 1 do
    for y = 1, 6, 1 do
        local ui_sub = G.Clone(self.note)
        ui_sub.x =  0 
        ui_sub.y = (y - 1) * -40
        self.obj.addChild(ui_sub)
        ui_sub.visible = false

        self.展示list[(y - 1) * 1 + x] = ui_sub
    end
end

self:update()





end
function t:update()
    local ys = tonumber(self.obj.getChildByName('页数').text)--当前页面
    local num = 0
    local 显示数量 = 0
    local p = 0
    local note = G.DBTable('o_note');
    for i= 1,#note do 
        local o_note = G.QueryName(0x10120000+i)
        if o_note.时间 ~= nil then
            p = p+1
        end   
    end
    self.obj.getChildByName('总页数').text = tostring( math.floor( (p-1)/6 )+1 )
    self.zgs.text = tostring(p)
    for i = 1,96 do 
        local v = G.QueryName(0x10120000+i)
        if v.时间 ~= nil then
            num = num + 1

            for i = 显示数量 + 1, 6, 1 do
                self.展示list[i].visible = false
            end
            if num <= (ys - 1) * 6 then
            elseif num > ys * 6 then
            else
                --显示物品
                显示数量 = 显示数量 + 1
                self.展示list[显示数量].visible = true
                self.展示list[显示数量].getChildByName('data').text = G.QueryName(0x10120000+ i).时间
                self.展示list[显示数量].getChildByName('story').text = G.QueryName(0x10120000+ i).记事
            end
    
            if 显示数量 >= 6 then
                return
            end
        end
    end    
end
function t:click(tar)
    local st  =  tonumber(self.obj.getChildByName('页数').text)
    local zst = tonumber(self.obj.getChildByName('总页数').text)
    if zst > 1 then
       
        if tar == self.left  then
            G.Play(0x49011003, 1,false,100) 
            if st > 1 then
                st = st - 1

            elseif st == 1  then 
                st = zst
            end 
        elseif tar == self.right then
            G.Play(0x49011003, 1,false,100) 
            if st < zst then 
                st = st + 1
            elseif st  == zst then
                st = 1     
            end
    
        end
    end 
    if tar == self.obj.getChildByName('结束') or tar == self.obj.getChildByName('关闭菜单')then
        G.Play(0x49011003, 1,false,100) 
        --G.getUI('v_citymap_system_map').getChildByName('城市').visible = true--恢复暂时不显示的UI  
       self.obj.visible = false
    end    
    self.obj.getChildByName('页数').text = st 


end

return t