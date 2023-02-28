hs.window.animationDuration = 0
units = {
  right30       = { x = 0.70, y = 0.00, w = 0.30, h = 1.00 },
  right33       = { x = 0.666666666, y = 0.00, w = 0.333333333, h = 1.00 },
  right66       = { x = 0.333333333, y = 0.00, w = 0.666666666, h = 1.00 },
  left33       = { x = 0.0, y = 0.00, w = 0.333333333, h = 1.00 },
  left66       = { x = 0.0, y = 0.00, w = 0.666666666, h = 1.00 },
  right50       = { x = 0.50, y = 0.00, w = 0.50, h = 1.00 },
  left50       = { x = 0.00, y = 0.00, w = 0.50, h = 1.00 },
  right70       = { x = 0.30, y = 0.00, w = 0.70, h = 1.00 },
  center       = { x = 0.333333333, y = 0.00, w = 0.333333333, h = 1.00 },
  left70        = { x = 0.00, y = 0.00, w = 0.70, h = 1.00 },
  left30        = { x = 0.00, y = 0.00, w = 0.30, h = 1.00 },
  top50         = { x = 0.00, y = 0.00, w = 1.00, h = 0.50 },
  bot50         = { x = 0.00, y = 0.50, w = 1.00, h = 0.50 },
  botright50     = { x = 0.50, y = 0.50, w = 0.50, h = 0.50 },
  upright50    = { x = 0.50, y = 0.00, w = 0.50, h = 0.50 },
  upleft50      = { x = 0.00, y = 0.00, w = 0.50, h = 0.50 },
  botleft50     = { x = 0.00, y = 0.50, w = 0.50, h = 0.50 },
  maximum       = { x = 0.00, y = 0.00, w = 1.00, h = 1.00 }
}

mash = { 'option', 'ctrl', 'cmd' }
hs.hotkey.bind(mash, '/', function() hs.window.focusedWindow():move(units.right33,    nil, true) end)
hs.hotkey.bind(mash, ',', function() hs.window.focusedWindow():move(units.left33,     nil, true) end)
hs.hotkey.bind(mash, 'right', function() hs.window.focusedWindow():move(units.right50,nil, true) end)
hs.hotkey.bind(mash, 'left', function() hs.window.focusedWindow():move(units.left50,  nil, true) end)
hs.hotkey.bind(mash, '.', function() hs.window.focusedWindow():move(units.center,     nil, true) end)
hs.hotkey.bind(mash, 'h', function() hs.window.focusedWindow():move(units.left70,     nil, true) end)
hs.hotkey.bind(mash, 'up', function() hs.window.focusedWindow():move(units.top50,     nil, true) end)
hs.hotkey.bind(mash, 'down', function() hs.window.focusedWindow():move(units.bot50,   nil, true) end)
hs.hotkey.bind(mash, 'i', function() hs.window.focusedWindow():move(units.upright50,  nil, true) end)
hs.hotkey.bind(mash, 'u', function() hs.window.focusedWindow():move(units.upleft50,   nil, true) end)
hs.hotkey.bind(mash, 'j', function() hs.window.focusedWindow():move(units.botleft50,  nil, true) end)
hs.hotkey.bind(mash, "k", function() hs.window.focusedWindow():move(units.botright50, nil, true) end)
hs.hotkey.bind(mash, 'm', function() hs.window.focusedWindow():move(units.maximum,    nil, true) end)
hs.hotkey.bind(mash, "[", function() hs.window.focusedWindow():move(units.left66,     nil, true) end)
hs.hotkey.bind(mash, ']', function() hs.window.focusedWindow():move(units.right66,    nil, true) end)
hs.hotkey.bind(mash, 'n', function()
  local win = hs.window.focusedWindow()
  -- get the screen where the focused window is displayed, a.k.a. current screen
  local screen = win:screen()
  -- compute the unitRect of the focused window relative to the current screen
  -- and move the window to the next screen setting the same unitRect
  win:move(win:frame():toUnitRect(screen:frame()), screen:next(), true, 0)
end)
