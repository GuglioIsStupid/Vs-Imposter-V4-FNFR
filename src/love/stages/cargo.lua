return {
    enter = function()
        stageImages = {
            graphics.newImage(love.graphics.newImage(graphics.imagePath("week1/stage-back"))), -- stage-back
		    graphics.newImage(love.graphics.newImage(graphics.imagePath("week1/stage-front"))), -- stage-front
		    graphics.newImage(love.graphics.newImage(graphics.imagePath("week1/curtains"))) -- curtains
        }

        stageImages[2].y = 0
        stageImages[3].y = 0

        enemy = love.filesystem.load("sprites/week1/daddy-dearest.lua")()

        girlfriend.x, girlfriend.y = 0, 0
        enemy.x, enemy.y = 0, 0
        boyfriend.x, boyfriend.y = 0, 0
    end,

    load = function()

    end,

    update = function(self, dt)

    end,

    draw = function()
        love.graphics.push()
			love.graphics.translate(cam.x * 0.9, cam.y * 0.9)

			stageImages[1]:draw()
			stageImages[2]:draw()

			girlfriend:draw()
		love.graphics.pop()
		love.graphics.push()
			love.graphics.translate(cam.x, cam.y)

			enemy:draw()
			boyfriend:draw()
		love.graphics.pop()
		love.graphics.push()
			love.graphics.translate(cam.x * 1.1, cam.y * 1.1)

			stageImages[3]:draw()
		love.graphics.pop()
    end,

    leave = function()
        stageImages[1] = nil
        stageImages[2] = nil
        stageImages[3] = nil
    end
}