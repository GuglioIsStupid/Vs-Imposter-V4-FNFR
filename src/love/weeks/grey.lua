local difficulty

local stageBack, stageFront, curtains

return {
	enter = function(self, from, songNum, songAppend)
		pauseColor = {129, 100, 223}
		weeksGrey:enter()
		stages["greyElec"]:enter()


		week = 1
		weekString = "grey"

		status.setNoResize(true)


		song = songNum
		difficulty = songAppend


		self:load()

		
       -- camera.sizeX, camera.sizeY = 0.7, 0.7
       -- defaultCamZoom = 0.7, 0.7

	   --[[
	   ChromaticAbberation = love.graphics.newShader[[
		uniform float amount;

		vec2 PincushionDistortion(in vec2 uv, float strength) 
		{
			vec2 st = uv - 0.5;
			float uvA = atan(st.x, st.y);
			float uvD = dot(st, st);
			return 0.5 + vec2(sin(uvA), cos(uvA)) * sqrt(uvD) * (1.0 - strength * uvD);
		}

		vec3 ChromaticAbberation(sampler2D tex, in vec2 uv) 
		{
			float rChannel = texture(tex, PincushionDistortion(uv, 0.3 * amount)).r;
			float gChannel = texture(tex, PincushionDistortion(uv, 0.15 * amount)).g;
			float bChannel = texture(tex, PincushionDistortion(uv, 0.075 * amount)).b;
			vec3 retColor = vec3(rChannel, gChannel, bChannel);
			return retColor;
		}

		vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords)
		{
			vec2 uv = texture_coords;
			vec3 col = ChromaticAbberation(texture, uv);
		
			return vec4(col, 1.0);
		}
	   ]]
	   --]]

	   --ChromaticAbberation:send("amount", 0.5)

	   effect = moonshine(moonshine.effects.ChromaticAbberation)

	   canvas = love.graphics.newCanvas(1280, 720)

	   chromFreq = 1
	   chromAmount = {-0.5}
	   chromAmountHard = 0

	   defaultCamZoom = 1

	end,

	load = function(self)
		weeksGrey:load()


		if song == 3 then
			inst = love.audio.newSource("songs/neurotic/Inst.ogg", "stream")
			voices = love.audio.newSource("songs/neurotic/Voices.ogg", "stream")
		elseif song == 2 then
			inst = love.audio.newSource("songs/blackout/Inst.ogg", "stream")
			voices = love.audio.newSource("songs/blackout/Voices.ogg", "stream")
		else
			inst = love.audio.newSource("songs/delusion/Inst.ogg", "stream")
			voices = love.audio.newSource("songs/delusion/Voices.ogg", "stream")
		end

		self:initUI()

		weeksGrey:setupCountdown()

		camBopInterval = 4
		camBopIntensity = 1
		flashAlpha = 0
	end,

	initUI = function(self)
		weeksGrey:initUI()


		if song == 3 then
			doMustHitSectionCam = true
			weeksGrey:generateNotes("songs/neurotic/neurotic-hard.json")
			--weeksGrey:generateEvents("songs/neurotic/events.json")

		elseif song == 2 then
			doMustHitSectionCam = true
			weeksGrey:generateNotes("songs/blackout/blackout-hard.json")
			weeksGrey:generateEvents("songs/blackout/events.json")

		else
			doMustHitSectionCam = true
			weeksGrey:generateNotes("songs/delusion/delusion-hard.json")
			weeksGrey:generateEvents("songs/delusion/events.json")

		end

		chromAmount = {-0.5}
	end,

	update = function(self, dt)
		weeksGrey:update(dt)
		stages["greyElec"]:update(dt)

		flashAlpha = util.lerp(flashAlpha, 0, util.clamp(0, dt * 5, 1))

		if health >= 80 then
			if enemyIcon:getAnimName() == "yellow" then
				weeksGrey:setIcon("enemy", "yellow losing")
			elseif enemyIcon:getAnimName() == "white" then
				weeksGrey:setIcon("enemy", "white losing")
			elseif enemyIcon:getAnimName() == "black" then
				weeksGrey:setIcon("enemy", "black losing")
			end
		else
			if enemyIcon:getAnimName() == "yellow losing" then
				weeksGrey:setIcon("enemy", "yellow")
			elseif enemyIcon:getAnimName() == "white losing" then
				weeksGrey:setIcon("enemy", "white")
			elseif enemyIcon:getAnimName() == "black losing" then
				weeksGrey:setIcon("enemy", "black")
			end
		end

		if beatHandler.onBeat() and beatHandler.getBeat() % chromFreq == 0 and not graphics.isFading() and not countingDown then 
			if chromTween then 
				Timer.cancel(chromTween)
			end
			chromAmount = {chromAmountHard}
			chromTween = Timer.tween(0.45, chromAmount, {0}, "out-quad")
		end

		if not (countingDown or graphics.isFading()) and not (inst:isPlaying() and voices:isPlaying()) and not paused then
			if storyMode and song < 3 then
				--[[
				if score > highscores[weekNum-1][difficulty].scores[song] then
					highscores[weekNum-1][difficulty].scores[song] = score
					saveHighscores()
				end
				newAccuracy = convertedAcc:gsub("%%", "")
				if tonumber(newAccuracy) > highscores[weekNum-1][difficulty].accuracys[song] then
					print("New accuracy: " .. newAccuracy)
					highscores[weekNum-1][difficulty].accuracys[song] = tonumber(newAccuracy)
					saveHighscores()
				end
				--]]
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

		effect.ChromaticAbberation.amount = chromAmount[1]

		weeksGrey:updateUI(dt)
	end,

	draw = function(self)
		love.graphics.push()
			love.graphics.setCanvas(canvas)
			effect(function()
				love.graphics.clear()

				love.graphics.push()
					love.graphics.translate(1280 / 2, 720 / 2)

					--love.graphics.scale(camera.esizeX, camera.esizeY)
					--love.graphics.scale(camera.sizeX, camera.sizeY)

					stages["greyElec"]:draw()
					weeksGrey:drawRating(0.9)
				love.graphics.pop()
			end)

			if not paused then
				weeksGrey:drawUI()
			end

			love.graphics.setCanvas()

			canvasScale = math.min(math.floor(graphics.getWidth() / 1280), math.floor(graphics.getHeight() / 720))
			if canvasScale < 1 then canvasScale = math.min(graphics.getWidth() / 1280, graphics.getHeight() / 720) end

			love.graphics.draw(canvas, 0, 0, 0, graphics.getWidth() / canvas:getWidth(), graphics.getHeight() / canvas:getHeight())

			graphics.setColor(0.6,0,0,flashAlpha)
			love.graphics.rectangle("fill", 0, 0, graphics.getWidth(), graphics.getHeight())
			graphics.setColor(1,1,1,1)
		love.graphics.pop()
	end,

	leave = function(self)
		stages["greyElec"]:leave()
		weeksGrey:leave()

		status.setNoResize(false)
	end
}
