return {
    enter = function()
        stageImages = {
            graphics.newImage(graphics.imagePath("greenWeek/floornew")),
            love.filesystem.load("sprites/greenWeek/crewback.lua")(),
            graphics.newImage(graphics.imagePath("greenWeek/backbars")),
            love.filesystem.load("sprites/greenWeek/corereactor.lua")(),
            love.filesystem.load("sprites/greenWeek/crewfront.lua")(),
        }

        stageImages[2].x, stageImages[2].y = -51, 250
        stageImages[4].x, stageImages[4].y = 17, -435
        stageImages[5].x, stageImages[5].y = -55, 325
        stageImages[4].x, stageImages[4].y = 17, -435





        stageImages[2]:animate("anim", true)
        stageImages[4]:animate("anim", true)
        stageImages[5]:animate("anim", true)



        enemy = love.filesystem.load("sprites/characters/impostorr.lua")()
        boyfriend = love.filesystem.load("sprites/characters/bfr.lua")()
        girlfriend = love.filesystem.load("sprites/characters/gf_reactor.lua")()

        girlfriend.x, girlfriend.y = -15, 373
        enemy.x, enemy.y = -533, 415
        boyfriend.x, boyfriend.y = 493, 413

        camera.sizeX, camera.sizeY = 0.7, 0.7
        camera.scaleX, camera.scaleY = 0.7, 0.7
        --Timer.tween(1.25, camer, {x = 00, y = -300}, "out-quad")

    end,

    load = function()

        camera:addPoint("boyfriend", -362, -230, 0.7, 0.7)
        camera:addPoint("enemy", 463, -230, 0.7, 0.7)
        camera:addPoint("middle", 33, -192, 0.7, 0.7)
    end,

    update = function(self, dt)
        stageImages[2]:update(dt)
        stageImages[4]:update(dt)
        stageImages[5]:update(dt)

    end,

    draw = function()
		love.graphics.push()
            love.graphics.translate(camera.x, camera.y)
            love.graphics.translate(camera.ex, camera.ey)
            stageImages[1]:draw()
            stageImages[2]:draw()
            stageImages[3]:draw()
            stageImages[4]:draw()
            stageImages[5]:draw()

            girlfriend:draw()

			enemy:draw()
			boyfriend:draw()
		love.graphics.pop()
    end,

    leave = function()
        stageImages[1] = nil
        stageImages[2] = nil
        stageImages[3] = nil
    end
}