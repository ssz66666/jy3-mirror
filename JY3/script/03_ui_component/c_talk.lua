--[[3018

]]

local G = require "gf"
local t = G.com()
function t:init()
    self.移动 = self.obj.getChildByName('移动')
    --self.图片 = self.移动.getChildByName('图片')
    self.姓名 = self.移动.getChildByName('姓名')
    self.文字 = self.移动.getChildByName('文字')
    self.文字.dlgspeed = 80

end
function t:setData(name,dialogue,x,y)
    self.obj.visible = true
    self.obj.parent.addChild(self.obj)
    self:update_role(name,dialogue,x,y)
    
end
function t:update_role(name,dialogue,x,y)
    self.姓名.text = name
    self.文字.text = dialogue
    self.移动.x = x
    self.移动.y = y
end 
function t:click(tar)
    --[[if self.文字.dlgword == 0 then
        G.trig_event('talkover')
	else
		self.文字.dlgword = 0
    end]]
    if tar == self.obj.getChildByName('按钮')  then
        G.Play(0x49011003, 1,false,100) 
        G.Play(0x49011003, 1,false,100)
        G.trig_event('talkover')
    end 
end 
return t