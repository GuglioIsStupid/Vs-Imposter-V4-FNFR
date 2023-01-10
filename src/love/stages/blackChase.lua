return {
    enter = function()
        stageImages = {
            graphics.newImage(love.graphics.newImage(graphics.imagePath("yellowWeek/airship/sky"))),
            graphics.newImage(love.graphics.newImage(graphics.imagePath("yellowWeek/airship/farthestClouds"))),
            graphics.newImage(love.graphics.newImage(graphics.imagePath("yellowWeek/airship/backClouds"))),
            graphics.newImage(love.graphics.newImage(graphics.imagePath("yellowWeek/airship/airship"))),
            graphics.newImage(love.graphics.newImage(graphics.imagePath("yellowWeek/airship/frontClouds"))),
            graphics.newImage(love.graphics.newImage(graphics.imagePath("yellowWeek/airship/fgPlatform")))
        }

        cam.sizeX, cam.sizeY = 0.7, 0.7
        camScale.x, camScale.y = 0.7, 0.7


        stageImages[4].sizeX, stageImages[4].sizeY = 0.7, 0.7


        stageImages[2].y = 57
        stageImages[3].y = 150
        stageImages[4].x, stageImages[4].y = 1546, -35
        stageImages[5].x, stageImages[5].y = 0, 415

        stageImages[6].translation = {x = 0, y = 0}


        stageImages[6].y = 619

        enemy = love.filesystem.load("sprites/characters/blackrun.lua")()
        boyfriend = love.filesystem.load("sprites/characters/bf_running.lua")()
        girlfriend = love.filesystem.load("sprites/characters/gf_danger.lua")()
        blackLegs = love.filesystem.load("sprites/characters/blacklegs.lua")()
        bfLegs = love.filesystem.load("sprites/characters/bf_legs.lua")()

        girlfriend.x, girlfriend.y = -146, -166
        enemy.x, enemy.y = 0, 0
        boyfriend.x, boyfriend.y = 641, 183
    end,

    load = function()



    end,

    update = function(self, dt)
        blackLegs:update(dt)
        bfLegs:update(dt)

        
        stageImages[6].translation.x = stageImages[6].translation.x - 4000 * dt
        if stageImages[6].translation.x < -5740 then
            stageImages[6].translation.x = 0
        end

        if not blackLegs:isAnimated() then
            blackLegs:animate("run", false)  -- set to false since its just gonna animate them again after the first one (doing it like this so it isnt synced to bpm)
        end

        if not bfLegs:isAnimated() then
            bfLegs:animate("run", false)
        end

    end,

    draw = function()
        love.graphics.push()
			love.graphics.translate(cam.x * 0.9, cam.y * 0.9)

			stageImages[1]:draw()
			stageImages[2]:draw()
            stageImages[3]:draw()
            stageImages[4]:draw()
            stageImages[5]:draw()
            
		love.graphics.pop()
        love.graphics.push()

        love.graphics.pop()
		love.graphics.push()
			love.graphics.translate(cam.x, cam.y)
            love.graphics.push()
            love.graphics.translate(stageImages[6].translation.x, stageImages[6].translation.y)
            for i = 1, 3 do 
                stageImages[6].x = (i - 1) * 5740
                stageImages[6]:draw()
            end
            love.graphics.pop()

            girlfriend:draw()
            blackLegs:draw()
			enemy:draw()
            bfLegs:draw()
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