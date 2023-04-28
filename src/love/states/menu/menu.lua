local upFunc, downFunc, confirmFunc, drawFunc, musicStop

local menuState

local menuNum = 1

local songNum, songAppend
local songDifficulty = 2

local selectSound = love.audio.newSource("sounds/menu/select.ogg", "static")
local confirmSound = love.audio.newSource("sounds/menu/confirm.ogg", "static")
local transparency

return {
	enter = function(self, previous)
		beatHandler.setBPM(102)
		if not music:isPlaying() then
			music:play()
		end
		function tweenMenu()
			if logo.y == -300 then 
				Timer.tween(1, logo, {y = -125}, "out-expo")
			end
			if girlfriendTitle.x == 500 then
				Timer.tween(1, girlfriendTitle, {x = 325}, "out-expo")
			end
		end

		function logoRotate()
			Timer.tween(2, logo, {orientation = 0.15}, "in-out-back", function()
				Timer.tween(2, logo, {orientation = -0.15}, "in-out-back", function()
					logoRotate()
				end)
			end)
		end

		transparency = {0}
		Timer.tween(
			1,
			transparency,
			{[1] = 1},
			"out-quad"
		)
		titleBG = graphics.newImage(graphics.imagePath("menu/titleBG"))
		changingMenu = false
		logo = love.filesystem.load("sprites/ve-logo.lua")()
		
		girlfriendTitle = love.filesystem.load("sprites/menu/girlfriend-title.lua")()
		logo:animate("anim", false)

		girlfriendTitle:setAnimSpeed(14.4 / (60 / 102))

		girlfriendTitle.x, girlfriendTitle.y = 500, 65
		logo.x, logo.y = -350, -300

		tweenMenu()
		logoRotate()

		songNum = 0

		if firstStartup then
			graphics.setFade(0) 
			graphics.fadeIn(0.5) 
		else graphics:fadeInWipe(0.6) end

		firstStartup = false
	end,

	update = function(self, dt)
		girlfriendTitle:update(dt)
		logo:update(dt)

		beatHandler.update(dt)

		if beatHandler.onBeat() then 
			if logo then logo:animate("anim", false) end
		end


		if not graphics.isFading() then
			if input:pressed("confirm") then
				if not changingMenu then
					audio.playSound(confirmSound)
					changingMenu = true
					graphics:fadeOutWipe(0.7, function()
						Gamestate.switch(menuSelect)
						status.setLoading(false)							
					end)
				end
			elseif input:pressed("back") then
				audio.playSound(selectSound)
				love.event.quit()
			end
		end
	end,

	draw = function(self)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)

			love.graphics.push()
				love.graphics.push()
					titleBG:draw()
				love.graphics.pop()
				love.graphics.push()
					love.graphics.scale(0.9, 0.9)
					logo:draw()
				love.graphics.pop()
				love.graphics.push()
					love.graphics.scale(0.9, 0.9)
					girlfriendTitle:draw()
				love.graphics.pop()
			love.graphics.pop()

		love.graphics.pop()
	end,

	leave = function(self)
		girlfriendTitle = nil
		logo = nil

		Timer.clear()
	end
}
