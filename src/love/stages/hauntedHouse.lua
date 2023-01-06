return {
    enter = function()
        stageImages = {
            ["Haunted House"] = love.filesystem.load("sprites/week2/haunted-house.lua")() -- Haunted House
        }
        
		enemy = Character.spookykids(0,0)

		girlfriend.x, girlfriend.y = -300, -325
		enemy.x, enemy.y = -610, -150
		boyfriend.x, boyfriend.y = 85, 25
    end,

    load = function()
    end,

    update = function(self, dt)
        stageImages["Haunted House"]:update(dt)
        if not stageImages["Haunted House"]:isAnimated() then
			stageImages["Haunted House"]:animate("normal", false)
		end
        if musicThres ~= oldMusicThres and math.fmod(absMusicTime, 60000 * (love.math.random(17) + 7) / bpm) < 100 then
			audio.playSound(sounds["thunder"][love.math.random(2)])

			stageImages["Haunted House"]:animate("lightning", false)
			weeks:safeAnimate(girlfriend, "fear", true, 1)
			weeks:safeAnimate(boyfriend, "shaking", true, 3)
		end
    end,

    draw = function()
        love.graphics.push()
			love.graphics.translate(cam.x * 0.9, cam.y * 0.9)

			stageImages["Haunted House"]:draw()
			girlfriend:draw()
		love.graphics.pop()
		love.graphics.push()
			love.graphics.translate(cam.x, cam.y)

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