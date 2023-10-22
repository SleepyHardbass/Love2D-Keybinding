return {
    __STATUS = "in progress",
    __LICENSE = "MIT License",
    __URL = "https://github.com/SleepyHardbass/Love2D-Keybinding",
    __VERSION = "11.4",
    __WARNMSG = "Keybinding version is (%s)\nIt may not be compatible with the running version (%s)\n\n",
    __EMPTY = function()end,
    __REMOVE = function(self, array, value, length)
        local position
        for index = 1, length do
            if array[index] == value then
                position = index; break
            end
        end
        if position then
            for index = position, length - 1 do
                array[index] = array[index + 1]
            end
            array[length] = self.__EMPTY
            return true
        end
    end,
    __SHIFT = function() --[[ binding shift left ... ]] end,
    __KEYS = {
        ['a'] = 0, -- the A key
        ['b'] = 0, -- the B key
        ['c'] = 0, -- the C key
        ['d'] = 0, -- the D key
        ['e'] = 0, -- the E key
        ['f'] = 0, -- the F key
        ['g'] = 0, -- the G key
        ['h'] = 0, -- the H key
        ['i'] = 0, -- the I key
        ['j'] = 0, -- the J key
        ['k'] = 0, -- the K key
        ['l'] = 0, -- the L key
        ['m'] = 0, -- the M key
        ['n'] = 0, -- the N key
        ['o'] = 0, -- the O key
        ['p'] = 0, -- the P key
        ['q'] = 0, -- the Q key
        ['r'] = 0, -- the R key
        ['s'] = 0, -- the S key
        ['t'] = 0, -- the T key
        ['u'] = 0, -- the U key
        ['v'] = 0, -- the V key
        ['w'] = 0, -- the W key
        ['x'] = 0, -- the X key
        ['y'] = 0, -- the Y key
        ['z'] = 0, -- the Z key
        ['0'] = 0, -- the zero key 
        ['1'] = 0, -- the one key
        ['2'] = 0, -- the two key
        ['3'] = 0, -- the three key
        ['4'] = 0, -- the four key
        ['5'] = 0, -- the five key
        ['6'] = 0, -- the six key
        ['7'] = 0, -- the seven key
        ['8'] = 0, -- the eight key
        ['9'] = 0, -- the nine key
        ["space"] = 0, -- Space key
        ['!'] = 0, -- Exclamation mark key
        ['"'] = 0, -- Double quote key
        ['#'] = 0, -- Hash key
        ['$'] = 0, -- Dollar key
        ['&'] = 0, -- Ampersand key
        ["'"] = 0, -- Single quote key
        ['('] = 0, -- Left parenthesis key
        [')'] = 0, -- Right parenthesis key
        ['*'] = 0, -- Asterisk key
        ['+'] = 0, -- Plus key
        [','] = 0, -- Comma key
        ['-'] = 0, -- Hyphen-minus key
        ['.'] = 0, -- Full stop key
        ['/'] = 0, -- Slash key
        [':'] = 0, -- Colon key
        [';'] = 0, -- Semicolon key
        ['<'] = 0, -- Less-than key
        ['='] = 0, -- Equal key
        ['>'] = 0, -- Greater-than key
        ['?'] = 0, -- Question mark key
        ['@'] = 0, -- At sign key
        ['['] = 0, -- Left square bracket key
        ["\\"] = 0, -- Backslash key: '\'
        [']'] = 0, -- Right square bracket key
        ['^'] = 0, -- Caret key
        ['_'] = 0, -- Underscore key
        ['`'] = 0, -- Grave accent key; Also known as the "Back tick" key
        
        ["kp0"] = 0, -- The numpad zero key
        ["kp1"] = 0, -- The numpad one key
        ["kp2"] = 0, -- The numpad two key
        ["kp3"] = 0, -- The numpad three key
        ["kp4"] = 0, -- The numpad four key
        ["kp5"] = 0, -- The numpad five key
        ["kp6"] = 0, -- The numpad six key
        ["kp7"] = 0, -- The numpad seven key
        ["kp8"] = 0, -- The numpad eight key
        ["kp9"] = 0, -- The numpad nine key
        ["kp."] = 0, -- The numpad decimal point key
        ["kp,"] = 0, -- The numpad comma key
        ["kp/"] = 0, -- The numpad division key
        ["kp*"] = 0, -- The numpad multiplication key
        ["kp-"] = 0, -- The numpad substraction key
        ["kp+"] = 0, -- The numpad addition key
        ["kp="] = 0, -- The numpad enter key
        ["kpenter"] = 0, -- The numpad enter key
        
        ["up"] = 0, -- Up arrow key
        ["down"] = 0, -- Down arrow key
        ["right"] = 0, -- Right arrow key
        ["left"] = 0, -- Left arrow key
        ["home"] = 0, -- Home key
        ["end"] = 0, -- End key
        ["pageup"] = 0, -- Page up key
        ["pagedown"] = 0, -- Page down key
        
        ["insert"] = 0, -- Insert key
        ["backspace"] = 0, -- Backspace key
        ["tab"] = 0, -- Tab key
        ["clear"] = 0, -- Clear key
        ["return"] = 0, -- Return key; Also known as the Enter key
        ["delete"] = 0, -- Delete key
        
        ["f1"] = 0, -- The 1st function key
        ["f2"] = 0, -- The 2nd function key
        ["f3"] = 0, -- The 3rd function key
        ["f4"] = 0, -- The 4th function key
        ["f5"] = 0, -- The 5th function key
        ["f6"] = 0, -- The 6th function key
        ["f7"] = 0, -- The 7th function key
        ["f8"] = 0, -- The 8th function key
        ["f9"] = 0, -- The 9th function key
        ["f10"] = 0, -- The 10th function key
        ["f11"] = 0, -- The 11th function key
        ["f12"] = 0, -- The 12th function key
        ["f13"] = 0, -- The 13th function key
        ["f14"] = 0, -- The 14th function key
        ["f15"] = 0, -- The 15th function key
        ["f16"] = 0, -- The 16th function key
        ["f17"] = 0, -- The 17th function key
        ["f18"] = 0, -- The 18th function key
        
        ["numlock"] = 0, -- Num-lock key
        ["capslock"] = 0, -- Caps-lock key
        ["scrolllock"] = 0, -- Scroll-lock key
        ["rshift"] = 0, -- Right shift key
        ["lshift"] = 0, -- Left shift key 
        ["rctrl"] = 0, -- Right control key
        ["lctrl"] = 0, -- Left control key
        ["ralt"] = 0, -- Right alt key
        ["lalt"] = 0, -- Left alt key
        ["rgui"] = 0, -- Right gui key
        ["lgui"] = 0, -- Left gui key
        ["mode"] = 0, -- Mode key
        
        ["www"] = 0, -- WWW key
        ["mail"] = 0, -- Mail key
        ["calculator"] = 0, -- Calculator key
        ["computer"] = 0, -- Computer key
        ["appsearch"] = 0, -- Application search key
        ["apphome"] = 0, -- Application home key
        ["appback"] = 0, -- Application back key
        ["appforward"] = 0, -- Application forward key
        ["apprefresh"] = 0, -- Application refresh key
        ["appbookmarks"] = 0, -- Application bookmarks key
        
        -- Sends a key release immediately on some platforms, even if held down. 
        ["pause"] = 0, -- Pause key
        ["escape"] = 0, -- Escape key
        ["help"] = 0, -- Help key
        -- Sends a key release immediately on Windows, even if held down.
        ["printscreen"] = 0, -- Printscreen key
        ["sysreq"] = 0, -- System request key
        ["menu"] = 0, -- Menu key
        ["application"] = 0, -- Application key; Windows contextual menu, compose key.
        ["power"] = 0, -- Power key
        ["currencyunit"] = 0, -- Currency unit key; e.g. the Euro (€) key.
        ["undo"] = 0 -- Undo key
    },
    __MODE = {press = 0, hold = 1, release = 2},
    
    separator = 0,
    bindlist = {}, stack = {[0] = 0}, queue = {[0] = 0},
    
    init = function(self)
        if love._version ~= self.__VERSION then
            io.write(string.format(self.__WARNMSG, self.__VERSION, love._version))
        end
        self:reinit()
    end,
    
    reinit = function(self)
        local index = 1
        for key in next, self.__KEYS do
            self.__KEYS[key] = index
            self.bindlist[index] = self.__EMPTY -- press
            self.bindlist[index + 1] = self.__EMPTY -- hold
            self.bindlist[index + 2] = self.__EMPTY -- release
            index = bit.bor(index + 3)
        end
    end,
    
    bind = function(self, key, mode, binding)
        local index = self.__KEYS[key] + self.__MODE[mode]
        self.bindlist[index] = binding
    end,
    
    unbind = function(self, key, mode)
        local index = self.__KEYS[key] + self.__MODE[mode]
        self.bindlist[index] = self.__EMPTY
    end,
    
    unbindall = function(self)
        self.queue[0], self.stack[0], self.separator = 0, 0, 0
        for index = 1, #self.bindlist do
            self.bindlist[index] = self.__EMPTY
        end
    end,
    
    keypressed = function(self, key)
        local keyindex = self.__KEYS[key]
        local index = bit.bor(self.queue[0] + 1)
        self.queue[0] = index
        self.queue[index] = self.bindlist[keyindex] -- press binding
        
        index = bit.bor(self.stack[0] + 1)
        self.stack[0] = index
        self.stack[index] = self.bindlist[keyindex + 1] -- hold binding
    end,
    
    keyreleased = function(self, key)
        local keyindex = self.__KEYS[key]
        local index = bit.bor(self.queue[0] + 1)
        self.queue[0] = index
        self.queue[index] = self.bindlist[keyindex + 2] -- release binding
        
        -- HER-NYA --
        if self:__REMOVE(self.queue, self.bindlist[keyindex + 1], self.separator) then
            self.separator = bit.bor(self.separator - 1)
        elseif self:__REMOVE(self.stack, self.bindlist[keyindex + 1], self.stack[0]) then
            self.stack[0] = bit.bor(self.stack[0] - 1)
        end
    end,
    
    update = function(self, delta)
        for index = 1, self.queue[0] do
            self.queue[index](delta)
        end
        
        local length, offset = self.stack[0], self.separator
        self.separator = self.separator + self.stack[0]
        self.stack[0], self.queue[0] = 0, self.separator
        
        for index = 1, length do
            self.queue[index + offset] = self.stack[index]
        end
    end
}
