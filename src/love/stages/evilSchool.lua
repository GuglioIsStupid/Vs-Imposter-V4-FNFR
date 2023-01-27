return {
    enter = function()
		pixel = true
		love.graphics.setDefaultFilter("nearest")
        stageImages = {
			["Evil School"] = love.filesystem.load("sprites/week6/evil-school.lua")() -- evil school
        }
        enemy = love.filesystem.load("sprites/week6/spirit.lua")()
		enemy.x, enemy.y = -340, -20

        girlfriend.x, girlfriend.y = 30, -50
		boyfriend.x, boyfriend.y = 300, 190
		fakeBoyfriend.x, fakeBoyfriend.y = 300, 190
		curEnemy = "spirit"
		curPlayer = "pixelboyfriend"
    end,

    load = function(self)
        
    end,

    update = function(self, dt)
		stageImages["Evil School"]:update(dt)
    end,

    draw = function()
        love.graphics.push()
			love.graphics.translate(camera.x * 0.9, camera.y * 0.9)
			love.graphics.translate(camera.ex * 0.9, camera.ey * 0.9)

			stageImages["Evil School"]:udraw()

			girlfriend:udraw()
		love.graphics.pop()
		love.graphics.push()
			love.graphics.translate(camera.x, camera.y)
			love.graphics.translate(camera.ex, camera.ey)

			enemy:udraw()
			boyfriend:udraw()
		love.graphics.pop()
    end,

    leave = function()
        for i, v in pairs(stageImages) do
			v = nil
		end
    end
}