local upFunc, downFunc, confirmFunc, backFunc, drawFunc, musicStop

local menuState

local menuNum = 1

local songNum, songAppend
local songDifficulty = 2

local selectSound = love.audio.newSource("sounds/menu/select.ogg", "static")
local confirmSound = love.audio.newSource("sounds/menu/confirm.ogg", "static")
local transparency
local danceRight

local function switchMenu(menu)
	function backFunc()
		graphics.fadeOut(0.5, love.event.quit)
	end

	menuState = 1
end

return {
	enter = function(self, previous)
		if not music[1]:isPlaying() then
			music[1]:play()
		end
		music[1]:onBeat(function()
			self:onBeat(music[1]:getBeat())
		end)
		danceRight = false
		transparency = {0}
		Timer.tween(
			1,
			transparency,
			{[1] = 1},
			"out-quad"
		)
		changingMenu = false
		logo = sprite(-390, -420)
		logo:setFrames(paths.getSparrowFrames("logoBumpin"))
   		logo:addAnimByPrefix("bump", "logo bumpin", 24)

		starBG = graphics.newImage(love.graphics.newImage(graphics.imagePath("impmenu/starBG")))
		startFG = graphics.newImage(love.graphics.newImage(graphics.imagePath("impmenu/starFG")))

		starBG.translation = {x = 0, y = 0}
		startFG.translation = {x = 0, y = 0}

		logo:animate("bumpin", false)
		
		whiteRectangles = {}
		for i = 1, 15 do
			table.insert(whiteRectangles, graphics.newImage(love.graphics.newImage(graphics.imagePath("menu/whiteRectangle"))))
			whiteRectangles[i].x = -780 + 100*i
			whiteRectangles[i].y = -1000
		end

		songNum = 0

		switchMenu(1)

		graphics.setFade(0)
		graphics.fadeIn(0.5)

		updatePres("Press Enter", "In the Menu")
	end,
	onBeat = function(self, n)
		--if logo then logo:animate("anim", false) end
		if logo then logo:animate("bump", false) end
	end,

	update = function(self, dt)
		logo:update(dt)

		music[1]:updateBeat()

		if not graphics.isFading() then
			if input:pressed("confirm") then
				
				if not changingMenu then
					audio.playSound(confirmSound)
					changingMenu = true
					for i = 1, 15 do
						Timer.tween(0.5 + 0.1 + 0.03*i, whiteRectangles[i], {y = 0}, "linear",
							function()
								if i == 15 then
									graphics.fadeOut(0.2, function()
										Gamestate.switch(menuSelect)
										status.setLoading(false)
									end)
									
								end
							end
						)
					end
				end
			elseif input:pressed("back") then
				audio.playSound(selectSound)

				backFunc()
			end
		end

		starBG.translation.x = starBG.translation.x - 12.5 * dt
			if starBG.translation.x < -1102 then
				starBG.translation.x = 0
			end

			startFG.translation.x = startFG.translation.x - 25 * dt
			if startFG.translation.x < -1216 then
				startFG.translation.x = 0
			end
	end,

	draw = function(self)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)
			love.graphics.push()

				love.graphics.translate(starBG.translation.x, starBG.translation.y)
				for i = 1, 3 do
					starBG.x = (i - 1) * 1102
					starBG:draw()
				end
			love.graphics.pop()
			love.graphics.push()

				love.graphics.translate(startFG.translation.x, startFG.translation.y)
				for i = 1, 3 do
					startFG.x = (i - 1) * 1216
					startFG:draw()
				end
			love.graphics.pop()
			love.graphics.push()
				love.graphics.push()
					love.graphics.scale(0.9, 0.9)
					love.graphics.translate(menuDetails.titleLogo.x, menuDetails.titleLogo.y)
					logo:draw()
				love.graphics.pop()
				love.graphics.push()
					love.graphics.scale(0.9, 0.9)
				love.graphics.pop()
				love.graphics.push()
					graphics.setColor(0, 0, 0, 0.9)
					for i = 1, 15 do
						whiteRectangles[i]:draw()
					end
					graphics.setColor(1, 1, 1)
				love.graphics.pop()
			love.graphics.pop()

		love.graphics.pop()
	end,

	leave = function(self)
		logo = nil

		Timer.clear()
	end
}
