# Love2D-Keybinding
Love2D-Keybinding: in progress

# Usage
```lua
keybinding = require("keybinding"); keybinding:init()

keybinding:bind("x", "press", function()
    print("\nStart Shooting")
end)

keybinding:bind("x", "hold", function()
    print("Ra-Ta-Ta Ta-Ta")
end)

keybinding:bind("x", "release", function()
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

```
