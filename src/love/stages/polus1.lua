return {
    enter = function()
        stageImages = {
            ["Sky"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("polus/polus_custom_sky"))), -- stage-back
		    ["Rocks"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("polus/polusrocks"))), -- stage-back
            ["Hills"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("polus/polusHills"))), -- stage-back
            ["Lab"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("polus/polus_custom_lab"))),
            ["Ground"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("polus/polus_custom_floor")))
        }

        stageImages["Sky"].sizeX = 1.4
        enemy = love.filesystem.load("sprites/characters/boyfriend.lua")()

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
			    love.graphics.translate(cam.x * 0.5, cam.y * 0.5)
                stageImages["Sky"]:draw()
            love.graphics.pop()
            love.graphics.push()
                love.graphics.translate(cam.x * 0.6, cam.y * 0.6)
                stageImages["Rocks"]:draw()
            love.graphics.pop()
            love.graphics.push()
                love.graphics.translate(cam.x * 0.7, cam.y * 0.7)
                stageImages["Hills"]:draw()
            love.graphics.pop()
            love.graphics.push()
            love.graphics.translate(cam.x * 0.9, cam.y * 0.9)
                stageImages["Lab"]:draw()
                stageImages["Ground"]:draw()

                if song == 1 then girlfriend:draw()
                else fuckingSpeaker:draw() end
            love.graphics.pop()
            
		love.graphics.pop()
		love.graphics.push()
			love.graphics.translate(cam.x, cam.y)

			enemy:draw()
			boyfriend:draw()
		love.graphics.pop()
		love.graphics.push()
			love.graphics.translate(cam.x * 1.1, cam.y * 1.1)

			
		love.graphics.pop()
    end,

    leave = function()
        stageImages[1] = nil
        stageImages[2] = nil
        stageImages[3] = nil
    end
}