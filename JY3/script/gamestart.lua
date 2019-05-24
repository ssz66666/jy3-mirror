require 'strict'
require 'require_a_n'
local G = require "gf"
local t = G.api
local GF = require('gfbase')
-- 主入口
t.init = function()
    G.call('初始化')
end
-- 游戏主入口,进入init函数
function G.GetTextOwner(id)
	if id == 0x1001 then
		return 'o_dialogue_system_actionlist'
	end
	if id == 0x1002 then
		return 'o_cheat_system_item'
	end
	if id == 0x1003 then
		return 'o_body'
	end
	if id == 0x1004 then
		return 'o_role'
	end
	if id == 0x1005 then
		return 'o_skill'
	end
	if id == 0x1006 then
		return 'o_citymap_system_map'
	end
	if id == 0x1007 then
		return 'o_citymap_system_city'
	end
	if id == 0x1008 then
		return 'o_Gut'
	end	
	if id == 0x1009 then
		return 'o_story'
	end		
	if id == 0x100a then
		return 'o_jm'
	end
	if id == 0x100b then
		return 'o_item'
	end
	if id == 0x100c then
		return 'o_hotkey'
	end
	if id == 0x100d then
		return 'o_love'
	end
	if id == 0x100e then
		return 'o_headevent'
	end
	if id == 0x100f then
		return 'o_misc'
	end	
	if id == 0x1010	then
		return 'o_checkhead'
	end
	if id == 0x1011	then
		return 'o_teammate'
	end
	if id == 0x1012	then
		return 'o_note'
	end
	if id == 0x1013	then
		return 'o_shop'
	end
	if id == 0x1014	then
		return 'o_CH'
	end
	if id == 0x1015	then
		return 'o_battle'
	end
	if id == 0x1016	then
		return 'o_files'
	end
	if id == 0x1017	then
		return 'o_achieve'
	end
	if id == 0x1018	then
		return 'o_equip'
	end
	if id == 0x1019	then
		return 'o_storehouse'
	end
	if id == 0x101a	then
		return 'o_notebook'
	end
	if id == 0x101b	then
		return 'o_newbody'
	end
	if id == 0x101c	then
		return 'o_book_story'
	end
	if id == 0x1f01	then
		return 'o_typedef'
	end
	if id == 0x1f02	then
		return 'o_image'
	end
	if id == 0x1f03	then
		return 'o_font'
	end
	if id == 0x1f04	then
		return 'o_event'
	end
	if id == 0x1f05	then
		return 'o_fontstyle'
	end
	if id == 0x1f09	then
		return 'o_animation'
	end
end
G.start_program('init')