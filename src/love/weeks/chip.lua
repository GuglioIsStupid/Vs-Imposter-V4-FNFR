local difficulty
local stageBack, stageFront, curtains

return {
	enter = function(self, from, songNum, songAppend)
		pauseColor = {129, 100, 223}
		weeksChip:enter()
		stages["chip"]:enter()

		week = 1
		weekString = "chip"
		gameOverMusic = "normal"


		song = songNum
		difficulty = songAppend

		enemyIcon:animate("black", false)

		self:load()
	end,

	load = function(self)
		weeksChip:load()
		stages["chip"]:load()


		if song == 3 then
			inst = love.audio.newSource("songs/torture/Inst.ogg", "stream")
			voices = love.audio.newSource("songs/torture/Voices.ogg", "stream")
		elseif song == 2 then
			inst = love.audio.newSource("songs/chipping/Inst.ogg", "stream")
			voices = love.audio.newSource("songs/chipping/Voices.ogg", "stream")
		else
			inst = love.audio.newSource("songs/chippin/Inst.ogg", "stream")
			voices = love.audio.newSource("songs/chippin/Voices.ogg", "stream")
		end


		self:initUI()

		weeksChip:setupCountdown()
	end,

	initUI = function(self)
		weeksChip:initUI()

		if song == 3 then
			weeksChip:generateNotes("songs/torture/torture-hard.json")
			--weeksChip:generateEvents("songs/torture/events.json")
		elseif song == 2 then
			weeksChip:generateNotes("songs/chipping/chipping-hard.json")
			--weeksChip:generateEvents("songs/chipping/events.json")
		else
			weeksChip:generateNotes("songs/chippin/chippin-hard.json")
			--weeksChip:generateEvents("songs/chippin/events.json")
		end

	end,

	update = function(self, dt)
		weeksChip:update(dt)
		stages["chip"]:update(dt)

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


		weeksChip:updateUI(dt)
	end,

	draw = function(self)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)

			stages["chip"]:draw()
			weeksChip:drawRating(0.9)
		love.graphics.pop()
		
		weeksChip:drawUI()
	end,

	leave = function(self)
		stages["chip"]:leave()
		weeksChip:leave()
	end
}
