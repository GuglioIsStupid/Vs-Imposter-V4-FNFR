return {
    enter = function()
        stageImages = {
            graphics.newImage(graphics.imagePath("freeplaySongs/insane-streamer/jerma")), -- stage-back
        }


        enemy = love.filesystem.load("sprites/characters/jerma.lua")()
        boyfriend = love.filesystem.load("sprites/boyfriend.lua")()

        boyfriend.x, boyfriend.y = 412, 168
        enemy.x, enemy.y = -397, 0

        camera:addPoint("boyfriend", 76, 23)
        camera:addPoint("enemy", 182, 122)


    end,

    load = function()

    end,

    update = function(self, dt)

        if mustHitSection then
            if jermaZoom then
                Timer.cancel(jermaZoom)
            end
            jermaZoom = Timer.tween(1.25, camera, {sizeX = 0.7, sizeY = 0.7, scaleX = 0.7, scaleY = 0.7}, "out-quad")
        else
            if jermaZoom then
                Timer.cancel(jermaZoom)
            end
            jermaZoom = Timer.tween(1.25, camera, {sizeX = 0.9, sizeY = 0.9, scaleX = 0.9, scaleY = 0.9}, "out-quad")
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