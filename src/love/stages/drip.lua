return {
    enter = function()
        stageImages = {
            graphics.newImage(graphics.imagePath("drip/ng")),
        }


        enemy = love.filesystem.load("sprites/characters/drippy.lua")()
        enemyghost = love.filesystem.load("sprites/characters/drippy.lua")()
        boyfriend = love.filesystem.load("sprites/characters/DrippyBF.lua")()
        bfghost = love.filesystem.load("sprites/characters/DrippyBF.lua")()

        boyfriend2 = love.filesystem.load("sprites/characters/drippico.lua")()
        bfghost2 = love.filesystem.load("sprites/characters/drippico.lua")()
        bf2ghost = love.filesystem.load("sprites/characters/DrippyBF.lua")()

        boyfriend2:animate("mongo", true)

        boyfriend.x, boyfriend.y = 476, 174
        boyfriend2.x, boyfriend2.y = 180, 22
        enemy.x, enemy.y = -136, 92

        enemyghost.x, enemyghost.y = -136, 92
        bf2ghost.x, bf2ghost.y = 180, 22
        bfghost.x, bfghost.y = 476, 174

        enemyghost.colors = {1,0,0}
        enemyghost.alpha = 0
        bf2ghost.colors = {0,1,0}
        bf2ghost.alpha = 0
        bfghost.colors = {0,0,1}
        bfghost.alpha = 0

        camera:addPoint("boyfriend", -227, 1, 1, 1)
        camera:addPoint("enemy", -96, 1, 1, 1)
        camera:addPoint("pico", -186, 203, 1.15, 1.15)
    end,

    load = function()
        mongoFuckingDies = false
        boyfriend2:animate("mongo", true)
        camera:moveToPoint(0, "enemy")
        camera.sizeX, camera.sizeY = 1, 1
        defaultCamZoom = 1, 1
        picoSing = false
    end,

    update = function(self, dt)
        enemyghost:update(dt)
        bf2ghost:update(dt)
        bfghost:update(dt)
        if mustHitSection and picoSing then
            if jermaZoom then
                Timer.cancel(jermaZoom)
            end
            jermaZoom = Timer.tween(1, camera, {sizeX = 1.15, sizeY = 1.15, scaleX = 1.15, scaleY = 1.15}, "out-quad")
        else
            if jermaZoom then
                Timer.cancel(jermaZoom)
            end
        
            jermaZoom = Timer.tween(1, camera, {sizeX = 1, sizeY = 1, scaleX = 1, scaleY = 1}, "out-quad")
        end

        boyfriend2:update(dt)

        if not mongoFuckingDies then
            if not boyfriend2:isAnimated() then
                boyfriend2:animate("mongo", false)
            end
        else
            if not boyfriend2:isAnimated() then
                boyfriend2:animate("idle", false)
            end
        end
        if not boyfriend:isAnimated() then
            boyfriend:animate("idle", false)
        end
        if not enemy:isAnimated() then
            enemy:animate("idle", false)
        end


        

        if musicTime >= 89763 and musicTime < 89813 then
            mongoFuckingDies = true
            boyfriend2:animate("picomongo", false)  -- literally crying right now why would pico do that
        end


        if musicTime >= 90236 and musicTime < 90286 then
            picoSing = true
        end
        if musicTime >= 111078 and musicTime < 111128 then
            picoSing = false
        end
        if musicTime >= 121184 and musicTime < 121234  then
            picoSing = true
        end
        if musicTime >= 126473 and musicTime < 126523 then
            picoSing = false
        end


    end,

    draw = function()
        love.graphics.push()
        love.graphics.translate(camera.x, camera.y)
        love.graphics.translate(camera.ex, camera.ey)
            stageImages[1]:draw()
            graphics.setColor(bf2ghost.colors[1], bf2ghost.colors[2], bf2ghost.colors[3], bf2ghost.alpha)
            bfghost2:draw()
            graphics.setColor(1,1,1)
            boyfriend2:draw()
            graphics.setColor(bfghost.colors[1], bfghost.colors[2], bfghost.colors[3], bfghost.alpha)
            bfghost:draw()
            graphics.setColor(1,1,1)
            boyfriend:draw()
            graphics.setColor(enemyghost.colors[1], enemyghost.colors[2], enemyghost.colors[3], enemyghost.alpha)
            enemyghost:draw()
            graphics.setColor(1,1,1)
            enemy:draw()
		love.graphics.pop()
    end,

    leave = function()
        stageImages[1] = nil
        enemy = nil
        boyfriend = nil
    end
}