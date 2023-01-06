local downFunc, confirmFunc, backFunc, drawFunc, menuFunc, menuDesc

local menuState

local menuNum = 1
local theTracks
weekNum = 1
local songNum, songAppend
local songDifficulty = 2

local difficultyStrs = { 
	"easy",
	"normal",
	"hard"
}
local selectSound = love.audio.newSource("sounds/menu/select.ogg", "static")
local confirmSound = love.audio.newSource("sounds/menu/confirm.ogg", "static")

local function switchMenu(menu)

end

return {
	enter = function(self, previous)
		songNum = 0
		weekNum = 1
		theTracks = ""
		for trackLength = 1, #weekMeta[weekNum][2] do
			if theTracks ~= "" then
				theTracks = theTracks .. " | " .. weekMeta[weekNum][2][trackLength]
			else
				theTracks = weekMeta[weekNum][2][trackLength]
			end
		end

		currentWeek = 0


		function colourTween()
			Timer.tween(
				0.1,
				freeColour, 
				{
					[1] = freeplayColours[weekNum][1],
					[2] = freeplayColours[weekNum][2],
					[3] = freeplayColours[weekNum][3]
				}, 
				"linear"
			)
		end
		function colourTweenAlt()
			Timer.tween(
				0.1,
				freeColour, 
				{
					[1] = freeplayColours[1][1],
					[2] = freeplayColours[1][2],
					[3] = freeplayColours[1][3]
				}, 
				"linear"
			)
		end

		cam.sizeX, cam.sizeY = 0.9, 0.9
		camScale.x, camScale.y = 0.9, 0.9

		updatePres("Choosing A Week", "In the Week Select Menu", "logo", now)

		freeColour = {
			255,255,255
		}
		freeplayColours = {
			{146,0,68}, -- Tutorial
			{129,100,223}, -- Week 1
			{57,60,198}, -- Week 2
			{82,231,90}, -- Week 3
			{255,166,239}, -- Week 4
			{247,243,247}, -- Week 5
			{173,235,247}, -- Week 6
			{231,139,8} -- Week 7
		}
		Timer.tween(
			0.8,
			freeColour, 
			{
				[1] = freeplayColours[1][1],
				[2] = freeplayColours[1][2],
				[3] = freeplayColours[1][3]
			}, 
			"linear"
		)
		
		titleBG = graphics.newImage(love.graphics.newImage(graphics.imagePath("menu/weekMenu")))

		arrowUp = love.filesystem.load("sprites/menu/menuArrow.lua")()
		arrowDown = love.filesystem.load("sprites/menu/menuArrow.lua")()
		arrowLeft = love.filesystem.load("sprites/menu/menuArrow.lua")()
		arrowRight = love.filesystem.load("sprites/menu/menuArrow.lua")()

		arrowUp.x, arrowUp.y = 0, 175
		arrowDown.x, arrowDown.y = 0, 305

		arrowLeft.x, arrowLeft.y = -250, -270
		arrowRight.x, arrowRight.y = 250, -270

		--amongus


		arrowUp.orientation = 1.5707963267949
		arrowDown.orientation = 1.5707963267949*3
		arrowRight.orientation = 1.5707963267949*2

		enemyDanceLines = love.filesystem.load("sprites/menu/idlelines.lua")()

		difficultyAnim = love.filesystem.load("sprites/menu/difficulty.lua")()

		bfDanceLines = love.filesystem.load("sprites/menu/idlelines.lua")()

		gfDanceLines = love.filesystem.load("sprites/menu/idlelines.lua")()

		enemyDanceLines.sizeX, enemyDanceLines.sizeY = 0.5, 0.5

		bfDanceLines.sizeX, bfDanceLines.sizeY = 0.5, 0.5
		gfDanceLines.sizeX, gfDanceLines.sizeY = 0.5, 0.5

		bfDanceLines.x, bfDanceLines.y = 400, 0
		gfDanceLines.x, gfDanceLines.y = 0, -20
		enemyDanceLines.x, enemyDanceLines.y = -400, 0

		difficultyAnim.x, difficultyAnim.y = 0, 240

		--week images
		weekImages = {}
		for i = 0, 7 do 
			table.insert(weekImages, graphics.newImage(love.graphics.newImage(graphics.imagePath("menu/week" .. i))))
		end

		for i = 1, #weekImages do
			weekImages[i].y = -270
		end

		bfDanceLines:animate("boyfriend", true)
		gfDanceLines:animate("girlfriend", true)
		enemyDanceLines:animate("week1", true)

		switchMenu(1)

		graphics.setFade(0)
		graphics.fadeIn(0.5)

		function confirmFunc()
			music[1]:stop()
			songNum = 1

			status.setLoading(true)

			graphics.fadeOut(
				0.5,
				function()
					
					songAppend = difficultyStrs[songDifficulty]

					storyMode = true

					Gamestate.switch(weekData[weekNum], songNum, songAppend, weekNum)

					status.setLoading(false)
				end
			)
		end
		
	end,

	update = function(self, dt)
		function menuFunc()
			if weekNum == 7 then -- Due to senpais idlelines being smaller than the rest, we resize it             not every part of him is small tho :hot_face:
				enemyDanceLines.sizeX, enemyDanceLines.sizeY = 1, 1
			elseif weekNum == 4 then
				enemyDanceLines.sizeX = -0.5  -- pico's dumb ass was facing the wrong way
			else
				enemyDanceLines.sizeX, enemyDanceLines.sizeY = 0.5, 0.5
			end
			theTracks = ""
			for trackLength = 1, #weekMeta[weekNum][2] do
				if theTracks ~= "" then
					theTracks = theTracks .. " | " .. weekMeta[weekNum][2][trackLength]
				else
					theTracks = weekMeta[weekNum][2][trackLength]
				end
			end


			enemyDanceLines:animate("week" .. weekNum, true)
		end
		
		enemyDanceLines:update(dt)
		bfDanceLines:update(dt)
		gfDanceLines:update(dt)
		arrowUp:update(dt)
		arrowDown:update(dt)
		arrowLeft:update(dt)
		arrowRight:update(dt)

		if songDifficulty == 1 then
			difficultyAnim:animate("easy", true)
		elseif songDifficulty == 2 then
			difficultyAnim:animate("normal", true)
		elseif songDifficulty == 3 then
			difficultyAnim:animate("hard", true)
		end
		--print(weekNum)

		difficultyAnim:update(dt)

		if not graphics.isFading() then
			if input:pressed("left") then
				audio.playSound(selectSound)

				Timer.script(function(wait)
					arrowLeft:animate("arrow pressed", false)
					wait(0.1)
					arrowLeft:animate("arrow", true)
				end)

				if currentWeek ~= 0 then
					currentWeek = currentWeek - 1
					weekNum = weekNum - 1
				else
					currentWeek = 7
					weekNum = 8
				end
				if freeplayColours[weekNum] then colourTween() else colourTweenAlt() end
				menuFunc()
			elseif input:pressed("right") then
				audio.playSound(selectSound)

				Timer.script(function(wait)
					arrowRight:animate("arrow pressed", false)
					wait(0.1)
					arrowRight:animate("arrow", true)
				end)

				if currentWeek ~= 7 then
					currentWeek = currentWeek + 1
					weekNum = weekNum + 1
				else
					currentWeek = 0
					weekNum = 1
				end
				if freeplayColours[weekNum] then colourTween() else colourTweenAlt() end
				menuFunc()
			elseif input:pressed("down") then
				audio.playSound(selectSound)

				Timer.script(function(wait)
					arrowDown:animate("arrow pressed", false)
					wait(0.1)
					arrowDown:animate("arrow", true)
				end)

				if songDifficulty ~= 1 then
					songDifficulty = songDifficulty - 1
				else
					songDifficulty = 3 
				end

			elseif input:pressed("up") then
				audio.playSound(selectSound)

				Timer.script(function(wait)
					arrowUp:animate("arrow pressed", false)
					wait(0.1)
					arrowUp:animate("arrow", true)
				end)

				if songDifficulty ~= 3 then
					songDifficulty = songDifficulty + 1
				else
					songDifficulty = 1
				end

			elseif input:pressed("confirm") then
				audio.playSound(confirmSound)
                bfDanceLines:animate("boyfriend confirm", false)

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

			--titleBG:draw()

			love.graphics.push()

				graphics.setColorF(freeColour[1], freeColour[2], freeColour[3])
				love.graphics.scale(cam.sizeX, cam.sizeY)
				for i = 1, #weekDesc do
					weekImages[i]:draw()
				end

				

				titleBG:draw()

				graphics.setColor(1, 1, 1)

				difficultyAnim:draw()
				if weekNum ~= 1 then
					enemyDanceLines:draw()
				end
				bfDanceLines:draw()
				gfDanceLines:draw()

				--weekImages[currentWeek + 1]:draw()
				graphics.setColorF(freeColour[1], freeColour[2], freeColour[3])

				if weekImages[currentWeek+1]then weekImages[currentWeek+1]:draw() end

				love.graphics.printf({{freeColour[1], freeColour[2], freeColour[3]}, weekDesc[weekNum]}, -639, -395, 853, "center", nil, 1.5, 1.5)

				love.graphics.printf({{freeColour[1], freeColour[2], freeColour[3]}, theTracks}, -639, 350, 853, "center", nil, 1.5, 1.5)

				love.graphics.setColor(0, 0, 0, 0.4)

				love.graphics.setColor(1, 1, 1)
				arrowUp:draw()
				arrowLeft:draw()
				arrowRight:draw()
				arrowDown:draw()

			love.graphics.pop()
		love.graphics.pop()
	end,

	leave = function(self)
		enemyDanceLines = nil
		bfDanceLines = nil
		gfDanceLines = nil
		titleBG = nil
		difficultyAnim = nil
		Timer.clear()
	end
}