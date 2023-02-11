local difficulty
local stageBack, stageFront, curtains

return {
	enter = function(self, from, songNum, songAppend)
		pauseColor = {129, 100, 223}
		weeksNuzzus:enter()
		stages["nuzzus"]:enter()

		week = 1
		weekString = "nuzzus"


		song = songNum
		difficulty = songAppend

		enemyIcon:animate("black", false)

		--camera.sizeX, camera.sizeY = 0.65, 0.65
		--camera.scaleX, camera.scaleY = 0.65, 0.65

		camera:addPoint("boyfriend", 0, 0)
		camera:addPoint("enemy", 0, 0)

		camera:moveToPoint(0, "boyfriend")




		self:load()
	end,

	load = function(self)
		weeksNuzzus:load()
		stages["nuzzus"]:load()


		inst = love.audio.newSource("songs/sussus-nuzzus/Inst.ogg", "stream")
		voices = love.audio.newSource("songs/sussus-nuzzus/Voices.ogg", "stream")


		self:initUI()

		weeksNuzzus:setupCountdown()
	end,

	initUI = function(self)
		weeksNuzzus:initUI()

		weeksNuzzus:generateNotes("songs/sussus-nuzzus/sussus-nuzzus-hard.json")
		--weeksNuzzus:generateEventsOld("songs/sussus-nuzzus/events.json")

	end,

	update = function(self, dt)
		weeksNuzzus:update(dt)
		stages["nuzzus"]:update(dt)

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


		weeksNuzzus:updateUI(dt)
	end,

	draw = function(self)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)
			love.graphics.scale(camera.esizeX, camera.esizeY)
			love.graphics.scale(camera.sizeX, camera.sizeY)

			--love.graphics.rectangle("fill", -1000, -1000, 5000, 6000) -- white rectangle :pleasure:      fuck you i hate you stupid ass white rectangle fucking kill yourself lmao you are commented out now haha dumbass stupid fucking white rectangle lmao look at you loser being commented out lmfao fuck you
		

			stages["nuzzus"]:draw()
			weeksNuzzus:drawRating(0.9)
		love.graphics.pop()
		
		weeksNuzzus:drawUI()
	end,

	leave = function(self)
		stages["nuzzus"]:leave()
		weeksNuzzus:leave()
	end
}
