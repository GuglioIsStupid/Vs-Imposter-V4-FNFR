return {
    enter = function()
        stageImages = {
            ["Sky"] = graphics.newImage(graphics.imagePath("week7/tankSky")), -- tankSky
		    ["Ground"] = graphics.newImage(graphics.imagePath("week7/tankGround")), -- tankGround
            ["Watch Tower"] = love.filesystem.load("sprites/week7/tankWatchtower.lua")(), -- tankWatchtower
            ["Smoke Left"] = love.filesystem.load("sprites/week7/smokeLeft.lua")(), -- smokeLeft
		    ["Smoke Right"] = love.filesystem.load("sprites/week7/smokeRight.lua")() -- smokeRight
        }
        for i = 0, 5 do
            stageImages["Tank " .. i+1] = love.filesystem.load("sprites/week7/tank" .. i .. ".lua")() -- all the tank viewers
        end
        girlfriend = love.filesystem.load("sprites/week7/gfTankmen.lua")()
		enemy = love.filesystem.load("sprites/week7/tankmanCaptain.lua")()
        stageImages["Tank 1"].x, stageImages["Tank 1"].y = -1000, 603
		stageImages["Tank 2"].x, stageImages["Tank 2"].y = -675, 739
		stageImages["Tank 3"].x, stageImages["Tank 3"].y = -250, 614
		stageImages["Tank 4"].x, stageImages["Tank 4"].y = 250, 703
		stageImages["Tank 5"].x, stageImages["Tank 5"].y = 675, 606
		stageImages["Tank 6"].x, stageImages["Tank 6"].y = 1000, 618 

        stageImages["Sky"].sizeX, stageImages["Sky"].sizeY = 1.3, 1.3
        stageImages["Ground"].sizeX, stageImages["Ground"].sizeY = 1.3, 1.3
        stageImages["Ground"].y = 100

		girlfriend.x, girlfriend.y = 15, 190
		enemy.x, enemy.y = -560, 340
		boyfriend.x, boyfriend.y = 460, 423

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
        if beatHandler.onBeat() and beatHandler.getBeat() % 2 == 0 then
            for i = 0, 5 do
                stageImages["Tank " .. i+1]:animate("anim", false)
            end
        end
    end,

    draw = function()
        love.graphics.push()
        love.graphics.translate(camera.x * 0.9, camera.y * 0.9)
        love.graphics.translate(camera.ex * 0.9, camera.ey * 0.9)

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
            love.graphics.translate(camera.x, camera.y)
            love.graphics.translate(camera.ex, camera.ey)

            if not inCutscene then
                enemy:draw()
            end
            boyfriend:draw()
            for i = 1, 6 do
                stageImages["Tank " .. i]:draw()
            end
        love.graphics.pop()
    end,

    leave = function()
        for i, v in pairs(stageImages) do
			v = nil
		end
    end
}