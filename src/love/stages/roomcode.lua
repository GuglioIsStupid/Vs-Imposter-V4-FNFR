return {
    enter = function()
        stageImages = {
            graphics.newImage(graphics.imagePath("roomcode/roomcodebg")), -- stage-back
        }


        enemy = love.filesystem.load("sprites/characters/powers.lua")()
        boyfriend = love.filesystem.load("sprites/characters/picolobbest.lua")()

        boyfriend.x, boyfriend.y = 182, 474
        enemy.x, enemy.y = -813, 443

        camera:addPoint("boyfriend", 220, -339, 0.9, 0.9)
        camera:addPoint("enemy", 492, -339, 0.9, 0.9)


    end,

    load = function()

    end,

    update = function(self, dt)

        if musicTime > 99555 then
            if not enemy:isAnimated() and enemy:getAnimName() ~= "idle" then
                enemy:animate("idle alt", false)        -- fixed the animation issues
            end
        else
            if not enemy:isAnimated() and enemy:getAnimName() ~= "idle" then
                enemy:animate("idle", false)        -- fixed the animation issues
            end
        end

    end,

    draw = function()
        love.graphics.push()
        love.graphics.translate(camera.x, camera.y)
        love.graphics.translate(camera.ex, camera.ey)
            stageImages[1]:draw()
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