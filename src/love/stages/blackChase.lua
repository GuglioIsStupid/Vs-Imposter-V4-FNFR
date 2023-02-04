return {
    enter = function()
        stageImages = {
            graphics.newImage(graphics.imagePath("yellowWeek/airship/sky")),
            graphics.newImage(graphics.imagePath("yellowWeek/airship/farthestClouds")),
            graphics.newImage(graphics.imagePath("yellowWeek/airship/backClouds")),
            graphics.newImage(graphics.imagePath("yellowWeek/airship/airship")),
            graphics.newImage(graphics.imagePath("yellowWeek/airship/frontClouds")),
            graphics.newImage(graphics.imagePath("yellowWeek/airship/fgPlatform")),
            love.filesystem.load("sprites/characters/blacklegs.lua")(),
            love.filesystem.load("sprites/characters/bf_legs.lua")(),
            love.filesystem.load("sprites/yellowWeek/screamsky.lua")(),
        }
        curEnemy = "both"

        camera.sizeX, camera.sizeY = 0.3, 0.3
        camera.scaleX, camera.scaleY= 0.3, 0.3

        


        stageImages[4].sizeX, stageImages[4].sizeY = 0.9, 0.9
        stageImages[1].sizeX, stageImages[1].sizeY = 1.5, 1.5


        stageImages[2].y = 57
        stageImages[3].y = 150
        stageImages[4].x, stageImages[4].y = 2029, -35
        stageImages[5].x, stageImages[5].y = 0, 415

        stageImages[7].x, stageImages[7].y = -944, 438
        stageImages[8].x, stageImages[8].y = 564, 460


        stageImages[6].translation = {x = 0, y = 0}
        stageImages[2].translation = {x = 0, y = 0}
        stageImages[3].translation = {x = 0, y = 0}
        stageImages[5].translation = {x = 0, y = 0}


        stageImages[6].y = 619

        enemy = love.filesystem.load("sprites/characters/blackrun.lua")()
        enemyTwo = love.filesystem.load("sprites/characters/blackalt.lua")()

        boyfriend = love.filesystem.load("sprites/characters/bf_running.lua")()
        girlfriend = love.filesystem.load("sprites/characters/gf_danger.lua")()

        girlfriend.x, girlfriend.y = -88, 129
        enemy.x, enemy.y = -877, 198
        enemyTwo.x, enemyTwo.y = -866, 189
        boyfriend.x, boyfriend.y = 616, 275
    end,

    load = function()
        ohnoHeAngy = false

    end,

    update = function(self, dt)
        stageImages[7]:update(dt)
        stageImages[8]:update(dt)
        stageImages[9]:update(dt)

        
        stageImages[6].translation.x = stageImages[6].translation.x - 4000 * dt
        if stageImages[6].translation.x < -5740 then
            stageImages[6].translation.x = 0
        end

        stageImages[2].translation.x = stageImages[2].translation.x - 50 * dt
        if stageImages[2].translation.x < -4530 then
            stageImages[2].translation.x = 0
        end

        stageImages[3].translation.x = stageImages[3].translation.x - 150 * dt
        if stageImages[3].translation.x < -4535 then
            stageImages[3].translation.x = 0
        end

        stageImages[5].translation.x = stageImages[5].translation.x - 1500 * dt
        if stageImages[5].translation.x < -8000 then
            stageImages[5].translation.x = 0
        end

        if not stageImages[7]:isAnimated() then
            stageImages[7]:animate("run", false)  -- set to false since its just gonna animate them again after the first one (doing it like this so it isnt synced to bpm)
        end

        if not stageImages[8]:isAnimated() then
            stageImages[8]:animate("run", false)
        end

    end,

    draw = function()
        love.graphics.push()
			love.graphics.translate(camera.x * 0.9, camera.y * 0.9)
            love.graphics.translate(camera.ex * 0.9, camera.ey * 0.9)
            love.graphics.scale(camera.sizeX, camera.sizeY)
			stageImages[1]:draw()
            love.graphics.push()
            love.graphics.translate(stageImages[2].translation.x, stageImages[2].translation.y)
            for i = 1, 4 do 
                stageImages[2].x = (i - 1) * 4530
                stageImages[2]:draw()
            end
            love.graphics.pop()
            love.graphics.push()
            love.graphics.translate(stageImages[3].translation.x, stageImages[3].translation.y)
            for i = 1, 4 do 
                stageImages[3].x = (i - 1) * 4535
                stageImages[3]:draw()
            end
            love.graphics.pop()
            love.graphics.push()
            love.graphics.translate(-camera.x * 0.2, -camera.y * 0.2)
            love.graphics.translate(-camera.ex * 0.2, -camera.ey * 0.2)
            love.graphics.scale(camera.sizeX, camera.sizeY)

            stageImages[4]:draw()
            love.graphics.pop()
            love.graphics.push()
            love.graphics.translate(stageImages[5].translation.x, stageImages[5].translation.y)
            for i = 1, 4 do 
                stageImages[5].x = (i - 1) * 8000
                stageImages[5]:draw()
            end
            love.graphics.pop()
		love.graphics.pop()
        love.graphics.push()
        love.graphics.pop()
		love.graphics.push()
			love.graphics.translate(camera.x, camera.y)
            love.graphics.translate(camera.ex, camera.ey)
            love.graphics.scale(camera.sizeX, camera.sizeY)


            if stageImages[9]:isAnimated() then
                stageImages[9]:draw()
            end
            love.graphics.push()
            love.graphics.translate(stageImages[6].translation.x, stageImages[6].translation.y)
            for i = 1, 3 do 
                stageImages[6].x = (i - 1) * 5740
                stageImages[6]:draw()
            end
            love.graphics.pop()
            girlfriend:draw()
            stageImages[7]:draw()
            if ohnoHeAngy and enemy:getAnimName() ~= "scream" then
                enemyTwo:draw()
            else
                enemy:draw()
            end            
            stageImages[8]:draw()
			boyfriend:draw()
		love.graphics.pop()
        
        --[[
		love.graphics.push()
			love.graphics.translate(cam.x * 1.1, cam.y * 1.1)
		love.graphics.pop()

        --]]
    end,

    leave = function()
        stageImages[1] = nil
        stageImages[2] = nil
        stageImages[3] = nil
    end
}