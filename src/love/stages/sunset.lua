return {
    enter = function()
        stageImages = {
            ["Sunset"] = graphics.newImage(graphics.imagePath("week4/sunset")),
            ["BG Limo"] = love.filesystem.load("sprites/week4/bg-limo.lua")(), -- bg-limo
            ["Limo Dancer"] = love.filesystem.load("sprites/week4/limo-dancer.lua")(), -- limo-dancer
            ["Limo"] = love.filesystem.load("sprites/week4/limo.lua")() -- limo
        }
        girlfriend = love.filesystem.load("sprites/week4/girlfriend.lua")()
        enemy = love.filesystem.load("sprites/week4/mommy-mearest.lua")()
        boyfriend = love.filesystem.load("sprites/week4/boyfriend.lua")()
        --fakeBoyfriend = love.filesystem.load("sprites/boyfriend.lua")() -- Used for game over

        --fakeBoyfriend.x, fakeBoyfriend.y = 350, -100
        stageImages["BG Limo"].y = 250
        stageImages["Limo Dancer"].y = -130
        stageImages["Limo"].y = 375
        girlfriend.x, girlfriend.y = 30, -50
        enemy.x, enemy.y = -380, -10
        boyfriend.x, boyfriend.y = 340, -100
    end,

    load = function()

    end,

    update = function(self, dt)
        stageImages["BG Limo"]:update(dt)
		stageImages["Limo Dancer"]:update(dt)
		stageImages["Limo"]:update(dt)

        if beatHandler.onBeat() and beatHandler.getBeat() % 2 == 0 then
			stageImages["Limo Dancer"]:animate("anim", false)

			stageImages["Limo Dancer"]:setAnimSpeed(14.4 / (60 / bpm))
		end
    end,

    draw = function()
        love.graphics.push()
			love.graphics.translate(camera.x * 0.5, camera.y * 0.5)
            love.graphics.translate(camera.ex * 0.5, camera.ey * 0.5)

			stageImages["Sunset"]:draw()

			stageImages["BG Limo"]:draw()
			for i = -475, 725, 400 do
				stageImages["Limo Dancer"].x = i

				stageImages["Limo Dancer"]:draw()
			end
		love.graphics.pop()
		love.graphics.push()
			love.graphics.translate(camera.x, camera.y)
            love.graphics.translate(camera.ex, camera.ey)

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