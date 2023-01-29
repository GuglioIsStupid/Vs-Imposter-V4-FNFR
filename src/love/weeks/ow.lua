local difficulty
local stageBack, stageFront, curtains

return {
	enter = function(self, from, songNum, songAppend)
		pauseColor = {129, 100, 223}
		weeksOw:enter()

		week = 1

		song = songNum
		difficulty = songAppend

		enemyIcon:animate("black", false)

		enemy = love.filesystem.load("sprites/characters/red.lua")()
		boyfriend = love.filesystem.load("sprites/characters/blue.lua")()
		enemyTwo = love.filesystem.load("sprites/characters/bluehit.lua")()

		camera.sizeX, camera.sizeY = 0.7, 0.7
		camera.scaleX, camera.scaleY = 0.7, 0.7

		enemy.x = -75
		boyfriend.x = 225
		enemyTwo.x = 225

		self:load()
	end,

	load = function(self)
		curEnemy = "both"
		weeksOw:load()

		inst = love.audio.newSource("songs/ow/Inst.ogg", "stream")
		voices = love.audio.newSource("songs/ow/Voices.ogg", "stream")


		self:initUI()

		weeksOw:setupCountdown()
	end,

	initUI = function(self)
		weeksOw:initUI()

		weeksOw:generateNotes("songs/ow/ow-hard.json")
		--weeksOw:generateEventsOld("songs/ow/events.json")

	end,

	update = function(self, dt)
		weeksOw:update(dt)
		enemyTwo:update(dt)
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

		if boyfriend:getAnimName() ~= "idle" then 
			enemyTwo:animate("idle")
		end

		weeksOw:updateUI(dt)
	end,

	draw = function(self)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)
			love.graphics.scale(camera.esizeX, camera.esizeY)
			love.graphics.scale(camera.sizeX, camera.sizeY)
			love.graphics.translate(camera.x, camera.y)
			love.graphics.translate(camera.ex, camera.ey)
			love.graphics.rectangle("fill", -1000, -1000, 5000, 6000) -- white rectangle :pleasure:
			enemy:draw()
		
			--boyfriend:draw()

			if enemyTwo:getAnimName() ~= "idle" then
				enemyTwo:draw()
			else
				boyfriend:draw()
			end

			weeksOw:drawRating(0.9)
		love.graphics.pop()
		
		weeksOw:drawUI()
	end,

	leave = function(self)
		weeksOw:leave()
	end
}
