local difficulty

local stageBack, stageFront, curtains

return {
	enter = function(self, from, songNum, songAppend)
		weeks:enter()
		song = songNum

		if song == 3 then
			stages["maroon2"]:enter()
		else

			stages["maroon1"]:enter()
		end

		week = 1
		weekString = "maroon"

		gameOverMusic = "normal"


		difficulty = songAppend

		enemyIcon:animate("red impostor 1", false)




		self:load()
	end,

	load = function(self)
		weeks:load()

		if song == 3 then
			stages["maroon1"]:leave()
			stages["maroon2"]:load()
			inst = love.audio.newSource("songs/boiling-point/Inst.ogg", "stream")
			voices = love.audio.newSource("songs/boiling-point/Voices.ogg", "stream")
		elseif song == 2 then
			stages["maroon1"]:load()

			inst = love.audio.newSource("songs/magmatic/Inst.ogg", "stream")
			voices = love.audio.newSource("songs/magmatic/Voices.ogg", "stream")
		else
			stages["maroon1"]:load()

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
		if song == 3 then
			stages["maroon2"]:update(dt)
		else
			stages["maroon1"]:update(dt)

		end
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
			if song == 3 then
				stages["maroon2"]:draw()
			else
				stages["maroon1"]:draw()
			end
			
			weeks:drawRating(0.9)
		love.graphics.pop()


		weeks:drawUI()
	end,

	leave = function(self)
		weeks:leave()
	end
}
