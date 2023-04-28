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
        boyfriend2 = love.filesystem.load("sprites/characters/pip_evil.lua")()
        boyfriendCount = 2

        boyfriend.x, boyfriend.y = 222, 350
        boyfriend2.x, boyfriend2.y = boyfriend.x, boyfriend.y
        enemy.x, enemy.y = -654, 288

        boyfriend.sizeX = -1
        boyfriend2.sizeX = -1

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
        camera:addPoint("zoomed", 151, -129, 0.40, 0.40)


        pipMad = false

        
        camera.sizeX, camera.sizeY = 0.75, 0.75
       -- camera.scaleX, camera.scaleY = 0.75, 0.75

        defaultCamZoom = 0.75, 0.75


        zoomOut = false


    end,

    update = function(self, dt)

        boyfriend2:update(dt)

        
  
        if not enemy:isAnimated() and enemy:getAnimName() ~= "idle" then
            enemy:animate("idle", false)        -- fixed the animation issues  
        end

            if musicTime >= 48000 and musicTime < 48050 then
            --                           if musicTime >= 1000 and musicTime < 1050 then
                camera:moveToPoint(8, "zoomed")
                zoomOut = true
                if zoomingCam then
                    Timer.cancel(zoomingCam)
                end
                doingZoom = true
                zoomingCam = Timer.tween(8, camera, {sizeX = 0.35, sizeY = 0.35, scaleX = 0.35, scaleY = 0.35}, "out-quad", function()
                    doingZoom = false
                end)
                camera.zooming = false
            end
        


        if zoomOut and doingZoom then
            defaultCamZoom = camera.sizeX, camera.sizeY
        end



            if musicTime >= 48000 and musicTime < 48050 then
            --                           if musicTime >= 1000 and musicTime < 1050 then
                camera:moveToPoint(8, "zoomed")
                zoomOut = true
                if zoomingCam then
                    Timer.cancel(zoomingCam)
                end
                doingZoom = true
                zoomingCam = Timer.tween(8, camera, {sizeX = 0.35, sizeY = 0.35, scaleX = 0.35, scaleY = 0.35}, "out-quad", function()
                    doingZoom = false
                end)
                camera.zooming = false
            end
        


        if zoomOut and doingZoom then
            defaultCamZoom = camera.sizeX, camera.sizeY
        end



        if musicTime >= 48000 and musicTime < 48050 then
            camera:moveToPoint(8, "zoomed")
        end

        


		if song == 1 then
			if musicTime >= 30428 and musicTime < 30478 then
				enemy:animate("idle")
			end
            if musicTime >= 33857 and musicTime < 33907 then
                pipMad = true
            end
        end


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
                if not pipMad then
                    boyfriend:draw()
                else
                    boyfriend2:draw()
                end

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