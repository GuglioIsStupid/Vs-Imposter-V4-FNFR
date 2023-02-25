return {
    enter = function()
        stageImages = {
            ["bg"] = graphics.newImage(graphics.imagePath("greyWeek/graybg")),
            ["fg"] = graphics.newImage(graphics.imagePath("greyWeek/grayfg")),
            ["black"] = love.filesystem.load("sprites/greyWeek/grayblack.lua")(),
            ["glowy"] = love.filesystem.load("sprites/greyWeek/grayglowy.lua")(),
            ["overlay"] = graphics.newImage(graphics.imagePath("greyWeek/grayoverlay"))
        }


        enemy = love.filesystem.load("sprites/characters/grey.lua")()
        boyfriend = love.filesystem.load("sprites/characters/bfairship.lua")()
        girlfriend = love.filesystem.load("sprites/characters/gfdead.lua")()

        boyfriend.x, boyfriend.y = 496, 242
        enemy.x, enemy.y = -491, 220
        girlfriend.x, girlfriend.y = 53, 216
        stageImages["glowy"].x, stageImages["glowy"].y = 615, 99
        stageImages["black"].x, stageImages["black"].y = -954, 60

        stageImages["glowy"]:animate("anim", true)
        stageImages["black"]:animate("anim", true)

        camera.sizeX, camera.sizeY = 0.9, 0.9
        camera.scaleX, camera.scaleY = 0.9, 0.9
        camera:addPoint("boyfriend", -64, -67, 0.9, 0.9)

        camera:addPoint("enemy", 182, -67, 0.9, 0.9)
        camera:moveToPoint(0, "boyfriend")

        camZooming = true
        camLocked = false
        camera.zoom = 1
        uiScale.zoom = 1

    end,

    load = function()

        camera:addPoint("boyfriend", -64, -67, 0.9, 0.9)

        camera:addPoint("enemy", 182, -67, 0.9, 0.9)
    end,

    update = function(self, dt)
        stageImages["glowy"]:update(dt)
        stageImages["black"]:update(dt)
        girlfriend:update(dt)


        if not enemy:isAnimated() then
            enemy:animate("idle", false)        -- fixed the animation issues
        end

        if beatHandler.onBeat() and beatHandler.getBeat() % 2 == 0 then 
            stageImages["black"]:animate("anim", false)
        end


    end,

    draw = function()
        love.graphics.push()


            love.graphics.translate(camera.x, camera.y)
            love.graphics.translate(camera.ex, camera.ey)
            love.graphics.scale(camera.sizeX, camera.sizeY)
            love.graphics.scale(camera.scaleX, camera.scaleY)

            graphics.setColor(0.4, 0.4, 0.4)
            stageImages["bg"]:draw()
            stageImages["glowy"]:draw()
            stageImages["black"]:draw()
            girlfriend:draw()
            boyfriend:draw()
            enemy:draw()
            stageImages["fg"]:draw()
            love.graphics.setColor(0.4, 0.4, 0.4, 0.3)
            stageImages["overlay"]:draw()
            love.graphics.setColor(1, 1, 1, 1)

		love.graphics.pop()
    end,

    leave = function()
        stageImages["bg"] = nil
        stageImages["glowy"] = nil
        stageImages["fg"] = nil
        stageImages["black"] = nil
        stageImages["overlay"] = nil

        enemy = nil
        boyfriend = nil
    end
}