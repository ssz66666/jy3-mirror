--[[302d

]]

local G = require "gf"
local t = G.com()
function t:init()
    self.按钮 = self.obj.getChildByName('按钮')
    self.主菜单 = self.按钮.getChildByName('主菜单')
    self.子菜单 = self.按钮.getChildByName('子菜单')
    self.显示 = self.按钮.getChildByName('显示')
    self.物品 = self.显示.getChildByName('物品')
    self.武功 = self.显示.getChildByName('武功')
    self.显示翻页 = self.显示.getChildByName('翻页')
    self.翻页 = self.子菜单.getChildByName('翻页')
    self.属性 = self.显示.getChildByName('人物').getChildByName('属性')
    self.面具 = self.显示.getChildByName('人物').getChildByName('面具')
    self.被动 = self.属性.getChildByName('被动')
    self.人物_list = {}
    self.物品_list = {}
    self.武功_list = {}
end
function t:start()
    if G.call('get_item',275) > 0 then
        self.面具.visible = true 
    else
        self.面具.visible = false 
    end
    if not G.misc().人物头像 then
        G.misc().人物头像 = G.call('get_point',119) 
    end
    self.子菜单.getChildByName('标本').shadowX = 1
    self.子菜单.getChildByName('标本').shadowAlpha = 180
    for x = 1, 3, 1 do
        for y = 1, 11, 1 do
            local ui_sub = G.Clone(self.子菜单.getChildByName('标本'))
            ui_sub.x = -300 + (x - 1) * 210 
            ui_sub.y = 120 + (y - 1) * -30
            self.子菜单.getChildByName('人物').addChild(ui_sub)
            ui_sub.visible = true
            self.人物_list[(y - 1) * 3 + x] = ui_sub
        end
    end
    for x = 1, 3, 1 do
        for y = 1, 11, 1 do
            local ui_sub = G.Clone(self.子菜单.getChildByName('标本'))
            ui_sub.x = -300 + (x - 1) * 210 
            ui_sub.y = 120 + (y - 1) * -30
            self.子菜单.getChildByName('物品').addChild(ui_sub)
            ui_sub.visible = true
            self.物品_list[(y - 1) * 3 + x] = ui_sub
        end
    end
    for x = 1, 3, 1 do
        for y = 1, 11, 1 do
            local ui_sub = G.Clone(self.子菜单.getChildByName('标本'))
            ui_sub.x = -300 + (x - 1) * 210 
            ui_sub.y = 120 + (y - 1) * -30
            self.子菜单.getChildByName('武功').addChild(ui_sub)
            ui_sub.visible = true
            self.武功_list[(y - 1) * 3 + x] = ui_sub
        end
    end
    G.misc().book_data = 1
    G.misc().book_data_i = 1
    G.misc().book_data_m = 1
    G.misc().book = 1
end
function t:onFrameEnd(tar, id)
    if tar == self.属性.getChildByName('动作') then
        self.属性.getChildByName('动作').frameActionID(id )
    end
    if tar == self.属性.getChildByName('动作1') then
        self.属性.getChildByName('动作1').frameActionID(id )
    end
    if tar == self.武功.getChildByName('动作') then 
        self.武功.getChildByName('动作').frameActionID(id )
    end
end
function t:显示更新()
    local str_菜单 = {'人物','物品','武功'}
    local item =G.DBTable('o_item')
    local skill =G.DBTable('o_skill')
    local role =G.DBTable('o_role')
    local int_role = #role
    local int_显示数量 = 33
    if  G.misc().book_data_i == G.misc().book_data_m then
        if  G.misc().book == 1 then 
            int_显示数量 = int_role - (G.misc().book_data_i - 1)*33
        elseif G.misc().book == 2 then
            int_显示数量 = #item - (G.misc().book_data_i - 1)*33
        elseif G.misc().book == 3 then
            int_显示数量 = #skill - (G.misc().book_data_i - 1)*33
        end
        for i = 1,33 do 
            self[str_菜单[G.misc().book]..'_list'][i].visible = false
        end 
    end
    if int_显示数量 > 33 then
        int_显示数量 = 33 
    end
    print('int_role=',int_role)
    print('int_显示数量=',int_显示数量)
    for i = 1,int_显示数量  do 
        self[str_菜单[G.misc().book]..'_list'][i].visible = true
    end 
    if  G.misc().book == 1 then 
        for i = 1,int_显示数量 do 
            self.人物_list[i].text = G.QueryName(0x10040000 + (G.misc().book_data_i - 1)*33 + i).姓名
        end
    elseif G.misc().book == 2 then
        for i = 1,int_显示数量 do 
            self.物品_list[i].text = G.QueryName(0x100b0000 + (G.misc().book_data_i - 1)*33 + i).名称
        end
    elseif G.misc().book == 3 then
        for i = 1,int_显示数量 do 
            self.武功_list[i].text = G.QueryName(0x10050000 + (G.misc().book_data_i - 1)*33 + i).名称
        end
    end

    self.翻页.getChildByName('data').text = G.misc().book_data_i
end
function t:详细显示()
    self.显示翻页.getChildByName('data').text = G.misc().book_data
    if  G.misc().book == 1 then 
        local o_role_人物 = G.QueryName(0x10040000 + G.misc().book_data)
        if o_role_人物.头像 then
            if G.misc().book_data < 385 and G.misc().book_data >= 253 then
                local o_role = G.QueryName(0x10040000 + o_role_人物.编号)
                self.属性.getChildByName('头像').img = o_role.头像
            else 
                self.属性.getChildByName('头像').img = o_role_人物.头像
            end
        end 
        local img_动画 = 0x33061000 + G.misc().book_data 
        if o_role_人物.生命 > 0 then 
            print(G.misc().book_data)
            if G.misc().book_data < 385 and G.misc().book_data >= 253 then 
                self.属性.getChildByName('动作').frameActionID(1000+o_role_人物.编号)
            else
                self.属性.getChildByName('动作').frameActionID(1000+G.misc().book_data)
            end
            if o_role_人物[tostring(901)] then 
                if G.misc().book_data < 385 and G.misc().book_data >= 253 then 
                    self.属性.getChildByName('动作1').frameActionID(1000+o_role_人物.编号)
                else
                    self.属性.getChildByName('动作1').frameActionID(1000+G.misc().book_data)
                end
            else
                self.属性.getChildByName('动作1').frameActionID(0)
            end
            --self.属性.getChildByName('动作').img = img_动画 
        else
            self.属性.getChildByName('动作1').frameActionID(0)
            self.属性.getChildByName('动作').frameActionID(0)
        end
        if o_role_人物.死亡掉落道具 and o_role_人物.拥有 > 0 then
            self.属性.getChildByName('掉落物').text = '掉落物：[br][01]'..G.QueryName(o_role_人物.死亡掉落道具).名称
        else 
            self.属性.getChildByName('掉落物').text = '掉落物：[br][01]无'
        end
        local str = ''
        for i = 1,4 do 
            if o_role_人物['需求道具'..i]  then
                if  o_role_人物['拥有'..i] == 0 then
                    str = str..'[01]'..G.QueryName(o_role_人物['需求道具'..i]).名称..'[br]'
                else
                    str = str..'[01]'..G.QueryName(o_role_人物['需求道具'..i]).名称..'[03](已拥有)[br]'
                end
            end
        end
        if str ~= '' then 
            self.属性.getChildByName('需求').text = '需求道具：[br]'..str
        else
            self.属性.getChildByName('需求').text = '需求道具：[br][01]无' 
        end
        str = '属性上限：[br][01]'
        local 上限 = {'901','902','907','906','904','903','905','908'}
        if o_role_人物[上限[1]] ~= nil then
            for i = 1,8 do 
               str = str..o_role_人物[上限[i]]..'[br]' 
            end    
        end    
        self.属性.getChildByName('属性上限').text = str
        self.属性.getChildByName('姓名').text = o_role_人物.姓名
        if  not o_role_人物[tostring(901)] then 
            self.属性.getChildByName('生命').text = '?????/?????'
            self.属性.getChildByName('内力').text = '?????/?????'
        else
            self.属性.getChildByName('生命').text = tostring(o_role_人物.生命)..'/'..tostring(o_role_人物[tostring(1)])
            self.属性.getChildByName('内力').text = tostring(o_role_人物.内力)..'/'..tostring(o_role_人物[tostring(2)])
        end
        local 属性 = {'拆招','搏击','闪躲','内功','攻击','速度'}
        for i = 1,6 do
            if o_role_人物[tostring(i+2)] > 100 and not o_role_人物[tostring(901)] then
                self.属性.getChildByName(属性[i]).text = '????'
            else
                self.属性.getChildByName(属性[i]).text = o_role_人物[tostring(i+2)]
            end 
        end
        self.属性.getChildByName('好感度').text = tostring(o_role_人物[tostring(9)]) 
        local magic = {'破绽','慈悲','先攻','妙手','急速','冰心','暴击','激励','见切','万毒','强体','回春','强力','强行','复生','奇才','活力','阴毒','舔血','北冥','真武','朱雀','玄武','青龙','白虎','指心','拳劲','剑意','刀魂','奇门','寒气'}
        for i = 1,4 do 
            if o_role_人物[tostring(110+i)] ~= nil then 
                self.被动.getChildByName(tostring(i)).visible = true
                self.被动.getChildByName(tostring(i)).text = magic[o_role_人物[tostring(110+i)]]
            else
                self.被动.getChildByName(tostring(i)).visible = false
            end     
        end     
        if o_role_人物.技能1 ~= nil then 
            local data = G.QueryName(o_role_人物.技能1).满级熟练度/450
            local o_skill_武功当前熟练度 = tonumber(o_role_人物[tostring(10)]) 
            local o_skill_武功等级 = 0
            if o_skill_武功当前熟练度 > 0 then 
                    o_skill_武功等级 = 1
            end     
            if  o_skill_武功当前熟练度 > 10*data then
                o_skill_武功等级 = 2
            end 
            if  o_skill_武功当前熟练度 > 30*data then
                o_skill_武功等级 = 3
            end     
            if  o_skill_武功当前熟练度 > 60*data then
                o_skill_武功等级 = 4
            end 
            if  o_skill_武功当前熟练度 > 100*data then
                o_skill_武功等级 = 5
            end 
            if  o_skill_武功当前熟练度 > 150*data then
                o_skill_武功等级 = 6
            end 
            if  o_skill_武功当前熟练度 > 210*data then
                o_skill_武功等级 = 7
            end 
            if  o_skill_武功当前熟练度 > 280*data then
                o_skill_武功等级 = 8
            end 
            if  o_skill_武功当前熟练度 > 360*data then
                o_skill_武功等级 = 9
            end 
            if  o_skill_武功当前熟练度 > 450*data then
                o_skill_武功等级 = 10
            end 
            self.属性.getChildByName('武功一').text = G.QueryName(o_role_人物.技能1).名称..tostring(o_skill_武功等级)..'级'
        else
            self.属性.getChildByName('武功一').text = ''

        end  
        if o_role_人物.技能2 ~= nil then 
            local data = G.QueryName(o_role_人物.技能2).满级熟练度/450
            local o_skill_武功当前熟练度 = tonumber(o_role_人物[tostring(11)]) 
            local o_skill_武功等级 = 0
            if o_skill_武功当前熟练度 > 0 then 
                    o_skill_武功等级 = 1
            end     
            if  o_skill_武功当前熟练度 > 10*data then
                o_skill_武功等级 = 2
            end 
            if  o_skill_武功当前熟练度 > 30*data then
                o_skill_武功等级 = 3
            end     
            if  o_skill_武功当前熟练度 > 60*data then
                o_skill_武功等级 = 4
            end 
            if  o_skill_武功当前熟练度 > 100*data then
                o_skill_武功等级 = 5
            end 
            if  o_skill_武功当前熟练度 > 150*data then
                o_skill_武功等级 = 6
            end 
            if  o_skill_武功当前熟练度 > 210*data then
                o_skill_武功等级 = 7
            end 
            if  o_skill_武功当前熟练度 > 280*data then
                o_skill_武功等级 = 8
            end 
            if  o_skill_武功当前熟练度 > 360*data then
                o_skill_武功等级 = 9
            end 
            if  o_skill_武功当前熟练度 > 450*data then
                o_skill_武功等级 = 10
            end 
            self.属性.getChildByName('武功二').text = G.QueryName(o_role_人物.技能2).名称..tostring(o_skill_武功等级)..'级'
        else
            self.属性.getChildByName('武功二').text = ''
        end 
        if o_role_人物.技能3 ~= nil then 
            local data = G.QueryName(o_role_人物.技能3).满级熟练度/450
            local o_skill_武功当前熟练度 = tonumber(o_role_人物[tostring(12)]) 
            local o_skill_武功等级 = 0
            if o_skill_武功当前熟练度 > 0 then 
                    o_skill_武功等级 = 1
            end     
            if  o_skill_武功当前熟练度 > 10*data then
                o_skill_武功等级 = 2
            end 
            if  o_skill_武功当前熟练度 > 30*data then
                o_skill_武功等级 = 3
            end     
            if  o_skill_武功当前熟练度 > 60*data then
                o_skill_武功等级 = 4
            end 
            if  o_skill_武功当前熟练度 > 100*data then
                o_skill_武功等级 = 5
            end 
            if  o_skill_武功当前熟练度 > 150*data then
                o_skill_武功等级 = 6
            end 
            if  o_skill_武功当前熟练度 > 210*data then
                o_skill_武功等级 = 7
            end 
            if  o_skill_武功当前熟练度 > 280*data then
                o_skill_武功等级 = 8
            end 
            if  o_skill_武功当前熟练度 > 360*data then
                o_skill_武功等级 = 9
            end 
            if  o_skill_武功当前熟练度 > 450*data then
                o_skill_武功等级 = 10
            end 
            self.属性.getChildByName('武功三').text = G.QueryName(o_role_人物.技能3).名称..tostring(o_skill_武功等级)..'级'

        else
            self.属性.getChildByName('武功三').text = ''
        end
    elseif  G.misc().book == 2 then
        local o_item = G.QueryName(0x100b0000 + G.misc().book_data)
        self.物品.getChildByName('图片').img = o_item.图标
        self.物品.getChildByName('名称').text =  '名称：[01] '..o_item.名称
        self.物品.getChildByName('持有').text = '持有：[01] '..G.call('get_item',G.misc().book_data + 1)  
        local str_字符串组 = {'武器','暗器','内衬','外衣','秘籍','食物','酒','茶','药物','杂物','毒物','食材','材料'}
        self.物品.getChildByName('类型').text = '类型：[01] '..str_字符串组[o_item.类别]
        if o_item.武功 and o_item.类别 == 5 then 
            self.物品.getChildByName('武功').text = '练出武功：[01] '..G.QueryName(o_item.武功).名称
        else
            self.物品.getChildByName('武功').text = '练出武功：[01] 无'
        end
        if o_item.类别 == 1 or o_item.类别 == 2   then 
            self.物品.getChildByName('系数').text = '增强伤害：[01] '..(o_item.系数 + 50)..'%'
        elseif o_item.类别 == 3 then
            self.物品.getChildByName('系数').text = '增强防御：[01] '..(o_item.系数)..'%'
        else
            self.物品.getChildByName('系数').text = ''      
        end
        local str_需求 = {'内力','拳掌','弹指','御剑','耍刀','舞棍','内功','施毒','医疗','暗器','读书','自宫'}
        local str_经脉 = {'阴跷脉','阴维脉','阳跷脉','阳维脉','带脉','冲脉','任脉','督脉','经外奇脉'}
        local str_功效 = {'加修为','加生命百分比','加内力百分比','加生命max','加内力max','加生命最大值','加内力最大值','解毒','解流血','解内伤'}
        local str_字符串 = ''
        if o_item.类别 == 5 then
            for i = 1,#str_需求 do
                if  o_item[str_需求[i]] and o_item[str_需求[i]] > 0 then
                    str_字符串 = str_字符串..' [07]'..str_需求[i]..' [01]'..o_item[str_需求[i]] 
                end     
            end
            for i = 1,#str_经脉 do
                if  o_item[str_经脉[i]] and o_item[str_经脉[i]] > 0 then
                    str_字符串 = str_字符串..' [07]'..str_经脉[i] 
                end 
            end
            if str_字符串 ~= '' then
                str_字符串 = '[0a]需求： '..str_字符串 
            end
        elseif  o_item.类别 == 6 or o_item.类别 == 9 then
            for i = 1,#str_功效 do
                if i < 8 and o_item[str_功效[i]] and o_item[str_功效[i]] > 0 then  
                    str_字符串 = str_字符串..' [07]'..str_功效[i]..' [01]'..o_item[str_功效[i]]
                elseif i >= 8 and o_item[str_功效[i]] and o_item[str_功效[i]] > 0 then  
                    str_字符串 = str_字符串..' [07]'..str_功效[i]
                end 
            end
            if str_字符串 ~= '' then
                str_字符串 = '[0a]功效： '..str_字符串 
            end
        else
            str_字符串  = '' 
        end
        if str_字符串 ~= '' then 
            self.物品.getChildByName('其他').text = str_字符串..'[br][07]说明：'..o_item.说明
        else
            self.物品.getChildByName('其他').text = '[0a]说明：'..o_item.说明
        end
    elseif  G.misc().book == 3 then
        local i_skill =  0x10050000 + G.misc().book_data
        local o_skill = G.QueryName(i_skill)
        G.Play(0x49020001+G.misc().book_data , 1,true,100)
        if o_skill.类别 < 6 or o_skill.招式 then
            local int_序列帧 = G.misc().book_data + 1 
            print('序列帧=',int_序列帧)
            self.武功.getChildByName('动作').frameActionID(int_序列帧)
        end
        self.武功.getChildByName('图片').img = o_skill.图像
        self.武功.getChildByName('名称').text = '名称：[01] '..o_skill.名称
        local str = {'指法','拳法','剑法','刀法','棍法','暗器','内功','轻功','绝招','阵法'}
        self.武功.getChildByName('类别').text = '类别：[01] '..str[o_skill.类别+1]
        if  i_skill == 0x100500bd or  i_skill == 0x10050097 then
            self.武功.getChildByName('类别').text = '类别：[01]被动技能'
        end
        str = {'自身','全体','单体','横排','纵列','群体'}
        self.武功.getChildByName('范围').text = '范围：[01]'..str[o_skill.范围 + 1]
        local needmp = 0
        if o_skill.类别 < 6 or o_skill.招式 then 
            needmp = math.floor(o_skill.消耗内力 * 25*0.65)
        end
        self.武功.getChildByName('气槽').text = '气槽：[01]'..o_skill.气槽
        self.武功.getChildByName('内力').text = '消耗内力：[01]'..needmp
        self.武功.getChildByName('伤害').text = '伤害：[01]'..o_skill.伤害倍数
        if o_skill.类别 < 6 then 
            self.武功.getChildByName('熟练度').text = '满级熟练度：[01]'..o_skill.满级熟练度
        else
            if o_skill.类别  >= 8   then
                self.武功.getChildByName('熟练度').text = '装备即可：[01]无需升级'
            else 
                self.武功.getChildByName('熟练度').text = '满级熟练度：[01]修为点提升等级'
            end
        end
        if o_skill.装备 ~= nil then 
            self.武功.getChildByName('配合装备').text = '配合装备：[01]'..G.QueryName(o_skill.装备).名称
        else
            self.武功.getChildByName('配合装备').text = '配合装备：[01]无'
        end
        if o_skill.内功 ~= nil then 
            self.武功.getChildByName('配合内功').text = '配合内功：[01]'..G.QueryName(o_skill.内功).名称
        else
            self.武功.getChildByName('配合内功').text = '配合内功：[01]无'
        end
        str = {'无','中毒','麻痹','晕眩','内伤','受伤','迟缓','中毒受伤','致盲','混乱'}
        if o_skill.类别 < 6 or o_skill.招式  then 
            self.武功.getChildByName('攻击效果').text = '攻击效果：[01]'..str[o_skill.附加效果+1]
        else
            self.武功.getChildByName('攻击效果').text = '攻击效果：[01]无'
        end
        str = {'加血(主动技能)','杀内','吸内(上限)','减伤','闪避','复活(主动技能)','强化','免疫中毒','回气','回血','回内','吸内','反伤','免疫封穴','免疫内伤','御风(主动技能)','纯阳','武穆'}
        if o_skill.内功轻功效果  and o_skill.内功轻功效果 > 0 and o_skill.内功轻功效果 <= #str then 
            if o_skill.效果等级 == nil then
                o_skill.效果等级 = 1 
            end
            self.武功.getChildByName('被动效果').text = '被动效果：[01]'..str[o_skill.内功轻功效果]..' [0a]效果等级： [01]'..o_skill.效果等级
        else
            self.武功.getChildByName('被动效果').text = '被动效果：[01]无'
        end
        str = {'生命加','内力加','拳掌加','御剑加','耍刀加','舞棍加','内功加','拆招加','搏击加','闪躲加','轻身加'}
        local str_字符串 = ''
        for  i = 1,#str do 
            if o_skill[str[i]] and o_skill[str[i]] > 0 then
                str_字符串 = str_字符串..'[0a] '..str[i]..' [01]'..o_skill[str[i]] 
            end
        end
        if str_字符串 ~= '' then 
            str_字符串 = '附加效果：'..str_字符串
        end
        if o_skill.类别 == 9 then
            local str_阵法效果 = {'每名存活队友降低敌人内功防御5%','每名存活队友增加慈悲效果10%','每名存活队友增加剑法伤害5%','每名存活队友增加内功回复效果1%','有存活队友情况下或者会左右互搏玉女素心剑法增加破防效果','每名存活队友增加10%控制几率','全队友存活时任何单体攻击变为攻击群体'}
            local str_名称 = {'真武七截阵','金刚伏魔阵','五岳剑阵','天罡北斗七星阵','玉女剑阵','五行八卦阵','打狗阵'}
            for i = 1,#str_名称 do
                if  o_skill.名称 == str_名称[i] then
                    str_字符串 = str_字符串..'[0a]阵法效果: [01]'..str_阵法效果[i] 
                end
            end
        end 
        if str_字符串 ~= '' then 
            self.武功.getChildByName('附加效果').text = str_字符串
        else
            self.武功.getChildByName('附加效果').text = '附加效果：[01]无'
        end  
    end
end
function t:click(tar)
    local str_菜单 = {'人物','物品','武功'}
    local item =G.DBTable('o_item')
    local skill =G.DBTable('o_skill')
    local role =G.DBTable('o_role')
    local int_role = #role
    if tar == self.面具.getChildByName('易容') then
        G.Play(0x49011003, 1,false,100) 
        G.call('notice1','已经易容成功')
        G.call('set_point',119,self.属性.getChildByName('头像').img)
    elseif tar == self.面具.getChildByName('撤销') then
        G.call('notice1','已经做回自己')
        G.call('set_point',119,G.misc().人物头像)
    end
    for i = 1,#str_菜单 do
        if tar == self.主菜单.getChildByName(str_菜单[i]) then
            G.Play(0x49011003, 1,false,100) 
            for j = 1,#str_菜单 do
                self.子菜单.getChildByName(str_菜单[j]).visible = false
            end
            G.misc().book_data_i = 1
            G.misc().book = i
            if i == 1 then 
                G.misc().book_data_m = math.floor((int_role-1)/33) + 1
            elseif i == 2 then 
                G.misc().book_data_m = math.floor((#item-1)/33) + 1
            elseif i == 3 then 
                G.misc().book_data_m = math.floor((#skill-1)/33) + 1
            end 
            self.主菜单.visible = false
            self.子菜单.visible = true
            self.子菜单.getChildByName(str_菜单[i]).visible = true
            self.obj.c_book:显示更新()
        end 
    end
    if tar == self.翻页.getChildByName('left') or tar == self.翻页.getChildByName('left1') then 
        G.Play(0x49011003, 1,false,100) 
        if G.misc().book_data_i > 1 then 
            G.misc().book_data_i = G.misc().book_data_i - 1
        else
            G.misc().book_data_i = G.misc().book_data_m
        end
        self.obj.c_book:显示更新()
    elseif tar == self.翻页.getChildByName('right') or tar == self.翻页.getChildByName('right1') then 
        G.Play(0x49011003, 1,false,100) 
        if G.misc().book_data_i < G.misc().book_data_m then 
            G.misc().book_data_i = G.misc().book_data_i + 1
        else
            G.misc().book_data_i = 1
        end
        self.obj.c_book:显示更新()
    end 
    if tar == self.obj.getChildByName('结束') or tar == self.obj.getChildByName('关闭菜单') then
        G.Play(0x49011003, 1,false,100) 
        G.removeUI('v_book') 
    elseif tar ==  self.子菜单.getChildByName('返回') then 
        G.Play(0x49011003, 1,false,100) 
        self.主菜单.visible = true
        self.子菜单.visible = false
        G.misc().book = 1
    elseif tar ==  self.显示.getChildByName('返回') then
        G.Play(0x49011003, 1,false,100) 
        self.子菜单.visible = true
        self.显示.visible = false
        G.misc().book_data_i = math.floor((G.misc().book_data-1)/33) + 1
        self.obj.c_book:显示更新()
    end
    for i = 1,33 do
        if tar == self[str_菜单[G.misc().book]..'_list'][i] then 
            self.子菜单.visible = false
            self.显示.visible = true
            for j = 1,#str_菜单 do
                self.显示.getChildByName(str_菜单[j]).visible = false
            end
            self.显示.getChildByName(str_菜单[G.misc().book]).visible = true
            G.misc().book_data = (G.misc().book_data_i - 1)*33 + i 
            self.obj.c_book:详细显示()
        end
    end
    local int_datamax = 1
    if  G.misc().book == 1 then 
        int_datamax = int_role
    elseif G.misc().book == 2 then
        int_datamax = #item 
    elseif G.misc().book == 3 then
        int_datamax = #skill 
    end
    if tar == self.显示翻页.getChildByName('left') or tar == self.显示翻页.getChildByName('left1') then 
        G.Play(0x49011003, 1,false,100) 
        if G.misc().book_data > 1 then 
            G.misc().book_data = G.misc().book_data - 1
        else
            G.misc().book_data = int_datamax
        end
        self.obj.c_book:详细显示()
    elseif tar == self.显示翻页.getChildByName('right') or tar == self.显示翻页.getChildByName('right1') then 
        G.Play(0x49011003, 1,false,100) 
        if G.misc().book_data < int_datamax then 
            G.misc().book_data = G.misc().book_data + 1
        else
            G.misc().book_data = 1
        end
        self.obj.c_book:详细显示()
    end 

end
return t