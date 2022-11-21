-- Ajouts de la librairy push pour un resolution old-school
push = require('src/lib/push/push')

-- background image
local background = love.graphics.newImage('media/img/background/hills-layer-01.png')
-- ground image
local ground = love.graphics.newImage('media/img/ground/hills-layer-05.png')


function love.draw()
  love.graphics.draw(background, 0, 0)
  love.graphics.draw(ground, 0, 0)
  
end