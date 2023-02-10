return {
    enter = function()
        love.graphics.setDefaultFilter("nearest")
        stageImages = {
            love.filesystem.load("sprites/nuzzus/nuzzus.lua")()
        }
        stageImages[1]:animate("anim", true)


        enemy = love.filesystem.load("sprites/characters/nuzzus.lua")()
        boyfriend = love.filesystem.load("sprites/boyfriend.lua")()

        camera.sizeX, camera.sizeY = 5, 5
        camera.scaleX, camera.scaleY = 5, 5


        


    end,

    load = function()
        camera:addPoint("boyfriend", 0, 0)
        camera:addPoint("enemy", 0, 0)
        camera:moveToPoint(0, "enemy")


    end,

    update = function(self, dt)

        stageImages[1]:update(dt)
    end,

    draw = function()
        love.graphics.push()
            love.graphics.translate(camera.x, camera.y)
            love.graphics.translate(camera.ex, camera.ey)
            stageImages[1]:draw()
			enemy:draw()
		love.graphics.pop()
    end,

    leave = function()
        stageImages[1] = nil
        enemy = nil
        boyfriend = nil
        love.graphics.setDefaultFilter("linear")
    end
}