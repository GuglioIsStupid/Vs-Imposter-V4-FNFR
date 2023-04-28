return {
    enter = function()
        if song ~= 3 then
            stageImages = {
                ["Walls"] = graphics.newImage(graphics.imagePath("week5/walls")), -- walls
			    ["Escalator"] = graphics.newImage(graphics.imagePath("week5/escalator")), -- escalator
			    ["Christmas Tree"] = graphics.newImage(graphics.imagePath("week5/christmas-tree")), -- christmas tree
			    ["Snow"] = graphics.newImage(graphics.imagePath("week5/snow")) -- snow
            }

			stageImages["Escalator"].x = 125
			stageImages["Christmas Tree"].x = 75
			stageImages["Snow"].y = 850
			stageImages["Snow"].sizeX, stageImages["Snow"].sizeY = 2, 2

			stageImages["Top Bop"] = love.filesystem.load("sprites/week5/top-bop.lua")() -- top-bop
			stageImages["Bottom Bop"] = love.filesystem.load("sprites/week5/bottom-bop.lua")() -- bottom-bop
			stageImages["Santa"] = love.filesystem.load("sprites/week5/santa.lua")() -- santa

			stageImages["Top Bop"].x, stageImages["Top Bop"].y = 60, -250
			stageImages["Bottom Bop"].x, stageImages["Bottom Bop"].y = -75, 375
			stageImages["Santa"].x, stageImages["Santa"].y = -1350, 410
		end
        girlfriend = love.filesystem.load("sprites/week5/girlfriend.lua")()
		enemy = love.filesystem.load("sprites/week5/dearest-duo.lua")()
		boyfriend = love.filesystem.load("sprites/week5/boyfriend.lua")()
		fakeBoyfriend = love.filesystem.load("sprites/boyfriend.lua")() -- Used for game over

		camera.defaultZoom = 0.9

		girlfriend.x, girlfriend.y = -50, 410
		enemy.x, enemy.y = -780, 410
		boyfriend.x, boyfriend.y = 300, 620
		fakeBoyfriend.x, fakeBoyfriend.y = 300, 620
    end,

    load = function(self)
        if song == 3 then
            camera.defaultZoom = 0.9
    
            if scaryIntro then
                camera.x, camera.y = -150, 750
                camera.zoom = 2.5
    
                graphics.setFade(1)
            else
                camera.zoom = 0.9 
            end
    
            stageImages["Walls"] = graphics.newImage(graphics.imagePath("week5/evil-bg")) -- evil-bg
            stageImages["Christmas Tree"] = graphics.newImage(graphics.imagePath("week5/evil-tree")) -- evil-tree
            stageImages["Snow"] = graphics.newImage(graphics.imagePath("week5/evil-snow")) -- evil-snow
    
            stageImages["Walls"].y = -250
            stageImages["Christmas Tree"].x = 75
            stageImages["Christmas Tree"].sizeX, stageImages["Christmas Tree"].sizeY = 0.5, 0.5
            stageImages["Snow"].x, stageImages["Snow"].y = -50, 770
    
        end
    end,

    update = function(self, dt)
        if song ~= 3 then
            stageImages["Top Bop"]:update(dt)
            stageImages["Bottom Bop"]:update(dt)
            stageImages["Santa"]:update(dt)

            if beatHandler.onBeat() then
				stageImages["Top Bop"]:animate("anim", false)
				stageImages["Bottom Bop"]:animate("anim", false)
				stageImages["Santa"]:animate("anim", false)
			end
        end
    end,

    draw = function()
        love.graphics.push()
			love.graphics.translate(camera.x * 0.5, camera.y * 0.5)
			love.graphics.translate(camera.ex * 0.5, camera.ey * 0.5)

			stageImages["Walls"]:draw()
			if song ~= 3 then
				stageImages["Top Bop"]:draw()
				stageImages["Escalator"]:draw()
			end
			stageImages["Christmas Tree"]:draw()
		love.graphics.pop()
		love.graphics.push()
			love.graphics.translate(camera.x * 0.9, camera.y * 0.9)
			love.graphics.translate(camera.ex * 0.9, camera.ey * 0.9)

			if song ~= 3 then
				stageImages["Bottom Bop"]:draw()
			end

			stageImages["Snow"]:draw()

			girlfriend:draw()
		love.graphics.pop()
		love.graphics.push()
			love.graphics.translate(camera.x, camera.y)
			love.graphics.translate(camera.ex, camera.ey)

			if song ~= 3 then
				stageImages["Santa"]:draw()
			end
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