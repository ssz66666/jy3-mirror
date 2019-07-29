--[[300e

]]

local G = require "gf"
local t = G.com()
function t:init()
    self.版本 = self.obj.getChildByName('title').getChildByName('版本')
    self.按钮 = self.obj.getChildByName('title').getChildByName('按钮')
    self.code = self.obj.getChildByName('code')
    self.提示 = self.obj.getChildByName('提示')
    self.确定 = self.提示.getChildByName('确定')
    self.返回 = self.提示.getChildByName('返回')
end
function t:start()
    G.misc().code = 0
    G.misc().通关 = 0
    G.misc().清除成就 = 0
    self.obj.getChildByName('清除成就').shadowX = 1
    self.obj.getChildByName('清除成就').shadowAlpha = 255 
    self.版本.shadowX = 1
    self.版本.shadowAlpha = 255 
end
function t:rclick(tar)
    -- G.Play(0x49010038, 1,true,1) 
    -- self.obj.getChildByName('title').visible = false 
    -- self.obj.getChildByName('build').visible = true 
end
function t:rollOver(tar)
   if tar == self.obj.getChildByName('清除成就') then 
       tar.style = 1
   end
end
function t:rollOut(tar)
    if tar == self.obj.getChildByName('清除成就') then 
        tar.style = 3
    end
end 
function t:click(tar)
    local string_版本 = self.版本.text
    if tar == self.按钮.getChildByName('开始游戏')  then  
        local int_清除成就 = G.misc().清除成就
        G.call('通用_读档',0)
        --if int_清除成就 ~= 1 then  
            --G.call('成就_读档',10)
        --end
        G.misc().出师 = nil
        G.misc().七夕礼包 = nil
        G.misc().切磋次数 = 0
        G.misc().清除成就 = 0 
        if tonumber(self.obj.getChildByName('no').text) > 0 then 
            G.misc().code = 4    
        end
        G.trig_event('开始结束')
    elseif tar == self.按钮.getChildByName('继续游戏')  then 
        G.trig_event('读取存档')
    elseif tar == self.按钮.getChildByName('游戏指引')  then 
        self.obj.alpha = 0
        G.addUI('v_system')
    elseif tar == self.obj.getChildByName('清除成就')  then 
        self.obj.getChildByName('提示').visible = true
    elseif tar == self.提示.getChildByName('确定')  then 
        self.obj.getChildByName('提示').visible = false
        G.misc().清除成就 = 1 
    elseif tar == self.提示.getChildByName('返回')  then 
        self.obj.getChildByName('提示').visible = false  
    elseif tar == self.按钮.getChildByName('返回标题')  then 
        os.exit(); 
    end   
    -- if tar == self.obj.getChildByName('build').getChildByName('进入游戏') then
    --     if G.misc().code == 4 then
    --         G.Play(0x4901000f, 1,false,100) 
    --         self.obj.getChildByName('no').text = 1
    --     else
    --         self.obj.getChildByName('no').text = 0
    --     end    
    --     G.Play(0x49011001, 1,true,1) 
    --     self.obj.getChildByName('title').visible = true 
    --     self.obj.getChildByName('build').visible = false 
    -- end
    if tar == self.obj.getChildByName('公告') then
        G.addUI('v_notice')
    end
    if tar == self.code.getChildByName('飞')  then
        G.misc().code = 1
    end
    if tar == self.code.getChildByName('天') then
        if G.misc().code == 1 then 
            G.misc().code = 2
        else
             G.misc().code = 0 
        end
    end
    if tar == self.code.getChildByName('神') then
        if G.misc().code == 2 then 
            G.misc().code = 3
        else
             G.misc().code = 0 
        end
    end
    if tar == self.code.getChildByName('侠') then
        if G.misc().code == 3 then 
            G.misc().code = 4
        else
            G.misc().code = 0 
        end
    end
end 
return t