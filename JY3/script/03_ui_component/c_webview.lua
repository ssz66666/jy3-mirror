--[[3012

]]

local G = require "gf"
local t = G.com()
local WebView = require "webview.c"

t.prop =
{
    {name = 'url', type = 'string', ctrl = 'string'},
}

function t:init()
    self.BG = self.obj.getChildByName('BG')
    self.close = self.obj.getChildByName('close')
end

function t:start()
    self.webIndex = WebView.addWebView()
    self.lastUrl = nil
end

function t:update()
    if self.webIndex then
        if self.lastUrl ~= self.url then
            WebView.displayHTML(self.webIndex, self.url)
            self.lastUrl = self.url
        end

        local x1, y1, x2, y2

        if self.obj.parent then
            x1, y1 = self.obj.parent.localToGlobal(self.obj.width, self.obj.height)
            x2, y2 = self.obj.parent.localToGlobal(self.obj.width, self.obj.heigh)
        else
            x1, y1 = self.obj.localToGlobal(self.obj.width, self.obj.heigh)
            x2, y2 = self.obj.localToGlobal(self.obj.width, self.obj.heigh)
        end
        if G.GetOS() == 1 then
            WebView.setWebViewPos(self.webIndex, self.obj.width*0.3, self.obj.height*0.10, self.obj.width *0.8, self.obj.height*1.4, self.obj.height)
        else
           WebView.setWebViewPos(self.webIndex, self.obj.width*0.05, self.obj.height*0.10, self.obj.width *0.95, self.obj.height*1.4, self.obj.height)
        end
        WebView.showWebView(self.webIndex, self.obj.visible)
    end
    self.BG.width = self.obj.width*0.5
    self.BG.height = self.obj.height*0.5
end

function t:close()
    if self.webIndex then
        WebView.removeWebView(self.webIndex)
    end 
end
function t:click(tar)
   if tar == self.close then
        G.removeUI('v_notice')
       -- G.getUI('v_main').getChildByName('buttons').c_mainbuttons:enable_others(G.getUI('v_main').getChildByName('buttons').c_mainbuttons.web)
       -- G.misc().是否在菜单界面 = false
   end
end
return t