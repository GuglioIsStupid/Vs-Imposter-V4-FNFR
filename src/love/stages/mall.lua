return {
    enter = function()
        if song ~= 3 then
            stageImages = {
                ["Walls"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("week5/walls"))), -- walls
			    ["Escalator"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("week5/escalator"))), -- escalator
			    ["Christmas Tree"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("week5/christmas-tree"))), -- christmas tree
			    ["Snow"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("week5/snow"))) -- snow
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
        girlfriend = Character.girlfriendchristmas(0, 0, false)
		enemy = Character.dearestduo(0, 0)
		boyfriend = Character.boyfriendchristmas(0, 0)
		--fakeBoyfriend = love.filesystem.load("sprites/boyfriend.lua")() -- Used for game over

		girlfriend.x, girlfriend.y = -200, 0
		enemy.x, enemy.y = -1150, 0
		boyfriend.x, boyfriend.y = 300, 350
		--fakeBoyfriend.x, fakeBoyfriend.y = 300, 620
    end,

    load = function(self)
        if song == 3 then
            camScale.x, camScale.y = 0.9, 0.9
    
            if scaryIntro then
                cam.x, cam.y = -150, 750
                cam.sizeX, cam.sizeY = 2.5, 2.5
    
                graphics.setFade(1)
            else
                cam.sizeX, cam.sizeY = 0.9, 0.9
            end
    
            stageImages["Walls"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("week5/evil-bg"))) -- evil-bg
            stageImages["Christmas Tree"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("week5/evil-tree"))) -- evil-tree
            stageImages["Snow"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("week5/evil-snow"))) -- evil-snow
    
            stageImages["Walls"].y = -250
            stageImages["Christmas Tree"].x = 75
            stageImages["Christmas Tree"].sizeX, stageImages["Christmas Tree"].sizeY = 0.5, 0.5
            stageImages["Snow"].x, stageImages["snow"].y = -50, 770
    
        end
    end,

    update = function(self, dt)
        if song ~= 3 then
            stageImages["Top Bop"]:update(dt)
            stageImages["Bottom Bop"]:update(dt)
            stageImages["Santa"]:update(dt)

            if musicThres ~= oldMusicThres and math.fmod(absMusicTime, 60000 / bpm) < 100 then
                stageImages["Top Bop"]:animate("anim", false)
                stageImages["Bottom Bop"]:animate("anim", false)
                stageImages["Santa"]:animate("anim", false)
            end
        end
    end,

    draw = function()
        love.graphics.push()
			love.graphics.translate(cam.x * 0.5, cam.y * 0.5)

			stageImages["Walls"]:draw()
			if song ~= 3 then
				stageImages["Top Bop"]:draw()
				stageImages["Escalator"]:draw()
			end
			stageImages["Christmas Tree"]:draw()
		love.graphics.pop()
		love.graphics.push()
			love.graphics.translate(cam.x * 0.9, cam.y * 0.9)

			if song ~= 3 then
				stageImages["Bottom Bop"]:draw()
			end

			stageImages["Snow"]:draw()

			girlfriend:draw()
		love.graphics.pop()
		love.graphics.push()
			love.graphics.translate(cam.x, cam.y)

			if song ~= 3 then
				stageImages["Santa"]:draw()
			end
			enemy:draw()
			boyfriend:draw()
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