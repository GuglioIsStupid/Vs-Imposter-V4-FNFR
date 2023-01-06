local difficulty

return {
	enter = function(self, from, songNum, songAppend)
		pauseColor = {129, 100, 223}
		weeksDefeat:enter()
		stages["stage"]:enter()

		week = 1

		song = songNum
		difficulty = songAppend

		weeksDefeat:setIcon("enemy", "daddy dearest")

		self:load()
	end,

	load = function(self)
		weeksDefeat:load()
		stages["stage"]:load()

		inst = waveAudio:newSource("songs/week1/bopeebo/inst.ogg", "stream")
		voices = waveAudio:newSource("songs/week1/bopeebo/voices.ogg", "stream")

		self:initUI()

		weeksDefeat:setupCountdown()
	end,

	initUI = function(self)
		weeksDefeat:initUI()

		weeksDefeat:generateNotes("songs/week1/bopeebo/" .. difficulty .. ".json")
		--weeksDefeat:generateEvents("songs/week1/bopeebo/events.json")
	end,

	update = function(self, dt)
		weeksDefeat:update(dt)
		stages["stage"]:update(dt)

		if health[1] >= 80 then
			if enemyIcon:getAnimName() == "daddy dearest" then
				weeksDefeat:setIcon("enemy", "daddy dearest losing")
			end
		else
			if enemyIcon:getAnimName() == "daddy dearest losing" then
				weeksDefeat:setIcon("enemy", "daddy dearest")
			end
		end

		if not (countingDown or graphics.isFading()) and not (inst:getDuration() > musicTime/1000) and not paused then
			status.setLoading(true)

			graphics.fadeOut(
				0.5,
				function()
					Gamestate.switch(menu)

					status.setLoading(false)
				end
			)
		end

		weeksDefeat:updateUI(dt)
	end,

	draw = function(self)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)
			love.graphics.scale(extraCamZoom.sizeX, extraCamZoom.sizeY)
			love.graphics.scale(cam.sizeX, cam.sizeY)

			stages["stage"]:draw()
			weeksDefeat:drawRating(0.9)
		love.graphics.pop()
		
		weeksDefeat:drawTimeLeftBar()
		weeksDefeat:drawHealthBar()
		if not paused then
			weeksDefeat:drawUI()
		end
	end,

	leave = function(self)
		stages["stage"]:leave()
		weeksDefeat:leave()
	end
}
