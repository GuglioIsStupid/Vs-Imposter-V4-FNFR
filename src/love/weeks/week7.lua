return {
    enter = function(self, from, songNum, songAppend)
		pauseColor = {50, 50, 50}
		weeks:enter() 
		stages["tank"]:enter()

		week = 7

		if storyMode and not died then
			musicPos = 0
			camera.sizeX, camera.sizeY = 1.1, 1.1
			camera.scaleX, camera.scaleY = 1.1, 1.1
		end

		song = songNum
		difficulty = songAppend

		enemyIcon:animate("tankman")
        
        enemy.sizeX = -1

		self:load()
	end,

	load = function(self)
		weeks:load()
		stages["tank"]:load()

		if song == 3 then
			picoSpeaker = love.filesystem.load("sprites/week7/picoSpeaker.lua")()
			picoSpeaker.x, picoSpeaker.y = 105, 110
			boyfriend = love.filesystem.load("sprites/week7/bfAndGF.lua")()
			boyfriend.x, boyfriend.y = 460, 423
			fakeBoyfriend = love.filesystem.load("sprites/week7/gfdead.lua")()
			fakeBoyfriend.x, fakeBoyfriend.y = 460, 423
			if not died and storyMode then
				video = cutscene.video("videos/stressCutscene.ogv")
				video:play()
			end

			inst = love.audio.newSource("songs/week7/stress/Inst.ogg", "stream")
			voices = love.audio.newSource("songs/week7/stress/Voices.ogg", "stream")
		elseif song == 2 then
			inst = love.audio.newSource("songs/week7/guns/Inst.ogg", "stream")
			voices = love.audio.newSource("songs/week7/guns/Voices.ogg", "stream")
			if storyMode and not died then
				video = cutscene.video("videos/gunsCutscene.ogv")
				video:play()
			end
		else
			inst = love.audio.newSource("songs/week7/ugh/Inst.ogg", "stream")
			voices = love.audio.newSource("songs/week7/ugh/Voices.ogg", "stream")
			if storyMode and not died then
				video = cutscene.video("videos/ughCutscene.ogv")
				video:play()
			end
		end

		self:initUI()

		if not inCutscene then
			weeks:setupCountdown()
		end
	end,

	initUI = function(self)
		weeks:initUI()

		if song == 3 then
			weeks:generateNotes("data/week7/stress/stress" .. difficulty .. ".json")
            --weeks:generatePicoNotes("data/week7/stress/picospeaker.json")
		elseif song == 2 then
			weeks:generateNotes("data/week7/guns/guns" .. difficulty .. ".json")
		else
			weeks:generateNotes("data/week7/ugh/ugh" .. difficulty .. ".json")
		end
	end,

	update = function(self, dt)
		weeks:update(dt)
		stages["tank"]:update(dt)

		if inCutscene then
			if not video:isPlaying() then 
				inCutscene = false
				video:destroy()
				weeks:setupCountdown()
			end
		end

		if song == 1 then
			if musicTime >= 5620 then
				if musicTime <= 5720 then
					if enemy:getAnimName() == "up" then
						enemy:animate("ugh", false)
					end
				end
			end
			if musicTime >= 14620 then
				if musicTime <= 14720 then
					if enemy:getAnimName() == "up" then
						enemy:animate("ugh", false)
					end
				end
			end
			if musicTime >= 49120 then
				if musicTime <= 49220 then
					if enemy:getAnimName() == "up" then
						enemy:animate("ugh", false)
					end
				end
			end
			if musicTime >= 77620 then
				if musicTime <= 77720 then
					if enemy:getAnimName() == "up" then
						enemy:animate("ugh", false)
					end
				end
			end
		end

        if song == 3 then
			if musicTime >= 62083 then
				if musicTime <= 62083 + 50 then
					enemy:animate("good", false)
				end
			end
		end

		if health >= 80 then
            if enemyIcon:getAnimName() == "tankman" then
                enemyIcon:animate("tankman losing", false)
            end
        else
            if enemyIcon:getAnimName() == "tankman losing" then
                enemyIcon:animate("tankman", false)
            end
        end

		if not (countingDown or graphics.isFading()) and not (inst:isPlaying() and voices:isPlaying()) and not paused and not inCutscene then
			if storyMode and song < 3 then
				song = song + 1
				died = false

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

	draw = function()
        if inCutscene then 
            video:draw()
            return
        end
        love.graphics.push()
            love.graphics.translate(graphics.getWidth()/2, graphics.getHeight()/2)
            love.graphics.scale(camera.sizeX, camera.sizeY)
            stages["tank"]:draw()
        love.graphics.pop()

        weeks:drawUI()
    end,

	leave = function(self)
		song = 1
        died = false
        inCutscene = false
        stages["tank"]:leave()
		weeks:leave()
	end
}