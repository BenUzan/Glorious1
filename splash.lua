-- The library for the LOVE rain splash screen
local o_ten_one = require "src/lib/o-ten-one"


function love.load()
  -- Everything will be loaded here
  splashe = o_ten_one({fill="rain", delay_after=1})
  splashe.onDone = function ()
    print "DONE"
  end
end

function love.update(dt)
  -- Everything will be updated here
  splashe:update(dt)
  if love.keyboard.isDown('space') then
    splashe:skip()
  end
end

function love.draw()
  -- Everything will be drawn here
  splashe:draw()
end

function love.keypressed(key)
  -- Recupere une touche entree au clavier
  if key == "escape" then
    love.event.push("quit")
  end
end