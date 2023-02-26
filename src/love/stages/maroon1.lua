return {
    enter = function()
        stageImages = {
            ["bg"] = graphics.newImage(graphics.imagePath("maroon/newstage")),
            ["cloud"] = graphics.newImage(graphics.imagePath("maroon/newcloud")),
            ["sky"] = graphics.newImage(graphics.imagePath("maroon/newsky")),
            ["snowFront"] = love.filesystem.load("sprites/maroon/snow.lua")(),
            ["snowBack"] = love.filesystem.load("sprites/maroon/snowback.lua")(),
            ["overlay"] = graphics.newImage(graphics.imagePath("maroon/overlaythjing")),
        }

        enemy = love.filesystem.load("sprites/characters/maroon.lua")()
        boyfriend = love.filesystem.load("sprites/characters/bfpolus.lua")()

        girlfriend = love.filesystem.load("sprites/characters/gfpolus.lua")()

        enemy.x, enemy.y = -451, 361
        girlfriend.x, girlfriend.y = 50, 80
        boyfriend.x, boyfriend.y = 633, 407
        stageImages["snowFront"].sizeX, stageImages["snowFront"].sizeY = 2.8, 2.8 
        stageImages["snowBack"].sizeX, stageImages["snowBack"].sizeY = 5.4, 5.4

        stageImages["overlay"].sizeX, stageImages["overlay"].sizeY = 2, 2

        enemy.sizeX, enemy.sizeY = 1.3, 1.3
        boyfriend.sizeX, boyfriend.sizeY = 1.3, 1.3
        girlfriend.sizeX, girlfriend.sizeY = 1.3, 1.3


        stageImages["snowFront"]:animate("idle", true)

        stageImages["snowBack"].y = -227
        stageImages["snowBack"]:animate("idle", true)

        camera.sizeX, camera.sizeY = 0.5, 0.5
        defaultCamZoom = 0.5, 0.5

        camera:addPoint("enemy", 66, -157, 0.5, 0.5)
        camera:addPoint("boyfriend", -200, -157, 0.5, 0.5)

    end,

    load = function()
        camera:moveToPoint(0, "boyfriend")



    end,

    update = function(self, dt)
        stageImages["snowFront"]:update(dt)
        stageImages["snowBack"]:update(dt)

        if not enemy:isAnimated() then
            enemy:animate("idle", false)
        end
        if not boyfriend:isAnimated() then
            boyfriend:animate("idle", false)
        end

    end,

    draw = function()
		love.graphics.push()
			love.graphics.translate(camera.x, camera.y)
			love.graphics.translate(camera.ex, camera.ey)

            stageImages["sky"]:draw()
            stageImages["cloud"]:draw()


            stageImages["bg"]:draw()
            girlfriend:draw()
			enemy:draw()
			boyfriend:draw()
            love.graphics.setColor(1, 1, 1, 0.5)
            stageImages["snowBack"]:draw()

            stageImages["snowFront"]:draw()
            love.graphics.setColor(1, 1, 1, 1)
            stageImages["overlay"]:draw()

		love.graphics.pop()
    end,

    leave = function()

    end
}