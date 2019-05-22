--[[300c

]]

local G = require "gf"
local t = G.com()

function t:init()
    self.角色 = self.obj.getChildByName('移动').getChildByName('角色')
    self.文字 = self.obj.getChildByName('移动').getChildByName('对话框').getChildByName('文字')
    self.角色名称 = self.obj.getChildByName('移动').getChildByName('角色名称')
    self.对话框 = self.obj.getChildByName('移动').getChildByName('对话框')
    self.文字.dlgspeed = 80
    self.闪点 = self.obj.getChildByName('移动').getChildByName('闪点')
    self.移动 = self.obj.getChildByName('移动')
end

function t:setData(name,int,dialogue,mod)
    --self:recover_role_ui()
    self.obj.visible = true
    self.obj.parent.addChild(self.obj)
    self:update_role(name,int,dialogue,mod)
    --self.动画action = G.RunAction('动画通用_播放动画序列', o_dialogue_system_actionlist, self.角色)
end
function t:start()
    self.文字.shadowX = 1
    self.文字.shadowAlpha = 120
    self.角色.visible = true
    self.闪点.visible = true
    self.角色名称.visible = true
end     

function t:update_role(name,int,dialogue,mod)
    --self.obj.getChildByName('字体大小').text = tostring(size))
    self.文字.text = tostring(dialogue)
    self.obj.getChildByName('编号').text = tostring(int)
    self.obj.getChildByName('位置').text = tostring(mod)
    local p = tonumber(self.obj.getChildByName('位置').text)
    local i = tonumber(self.obj.getChildByName('编号').text) 
    self.角色名称.getChildByName('姓名').text = name 
    if  i == 0 or i == nil then 
        if name == nil or name == '' then 
            self.角色名称.getChildByName('姓名').text = tostring(G.QueryName(0x10030001)[tostring(1)])..tostring(G.QueryName(0x10030001)[tostring(2)]) 
        end 
        self.角色.img = G.QueryName(0x10030001)[tostring(119)]
    else
        if name == nil or name == '' then
            self.角色名称.getChildByName('姓名').text = G.QueryName(0x10040000+i).姓名
        end 
        self.角色.img = G.QueryName(0x10040000+i).头像
    end  
 
    if p == 1 then             --开始回答问题用2,2，0
        self.角色.visible = false
        self.闪点.visible = false
        self.角色名称.visible =false
        self.对话框.x = 0
        self.对话框.y = 25
        self.对话框.weidh = 542
        self.对话框.height = 261
        self.对话框.img = 0x56160041
        self.文字.x = -2
        self.文字.y = 100
        self.文字.weidh = 500
        self.文字.height = 30
        --self.文字.font = 0x61140000
    elseif p == 0 then                       --通用主角中间
        self.obj.getChildByName('移动').x = 100
        self.角色.x = -549
        self.角色.y = 43
        self.角色.width = 48
        self.角色.height = 57
        self.文字.x = 25
        self.文字.y = -40
        self.文字.weidh = 280
        self.文字.height = 100
        self.对话框.x = -86
        self.对话框.y = -170
        self.对话框.width = 360
        self.对话框.height = 91
        self.对话框.img = 0x56160047
        self.角色名称.getChildByName('姓名').x = -158
        self.角色名称.getChildByName('姓名').y = -151
        self.闪点.x = 76
        self.闪点.y = -199
        self.文字.font = 0x61100000
    elseif p == 4 then      ---npc剧情
        self.移动.x = -90
        self.移动.y = 300  
        self.角色.x = -456
        self.角色.y = 76
        self.角色.weidh = 60
        self.角色.height = 71
        self.文字.x = 36
        self.文字.y = -4
        self.文字.weidh = 280
        self.文字.height = 100
        self.对话框.x = 2
        self.对话框.y = -140
        self.对话框.weidh = 360
        self.对话框.height = 117
        self.对话框.img = 0x56160047
        self.角色名称.getChildByName('姓名').x = -135
        self.角色名称.getChildByName('姓名').y = -180
        self.闪点.x = 167
        self.闪点.y = -185
        self.文字.font = 0x61100000
    end     


end

function t:click(tar)
    if G.getUI('v_dialogue_system_select1') and G.getUI('v_dialogue_system_select1').visible then
        return
    end
    if tar == self.obj.getChildByName('背景') then 
       G.trig_event('对话3结束')

    end 
    if self.文字.dlgword == 0 then
        G.Play(0x49011003, 1,false,100)
        G.trig_event('对话3结束')
	else
		self.文字.dlgword = 0
	end

end



return t