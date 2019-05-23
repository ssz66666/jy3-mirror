
local GF = require "gfbase"
GF.esc = '__'

local function array_move(arr, si, di)
	local esc = GF.esc
	local key = esc..di
	local src = arr[esc..si]
	if not src then
		src = arr[si]
		key = di
	end

	arr[esc..si] = nil
	arr[si] = nil
	arr[esc..di] = nil
	arr[di] = nil
	arr[key] = src
end

function GF.Clear(arr)
	while table.remove(arr) do
	end
end

function GF.InsertData(arr, pos, data, esc)
	if data == nil then return end
	if pos == nil then
		pos = #arr + 1
	end
	for k =  #arr ,pos, -1 do
		array_move(arr, k, k + 1)
	end
	local key
	if esc then
		key = GF.esc..pos
	else
		key = pos
	end
	arr[key] = data
	if arr.n then
		arr.n = arr.n + 1
	end
end

function GF.RemoveData(arr, data)
	for k = 1, #arr do
		if arr[k] == data or (arr[k].name and data.name and arr[k].name == data.name) then
			GF.RemoveIndex(arr, k)
			return true
		end
	end
end


function GF.RemoveIndex(arr, index)
	local sz  = #arr
	for k = index + 1,sz do
		array_move(arr, k, k - 1)
	end
	arr[GF.esc..sz] = nil
	arr[sz] = nil
	if arr.n then
		arr.n = arr.n - 1
	end
end

function GF.RemoveKey(arr, key)
	arr[key] = nil
	arr['__' .. key] = nil
end

function GF.ContainData(arr,data)
	for k = 1, #arr do
		if type(data) == type(arr[k]) then
			if type(data) == 'table' and data.name and data.root then 
				if arr[k].name == data.name then 
					return true
				end 
			elseif arr[k] == data then
				return true
			end
		end 
	end
end

function GF.Insert(t, k, v)
	if k == nil then
		table.insert(t,v)
		return
	end
	table.insert(t,k,v)
end

GF.Remove = GF.RemoveIndex


function GF.getTableSize(tb)
	local num = 0
	for k,v in pairs(tb) do 
		num = num + 1
	end 
	return num
end 

function GF.ConnectArray(arraya,arrayb)
	local result = {}
	if arraya then 
		for index=1,#arraya do 
			result[#result+1] = arraya[index]
		end 
	end
	if arrayb then 
		for index=1,#arrayb do 
			result[#result+1] = arrayb[index]
		end 
	end
	return result
end 