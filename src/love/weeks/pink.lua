local difficulty

local stageBack, stageFront, curtains

return {
	enter = function(self, from, songNum, songAppend)
		pauseColor = {129, 100, 223}
		weeksPink:enter()
		stages["pinkMira"]:enter()



		week = 1

		song = songNum
		difficulty = songAppend



        enemy = love.filesystem.load("sprites/characters/pink.lua")()



        flashAlpha = 0

		self:load()
	end,

	load = function(self)
		weeksPink:load()
		stages["pinkMira"]:load()

		enemy.x, enemy.y = -459, 308
        boyfriend.x, boyfriend.y = 518, 375
        girlfriend.x, girlfriend.y = 10, 90

		if song == 3 then
			stages["pinkMira"]:leave()
			stages["greyMira"]:enter()
			stages["greyMira"]:load()

			inst = love.audio.newSource("songs/pretender/Inst.ogg", "stream")
			voices = love.audio.newSource("songs/pretender/Voices.ogg", "stream")
		elseif song == 2 then
			inst = love.audio.newSource("songs/pinkwave/Inst.ogg", "stream")
			voices = love.audio.newSource("songs/pinkwave/Voices.ogg", "stream")
		else
			inst = love.audio.newSource("songs/heartbeat/Inst.ogg", "stream")
			voices = love.audio.newSource("songs/heartbeat/Voices.ogg", "stream")
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
        flashAlpha = util.lerp(flashAlpha, 0, util.clamp(0, dt * 5, 1))

		if health >= 80 then
			if enemyIcon:getAnimName() == "red impostor 1" then
				weeksPink:setIcon("enemy", "red impostor 1 losing")
			end
		else
			if enemyIcon:getAnimName() == "red impostor 1 losing" then
				weeksPink:setIcon("enemy", "red impostor 1")
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

		weeksPink:updateUI(dt)
	end,

	draw = function(self)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)
			love.graphics.scale(camera.esizeX, camera.esizeY)
			love.graphics.scale(camera.sizeX, camera.sizeY)

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
