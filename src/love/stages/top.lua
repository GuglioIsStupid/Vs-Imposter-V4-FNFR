return {
    enter = function()
        stageImages = {
            ["bg"] = graphics.newImage(graphics.imagePath("top/polus_custom_sky")),
            ["fg"] = graphics.newImage(graphics.imagePath("top/polus_custom_lab")),
            ["bg but more in the bg"] = graphics.newImage(graphics.imagePath("top/polusrocks")),
        }


        enemy = love.filesystem.load("sprites/characters/top10.lua")()
        boyfriend = love.filesystem.load("sprites/boyfriend.lua")()

        boyfriend.x, boyfriend.y = 412, 168
        enemy.x, enemy.y = -397, 0

       -- camera:addPoint("boyfriend", 76, 23, 0.9, 0.9)
       -- camera:addPoint("enemy", 182, 122, 0.7, 0.7)


    end,

    load = function()

    end,

    update = function(self, dt)

        


    end,

    draw = function()
        love.graphics.push()
            stageImages[]:draw()
            boyfriend:draw()
            enemy:draw()
		love.graphics.pop()
    end,

    leave = function()
        stageImages[1] = nil
        enemy = nil
        boyfriend = nil
    end
}