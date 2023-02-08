local difficulty

local stageBack, stageFront, curtains

return {
	enter = function(self, from, songNum, songAppend)
		weeksJ:enter()

		week = 1

		song = songNum

		enemyIcon:animate("jorsawsee", false)

		if song == 1 then 
			stages["o2"]:enter()
		else
			stages["voting-lounge"]:enter()
		end
        
        flashAlpha = 0

		function ReactorBeep(alpha)
			flashAlpha = alpha
		end

		self:load()
	end,

	load = function(self)
		weeksJ:load()
		if song == 1 then
			stages["o2"]:load()
		else
			stages["voting-lounge"]:load()
		end

        if song == 4 then
            inst = love.audio.newSource("songs/victory/Inst.ogg", "stream")
			voices = love.audio.newSource("songs/victory/Voices.ogg", "stream")
		elseif song == 3 then
			inst = love.audio.newSource("songs/turbulence/Inst.ogg", "stream")
			voices = love.audio.newSource("songs/turbulence/Voices.ogg", "stream")
		elseif song == 2 then
			inst = love.audio.newSource("songs/voting-time/Inst.ogg", "stream")
			voices = love.audio.newSource("songs/voting-time/Voices.ogg", "stream")

			stages["o2"]:leave()
			stages["voting-lounge"]:enter()

			camera:addPoint("boyfriend", -480, 60, 1.25, 1.25)
			camera:addPoint("redmungus", -420, 100, 1.35, 1.35)
			camera:addPoint("enemy", 525, 60, 1.25, 1.25)
			camera:addPoint("otherdude", 440, 100, 1.35, 1.35)
		else
			inst = love.audio.newSource("songs/O2/Inst.ogg", "stream")
			voices = love.audio.newSource("songs/O2/Voices.ogg", "stream")
		end

		self:initUI()

		weeksJ:setupCountdown()
	end,

	initUI = function(self)
		weeksJ:initUI()
        if song == 4 then 
            weeksJ:generateNotes("songs/victory/victory-hard.json")
			weeksJ:generateEvents("songs/victory/events.json")
        elseif song == 3 then
			weeksJ:generateNotes("songs/turbulence/turbulence-hard.json")
			weeksJ:generateEvents("songs/turbulence/events.json")
		elseif song == 2 then
			weeksJ:generateNotes("songs/voting-time/voting-time-hard.json")
            weeksJ:generateOtherNotes("songs/voting-time/voting-time-other.json")
			weeksJ:generateEvents("songs/voting-time/events.json")

			camera:addPoint("middle", 0, 0)
			camera:moveToPoint(1, "middle", false)
		else
			weeksJ:generateNotes("songs/O2/O2-hard.json")
			weeksJ:generateEvents("songs/O2/events.json")
		end
	end,

	update = function(self, dt)
		weeksJ:update(dt)
		if song == 1 then
			stages["o2"]:update(dt)
		else
			stages["voting-lounge"]:update(dt)
		end

        -- lerp flashAlpha to 0
        flashAlpha = util.lerp(flashAlpha, 0, util.clamp(0, dt * 5, 1))

		if health >= 80 then
			if enemyIcon:getAnimName() == "red impostor 1" then
				enemyIcon:animate("red impostor 1 losing", false)
			end
		else
			if enemyIcon:getAnimName() == "red impostor 1 losing" then
				enemyIcon:animate("red impostor 1", false)
			end
		end

		if not (countingDown or graphics.isFading()) and not (inst:isPlaying() and voices:isPlaying()) and not paused then
			if storyMode and song < 3 then
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

		weeksJ:updateUI(dt)
	end,

	draw = function(self)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)
			love.graphics.scale(camera.esizeX, camera.esizeY)
			love.graphics.scale(camera.sizeX, camera.sizeY)

			if song == 1 then
				stages["o2"]:draw()
			else
				stages["voting-lounge"]:draw()
			end
			
			weeksJ:drawRating(0.9)
		love.graphics.pop()

        graphics.setColor(1,0,0,flashAlpha)
        love.graphics.rectangle("fill", 0, 0, graphics.getWidth(), graphics.getHeight())
        graphics.setColor(1,1,1,1)

        if not hideUI then
		    weeksJ:drawUI()
        end
	end,

	leave = function(self)
		weeksJ:leave()
	end
}
