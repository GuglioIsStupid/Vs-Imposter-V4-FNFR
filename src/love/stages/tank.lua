return {
    enter = function()
        stageImages = {
            ["Sky"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("week7/tankSky"))), -- tankSky
		    ["Ground"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("week7/tankGround"))), -- tankGround
            ["Watch Tower"] = love.filesystem.load("sprites/week7/tankWatchtower.lua")(), -- tankWatchtower
            ["Smoke Left"] = love.filesystem.load("sprites/week7/smokeLeft.lua")(), -- smokeLeft
		    ["Smoke Right"] = love.filesystem.load("sprites/week7/smokeRight.lua")() -- smokeRight
        }
        for i = 0, 5 do
            stageImages["Tank " .. i+1] = love.filesystem.load("sprites/week7/tank" .. i .. ".lua")() -- all the tank viewers
        end
        girlfriend = Character.girlfriendtankmen(0, 0)
		enemy = Character.tankman(0, 0)
        stageImages["Tank 1"].x, stageImages["Tank 1"].y = -1000, 603
		stageImages["Tank 2"].x, stageImages["Tank 2"].y = -675, 739
		stageImages["Tank 3"].x, stageImages["Tank 3"].y = -250, 614
		stageImages["Tank 4"].x, stageImages["Tank 4"].y = 250, 703
		stageImages["Tank 5"].x, stageImages["Tank 5"].y = 675, 606
		stageImages["Tank 6"].x, stageImages["Tank 6"].y = 1000, 618 

        stageImages["Sky"].sizeX, stageImages["Sky"].sizeY = 1.3, 1.3
        stageImages["Ground"].sizeX, stageImages["Ground"].sizeY = 1.3, 1.3
        stageImages["Ground"].y = 100

		girlfriend.x, girlfriend.y = -350, -150
		enemy.x, enemy.y = -100, 50
		boyfriend.x, boyfriend.y = 175, 175

        stageImages["Smoke Left"].x, stageImages["Smoke Left"].y = -1000, 250
		stageImages["Smoke Right"].x, stageImages["Smoke Right"].y = 1000, 250
		stageImages["Watch Tower"].x, stageImages["Watch Tower"].y = -670, 250

        enemy.sizeX = -1
    end,

    load = function()

    end,

    update = function(self, dt)
        stageImages["Watch Tower"]:update(dt)
        stageImages["Smoke Left"]:update(dt)
        stageImages["Smoke Right"]:update(dt)
        for i = 0, 5 do
            stageImages["Tank " .. i+1]:update(dt)
        end
    end,

    draw = function()
        love.graphics.push()
        love.graphics.translate(cam.x * 0.9, cam.y * 0.9)

        stageImages["Sky"]:draw()
        stageImages["Watch Tower"]:draw()
        stageImages["Smoke Left"]:draw()
        stageImages["Smoke Right"]:draw()
        stageImages["Ground"]:draw()
        if song ~= 3 then
            girlfriend:draw()
        else
            picoSpeaker:draw()
        end
    love.graphics.pop()
    love.graphics.push()
        love.graphics.translate(cam.x, cam.y)

        if not inCutscene then
            enemy:draw()
        end
        if inCutscene then
            if song ~= 3 then
                if tankCutscene[1]:isAnimated() then
                    tankCutscene[1]:draw()
                end
                if song == 1 then
                    if not tankCutscene[1]:isAnimated() then
                        tankCutscene[2]:draw()
                    end
                end
            end
        end
        boyfriend:draw()
        for i = 1, 6 do
            stageImages["Tank " .. i]:draw()
        end
    love.graphics.pop()
    love.graphics.push()
        love.graphics.translate(cam.x * 1.1, cam.y * 1.1)

    love.graphics.pop()
    end,

    leave = function()
        for i, v in pairs(stageImages) do
			v = nil
		end
    end
}