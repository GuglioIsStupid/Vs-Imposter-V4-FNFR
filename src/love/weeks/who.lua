local difficulty
local stageBack, stageFront, curtains

return {
	enter = function(self, from, songNum, songAppend)
		pauseColor = {129, 100, 223}
		weeksWho:enter()
		stages["who"]:enter()

		week = 1
		gameOverMusic = "normal"

		song = songNum
		difficulty = songAppend

		enemyIcon:animate("black", false)



		self:load()
	end,

	load = function(self)
		weeksWho:load()
		stages["who"]:load()


		inst = love.audio.newSource("songs/who/Inst.ogg", "stream")
		voices = love.audio.newSource("songs/who/Voices.ogg", "stream")


		self:initUI()

		weeksWho:setupCountdown()
	end,

	initUI = function(self)
		weeksWho:initUI()

		weeksWho:generateNotes("songs/who/who-hard.json")
		weeksWho:generateEvents("songs/who/events.json")

	end,

	update = function(self, dt)
		weeksWho:update(dt)
		stages["who"]:update(dt)

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


		weeksWho:updateUI(dt)
	end,

	draw = function(self)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)

	

			stages["who"]:draw()
			weeksWho:drawRating(0.9)
		love.graphics.pop()
		
		weeksWho:drawUI()
	end,

	leave = function(self)
		stages["who"]:leave()
		weeksWho:leave()
	end
}
