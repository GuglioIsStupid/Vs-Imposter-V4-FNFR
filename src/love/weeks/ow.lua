local difficulty
local stageBack, stageFront, curtains

return {
	enter = function(self, from, songNum, songAppend)
		pauseColor = {129, 100, 223}
		weeks:enter()

		week = 1

		song = songNum
		difficulty = songAppend

		weeks:setIcon("enemy", "daddy dearest")

		enemy = love.filesystem.load("sprites/characters/red.lua")()
		boyfriend = love.filesystem.load("sprites/characters/blue.lua")()
		hit = love.filesystem.load("sprites/characters/bluehit.lua")()

		self:load()

	end,

	load = function(self)
		weeks:load()

		inst = waveAudio:newSource("songs/ow/Inst.ogg", "stream")
		voices = waveAudio:newSource("songs/ow/Voices.ogg", "stream")


		self:initUI()

		weeks:setupCountdown()
	end,

	initUI = function(self)
		weeks:initUI()

		weeks:generateNotes("songs/ow/ow-hard.json")
		--weeks:generateEventsOld("songs/ow/events.json")

	end,

	update = function(self, dt)
		weeks:update(dt)
		hit:update(dt)


		if enemy:getAnimName() == "left" and not hit:isAnimated() then
			hit:animate("left", false)
		elseif enemy:getAnimName() == "right" and not hit:isAnimated() then
			hit:animate("right", false)
		elseif enemy:getAnimName() == "up" and not hit:isAnimated() then
			hit:animate("up")
		elseif enemy:getAnimName() == "down" and not hit:isAnimated() then
			hit:animate("down")
		end

		if health[1] >= 80 then
			if enemyIcon:getAnimName() == "daddy dearest" then
				weeks:setIcon("enemy", "daddy dearest losing")
			end
		else
			if enemyIcon:getAnimName() == "daddy dearest losing" then
				weeks:setIcon("enemy", "daddy dearest")
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
			love.graphics.translate(cam.x, cam.y)
			enemy:draw()
		
		--	boyfriend:draw()

			if hit:isAnimated() then
				hit:draw()
			else
				boyfriend:draw()
			end
		--	hit:draw()



			weeks:drawRating(0.9)
		love.graphics.pop()
		
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
