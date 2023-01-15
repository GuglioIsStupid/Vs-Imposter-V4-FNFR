local difficulty

local stageBack, stageFront, curtains

return {
	enter = function(self, from, songNum, songAppend)
		pauseColor = {129, 100, 223}
		weeksHenry:enter()
		stages["henry"]:enter()

		bg = graphics.newImage(love.graphics.newImage(graphics.imagePath("bopeebo/bg")))
		kissing = graphics.newImage(love.graphics.newImage(graphics.imagePath("bopeebo/text")))

		bg.sizeX, bg.sizeY = 1.2, 1.2


		week = 1

		song = songNum
		difficulty = songAppend

		weeksHenry:setIcon("enemy", "daddy dearest")

		HOLY_SHIT_CH_AND_GUGLIO_ARE_MAKING_OUT = false


		self:load()
	end,

	load = function(self)
		weeksHenry:load()
		stages["henry"]:load()
		

		inst = waveAudio:newSource("songs/bopeebo/Inst.ogg", "stream")
		voices = waveAudio:newSource("songs/bopeebo/Voices.ogg", "stream")
	

		self:initUI()

		weeksHenry:setupCountdown()
	end,

	initUI = function(self)
		weeksHenry:initUI()


		weeksHenry:generateNotes("songs/bopeebo/bopeebo.json")

		
	end,

	update = function(self, dt)
		weeksHenry:update(dt)
		stages["henry"]:update(dt)


		if musicTime > 108571 then
			HOLY_SHIT_CH_AND_GUGLIO_ARE_MAKING_OUT = true
		end

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
			if storyMode and song < 1 then
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
			love.graphics.push()
			love.graphics.translate(cam.x * 0.3, cam.y * 0.3)
			bg:draw()
			if HOLY_SHIT_CH_AND_GUGLIO_ARE_MAKING_OUT then
				kissing:draw()
			end

			love.graphics.pop()

			weeksHenry:drawRating(0.9)
		love.graphics.pop()
		
		weeksHenry:drawTimeLeftBar()
		weeksHenry:drawHealthBar()
		if not paused then
			weeksHenry:drawUI()
		end
	end,

	leave = function(self)
		stages["henry"]:leave()
		weeksHenry:leave()
	end
}
