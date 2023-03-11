local difficulty

local stageBack, stageFront, curtains

return {
	enter = function(self, from, songNum, songAppend)
		weeks:enter()
		stages["monotone"]:enter()

		week = 1
		weekString = "identity"


		song = songNum
		difficulty = songAppend

		enemyIcon:animate("red impostor 1", false)

        flashAlpha = 0

		function ReactorBeep(alpha)
			flashAlpha = alpha
		end

		self:load()
	end,

	load = function(self)
		weeks:load()
		stages["monotone"]:load()

		inst = love.audio.newSource("songs/identity-crisis/Inst.ogg", "stream")
		voices = love.audio.newSource("songs/identity-crisis/Voices.ogg", "stream")

		self:initUI()

		weeks:setupCountdown()
	end,

	initUI = function(self)
		weeks:initUI()

		weeks:generateNotes("songs/identity-crisis/identity-crisis-hard.json")
		weeks:generateEvents("songs/identity-crisis/events.json")
	end,

	update = function(self, dt)
		weeks:update(dt)
		stages["monotone"]:update(dt)

        -- lerp flashAlpha to 0
        flashAlpha = util.lerp(flashAlpha, 0, util.clamp(0, dt * 5, 1))

		if health >= 80 then
			if enemyIcon:getAnimName() == "red impostor 1" then
				enemyIcon:animate("red impostor 1 losing", false)
			end
		else
			if enemyIcon:getAnimName() == "red impostor 1 losing" then
				enemyIcon:animate("red impostor 1", false)
			end
		end

		if not (countingDown or graphics.isFading()) and not (inst:isPlaying() and voices:isPlaying()) and not paused then
			campaignScore = campaignScore + score
			status.setLoading(true)

			graphics.fadeOut(
				0.5,
				function()
			    	Gamestate.switch(beansCounter)

					status.setLoading(false)
				end
			)
		end

		weeks:updateUI(dt)
	end,

	draw = function(self)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)
			love.graphics.scale(camera.esizeX, camera.esizeY)
			love.graphics.scale(camera.sizeX, camera.sizeY)

			stages["monotone"]:draw()
			
			weeks:drawRating(0.9)
		love.graphics.pop()

        graphics.setColor(1,0,0,flashAlpha)
        love.graphics.rectangle("fill", 0, 0, graphics.getWidth(), graphics.getHeight())
        graphics.setColor(1,1,1,1)

		weeks:drawUI()
	end,

	leave = function(self)
		weeks:leave()
	end
}
