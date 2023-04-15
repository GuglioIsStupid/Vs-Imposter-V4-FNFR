return {
    enter = function()
        stageImages = {
            ["back"] = graphics.newImage(graphics.imagePath("chip/back")), -- stage-back
            ["backBuildings"] = graphics.newImage(graphics.imagePath("chip/backBuildings")), -- stage-back
            ["balcony"] = graphics.newImage(graphics.imagePath("chip/balcony")), -- stage-back
            ["mainBuildings"] = graphics.newImage(graphics.imagePath("chip/mainBuildings")), -- stage-back
        }


        enemy = love.filesystem.load("sprites/characters/cval.lua")()
        boyfriend = love.filesystem.load("sprites/characters/pip.lua")()

        boyfriend.x, boyfriend.y = 222, 350
        enemy.x, enemy.y = -654, 288

        boyfriend.sizeX = -1

        camera:addPoint("boyfriend", 132, -232, 0.75, 0.75)
        camera:addPoint("enemy", 381, -232, 0.75, 0.75)
        camera:addPoint("zoomed", 151, 2, 0.65, 0.65)

        camera.sizeX, camera.sizeY = 0.75, 0.75

        defaultCamZoom = 0.75, 0.75
        --camera.scaleX, camera.scaleY = 0.75, 0.75


    end,

    load = function()

        camera:addPoint("boyfriend", 132, -232, 0.75, 0.75)
        camera:addPoint("enemy", 381, -232, 0.75, 0.75)
        camera:addPoint("zoomed", 151, 2, 0.65, 0.65)


        
        camera.sizeX, camera.sizeY = 0.75, 0.75
       -- camera.scaleX, camera.scaleY = 0.75, 0.75

        defaultCamZoom = 0.75, 0.75


        zoomOut = false


    end,

    update = function(self, dt)
  
        if not enemy:isAnimated() and enemy:getAnimName() ~= "idle" then
            enemy:animate("idle", false)        -- fixed the animation issues
        end


        --[[

        if song == 1 then
            if musicTime >= 1000 and not zoomOut then
                zoomOut = true
                camera:moveToPoint(8, "zoomed")
                Timer.tween(8, cam, {sizeX = 0.65, sizeY = 0.65}, "out-quad") 
                cam.zooming = false       
            end
        end

--]]

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

        if song == 1 then
            if musicTime =

    end,

    draw = function()
        love.graphics.push()
        love.graphics.scale(camera.esizeX, camera.esizeY)
        love.graphics.scale(camera.sizeX, camera.sizeY)
            love.graphics.push()
            love.graphics.translate(camera.x * 0.7, camera.y * 0.7)
                stageImages["back"]:draw()
                stageImages["backBuildings"]:draw()
            love.graphics.pop()
            love.graphics.push()
            love.graphics.translate(camera.x * 0.8, camera.y * 0.8)
                stageImages["mainBuildings"]:draw()
            love.graphics.pop()
            love.graphics.push()
            love.graphics.translate(camera.x, camera.y)
                stageImages["balcony"]:draw()
                enemy:draw()
                boyfriend:draw()
            love.graphics.pop()
        love.graphics.pop()
    end,

    leave = function()
        stageImages["back"] = nil
        stageImages["backBuildings"] = nil
        stageImages["mainBuildings"] = nil
        stageImages["balcony"] = nil
        enemy = nil
        boyfriend = nil
    end
}