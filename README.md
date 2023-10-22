# Love2D-Keybinding
[LÖVE](http://love2d.org) 11.4 Keybinding: in progress

# Idea
```lua
local result = false

-- 1, 2, 3, ... 1'000'000'000
for i=1, 10^9, 1 do
    result = i%2 == 0
end -- ~2.40's

-- 1, 3, 5, ... 1'999'999'999
for i=1, 10^9*2, 2 do
    result = i%2 == 0
end -- always false; ~0.47's;

-- 2, 4, 6, ... 2'000'000'000
for i=2, 10^9*2, 2 do
    result = i%2 == 0
end -- always true; ~0.47's
```

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
