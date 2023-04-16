return {
    enter = function()
        stageImages = {
            graphics.newImage(graphics.imagePath("torture/torture_glow")),
            graphics.newImage(graphics.imagePath("torture/torture_glasses_preblended")),
            graphics.newImage(graphics.imagePath("torture/torture_wall")),
        }


        boyfriend = love.filesystem.load("sprites/characters/ziffytorture.lua")()
        boyfriend2 = boyfriend
        enemy = love.filesystem.load("sprites/characters/piptorture.lua")()
        enemy2 = love.filesystem.load("sprites/characters/cvaltorture.lua")()

        boyfriend.x, boyfriend.y = -17, 218
        enemy.x, enemy.y = -710, 383
        enemy2.x, enemy2.y = 830, 297
        enemy2.sizeX = -1
        stageImages[2].x, stageImages[2].y = -17, 519

        

        camera:addPoint("boyfriend", 0, -221, 1.1, 1.1)
        camera:addPoint("enemy", 44, -226, 0.95, 0.95)
        camera:addPoint("enemy2", -28, -226, 0.95, 0.95)

        defaultCamZoom = 0.95, 0.95
		camera.sizeX, camera.sizeY = 0.95, 0.95



        

    end,

    load = function()

    end,

    update = function(self, dt)
        enemy2:update(dt)

        
        if mustHitSection then
            if jermaZoom then
                Timer.cancel(jermaZoom)
            end
            jermaZoom = Timer.tween(1.25, camera, {sizeX = 1.1, sizeY = 1.1, scaleX = 1.1, scaleY = 1.1}, "out-quad")
        else
            if jermaZoom then
                Timer.cancel(jermaZoom)
            end
        
            jermaZoom = Timer.tween(1.25, camera, {sizeX = 0.95, sizeY = 0.95, scaleX = 0.95, scaleY = 0.95}, "out-quad")
        end

        

        
        if not enemy:isAnimated() and enemy:getAnimName() ~= "idle" then
            enemy:animate("idle", false)        -- fixed the animation issues
        end



    end,

    draw = function()
        love.graphics.push()
            
            love.graphics.translate(camera.x, camera.y)
            love.graphics.translate(camera.ex, camera.ey)
            love.graphics.scale(camera.sizeX, camera.sizeY)
            love.graphics.scale(camera.scaleX, camera.scaleY)
            stageImages[3]:draw()
            boyfriend:draw()
            stageImages[2]:draw()
            enemy:draw()
            --stageImages[4]:draw()
            enemy2:draw()
            love.graphics.setColor(1,1,1,0.5)
            stageImages[1]:draw()

		love.graphics.pop()
    end,

    leave = function()
        stageImages[1] = nil
        enemy = nil
        boyfriend = nil
    end
}