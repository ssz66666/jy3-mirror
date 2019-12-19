--[[303b

]]

local G = require "gf"
local t = G.com()
function t:init()
    self.card = {}
    for i = 1, 5 do
        self.card[i] = self.obj.getChildAt(i - 1)
    end
    self.cardX = {-380, -395, -400, -395, -380}
    self.cardY = {130, 65, 0, -65, -130}
    self.cardR = {16, 8, 0, -8, -16}
    self:reSetPosition()
    self.cardID = 0

    self.c1 = self.obj.getChildByName('c1')
end
function t:reSetPosition(dur)
    if dur ~= nil and dur > 0 then
        for i = 1, 5 do
            G.Tween('x', dur, self.card[i], self.cardX[i])
            G.Tween('y', dur, self.card[i], self.cardY[i])
            G.Tween('rotation', dur, self.card[i], self.cardR[i])
        end
    else
        for i = 1, 5 do
            self.card[i].x = self.cardX[i]
            self.card[i].y = self.cardY[i]
            self.card[i].rotation = self.cardR[i]
        end
    end
end
function t:highlighCard(cardID)
    if cardID == self.curCardID then
        return
    end
    if self.curCardID > 0 then
        local i = self.curCardID
        local dur = 250
        -- G.Tween('x', dur, self.card[i], self.cardX[i])
        self.card[i].x = self.cardX[i]
        -- G.Tween('y', dur, self.card[i], self.cardY[i])
        -- G.Tween('rotation', dur, self.card[i], self.cardR[i])
    end
    self.curCardID = cardID
    do
        local i = self.curCardID
        local dur = 250
        G.Tween('x', dur, self.card[i], self.cardX[i] * 1.2)
        -- G.Tween('y', dur, self.card[i], self.cardY[i] * 1.2)
        -- G.Tween('rotation', dur, self.card[i], self.cardR[i])
    end
end
function t:zoomOut(i)
    local dur = 100
    if i > 5 then return end
    G.Tween('x', dur, self.card[i], self.cardX[i] * 1.05)
    G.Tween('y', dur, self.card[i], self.cardY[i] * 1.05)
    -- G.Tween('rotation', dur, self.card[i], self.cardR[i])
    G.Tween('scaleX', dur, self.card[i], 1.1)
    G.Tween('scaleY', dur, self.card[i], 1.1)
end
function t:zoomIn(i)
    local dur = 200
    if i > 5 then return end
    G.Tween('x', dur, self.card[i], self.cardX[i])
    -- self.card[i].x = self.cardX[i]
    G.Tween('y', dur, self.card[i], self.cardY[i])
    -- G.Tween('rotation', dur, self.card[i], self.cardR[i])
    G.Tween('scaleX', dur, self.card[i], 1)
    G.Tween('scaleY', dur, self.card[i], 1)
end
function t:rollOver(tar)
    if tar.parent == self.obj then
        local i = tar.getIndex() + 1
        if i == self.cardID then
            return
        end
        self:zoomOut(i)
    end
end
function t:rollOut(tar)
    if tar.parent == self.obj then
        local i = tar.getIndex() + 1
        if i == self.cardID then
            return
        end
        self:zoomIn(i)
    end
end
function t:click(tar)
    if tar == self.c1 then
        if self.cardID > 0 then
            local i = self.cardID
            local dur = 200
            print('place card', self.card[i].x, self.card[i].y, self.c1.x, self.c1.y)
            G.Tween('x', dur, self.card[i], self.c1.x)
            -- self.card[i].x = self.cardX[i]
            G.Tween('y', dur, self.card[i], self.c1.y)
            G.Tween('rotation', dur, self.card[i], 0)
            G.Tween('scaleX', dur, self.card[i], 1)
            G.Tween('scaleY', dur, self.card[i], 1)
            return
        end
    end
    if tar.parent == self.obj then
        local i = tar.getIndex() + 1
        print('click', self.cardID, i)
        if self.cardID ~= i then
            self:zoomIn(self.cardID)
            self.cardID = i
        else
            self:zoomIn(i)
            self.cardID = 0
        end
    end
end
return t