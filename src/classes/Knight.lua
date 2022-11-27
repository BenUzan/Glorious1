Knight = Class{
    init = function(self)
        self.image = love.graphics.newImage('media/character/knight/idle.png')
        self.width = self.image:getWidth() * 2
        self.height = self.image:getHeight() * 2
        self.x = GAME_WIDTH / 2 - (self.width / 4)
        self.y = GAME_HEIGHT / 2 - (self.height / 4)
    end,
    dessin = function(self)
        love.graphics.draw(self.image, self.x, self.y)
    end 
}