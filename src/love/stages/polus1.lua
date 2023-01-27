return {
    enter = function()
        stageImages = {
            ["Sky"] = graphics.newImage(graphics.imagePath("polus/polus_custom_sky")), -- stage-back
		    ["Rocks"] = graphics.newImage(graphics.imagePath("polus/polusrocks")), -- stage-back
            ["Hills"] = graphics.newImage(graphics.imagePath("polus/polusHills")), -- stage-back
            ["Lab"] = graphics.newImage(graphics.imagePath("polus/polus_custom_lab")),
            ["Ground"] = graphics.newImage(graphics.imagePath("polus/polus_custom_floor"))
        }

        stageImages["Sky"].sizeX = 1.4
        enemy = love.filesystem.load("sprites/boyfriend.lua")()

        stageImages["Sky"].y = -200
        stageImages["Rocks"].x, stageImages["Rocks"].y = -373, -10
        stageImages["Hills"].x, stageImages["Hills"].y = -283, 102
        stageImages["Lab"].x, stageImages["Lab"].y = 355, 0
        stageImages["Ground"].x, stageImages["Ground"].y = -265, 818

        enemy.x, enemy.y = -445, 340
        boyfriend.x, boyfriend.y = 340, 156
        girlfriend.x, girlfriend.y = -308, -219
    end,

    load = function()
        if song ~= 1 then 
            fuckingSpeaker = love.filesystem.load("sprites/polus/speakerlonely.lua")()

            fuckingSpeaker.x, fuckingSpeaker.y = 0, 235
        end
    end,

    update = function(self, dt)
        if song ~= 1 then 
            fuckingSpeaker:update(dt) 

            if musicThres ~= oldMusicThres and math.fmod(absMusicTime, 120000 / bpm) < 100 then
                fuckingSpeaker:animate("anim", false)
            end
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

                if song == 1 then girlfriend:draw()
                else fuckingSpeaker:draw() end
            love.graphics.pop()
            
		love.graphics.pop()
		love.graphics.push()
			love.graphics.translate(camera.x, camera.y)
            love.graphics.translate(camera.ex, camera.ey)

			enemy:draw()
			boyfriend:draw()
		love.graphics.pop()
    end,

    leave = function()
        stageImages[1] = nil
        stageImages[2] = nil
        stageImages[3] = nil
    end
}