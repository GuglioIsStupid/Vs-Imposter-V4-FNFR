local difficulty

local stageBack, stageFront, curtains

return {
	enter = function(self, from, songNum, songAppend)
		pauseColor = {129, 100, 223}
		weeksGrey:enter()
		stages["greyElec"]:enter()


		week = 1
		weekString = "grey"


		song = songNum
		difficulty = songAppend


		self:load()

		
       -- camera.sizeX, camera.sizeY = 0.7, 0.7
       -- camera.scaleX, camera.scaleY = 0.7, 0.7

	end,

	load = function(self)
		weeksGrey:load()


		if song == 3 then
			inst = love.audio.newSource("songs/neurotic/Inst.ogg", "stream")
			voices = love.audio.newSource("songs/neurotic/Voices.ogg", "stream")
		elseif song == 2 then
			inst = love.audio.newSource("songs/blackout/Inst.ogg", "stream")
			voices = love.audio.newSource("songs/blackout/Voices.ogg", "stream")
		else
			inst = love.audio.newSource("songs/delusion/Inst.ogg", "stream")
			voices = love.audio.newSource("songs/delusion/Voices.ogg", "stream")
		end

		self:initUI()

		weeksGrey:setupCountdown()
	end,

	initUI = function(self)
		weeksGrey:initUI()


		if song == 3 then
			doMustHitSectionCam = true
			weeksGrey:generateNotes("songs/neurotic/neurotic-hard.json")
			--weeksGrey:generateEvents("songs/neurotic/events.json")

		elseif song == 2 then
			doMustHitSectionCam = true
			weeksGrey:generateNotes("songs/blackout/blackout-hard.json")
			weeksGrey:generateEvents("songs/blackout/events.json")

		else
			doMustHitSectionCam = true
			weeksGrey:generateNotes("songs/delusion/delusion-hard.json")
			weeksGrey:generateEvents("songs/delusion/events.json")

		end
	end,

	update = function(self, dt)
		weeksGrey:update(dt)
		stages["greyElec"]:update(dt)

		if health >= 80 then
			if enemyIcon:getAnimName() == "yellow" then
				weeksGrey:setIcon("enemy", "yellow losing")
			elseif enemyIcon:getAnimName() == "white" then
				weeksGrey:setIcon("enemy", "white losing")
			elseif enemyIcon:getAnimName() == "black" then
				weeksGrey:setIcon("enemy", "black losing")
			end
		else
			if enemyIcon:getAnimName() == "yellow losing" then
				weeksGrey:setIcon("enemy", "yellow")
			elseif enemyIcon:getAnimName() == "white losing" then
				weeksGrey:setIcon("enemy", "white")
			elseif enemyIcon:getAnimName() == "black losing" then
				weeksGrey:setIcon("enemy", "black")
			end
		end

		if not (countingDown or graphics.isFading()) and not (inst:isPlaying() and voices:isPlaying()) and not paused then
			if storyMode and song < 5 then
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
				campaignScore = campaignScore + score
				song = song + 1

				self:load()
			else
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
		end

		weeksGrey:updateUI(dt)
	end,

	draw = function(self)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)

			--love.graphics.scale(camera.esizeX, camera.esizeY)
			--love.graphics.scale(camera.sizeX, camera.sizeY)


			stages["greyElec"]:draw()
			weeksGrey:drawRating(0.9)
		love.graphics.pop()

		if not paused then
			weeksGrey:drawUI()
		end
	end,

	leave = function(self)
		stages["greyElec"]:leave()
		weeksGrey:leave()
	end
}
