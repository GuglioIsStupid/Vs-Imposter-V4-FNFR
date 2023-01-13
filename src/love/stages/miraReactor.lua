return {
    enter = function()
        stageImages = {

        }



        enemy = love.filesystem.load("sprites/characters/impostorr.lua")()
        boyfriend = love.filesystem.load("sprites/characters/bfr.lua")()
        girlfriend = love.filesystem.load("sprites/characters/gf_reactor.lua")()

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
    end,

    leave = function()
        stageImages[1] = nil
        stageImages[2] = nil
        stageImages[3] = nil
    end
}