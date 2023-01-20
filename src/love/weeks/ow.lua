local difficulty
local stageBack, stageFront, curtains

return {
	enter = function(self, from, songNum, songAppend)
		pauseColor = {129, 100, 223}
		weeksOw:enter()

		week = 1

		song = songNum
		difficulty = songAppend

		weeksOw:setIcon("enemy", "daddy dearest")

		enemy = love.filesystem.load("sprites/characters/red.lua")()
		boyfriend = love.filesystem.load("sprites/characters/blue.lua")()
		enemyTwo = love.filesystem.load("sprites/characters/bluehit.lua")()

		cam.sizeX, cam.sizeY = 0.7, 0.7
		camScale.x, camScale.y = 0.7, 0.7

		enemy.x = -75
		boyfriend.x = 225
		enemyTwo.x = 225

		self:load()

	end,

	load = function(self)
		curEnemy = "both"
		weeksOw:load()

		inst = waveAudio:newSource("songs/ow/Inst.ogg", "stream")
		voices = waveAudio:newSource("songs/ow/Voices.ogg", "stream")


		self:initUI()

		weeksOw:setupCountdown()
	end,

	initUI = function(self)
		weeksOw:initUI()

		weeksOw:generateNotes("songs/ow/ow-hard.json")
		--weeksOw:generateEventsOld("songs/ow/events.json")

	end,

	update = function(self, dt)
		weeksOw:update(dt)
		enemyTwo:update(dt)
		if health[1] >= 80 then
			if enemyIcon:getAnimName() == "daddy dearest" then
				weeksOw:setIcon("enemy", "daddy dearest losing")
			end
		else
			if enemyIcon:getAnimName() == "daddy dearest losing" then
				weeksOw:setIcon("enemy", "daddy dearest")
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

		if boyfriend:getAnimName() ~= "idle" then 
			enemyTwo:animate("idle")
		end

		weeksOw:updateUI(dt)
	end,

	draw = function(self)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)
			love.graphics.scale(extraCamZoom.sizeX, extraCamZoom.sizeY)
			love.graphics.scale(cam.sizeX, cam.sizeY)
			love.graphics.translate(cam.x, cam.y)
			love.graphics.rectangle("fill", -1000, -1000, 5000, 6000) -- white rectangle :pleasure:
			enemy:draw()
		
			--boyfriend:draw()

			if enemyTwo:getAnimName() ~= "idle" then
				enemyTwo:draw()
			else
				boyfriend:draw()
			end

			weeksOw:drawRating(0.9)
		love.graphics.pop()
		
		weeksOw:drawTimeLeftBar()
		weeksOw:drawHealthBar()
		if not paused then
			weeksOw:drawUI()
		end
	end,

	leave = function(self)
		weeksOw:leave()
	end
}
