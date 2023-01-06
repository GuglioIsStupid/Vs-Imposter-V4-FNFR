return {
    enter = function()
        stageImages = {
            ["Stage Back"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("week1/stage-back"))), -- stage-back
		    ["Stage Front"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("week1/stage-front"))), -- stage-front
		    ["Curtains"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("week1/curtains"))) -- curtains
        }

        stageImages["Stage Front"].y = 400
        stageImages["Curtains"].y = -100

        enemy = Character.daddydearest(0,0)

        girlfriend.x, girlfriend.y = -200, -445
        enemy.x, enemy.y = -550, -500
        boyfriend.x, boyfriend.y = 260, -125
    end,

    load = function()

    end,

    update = function(self, dt)

    end,

    draw = function()
        love.graphics.push()
			love.graphics.translate(cam.x * 0.9, cam.y * 0.9)

			stageImages["Stage Back"]:draw()
			stageImages["Stage Front"]:draw()

			girlfriend:draw()
		love.graphics.pop()
		love.graphics.push()
			love.graphics.translate(cam.x, cam.y)

			enemy:draw()
			boyfriend:draw()
		love.graphics.pop()
		love.graphics.push()
			love.graphics.translate(cam.x * 1.1, cam.y * 1.1)

			stageImages["Curtains"]:draw()
		love.graphics.pop()
    end,

    leave = function()
        stageImages[1] = nil
        stageImages[2] = nil
        stageImages[3] = nil
    end
}