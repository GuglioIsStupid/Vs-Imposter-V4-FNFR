return {
    enter = function()
        winColors = {
			{49, 162, 253}, -- Blue
			{49, 253, 140}, -- Green
			{251, 51, 245}, -- Magenta
			{253, 69, 49}, -- Orange
			{251, 166, 51}, -- Yellow
		}
        winAlpha = 1
		winColor = 1
        
        stageImages = {
            ["Sky"] = graphics.newImage(graphics.imagePath("week3/sky")), -- sky
            ["City"] = graphics.newImage(graphics.imagePath("week3/city")), -- city
            ["City Windows"] = graphics.newImage(graphics.imagePath("week3/city-windows")), -- city-windows
            ["Behind Train"] = graphics.newImage(graphics.imagePath("week3/behind-train")), -- behind-train
            ["Street"] = graphics.newImage(graphics.imagePath("week3/street")) -- street
        }

        stageImages["Behind Train"].y = -100
		stageImages["Behind Train"].sizeX, stageImages["Behind Train"].sizeY = 1.25, 1.25
		stageImages["Street"].y = -100
		stageImages["Street"].sizeX, stageImages["Street"].sizeY = 1.25, 1.25

		enemy = love.filesystem.load("sprites/week3/pico-enemy.lua")()

		girlfriend.x, girlfriend.y = -70, -140
		enemy.x, enemy.y = -480, 50
		enemy.sizeX = -1 -- Reverse, reverse!
		boyfriend.x, boyfriend.y = 165, 50
		
		daGoofyColours = {
			1, 1, 1, 1
		}
        
    end,

    load = function()

    end,

    update = function(self, dt)
        if beatHandler.onBeat() and beatHandler.getBeat() % 4 == 0 then
			winColor = winColor + 1

			if winColor > 5 then
				winColor = 1
			end

			winAlpha = 1
		end

        if winAlpha > 0 then
            winAlpha = winAlpha - ((bpm/260) * dt)
        end
    end,

    draw = function()
        local curWinColor = winColors[winColor]

        love.graphics.push()
			love.graphics.translate(camera.x * 0.25, camera.y * 0.25)
			love.graphics.translate(camera.ex * 0.25, camera.ey * 0.25)

			stageImages["Sky"]:draw()
		love.graphics.pop()
		love.graphics.push()
			love.graphics.translate(camera.x * 0.5, camera.y * 0.5)
			love.graphics.translate(camera.ex * 0.5, camera.ey * 0.5)

			stageImages["City"]:draw()
			graphics.setColor(curWinColor[1]/255, curWinColor[2]/255, curWinColor[3]/255, winAlpha)
			stageImages["City Windows"]:draw()
			graphics.setColor(1, 1, 1)
		love.graphics.pop()
		love.graphics.push()
			love.graphics.translate(camera.x * 0.9, camera.y * 0.9)
			love.graphics.translate(camera.ex * 0.9, camera.ey * 0.9)
			
			stageImages["Behind Train"]:draw()
			stageImages["Street"]:draw()

			girlfriend:draw()
		love.graphics.pop()
		love.graphics.push()
			love.graphics.translate(camera.x, camera.y)

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