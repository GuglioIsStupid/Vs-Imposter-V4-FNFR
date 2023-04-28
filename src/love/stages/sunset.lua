return {
    enter = function()
        stageImages = {
            ["Sunset"] = graphics.newImage(graphics.imagePath("week4/sunset")),
            ["BG Limo"] = love.filesystem.load("sprites/week4/bg-limo.lua")(), -- bg-limo
            ["Limo Dancer"] = love.filesystem.load("sprites/week4/limo-dancer.lua")(), -- limo-dancer
            ["Limo"] = love.filesystem.load("sprites/week4/limo.lua")(), -- limo
            ["Fast Car"] = graphics.newImage(graphics.imagePath("week4/fastCarLol")) -- fast-car
        }
        girlfriend = love.filesystem.load("sprites/week4/girlfriend.lua")()
        enemy = love.filesystem.load("sprites/week4/mommy-mearest.lua")()
        boyfriend = love.filesystem.load("sprites/week4/boyfriend.lua")()
        fakeBoyfriend = love.filesystem.load("sprites/boyfriend.lua")() -- Used for game over

        sounds.car = {
            love.audio.newSource("sounds/week4/carPass0.ogg", "static"),
            love.audio.newSource("sounds/week4/carPass1.ogg", "static"),
        }
        sounds.car[1]:setVolume(0.7)
        sounds.car[2]:setVolume(0.7)

        fakeBoyfriend.x, fakeBoyfriend.y = 350, -100
        stageImages["BG Limo"].y = 250
        stageImages["Limo Dancer"].y = -130
        stageImages["Limo"].y = 375

        stageImages["Fast Car"].x = -12600
        stageImages["Fast Car"].y = love.math.random(140, 250)
        stageImages["Fast Car"].vx = 0
        stageImages["Fast Car"].canDrive = true

        girlfriend.x, girlfriend.y = 30, -50
        enemy.x, enemy.y = -380, -10
        boyfriend.x, boyfriend.y = 340, -100

        function resetFastCar()
            stageImages["Fast Car"].x = -12600
            stageImages["Fast Car"].y = 375 + love.math.random(140, 250)
            stageImages["Fast Car"].vx = 0
            stageImages["Fast Car"].canDrive = true
        end

        function fastCarDrive(dt)
            audio.playSound(sounds.car[love.math.random(2)])

            stageImages["Fast Car"].canDrive = false
            stageImages["Fast Car"].vx = (love.math.random(170, 220) / dt) * 0.25
            if carTimer then
                Timer.cancel(carTimer)
            end
            carTimer = Timer.after(2, function()
                resetFastCar()
                carTimer = nil
            end)

            print("Porn balls")
        end
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

        if love.math.random(500) == 100 and stageImages["Fast Car"].canDrive then
            fastCarDrive(dt)
        end

        stageImages["Fast Car"].x = stageImages["Fast Car"].x + stageImages["Fast Car"].vx * dt
        print(stageImages["Fast Car"].x)
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

            stageImages["Fast Car"]:draw()
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

		graphics.clearCache()
    end
}