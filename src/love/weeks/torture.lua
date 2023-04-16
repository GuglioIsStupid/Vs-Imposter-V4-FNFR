local difficulty
local stageBack, stageFront, curtains

return {
	enter = function(self, from, songNum, songAppend)
		pauseColor = {129, 100, 223}
		weeksTorture:enter()
		stages["torture"]:enter()

		week = 1
		weekString = "torture"
		gameOverMusic = "normal"


		song = songNum
		difficulty = songAppend

		enemyIcon:animate("black", false)



		self:load()
	end,

	load = function(self)
		weeksTorture:load()
		stages["torture"]:load()

		cutsceneAlpha = {1}
		doingIntro = true

		inst = love.audio.newSource("songs/torture/Inst.ogg", "stream")
		voices = love.audio.newSource("songs/torture/Voices.ogg", "stream")


		self:initUI()

		weeksTorture:setupCountdown()
	end,

	initUI = function(self)
		weeksTorture:initUI()

		weeksTorture:generateNotes("songs/torture/torture-hard.json")
		weeksTorture:generateEvents("songs/torture/events.json")

	end,

	update = function(self, dt)
		weeksTorture:update(dt)
		stages["torture"]:update(dt)

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


		if musicTime >= 10322 and musicTime < 10372 then
			doingIntro = false
			if cutsceneTween then
				Timer.cancel(cutsceneTween)
			end
			cutsceneTween = Timer.tween(3, cutsceneAlpha, {[1] = 0}, "linear")
		end


		weeksTorture:updateUI(dt)
	end,

	draw = function(self)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)

		

			stages["torture"]:draw()
			weeksTorture:drawRating(0.9)
		love.graphics.pop()


		love.graphics.setColor(0,0,0,cutsceneAlpha[1])
		love.graphics.rectangle("fill", -1000, -1000, 10000, 10000)
		love.graphics.setColor(1,1,1,1)


		if not doingIntro then
			weeksTorture:drawUI()
		end

	end,

	leave = function(self)
		stages["torture"]:leave()
		weeksTorture:leave()
	end
}
