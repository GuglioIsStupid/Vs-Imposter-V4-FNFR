return {
    enter = function()
        stageImages = {
            graphics.newImage(graphics.imagePath("idk/toby")), -- stage-back
        }


        enemy = love.filesystem.load("sprites/characters/idk.lua")()
        boyfriend = love.filesystem.load("sprites/characters/idkbf.lua")()
        fakeBoyfriend = love.filesystem.load("sprites/characters/idk_bf_dead.lua")()

        boyfriend.x, boyfriend.y = 290, -65
        enemy.x, enemy.y = -361, -42
        stageImages[1].x, stageImages[1].y = 75, -42

        camera:addPoint("boyfriend", 19, 0, 1, 1)
        camera:addPoint("enemy", 19, 0, 1, 1)

        camera.sizeX, camera.sizeY = 1, 1
        defaultCamZoom = 1, 1



    end,

    load = function()

    end,

    update = function(self, dt)


        if not enemy:isAnimated() and enemy:getAnimName() ~= "idle" then
            enemy:animate("idle", false)        -- fixed the animation issues
        end



    end,

    draw = function()
        love.graphics.push()
        love.graphics.translate(camera.x, camera.y)
        --love.graphics.translate(camera.ex, camera.ey)
        love.graphics.setColor(1, 1, 1, 1)
            love.graphics.rectangle("fill", -5000, -5000, 10000, 10000)
            stageImages[1]:udraw(1.5, 1.5)
            boyfriend:udraw(1.3, 1.3)
            enemy:udraw(1.3, 1.3)
		love.graphics.pop()
    end,

    leave = function()
        stageImages[1] = nil
        enemy = nil
        boyfriend = nil
    end
}