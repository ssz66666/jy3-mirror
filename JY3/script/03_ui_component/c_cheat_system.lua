--[[3002

]]

local G = require "gf"
local t = G.com()

function t:init()
    self.作弊界面 = self.obj.getChildByName('作弊界面')
    self.作弊指令内容 = self.作弊界面.getChildByName('内容')
    self.作弊指令说明 = self.作弊界面.getChildByName('说明')
    self.作弊指令提示 = self.作弊界面.getChildByName('提示信息')
    self.作弊指令历史 = self.作弊界面.getChildByName('cheatlist')
    self.作弊指令历史条目 = self.作弊指令历史.getChildByName('cheatbutton')
    self.道具输入值 = self.作弊界面.getChildByName('输入值')
    self.作弊条目 = self.作弊界面.getChildByName('作弊条目')

    self.作弊指令历史条目列表 = {}
    self.作弊指令历史.visible = true
    self.作弊指令内容.text = ''
    self.作弊界面.visible = false
end

function t:keyDown(tar,info)
    local int_长度
    local key = string.byte(info)
    --[[if self.作弊界面.visible then
        if (key == 13) then --- 回车
            if self.作弊指令内容.text ~= "" then
                G.trig_event('作弊指令', self.作弊指令内容.text)
            end
            self:隐藏作弊界面()
        elseif G.KeyState(0x11) ~= nil and key == 101 then ---- Ctrl + UP
            self.当前作弊历史索引 = self.当前作弊历史索引 - 1
            if self.当前作弊历史索引 < 1 then
                self.当前作弊历史索引 = 1
            end
            self.作弊指令内容.text = G.misc().作弊指令列表[self.当前作弊历史索引]
            int_长度 = G.getStrLen(self.作弊指令内容.text)
            self.作弊指令内容.selectBegin = int_长度
            self.作弊指令内容.selectEnd = int_长度
        elseif G.KeyState(0x11) ~= nil and key == 103 then ---- Ctrl + DOWN
            self.当前作弊历史索引 = self.当前作弊历史索引 + 1
            if self.当前作弊历史索引 > #G.misc().作弊指令列表 then
                self.当前作弊历史索引 = #G.misc().作弊指令列表 + 1
                self.作弊指令内容.text = ""
            else
                self.作弊指令内容.text = G.misc().作弊指令列表[self.当前作弊历史索引]
                int_长度 = G.getStrLen(self.作弊指令内容.text)
                self.作弊指令内容.selectBegin = int_长度
                self.作弊指令内容.selectEnd = int_长度
            end
        elseif G.KeyState(0x11) ~= nil and key == 100 then ---- Ctrl + LEFT
            self:作弊文本选取(self.作弊指令内容.selectBegin + 1, false)
        elseif G.KeyState(0x11) ~= nil and key == 102 then ---- Ctrl + RIGHT
            self:作弊文本选取(self.作弊指令内容.selectEnd - 1, true)
        elseif G.KeyState(0x11) ~= nil and key >= 48 and key <= 57 then ---- Ctrl + (1-9)
            if key == 48 then
                -- 按下 0 意味着按下 10
                key = 58
            end
            if self.作弊指令历史条目列表[key - 48] ~= nil then
                G.trig_event('作弊指令', self.作弊指令历史条目列表[key - 48].c_button.text)
                self:隐藏作弊界面()
            end
        end
    else
        if (key == 13) then --- 回车
            self:显示作弊界面()
        end
    end]]
end

function t:显示作弊界面()
    local int_作弊历史数量 = 0
    local o_misc_杂项 = G.misc()
    local _o_cheat_system_item
    local ui_obj
    local _o_cheat_system_item

    self.作弊界面.visible = true
    if o_misc_杂项 and o_misc_杂项.作弊指令列表 then
        int_作弊历史数量 = #G.misc().作弊指令列表
    end
    self.当前作弊历史索引 = int_作弊历史数量 + 1
    self.作弊指令内容.text = ''
    self.作弊指令内容.selectBegin = -1
    self.作弊指令内容.selectEnd = -1

    if self.作弊界面.getChildByName('按钮').visible then
        _o_cheat_system_item = G.DBTable('o_cheat_system_item')
        for i = 1,#_o_cheat_system_item do
            ui_obj = G.Clone(self.作弊界面.getChildByName('按钮'))
            ui_obj.c_button.text = G.T(_o_cheat_system_item[i].name) or ""
            ui_obj.getChildByName('参数').text = _o_cheat_system_item[i].默认参数 or ""
            self.作弊条目.getChildByName('content').addChild(ui_obj)
        end
        self.作弊界面.getChildByName('按钮').visible = false
    end
    self.作弊指令内容.visible = true
    self.作弊指令说明.visible = true
    self.作弊指令提示.visible = true
    G.SetEditing(self.作弊指令内容)
end

function t:作弊文本选取(int_select, boolean_是否向右)
    local text = self.作弊指令内容.text
    local int_长度 = G.getStrLen(text)
    local int_first = 1
    local int_last = 1
    local int_old = 1
    local int_temp
    if boolean_是否向右 then
        if int_select >= int_长度 then
            self.作弊指令内容.selectBegin = 0
            self.作弊指令内容.selectEnd = 0
            return
        end

        while true do
            int_first = string.find(text, " ", int_first)
            if int_first == nil then
                int_first = int_old
                int_first = G.getStrLen(string.sub(text, 1, int_first))
                int_last = int_长度
                break
            elseif self:获取字符串真实位置(text, int_first) <= int_select then
                int_old = int_first
                int_first = int_first + 1
            elseif self:获取字符串真实位置(text, int_first) > int_select then
                int_last = string.find(text, " ", int_first + 1)
                if int_last == nil then
                    int_last = int_长度
                else
                    int_last = G.getStrLen(string.sub(text, 1, int_last)) - 1
                end
                int_first = G.getStrLen(string.sub(text, 1, int_first))
                break
            end
        end
    else
        if int_select <= 0 then
            self.作弊指令内容.selectBegin = 0
            self.作弊指令内容.selectEnd = 0
            return
        end
        while true do
            int_last = string.find(text, " ", int_last)
            if int_last == nil then
                int_first = int_old
                int_first = G.getStrLen(string.sub(text, 1, int_first))
                int_last = int_长度
                break
            elseif self:获取字符串真实位置(text, int_last) <= int_select then
                int_temp = string.find(text, " ", int_last + 1)
                if not (int_temp and self:获取字符串真实位置(text, int_temp) <= int_select) then
                    int_first = G.getStrLen(string.sub(text, 1, int_old))
                    int_last = G.getStrLen(string.sub(text, 1, int_last)) - 1
                    break
                else
                    int_old = int_last
                    int_last = int_last + 1
                end
            elseif self:获取字符串真实位置(text, int_last) > int_select then
                self.作弊指令内容.selectBegin = 0
                self.作弊指令内容.selectEnd = 0
                return
            end
        end
    end
    if int_first == 1 and string.sub(text, 1, 1) ~= " " then
        int_first = 0
    end
    self.作弊指令内容.selectBegin = int_first
    self.作弊指令内容.selectEnd = int_last
end

function t:更新作弊指令历史ui()
    local o_misc_杂项 = G.misc()
    local num = #o_misc_杂项.作弊指令列表
    local newbutton = nil
    if num > #self.作弊指令历史条目列表 then
        for i = #self.作弊指令历史条目列表+1, num, 1 do
            newbutton = G.Clone(self.作弊指令历史条目)
            self.作弊指令历史.addChild(newbutton)
            table.insert(self.作弊指令历史条目列表, newbutton)

            newbutton.top = (newbutton.bottom - 5) * (i - 1)
            newbutton.bottom = (newbutton.bottom - 5) * i
            newbutton.visible = true
        end
    end

    for i = 1, num, 1 do
        local vt = self.作弊指令历史条目列表[i].getChildByName('text')
        local vtc = self.作弊指令历史条目列表[i].getChildByName('text_count')
        vt.text = o_misc_杂项.作弊指令列表[i]
        vtc.text = i
    end
end

function t:click(tar)
    local _o_cheat_system_item
    local o_node_参数
    local string_作弊指令
    if tar.parent == self.作弊指令历史 then
        local cmd = tar.getChildByName('text').text
        G.trig_event('作弊指令', cmd)
    elseif tar.name == "按钮" then
        _o_cheat_system_item = G.DBTable('o_cheat_system_item')
        for i = 1,#_o_cheat_system_item do
            if tar.c_button.text == G.T(_o_cheat_system_item[i].name) then
                o_node_参数 = tar.getChildByName('参数')
                string_作弊指令 = _o_cheat_system_item[i].执行函数 or ""
                if o_node_参数 then
                    if o_node_参数.text == nil or o_node_参数.text == "" then
                        string_作弊指令 = string_作弊指令.." "..(_o_cheat_system_item[i].默认参数 or "")
                    else
                        string_作弊指令 = string_作弊指令.." "..(o_node_参数.text or "")
                    end
                end
                G.trig_event('作弊指令', string_作弊指令)
                self:隐藏作弊界面()
                break
            end
        end
    end
end

function t:隐藏作弊界面()
    G.SetEditing(nil)
    self.作弊界面.visible = false
end

function t:获取字符串真实位置(str, i)
    return G.getStrLen(string.sub(str, 1, i))
end

return t
