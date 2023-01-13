local difficulty

local stageBack, stageFront, curtains

return {
	enter = function(self, from, songNum, songAppend)
		pauseColor = {129, 100, 223}
		weeks:enter()
		stages["polus1"]:enter()

		week = 1

		song = songNum
		difficulty = songAppend

		weeks:setIcon("enemy", "red impostor 1")

        enemy = love.filesystem.load("sprites/characters/boyfriend.lua")()

        flashAlpha = 0

		self:load()
	end,

	load = function(self)
		weeks:load()
		stages["polus1"]:load()

		if song == 3 then
			inst = waveAudio:newSource("songs/meltdown/Inst.ogg", "stream")
			voices = waveAudio:newSource("songs/meltdown/Voices.ogg", "stream")
		elseif song == 2 then
			inst = waveAudio:newSource("songs/sabotage/Inst.ogg", "stream")
			voices = waveAudio:newSource("songs/sabotage/Voices.ogg", "stream")
		else
			inst = waveAudio:newSource("songs/sussus-moogus/Inst.ogg", "stream")
			voices = waveAudio:newSource("songs/sussus-moogus/Voices.ogg", "stream")
		end

		self:initUI()

		weeks:setupCountdown()
	end,

	initUI = function(self)
		weeks:initUI()

		if song == 3 then
			weeks:generateNotes("songs/meltdown/meltdown-hard.json")
            weeks:generateEventsOld("songs/meltdown/events.json")
		elseif song == 2 then
			weeks:generateNotes("songs/sabotage/sabotage-hard.json")
            weeks:generateEventsOld("songs/sabotage/events.json")
		else
			weeks:generateNotes("songs/sussus-moogus/sussus-moogus-hard.json")
            weeks:generateEventsOld("songs/sussus-moogus/events.json")
		end
	end,

	update = function(self, dt)
		weeks:update(dt)
		stages["polus1"]:update(dt)

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

			stages["polus1"]:draw()
			
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
