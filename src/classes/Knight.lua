Knight = Class{
    init = function(self)
        self.image_idle = love.graphics.newImage('media/character/knight/idle.png')
        self.image_walk = love.graphics.newImage('media/character/knight/walk.png')
        self.image_jump = love.graphics.newImage('media/character/knight/jump.png')
        self.width = self.image_idle:getWidth()
        self.height = self.image_idle:getHeight()
        self.x = GAME_WIDTH / 2 - (self.width / 2)
        self.y = GAME_HEIGHT - 125 - (self.height / 2)
    end,
    dessin = function(self, image)
        love.graphics.draw(image, self.x, self.y)
    end
}