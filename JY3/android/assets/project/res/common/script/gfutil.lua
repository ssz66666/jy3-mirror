
local GF = require "gfbase"
-- 初始随机种子
GF.init_random_seed = nil

function GF.split(str, sep)
    local fields = {}
    local pattern = string.format('([^%s]+)', sep)
    string.gsub(str, pattern, function(c)
        table.insert(fields, c)
    end)
    return fields
end

function GF.clamp(value,min,max)
	return math.max(math.min(value,max),min)
end 

function GF.sum(array)
	if array == nil or type(array) ~= 'table' then 
		return 0
	end 
	local result = 0
	for _,v in pairs(array) do
		result = result + v
	end 
	return result
end 

function GF.foreach(array,func)
	if array then
		for _,data in pairs(array) do 
			func(data)
		end 
	end 
end 

function GF.any(array,func)
	if array then
		for _,data in pairs(array) do 
			local ans = func(data)
			if ans then 
				return ans
			end 
		end 
	end 
	return nil
end

function GF.Random(min, max)
	if max == nil then
		if min == nil then
			return -1
		else
			max = min
			min = 1
		end
	end
	if not (min and max) then
		return -1
	end
	min = math.floor(min)
	max = math.floor(max)
	if min > max then
		min = min + max
		max = min - max
		min = min - max
	end
	if GF.isP then
		local random_state = GF.get_misc_random_state()
		if random_state then
			GF.set_sys_random_state(random_state)
		end
		local random = GF.random(min, max)
		random_state = GF.get_sys_random_state()
		GF.set_misc_random_state(random_state)
		-- GF.call('test_log', '--== min: '..tostring(min)..'  max: '..tostring(max)..'  random: '..tostring(random))
		return random
	else
		return GF.random(min, max)
	end
end

function GF.get_obj_type(obj_id)
	local type_id
	type_id = (obj_id&0xF0000000)>>28
	if type_id == 0x2 then
		return "mcf"
	elseif type_id == 0x3 then
		return "swf"
	elseif type_id == 0x5 then
		return "png"
	elseif type_id == 0xd then
		return "lua"
	else
		return "undefined"
	end

end

function GF.clean_num(int_s,int_f)
	if int_s == nil then return end 
	if math.ceil(int_s-0.00000001) < int_s then 
        return math.floor(int_s)
    end
    if math.floor(int_s+0.00000001) > int_s then 
        return math.ceil(int_s)
	end
	if math.floor(int_s)==math.ceil(int_s) then 
        return math.ceil(int_s)
	end
	if int_f then 
		local ret
		if  int_f == 1 then 
			ret =  string.format('%.1f',int_s)
		elseif int_f == 2  then 
			ret = string.format('%.2f',int_s)
		elseif int_f == 3  then 
			ret =  string.format('%.3f',int_s)
		end
		if ret then 
			return GF.clean_num(tonumber(ret))
		end
	end
    return int_s
end

function GF.format_dialogue()
end

function GF.format_case_text()
end

function GF.save_case_function_info()
end

function GF.save_dialogue_function_info()
end

function GF.misc()
	return GF.QueryIndex("o_misc",1)
end
-- function GF.IsInstance(obj)
-- 	if obj.root == nil or obj.root == obj.name then 
-- 		return false
-- 	end 
-- 	return true 
-- end

-- function GF.reset(t,k,v)
-- 	if rawget(t,k) == v then
-- 		return
-- 	end
-- 	rawset(t,k,v)
-- 	t:reset()
-- end


-- function GF.unprop(str)
-- 	if str == nil then return end
-- 	return string.sub(str,0,-2),tonumber(string.sub(str,-1))
-- end

function GF.get_sys_random_state()
	local random_state
	random_state = {}
	random_state[1], random_state[2], random_state[3], random_state[4] = GF.rawget_randomseed()
	return random_state
end

function GF.set_sys_random_state(random_state)
	if type(random_state) == 'table' and #random_state == 4 then
		GF.rawset_randomseed(random_state[1], random_state[2], random_state[3], random_state[4])
	end
end

function GF.get_misc_random_state()
	return GF.misc().随机状态
end

function GF.set_misc_random_state(random_state)
	GF.misc().随机状态 = random_state
end

-- 设置客户端层连接的服务器地址
function GF.set_serverid(string_serverID)
	GF.服务器地址 = string_serverID
end

-- 判断当前是否处于联机状态
function GF.get_isconnect()
	return GF.服务器地址 ~= nil
end

-- 判断当前位置,0:城镇中,1:剧本中
function GF.get_clientstate()
	return GF.misc().clientstate
end

-- 设置当前位置,0:城镇中,1:剧本中
function GF.set_clientstate(int_state)
	GF.misc().clientstate = int_state
end


-- 初始化随机种子
function GF.get_new_random_seed()
	local random_seed = tostring(os.time()):reverse():sub(1, 6)
	random_seed = tonumber(random_seed)
	return random_seed
end

-- 设置随机种子
function GF.set_random_seed(int_randomseed)
	if not int_randomseed then
		if GF.init_random_seed ~= nil then
			int_randomseed = GF.init_random_seed
		else
			int_randomseed = GF.get_new_random_seed()
			GF.init_random_seed = int_randomseed
		end
	end
	GF.randomseed(int_randomseed)
end

-- 设置客户端层连接的服务器地址
function GF.set_autologin_info(autologin_info)
	GF.misc().autologin_info = autologin_info
end

-- 获取服务器地址
function GF.get_autologin_info()
	return GF.misc().autologin_info
end

function GF.set_uitopmost(node)
	if not node then return end
    --获取界面名称
    local string_界面名称 = node.name
    --界面优先级对应数据表 o_ui_topmost
    local get_table  = GF.DBTable('o_ui_topmost')
    if get_table ~= nil then
        --遍历所得优先级表
        for int_i = 1, #get_table do
            if get_table[int_i] ~= nil and get_table[int_i].界面名称 == string_界面名称 then 
                local int_优先级 = get_table[int_i].优先级
                --如果优先级不为0, 设置传入节点的优先级
                if int_优先级 ~= 0 then
                    node.topmost = int_优先级 
                end
            end
        end
    end
end