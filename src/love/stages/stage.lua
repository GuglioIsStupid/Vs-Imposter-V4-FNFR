return {
    enter = function()
        stageImages = {
            ["Stage Back"] = graphics.newImage(graphics.imagePath("week1/stage-back")), -- stage-back
		    ["Stage Front"] = graphics.newImage(graphics.imagePath("week1/stage-front")), -- stage-front
		    ["Curtains"] = graphics.newImage(graphics.imagePath("week1/curtains")) -- curtains
        }

        stageImages["Stage Front"].y = 400
        stageImages["Curtains"].y = -100

        enemy = love.filesystem.load("sprites/week1/daddy-dearest.lua")()

        girlfriend.x, girlfriend.y = 30, -90
        enemy.x, enemy.y = -380, -110
        boyfriend.x, boyfriend.y = 260, 100
    end,

    load = function()

    end,

    update = function(self, dt)
    end,

    draw = function()
        love.graphics.push()
			love.graphics.translate(camera.x * 0.9, camera.y * 0.9)
            love.graphics.translate(camera.ex * 0.9, camera.ey * 0.9)

			stageImages["Stage Back"]:draw()
			stageImages["Stage Front"]:draw()

			girlfriend:draw()
		love.graphics.pop()
		love.graphics.push()
			love.graphics.translate(camera.x, camera.y)
            love.graphics.translate(camera.ex, camera.ey)
			enemy:draw()
			boyfriend:draw()
            graphics.setColor(1,1,1)
            
		love.graphics.pop()
		love.graphics.push()
			love.graphics.translate(camera.x * 1.1, camera.y * 1.1)
            love.graphics.translate(camera.ex * 1.1, camera.ey * 1.1)

			stageImages["Curtains"]:draw()
		love.graphics.pop()
    end,

    leave = function()
        for i, v in pairs(stageImages) do
            v = nil
		end

        graphics.clearCache()
    end
}