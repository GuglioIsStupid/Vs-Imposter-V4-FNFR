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
		if not music:isPlaying() then
			music:play()
		end
		danceRight = false
		transparency = {0}
		Timer.tween(
			1,
			transparency,
			{[1] = 1},
			"out-quad"
		)
		changingMenu = false

		starBG = graphics.newImage(graphics.imagePath("impmenu/starBG"))
		startFG = graphics.newImage(graphics.imagePath("impmenu/starFG"))

		starBG.translation = {x = 0, y = 0}
		startFG.translation = {x = 0, y = 0}

		songNum = 0

		switchMenu(1)

		graphics.setFade(0)
		graphics.fadeIn(0.5)
	end,
	onBeat = function(self, n)
		--if logo then logo:animate("anim", false) end
	end,

	update = function(self, dt)
		if not graphics.isFading() then
			if input:pressed("confirm") then
				
				if not changingMenu then
					audio.playSound(confirmSound)
					changingMenu = true
					graphics.fadeOut(0.2, function()
						Gamestate.switch(menuSelect)
						status.setLoading(false)
					end)
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
			if startFG.translation.x < -1116 then
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
					love.graphics.pop()
					love.graphics.push()
						love.graphics.scale(0.9, 0.9)
					love.graphics.pop()
				love.graphics.pop()

			love.graphics.pop()
	end,

	leave = function(self)
		logo = nil
		starBG = nil
		startFG = nil

		Timer.clear()
	end
}
