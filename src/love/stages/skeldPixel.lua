return {
    enter = function()
        love.graphics.setDefaultFilter("nearest")
        stageImages = {
            ["bg"] = graphics.newImage(graphics.imagePath("tomongus/skeld")), -- stage-back
            ["stars"] = graphics.newImage(graphics.imagePath("tomongus/stars")), -- stage-back
        }
        


        boyfriend = love.filesystem.load("sprites/characters/bfPixel.lua")()
        enemy = love.filesystem.load("sprites/characters/tomongus.lua")()
        girlfriend = love.filesystem.load("sprites/characters/gfPixel.lua")()
        love.graphics.setDefaultFilter("linear")

        boyfriend.x, boyfriend.y = 342, 111
        enemy.x, enemy.y = -568, 131
        girlfriend.x, girlfriend.y = -8, -146

        camera:addPoint("boyfriend", -64, 0, 0.85, 0.85)
        camera:addPoint("enemy", 214, 0, 0.85, 0.85)

        camera.sizeX, camera.sizeY = 0.85, 0.85
        camera.scaleX, camera.scaleY = 0.85, 0.85



    end,

    load = function()
        camera:moveToPoint(0, "boyfriend")

        camera.sizeX, camera.sizeY = 0.85, 0.85
        camera.scaleX, camera.scaleY = 0.85, 0.85


    end,

    update = function(self, dt)

        if not enemy:isAnimated() and enemy:getAnimName() ~= "idle" then
            enemy:animate("idle", false)        -- fixed the animation issues
        end



    end,

    draw = function()
        love.graphics.push()

        love.graphics.translate(camera.x, camera.y)
        love.graphics.translate(camera.ex, camera.ey)

            stageImages["stars"]:udraw()

            stageImages["bg"]:udraw()
            girlfriend:udraw()
            boyfriend:udraw()
            enemy:udraw()
		love.graphics.pop()
    end,

    leave = function()
        stageImages[1] = nil
        enemy = nil
        boyfriend = nil
    end
}