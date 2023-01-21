local difficulty

local stageBack, stageFront, curtains

return {
	enter = function(self, from, songNum, songAppend)
		pauseColor = {129, 100, 223}
		weeksPink:enter()
		stages["pinkMira"]:enter()

		cam.sizeX, cam.sizeY = 0.7, 0.7
		camScale.x, camScale.y = 0.7, 0.7
		cam.x = -enemy.x - 300
		cam.y = -50

		week = 1

		song = songNum
		difficulty = songAppend

		weeksPink:setIcon("enemy", "red impostor 1")

        enemy = love.filesystem.load("sprites/characters/pink.lua")()

        boyfriend.x, boyfriend.y = 496, 350
        girlfriend.x, girlfriend.y = 25, 107
        enemy.x, enemy.y = -432, 293

        flashAlpha = 0

		self:load()
	end,

	load = function(self)
		weeksPink:load()
		stages["pinkMira"]:load()

		if song == 3 then
			stages["pinkMira"]:leave()
			stages["greyMira"]:enter()

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

		weeksPink:setupCountdown()
	end,

	initUI = function(self)
		weeksPink:initUI()

		if song == 3 then
			weeksPink:generateNotes("songs/pretender/pretender-hard.json")
            --weeksPink:generateEventsOld("songs/pretender/events.json")
		elseif song == 2 then
			weeksPink:generateNotes("songs/pinkwave/pinkwave-hard.json")
           -- weeksPink:generateEventsOld("songs/pinkwave/events.json")
		else
			weeksPink:generateNotes("songs/heartbeat/heartbeat-hard.json")
           -- weeksPink:generateEventsOld("songs/heatbeat/events.json")
		end
	end,

	update = function(self, dt)
		weeksPink:update(dt)
		if song ~= 3 then
			stages["pinkMira"]:update(dt)
		else
			stages["greyMira"]:update(dt)
		end


        -- lerp flashAlpha to 0
        flashAlpha = coolUtil.lerp(flashAlpha, 0, coolUtil.boundTo(0, dt * 5, 1))

		if health >= 80 then
			if enemyIcon:getAnimName() == "red impostor 1" then
				weeksPink:setIcon("enemy", "red impostor 1 losing")
			end
		else
			if enemyIcon:getAnimName() == "red impostor 1 losing" then
				weeksPink:setIcon("enemy", "red impostor 1")
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

		weeksPink:updateUI(dt)
	end,

	draw = function(self)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)
			love.graphics.scale(extraCamZoom.sizeX, extraCamZoom.sizeY)
			love.graphics.scale(cam.sizeX, cam.sizeY)

			if song ~= 3 then
				stages["pinkMira"]:draw()
			else
				stages["greyMira"]:draw()
			end
			
			weeksPink:drawRating(0.9)
		love.graphics.pop()

        graphics.setColor(1,0,0,flashAlpha)
        love.graphics.rectangle("fill", 0, 0, graphics.getWidth(), graphics.getHeight())
        graphics.setColor(1,1,1,1)

		weeksPink:drawTimeLeftBar()
		weeksPink:drawHealthBar()
		if not paused then
			weeksPink:drawUI()
		end
	end,

	leave = function(self)
		if song ~= 3 then
			stages["pinkMira"]:leave()
		else
			stages["greyMira"]:leave()
		end
		weeksPink:leave()
	end
}
