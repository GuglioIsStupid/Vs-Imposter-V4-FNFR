return {
    enter = function()
        stageImages = {
            graphics.newImage(love.graphics.newImage(graphics.imagePath("greenWeek/buildingA"))),
            graphics.newImage(love.graphics.newImage(graphics.imagePath("greenWeek/buildingA2"))),
            graphics.newImage(love.graphics.newImage(graphics.imagePath("greenWeek/buildingB"))),
            graphics.newImage(love.graphics.newImage(graphics.imagePath("greenWeek/buildingB2"))),
            graphics.newImage(love.graphics.newImage(graphics.imagePath("greenWeek/speedLines"))),
            graphics.newImage(love.graphics.newImage(graphics.imagePath("greenWeek/scrollingClouds"))),
            graphics.newImage(love.graphics.newImage(graphics.imagePath("greenWeek/sky"))),

        }

        stageImages[1].translation = {x = 0, y = 0}
        stageImages[2].translation = {x = 0, y = 0}
        stageImages[3].translation = {x = 0, y = 0}
        stageImages[4].translation = {x = 0, y = 0}
        stageImages[5].translation = {x = 0, y = 0}
        stageImages[6].translation = {x = 0, y = 0}



        stageImages[1].sizeX, stageImages[1].sizeY = 0.5, 0.5
        stageImages[3].sizeX, stageImages[3].sizeY = 0.7, 0.7

        stageImages[2].x = -331



        video = love.graphics.newVideo("videos/ejected.ogv")


        enemy = love.filesystem.load("sprites/characters/parasite.lua")()
        boyfriend = love.filesystem.load("sprites/characters/bfFly.lua")()
        girlfriend = love.filesystem.load("sprites/characters/gffall.lua")()

        boyfriend.sizeX, boyfriend.sizeY = 0.6, 0.6

        if love.math.random(1, 100) == 1 then
            girlfriend.sizeX = 0.7
        else
            girlfriend.sizeX, girlfriend.sizeY = 0.6, 0.6
        end
        enemy.sizeX, enemy.sizeY = 1.05, 1.05

        girlfriend.x, girlfriend.y = -114, -101
        enemy.x, enemy.y = -462, -61
        boyfriend.x, boyfriend.y = 495, 159
    end,

    load = function()
        vidHasStarted = false
        didFlash = false
        vidEnded = true
    end,

    update = function(self, dt)


        stageImages[1].translation.y = stageImages[1].translation.y - 10000 * dt
        if stageImages[1].translation.y < -9976 then
            stageImages[1].translation.y = 0
        end





        stageImages[2].translation.y = stageImages[2].translation.y - 10000 * dt
        if stageImages[2].translation.y < -5555 then
            stageImages[2].translation.y = 0
        end




        stageImages[3].translation.y = stageImages[3].translation.y - 10000 * dt
        if stageImages[3].translation.y < -6936 then
            stageImages[3].translation.y = 0
        end




        stageImages[4].translation.y = stageImages[4].translation.y - 10000 * dt
        if stageImages[4].translation.y < -2539 then
            stageImages[4].translation.y = 0
        end



        stageImages[5].translation.y = stageImages[5].translation.y - 10000 * dt
        if stageImages[5].translation.y < -4170 then
            stageImages[5].translation.y = 0
        end



        stageImages[6].translation.y = stageImages[6].translation.y - 10000 * dt
        if stageImages[6].translation.y < -1024 then
            stageImages[6].translation.y = 0
        end






        if inst:isPlaying() and not vidHasStarted and song == 4 then
            vidHasStarted = true
            video:play()
        end

        if vidEnded and not didFlash then
            didFlash = true
            weeks:doFlash()
        end

        if not video:isPlaying() and not didFlash then
            vidEnded = true
        end



    end,

    draw = function()
        love.graphics.push()
        --love.graphics.translate(cam.x * 0.9, cam.y * 0.9)
            stageImages[7]:draw()
            love.graphics.translate(stageImages[1].translation.x, stageImages[1].translation.y)
            for i = 1, 4 do 
                stageImages[1].y = (i - 1) * 9976
                stageImages[1]:draw()
            end
            love.graphics.pop()

            love.graphics.push()
            love.graphics.translate(stageImages[2].translation.x, stageImages[2].translation.y)
            for i = 1, 4 do 
                stageImages[2].y = (i - 1) * 5555
                stageImages[2]:draw()
            end
            love.graphics.pop()

            love.graphics.push()
            love.graphics.translate(stageImages[3].translation.x, stageImages[3].translation.y)
            for i = 1, 4 do 
                stageImages[3].y = (i - 1) * 6936
                stageImages[3]:draw()
            end
            love.graphics.pop()

            love.graphics.push()
            love.graphics.translate(stageImages[4].translation.x, stageImages[4].translation.y)
            for i = 1, 4 do 
                stageImages[4].y = (i - 1) * 2539
                stageImages[4]:draw()
            end
            love.graphics.pop()

            love.graphics.push()
            love.graphics.translate(stageImages[5].translation.x, stageImages[5].translation.y)
            for i = 1, 4 do 
                stageImages[5].y = (i - 1) * 4170
                stageImages[5]:draw()
            end
            love.graphics.pop()

            love.graphics.push()
            love.graphics.translate(stageImages[2].translation.x, stageImages[5].translation.y)
            for i = 1, 4 do 
                stageImages[5].y = (i - 1) * 1024
                stageImages[5]:draw()
            end
        love.graphics.pop()









		love.graphics.push()
		--	love.graphics.translate(cam.x, cam.y)
            girlfriend:draw()
			enemy:draw()
			boyfriend:draw()
		love.graphics.pop()
        if not vidHasStarted or video:isPlaying() then
            love.graphics.setColor(0, 0, 0)
            --love.graphics.rectangle("fill", -1000, -1000, 10000, 10000)
            love.graphics.setColor(1, 1, 1)
        end
        if video:isPlaying() then
            love.graphics.draw(video, -750, -450, 0, 1.2, 1.2)
        end
    end,

    leave = function()
        stageImages[1] = nil
        stageImages[2] = nil
        stageImages[3] = nil
        video:release()
        collectgarbage()
    end
}