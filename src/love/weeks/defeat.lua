local lolAlpha

return {
	enter = function(self, from, songNum, songAppend)
		weeksDefeat:enter()

        blackold = love.filesystem.load("sprites/characters/blackold.lua")()

        redGradient = graphics.newImage(graphics.imagePath("defeat/iluminao omaga"))
        deadBG = graphics.newImage(graphics.imagePath("defeat/deadbg"))
        deadFG = graphics.newImage(graphics.imagePath("defeat/deadfg"))
        lolThing = graphics.newImage(graphics.imagePath("defeat/lol thing"))
		defeat = love.filesystem.load("sprites/defeat/defeat.lua")()
		week = 1
		weekString = "defeat"


		song = songNum

        enemy = love.filesystem.load("sprites/characters/black.lua")()
		enemyghost = love.filesystem.load("sprites/characters/black.lua")()
		enemyghost.colors = {1,1,1}
		enemyghost.alpha = 0

		blackoldghost = love.filesystem.load("sprites/characters/blackold.lua")()
		blackoldghost.colors = {1,1,1}
		blackoldghost.alpha = 0

		bfScared = love.filesystem.load("sprites/characters/BF_Defeat_Scared.lua")()
		bfOther = love.filesystem.load("sprites/characters/BF_Defeat_Nomal.lua")()
		
		bfghost = love.filesystem.load("sprites/characters/BF_Defeat_Nomal.lua")()
		bfghost.colors = {1,1,1}
		bfghost.alpha = 0

		bfScaredghost = love.filesystem.load("sprites/characters/BF_Defeat_Scared.lua")()
		bfScaredghost.colors = {1,1,1}
		bfScaredghost.alpha = 0

		bfOtherghost = love.filesystem.load("sprites/characters/BF_Defeat_Nomal.lua")()
		bfOtherghost.colors = {1,1,1}
		bfOtherghost.alpha = 0

		enemyIcon:animate("black", false)

        enemy.x = -375
        blackold.x = -350

		self:load()

        deadBG.sizeX, deadBG.sizeY = 0.25, 0.25
        deadFG.sizeX, deadFG.sizeY = 0.2, 0.2


        deadBG.y = 170
        deadFG.y = 350

        curEnemy = "black"
        enemy.colours = {255, 0, 0}
        lolAlpha = {0}

		boyfriend.x, boyfriend.y = 225, 135

		bfScared.x, bfScared.y = boyfriend.x, boyfriend.y
		bfOther.x, bfOther.y = boyfriend.x, boyfriend.y

		bfScaredghost.x, bfScaredghost.y = boyfriend.x, boyfriend.y
		bfOtherghost.x, bfOtherghost.y = boyfriend.x, boyfriend.y
		bfghost.x, bfghost.y = boyfriend.x, boyfriend.y

		enemyghost.x, enemyghost.y = enemy.x, enemy.y
		blackoldghost.x, blackoldghost.y = blackold.x, blackold.y
	end,

	load = function(self)
		weeksDefeat:load()
		curPlayer = "BF-Other"
		curEnemy = "black"
		lolAlpha = {0}

		inst = love.audio.newSource("songs/defeat/Inst.ogg", "stream")
		voices = love.audio.newSource("songs/defeat/Voices.ogg", "stream")

		self:initUI()

		weeksDefeat:setupCountdown()
	end,

	initUI = function(self)
		weeksDefeat:initUI()

		weeksDefeat:generateNotes("songs/defeat/defeat-hard.json")
		weeksDefeat:generateEvents("songs/defeat/events.json")
	end,

	update = function(self, dt)
		weeksDefeat:update(dt)
		defeat:update(dt)
		bfOther:update(dt)
		bfScared:update(dt)

		if beatHandler.onBeat() and beatHandler.getBeat() % 2 == 0 then
			if curEnemy == "black" then
				defeat:animate("anim", false)
			end
		end

		if health >= 80 then
			if enemyIcon:getAnimName() == "black" then
				enemyIcon:animate("black losing", false)
			end
		else
			if enemyIcon:getAnimName() == "black losing" then
				enemyIcon:animate("black", false)
			end
		end

        if musicTime >= 20400 and musicTime <= 20450 then 
            if lolTimer then 
                Timer.cancel(lolTimer)
            end
            lolTimer = Timer.tween(0.2, lolAlpha, {1}, "in-out-cubic")
        end


		if musicTime >= 20400 and musicTime <= 20450 then
			curPlayer = "BF-Scared"
		end
        if musicTime >= 87590.625 and musicTime <= 87640 then 
            curEnemy = "blackold"
			curPlayer = "BF"
            lolAlpha = {0}
			whyDoesItSpeedUpHere = true
        end
        if musicTime >= 107993.75 and musicTime <= 108043.75 then
            curEnemy = "black"
			curPlayer = "BF-Scared"
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

		weeksDefeat:updateUI(dt)
	end,

	draw = function(self)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)
			love.graphics.scale(camera.esizeX, camera.esizeY)
			love.graphics.scale(camera.sizeX, camera.sizeY)
			love.graphics.translate(camera.ex, camera.ey)

            defeat:draw()
            graphics.setColor(1,1,1, lolAlpha[1])
            lolThing:draw()
            deadBG:draw()
			if curPlayer == "BF" then 
				graphics.setColor(bfghost.colors[1], bfghost.colors[2], bfghost.colors[3], bfghost.alpha)
				bfghost:draw()
				graphics.setColor(1,1,1, 1)
            	boyfriend:draw()
			elseif curPlayer == "BF-Scared" then
				graphics.setColor(bfScaredghost.colors[1], bfScaredghost.colors[2], bfScaredghost.colors[3], bfScaredghost.alpha)
				bfScaredghost:draw()
				graphics.setColor(1,1,1, 1)
				bfScared:draw()
			elseif curPlayer == "BF-Other" then
				graphics.setColor(bfOtherghost.colors[1], bfOtherghost.colors[2], bfOtherghost.colors[3], bfOtherghost.alpha)
				bfOtherghost:draw()
				graphics.setColor(1,1,1, 1)
				bfOther:draw()
			end
            if curEnemy == "black" then
				graphics.setColor(enemyghost.colors[1], enemyghost.colors[2], enemyghost.colors[3], enemyghost.alpha)
				enemyghost:draw()
				graphics.setColor(1,1,1, 1)
                enemy:draw()
            elseif curEnemy == "blackold" then
				graphics.setColor(blackoldghost.colors[1], blackoldghost.colors[2], blackoldghost.colors[3], blackoldghost.alpha)
				blackoldghost:draw()
				graphics.setColor(1,1,1, 1)
                blackold:draw()
            end
            graphics.setColor(1,1,1, lolAlpha[1])
            deadFG:draw()
            graphics.setColor(1,1,1, 1)
			if curEnemy == "black" then
            	redGradient:draw()
			end

			weeksDefeat:drawRating()
		love.graphics.pop()
		
		weeksDefeat:drawUI()
	end,

	leave = function(self)
		weeksDefeat:leave()

        enemy = nil
        redGradient = nil
	end
}
