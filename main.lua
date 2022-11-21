-- background image
local background = love.graphics.newImage('media/img/hills-layer-01.png')
-- ground image
local ground = love.graphics.newImage('media/img/hills-layer-05.png')


function love.draw()
  love.graphics.draw(background, 0, 0)
  love.graphics.draw(ground, 0, 0)
  
end