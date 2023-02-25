return {
    enter = function()
        stageImages = {
            graphics.newImage(graphics.imagePath("tuesday/tuesday")), -- stage-back
            graphics.newImage(graphics.imagePath("tuesday/space")), -- stage-back

        }

        enemy = love.filesystem.load("sprites/characters/tuesday.lua")()
        boyfriend = love.filesystem.load("sprites/characters/bfsusreal.lua")()
        girlfriend = love.filesystem.load("sprites/characters/tuesdaygf.lua")()

        boyfriend.x, boyfriend.y = 367, 271
        enemy.x, enemy.y = -461, 278
        girlfriend.x, girlfriend.y = -83, 70

        camera:addPoint("boyfriend", -138, -117, 1, 1)
        camera:addPoint("enemy", 200, -117, 1, 1)

        shootSound = love.audio.newSource("sounds/tomongus/soundTuesday.ogg", "static")


    end,

    load = function()
        camera:moveToPoint(0, "enemy")
        lmfaoHeGotShot = false

    end,

    update = function(self, dt)


        if not enemy:isAnimated() and (enemy:getAnimName() ~= "idle" or enemy:getAnimName() == "tomidle") then
            if lmfaoHeGotShot then
                enemy:animate("tomidle", false)
            else
                enemy:animate("idle", false)        -- fixed the animation issues
            end
        end

        if musicTime >= 89772 and musicTime < 89822 then
            boyfriend:animate("blow?", false)
            shootSound:play()
        end

        if musicTime >= 90318 and musicTime < 90368 then
            enemy:animate("anim", false)
            lmfaoHeGotShot = true
        end

    end,

    draw = function()
        love.graphics.push()
        love.graphics.translate(camera.x, camera.y)
        love.graphics.translate(camera.ex, camera.ey)
            stageImages[2]:draw()
            stageImages[1]:draw()
            girlfriend:draw()
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