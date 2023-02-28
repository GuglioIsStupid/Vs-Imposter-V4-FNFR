return {
    enter = function()
        stageImages = {
            ["Sky"] = graphics.newImage(graphics.imagePath("polus/polus_custom_sky")), -- stage-back
		    ["Rocks"] = graphics.newImage(graphics.imagePath("polus/polusrocks")), -- stage-back
            ["Hills"] = graphics.newImage(graphics.imagePath("polus/polusHills")), -- stage-back
            ["Lab"] = graphics.newImage(graphics.imagePath("polus/polus_custom_lab")),
            ["Ground"] = graphics.newImage(graphics.imagePath("polus/polus_custom_floor")),
            ["boppers"] = love.filesystem.load("sprites/polus/boppers_meltdown.lua")()
        }

        stageImages["Sky"].sizeX = 1.4
        enemy = love.filesystem.load("sprites/characters/impostor2.lua")()

        stageImages["Sky"].y = -200
        stageImages["Rocks"].x, stageImages["Rocks"].y = 98, 87
        stageImages["Hills"].x, stageImages["Hills"].y = -99, 102
        stageImages["Lab"].x, stageImages["Lab"].y = 355, 0
        stageImages["Ground"].x, stageImages["Ground"].y = -265, 818

        enemy.x, enemy.y = -445, 340
        boyfriend.x, boyfriend.y = 340, 156
        girlfriend.x, girlfriend.y = 59, 100
        camera.sizeX, camera.sizeY = 0.75, 0.75
        camera.scaleX, camera.scaleY = 0.75, 0.75

        camera:addPoint("boyfriend", -274, -162, 0.75, 0.75)
        camera:addPoint("enemy", 373, -162, 0.75, 0.75)
        camera:moveToPoint(0, "enemy")

        stageImages["boppers"]:animate("idle", true)
        stageImages["boppers"].x, stageImages["boppers"].y = -177, 662

        ghostGF = love.filesystem.load("sprites/characters/ghostgf.lua")()
        ghostGF.x, ghostGF.y = 80, -107
    end,

    load = function()

        if song == 1 then
            enemy = love.filesystem.load("sprites/characters/impostor.lua")()
            boyfriend = love.filesystem.load("sprites/boyfriend.lua")()
            enemy.x, enemy.y = -338, 298
            boyfriend.x, boyfriend.y = 524, 303
            showGhostGF = false
        elseif song == 2 then
            enemy = love.filesystem.load("sprites/characters/impostor.lua")()
            boyfriend = love.filesystem.load("sprites/boyfriend.lua")()
            fuckingSpeaker = love.filesystem.load("sprites/polus/speakerlonely.lua")()
            fuckingSpeaker.x, fuckingSpeaker.y = 59, 266
            enemy.x, enemy.y = -338, 298
            boyfriend.x, boyfriend.y = 524, 303
            showGhostGF = false
        else
            enemy = love.filesystem.load("sprites/characters/impostor2.lua")()
            boyfriend = love.filesystem.load("sprites/characters/bfghost.lua")()
            fuckingSpeaker = love.filesystem.load("sprites/polus/speakerlonely.lua")()
            fuckingSpeaker.x, fuckingSpeaker.y = 59, 266
            enemy.x, enemy.y = -390, 364
            boyfriend.x, boyfriend.y = 524, 303
            showGhostGF = true
        end
        camera:addPoint("boyfriend", -274, -162, 0.75, 0.75)
        camera:addPoint("enemy", 373, -162, 0.75, 0.75)
        camera:moveToPoint(0, "enemy")
    end,

    update = function(self, dt)
        stageImages["boppers"]:update(dt)
        ghostGF:update(dt)
        if song ~= 1 then 
            fuckingSpeaker:update(dt) 

            if musicThres ~= oldMusicThres and math.fmod(absMusicTime, 120000 / bpm) < 100 then
                fuckingSpeaker:animate("anim", false)
            end
        end

        if not enemy:isAnimated() and not enemy:getAnimName() == "idle" then
            enemy:animate("idle", false)
        end

        if not boyfriend:isAnimated() and not boyfriend:getAnimName() == "idle" then
            boyfriend:animate("idle", false)
        end

        if song == 2 and musicTime >= 71996 and musicTime < 72046 then
            showGhostGF = true
            ghostGF:animate("fade", false)
        end

        if not ghostGF:isAnimated() then
            ghostGF:animate("idle", false)
        end
    end,

    draw = function()
        love.graphics.push()
            love.graphics.push()
			    love.graphics.translate(camera.x * 0.5, camera.y * 0.5)
                love.graphics.translate(camera.ex * 0.5, camera.ey * 0.5)
                stageImages["Sky"]:draw()
            love.graphics.pop()
            love.graphics.push()
                love.graphics.translate(camera.x * 0.6, camera.y * 0.6)
                love.graphics.translate(camera.ex * 0.6, camera.ey * 0.6)
                stageImages["Rocks"]:draw()
            love.graphics.pop()
            love.graphics.push()
                love.graphics.translate(camera.x * 0.7, camera.y * 0.7)
                love.graphics.translate(camera.ex * 0.7, camera.ey * 0.7)
                stageImages["Hills"]:draw()
            love.graphics.pop()
            love.graphics.push()
                love.graphics.translate(camera.x * 0.9, camera.y * 0.9)
                love.graphics.translate(camera.ex * 0.9, camera.ey * 0.9)
                stageImages["Lab"]:draw()
                stageImages["Ground"]:draw()

                if song == 1 then
                    girlfriend:draw()
                else 
                    fuckingSpeaker:draw() 
                    if showGhostGF then
                        ghostGF:draw()
                    end
                end
                
			    enemy:draw()
			    boyfriend:draw()
            love.graphics.pop()
            love.graphics.push()
                love.graphics.translate(camera.x * 1.5, camera.y * 1.5)
                love.graphics.translate(camera.ex * 1.5, camera.ey * 1.5)
                if song == 3 then
                    stageImages["boppers"]:draw()
                end
            love.graphics.pop()
		love.graphics.pop()
    
    end,

    leave = function()
        stageImages[1] = nil
        stageImages[2] = nil
        stageImages[3] = nil
    end
}