local difficulty

local stageBack, stageFront, curtains

return {
	enter = function(self, from, songNum, songAppend)
		pauseColor = {129, 100, 223}
		weeks:enter()
		stages["pinkMira"]:enter()

		week = 1

		song = songNum
		difficulty = songAppend

		weeks:setIcon("enemy", "red impostor 1")

        enemy = love.filesystem.load("sprites/characters/white.lua")()

        flashAlpha = 0

		self:load()
	end,

	load = function(self)
		weeks:load()
		stages["pinkMira"]:load()

		if song == 3 then
			inst = waveAudio:newSource("songs/pretender/Inst.ogg", "stream")
			voices = waveAudio:newSource("songs/pretender/Voices.ogg", "stream")
		elseif song == 2 then
			inst = waveAudio:newSource("songs/pinkwave/Inst.ogg", "stream")
			voices = waveAudio:newSource("songs/pinkwave/Voices.ogg", "stream")
		else
			inst = waveAudio:newSource("songs/heartbeat/Inst.ogg", "stream")
			voices = waveAudio:newSource("songs/heartbeat/Voices.ogg", "stream")
		end

		self:initUI()

		weeks:setupCountdown()
	end,

	initUI = function(self)
		weeks:initUI()

		if song == 3 then
			weeks:generateNotes("songs/pretender/pretender-hard.json")
            --weeks:generateEventsOld("songs/pretender/events.json")
		elseif song == 2 then
			weeks:generateNotes("songs/pinkwave/pinkwave-hard.json")
           -- weeks:generateEventsOld("songs/pinkwave/events.json")
		else
			weeks:generateNotes("songs/heartbeat/heartbeat-hard.json")
           -- weeks:generateEventsOld("songs/heatbeat/events.json")
		end
	end,

	update = function(self, dt)
		weeks:update(dt)
		stages["pinkMira"]:update(dt)

        -- lerp flashAlpha to 0
        flashAlpha = coolUtil.lerp(flashAlpha, 0, coolUtil.boundTo(0, dt * 5, 1))

		if health[1] >= 80 then
			if enemyIcon:getAnimName() == "red impostor 1" then
				weeks:setIcon("enemy", "red impostor 1 losing")
			end
		else
			if enemyIcon:getAnimName() == "red impostor 1 losing" then
				weeks:setIcon("enemy", "red impostor 1")
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

		weeks:updateUI(dt)
	end,

	draw = function(self)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)
			love.graphics.scale(extraCamZoom.sizeX, extraCamZoom.sizeY)
			love.graphics.scale(cam.sizeX, cam.sizeY)

			stages["pinkMira"]:draw()
			
			weeks:drawRating(0.9)
		love.graphics.pop()

        graphics.setColor(1,0,0,flashAlpha)
        love.graphics.rectangle("fill", 0, 0, graphics.getWidth(), graphics.getHeight())
        graphics.setColor(1,1,1,1)

		weeks:drawTimeLeftBar()
		weeks:drawHealthBar()
		if not paused then
			weeks:drawUI()
		end
	end,

	leave = function(self)
		weeks:leave()
	end
}
