require 'Util'

Component = {
    components = {}
}
Component.__index = Component

function Component:create(x, y, w, h)
    local obj = {x = x,y = y, w = w, h = h}
    setmetatable(obj, Component)
    table.insert(Component.components, obj)
    return obj
end


function Component:delete()
    removeValue(Component.components, self)
end

function Component:print()
    print(self)
end

function Component:roundrect(x, y, w, h, r)
    gfx.roundrect(self.x + x, self.y + y, w, h, r)
end

function Component:isMouseOver()
    return
        gfx.mouse_x < self.getRight() and
        gfx.mouse_x > self.x and
        gfx.mouse_y > self.y and
        gfx.mouse_y < self.getBottom()
end

function Component:getBottom()
    return self.y + self.h
end

function Component:getRight()
    return self.x + self.w
end

function Component:paint()
end

function Component:evaluate()
    self.paint()
end

