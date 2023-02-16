local difficulty
local stageBack, stageFront, curtains

return {
	enter = function(self, from, songNum, songAppend)
		pauseColor = {129, 100, 223}
		weeks:enter()
		stages["esculent"]:enter()

		week = 1
		weekString = "esculent"


		song = songNum
		difficulty = songAppend

		enemyIcon:animate("black", false)

		camera.sizeX, camera.sizeY = 0.65, 0.65
		camera.scaleX, camera.scaleY = 0.65, 0.65

		camera:addPoint("boyfriend", 0, 0, 0.65, 0.65)
		camera:addPoint("enemy", 0, 0, 0.65, 0.65)

		flashAlpha = 0


		function ReactorBeep(alpha)
			flashAlpha = alpha
		end




		self:load()
	end,

	load = function(self)
		weeks:load()
		stages["esculent"]:load()


		inst = love.audio.newSource("songs/esculent/Inst.ogg", "stream")
		voices = love.audio.newSource("songs/esculent/Voices.ogg", "stream")


		self:initUI()

		weeks:setupCountdown()
	end,

	initUI = function(self)
		weeks:initUI()

		weeks:generateNotes("songs/esculent/esculent-hard.json")
		weeks:generateEvents("songs/esculent/events.json")

	end,

	update = function(self, dt)
		weeks:update(dt)
		stages["esculent"]:update(dt)


		flashAlpha = util.lerp(flashAlpha, 0, util.clamp(0, dt * 5, 1))


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


		weeks:updateUI(dt)
	end,

	draw = function(self)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)
			love.graphics.scale(camera.esizeX, camera.esizeY)
			love.graphics.scale(camera.sizeX, camera.sizeY)

			--love.graphics.rectangle("fill", -1000, -1000, 5000, 6000) -- white rectangle :pleasure:      fuck you i hate you stupid ass white rectangle fucking kill yourself lmao you are commented out now haha dumbass stupid fucking white rectangle lmao look at you loser being commented out lmfao fuck you
		

			stages["esculent"]:draw()
			weeks:drawRating(0.9)
		love.graphics.pop()

		graphics.setColor(1,0,0,flashAlpha)
        love.graphics.rectangle("fill", 0, 0, graphics.getWidth(), graphics.getHeight())
        graphics.setColor(1,1,1,1)
		
		weeks:drawUI()
	end,

	leave = function(self)
		stages["esculent"]:leave()
		weeks:leave()
	end
}
