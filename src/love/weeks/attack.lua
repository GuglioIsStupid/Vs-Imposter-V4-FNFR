local difficulty

local stageBack, stageFront, curtains

return {
	enter = function(self, from, songNum, songAppend)
		weeksJ:enter()

		week = 1
		weekString = "attack"


		song = 2

		stages["attack"]:enter()

		enemyIcon:animate("black", false)

		self:load()
	end,

	load = function(self)
		weeksJ:load()
		stages["attack"]:load()

		inst = love.audio.newSource("songs/monotone-attack/Inst.ogg", "stream")
		voices = love.audio.newSource("songs/monotone-attack/Voices.ogg", "stream")

		self:initUI()

		weeksJ:setupCountdown()
	end,

	initUI = function(self)
		weeksJ:initUI()

		weeksJ:generateNotes("songs/monotone-attack/monotone-attack-hard.json")
		weeksJ:generateOtherNotes("songs/monotone-attack/monotone-attack-other.json")
		weeksJ:generateEvents("songs/monotone-attack/events.json")


	end,

	update = function(self, dt)
		weeksJ:update(dt)

		stages["attack"]:update(dt)

		if health >= 80 then
			if enemyIcon:getAnimName() == "black" then
				enemyIcon:animate("black losing", false)
			end
		else
			if enemyIcon:getAnimName() == "black losing" then
				enemyIcon:animate("black", false)
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

		weeksJ:updateUI(dt)
	end,

	draw = function(self)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)
			love.graphics.scale(camera.esizeX, camera.esizeY)
			love.graphics.scale(camera.sizeX, camera.sizeY)

			stages["attack"]:draw()
			
			weeksJ:drawRating(0.9)
		love.graphics.pop()


		weeksJ:drawUI()
        
	end,

	leave = function(self)
		weeksJ:leave()
	end
}
