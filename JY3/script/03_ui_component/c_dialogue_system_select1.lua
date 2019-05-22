--[[300d

]]

local G = require "gf"
local t = G.com()

function t:init()
    self.选项原型 = self.obj.getChildByName('选项原型')
    self.选项原型.visible = false
    self.选择 = self.obj.getChildByName('select')
    self.选项 = self.obj.getChildByName('选项').getChildByName('content')
end
function t:start()
    for i = 1,6 do 
        self.选择.getChildByName(tostring(i)).shadowX = 1    
        self.选择.getChildByName(tostring(i)).shadowAlpha = 180
    end 
    self.选项原型.getChildByName('text').shadowX = 1
    self.选项原型.getChildByName('text').shadowAlpha = 120
end
function t:setData(mod,_select)
    self.obj.visible = true
    self.obj.parent.addChild(self.obj)
    self:update_select(mod,_select)
end

function t:update_select(mod,_select)
    local ui_select
    self.选项.removeAllChildren()
    self.obj.getChildByName('位置').text = tostring(mod)
    local p = tonumber(self.obj.getChildByName('位置').text)
    if p == 3 then 
        self.obj.getChildByName('选项').x = -67
        self.obj.getChildByName('选项').y = -236
        self.obj.getChildByName('选项').width = 279
        self.obj.getChildByName('选项').height = 150
        self.选项原型.x = 120
        self.选项原型.y = -400
        self.选项原型.width = 280
        self.选项原型.height = 12
        self.选项原型.getChildByName('text').left = 6.5
        self.选项原型.getChildByName('text').right= -2.5
        self.选项原型.getChildByName('text').top = 0
        self.选项原型.getChildByName('text').bottom  = 18
       -- self.选项原型.getChildByName('text').font = 0x610e0000
    elseif p == 2 then 
        self.obj.getChildByName('选项').x = 51
        self.obj.getChildByName('选项').y = -163
        self.obj.getChildByName('选项').width = 279
        self.obj.getChildByName('选项').height = 150
        self.选项原型.x = 229
        self.选项原型.y = -330
        self.选项原型.width = 280
        self.选项原型.height = 8
        self.选项原型.getChildByName('text').left = 6.5
        self.选项原型.getChildByName('text').right= -2.5
        self.选项原型.getChildByName('text').top = -3.5
        self.选项原型.getChildByName('text').bottom  = -4.5
        --self.选项原型.getChildByName('text').font = 0x610e0000
    elseif p == 1 then 
        -- self.obj.getChildByName('选项').x = 0
        -- self.obj.getChildByName('选项').y = -21
        -- self.obj.getChildByName('选项').width = 520
        -- self.obj.getChildByName('选项').height = 168
        -- self.选项原型.x = 75
        -- self.选项原型.y = -186
        -- self.选项原型.width = 500
        -- self.选项原型.height = 18
        -- self.选项原型.getChildByName('text').left = 6.5
        -- self.选项原型.getChildByName('text').right= -2.5
        -- self.选项原型.getChildByName('text').top = -1.5
        -- self.选项原型.getChildByName('text').bottom  = -4.5
       -- self.选项原型.getChildByName('text').font = 0x61120000

    end 
    if not(type(_select) == 'table' and #_select > 0) then
        G.trig_event('选择2结束', 0)
    else
        for i = 1, #_select do
            ui_select = G.Clone(self.选项原型)
            ui_select.visible = true
            self.选项.addChild(ui_select)
            ui_select.c_button.text = _select[i]
            ui_select.data = i
            ui_select.mouseEnabled = true
        end
    end
    self.obj.getChildByName('number').text = #_select
    local n = tonumber( self.obj.getChildByName('number').text)
    if n > 1 then 
        for i = 1,n do 
            self.选择.getChildByName(tostring(i)).visible = true
        end     
    end 
end
function t:rollOver(tar)
    for i = 1,6 do 
        if tar ==  self.选择.getChildByName(tostring(i)) then 
            tar.style  = 1
        end 
    end

end 
function t:rollOut(tar)
    for i = 1,6 do 
        if tar ==  self.选择.getChildByName(tostring(i)) then 
            tar.style  = 8
        end 
    end
end
function t:click(tar)
    if type(tar.data) == 'number' and tar.data > 0 then
        G.Play(0x49011003, 1,false,100)
        G.trig_event('选择2结束', tar.data)
    end
    local n = tonumber( self.obj.getChildByName('number').text)
    if n > 1 then 
      
        for i = 1,n do 
           if tar ==  self.选择.getChildByName(tostring(i)) then 
               tar.data = i
               G.Play(0x49011003, 1,false,100)
               G.trig_event('选择2结束', i)
           end 
        
        end     
    end
end

return t