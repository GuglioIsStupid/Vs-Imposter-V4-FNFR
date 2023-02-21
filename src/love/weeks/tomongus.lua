local difficulty
local stageBack, stageFront, curtains

return {
	enter = function(self, from, songNum, songAppend)
		pauseColor = {129, 100, 223}
		weeks:enter("pixel")
		stages["skeldPixel"]:enter()

		week = 1
		weekString = "pixel sus"
		gameoverMusic = "normal"  --?????????????? make sure this is right


		song = songNum
		difficulty = songAppend

		enemyIcon:animate("black", false)



		self:load()
	end,

	load = function(self)
		weeks:load()
		stages["skeldPixel"]:load()


		if song == 3 then
			inst = love.audio.newSource("songs/chewmate/Inst.ogg", "stream")
			voices = love.audio.newSource("songs/chewmate/Voices.ogg", "stream")
		elseif song == 2 then
			inst = love.audio.newSource("songs/rivals/Inst.ogg", "stream")
			voices = love.audio.newSource("songs/rivals/Voices.ogg", "stream")
		else
			inst = love.audio.newSource("songs/sussy-bussy/Inst.ogg", "stream")
			voices = love.audio.newSource("songs/sussy-bussy/Voices.ogg", "stream")
		end


		self:initUI()

		weeks:setupCountdown()
	end,

	initUI = function(self)
		weeks:initUI()


		if song == 3 then
			weeks:generateNotes("songs/chewmate/chewmate-hard.json")
			--weeks:generateEventsOld("songs/chewmate/events.json")
		elseif song == 2 then
			weeks:generateNotes("songs/rivals/rivals-hard.json")
			--weeks:generateEventsOld("songs/rivals/events.json")
		else
			weeks:generateNotes("songs/sussy-bussy/sussy-bussy-hard.json")
			--weeks:generateEventsOld("songs/sussy-bussy/events.json")
		end

	end,

	update = function(self, dt)
		weeks:update(dt)
		stages["skeldPixel"]:update(dt)

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
		

			stages["skeldPixel"]:draw()
			weeks:drawRating(0.9)
		love.graphics.pop()
		
		weeks:drawUI()
	end,

	leave = function(self)
		stages["skeldPixel"]:leave()
		weeks:leave()
	end
}
