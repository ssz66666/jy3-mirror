--[[302f

]]

local G = require "gf"
local t = G.com()
function t:init()
    self.按钮 = self.obj.getChildByName('按钮')
end
function t:start()
    local int_完美 = 0
    local o_achieve_xmyj = G.QueryName(0x10170017)
    for i = 1,14 do
        if o_achieve_xmyj.进度列表[i].完美 == 1 then 
            int_完美 = int_完美 + 1
        end
    end
    if int_完美 == 14 then
        self.按钮.getChildByName('book_15').visible = true
    end
    self.天书 = 0
    for i = 1,15 do
        local o_book_story = G.QueryName(0x101c0000 + i) 
        if o_book_story.完成 == 0 then
            self.按钮.getChildByName('book_'..i).getChildByName('完成').img = 0x56160073
        else
            self.按钮.getChildByName('book_'..i).getChildByName('完成').img = 0x56160072
        end
    end
end
function t:click(tar)
    for i = 1,15 do 
        if tar == self.按钮.getChildByName('book_'..i) then
            self.天书 = i
            G.trig_event('选择天书结束') 
        end
    end
    if tar == self.obj.getChildByName('结束') or tar == self.obj.getChildByName('关闭菜单') then
        G.Play(0x49011003, 1,false,100) 
        G.trig_event('选择天书结束') 
    end
end
return t