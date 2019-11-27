--[[3001

]]

local G = require "gf"
local t = G.com()

function t:init()
    self.移动 = self.obj.getChildByName('移动')
    self.选择 = self.obj.getChildByName('select')
    self.选项原型 = self.移动.getChildByName('选项原型')
    self.选项原型.visible = false
    self.选项 = self.移动.getChildByName('选项').getChildByName('content')
end
function t:start()
    self.选项原型.getChildByName('text').shadowX = 1
    self.选项原型.getChildByName('text').shadowAlpha = 120
    for i = 1,6 do 
        self.选择.getChildByName(tostring(i)).shadowX = 1    
        self.选择.getChildByName(tostring(i)).shadowAlpha = 180
    end   
end
function t:setData(mod,_select,int_选择项)
    self.obj.visible = true
    self.obj.parent.addChild(self.obj)
    self:update_select(mod,_select,int_选择项)
end

function t:update_select(mod,_select,int_选择项)
    local ui_select
    self.选项.removeAllChildren()
    --self.选项原型.getChildByName('text').text = G.call('通用_称谓转换',self.选项原型.getChildByName('text').text)
    self.obj.getChildByName('位置').text = tostring(mod)
    local p = tonumber(self.obj.getChildByName('位置').text)
    if p == 1 then                                         --队友UI
        self.移动.x = -10
        self.移动.y = 0 
        self.移动.getChildByName('选项').x = -50
        self.移动.getChildByName('选项').y = -238
        self.移动.getChildByName('选项').width = 279
        self.移动.getChildByName('选项').height = 150
        self.选项原型.x = 123
        self.选项原型.y = -412
        self.选项原型.width = 280
        self.选项原型.height = 8
        self.选项原型.getChildByName('text').left = 5.5
        self.选项原型.getChildByName('text').right= -3.5
        self.选项原型.getChildByName('text').top = 1
        self.选项原型.getChildByName('text').bottom  = -5
        --self.选项原型.getChildByName('text').font = 0x610e0000
    elseif p == 0 then                                         --中间
        self.移动.x = 0
        self.移动.y = 0
        self.选项原型.height = 11
        self.移动.getChildByName('选项').x = 55
        self.移动.getChildByName('选项').y = -174
        self.移动.getChildByName('选项').width = 330
        self.移动.getChildByName('选项').height = 120
    elseif p == 4 then                                         --中间有对话的
        self.移动.x = 0
        self.移动.y = -20 
        self.选项原型.height = 12
        self.移动.getChildByName('选项').x = 55
        self.移动.getChildByName('选项').y = -174
        self.移动.getChildByName('选项').width = 330
        self.移动.getChildByName('选项').height = 120
       -- self.选项原型.getChildByName('text').font = 0x610e0000
    elseif p == 5 then                                         --中间有对话的
        self.移动.x = 26
        self.移动.y = 35 
        self.移动.getChildByName('选项').x = 32
        self.移动.getChildByName('选项').y = -238
        self.移动.getChildByName('选项').width = 279
        self.移动.getChildByName('选项').height = 150
        self.选项原型.x = 123
        self.选项原型.y = -412
        self.选项原型.width = 280
        self.选项原型.height = 8
        self.选项原型.getChildByName('text').left = 5.5
        self.选项原型.getChildByName('text').right= -3.5
        self.选项原型.getChildByName('text').top = 1
        self.选项原型.getChildByName('text').bottom  = -5
        --self.选项原型.getChildByName('text').font = 0x610e0000
    elseif p == 2 then                                 --聚贤庄
        self.移动.x = 0
        self.移动.y = 5
        self.移动.getChildByName('选项').x = 51
        self.移动.getChildByName('选项').y = -167
        self.移动.getChildByName('选项').width = 279
        self.移动.getChildByName('选项').height = 150
        -- self.选项原型.x = 228
        -- self.选项原型.y = -330
        -- self.选项原型.width = 280
        self.选项原型.height = 8
        -- self.选项原型.getChildByName('text').left = 5.5
        -- self.选项原型.getChildByName('text').right= -3.5
        -- self.选项原型.getChildByName('text').top = 1
        -- self.选项原型.getChildByName('text').bottom  = -5
        --self.选项原型.getChildByName('text').font = 0x61180000
    elseif p == 3 then                     --答题
        self.移动.x = 0
        self.移动.y = 0 
        self.移动.getChildByName('选项').x = -10
        self.移动.getChildByName('选项').y = -30
        self.移动.getChildByName('选项').width = 480
        self.移动.getChildByName('选项').height = 168
        self.选项原型.x = 57
        self.选项原型.y = -176
        self.选项原型.width = 500
        self.选项原型.height = 12
        self.选项原型.getChildByName('text').left = 6.5
        self.选项原型.getChildByName('text').right= -2.5
        self.选项原型.getChildByName('text').top =3
        self.选项原型.getChildByName('text').bottom  = 2
        --self.选项原型.getChildByName('text').font = 0x61120000

    end 


        
    
    if not(type(_select) == 'table' and #_select > 0) then
        G.trig_event('选择1结束', 0)
    else
        for i = 1, #_select do
            ui_select = G.Clone(self.选项原型)
            ui_select.visible = true
            self.选项.addChild(ui_select)
            _select[i] = G.call('通用_称谓转换',_select[i]) 
            ui_select.c_button.text = _select[i]
            ui_select.data = i
            ui_select.mouseEnabled = true
        end
    end
    self.obj.getChildByName('number').text = #_select
    local n = tonumber( self.obj.getChildByName('number').text)
    if int_选择项 then
        n = int_选择项 
    end 
    print(int_选择项)
    if n > 1 then 
        for i = 1,n do 
            self.选择.getChildByName(tostring(i)).visible = true
        end     
    end  
end
function t:rollOver(tar)
    for i = 1,6 do 
        if tar ==  self.选择.getChildByName(tostring(i)) then 
            tar.style  = 2
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
        G.trig_event('选择1结束', tar.data)
    end
    local n = tonumber( self.obj.getChildByName('number').text)
    if n > 1 then 
      
        for i = 1,n do 
           if tar ==  self.选择.getChildByName(tostring(i)) then 
               tar.data = i
               G.Play(0x49011003, 1,false,100)
               G.trig_event('选择1结束', i)
           end 
        
        end     
    end 
end

return t