return {
    enter = function()
        stageImages = {
            --graphics.newImage(love.graphics.newImage(graphics.imagePath("week1/stage-back"))),
        }


        enemy = love.filesystem.load("sprites/characters/crewmate.lua")()

        girlfriend.x, girlfriend.y = -200, -445
        enemy.x, enemy.y = -550, -500
        boyfriend.x, boyfriend.y = 260, -125
    end,

    load = function()



        if song == 2 then
            enemy = love.filesystem.load("sprites/characters/impostor3.lua")()
        end

    end,

    update = function(self, dt)

    end,

    draw = function()
        love.graphics.push()
			love.graphics.translate(cam.x * 0.9, cam.y * 0.9)

			girlfriend:draw()
		love.graphics.pop()
		love.graphics.push()
			love.graphics.translate(cam.x, cam.y)

			enemy:draw()
			boyfriend:draw()
		love.graphics.pop()
		love.graphics.push()
			love.graphics.translate(cam.x * 1.1, cam.y * 1.1)

		love.graphics.pop()
        if cutscene:isPlaying() then
            love.graphics.draw(cutscene, -720, -430, 0, 0.8, 0.8)
        end
    end,

    leave = function()
        stageImages[1] = nil
        stageImages[2] = nil
        stageImages[3] = nil
    end
}