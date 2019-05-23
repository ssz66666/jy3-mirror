
local GF = require "gfbase"
-- local c = require "gcore.c" 
local m_mapPrinted
function GF.tabPrint(t, indent, func, ...)
	if nil == indent then
		indent = 0;
	end
	if nil == func then
		func = print;
	end
	if 0 == indent then
		func( "", ... );
		m_mapPrinted = {}
	end
	local strPrefix = "";
	for i=1,indent do
		strPrefix = strPrefix .. " ";
	end
	if type(t) == "table" then
		for k,v in pairs(t) do
			if "table" ~= type(k) and "class" ~= tostring(k) then
				local strSuffix1 = "";
				local strSuffix2 = "";
				if "table" == type(v) then
					if nil == m_mapPrinted[v] and nil == string.find( tostring(k), "m_p", 1 ) then
						m_mapPrinted[v] = true;
						func( strPrefix .. tostring(k) .. " = ", ... );
						func( strPrefix .. "{", ... );
						GF.tabPrint( v, indent+4, func, ... );
						func( strPrefix .. "}" .. ",", ... );
					end
				else
					func( strPrefix .. tostring(k) .. " = " .. tostring(v) .. ",", ... );
				end
			end
		end
	else
		func( strPrefix .. tostring(t) .. ",", ... );
	end
	if 0 == indent then
		func( "", ... );
	end
end
local loglevel = {}
loglevel['INFO'] = 1
loglevel['DEBUG'] = 2
loglevel['ERROR'] = 5
local LogLevel = 1
function GF.errorLog( ... )
	local string_trace = debug.traceback()
	print('error:',...)
	print(string_trace)
	GF.Log('ERROR',...)
	GF.Log('ERROR',string_trace)
end
function GF.log( ... )
	-- print(...)
end
function GF.debugLog( ... )
	-- print(...)
	GF.Log('DEBUG',...)
end

local function loadserver()
	local t = require 'skynet'
	return type(t) == 'table'
end

local file 
local battleLogFile
local c = require 'gcore.c'
GF.MakeDirIfNotExist("log/")
local delete_index = 1
while true do 
	local path = GF.WritePath('log/game' .. delete_index .. '.csv')
	-- 删除本地档案信息文件
	if GF.IsFileExist(path) then
		GF.RemoveFile(path)
	else
		break
	end 
	delete_index = delete_index + 1
end 

local path = GF.WritePath('log/game.csv')
file = io.open(path,'w')
file:write("id,类型,日期,时间,距上一个log时间,信息\n")
local logtablepath = GF.WritePath('log/logtable.txt')
logtablefile = io.open(logtablepath,'w')
function GF.openBattleLog(int_time)
	if battleLogFile then 
		battleLogFile:close()
	end 
	local path = GF.WritePath('log/battle.csv')
	battleLogFile = io.open(path,'w')
end 
local logID = 0
local battlelogID = 0
function GF.logtable(t, dont_show_detail)
	if GF.GetOS() ~= 1 then 
		return 
	end
	if GF.misc().战斗信息 ~= nil then
		logtablefile:write('battlelogID:' .. battlelogID .. "\n")
	else
		logtablefile:write('logID' .. logID .. "\n")
	end 
	if dont_show_detail == nil then 
		dont_show_detail = true
	end
	GF.show_table(t, logtablefile, dont_show_detail)
end 
local oldlogclock = os.clock()

function GF.Log(string_type,...)
	if loglevel[string_type] < LogLevel then return end
	local s = {...}
	local str = string_type .. "," .. os.date("%Y/%m/%d %H:%M:%S", os.time()) .. "," .. os.clock() .. ',' ..( os.clock()-oldlogclock) .. ','

	oldlogclock = os.clock()
	--local str = string_type .. '@@'
	for i=1,#s do
		str = str ..'"' .. tostring(s[i]) .. ' '
	end
	str = str ..'"' 
	if GF.misc().战斗信息 ~= nil then
		if not battleLogFile then
			local path = GF.WritePath('log/battle.log')
			battleLogFile = io.open(path,'w')
		end
		str = battlelogID .. ',' .. str
		battlelogID = battlelogID + 1
		battleLogFile:write( str .. "\n" );
	else
		str = logID .. ',' .. str
		logID = logID + 1
		file:write( str .. "\n" );
		if logID % 50000 == 0 then
			file:close()
			local path = GF.WritePath('log/game' .. logID // 50000 .. '.csv')
			file = io.open(path,'w')
		end 
	end
end
function GF.logMsg(msg, name, path, dir)	
	if dir == nil then
		dir = path ..tostring(os.time()) .."/"
		c.MakeDir(dir)
	end
	local fn = dir .. name .. ".log"
	local file = io.open( fn, "wb" );
	if nil ~= file then
		local function Log( str )
			file:write( str .. "\r\n" );
		end
		GF.tabPrint( msg, 0, Log );
		file:close();
	end
end

local paths = {}
local sesid = 1
function GF.FileLog(path, string_type,...)
	if loadserver() == false and c.GetOS() == 1 then 
		local file = paths[path]
		if file == nil then
			file = io.open(path, 'w')
			paths[path] = file
		end
		local s = {...}
		-- local str = tostring(sesid) .. string_type .. "  " .. os.date("%Y/%m/%d %H:%M:%S", os.time()) .. "    "
		local str = tostring(sesid) .. string_type .. "  " .. "    "
		for i=1,#s do 
			str = str .. tostring(s[i]) .. " "
		end 
		file:write( str .. "\n" );
		file:flush()
		sesid = sesid + 1
	end
end 

function GF.show_table(t, ofs,boolean_hideinst)
	local print_r_cache={}
	local str
    local function sub_print_r(t,indent)
		if (print_r_cache[tostring(t)]) then
			str = indent.."*"..tostring(t)
			GF.common_print(str, ofs)
		else
            print_r_cache[tostring(t)]=true
			if (type(t)=="table") and ((boolean_hideinst and t['root'] == nil) or boolean_hideinst ~= true) then
				local tempt = {}
				for pos,val in pairs(t) do
					table.insert(tempt,{pos,val})
				end 
				local comp = function(a,b)
					return tostring(a[1]) < tostring(b[1])
				end 
				table.sort(tempt,comp)
				for k,v in ipairs(tempt) do
					local pos,val = v[1] or '',v[2] or ''
					if pos ~= '拥有者' then 
						if (type(val)=="table") then
							if (print_r_cache[tostring(val)]) then
								str = indent.."["..tostring(pos).."] => *"..tostring(val)
								GF.common_print(str, ofs)
							else
								str = indent.."["..tostring(pos).."] => "..tostring(val).." {"
								GF.common_print(str, ofs)
								sub_print_r(val,indent..string.rep(" ",string.len(tostring(pos))+8))
								str = indent..string.rep(" ",string.len(tostring(pos))+6).."}"
								GF.common_print(str, ofs)
							end
						elseif (type(val)=="string") then
							str = indent.."["..tostring(pos)..'] => "'..val..'"'
							GF.common_print(str, ofs)
						else
							str = indent.."["..tostring(pos).."] => "..tostring(val)
							GF.common_print(str, ofs)
						end
					end
                end
			else
				str = indent..tostring(t)
                GF.common_print(str, ofs)
            end
        end
    end
	if (type(t)=="table") then
		str = tostring(t).." {"
        GF.common_print(str, ofs)
		sub_print_r(t,"  ")
		str = "}"
        GF.common_print(str, ofs)
    else
        sub_print_r(t,"  ")
	end
	GF.common_print('', ofs)
end

function GF.common_print(str, ofs)
	if ofs then
		ofs:write(tostring(str).."\n")
	else
		print(str)
	end
end

function GF.table2String(table_a, ot)
	ot = ot or {}
	if ot[table_a] then return 'ot' end
	ot[table_a] = 1
	local text_s="{"
	for _,v in pairs(table_a) do
		local vs = v
		if type(v) == 'table' then 
			vs = GF.table2String(v, ot)
		end 
		if tonumber(_) then
			_ = '[' .. _ .. ']'
		end 
		if type(v) == 'string' then 
			vs ='\'' .. vs .. '\''
		elseif type(v) == 'boolean' then
			vs = tostring(vs)
		elseif type(v) == 'number' then
			vs = string.format("%s",vs)
		end 
		text_s = text_s .. _ .. "=" ..  vs .. ",\n"
	end 
	text_s = text_s .. "}\n\n"
	return text_s
end

-- 显示当前的函数调用堆栈
function GF.show_debug_info()
	local index = 0
	local debug_info
	index = index + 1
	debug_info = debug.getinfo(index)
	while debug_info do
		print("NO."..tostring(index))
		GF.show_table(debug_info, 0, true)
		index = index + 1
		debug_info = debug.getinfo(index)
	end
end

-- 获取 UTF-8 标志位代表的 编码长度
-- @params(char) ch: 标志位
-- @return(int)      编码长度
function GF.char_size(ch)
	-- UTF-8 是一种可变编码格式，长度从一个字节到六个字节，
	-- 根据UTF-8字符的第一个字节来识别一个UTF-8字符的长度
	local arr  = {0, 0xc0, 0xe0, 0xf0, 0xf8, 0xfc}
	local i = #arr
	while arr[i] do
		if ch >= arr[i] then
			break
		end
		i = i - 1
	end
	return i
end

-- 截取utf8 字符串
-- @params(string) str: 要截取的字符串
-- @params(int) start:  开始字符下标,从1开始
-- @params(int) len:    要截取的字符长度
-- @return(string)      返回分割后的字符串数组
function GF.utf8sub(str, start, len)
    local startIndex = 1
    while start > 1 do
        local char = string.byte(str, startIndex)
        startIndex = startIndex + GF.char_size(char)
        start = start - 1
    end

    local currentIndex = startIndex

    while len > 0 and currentIndex <= #str do
        local char = string.byte(str, currentIndex)
        currentIndex = currentIndex + GF.char_size(char)
        len = len - 1
    end
    return str:sub(startIndex, currentIndex - 1)
end

-- 获取字符串长度, 支持中文字符串
-- @params(string)  str: 需要获取长度的字符串
-- @return(int)  返回字符串长度, 字符串为空返回 0
function GF.getStrLen(str)
	local len  = string.len(str)
    local left = len
	local cnt  = 0

	if str == nil or str == "" then
		return 0
	end
	if string.len(str) == 1 then
		return 1
	end
	while left ~= 0 do
		-- 索引可以是负数，它指从字符串末尾反向解析。
		local tmp = string.byte(str, -left)
		local i = GF.char_size(tmp)
		left = left - i
        cnt = cnt + 1
    end
    return  cnt
end

function GF.Obj2ID(ev, cache)
	if cache[ev] then
		ev = cache[ev]
		return
	end
	if type(ev) == 'table' then
		setmetatable(ev, nil)
	end
	cache[ev] = ev
	for k,v in pairs(ev) do
		if type(v) == 'table' then
			if cache[v] then
				ev[k] = cache[v]
			else
				local name = v.name
				local root = v.root
				if type(name) == 'number' then
					cache[v] = { i_d = name, r_t = root}
					ev[k] = { i_d = name }
				elseif type(root) == 'number' then
					cache[v] = { i_d = root}
					ev[k] = { i_d = root }
				else
					GF.Obj2ID(v, cache)
				end
			end
		else
		end
	end
end

function GF.ID2Obj(ev)
	for k,v in pairs(ev) do
		if type(v) == 'table' then
			if v.i_d then
				ev[k] = GF.QueryName(tonumber(v.i_d))
				if not ev[k] then
					print('--== 无法解析:'..tostring(v.i_d))
				end
			else
				GF.ID2Obj(v)
			end
		end
	end
end

-- 字符串分割, 分割标志不会保留
-- @params str:待分割的字符串
-- @params split_char:分割的标志
-- @return 返回分割后的字符串数组
function GF.string_split(str, split_char)
    local sub_str_t = {}
    while true do
        local pos = string.find(str, split_char)
        if not pos then
            sub_str_t[#sub_str_t + 1] = str
            break
        end
        local sub_str = string.sub(str, 1, pos - 1)
        sub_str_t[#sub_str_t + 1] = sub_str
        local str_l = string.len(str)
        str = string.sub( str, pos + 1, str_l)
    end
    return sub_str_t
end

-- 连接两个 table
-- @params table_a: table A
-- @params table_b: table B
-- @return 返回连接好的 table
function GF.concat_table(t_a, t_b)
	local t = {}
	if t_a then
		for i = 1, #t_a do
			table.insert(t, t_a[i])
		end
	end
	if t_b then
		for i = 1, #t_b do
			table.insert(t, t_b[i])
		end
	end
	return t
end