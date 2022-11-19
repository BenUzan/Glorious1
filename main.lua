-- The library for the LOVE rain splash screen
local o_ten_one = require "src/lib/o-ten-one"


function love.load()
  -- Everything will be loaded here
  
end

function love.update(dt)
  -- Everything will be updated here
  
end

function love.draw()
  -- Everything will be drawn here

end

function love.keypressed(key)
  -- Recupere une touche entree au clavier
  if key == "escape" then
    splashe:skip()
    --love.event.push("quit")
  end
end