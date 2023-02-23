local difficulty

local stageBack, stageFront, curtains

return {
	enter = function(self, from, songNum, songAppend)
		weeks:enter()

		week = 1
		weekString = "red"


		song = songNum
		difficulty = songAppend

		enemyIcon:animate("red impostor 1", false)

        enemy = love.filesystem.load("sprites/characters/boyfriend.lua")()

        flashAlpha = 0

		function ReactorBeep(alpha)
			flashAlpha = alpha
		end

		self:load()
	end,

	load = function(self)
		weeks:load()

		if song == 3 then
			inst = love.audio.newSource("songs/torture/Inst.ogg", "stream")
			voices = love.audio.newSource("songs/torture/Voices.ogg", "stream")
		elseif song == 2 then
			inst = love.audio.newSource("songs/chipping/Inst.ogg", "stream")
			voices = love.audio.newSource("songs/chipping/Voices.ogg", "stream")
		else
			inst = love.audio.newSource("songs/chippin/Inst.ogg", "stream")
			voices = love.audio.newSource("songs/chippin/Voices.ogg", "stream")
		end

		self:initUI()

		weeks:setupCountdown()
	end,

	initUI = function(self)
		weeks:initUI()

		if song == 3 then
			weeks:generateNotes("songs/torture/torture-hard.json")
			weeks:generateEvents("songs/torture/events.json")
		elseif song == 2 then
			weeks:generateNotes("songs/chipping/chipping-hard.json")
			weeks:generateEvents("songs/chipping/events.json")
		else
			weeks:generateNotes("songs/chippin/chippin-hard.json")
			weeks:generateEvents("songs/chippin/events.json")
		end
	end,

	update = function(self, dt)
		weeks:update(dt)

        -- lerp flashAlpha to 0
        --flashAlpha = util.lerp(flashAlpha, 0, util.clamp(0, dt * 5, 1))

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

		weeks:updateUI(dt)
	end,

	draw = function(self)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)
			love.graphics.scale(camera.esizeX, camera.esizeY)
			love.graphics.scale(camera.sizeX, camera.sizeY)

			
			weeks:drawRating(0.9)
		love.graphics.pop()

        graphics.setColor(1,0,0,flashAlpha)
        love.graphics.rectangle("fill", 0, 0, graphics.getWidth(), graphics.getHeight())
        graphics.setColor(1,1,1,1)

		weeks:drawUI()
	end,

	leave = function(self)
		weeks:leave()
	end
}
