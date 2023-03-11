--[[----------------------------------------------------------------------------
This file is part of Friday Night Funkin' Rewritten

Copyright (C) 2021  HTV04

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
------------------------------------------------------------------------------]]

local animList = {
	"left",
	"down",
	"up",
	"right"
}
local inputList = {
	"gameLeft",
	"gameDown",
	"gameUp",
	"gameRight"
}

local ratingTimers = {}

local useAltAnims
local notMissed = {}

local doAttack = false

return {
	enter = function(self)

		healthGain = 2
		healthDrain = 2
		


		love.graphics.setDefaultFilter("nearest")
		sounds = {
			countdown = {
				three = love.audio.newSource("sounds/countdown-3.ogg", "static"),
				two = love.audio.newSource("sounds/countdown-2.ogg", "static"),
				one = love.audio.newSource("sounds/countdown-1.ogg", "static"),
				go = love.audio.newSource("sounds/countdown-go.ogg", "static")
			},
			miss = {
				love.audio.newSource("sounds/miss1.ogg", "static"),
				love.audio.newSource("sounds/miss2.ogg", "static"),
				love.audio.newSource("sounds/miss3.ogg", "static")
			},
			death = love.audio.newSource("sounds/death.ogg", "static")
		}


		--[[
		if weekNumber == "golden-land" then
			images = {
				icons = love.graphics.newImage(graphics.imagePath("icons")),
				notes = love.graphics.newImage(graphics.imagePath("pixel/notes")),
				numbers = love.graphics.newImage(graphics.imagePath("numbers"))
			}
		else
			images = {
				icons = love.graphics.newImage(graphics.imagePath("icons")),
				notes = love.graphics.newImage(graphics.imagePath("notes")),
				numbers = love.graphics.newImage(graphics.imagePath("numbers"))
			}
		end

		--]]

		images = {
			icons = love.graphics.newImage(graphics.imagePath("icons")),
			notes = love.graphics.newImage(graphics.imagePath("notes")),
			--love.graphics.setDefaultFilter("nearest")
			notesp = love.graphics.newImage(graphics.imagePath("notes")),
			--love.graphics.setDefaultFilter("linear")
			numbers = love.graphics.newImage(graphics.imagePath("numbers"))
		}

		
		sprites = {
			icons = love.filesystem.load("sprites/icons.lua"),
			numbers = love.filesystem.load("sprites/numbers.lua")
		}

		doAttack = false

		girlfriend = love.filesystem.load("sprites/girlfriend.lua")()
		boyfriend = love.filesystem.load("sprites/boyfriend.lua")()
		lava = love.filesystem.load("sprites/i-hate-you/lava.lua")()

		mechanics = true


		lava.y = 700

		love.graphics.setDefaultFilter("nearest")
		love.graphics.setDefaultFilter("linear")

		lava:animate("anim", true)
		rating = love.filesystem.load("sprites/rating.lua")()

		rating.sizeX, rating.sizeY = 0.75, 0.75
		numbers = {}
		for i = 1, 3 do
			numbers[i] = sprites.numbers()

			numbers[i].sizeX, numbers[i].sizeY = 0.5, 0.5
		end

		enemyIcon = sprites.icons()
		boyfriendIcon = sprites.icons()

		if settings.downscroll then
			enemyIcon.y = -400
			boyfriendIcon.y = -400
		else
			enemyIcon.y = 350
			boyfriendIcon.y = 350
		end
		enemyIcon.sizeX, enemyIcon.sizeY = 1.5, 1.5
		boyfriendIcon.sizeX, boyfriendIcon.sizeY = -1.5, 1.5

		countdownFade = {}
		countdown = love.filesystem.load("sprites/countdown.lua")()
	end,

	load = function(self)
		for i = 1, 4 do
			notMissed[i] = true
		end
		useAltAnims = false

		camera:addPoint("boyfriend", -boyfriend.x + 100, -boyfriend.y + 75)
		camera:addPoint("enemy", -enemy.x - 100, -enemy.y + 75)


		if weekNumber == "apparition" then
			cam.x, cam.y = 100, -165
			cam.sizeX, cam.sizeY = 1.05, 1.05
		elseif weekNumber == "alone" then
			cam.x, cam.y = -boyfriend.x + 100, -boyfriend.y + 100
		else
			camera:moveToPoint(0, "boyfriend")
		end

		rating.x = girlfriend.x
		for i = 1, 3 do
			numbers[i].x = girlfriend.x - 100 + 50 * i
		end

		ratingVisibility = {0}
		combo = 0

		enemy:animate("idle")

		--enemyTwo = enemy     guglio wtf was this supposed to do

		--nevermind sorry guglio i see what you were doing

		--you did it wrong though

		if weekNumber == "golden-land" then
			enemyTwo = love.filesystem.load("sprites/golden-land/marioMad.lua")()
			enemyTwo.sizeX, enemyTwo.sizeY = 2.5, 2.5
			enemyTwo.x, enemyTwo.y = -380, -110
		else
			enemyTwo = enemy
		end

		enemyTwo:animate("idle")
		boyfriend:animate("idle")

		camBopInterval = 4
		camBopIntensity = 1

		graphics.fadeIn(0.5)
	end,

	initUI = function(self)
		events = {}
		enemyNotes = {}
		boyfriendNotes = {}
		health = 50
		score = 0
		hasHitZero = false
		livesCount = extraLives
		highestCombo = 0
		sicks = 0
		goods = 0
		bads = 0
		shits = 0
		misses = 0
		doAttack = false

		if weekNumber ~= "golden-land" then
			sprites.leftArrow = love.filesystem.load("sprites/left-arrow.lua")
			sprites.downArrow = love.filesystem.load("sprites/down-arrow.lua")
			sprites.upArrow = love.filesystem.load("sprites/up-arrow.lua")
			sprites.rightArrow = love.filesystem.load("sprites/right-arrow.lua")
		else
			love.graphics.setDefaultFilter("nearest")
			sprites.leftArrow = love.filesystem.load("sprites/pixel/notes/left-arrow.lua")
			sprites.downArrow = love.filesystem.load("sprites/pixel/notes/down-arrow.lua")
			sprites.upArrow = love.filesystem.load("sprites/pixel/notes/up-arrow.lua")
			sprites.rightArrow = love.filesystem.load("sprites/pixel/notes/right-arrow.lua")
			love.graphics.setDefaultFilter("linear")
		end

		enemyArrows = {
			sprites.leftArrow(),
			sprites.downArrow(),
			sprites.upArrow(),
			sprites.rightArrow()
		}
		boyfriendArrows= {
			sprites.leftArrow(),
			sprites.downArrow(),
			sprites.upArrow(),
			sprites.rightArrow()
		}


		for i = 1, 4 do
			enemyArrows[i].x = -925 + 165 * i
			boyfriendArrows[i].x = 100 + 165 * i
			if settings.downscroll then
				enemyArrows[i].y = 400
				boyfriendArrows[i].y = 400
			else
				enemyArrows[i].y = -400
				boyfriendArrows[i].y = -400
			end

			enemyNotes[i] = {}
			boyfriendNotes[i] = {}

			if weekNumber == "golden-land" then
				boyfriendArrows[i].sizeX, boyfriendArrows[i].sizeY = 7, 7
				enemyArrows[i].sizeX, enemyArrows[i].sizeY = 7, 7
			end
		end
	end,

	generateNotes = function(self, chart)
		local eventBpm

		for i = 1, #chart do
			bpm = chart[i].bpm

			if bpm then
				break
			end
		end
		if not bpm then
			bpm = 100
		end


		speed = chart.speed

		for i = 1, #chart do
			eventBpm = chart[i].bpm

			for j = 1, #chart[i].sectionNotes do
				local sprite

				local mustHitSection = chart[i].mustHitSection
				local altAnim = chart[i].altAnim
				local noteType = chart[i].sectionNotes[j].noteType
				local noteTime = chart[i].sectionNotes[j].noteTime

				if j == 1 then
					table.insert(events, {eventTime = chart[i].sectionNotes[1].noteTime, mustHitSection = mustHitSection, bpm = eventBpm, altAnim = altAnim})
				end

				if noteType == 0 or noteType == 4 then
					sprite = sprites.leftArrow
				elseif noteType == 1 or noteType == 5 then
					sprite = sprites.downArrow
				elseif noteType == 2 or noteType == 6 then
					sprite = sprites.upArrow
				elseif noteType == 3 or noteType == 7 then
					sprite = sprites.rightArrow
				end

				if settings.downscroll then
					if mustHitSection then
						if noteType >= 4 then
							local id = noteType - 3
							local c = #enemyNotes[id] + 1
							local x = enemyArrows[id].x

							table.insert(enemyNotes[id], sprite())
							enemyNotes[id][c].x = x
							enemyNotes[id][c].y = 400 - noteTime * 0.6 * speed

							enemyNotes[id][c]:animate("on", false)
							if weekNumber == "golden-land" then
								enemyNotes[id][c].sizeX, enemyNotes[id][c].sizeY = 7.5, 7.5
							end

							if chart[i].sectionNotes[j].noteLength > 0 then
								local c

								for k = 71 / speed, chart[i].sectionNotes[j].noteLength, 71 / speed do
									local c = #enemyNotes[id] + 1

									table.insert(enemyNotes[id], sprite())
									enemyNotes[id][c].x = x
									enemyNotes[id][c].y = 400 - (noteTime + k) * 0.6 * speed
									if weekNumber == "golden-land" then
										enemyNotes[id][c].sizeX, enemyNotes[id][c].sizeY = 7.5, 7.5
									end
									if weekNumber == "golden-land" then
										enemyNotes[id][c].sizeX, enemyNotes[id][c].sizeY = 7.5, 9.5
									end

									enemyNotes[id][c]:animate("hold", false)
								end

								c = #enemyNotes[id]

								enemyNotes[id][c].offsetY = -10
								enemyNotes[id][c].sizeY = -1
								if weekNumber == "golden-land" then
									enemyNotes[id][c].sizeX, enemyNotes[id][c].sizeY = 7.5, 7.5
								end

								enemyNotes[id][c]:animate("end", false)
							end
						else
							local id = noteType + 1
							local c = #boyfriendNotes[id] + 1
							local x = boyfriendArrows[id].x

							table.insert(boyfriendNotes[id], sprite())
							boyfriendNotes[id][c].x = x
							boyfriendNotes[id][c].y = 400 - noteTime * 0.6 * speed

							boyfriendNotes[id][c]:animate("on", false)
							if weekNumber == "golden-land" then
								boyfriendNotes[id][c].sizeX, boyfriendNotes[id][c].sizeY = 7.5, 7.5
							end

							if chart[i].sectionNotes[j].noteLength > 0 then
								local c

								for k = 71 / speed, chart[i].sectionNotes[j].noteLength, 71 / speed do
									local c = #boyfriendNotes[id] + 1

									table.insert(boyfriendNotes[id], sprite())
									boyfriendNotes[id][c].x = x
									boyfriendNotes[id][c].y = 400 - (noteTime + k) * 0.6 * speed
									if weekNumber == "golden-land" then
										boyfriendNotes[id][c].sizeX, boyfriendNotes[id][c].sizeY = 7.5, 7.5
									end
									if weekNumber == "golden-land" then
										boyfriendNotes[id][c].sizeX, boyfriendNotes[id][c].sizeY = 7.5, 9.5
									end

									boyfriendNotes[id][c]:animate("hold", false)
								end

								c = #boyfriendNotes[id]

								boyfriendNotes[id][c].offsetY = -10
								boyfriendNotes[id][c].sizeY = -1
								if weekNumber == "golden-land" then
									boyfriendNotes[id][c].sizeX, boyfriendNotes[id][c].sizeY = 7.5, 7.5
								end

								boyfriendNotes[id][c]:animate("end", false)
							end
						end
					else
						if noteType >= 4 then
							local id = noteType - 3
							local c = #boyfriendNotes[id] + 1
							local x = boyfriendArrows[id].x

							table.insert(boyfriendNotes[id], sprite())
							boyfriendNotes[id][c].x = x
							boyfriendNotes[id][c].y = 400 - noteTime * 0.6 * speed

							boyfriendNotes[id][c]:animate("on", false)
							if weekNumber == "golden-land" then
								boyfriendNotes[id][c].sizeX, boyfriendNotes[id][c].sizeY = 7.5, 7.5
							end

							if chart[i].sectionNotes[j].noteLength > 0 then
								local c

								for k = 71 / speed, chart[i].sectionNotes[j].noteLength, 71 / speed do
									local c = #boyfriendNotes[id] + 1

									table.insert(boyfriendNotes[id], sprite())
									boyfriendNotes[id][c].x = x
									boyfriendNotes[id][c].y = 400 - (noteTime + k) * 0.6 * speed
									if weekNumber == "golden-land" then
										boyfriendNotes[id][c].sizeX, boyfriendNotes[id][c].sizeY = 7.5, 7.5
									end
									if weekNumber == "golden-land" then
										boyfriendNotes[id][c].sizeX, boyfriendNotes[id][c].sizeY = 7.5, 9.5
									end

									boyfriendNotes[id][c]:animate("hold", false)
								end

								c = #boyfriendNotes[id]

								boyfriendNotes[id][c].offsetY = -10
								boyfriendNotes[id][c].sizeY = -1
								if weekNumber == "golden-land" then
									boyfriendNotes[id][c].sizeX, boyfriendNotes[id][c].sizeY = 7.5, 7.5
								end

								boyfriendNotes[id][c]:animate("end", false)
							end
						else
							local id = noteType + 1
							local c = #enemyNotes[id] + 1
							local x = enemyArrows[id].x

							table.insert(enemyNotes[id], sprite())
							enemyNotes[id][c].x = x
							enemyNotes[id][c].y = 400 - noteTime * 0.6 * speed

							enemyNotes[id][c]:animate("on", false)
							if weekNumber == "golden-land" then
								enemyNotes[id][c].sizeX, enemyNotes[id][c].sizeY = 7.5, 7.5
							end

							if chart[i].sectionNotes[j].noteLength > 0 then
								local c

								for k = 71 / speed, chart[i].sectionNotes[j].noteLength, 71 / speed do
									local c = #enemyNotes[id] + 1

									table.insert(enemyNotes[id], sprite())
									enemyNotes[id][c].x = x
									enemyNotes[id][c].y = 400 - (noteTime + k) * 0.6 * speed
									if weekNumber == "golden-land" then
										enemyNotes[id][c].sizeX, enemyNotes[id][c].sizeY = 7.5, 9.5
									end


									enemyNotes[id][c]:animate("hold", false)
								end

								c = #enemyNotes[id]

								enemyNotes[id][c].offsetY = -10
								enemyNotes[id][c].sizeY = -1
								if weekNumber == "golden-land" then
									enemyNotes[id][c].sizeX, enemyNotes[id][c].sizeY = 7.5, 7.5
								end

								enemyNotes[id][c]:animate("end", false)
							end
						end
					end
				else
					if mustHitSection then
						if noteType >= 4 then
							local id = noteType - 3
							local c = #enemyNotes[id] + 1
							local x = enemyArrows[id].x

							table.insert(enemyNotes[id], sprite())
							enemyNotes[id][c].x = x
							enemyNotes[id][c].y = -400 + noteTime * 0.6 * speed

							enemyNotes[id][c]:animate("on", false)
							if weekNumber == "golden-land" then
								enemyNotes[id][c].sizeX, enemyNotes[id][c].sizeY = 7.5, 7.5
							end

							if chart[i].sectionNotes[j].noteLength > 0 then
								local c

								for k = 71 / speed, chart[i].sectionNotes[j].noteLength, 71 / speed do
									local c = #enemyNotes[id] + 1

									table.insert(enemyNotes[id], sprite())
									enemyNotes[id][c].x = x
									enemyNotes[id][c].y = -400 + (noteTime + k) * 0.6 * speed

									if weekNumber == "golden-land" then
										enemyNotes[id][c].sizeX, enemyNotes[id][c].sizeY = 7.5, 9.5
									end

									enemyNotes[id][c]:animate("hold", false)
								end

								c = #enemyNotes[id]

								enemyNotes[id][c].offsetY = -10

								enemyNotes[id][c]:animate("end", false)
							end
						else
							local id = noteType + 1
							local c = #boyfriendNotes[id] + 1
							local x = boyfriendArrows[id].x

							table.insert(boyfriendNotes[id], sprite())
							boyfriendNotes[id][c].x = x
							boyfriendNotes[id][c].y = -400 + noteTime * 0.6 * speed

							boyfriendNotes[id][c]:animate("on", false)
							if weekNumber == "golden-land" then
								boyfriendNotes[id][c].sizeX, boyfriendNotes[id][c].sizeY = 7.5, 7.5
							end

							if chart[i].sectionNotes[j].noteLength > 0 then
								local c

								for k = 71 / speed, chart[i].sectionNotes[j].noteLength, 71 / speed do
									local c = #boyfriendNotes[id] + 1

									table.insert(boyfriendNotes[id], sprite())
									boyfriendNotes[id][c].x = x
									boyfriendNotes[id][c].y = -400 + (noteTime + k) * 0.6 * speed
									if weekNumber == "golden-land" then
										boyfriendNotes[id][c].sizeX, boyfriendNotes[id][c].sizeY = 7.5, 9.5
									end


									boyfriendNotes[id][c]:animate("hold", false)
								end

								c = #boyfriendNotes[id]

								boyfriendNotes[id][c].offsetY = -10
								if weekNumber == "golden-land" then
									boyfriendNotes[id][c].sizeX, boyfriendNotes[id][c].sizeY = 7.5, 7.5
								end

								boyfriendNotes[id][c]:animate("end", false)
							end
						end
					else
						if noteType >= 4 then
							local id = noteType - 3
							local c = #boyfriendNotes[id] + 1
							local x = boyfriendArrows[id].x

							table.insert(boyfriendNotes[id], sprite())
							boyfriendNotes[id][c].x = x
							boyfriendNotes[id][c].y = -400 + noteTime * 0.6 * speed

							boyfriendNotes[id][c]:animate("on", false)
							if weekNumber == "golden-land" then
								boyfriendNotes[id][c].sizeX, boyfriendNotes[id][c].sizeY = 7.5, 7.5
							end

							if chart[i].sectionNotes[j].noteLength > 0 then
								local c

								for k = 71 / speed, chart[i].sectionNotes[j].noteLength, 71 / speed do
									local c = #boyfriendNotes[id] + 1

									table.insert(boyfriendNotes[id], sprite())
									boyfriendNotes[id][c].x = x
									boyfriendNotes[id][c].y = -400 + (noteTime + k) * 0.6 * speed
									if weekNumber == "golden-land" then
										boyfriendNotes[id][c].sizeX, boyfriendNotes[id][c].sizeY = 7.5, 9.5
									end

									boyfriendNotes[id][c]:animate("hold", false)
								end

								c = #boyfriendNotes[id]

								boyfriendNotes[id][c].offsetY = -10

								if weekNumber == "golden-land" then
									boyfriendNotes[id][c].sizeX, boyfriendNotes[id][c].sizeY = 7.5, 7.5
								end

								boyfriendNotes[id][c]:animate("end", false)
							end
						else
							local id = noteType + 1
							local c = #enemyNotes[id] + 1
							local x = enemyArrows[id].x

							table.insert(enemyNotes[id], sprite())
							enemyNotes[id][c].x = x
							enemyNotes[id][c].y = -400 + noteTime * 0.6 * speed

							enemyNotes[id][c]:animate("on", false)
							if weekNumber == "golden-land" then
								enemyNotes[id][c].sizeX, enemyNotes[id][c].sizeY = 7.5, 7.5
							end

							if chart[i].sectionNotes[j].noteLength > 0 then
								local c

								for k = 71 / speed, chart[i].sectionNotes[j].noteLength, 71 / speed do
									local c = #enemyNotes[id] + 1

									table.insert(enemyNotes[id], sprite())
									enemyNotes[id][c].x = x
									enemyNotes[id][c].y = -400 + (noteTime + k) * 0.6 * speed
									if weekNumber == "golden-land" then
										enemyNotes[id][c].sizeX, enemyNotes[id][c].sizeY = 7.5, 9.5
									end
									if k > chart[i].sectionNotes[j].noteLength - 71 / speed then
										enemyNotes[id][c].offsetY = -10

										enemyNotes[id][c]:animate("end", false)
									else
										enemyNotes[id][c]:animate("hold", false)
									end
								end

								c = #enemyNotes[id]

								enemyNotes[id][c].offsetY = -10
								if weekNumber == "golden-land" then
									enemyNotes[id][c].sizeX, enemyNotes[id][c].sizeY = 7.5, 7.5
								end

								enemyNotes[id][c]:animate("end", false)
							end
						end
					end
				end
			end
		end

		if settings.downscroll then
			for i = 1, 4 do
				table.sort(enemyNotes[i], function(a, b) return a.y > b.y end)
				table.sort(boyfriendNotes[i], function(a, b) return a.y > b.y end)
			end
		else
			for i = 1, 4 do
				table.sort(enemyNotes[i], function(a, b) return a.y < b.y end)
				table.sort(boyfriendNotes[i], function(a, b) return a.y < b.y end)
			end
		end

		-- Workarounds for bad charts that have multiple notes around the same place
		for i = 1, 4 do
			local offset = 0

			for j = 2, #enemyNotes[i] do
				local index = j - offset

				if enemyNotes[i][index]:getAnimName() == "on" and enemyNotes[i][index - 1]:getAnimName() == "on" and ((not settings.downscroll and enemyNotes[i][index].y - enemyNotes[i][index - 1].y <= 10) or (settings.downscroll and enemyNotes[i][index].y - enemyNotes[i][index - 1].y >= -10)) then
					table.remove(enemyNotes[i], index)

					offset = offset + 1
				end
			end
		end
		for i = 1, 4 do
			local offset = 0

			for j = 2, #boyfriendNotes[i] do
				local index = j - offset

				if boyfriendNotes[i][index]:getAnimName() == "on" and boyfriendNotes[i][index - 1]:getAnimName() == "on" and ((not settings.downscroll and boyfriendNotes[i][index].y - boyfriendNotes[i][index - 1].y <= 10) or (settings.downscroll and boyfriendNotes[i][index].y - boyfriendNotes[i][index - 1].y >= -10)) then
					table.remove(boyfriendNotes[i], index)

					offset = offset + 1
				end
			end
		end
	end,

	bladeAttack = function(self)
		if mechanics then
			doingAttack = true
			didAttack = false
	
			--pow:animate("now", false)
	
			audio.playSound(sounds.powWarn.warn)
	
			Timer.after(
				(60 / bpm),
				function()
					audio.playSound(sounds.powWarn.warn)
					--pow:animate("now", false)
					Timer.after(
						(60 / bpm),
						function() 
							doAttack = true
							doingAttack = false
	
						end
					)
				end
			)
		end
	end,

	-- Gross countdown script
	setupCountdown = function(self)
		lastReportedPlaytime = 0
		musicTime = (240 / bpm) * -1000
		beatHandler.lastBeat = math.abs(math.floor((musicTime / 1000) * (beatHandler.bpm / 60)))

		musicThres = 0
		musicPos = 0

		countingDown = true
		countdownFade[1] = 0
		if weekNumber ~= "golden-land" then
			audio.playSound(sounds.countdown.three)
		end
		Timer.after(
			(60 / bpm),
			function()
				countdown:animate("ready")
				countdownFade[1] = 1
				if weekNumber ~= "golden-land" then
					audio.playSound(sounds.countdown.two)
				end
				Timer.tween(
					(60 / bpm),
					countdownFade,
					{0},
					"linear",
					function()
						countdown:animate("set")
						countdownFade[1] = 1
						if weekNumber ~= "golden-land" then
							audio.playSound(sounds.countdown.one)
						end
						Timer.tween(
							(60 / bpm),
							countdownFade,
							{0},
							"linear",
							function()
								countdown:animate("go")
								countdownFade[1] = 1
								if weekNumber ~= "golden-land" then
									audio.playSound(sounds.countdown.go)
								end
								Timer.tween(
									(60 / bpm),
									countdownFade,
									{0},
									"linear",
									function()
										countingDown = false

										previousFrameTime = love.timer.getTime() * 1000
										musicTime = 0

										if inst then inst:play() end
										voices:play()
									end
								)
							end
						)
					end
				)
			end
		)
	end,

	safeAnimate = function(self, sprite, animName, loopAnim, timerID)
		sprite:animate(animName, loopAnim)

		spriteTimers[timerID] = 12
	end,

	update = function(self, dt)

		currentSeconds = voices:tell("seconds")
		songLenth = voices:getDuration("seconds")
		timeLeft = songLenth - currentSeconds
		timeLeftFixed = math.floor(timeLeft)
		

		fixedLivesCount = tonumber(livesCount)

		if combo > highestCombo then
			highestCombo = combo
		end

		--if (pow:getAnimName() == "idle" and not pow:isAnimated()) or (pow:getAnimName() == "now" and not pow:isAnimated()) then
		--	pow:animate("idle", false)
		--end

	
		oldMusicThres = musicThres
		if countingDown or love.system.getOS() == "Web" then -- Source:tell() can't be trusted on love.js!
			musicTime = musicTime + 1000 * dt
		else
			if not graphics.isFading() then
				local time = love.timer.getTime()
				local seconds = voices:tell("seconds")

				musicTime = musicTime + (time * 1000) - previousFrameTime
				previousFrameTime = time * 1000

				if lastReportedPlaytime ~= seconds * 1000 then
					lastReportedPlaytime = seconds * 1000
					musicTime = (musicTime + lastReportedPlaytime) / 2
				end
			end
		end
		absMusicTime = math.abs(musicTime)
		musicThres = math.floor(absMusicTime / 100) -- Since "musicTime" isn't precise, this is needed

		for i = 1, #events do
			if events[i].eventTime <= absMusicTime then
				local oldBpm = bpm

				if events[i].bpm then
					bpm = events[i].bpm
					if not bpm then bpm = oldBpm end
				end

				if camTimer then
					Timer.cancel(camTimer)
				end

				if weekNumber ~= "apparition" then

					if events[i].mustHitSection then
						if weekNumber == "alone" then
							camTimer = Timer.tween(1.25, cam, {x = -boyfriend.x + 100, y = -boyfriend.y + 100}, "out-quad")
						else
							--camTimer = Timer.tween(1.25, camera, {x = -boyfriend.x + 100, y = -boyfriend.y + 75}, "out-quad")
							camera:moveToPoint(1.25, "boyfriend")
						end
					else
						--camTimer = Timer.tween(1.25, cam, {x = -enemy.x - 100, y = -enemy.y + 75}, "out-quad")
						camera:moveToPoint(1.25, "enemy")
					end
				end

				if events[i].altAnim then
					useAltAnims = true
				else
					useAltAnims = false
				end

				table.remove(events, i)

				break
			end
		end

		if weekNumber ~= "apparition" then
			if musicThres ~= oldMusicThres and math.fmod(absMusicTime, 240000 / bpm) < 100 then
				if camScaleTimer then Timer.cancel(camScaleTimer) end

				camScaleTimer = Timer.tween((60 / bpm) / 16, camera, {sizeX = camera.scaleX * 1.05, sizeY = camera.scaleY * 1.05}, "out-quad", function() camScaleTimer = Timer.tween((60 / bpm), camera, {sizeX = camera.scaleX, sizeY = camera.scaleY}, "out-quad") end)
			end
		end

		girlfriend:update(dt)
		enemy:update(dt)
		enemyTwo:update(dt)
		boyfriend:update(dt)
		--pow:update(dt)
		lava:update(dt)


		lavaFixed = math.floor(lava.y) + 30

		--thanks guglio for the code :)
		if doAttack then
			if boyfriend:getAnimName() ~= "dodge" then
				health = health - 30
			end
			doAttack = false
		end

		--if input:pressed("dodge") then boyfriend:animate("dodge", false) end
		

		if musicThres ~= oldMusicThres and math.fmod(absMusicTime, 120000 / bpm) < 100 then
			if spriteTimers[1] == 0 then
				girlfriend:animate("idle", false)

				girlfriend:setAnimSpeed(14.4 / (60 / bpm))
			end
			if spriteTimers[2] == 0 then
				self:safeAnimate(enemy, "idle", false, 2)
				self:safeAnimate(enemyTwo, "idle", false, 2)
			end
			if spriteTimers[3] == 0 then
				if boyfriend:getAnimName() ~= "dodge" or (boyfriend:getAnimName() == "dodge" and not boyfriend:isAnimated()) then
					self:safeAnimate(boyfriend, "idle", false, 3)
				end
			end
		end

		for i = 1, 3 do
			local spriteTimer = spriteTimers[i]

			if spriteTimer > 0 then
				spriteTimers[i] = spriteTimer - 1
			end
		end
	end,

	updateUI = function(self, dt)
		if settings.downscroll then
			musicPos = -musicTime * 0.6 * speed
		else
			musicPos = musicTime * 0.6 * speed
		end

		for i = 1, 4 do
			local enemyArrow = enemyArrows[i]
			local boyfriendArrow = boyfriendArrows[i]
			local enemyNote = enemyNotes[i]
			local boyfriendNote = boyfriendNotes[i]
			local curAnim = animList[i]
			local curInput = inputList[i]

			local noteNum = i

			enemyArrow:update(dt)
			boyfriendArrow:update(dt)

			if not enemyArrow:isAnimated() then
				enemyArrow:animate("off", false)
			end

			if #enemyNote > 0 then
				if (not settings.downscroll and enemyNote[1].y - musicPos <= -400) or (settings.downscroll and enemyNote[1].y - musicPos >= 400) then
					voices:setVolume(1)

					enemyArrow:animate("confirm", false)

					if enemyNote[1]:getAnimName() == "hold" or enemyNote[1]:getAnimName() == "end" then
						if useAltAnims then
							if (not enemy:isAnimated()) or enemy:getAnimName() == "idle" then self:safeAnimate(enemy, curAnim .. " alt", true, 2) end
							if (not enemyTwo:isAnimated()) or enemyTwo:getAnimName() == "idle" then self:safeAnimate(enemyTwo, curAnim .. " alt", true, 2) end
						else
							if (not enemy:isAnimated()) or enemy:getAnimName() == "idle" then self:safeAnimate(enemy, curAnim, true, 2) end
							if (not enemyTwo:isAnimated()) or enemyTwo:getAnimName() == "idle" then self:safeAnimate(enemyTwo, curAnim, true, 2) end
						end
					else
						if useAltAnims then
							self:safeAnimate(enemy, curAnim .. " alt", false, 2)
							self:safeAnimate(enemyTwo, curAnim .. " alt", false, 2)
						else
							self:safeAnimate(enemy, curAnim, false, 2)
							self:safeAnimate(enemyTwo, curAnim, false, 2)
						end
					end

					table.remove(enemyNote, 1)
				end
			end

			if #boyfriendNote > 0 then
				if (not settings.downscroll and boyfriendNote[1].y - musicPos < -500) or (settings.downscroll and boyfriendNote[1].y - musicPos > 500) then
					if inst then voices:setVolume(0) end

					notMissed[noteNum] = false

					table.remove(boyfriendNote, 1)

					if combo >= 5 then self:safeAnimate(girlfriend, "sad", true, 1) end

					combo = 0
					misses = misses + 1

					if settings.suddenDeath then
						health = health - 1000
					else
						if settings.customHealthDrain then
							health = health - healthDrain
						end
					end
				end
			end

			if input:pressed(curInput) then
				local success = false

				if settings.kadeInput then
					success = true
				end

				boyfriendArrow:animate("press", false)

				if #boyfriendNote > 0 then
					for i = 1, #boyfriendNote do
						if boyfriendNote[i] and boyfriendNote[i]:getAnimName() == "on" then
							if (not settings.downscroll and boyfriendNote[i].y - musicPos <= -280) or (settings.downscroll and boyfriendNote[i].y - musicPos >= 280) then
								local notePos
								local ratingAnim

								notMissed[noteNum] = true

								if settings.downscroll then
									notePos = math.abs(400 - (boyfriendNote[i].y - musicPos))
								else
									notePos = math.abs(-400 - (boyfriendNote[i].y - musicPos))
								end

								voices:setVolume(1)

								if notePos <= 30 then -- "Sick"
									score = score + 350
									sicks = sicks + 1
									ratingAnim = "sick"
								elseif notePos <= 70 then -- "Good"
									score = score + 200
									goods = goods + 1
									ratingAnim = "good"
								elseif notePos <= 90 then -- "Bad"
									score = score + 100
									bads = bads + 1
									ratingAnim = "bad"
								else -- "Shit"
									if settings.kadeInput then
										success = false
									else
										score = score + 50
									end
									shits = shits + 1
									ratingAnim = "shit"
								end
								combo = combo + 1

								rating:animate(ratingAnim, false)
								numbers[1]:animate(tostring(math.floor(combo / 100 % 10), false))
								numbers[2]:animate(tostring(math.floor(combo / 10 % 10), false))
								numbers[3]:animate(tostring(math.floor(combo % 10), false))

								for i = 1, 5 do
									if ratingTimers[i] then Timer.cancel(ratingTimers[i]) end
								end

								ratingVisibility[1] = 1
								rating.y = girlfriend.y - 50
								for i = 1, 3 do
									numbers[i].y = girlfriend.y + 50
								end

								ratingTimers[1] = Timer.tween(2, ratingVisibility, {0})
								ratingTimers[2] = Timer.tween(2, rating, {y = girlfriend.y - 100}, "out-elastic")
								ratingTimers[3] = Timer.tween(2, numbers[1], {y = girlfriend.y + love.math.random(-10, 10)}, "out-elastic")
								ratingTimers[4] = Timer.tween(2, numbers[2], {y = girlfriend.y + love.math.random(-10, 10)}, "out-elastic")
								ratingTimers[5] = Timer.tween(2, numbers[3], {y = girlfriend.y + love.math.random(-10, 10)}, "out-elastic")

								table.remove(boyfriendNote, i)

								if not settings.kadeInput or success then
									boyfriendArrow:animate("confirm", false)

									self:safeAnimate(boyfriend, curAnim, false, 3)

									if not hasHitZero then
										health = health + healthGain
									end

									success = true
								end
							else
								break
							end
						end
					end
				end

				if not success then
					audio.playSound(sounds.miss[love.math.random(3)])

					notMissed[noteNum] = false

					if combo >= 5 then self:safeAnimate(girlfriend, "sad", true, 1) end

					self:safeAnimate(boyfriend, "miss " .. curAnim, false, 3)

					score = score - 10
					combo = 0
					misses = misses + 1

					if settings.suddenDeath then
						health = health - 1000
					else
						if settings.customHealthDrain then
							health = health - healthDrain
						end
					end
				end 
			end

			if notMissed[noteNum] and #boyfriendNote > 0 and input:down(curInput) and ((not settings.downscroll and boyfriendNote[1].y - musicPos <= -400) or (settings.downscroll and boyfriendNote[1].y - musicPos >= 400)) and (boyfriendNote[1]:getAnimName() == "hold" or boyfriendNote[1]:getAnimName() == "end") then
				voices:setVolume(1)

				table.remove(boyfriendNote, 1)

				boyfriendArrow:animate("confirm", false)

				if (not boyfriend:isAnimated()) or boyfriend:getAnimName() == "idle" then self:safeAnimate(boyfriend, curAnim, true, 3) end

				if not hasHitZero then
					health = health + healthGain
				end
			end

			if input:released(curInput) then
				boyfriendArrow:animate("off", false)
			end
		end

		if health > 100 then
			health = 100
		elseif health > 20 and boyfriendIcon:getAnimName() == "boyfriend losing" then
			boyfriendIcon:animate("boyfriend", false)
		elseif health > 20 and boyfriendIcon:getAnimName() == "golden land bf losing" then
			boyfriendIcon:animate("golden land bf", false)
		elseif health <= 0 then -- Game over
			if settings.practiceMode then
				hasHitZero = true
				health = 0
			else
				if weekNumber == "golden-land" then
					fakeGirlfriend.y = 500
				end
				if fixedLivesCount < 1 then
					if weekNumber ~= "apparition" then
						Gamestate.push(gameOver)
					else
						enemy.sizeX, enemy.sizeY = 0, 0
						Gamestate.push(apparitionGameOver)
					end
					if weekNumber == "i-hate-you" then
						for i = 1, 53 do
							lavaHappened[i] = false
							booFade = 0
							IHYTextHasHappened = false
						end
						lava.y = 700
					end
					lightningOneHasHappened = false
					lightningTwoHasHappened = false
					lightningThreeHasHappened = false
					lightningFourHasHappened = false
					lightningFiveHasHappened = false
					lightningSixHasHappened = false
					lightningSevenHasHappened = false
					fading = 1
					fadingOne = 1
					fadingTwo = 1
					fadingThree = 1
					fadingFour = 1
					fadingFive = 1
					fadingSix = 1
					fadingApparition = 0
				else
					livesCount = livesCount - 1
					health = 20
					revive = love.audio.newSource("music/game-over-end.ogg", "stream")
					revive:play()
				end
			end
		elseif health <= 20 and boyfriendIcon:getAnimName() == "boyfriend" then
			boyfriendIcon:animate("boyfriend losing", false)
		elseif health <= 20 and boyfriendIcon:getAnimName() == "golden land bf" then
			boyfriendIcon:animate("golden land bf losing", false)
		end

		enemyIcon.x = 425 - health * 10
		boyfriendIcon.x = 585 - health * 10

		if musicThres ~= oldMusicThres and math.fmod(absMusicTime, 60000 / bpm) < 100 then
			if enemyIconTimer then Timer.cancel(enemyIconTimer) end
			if boyfriendIconTimer then Timer.cancel(boyfriendIconTimer) end

			enemyIconTimer = Timer.tween((60 / bpm) / 16, enemyIcon, {sizeX = 1.75, sizeY = 1.75}, "out-quad", function() enemyIconTimer = Timer.tween((60 / bpm), enemyIcon, {sizeX = 1.5, sizeY = 1.5}, "out-quad") end)
			boyfriendIconTimer = Timer.tween((60 / bpm) / 16, boyfriendIcon, {sizeX = -1.75, sizeY = 1.75}, "out-quad", function() boyfriendIconTimer = Timer.tween((60 / bpm), boyfriendIcon, {sizeX = -1.5, sizeY = 1.5}, "out-quad") end)
		end

		if not countingDown and input:pressed("gameBack") then
			if inst then inst:stop() end
			voices:stop()

			storyMode = false
		end
	end,

	drawRating = function(self, multiplier)
		love.graphics.push()
			graphics.setColor(1, 1, 1, ratingVisibility[1])
			rating:draw()
			for i = 1, 3 do
				numbers[i]:draw()
			end
			graphics.setColor(1, 1, 1)
		love.graphics.pop()
	end,

	drawUI = function(self)
		love.graphics.push()
			love.graphics.translate(push.getWidth() / 2, push.getHeight() / 2)
			love.graphics.scale(0.7, 0.7)

			for i = 1, 4 do
				if enemyArrows[i]:getAnimName() == "off" then
					graphics.setColor(0.6, 0.6, 0.6)
				end
				enemyArrows[i]:draw()
				graphics.setColor(1, 1, 1)
				boyfriendArrows[i]:draw()

				love.graphics.push()
					love.graphics.translate(0, -musicPos)

					for j = #enemyNotes[i], 1, -1 do
						if (not settings.downscroll and enemyNotes[i][j].y - musicPos <= 560) or (settings.downscroll and enemyNotes[i][j].y - musicPos >= -560) then
							local animName = enemyNotes[i][j]:getAnimName()

							if animName == "hold" or animName == "end" then
								graphics.setColor(1, 1, 1, 0.5)
								-- only apply scissor for y and height
								 -- too lazy to y'know... do it right...
							end
							enemyNotes[i][j]:draw()
							graphics.setColor(1, 1, 1)
						end

						
					end
					for j = #boyfriendNotes[i], 1, -1 do
						if (not settings.downscroll and boyfriendNotes[i][j].y - musicPos <= 560) or (settings.downscroll and boyfriendNotes[i][j].y - musicPos >= -560) then
							local animName = boyfriendNotes[i][j]:getAnimName()

							if settings.downscroll then
								if animName == "hold" or animName == "end" then
									graphics.setColor(1, 1, 1, math.min(0.5, (500 - (boyfriendNotes[i][j].y - musicPos)) / 150))
									if input:down(inputList[i]) then 
										 -- too lazy to y'know... do it right...
									end
								else
									graphics.setColor(1, 1, 1, math.min(1, (500 - (boyfriendNotes[i][j].y - musicPos)) / 75))
								end
							else
								if animName == "hold" or animName == "end" then
									graphics.setColor(1, 1, 1, math.min(0.5, (500 + (boyfriendNotes[i][j].y - musicPos)) / 150))

									if input:down(inputList[i]) then 
										 -- too lazy to y'know... do it right...
									end
									if input:down(inputList[i]) then 
										 -- too lazy to y'know... do it right...
									end
								else
									graphics.setColor(1, 1, 1, math.min(1, (500 + (boyfriendNotes[i][j].y - musicPos)) / 75))
								end
							end
							if ghostArrows then
								love.graphics.setColor(1, 1, 1, 0.5)
							else
								love.graphics.setColor(1, 1, 1, 1)
							end
							boyfriendNotes[i][j]:draw()
							love.graphics.setColor(1, 1, 1, 1)
							-- reset the scissor
							
						end
					end
					graphics.setColor(1, 1, 1)
				love.graphics.pop()
			end

			if mechanics then
				if settings.downscroll then
					love.graphics.scale(1, -1) -- now we flip the y-axis for downscroll users!
				end
				love.graphics.setColor(176 / 255, 0, 0)
				lava:draw()
				love.graphics.rectangle("fill", -1000, lavaFixed, 10000, 10000)
				love.graphics.setColor(1, 1, 1)
				lava:draw()
				love.graphics.setColor(1, 1, 1)
				if settings.downscroll then
					love.graphics.scale(1, -1) -- now we put it back to normal to not fuck up the rest of the UI
				end
			end


			if not settings.suddenDeath then
				if settings.downscroll then
					if weekNumber == "its-a-me" then
						graphics.setColor(111 / 255, 0, 0)  -- opponent health bar color
					elseif weekNumber == "golden-land" then
						graphics.setColor(70 / 255, 70 / 255, 70 / 255)
					elseif weekNumber == "i-hate-you" then
						graphics.setColor(20 / 255, 180 / 255, 0)
					elseif weekNumber == "alone" then
						graphics.setColor(4 / 255, 70 / 255, 4 / 255)
					elseif weekNumber == "apparition" then
						graphics.setColor(163 / 255, 124 / 255, 60 / 255)
					else
						graphics.setColor(57 / 255, 0, 0)
					end

					love.graphics.rectangle("fill", -500, -400, 1000, 25)
					if weekNumber ~= "golden-land" then
						graphics.setColor(49 / 255, 176 / 255, 209 / 255)  -- player health bar color
					else
						graphics.setColor(189 / 255, 189 / 255, 189 / 255)
					end
					love.graphics.rectangle("fill", 500, -400, -health * 10, 25)
					graphics.setColor(0, 0, 0)
					love.graphics.setLineWidth(10)
					love.graphics.rectangle("line", -500, -400, 1000, 25)
					love.graphics.setLineWidth(1)
					graphics.setColor(1, 1, 1)
				else
					if weekNumber == "its-a-me" then
						graphics.setColor(111 / 255, 0, 0)  -- opponent health bar color
					elseif weekNumber == "golden-land" then
						graphics.setColor(70 / 255, 70 / 255, 70 / 255)
					elseif weekNumber == "i-hate-you" then
						graphics.setColor(20 / 255, 180 / 255, 0)
					elseif weekNumber == "alone" then
						graphics.setColor(4 / 255, 70 / 255, 4 / 255)
					elseif weekNumber == "apparition" then
						graphics.setColor(163 / 255, 124 / 255, 60 / 255)
					else
						graphics.setColor(57 / 255, 0, 0)
					end

					love.graphics.rectangle("fill", -500, 350, 1000, 25)
					--love.graphics.rectangle("fill", -500, -400, 1000, 25)
					if weekNumber ~= "golden-land" then
						graphics.setColor(49 / 255, 176 / 255, 209 / 255)  -- player health bar color
					else
						graphics.setColor(189 / 255, 189 / 255, 189 / 255)
					end
					love.graphics.rectangle("fill", 500, 350, -health * 10, 25)
					graphics.setColor(0, 0, 0)
					love.graphics.setLineWidth(10)
					love.graphics.rectangle("line", -500, 350, 1000, 25)
					love.graphics.setLineWidth(1)
					graphics.setColor(1, 1, 1)
				end
			

				boyfriendIcon:draw()
				enemyIcon:draw()
			end


			if settings.practiceMode then
				if settings.extraLives then
					if settings.downscroll then
						love.graphics.print("PRACTICE MODE" .. "     Highest Combo: " .. highestCombo .. "       Extra Lives: " .. livesCount .. "     Score: " .. score, -500, -350)
						love.graphics.print("Time Remaining: " .. timeLeftFixed, -130, 400)
					else
						love.graphics.print("PRACTICE MODE" .. "     Highest Combo: " .. highestCombo .. "       Extra Lives: " .. livesCount .. "     Score: " .. score, -500, 400)
						love.graphics.print("Time Remaining: " .. timeLeftFixed, -130, -390)
					end
				else
					if settings.downscroll then
						love.graphics.print("PRACTICE MODE" .. "     Highest Combo: " .. highestCombo .. "     Score: " .. score, -500, -350)
						love.graphics.print("Time Remaining: " .. timeLeftFixed, -130, 400)
					else
						love.graphics.print("PRACTICE MODE" .. "     Highest Combo: " .. highestCombo .. "     Score: " .. score, -500, 400)
						love.graphics.print("Time Remaining: " .. timeLeftFixed, -130, -390)
					end
				end
			else
				if settings.extraLives then
					if settings.downscroll then
						love.graphics.print("Highest Combo: " .. highestCombo .. "     Extra Lives: " .. livesCount .. "     Score: " .. score, -500, -350)
						love.graphics.print("Time Remaining: " .. timeLeftFixed, -130, 400)
					else
						love.graphics.print("Highest Combo: " .. highestCombo .. "     Extra Lives: " .. livesCount .. "     Score: " .. score, -500, 400)
						love.graphics.print("Time Remaining: " .. timeLeftFixed, -130, -390)
					end
				else
					if settings.downscroll then
						love.graphics.print("Highest Combo: " .. highestCombo .. "     Score: " .. score, -500, -350)
						love.graphics.print("Time Remaining: " .. timeLeftFixed, -130, 400)
					else
						love.graphics.print("Highest Combo: " .. highestCombo .. "     Score: " .. score, -500, 400)
						love.graphics.print("Time Remaining: " .. timeLeftFixed, -130, -390)
					end
				end
			end

			--the judgment counter
			if sicks == 0 then 
				love.graphics.print("Sicks Counter", -900, -200)
			else 
				love.graphics.print("Sicks: " .. sicks, -900, -200)
			end

			if goods == 0 then
				love.graphics.print("Goods Counter", -900, -125)
			else
				love.graphics.print("Goods: " .. goods, -900, -125)
			end

			if bads == 0 then
				love.graphics.print("Bads Counter", -900, -50)
			else
				love.graphics.print("Bads: " .. bads, -900, -50)
			end

			if shits == 0 then
				love.graphics.print("Shits Counter", -900, 25)
			else
				love.graphics.print("Shits: " .. shits, -900, 25)
			end
			
			if misses == 0 then
				love.graphics.print("Misses Counter", -900, 100)
			else
				love.graphics.print("Misses: " .. misses, -900, 100)
			end

			--if doingAttack then
			--	pow:draw()
			--end
			--if pow:getAnimName() == "now" then
			--	love.graphics.rectangle("fill", 0, 0, 10000, 100000)
			--end
			graphics.setColor(1, 1, 1)
			--pow:draw()

			if weekNumber ~= "i-hate-you" then
				if weekNumber ~= "golden-land" then
					if weekNumber ~= "powerdown" then
						graphics.setColor(1, 1, 1, countdownFade[1])
						countdown:draw()
					end
				end
			end
			graphics.setColor(1, 1, 1)
		love.graphics.pop()



		--keystrokes
		love.graphics.setColor(1, 1, 1)

		if input:down("gameUp") then
			love.graphics.rectangle("fill", 100, 600, 30, 30)
		end

		if input:down("gameDown") then
			love.graphics.rectangle("fill", 100, 631, 30, 30)
		end

		if input:down("gameRight") then
			love.graphics.rectangle("fill", 131, 631, 30, 30)
		end

		if input:down("gameLeft") then
			love.graphics.rectangle("fill", 69, 631, 30, 30)
		end

		love.graphics.setColor(0, 0, 0)

		love.graphics.rectangle("line", 100, 600, 30, 30) -- up
		love.graphics.rectangle("line", 100, 631, 30, 30) -- down
		love.graphics.rectangle("line", 131, 631, 30, 30) -- right
		love.graphics.rectangle("line", 69, 631, 30, 30) -- left

		love.graphics.setColor(1, 1, 1)


	end,

	leave = function(self)
		if inst then inst:stop() end
		voices:stop()

		Timer.clear()

		fakeBoyfriend = nil
	end
}
