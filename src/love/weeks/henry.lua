local difficulty

local stageBack, stageFront, curtains

return {
	enter = function(self, from, songNum, songAppend)
		pauseColor = {129, 100, 223}
		weeksHenry:enter()
		stages["henry"]:enter()

		week = 1
		weekString = "henry"


		song = songNum
		difficulty = songAppend

		--weeksHenry:setIcon("enemy", "daddy dearest")

		self:load()
	end,

	load = function(self)
		weeksHenry:load()
		stages["henry"]:load()

		if song == 4 then
			inst = love.audio.newSource("songs/armed/Inst.ogg", "stream")
			voices = love.audio.newSource("songs/armed/Voices.ogg", "stream")
		elseif song == 3 then
			inst = love.audio.newSource("songs/reinforcements/Inst.ogg", "stream")
			voices = love.audio.newSource("songs/reinforcements/Voices.ogg", "stream")
		elseif song == 2 then
			inst = love.audio.newSource("songs/greatest-plan/Inst.ogg", "stream")
			voices = love.audio.newSource("songs/greatest-plan/Voices.ogg", "stream")
		else
			inst = love.audio.newSource("songs/titular/Inst.ogg", "stream")
			voices = love.audio.newSource("songs/titular/Voices.ogg", "stream")
		end

		self:initUI()

		weeksHenry:setupCountdown()
	end,

	initUI = function(self)
		weeksHenry:initUI()

		if song == 4 then
			weeksHenry:generateNotes("songs/armed/armed-hard.json")
		elseif song == 3 then
			weeksHenry:generateNotes("songs/reinforcements/reinforcements-hard.json")
		elseif song == 2 then
			weeksHenry:generateNotes("songs/greatest-plan/greatest-plan-hard.json")
		else
			weeksHenry:generateNotes("songs/titular/titular-hard.json")
		end
	end,

	update = function(self, dt)
		weeksHenry:update(dt)
		stages["henry"]:update(dt)

		if health >= 80 then
			if enemyIcon:getAnimName() == "daddy dearest" then
				weeksHenry:setIcon("enemy", "daddy dearest losing")
			end
		else
			if enemyIcon:getAnimName() == "daddy dearest losing" then
				weeksHenry:setIcon("enemy", "daddy dearest")
			end
		end

		if not (countingDown or graphics.isFading()) and not (inst:isPlaying() and voices:isPlaying()) and not paused then
			if storyMode and song < 4 then


				--[[
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

				--]]
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
			love.graphics.scale(camera.sizeX, camera.sizeY)

		--	love.graphics.scale(extraCamZoom.sizeX, extraCamZoom.sizeY)
		--	love.graphics.scale(cam.sizeX, cam.sizeY)

			stages["henry"]:draw()
			weeksHenry:drawRating(0.9)
		love.graphics.pop()
		
		--weeksHenry:drawTimeLeftBar()
		--weeksHenry:drawHealthBar()
		if not paused then
			weeksHenry:drawUI()
		end
	end,

	leave = function(self)
		stages["henry"]:leave()
		weeksHenry:leave()
	end
}
