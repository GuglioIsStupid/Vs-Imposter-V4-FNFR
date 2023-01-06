local leftFunc, rightFunc, confirmFunc, backFunc, drawFunc

local menuState

local menuNum = 1

weekNum = 1
local songNum, songAppend
local songDifficulty = 2

local menuNames = {
	"FNF Freeplay",
	"Mod Menu Freeplay"
}

local difficultyStrs = {
	"-easy",
	"",
	"-hard"
}

local selectSound = love.audio.newSource("sounds/menu/select.ogg", "static")
local confirmSound = love.audio.newSource("sounds/menu/confirm.ogg", "static")

local function switchMenu(menu)
	if menu == 3 then
		graphics.fadeOut(0.5, function()
			Gamestate.switch(playModMenu)
		end)

		return switchMenu(1)
	elseif menu == 2 then
		graphics.fadeOut(0.5, function()
			Gamestate.switch(menuFreeplay)
		end)
	else
		function leftFunc()
			menuNum = (menuNum > 1) and menuNum - 1 or #menuNames
		end
		function rightFunc()
			menuNum = (menuNum < #menuNames) and menuNum + 1 or 1
		end
		function confirmFunc()
			switchMenu(menuNum + 1)
		end
		function backFunc()
			graphics.fadeOut(0.5, love.event.quit)
		end
		function drawFunc()
			graphics.setColor(1, 1, 0)
			love.graphics.printf("< " .. menuNames[menuNum] .. " >", -640, 285, 853, "center", nil, 1.5, 1.5)
			graphics.setColor(1, 1, 1)

			if input:getActiveDevice() == "joy" then
				love.graphics.printf("Left Stick/D-Pad: Select | A: Confirm | B: Exit", -640, 350, 1280, "center", nil, 1, 1)
			else
				love.graphics.printf("Arrow Keys: Select | Enter: Confirm | Escape: Exit", -640, 350, 1280, "center", nil, 1, 1)
			end
		end
	end

	menuState = 1
end


return {
	enter = function(self, previous)
		songNum = 0

		cam.sizeX, cam.sizeY = 0.9, 0.9
		camScale.x, camScale.y = 0.9, 0.9
		titleBG = graphics.newImage(love.graphics.newImage(graphics.imagePath("menu/menuDesat")))

		switchMenu(1)

		graphics.setFade(0)
		graphics.fadeIn(0.5)

	end,

	update = function(self, dt)

		if not graphics.isFading() then
			if input:pressed("left") then
				audio.playSound(selectSound)

				leftFunc()
			elseif input:pressed("right") then
				audio.playSound(selectSound)

				rightFunc()
			elseif input:pressed("confirm") then
				audio.playSound(confirmSound)

				confirmFunc()
			elseif input:pressed("back") then
				audio.playSound(selectSound)

				Gamestate.switch(menuSelect)
			end
		end
	end,

	draw = function(self)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)
			graphics.setColorF(176, 166, 145)
			titleBG:draw()
			graphics.setColor(1, 1, 1)

			love.graphics.push()
				love.graphics.scale(cam.sizeX, cam.sizeY)

				drawFunc()
			love.graphics.pop()
		love.graphics.pop()
	end,

	leave = function(self)

		Timer.clear()
	end
}