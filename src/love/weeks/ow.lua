local difficulty
local stageBack, stageFront, curtains

return {
	enter = function(self, from, songNum, songAppend)
		pauseColor = {129, 100, 223}
		weeksHenry:enter()

		week = 1

		song = songNum
		difficulty = songAppend

		weeksHenry:setIcon("enemy", "daddy dearest")

		enemy = love.filesystem.load("sprites/characters/red.lua")()
		boyfriend = love.filesystem.load("sprites/characters/blue.lua")()
		enemyTwo = love.filesystem.load("sprites/characters/bluehit.lua")()

		self:load()

	end,

	load = function(self)
		curEnemy = "both"
		weeksHenry:load()

		inst = waveAudio:newSource("songs/ow/Inst.ogg", "stream")
		voices = waveAudio:newSource("songs/ow/Voices.ogg", "stream")


		self:initUI()

		weeksHenry:setupCountdown()
	end,

	initUI = function(self)
		weeksHenry:initUI()

		weeksHenry:generateNotes("songs/ow/ow-hard.json")
		--weeksHenry:generateEventsOld("songs/ow/events.json")

	end,

	update = function(self, dt)
		weeksHenry:update(dt)
		enemyTwo:update(dt)

		if health[1] >= 80 then
			if enemyIcon:getAnimName() == "daddy dearest" then
				weeksHenry:setIcon("enemy", "daddy dearest losing")
			end
		else
			if enemyIcon:getAnimName() == "daddy dearest losing" then
				weeksHenry:setIcon("enemy", "daddy dearest")
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

		weeksHenry:updateUI(dt)
	end,

	draw = function(self)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)
			love.graphics.scale(extraCamZoom.sizeX, extraCamZoom.sizeY)
			love.graphics.scale(cam.sizeX, cam.sizeY)
			love.graphics.translate(cam.x, cam.y)
			enemy:draw()
		
			--boyfriend:draw()

			if enemyTwo:isAnimated() and not enemyTwo:getAnimName() == "idle" then
				enemyTwo:draw()
			else
				boyfriend:draw()
			end

			weeksHenry:drawRating(0.9)
		love.graphics.pop()
		
		weeksHenry:drawTimeLeftBar()
		weeksHenry:drawHealthBar()
		if not paused then
			weeksHenry:drawUI()
		end
	end,

	leave = function(self)
		weeksHenry:leave()
	end
}
