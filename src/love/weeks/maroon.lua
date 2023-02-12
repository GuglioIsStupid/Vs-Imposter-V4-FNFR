local difficulty

local stageBack, stageFront, curtains

return {
	enter = function(self, from, songNum, songAppend)
		weeks:enter()
		song = songNum

		if song == 3 then
			stages["maroon2"]:enter()
		else

			stages["maroon1"]:enter()
		end

		status.setNoResize(true)

		week = 1
		weekString = "maroon"

		gameOverMusic = "normal"


		difficulty = songAppend

		enemyIcon:animate("red impostor 1", false)

		heatwaveShader = love.graphics.newShader([[
			extern number iTime;
			vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords) {
				vec2 p_m = texture_coords;
				vec2 p_d = p_m;

				p_d.t -= iTime * 0.05;
				p_d.t = mod(p_d.t, 1.0);

				vec4 dst_map_val = Texel(texture, p_d);

				vec2 dst_offset = dst_map_val.xy;
				dst_offset -= vec2(.5,.5);
				dst_offset *= 2.;
				dst_offset *= 0.009; //THIS CONTROLS THE INTENSITY [higher numbers = MORE WAVY]

				//reduce effect towards Y top
				dst_offset *= pow(p_m.t, 1.4); //THIS CONTROLS HOW HIGH UP THE SCREEN THE EFFECT GOES [higher numbers = less screen space]

				vec2 dist_tex_coord = p_m.st + dst_offset;
				return Texel(texture, dist_tex_coord);
			}
		]])

		effect = moonshine(moonshine.effects.heatwave)

		--push.setShader(heatwaveShader)

		canvas = love.graphics.newCanvas(1280, 720)

		self:load()
	end,

	load = function(self)
		weeks:load()

		if song == 3 then
			stages["maroon1"]:leave()
			stages["maroon2"]:load()
			inst = love.audio.newSource("songs/boiling-point/Inst.ogg", "stream")
			voices = love.audio.newSource("songs/boiling-point/Voices.ogg", "stream")
		elseif song == 2 then
			stages["maroon1"]:load()

			inst = love.audio.newSource("songs/magmatic/Inst.ogg", "stream")
			voices = love.audio.newSource("songs/magmatic/Voices.ogg", "stream")
		else
			stages["maroon1"]:load()

			inst = love.audio.newSource("songs/ashes/Inst.ogg", "stream")
			voices = love.audio.newSource("songs/ashes/Voices.ogg", "stream")
		end

		self:initUI()

		weeks:setupCountdown()
	end,

	initUI = function(self)
		weeks:initUI()

		if song == 3 then
			weeks:generateNotes("songs/boiling-point/boiling-point-hard.json")
			--weeks:generateEvents("songs/boiling-point/events.json")
		elseif song == 2 then
			weeks:generateNotes("songs/magmatic/magmatic-hard.json")
			--weeks:generateEvents("songs/magmatic/events.json")
		else
			weeks:generateNotes("songs/ashes/ashes-hard.json")
			--weeks:generateEvents("songs/ashes/events.json")
		end
	end,

	update = function(self, dt)

		graphics.screenBase(1280, 720)
		weeks:update(dt)
		if song == 3 then
			stages["maroon2"]:update(dt)
		else
			stages["maroon1"]:update(dt)

		end
		if health >= 80 then
			if enemyIcon:getAnimName() == "red impostor 1" then
				enemyIcon:animate("red impostor 1 losing", false)
			end
		else
			if enemyIcon:getAnimName() == "red impostor 1 losing" then
				enemyIcon:animate("red impostor 1", false)
			end
		end

		if not (countingDown or graphics.isFading()) and not (inst:isPlaying() and voices:isPlaying()) and not paused then
			if storyMode and song < 3 then
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

		--change effects time setter
		effect.heatwave.time = love.timer.getTime()

		weeks:updateUI(dt)
	end,

	draw = function(self)
		love.graphics.push()

			love.graphics.setCanvas(canvas)
			effect(function()
				love.graphics.clear()

				love.graphics.push()
					love.graphics.translate(1280 / 2, 720 / 2)
					love.graphics.scale(camera.esizeX, camera.esizeY)
					love.graphics.scale(camera.sizeX, camera.sizeY)
					if song == 3 then
						
							stages["maroon2"]:draw()
						
					else
						stages["maroon1"]:draw()
					end
					
					weeks:drawRating(0.9)
				love.graphics.pop()
			end)

			weeks:drawUI()
			love.graphics.setCanvas()
		
		love.graphics.pop()

		canvasScale = math.min(math.floor(graphics.getWidth() / 1280), math.floor(graphics.getHeight() / 720))
		if canvasScale < 1 then canvasScale = math.min(graphics.getWidth() / 1280, graphics.getHeight() / 720) end

		love.graphics.draw(canvas, 0, 0, 0, graphics.getWidth() / canvas:getWidth(), graphics.getHeight() / canvas:getHeight())

		print(canvasScale)

	end,

	leave = function(self)
		weeks:leave()

		status.setNoResize(false)
	end
}
