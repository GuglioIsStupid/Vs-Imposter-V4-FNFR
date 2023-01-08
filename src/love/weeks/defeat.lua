local lolAlpha

return {
	enter = function(self, from, songNum, songAppend)
		pauseColor = {129, 100, 223}
		weeksDefeat:enter()

        blackold = love.filesystem.load("sprites/characters/blackold.lua")()

        redGradient = graphics.newImage(love.graphics.newImage(graphics.imagePath("defeat/iluminao omaga")))
        deadBG = graphics.newImage(love.graphics.newImage(graphics.imagePath("defeat/deadbg")))
        deadFG = graphics.newImage(love.graphics.newImage(graphics.imagePath("defeat/deadfg")))
        lolThing = graphics.newImage(love.graphics.newImage(graphics.imagePath("defeat/lol thing")))
		week = 1

		song = songNum

        enemy = love.filesystem.load("sprites/characters/black.lua")()

		weeksDefeat:setIcon("enemy", "black")

        enemy.x = -350
        blackold.x = -350

		self:load()

        deadBG.sizeX, deadBG.sizeY = 0.25, 0.25
        deadFG.sizeX, deadFG.sizeY = 0.2, 0.2


        deadBG.y = 170
        deadFG.y = 350

        curEnemy = "black"
        enemy.colours = {255, 0, 0}
        lolAlpha = {0}
	end,

	load = function(self)
		weeksDefeat:load()

		inst = waveAudio:newSource("songs/defeat/Inst.ogg", "stream")
		voices = waveAudio:newSource("songs/defeat/Voices.ogg", "stream")

		self:initUI()

		weeksDefeat:setupCountdown()
	end,

	initUI = function(self)
		weeksDefeat:initUI()

		weeksDefeat:generateNotes("songs/defeat/defeat-hard.json")
		weeksDefeat:generateEventsOld("songs/defeat/events.json")
	end,

	update = function(self, dt)
		weeksDefeat:update(dt)

		if health[1] >= 80 then
			if enemyIcon:getAnimName() == "black" then
				weeksDefeat:setIcon("enemy", "black losing")
			end
		else
			if enemyIcon:getAnimName() == "black losing" then
				weeksDefeat:setIcon("enemy", "black")
			end
		end

        if musicTime >= 20400 and musicTime <= 20450 then 
            if lolTimer then 
                Timer.cancel(lolTimer)
            end
            lolTimer = Timer.tween(0.2, lolAlpha, {1}, "in-out-cubic")
        end

        if musicTime >= 87590.625 and musicTime <= 87640 then 
            curEnemy = "blackold"
            lolAlpha = {0}
			whyDoesItSpeedUpHere = true
        end
        if musicTime >= 106800 and musicTime <= 106850 then 
            curEnemy = "black"
        end


		if not (countingDown or graphics.isFading()) and not (inst:getDuration() > musicTime/1000) and not paused then
			status.setLoading(true)

			graphics.fadeOut(
				0.5,
				function()
					Gamestate.switch(menu)

					status.setLoading(false)
				end
			)
		end

		weeksDefeat:updateUI(dt)
	end,

	draw = function(self)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)
			love.graphics.scale(extraCamZoom.sizeX, extraCamZoom.sizeY)
			love.graphics.scale(cam.sizeX, cam.sizeY)

            redGradient:draw()
            graphics.setColor(1,1,1, lolAlpha[1])
            lolThing:draw()
            deadBG:draw()
            graphics.setColor(1,1,1, 1)
            boyfriend:draw()
            if curEnemy == "black" then
                enemy:draw()
            elseif curEnemy == "blackold" then
                blackold:draw()
            end
            graphics.setColor(1,1,1, lolAlpha[1])
            deadFG:draw()
            graphics.setColor(1,1,1, 1)
            redGradient:draw()

			weeksDefeat:drawRating(0.9)
		love.graphics.pop()
		
		weeksDefeat:drawTimeLeftBar()
		weeksDefeat:drawHealthBar()
		if not paused then
			weeksDefeat:drawUI()
		end
	end,

	leave = function(self)
		weeksDefeat:leave()

        enemy = nil
        redGradient = nil
	end
}
