local difficulty
local stageBack, stageFront, curtains

return {
	enter = function(self, from, songNum, songAppend)
		pauseColor = {129, 100, 223}
		weeksFinale:enter()
		stages["finale"]:enter()

		week = 1

		song = songNum
		difficulty = songAppend

		weeksFinale:setIcon("enemy", "daddy dearest")

        enemy = love.filesystem.load("sprites/characters/boyfriend.lua")()

		self:load()
	end,

	load = function(self)
		weeksFinale:load()
		stages["finale"]:load()

		inst = waveAudio:newSource("songs/finale/Inst.ogg", "stream")
		voices = waveAudio:newSource("songs/finale/Voices.ogg", "stream")

		self:initUI()

		weeksFinale:setupCountdown()
	end,

	initUI = function(self)
		weeksFinale:initUI()

		weeksFinale:generateNotes("songs/finale/finale-hard.json")
		weeksFinale:generateEventsOld("songs/finale/events.json")
	end,

	update = function(self, dt)
		weeksFinale:update(dt)
		stages["finale"]:update(dt)

		if health >= 80 then
			if enemyIcon:getAnimName() == "daddy dearest" then
				weeksFinale:setIcon("enemy", "daddy dearest losing")
			end
		else
			if enemyIcon:getAnimName() == "daddy dearest losing" then
				weeksFinale:setIcon("enemy", "daddy dearest")
			end
		end

		if not (countingDown or graphics.isFading()) and not (inst:getDuration() > musicTime/1000) and not paused then
			if storyMode and song < 3 then
				if score > highscores[weekNum-1][difficulty].scores[song] then
					highscores[weekNum-1][difficulty].scores[song] = score
					saveHighscores()
				end
				newAccuracy = convertedAcc:gsub("%%", "")
				if tonumber(newAccuracy) > highscores[weekNum-1][difficulty].accuracys[song] then
					print("New accuracy: " .. newAccuracy)
					highscores[weekNum-1][difficulty].accuracys[song] = tonumber(newAccuracy)
					saveHighscores()
				end
				song = song + 1

				self:load()
			else
				status.setLoading(true)

				graphics.fadeOut(
					0.5,
					function()
						Gamestate.switch(menu)

						status.setLoading(false)
					end
				)
			end
		end

		weeksFinale:updateUI(dt)
	end,

	draw = function(self)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)
			love.graphics.scale(extraCamZoom.sizeX, extraCamZoom.sizeY)
			love.graphics.scale(cam.sizeX, cam.sizeY)
			stages["finale"]:draw()
			weeksFinale:drawRating(0.9)
		love.graphics.pop()
		
		weeksFinale:drawTimeLeftBar()
		weeksFinale:drawHealthBar()
		if not paused then
			weeksFinale:drawUI()
		end
	end,

	leave = function(self)
		weeksFinale:leave()
	end
}
