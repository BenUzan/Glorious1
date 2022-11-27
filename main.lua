-- Author : Ben Uzan Muyumba

-- Ajouts des librairy et des fichiers(classs, ...)
push = require('src/libs/push/push')
Class = require('src/libs/hump/class')
require('src/classes/Knight')


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


-- table des pistes audios
local sounds = {
  ['music'] = love.audio.newSource('media/audio/magical-forest.ogg','static')
}

-- joue le son en boucle
sounds['music']:setLooping(true)
sounds['music']:play()

-- game object
local knight = Knight()

function love.load()
  -- Everything will be loaded here
  love.graphics.setDefaultFilter("nearest","nearest")
  push:setupScreen(GAME_WIDTH, GAME_HEIGHT,WINDOW_WIDTH, WINDOW_HEIGHT, {
    vsync = true,
    fullscreen = false,
    resizable = false
  })  
end


function love.draw()
  -- Everything will be drawn here
  push:start()
  love.graphics.draw(background, 0, 0)
  love.graphics.draw(background1, 0, 0)
  love.graphics.draw(background2, 0, 0)
  love.graphics.draw(background3, 0, 0)
  love.graphics.draw(background4, 0, 0)
  love.graphics.draw(background5, 0, 0)
  love.graphics.draw(background6, 0, 0)
  love.graphics.draw(background7, 0, 0)
  love.graphics.draw(ground, 0, 0)
  love.graphics.draw(ground1, 0, 0)
  knight:dessin()
  push:finish()
end


function love.keypressed(key)
  -- Recupere une touche entree au clavier
  if key == 'escape' then
    love.event.push("quit")
  end
end