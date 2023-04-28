local difficulty
local stageBack, stageFront, curtains

return {
	enter = function(self, from, songNum, songAppend)
		pauseColor = {129, 100, 223}
		weeksHenry:enter()
		stages["torture"]:enter()

		week = 1
		weekString = "torture"
		gameOverMusic = "normal"


		song = songNum
		difficulty = songAppend

		enemyIcon:animate("black", false)



		self:load()
	end,

	load = function(self)
		weeksHenry:load()
		stages["torture"]:load() 

		cutsceneAlpha = {1}
		doingIntro = true

		inst = love.audio.newSource("songs/torture/Inst.ogg", "stream")
		voices = love.audio.newSource("songs/torture/Voices.ogg", "stream")


		self:initUI()

		weeksHenry:setupCountdown()
	end,

	initUI = function(self)
		weeksHenry:initUI()

		weeksHenry:generateNotes("songs/torture/torture-hard.json")
		weeksHenry:generateEvents("songs/torture/events.json")

	end,

	update = function(self, dt)
		weeksHenry:update(dt)
		stages["torture"]:update(dt)

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



		weeksHenry:updateUI(dt)
	end,

	draw = function(self)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)

		

			stages["torture"]:draw()
			weeksHenry:drawRating(0.9)
		love.graphics.pop()




		if not doingIntro then
			weeksHenry:drawUI()
		end

	end,

	leave = function(self)
		stages["torture"]:leave()
		weeksHenry:leave()
	end
}
