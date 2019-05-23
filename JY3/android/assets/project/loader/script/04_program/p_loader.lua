--[[4001

]]
local G = require "gf"
local lfs = require "lfs.c"
local zip = require "zip.c"
local L = {}
local t = G.api
local string_存放目录 = string.gsub(G.WritePath('JY3'), "\\", "/")
local git_dir = "/git"
local ok_dir = require "ok"

t['loader_init'] = function()
    G.start_program('loader_check_local')
end

t['loader_check_local'] = function()
    G.call('update_process_ui', nil, nil, '正在检查本地文件')
    if not G.IsDirExist(string_存放目录..ok_dir) then
	G.call('loader_create')            
    end
    G.call('loader_update')
end

t['loader_create'] = function()
	G.MakeDir(string_存放目录)
	local path = G.WritePath('z')
	local buf = G.LoadFile(0x26000001)
	G.WriteFile(path, buf)
	local fz = zip.unzip(path)
	local list = fz:list()
	for k,v in ipairs(list) do
		local cur_path = string_存放目录.. '/'.. v
		if string.sub(v,-1) == '/' then
			G.MakeDir(cur_path)
		end
		local buf = fz:read(v)
		G.WriteFile(cur_path, buf)
	end
	fz:close()
	G.MakeDir(string_存放目录..ok_dir)
    -- G.call('update_process_ui', nil, nil, '正在清理下载目录')
    -- G.RemoveFolder(string_存放目录, 'keepRoot')
    --G.call('update_process_ui', nil, nil, '正在下载资源')
    --G.add_cmd("", t.git_clone_cb, "clone", string_版本库地址, string_存放目录, nil, nil)
end

t['loader_update'] = function()
	G.Restart('game', string_存放目录)
    --G.call('update_process_ui', nil, nil, '正在检查更新')
    --G.add_cmd(string_存放目录..git_dir, t.git_fetch_cb, "fetch", "origin", "master", nil, nil)
    -- G.add_cmd(string_存放目录..git_dir, t.git_merge_cb, "merge", "origin/master", nil, nil, nil)
end

function t.update_process_ui(percent, curr_size, tips)
end