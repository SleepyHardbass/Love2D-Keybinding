# Love2D-Keybinding
[LÖVE](http://love2d.org) 11.4 Keybinding: in progress

# Usage
```lua
local keybinding = require("keybinding"); keybinding:init()

keybinding:bind('x', "press", function()
    print("\nStart Shooting")
end)

keybinding:bind('x', "hold", function()
    print("Ra-Ta-Ta Ta-Ta")
end)

keybinding:bind('x', "release", function()
    print("Stop Shooting")
end)

function love.keypressed(key)
    keybinding:keypressed(key)
end

function love.keyreleased(key)
    keybinding:keyreleased(key)
end

function love.update(delta)
    keybinding:update(delta)
end

--[[
love.keypressed('x')
keybinding:update() --> Start Shooting
keybinding:update() --> Ra-Ta-Ta Ta-Ta
keybinding:update() --> Ra-Ta-Ta Ta-Ta
love.keyreleased('x')
keybinding:update() --> Stop Shooting
--]]
```
