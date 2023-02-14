local difficulty

local stageBack, stageFront, curtains

return {
	enter = function(self, from, songNum, songAppend)
		pauseColor = {129, 100, 223}
		weeksYellow:enter()
		stages["yellowAirship"]:enter()
		--stages["blackChase"]:enter()


		week = 1
		weekString = "yellow"

		song = songNum
		difficulty = songAppend

		--weeksYellow:setIcon("enemy", "yellow")
		curEnemy = "white"

		self:load()

		thefunnyjudgmentsgoleftabit = false
	end,

	load = function(self)
		weeksYellow:load()
		didScream = false
		if song == 5 then
			stages["cargo"]:load()
		elseif song == 4 then
			stages["blackChase"]:load()
		else
			stages["yellowAirship"]:load()
		end

		if song == 5 then
			stages["blackChase"]:leave()
			stages["cargo"]:enter()                                                                                    -- i wanna fucking quit
			inst = love.audio.newSource("songs/double-kill/Inst.ogg", "stream")
			voices = love.audio.newSource("songs/double-kill/Voices.ogg", "stream")
			thefunnyjudgmentsgoleftabit = false

		elseif song == 4 then
			stages["yellowAirship"]:leave()
			stages["blackChase"]:enter()
			inst = love.audio.newSource("songs/danger/Inst.ogg", "stream")
			voices = love.audio.newSource("songs/danger/Voices.ogg", "stream")
			thefunnyjudgmentsgoleftabit = true
		elseif song == 3 then
			inst = love.audio.newSource("songs/oversight/Inst.ogg", "stream")
			voices = love.audio.newSource("songs/oversight/Voices.ogg", "stream")
		elseif song == 2 then
			inst = love.audio.newSource("songs/dlow/Inst.ogg", "stream")
			voices = love.audio.newSource("songs/dlow/Voices.ogg", "stream")
		elseif song == 50 then
			inst = "https://www.youtube.com/watch?v=p3wVSfHumRA"
			voices = inst
		else
			inst = love.audio.newSource("songs/mando/Inst.ogg", "stream")
			voices = love.audio.newSource("songs/mando/Voices.ogg", "stream")
		end

		self:initUI()

		weeksYellow:setupCountdown()
	end,

	initUI = function(self)
		weeksYellow:initUI()

		if song == 5 then
			doMustHitSectionCam = true
			weeksYellow:generateNotes("songs/double-kill/double-kill-hard.json")
			weeksYellow:generateEvents("songs/double-kill/events.json")
			--weeksYellow:setIcon("enemy", "white")
		elseif song == 4 then
			doMustHitSectionCam = false
			weeksYellow:generateNotes("songs/danger/danger-hard.json")
		elseif song == 3 then
			doMustHitSectionCam = true
			weeksYellow:generateNotes("songs/oversight/oversight-hard.json")
		elseif song == 2 then
			doMustHitSectionCam = true
			weeksYellow:generateNotes("songs/dlow/dlow-hard.json")
		else
			doMustHitSectionCam = true
			weeksYellow:generateNotes("songs/mando/mando-hard.json")
		end
	end,

	update = function(self, dt)
		weeksYellow:update(dt)
		if song == 5 then
			stages["cargo"]:update(dt)
		elseif song == 4 then
			stages["blackChase"]:update(dt)
		else
			stages["yellowAirship"]:update(dt)
		end

		if health >= 80 then
			if enemyIcon:getAnimName() == "yellow" then
				weeksYellow:setIcon("enemy", "yellow losing")
			elseif enemyIcon:getAnimName() == "white" then
				weeksYellow:setIcon("enemy", "white losing")
			elseif enemyIcon:getAnimName() == "black" then
				weeksYellow:setIcon("enemy", "black losing")
			end
		else
			if enemyIcon:getAnimName() == "yellow losing" then
				weeksYellow:setIcon("enemy", "yellow")
			elseif enemyIcon:getAnimName() == "white losing" then
				weeksYellow:setIcon("enemy", "white")
			elseif enemyIcon:getAnimName() == "black losing" then
				weeksYellow:setIcon("enemy", "black")
			end
		end

		if not (countingDown or graphics.isFading()) and not (inst:isPlaying() and voices:isPlaying()) and not paused then
			if storyMode and song < 5 then
				campaignScore = campaignScore + score
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

		if song == 4 then
			if musicTime >= 52666.6666666667 and musicTime < 52700.6666666667 and not didScream then 
				didScream = true
				stageImages[9]:animate("anim", false)
				enemy:animate("scream", false)
				ohnoHeAngy = true
				if zoom1 then 
					Timer.cancel(zoom1)
				end
				zoom1 = Timer.tween(
					0.25, 
					camera,
					{
						sizeX = 1.45,
						sizeY = 1.45,
						scaleX = 1.45,
						scaleY = 1.45,
						x = -enemy.x + 15,
						y = -enemy.y + 90
					},
					"out-quad",
					function()
						Timer.after(0.5, function()
							Timer.tween(
							0.25,
							camera,
							{
								sizeX = 0.33,
								sizeY = 0.33,
								scaleX = 0.33,
								scaleY = 0.33,
								x = 0,
								y = 200
							},
							"in-quad"
						)
						end)
						
					end
				)
			end
			if musicTime >= 54666.6666666667 and musicTime < 54691.6666666667 then
				if gfTween then
					Timer.cancel(gfTween)
				end
				gfTween = Timer.tween(4.5, girlfriend, {x = -2500}, "in-quad")
			end
		end
			
		weeksYellow:updateUI(dt)
	end,

	draw = function(self)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)
			love.graphics.translate(camera.x * 0.3, camera.y * 0.3)
			love.graphics.translate(camera.ex * 0.3, camera.ey * 0.3)
			love.graphics.scale(camera.esizeX, camera.esizeY)
			love.graphics.scale(camera.sizeX, camera.sizeY)

			if song == 5 then
				stages["cargo"]:draw()
			elseif song == 4 then
				stages["blackChase"]:draw()
			else
				stages["yellowAirship"]:draw()
			end
			weeksYellow:drawRating(0.9)
		love.graphics.pop()
		
		--weeksYellow:drawTimeLeftBar()
		--weeksYellow:drawHealthBar()
		if not paused then
			weeksYellow:drawUI()
		end
	end,

	leave = function(self)
		stages["yellowAirship"]:leave()
		weeksYellow:leave()
	end
}
