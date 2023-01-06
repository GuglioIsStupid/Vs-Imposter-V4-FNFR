return {
    enter = function()
        stageImages = {
            ["Sunset"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("week4/sunset"))),
            ["BG Limo"] = love.filesystem.load("sprites/week4/bg-limo.lua")(), -- bg-limo
            ["Limo Dancer"] = love.filesystem.load("sprites/week4/limo-dancer.lua")(), -- limo-dancer
            ["Limo"] = love.filesystem.load("sprites/week4/limo.lua")() -- limo
        }
        girlfriend = Character.girlfriendcar(0, 0)
        enemy = Character.momcar(0,0)
        boyfriend = Character.boyfriendcar(0,0)
        --fakeBoyfriend = love.filesystem.load("sprites/boyfriend.lua")() -- Used for game over

        --fakeBoyfriend.x, fakeBoyfriend.y = 350, -100
        stageImages["BG Limo"].y = 250
        stageImages["Limo Dancer"].y = -130
        stageImages["Limo"].y = 375
        girlfriend.x, girlfriend.y = -200, -375
        enemy.x, enemy.y = -500, -400
        boyfriend.x, boyfriend.y = 165, -315
    end,

    load = function()

    end,

    update = function(self, dt)
        stageImages["BG Limo"]:update(dt)
		stageImages["Limo Dancer"]:update(dt)
		stageImages["Limo"]:update(dt)

        if musicThres ~= oldMusicThres and math.fmod(absMusicTime, 120000 / bpm) < 100 then
			stageImages["Limo Dancer"]:animate("anim", false)

			stageImages["Limo Dancer"]:setAnimSpeed(14.4 / (60 / bpm))
		end
    end,

    draw = function()
        love.graphics.push()
			love.graphics.translate(cam.x * 0.5, cam.y * 0.5)
            love.graphics.translate(camEx.x * 0.5, camEx.y * 0.5)

			stageImages["Sunset"]:draw()

			stageImages["BG Limo"]:draw()
			for i = -475, 725, 400 do
				stageImages["Limo Dancer"].x = i

				stageImages["Limo Dancer"]:draw()
			end
		love.graphics.pop()
		love.graphics.push()
			love.graphics.translate(cam.x, cam.y)
            --love.graphics.translate(camEx.x, camEx.y)

			girlfriend:draw()
			stageImages["Limo"]:draw()
			enemy:draw()
			boyfriend:draw()
		love.graphics.pop()
    end,

    leave = function()
        for i, v in pairs(stageImages) do
			v = nil
		end
    end
}