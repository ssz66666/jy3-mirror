--[[3016

]]

local G = require "gf"
local t = G.com()
function t:init()


end
function t:start()
    for i = 16,21 do 
        self.obj.getChildByName(tostring(i)).getChildByName('name').text = tonumber(G.QueryName(0x10030001)[(tostring(i))])
    end 
    for i = 1,16 do 
        self.obj.getChildByName(tostring(i+21)).getChildByName('name').text = tonumber(G.QueryName(0x10030001)[(tostring(i+200))])
    end   
    self.obj.getChildByName('姓名').getChildByName('name').text =  G.QueryName(0x10030001)[(tostring(1))]..G.QueryName(0x10030001)[(tostring(2))]  
    self.obj.getChildByName('称号').getChildByName('name').text =  G.QueryName(0x10030001)[(tostring(7))]
    self.obj.getChildByName('头像').img =  G.QueryName(0x10030001)[tostring(119)] 
    self.obj.getChildByName(tostring(45)).getChildByName('name').text = tonumber(G.QueryName(0x10030001)[(tostring(217))])
    self.obj.getChildByName(tostring(47)).getChildByName('name').text = tonumber(G.QueryName(0x10030001)[(tostring(218))])
    self.obj.getChildByName(tostring(15)).getChildByName('name').text = tonumber(G.QueryName(0x10030001)[(tostring(15))])
end

function t:click(tar)
    if  tar == self.obj.getChildByName('按钮')  then 
        G.Play(0x49011003, 1,false,100)  
        G.trig_event('offlist')
    end     

end     
return t