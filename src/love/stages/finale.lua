return {
    enter = function()
        stageImages = {
            ["BG"] = graphics.newImage(graphics.imagePath("finale/bg")),
            ["bgg"] = graphics.newImage(graphics.imagePath("finale/bgg")),
            ["dark"] = graphics.newImage(graphics.imagePath("finale/dark")),
            ["dead"] = graphics.newImage(graphics.imagePath("finale/dead")),
            ["fore"] = graphics.newImage(graphics.imagePath("finale/fore")),
            ["lamp"] = graphics.newImage(graphics.imagePath("finale/lamp")),
            ["splat"] = graphics.newImage(graphics.imagePath("finale/splat")),
            ["finaleFlashback"] = love.filesystem.load("sprites/finale/finaleFlashback.lua")(),
            ["light"] = love.filesystem.load("sprites/finale/light.lua")(),
            ["defeat"] = love.filesystem.load("sprites/defeat/defeat.lua")(),
        }

        stageImages["dead"].x, stageImages["dead"].y = 56, -476
        stageImages["lamp"].x, stageImages["lamp"].y = 447, -593
        stageImages["dark"].x, stageImages["dark"].y = 75, -102

        curStage = "finalem"

        boyfriend = love.filesystem.load("sprites/characters/BF_Defeat_Scared.lua")()

        enemy = love.filesystem.load("sprites/characters/black.lua")()
        enemy2 = love.filesystem.load("sprites/characters/blackparasite.lua")()

        enemy.x, enemy.y = -400, 34

        enemy2.sizeX, enemy2.sizeY = 1.5, 1.5
        enemy2.x, enemy2.y = -455, 18

        boyfriend.sizeX, boyfriend.sizeY = 0.65, 0.65
        boyfriend.x, boyfriend.y = 456, 209

        camera.sizeX, camera.sizeY = 0.4, 0.4
        camera.scaleX, camera.scaleY = 0.4, 0.4

        cock = 0

    end,

    load = function()
        flash.alpha = 0
        flash.colour = {1, 1, 1}
        cam.sizeX, cam.sizeY = 0.4, 0.4
        cam.scaleX, cam.scaleY = 0.4, 0.4
        curStage = "finalem"
    end,

    update = function(self, dt)
        stageImages["finaleFlashback"]:update(dt)
        stageImages["light"]:update(dt)
        stageImages["defeat"]:update(dt)

        if musicTime >= 0 and musicTime <= 300 then 
            if cam.sizeX == 0.4 then 
                Timer.tween(8.4, cam, {sizeX = 0.6, sizeY = 0.6}, "linear", function()  end)
                Timer.tween(8.4, camScale, {x = 0.6, y = 0.6}, "linear", function() end)
            end
        end

        if musicTime >= 4800 and musicTime <= 4850 then 
            doingFlashback = true
            stageImages["finaleFlashback"]:animate("moog", false)
            cock = 0.6
        elseif musicTime >= 6000 and musicTime <= 6050 then
            stageImages["finaleFlashback"]:animate("toog", false)
        elseif musicTime >= 7200 and musicTime <= 7250 then
            stageImages["finaleFlashback"]:animate("doog", false)
        elseif musicTime >= 8400 and musicTime <= 8450 then
            if flash.alpha == 0 then 
                flash.colour = {1, 1, 1}
                Timer.tween(0.9, flash, {alpha = 1}, "linear", function() 
                    flash.colour = {1, 0, 0}
                    doingFlashback = false
                    Timer.tween(0.3, cam, {sizeX = 0.9, sizeY = 0.9}, "in-quad") 
                    Timer.tween(0.22, camScale, {x = 0.9, y = 0.9}, "in-quad")
                    Timer.tween(0.5, flash, {alpha = 0}, "linear", function() 
                        flash.alpha = 0
                    end)
                end
                )
            end
            cock = 0
        end

        if musicTime >= 20400 and musicTime <= 20450 then 
            health = 10
            flash.colour = {255/255, 18/255, 104/255}
            if flash.alpha == 0 then
                Timer.tween(0.18, flash, {alpha = 1}, "linear", function() 
                    Timer.tween(0.22, cam, {sizeX = 0.75, sizeY = 0.75}, "in-quad") 
                    Timer.tween(0.22, camScale, {x = 0.75, y = 0.75}, "in-quad")
                    Timer.tween(0.5, flash, {alpha = 0}, "linear", function()
                        flash.alpha = 0
                    end)
                end
                )
            end
            curStage = "finale"
        end

        if musicThres ~= oldMusicThres and math.fmod(absMusicTime, 180000 / bpm) < 100 then
			stageImages["defeat"]:animate("anim", false)
            stageImages["light"]:animate("anim", false)
		end
    end,

    draw = function()
        if curStage == "finalem" then
            love.graphics.push()
                love.graphics.translate(camera.x * 0.8, camera.y * 0.8)
                love.graphics.translate(camera.ex * 0.8, camera.ey * 0.8)


                stageImages["defeat"]:draw()
            love.graphics.pop()
            love.graphics.push()
            love.graphics.translate(camera.x, camera.y)
            love.graphics.translate(camera.ex, camera.ey)


                enemy:draw()
                boyfriend:draw()
                graphics.setColor(1, 1, 1, 1)
            love.graphics.pop()
        elseif curStage == "finale" then
            love.graphics.push()
                love.graphics.translate(camera.x * 0.9, camera.y * 0.9)
                love.graphics.translate(camera.ex * 0.9, camera.ey * 0.9)

                stageImages["bgg"]:draw()
                stageImages["BG"]:draw()
                stageImages["dead"]:draw()

                boyfriend:draw()
                enemy2:draw()

                stageImages["fore"]:draw()
                stageImages["lamp"]:draw()
                stageImages["light"]:draw()
                stageImages["dark"]:draw()

                
            love.graphics.pop() 
        end
    end,

    leave = function()
        stageImages[1] = nil
        stageImages[2] = nil
        stageImages[3] = nil
    end
}