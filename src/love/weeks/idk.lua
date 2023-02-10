local difficulty
local stageBack, stageFront, curtains

return {
	enter = function(self, from, songNum, songAppend)
		pauseColor = {129, 100, 223}
		weeks:enter()
		stages["jerma"]:enter()

		week = 1
		weekString = "jerma"


		song = songNum
		difficulty = songAppend

		enemyIcon:animate("black", false)



		self:load()
	end,

	load = function(self)
		weeks:load()
		stages["jerma"]:load()


		inst = love.audio.newSource("songs/insane-streamer/Inst.ogg", "stream")
		voices = love.audio.newSource("songs/insane-streamer/Voices.ogg", "stream")


		self:initUI()

		weeks:setupCountdown()
	end,

	initUI = function(self)
		weeks:initUI()

		weeks:generateNotes("songs/insane-streamer/insane-streamer-hard.json")
		--weeks:generateEventsOld("songs/insane-streamer/events.json")

	end,

	update = function(self, dt)
		weeks:update(dt)
		stages["jerma"]:update(dt)

		if health >= 80 then
			if enemyIcon:getAnimName() == "black" then
				enemyIcon:animate("black losing", false)
			end
		else
			if enemyIcon:getAnimName() == "black losing" then
				enemyIcon:animate("black", false)
			end
		end

		if not (countingDown or graphics.isFading()) and not (inst:isPlaying() and voices:isPlaying()) and not paused then
			status.setLoading(true)

			graphics.fadeOut(
				0.5,
				function()
					Gamestate.switch(menu)

					status.setLoading(false)
				end
			)
		end


		weeks:updateUI(dt)
	end,

	draw = function(self)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)
			love.graphics.scale(camera.esizeX, camera.esizeY)
			love.graphics.scale(camera.sizeX, camera.sizeY)
			love.graphics.translate(camera.x, camera.y)
			love.graphics.translate(camera.ex, camera.ey)
			--love.graphics.rectangle("fill", -1000, -1000, 5000, 6000) -- white rectangle :pleasure:      fuck you i hate you stupid ass white rectangle fucking kill yourself lmao you are commented out now haha dumbass stupid fucking white rectangle lmao look at you loser being commented out lmfao fuck you
		

			stages["jerma"]:draw()
			weeks:drawRating(0.9)
		love.graphics.pop()
		
		weeks:drawUI()
	end,

	leave = function(self)
		stages["jerma"]:leave()
		weeks:leave()
	end
}
