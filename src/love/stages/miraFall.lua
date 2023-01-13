return {
    enter = function()
        stageImages = {

        }

        video = love.graphics.newVideo("videos/ejected.ogv")


        enemy = love.filesystem.load("sprites/characters/parasite.lua")()
        boyfriend = love.filesystem.load("sprites/characters/bfFly.lua")()
        girlfriend = love.filesystem.load("sprites/characters/gffall.lua")()

        girlfriend.x, girlfriend.y = -200, -445
        enemy.x, enemy.y = -550, -500
        boyfriend.x, boyfriend.y = 260, -125
    end,

    load = function()
        vidHasStarted = false
        didFlash = false
        vidEnded = true
    end,

    update = function(self, dt)

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
			love.graphics.translate(cam.x * 0.9, cam.y * 0.9)


			girlfriend:draw()
		love.graphics.pop()
		love.graphics.push()
			love.graphics.translate(cam.x, cam.y)

			enemy:draw()
			boyfriend:draw()
		love.graphics.pop()
		love.graphics.push()
			love.graphics.translate(cam.x * 1.1, cam.y * 1.1)

		love.graphics.pop()
        if not vidHasStarted or video:isPlaying() then
            love.graphics.setColor(0, 0, 0)
            love.graphics.rectangle("fill", -1000, -1000, 10000, 10000)
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