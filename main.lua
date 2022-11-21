-- Ajouts de la librairy push pour un resolution old-school
push = require('src/lib/push/push')

GAME_WIDTH = 928 
GAME_HEIGHT = 793

WINDOW_WIDTH = 1080
WINDOW_HEIGHT = 720 

-- background images
local background = love.graphics.newImage('media/img/background/Layer_0011_0.png')
local background1 = love.graphics.newImage('media/img/background/Layer_0010_1.png')
local background2 = love.graphics.newImage('media/img/background/Layer_0009_2.png')
local background3 = love.graphics.newImage('media/img/background/Layer_0008_3.png')
local background4 = love.graphics.newImage('media/img/background/Layer_0006_4.png')
local background5 = love.graphics.newImage('media/img/background/Layer_0005_5.png')
local background6 = love.graphics.newImage('media/img/background/Layer_0003_6.png')
local background7 = love.graphics.newImage('media/img/background/Layer_0002_7.png')

-- ground images
local ground = love.graphics.newImage('media/img/ground/Layer_0001_8.png')
local ground1 = love.graphics.newImage('media/img/ground/Layer_0000_9.png')

local backgroundScroll = 0
local groundScroll = 0

local BACKGROUND_SCROLL_SPEED = 30
local GROUND_SCROLL_SPEED = 60

local BACKGROUND_LOOPING_POINT = 50

function love.load()
  love.graphics.setDefaultFilter("nearest","nearest")
  push:setupScreen(GAME_WIDTH, GAME_HEIGHT,WINDOW_WIDTH, WINDOW_HEIGHT, {
    vsync = true,
    fullscreen = false,
    resizable = false
  })  
end


function love.update(dt)
  backgroundScroll = (backgroundScroll + BACKGROUND_SCROLL_SPEED * dt) % BACKGROUND_LOOPING_POINT
  groundScroll = (groundScroll + GROUND_SCROLL_SPEED * dt) % GAME_WIDTH
end


function love.draw()
  push:start()
  love.graphics.draw(background, -backgroundScroll, 0)
  love.graphics.draw(background1, -backgroundScroll, 0)
  love.graphics.draw(background2, -backgroundScroll, 0)
  love.graphics.draw(background3, -backgroundScroll, 0)
  love.graphics.draw(background4, -backgroundScroll, 0)
  love.graphics.draw(background5, -backgroundScroll, 0)
  love.graphics.draw(background6, -backgroundScroll, 0)
  love.graphics.draw(background7, -backgroundScroll, 0)
  love.graphics.draw(ground, -groundScroll, 0)
  love.graphics.draw(ground1, -groundScroll, 0)
  push:finish()
end


function love.keypressed(key)
  if key == 'escape' then
    love.event.push("quit")
  end
end