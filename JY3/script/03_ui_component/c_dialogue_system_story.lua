--[[3001

]]

local G = require "gf"
local t = G.com()

function t:init()
    self.角色 = self.obj.getChildByName('移动').getChildByName('角色')
    self.文字 = self.obj.getChildByName('移动').getChildByName('文字')
    self.角色名称 = self.obj.getChildByName('移动').getChildByName('角色名称')
    self.对话框 = self.obj.getChildByName('移动').getChildByName('对话框')
    self.文字.dlgspeed = 80
    self.闪点 = self.obj.getChildByName('移动').getChildByName('闪点')
    self.移动 = self.obj.getChildByName('移动')
    self.好感 = self.移动.getChildByName('好感')
    self.好感度 = self.好感.getChildByName('好感度')
    self.图标 = self.好感.getChildByName('图标')
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
    self.角色名称.getChildByName('姓名').shadowX = 1
    self.角色名称.getChildByName('姓名').shadowAlpha = 120
    self.obj.getChildByName('移动').getChildByName('角色').visible = true
    self.obj.getChildByName('移动').getChildByName('闪点').visible = true
    self.obj.getChildByName('移动').getChildByName('角色名称').visible = true
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
        self.好感.visible = false
        self.图标.img = 0x561601af
        if G.call('get_point',15) > 0 then 
            self.好感度.text = '[06]'..G.call('get_point',15)
        else
            self.好感度.text = '[03]'..G.call('get_point',15)
        end
        if name == nil or name == '' then 
            self.角色名称.getChildByName('姓名').text = tostring(G.QueryName(0x10030001)[tostring(1)])..tostring(G.QueryName(0x10030001)[tostring(2)]) 
        end 
        self.角色.img = G.QueryName(0x10030001)[tostring(119)]
    else
        self.好感.visible = true
        self.图标.img = 0x5616008a
        self.好感度.text = G.call('get_love',i)
        if name == nil or name == '' then
            self.角色名称.getChildByName('姓名').text = G.QueryName(0x10040000+i).姓名

        end 
        self.角色.img = G.QueryName(0x10040000+i).头像
    end  
    if  p == 1 then --队友主角（下）mod1选单UI1ui0
        -- self.移动.x = 0
        -- self.移动.y = 0                  
        -- self.文字.x = 25
        -- self.文字.y = -40
        -- self.文字.weidh = 280
        -- self.文字.height = 100
        -- self.对话框.x = -86
        -- self.对话框.y = -170
        -- self.对话框.img = 0x56160047
        -- self.角色名称.getChildByName('姓名').x = -155
        -- self.角色名称.getChildByName('姓名').y = -151
        -- self.闪点.x = 76
        -- self.闪点.y = -199
        --self.文字.font = 0x61100000
    elseif p == 0 then     --通用主角中间
        self.移动.x = 0
        self.移动.y = -20  
        -- self.角色.x = -549
        -- self.角色.y = 43
        -- self.文字.x = 25
        -- self.文字.y = -40
        -- self.文字.weidh = 280
        -- self.文字.height = 100
        -- self.对话框.x = -86
        -- self.对话框.y = -170
        -- self.对话框.img =0x56160047
        -- self.角色名称.getChildByName('姓名').x = -155
        -- self.角色名称.getChildByName('姓名').y = -151
        -- self.闪点.x = 76
        -- self.闪点.y = -199
        -- self.文字.font = 0x61100000
    elseif p == 99 then
        self.角色.x = -461
        self.角色.y = 72
        self.角色.width = 48
        self.角色.height = 57
        self.文字.x = 39
        self.文字.y = -18
        self.文字.weidh = 280
        self.文字.height = 100
        self.对话框.x = 2
        self.对话框.y = -140
        self.对话框.width = 360
        self.对话框.height = 126
        self.对话框.img = 0x56160047
        self.角色名称.getChildByName('姓名').x = -57
        self.角色名称.getChildByName('姓名').y = -97
        self.闪点.x = 167
        self.闪点.y = -185
        --self.文字.font = 0x61100000    
    elseif p == 3 then       --开始答题2,1
        self.移动.x = 60
        self.移动.y = -10
        -- self.角色.x = -98
        -- self.角色.y = 87+20
        -- self.角色.weidh = 60
        -- self.角色.height = 71
        -- self.文字.x = -34
        -- self.文字.y = 19
        -- self.文字.weidh = 280
        -- self.文字.height = 100
        -- self.对话框.x = 84
        -- self.对话框.y = -126+20
        -- self.对话框.weidh = 360
        -- self.对话框.height = 117
        -- self.对话框.img = 0x56160042
        -- self.角色名称.getChildByName('姓名').x = 222
        -- self.角色名称.getChildByName('姓名').y = -165+20
        -- self.闪点.x = 170
        -- self.闪点.y = -164+20
        --self.文字.font = 0x61100000  
    elseif p == 2 then      ---聚贤庄主角下mod3选单UI3ui0   
        self.移动.x = 0
        self.移动.y = 5   
        self.角色.x = -445
        self.角色.y = 100
        self.角色.weidh = 60
        self.角色.height = 71
        self.文字.x = 39
        self.文字.y = -20
        self.文字.weidh = 280
        self.文字.height = 100
        self.对话框.x = 12
        self.对话框.y = -120
        self.对话框.weidh = 360
        self.对话框.height = 120
        self.对话框.img = 0x56160030
        self.角色名称.getChildByName('姓名').x = -48
        self.角色名称.getChildByName('姓名').y = -78
        self.闪点.x = 171
        self.闪点.y = -165
        --self.文字.font = 0x61100000
    elseif p == 4 then      ---npc剧情上
        self.移动.x = 0
        self.移动.y = -20  
        -- self.角色.x = -456
        -- self.角色.y = 76
        -- self.角色.weidh = 60
        -- self.角色.height = 71
        -- self.文字.x = 36
        -- self.文字.y = -4
        -- self.文字.weidh = 280
        -- self.文字.height = 100
        -- self.对话框.x = 2
        -- self.对话框.y = -140
        -- self.对话框.weidh = 360
        -- self.对话框.height = 117
        -- self.对话框.img = 0x56160047
        -- self.角色名称.getChildByName('姓名').x = -135
        -- self.角色名称.getChildByName('姓名').y = -180
        -- self.闪点.x = 167
        -- self.闪点.y = -185
        --self.文字.font = 0x61100000
    elseif p == 5 then      ---npc剧情下中
        -- self.移动.x = -5
        --self.移动.y = 0  
        -- self.角色.x = -456
        -- self.角色.y = 76
        -- self.角色.weidh = 60
        -- self.角色.height = 71
        -- self.文字.x = 36
        -- self.文字.y = 20
        -- self.文字.weidh = 280
        -- self.文字.height = 100
        -- self.对话框.x = 2
        -- self.对话框.y = -140
        -- self.对话框.weidh = 360
        -- self.对话框.height = 117
        -- self.对话框.img = 0x56160047
        -- self.角色名称.getChildByName('姓名').x = -135
        -- self.角色名称.getChildByName('姓名').y = -180
        -- self.闪点.x = 167
        -- self.闪点.y = -185
        --self.文字.font = 0x61100000
    end

end

function t:click(tar)
    if G.getUI('v_dialogue_system_select') and G.getUI('v_dialogue_system_select').visible then
        return
    end

    if self.文字.dlgword == 0 then
        G.Play(0x49011003, 1,false,100)
        G.trig_event('对话1结束')
	else
		self.文字.dlgword = 0
	end

end



return t