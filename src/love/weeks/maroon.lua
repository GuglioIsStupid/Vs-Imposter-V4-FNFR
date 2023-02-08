local difficulty

local stageBack, stageFront, curtains

return {
	enter = function(self, from, songNum, songAppend)
		weeks:enter()
		stages["maroon1"]:enter()

		week = 1
		weekString = "maroon"


		song = songNum
		difficulty = songAppend

		enemyIcon:animate("red impostor 1", false)




		self:load()
	end,

	load = function(self)
		weeks:load()
		stages["maroon1"]:load()

		if song == 3 then
			inst = love.audio.newSource("songs/boiling-point/Inst.ogg", "stream")
			voices = love.audio.newSource("songs/boiling-point/Voices.ogg", "stream")
		elseif song == 2 then
			inst = love.audio.newSource("songs/magmatic/Inst.ogg", "stream")
			voices = love.audio.newSource("songs/magmatic/Voices.ogg", "stream")
		else
			inst = love.audio.newSource("songs/ashes/Inst.ogg", "stream")
			voices = love.audio.newSource("songs/ashes/Voices.ogg", "stream")
		end

		self:initUI()

		weeks:setupCountdown()
	end,

	initUI = function(self)
		weeks:initUI()

		if song == 3 then
			weeks:generateNotes("songs/boiling-point/boiling-point-hard.json")
			--weeks:generateEvents("songs/boiling-point/events.json")
		elseif song == 2 then
			weeks:generateNotes("songs/magmatic/magmatic-hard.json")
			--weeks:generateEvents("songs/magmatic/events.json")
		else
			weeks:generateNotes("songs/ashes/ashes-hard.json")
			--weeks:generateEvents("songs/ashes/events.json")
		end
	end,

	update = function(self, dt)
		weeks:update(dt)
		stages["maroon1"]:update(dt)


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

		weeks:updateUI(dt)
	end,

	draw = function(self)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)
			love.graphics.scale(camera.esizeX, camera.esizeY)
			love.graphics.scale(camera.sizeX, camera.sizeY)

			stages["maroon1"]:draw()
			
			weeks:drawRating(0.9)
		love.graphics.pop()


		weeks:drawUI()
	end,

	leave = function(self)
		weeks:leave()
	end
}
