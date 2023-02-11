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
local eventFuncs = {
	["Add Camera Zoom"] = function(size, sizeHud)
		size = tonumber(size) or 0.015

		Timer.tween(
			(60/bpm)/4,
			camera,
			{
				sizeX = camera.esizeX + size,
				sizeY = camera.esizeY + size
			},
			"out-quad"
		)
	end,
	["Hey!"] = function()
		weeks:safeAnimate(boyfriend, "hey", false, 3)
	end,
	["Reactor Beep"] = function(value)
		print("haiiii")
		flashAlpha = tonumber(value) or 0.4
	end,
    ["Lights on"] = function()
        if lightsTween then
            Timer.cancel(lightsTween)
        end
        lightsTween = Timer.tween(0.25, darkTween, {[1] = 0}, "linear", function ()
            darkTween = {0}
        end)
    end,
    ["Lights out"] = function()
        if lightsTween then
            Timer.cancel(lightsTween)
        end
        lightsTween = Timer.tween(0.25, darkTween, {[1] = 1}, "linear", function ()
            darkTween = {1}
        end)
    end,
}

local animList = {
	"singLEFT",
	"singDOWN",
	"singUP",
	"singRIGHT"
}
local inputList = {
	"gameLeft",
	"gameDown",
	"gameUp",
	"gameRight"
}
local noteCamTweens = {
	function()
		camera:moveToExtra((60/bpm), 15, 0)
	end,

	function()
		camera:moveToExtra((60/bpm), 0, -15)
	end,

	function()
		camera:moveToExtra((60/bpm), 0, 15)
	end,

	function()
		camera:moveToExtra((60/bpm), -15, 0)
	end
}

local ratingTimers = {}

local useAltAnims
local notMissed = {}
local option = "normal"

local judgements = {}

return {
	enter = function(self, option)
		playMenuMusic = false
		beatHandler.reset()
		option = option or "normal"
		if option ~= "pixel" then
			pixel = false
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
				death = love.audio.newSource("sounds/death.ogg", "static"),
				breakfast = love.audio.newSource("music/breakfast.ogg", "stream")
			}

			images = {
				icons = love.graphics.newImage(graphics.imagePath("icons")),
				notes = love.graphics.newImage(graphics.imagePath("notes")),
				numbers = love.graphics.newImage(graphics.imagePath("numbers"))
			}

			sprites = {
				icons = love.filesystem.load("sprites/icons.lua"),
				numbers = love.filesystem.load("sprites/numbers.lua")
			}

			rating = love.filesystem.load("sprites/rating.lua")()

			rating.sizeX, rating.sizeY = 0.75, 0.75

			girlfriend = love.filesystem.load("sprites/girlfriend.lua")()
			boyfriend = love.filesystem.load("sprites/boyfriend.lua")()
		else
			pixel = true
			love.graphics.setDefaultFilter("nearest", "nearest")
			sounds = {
				countdown = {
					three = love.audio.newSource("sounds/pixel/countdown-3.ogg", "static"),
					two = love.audio.newSource("sounds/pixel/countdown-2.ogg", "static"),
					one = love.audio.newSource("sounds/pixel/countdown-1.ogg", "static"),
					go = love.audio.newSource("sounds/pixel/countdown-date.ogg", "static")
				},
				miss = {
					love.audio.newSource("sounds/pixel/miss1.ogg", "static"),
					love.audio.newSource("sounds/pixel/miss2.ogg", "static"),
					love.audio.newSource("sounds/pixel/miss3.ogg", "static")
				},
				death = love.audio.newSource("sounds/pixel/death.ogg", "static"),
				breakfast = love.audio.newSource("music/breakfast.ogg", "stream")
			}

			images = {
				icons = love.graphics.newImage(graphics.imagePath("icons")),
				notes = love.graphics.newImage(graphics.imagePath("pixel/notes")),
				numbers = love.graphics.newImage(graphics.imagePath("pixel/numbers"))
			}

			sprites = {
				icons = love.filesystem.load("sprites/icons.lua"),
				numbers = love.filesystem.load("sprites/pixel/numbers.lua")
			}

			rating = love.filesystem.load("sprites/pixel/rating.lua")()

			girlfriend = love.filesystem.load("sprites/pixel/girlfriend.lua")()
			boyfriend = love.filesystem.load("sprites/pixel/boyfriend.lua")()
		end

		numbers = {}
		for i = 1, 3 do
			numbers[i] = sprites.numbers()

			if option ~= "pixel" then
				numbers[i].sizeX, numbers[i].sizeY = 0.5, 0.5
			end
		end

		if settings.downscroll then
			downscrollOffset = -750
		else
			downscrollOffset = 0
		end

		enemyIcon = sprites.icons()
		boyfriendIcon = sprites.icons()

		enemyIcon.y = 350 + downscrollOffset
		boyfriendIcon.y = 350 + downscrollOffset
		enemyIcon.sizeX = 1.5
		boyfriendIcon.sizeX = -1.5
		enemyIcon.sizeY = 1.5
		boyfriendIcon.sizeY = 1.5

		countdownFade = {}
		countdown = love.filesystem.load("sprites/countdown.lua")()
	end,

	load = function(self)
		botplayY = 0
		botplayAlpha = {1}
		paused = false
		pauseMenuSelection = 1
		function boyPlayAlphaChange()
			Timer.tween(1.25, botplayAlpha, {0}, "in-out-cubic", function()
				Timer.tween(1.25, botplayAlpha, {1}, "in-out-cubic", boyPlayAlphaChange)
			end)
		end
		boyPlayAlphaChange()
		pauseBG = graphics.newImage(graphics.imagePath("pause/pause_box"))
		pauseShadow = graphics.newImage(graphics.imagePath("pause/pause_shadow"))
		for i = 1, 4 do
			notMissed[i] = true
		end
		useAltAnims = false

		camera.x, camera.y = -boyfriend.x + 100, -boyfriend.y + 75

		rating.x = girlfriend.x
		if not pixel then
			for i = 1, 3 do
				numbers[i].x = girlfriend.x - 100 + 50 * i
			end
		else
			for i = 1, 3 do
				numbers[i].x = girlfriend.x - 100 + 58 * i
			end
		end

		ratingVisibility = {0}
		combo = 0

		enemy:animate("idle")
		boyfriend:animate("idle")
        if boyfriendDark then
            boyfriendDark:animate("idle")
        end
        if enemyDark then
            enemyDark:animate("idle")
        end

		if not camera.points["boyfriend"] then camera:addPoint("boyfriend", -boyfriend.x + 100, -boyfriend.y + 75) end
		if not camera.points["enemy"] then camera:addPoint("enemy", -enemy.x - 100, -enemy.y + 75) end

		graphics.fadeIn(0.5)
	end,

	initUI = function(self, option)
		events = {}
		songEvents = {}
		enemyNotes = {}
		boyfriendNotes = {}
		judgements = {}
		health = 1
		score = 0
		campaignScore = 0
		misses = 0
		additionalAccuracy = 0
		noteCounter = 0

		if not pixel then
			sprites.leftArrow = love.filesystem.load("sprites/left-arrow.lua")
			sprites.downArrow = love.filesystem.load("sprites/down-arrow.lua")
			sprites.upArrow = love.filesystem.load("sprites/up-arrow.lua")
			sprites.rightArrow = love.filesystem.load("sprites/right-arrow.lua")
		else
			sprites.leftArrow = love.filesystem.load("sprites/pixel/left-arrow.lua")
			sprites.downArrow = love.filesystem.load("sprites/pixel/down-arrow.lua")
			sprites.upArrow = love.filesystem.load("sprites/pixel/up-arrow.lua")
			sprites.rightArrow = love.filesystem.load("sprites/pixel/right-arrow.lua")
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
			if settings.middleScroll then 
				boyfriendArrows[i].x = -410 + 165 * i
				-- ew stuff
				enemyArrows[1].x = -925 + 165 * 1 
				enemyArrows[2].x = -925 + 165 * 2
				enemyArrows[3].x = 100 + 165 * 3
				enemyArrows[4].x = 100 + 165 * 4
			else
				enemyArrows[i].x = -925 + 165 * i
				boyfriendArrows[i].x = 100 + 165 * i
			end

			enemyArrows[i].y = -400
			boyfriendArrows[i].y = -400

			if settings.downscroll then 
				enemyArrows[i].sizeY = -1
				boyfriendArrows[i].sizeY = -1
			end

			enemyNotes[i] = {}
			boyfriendNotes[i] = {}
		end
	end,

	generateEvents = function(self, ec)
		ec = json.decode(love.filesystem.read(ec))
		ec = ec["song"]
		for i = 1, #ec["notes"] do
			for j = 1, #ec["notes"][i]["sectionNotes"] do
				sectionNotesE = ec["notes"][i]["sectionNotes"]
				table.insert(
					songEvents,
					{
						eventTime = sectionNotesE[j][1] or 0,
						-- 2 is just the noteType (psych is strange)
						eventName = sectionNotesE[j][3] or "Hey!",
						eventValue1 = sectionNotesE[j][4] or "",
						eventValue2 = sectionNotesE[j][5] or "",
					}
				)
				--print(songEvents[i].eventTime, songEvents[i].eventName, songEvents[i].eventValue1, songEvents[i].eventValue2)
			end
		end
	end,

	generateNotes = function(self, chart)
		local eventBpm

		chart = json.decode(love.filesystem.read(chart))
		chart = chart["song"]
		curSong = chart["song"]

		for i = 1, #chart["notes"] do
			bpm = chart["notes"][i]["bpm"]
			if bpm == 0 or bpm == nil then
				bpm = 120
			end

			if bpm then
				break
			end
		end
		if not bpm then
			bpm = chart["bpm"]
		end
		if not bpm then
			bpm = 100
		end
		beatHandler.setBPM(bpm)

		if settings.customScrollSpeed == 1 then
			speed = chart["speed"] or 1
		else
			speed = settings.customScrollSpeed
		end

		for i = 1, #chart["notes"] do
			for j = 1, #chart["notes"][i]["sectionNotes"] do
				local sprite
				local sectionNotes = chart["notes"][i]["sectionNotes"]

				local mustHitSection = chart["notes"][i]["mustHitSection"]
				local altAnim = chart["notes"][i]["altAnim"] or false
				local noteType = sectionNotes[j][2]
				local noteTime = sectionNotes[j][1]
				sectionNotes[j][3] = tonumber(sectionNotes[j][3]) or 0

				if j == 1 then
					table.insert(events, {eventTime = sectionNotes[1][1], mustHitSection = mustHitSection, bpm = eventBpm, altAnim = altAnim})
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

                if noteType ~= -1 then
                    if mustHitSection then
                        if noteType >= 4 then
                            local id = noteType - 3
                            local c = #enemyNotes[id] + 1
                            local x = enemyArrows[id].x
                    
                            table.insert(enemyNotes[id], sprite())
                            enemyNotes[id][c].x = x
                            enemyNotes[id][c].y = -400 + noteTime * 0.6 * speed
                            if settings.downscroll then
                                enemyNotes[id][c].sizeY = -1
                            end
                    
                            enemyNotes[id][c]:animate("on", false)
                    
                            if sectionNotes[j][3] > 0 then
                                local c
                    
                                for k = 71 / speed, sectionNotes[j][3], 71 / speed do
                                    local c = #enemyNotes[id] + 1
                    
                                    table.insert(enemyNotes[id], sprite())
                                    enemyNotes[id][c].x = x
                                    enemyNotes[id][c].y = -400 + (noteTime + k) * 0.6 * speed
                    
                                    enemyNotes[id][c]:animate("hold", false)
                                end
                    
                                c = #enemyNotes[id]
                    
                                enemyNotes[id][c].offsetY = not pixel and 10 or 2
                    
                                enemyNotes[id][c]:animate("end", false)
                            end
                        else
                            local id = noteType + 1
                            local c = #boyfriendNotes[id] + 1
                            local x = boyfriendArrows[id].x
                    
                            table.insert(boyfriendNotes[id], sprite())
                            boyfriendNotes[id][c].x = x
                            boyfriendNotes[id][c].y = -400 + noteTime * 0.6 * speed
                            boyfriendNotes[id][c].time = noteTime
                            if settings.downscroll then
                                boyfriendNotes[id][c].sizeY = -1
                            end
                    
                            boyfriendNotes[id][c]:animate("on", false)
                    
                            if sectionNotes[j][3] > 0 then
                                local c
                    
                                for k = 71 / speed, sectionNotes[j][3], 71 / speed do
                                    local c = #boyfriendNotes[id] + 1
                    
                                    table.insert(boyfriendNotes[id], sprite())
                                    boyfriendNotes[id][c].x = x
                                    boyfriendNotes[id][c].y = -400 + (noteTime + k) * 0.6 * speed
                    
                                    boyfriendNotes[id][c]:animate("hold", false)
                                end
                    
                                c = #boyfriendNotes[id]
                    
                                boyfriendNotes[id][c].offsetY = not pixel and 10 or 2
                    
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
                            boyfriendNotes[id][c].time = noteTime
                            if settings.downscroll then
                                boyfriendNotes[id][c].sizeY = -1
                            end
                    
                            boyfriendNotes[id][c]:animate("on", false)
                    
                            if sectionNotes[j][3] > 0 then
                                local c
                    
                                for k = 71 / speed, sectionNotes[j][3], 71 / speed do
                                    local c = #boyfriendNotes[id] + 1
                    
                                    table.insert(boyfriendNotes[id], sprite())
                                    boyfriendNotes[id][c].x = x
                                    boyfriendNotes[id][c].y = -400 + (noteTime + k) * 0.6 * speed
                    
                                    boyfriendNotes[id][c]:animate("hold", false)
                                end
                    
                                c = #boyfriendNotes[id]
                    
                                boyfriendNotes[id][c].offsetY = not pixel and 10 or 2
                    
                                boyfriendNotes[id][c]:animate("end", false)
                            end
                        else
                            local id = noteType + 1
                            local c = #enemyNotes[id] + 1
                            local x = enemyArrows[id].x
                    
                            table.insert(enemyNotes[id], sprite())
                            enemyNotes[id][c].x = x
                            enemyNotes[id][c].y = -400 + noteTime * 0.6 * speed
                            if settings.downscroll then
                                enemyNotes[id][c].sizeY = -1
                            end
                    
                            enemyNotes[id][c]:animate("on", false)
                    
                            if sectionNotes[j][3] > 0 then
                                local c
                    
                                for k = 71 / speed, sectionNotes[j][3], 71 / speed do
                                    local c = #enemyNotes[id] + 1
                    
                                    table.insert(enemyNotes[id], sprite())
                                    enemyNotes[id][c].x = x
                                    enemyNotes[id][c].y = -400 + (noteTime + k) * 0.6 * speed
                                    if k > sectionNotes[j][3] - 71 / speed then
                                        enemyNotes[id][c].offsetY = not pixel and 10 or 2
                    
                                        enemyNotes[id][c]:animate("end", false)
                                    else
                                        enemyNotes[id][c]:animate("hold", false)
                                    end
                                end
                    
                                c = #enemyNotes[id]
                    
                                enemyNotes[id][c].offsetY = not pixel and 10 or 2
                    
                                enemyNotes[id][c]:animate("end", false)
                            end
                        end
                    end
                end
			end
		end

		for i = 1, 4 do
			table.sort(enemyNotes[i], function(a, b) return a.y < b.y end)
			table.sort(boyfriendNotes[i], function(a, b) return a.y < b.y end)
		end

		-- Workarounds for bad charts that have multiple notes around the same place
		for i = 1, 4 do
			local offset = 0

			for j = 2, #enemyNotes[i] do
				local index = j - offset

				if enemyNotes[i][index]:getAnimName() == "on" and enemyNotes[i][index - 1]:getAnimName() == "on" and ((enemyNotes[i][index].y - enemyNotes[i][index - 1].y <= 10)) then
					table.remove(enemyNotes[i], index)

					offset = offset + 1
				end
			end
		end
		for i = 1, 4 do
			local offset = 0

			for j = 2, #boyfriendNotes[i] do
				local index = j - offset

				if boyfriendNotes[i][index]:getAnimName() == "on" and boyfriendNotes[i][index - 1]:getAnimName() == "on" and ((boyfriendNotes[i][index].y - boyfriendNotes[i][index - 1].y <= 10)) then
					table.remove(boyfriendNotes[i], index)

					offset = offset + 1
				end
			end
		end
	end,

	-- Gross countdown script
	setupCountdown = function(self)
		lastReportedPlaytime = 0
		musicTime = (240 / bpm) * -1000

		musicThres = 0
		musicPos = 0

		countingDown = true
		countdownFade[1] = 0
		audio.playSound(sounds.countdown.three)
		Timer.after(
			(60 / bpm),
			function()
				countdown:animate("ready")
				countdownFade[1] = 1
				audio.playSound(sounds.countdown.two)
				Timer.tween(
					(60 / bpm),
					countdownFade,
					{0},
					"linear",
					function()
						countdown:animate("set")
						countdownFade[1] = 1
						audio.playSound(sounds.countdown.one)
						Timer.tween(
							(60 / bpm),
							countdownFade,
							{0},
							"linear",
							function()
								countdown:animate("go")
								countdownFade[1] = 1
								audio.playSound(sounds.countdown.go)
								Timer.tween(
									(60 / bpm),
									countdownFade,
									{0},
									"linear",
									function()
										countingDown = false

										previousFrameTime = love.timer.getTime() * 1000
										musicTime = 0
										beatHandler.setBeat(0)

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

    setupEjectCountdown = function(self)
		lastReportedPlaytime = 0
		musicTime = (240 / bpm) * -1500
		countdownFade[1] = 0

		musicThres = 0
		musicPos = 0

		countingDown = false

		previousFrameTime = love.timer.getTime() * 1000
		musicTime = 0

		if inst then 
			inst:play() 
		end
		voices:play()
	end,

	safeAnimate = function(self, sprite, animName, loopAnim, timerID)
		sprite:animate(animName, loopAnim)

		spriteTimers[timerID] = 12
	end,

	update = function(self, dt)
		if input:pressed("pause") and not countingDown and not inCutscene and not doingDialogue and not paused then
			if not graphics.isFading() then 
				paused = true
				pauseTime = musicTime
				if paused then 
					if inst then inst:pause() end
					voices:pause()
					love.audio.play(sounds.breakfast)
					sounds.breakfast:setLooping(true) 
				end
			end
			return
		end
		if paused then 
			previousFrameTime = love.timer.getTime() * 1000
			musicTime = pauseTime
			if input:pressed("gameDown") then
				if pauseMenuSelection == 3 then
					pauseMenuSelection = 1
				else
					pauseMenuSelection = pauseMenuSelection + 1
				end
			end

			if input:pressed("gameUp") and paused then
				if pauseMenuSelection == 1 then
					pauseMenuSelection = 3
				else
					pauseMenuSelection = pauseMenuSelection - 1
				end
			end
			if input:pressed("confirm") then
				love.audio.stop(sounds.breakfast) -- since theres only 3 options, we can make the sound stop without an else statement
				if pauseMenuSelection == 1 then
					if inst then inst:play() end
					voices:play()
					paused = false 
				elseif pauseMenuSelection == 2 then
					pauseRestart = true
					Gamestate.push(gameOver)
				elseif pauseMenuSelection == 3 then
					paused = false
					if inst then inst:stop() end
					voices:stop()
					if inst then inst:stop() end
					storyMode = false
					quitPressed = true
				end
			end
			return
		end
		if inCutscene then return end
		beatHandler.update(dt)

		convertedAcc = string.format(
			"%.2f%%",
			(additionalAccuracy / (noteCounter + misses))
		)

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
					print(bpm)
					beatHandler.setBPM(bpm)
				end

				if camera.mustHit then
					if events[i].mustHitSection then
						mustHitSection = true
						--camTimer = Timer.tween(1.25, camera, {x = -boyfriend.x + 100, y = -boyfriend.y + 75}, "out-quad")
						camera:moveToPoint(1.25, "boyfriend")
					else
						mustHitSection = false
						--camTimer = Timer.tween(1.25, camera, {x = -enemy.x - 100, y = -enemy.y + 75}, "out-quad")
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

		for i = 1, #songEvents do
			if songEvents[i].eventTime <= absMusicTime then
				if eventFuncs[songEvents[i].eventName] then
					eventFuncs[songEvents[i].eventName](songEvents[i].eventValue1, songEvents.eventValue2)
				else
					print(songEvents[i].eventName .. " is not implemented!")
				end

				table.remove(songEvents, i)
				break
			end
		end

		if beatHandler.onBeat() and beatHandler.getBeat() % 4 == 0 then
			if camScaleTimer then Timer.cancel(camScaleTimer) end
			if uiScaleTimer then Timer.cancel(uiScaleTimer) end

			camScaleTimer = Timer.tween((60 / bpm) / 16, camera, {sizeX = camera.scaleX * 1.05, sizeY = camera.scaleY * 1.05}, "out-quad", function() camScaleTimer = Timer.tween((60 / bpm), camera, {sizeX = camera.scaleX, sizeY = camera.scaleY}, "out-quad") end)
			if beatHandler.getBeat() % 8 == 0  then
				uiScaleTimer = Timer.tween((60 / bpm) / 16, uiScale, {x = uiScale.x * 1.03, y = uiScale.y * 1.03}, "out-quad", function() camScaleTimer = Timer.tween((60 / bpm), uiScale, {x = uiScale.sizeX, y = uiScale.sizeY}, "out-quad") end)
			end
		end
		--[[
		if beatHandler.onBeat() then 
			print("beat")
			if not util.startsWith(boyfriend:getAnimName(), "sing") then
				--boyfriend:animate("idle")
			end
		end
		--]]

		girlfriend:update(dt)
		enemy:update(dt)
        if enemyDark then enemyDark:update(dt) end
		boyfriend:update(dt)
        if boyfriendDark then boyfriendDark:update(dt) end

		if beatHandler.onBeat() and beatHandler.getBeat() % 2 == 0 then
			if spriteTimers[1] == 0 then
				self:safeAnimate(girlfriend, "idle", true, 1)
				girlfriend:setAnimSpeed(14.4 / (60 / bpm))
			end
		end
		boyfriend:beat(beatHandler.getBeat())
		enemy:beat(beatHandler.getBeat())
        if boyfriendDark then boyfriendDark:beat(beatHandler.getBeat()) end
        if enemyDark then enemyDark:beat(beatHandler.getBeat()) end

		for i = 1, 3 do
			local spriteTimer = spriteTimers[i]

			if spriteTimer > 0 then
				spriteTimers[i] = spriteTimer - 1
			end
		end
	end,

	updateUI = function(self, dt)
		if inCutscene then return end
		if paused then return end
		musicPos = musicTime * 0.6 * speed

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
			if settings.botPlay then
				if not boyfriendArrow:isAnimated() then
					boyfriendArrow:animate("off", false)
				end
			end

			if #enemyNote > 0 then
				if (enemyNote[1].y - musicPos <= -400) then
					voices:setVolume(1)

					enemyArrow:animate("confirm", false)

					if enemyNote[1]:getAnimName() == "hold" or enemyNote[1]:getAnimName() == "end" then
						if useAltAnims then
							if (not enemy:isAnimated()) or enemy:getAnimName() == "idle" then self:safeAnimate(enemy, curAnim .. " alt", false, 2) end
                            if enemyDark then if (not enemyDark:isAnimated()) or enemyDark:getAnimName() == "idle" then self:safeAnimate(enemyDark, curAnim .. " alt", false, 2) end end
						else
							if (not enemy:isAnimated()) or enemy:getAnimName() == "idle" then self:safeAnimate(enemy, curAnim, false, 2) end
                            if enemyDark then if (not enemyDark:isAnimated()) or enemyDark:getAnimName() == "idle" then self:safeAnimate(enemyDark, curAnim, false, 2) end end
						end
					else
						if useAltAnims then
							self:safeAnimate(enemy, curAnim .. " alt", false, 2)
                            if enemyDark then self:safeAnimate(enemyDark, curAnim .. " alt", false, 2) end
						else
							self:safeAnimate(enemy, curAnim, false, 2)
                            if enemyDark then self:safeAnimate(enemyDark, curAnim, false, 2) end
						end
					end

					enemy.lastHit = musicTime

					if not mustHitSection then 
						noteCamTweens[i]()
					end

					table.remove(enemyNote, 1)
				end
			end

			if #boyfriendNote > 0 then
				if (boyfriendNote[1].y - musicPos < -500) then
					if inst then voices:setVolume(0) end

					notMissed[noteNum] = false

					if boyfriendNote[1]:getAnimName() ~= "hold" and boyfriendNote[1]:getAnimName() ~= "end" then 
						health = health - 0.095
						misses = misses + 1
						additionalAccuracy = additionalAccuracy + 1.11
					else
						health = health - 0.0125
					end

					table.remove(boyfriendNote, 1)

					if combo >= 5 then self:safeAnimate(girlfriend, "sad", true, 1) end

					combo = 0
				end
			end

			if settings.botPlay then 
				if #boyfriendNote > 0 then
					if (boyfriendNote[1].y - musicPos <= -400) then
						voices:setVolume(1)
						ratingVisibility = {1}

						boyfriendArrow:animate("confirm", false)

						if boyfriendNote[1]:getAnimName() == "hold" or boyfriendNote[1]:getAnimName() == "end" then
							if (not boyfriend:isAnimated()) or boyfriend:getAnimName() == "idle" then self:safeAnimate(boyfriend, curAnim, false, 2) end
						else
							self:safeAnimate(boyfriend, curAnim, false, 2)
						end

						boyfriend.lastHit = musicTime

						if boyfriendNote[1]:getAnimName() ~= "hold" and boyfriendNote[1]:getAnimName() ~= "end" then 
							additionalAccuracy = additionalAccuracy + 100.0
							noteCounter = noteCounter + 1
							combo = combo + 1

							numbers[1]:animate(tostring(math.floor(combo / 100 % 10)), false)
							numbers[2]:animate(tostring(math.floor(combo / 10 % 10)), false)
							numbers[3]:animate(tostring(math.floor(combo % 10)), false)

							ratingAnim = "sick"

							for i = 1, 5 do
								if ratingTimers[i] then Timer.cancel(ratingTimers[i]) end
							end

							rating.y = girlfriend.y - 50
							for i = 1, 3 do
								numbers[i].y = girlfriend.y + 50
							end

							ratingTimers[1] = Timer.tween(2, ratingVisibility, {0}, "linear")
							ratingTimers[2] = Timer.tween(2, rating, {y = girlfriend.y - 100}, "out-elastic")

							rating:animate(ratingAnim, false)

							ratingTimers[3] = Timer.tween(2, numbers[1], {y = girlfriend.y + love.math.random(-10, 10)}, "out-elastic")
							ratingTimers[4] = Timer.tween(2, numbers[2], {y = girlfriend.y + love.math.random(-10, 10)}, "out-elastic")
							ratingTimers[5] = Timer.tween(2, numbers[3], {y = girlfriend.y + love.math.random(-10, 10)}, "out-elastic")
							health = health + 0.095
							score = score + 350
						else
							health = health + 0.0125
						end

						table.remove(boyfriendNote, 1)
					end
				end
			end

			if input:pressed(curInput) then
				-- if settings.botPlay is true, break our the if statement
				if settings.botPlay then break end
				local success = false

				if settings.ghostTapping then
					success = true
				end

				boyfriendArrow:animate("press", false)

				if #boyfriendNote > 0 then
					for j = 1, #boyfriendNote do
						if boyfriendNote[j] and boyfriendNote[j]:getAnimName() == "on" then
							if (boyfriendNote[j].time - musicTime <= 150) then
								local notePos
								local ratingAnim

								notMissed[noteNum] = true

								notePos = math.abs(boyfriendNote[j].time - musicTime)

								voices:setVolume(1)

								boyfriend.lastHit = musicTime

								if notePos <= 55 then -- "Sick"
									score = score + 350
									ratingAnim = "sick"
									additionalAccuracy = additionalAccuracy + 100.0
								elseif notePos <= 90 then -- "Good"
									score = score + 200
									ratingAnim = "good"
									additionalAccuracy = additionalAccuracy + 75.55
								elseif notePos <= 120 then -- "Bad"
									score = score + 100
									ratingAnim = "bad"
									additionalAccuracy = additionalAccuracy + 50.55
								else -- "Shit"
									if settings.ghostTapping then
										success = false
									else
										score = score + 50
										additionalAccuracy = additionalAccuracy + 25.55
									end
									ratingAnim = "shit"
								end
								combo = combo + 1
								noteCounter = noteCounter + 1

								table.insert(judgements, {ratingAnim, 1, girlfriend.y - 50})
								numbers[1]:animate(tostring(math.floor(combo / 100 % 10)), false)
								numbers[2]:animate(tostring(math.floor(combo / 10 % 10)), false)
								numbers[3]:animate(tostring(math.floor(combo % 10)), false)

								for i = 1, 5 do
									if ratingTimers[i] then Timer.cancel(ratingTimers[i]) end
								end

								rating.y = girlfriend.y - 50
								for i = 1, 3 do
									numbers[i].y = girlfriend.y + 50
								end

								if mustHitSection then 
									noteCamTweens[i]()
								end

								Timer.tween(2, judgements[#judgements], {[2] = 0}, "linear")
								Timer.tween(2, judgements[#judgements], {[3] = girlfriend.y - 100}, "out-elastic")

								ratingTimers[3] = Timer.tween(2, numbers[1], {y = girlfriend.y + love.math.random(-10, 10)}, "out-elastic")
								ratingTimers[4] = Timer.tween(2, numbers[2], {y = girlfriend.y + love.math.random(-10, 10)}, "out-elastic")
								ratingTimers[5] = Timer.tween(2, numbers[3], {y = girlfriend.y + love.math.random(-10, 10)}, "out-elastic")

								if not settings.ghostTapping or success then
									boyfriendArrow:animate("confirm", false)

									self:safeAnimate(boyfriend, curAnim, false, 3)
                                    if boyfriendDark then self:safeAnimate(boyfriendDark, curAnim, false, 3) end

									if boyfriendNote[j]:getAnimName() ~= "hold" and boyfriendNote[j]:getAnimName() ~= "end" then
										health = health + 0.095
									else
										health = health + 0.0125
									end

									success = true
								end

								table.remove(boyfriendNote, j)
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
                    if boyfriendDark then self:safeAnimate(boyfriendDark, "miss " .. curAnim, false, 3) end

					score = score - 10
					combo = 0
					health = health - 0.135
					additionalAccuracy = additionalAccuracy + 1.11
					misses = misses + 1
				end
			end

			if notMissed[noteNum] and #boyfriendNote > 0 and input:down(curInput) and ((boyfriendNote[1].y - musicPos <= -400)) and (boyfriendNote[1]:getAnimName() == "hold" or boyfriendNote[1]:getAnimName() == "end") then
				voices:setVolume(1)

				boyfriendArrow:animate("confirm", false)

				health = health + 0.0125

				if (not boyfriend:isAnimated()) or boyfriend:getAnimName() == "idle" then self:safeAnimate(boyfriend, curAnim, false, 3) end
                if boyfriendDark then if (not boyfriendDark:isAnimated()) or boyfriendDark:getAnimName() == "idle" then self:safeAnimate(boyfriendDark, curAnim, false, 3) end end

				table.remove(boyfriendNote, 1)
			end

			if input:released(curInput) then
				boyfriendArrow:animate("off", false)
			end
		end

		if health > 2 then
			health = 2
		elseif health > 0.325 and boyfriendIcon:getAnimName() == "boyfriend losing" then
			if not pixel then 
				boyfriendIcon:animate("boyfriend", false)
			else
				boyfriendIcon:animate("boyfriend (pixel)", false)
			end
		elseif health <= 0 then -- Game over
			Gamestate.push(gameOver)
			health = 0
		elseif health <= 0.325 and boyfriendIcon:getAnimName() == "boyfriend" then
			if not pixel then 
				boyfriendIcon:animate("boyfriend losing", false)
			end
		end

		enemyIcon.x = 425 - health * 500
		boyfriendIcon.x = 585 - health * 500

		if beatHandler.onBeat() then
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

    doFlash = function(self)
		if not settings.noFlash then
			Timer.tween((60/bpm)/4, flash, {alpha = 1}, "linear", function() Timer.tween((60/bpm), flash, {alpha = 0}, "linear") end)
		end
	end,

	drawRating = function(self, multiplier)
		local multiplier = multiplier or 1
		love.graphics.push()
			love.graphics.translate(camera.x * multiplier, camera.y * multiplier)
			love.graphics.translate(camera.ex * multiplier, camera.ey * multiplier)

			graphics.setColor(1, 1, 1, ratingVisibility[1])
			rating:draw()
			for i = 1, 3 do
				numbers[i]:draw()
			end
			graphics.setColor(1, 1, 1)
		love.graphics.pop()
	end,

	drawUI = function(self)
        if inCutscene then return end
		if paused then 
			love.graphics.push()
				love.graphics.setFont(pauseFont)
				love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)
				if paused then
					graphics.setColor(0, 0, 0, 0.8)
					love.graphics.rectangle("fill", -10000, -2000, 25000, 10000)
					graphics.setColor(1, 1, 1)
					pauseShadow:draw()
					pauseBG:draw()
					if pauseMenuSelection ~= 1 then
						uitextflarge("Resume", -305, -275, 600, "center", false)
					else
						uitextflarge("Resume", -305, -275, 600, "center", true)
					end
					if pauseMenuSelection ~= 2 then
						uitextflarge("Restart", -305, -75, 600, "center", false)
						--  -600, 400+downscrollOffset, 1200, "center"
					else
						uitextflarge("Restart", -305, -75, 600, "center", true)
					end
					if pauseMenuSelection ~= 3 then
						uitextflarge("Quit", -305, 125, 600, "center", false)
					else
						uitextflarge("Quit", -305, 125, 600, "center", true)
					end
				end
				love.graphics.setFont(font)
			love.graphics.pop()
			return 
		end
        love.graphics.push()
			graphics.setColor(1,1,1, flash.alpha)
			love.graphics.rectangle("fill", 0, 0, 1280, 720)
			graphics.setColor(1,1,1)
		love.graphics.pop()
		self:drawHealthbar()
		love.graphics.push()
			love.graphics.translate(lovesize.getWidth() / 2, lovesize.getHeight() / 2)
			if not settings.downscroll then
				love.graphics.scale(0.7, 0.7)
			else
				love.graphics.scale(0.7, -0.7)
			end
			love.graphics.scale(uiScale.x, uiScale.y)

			for i = 1, 4 do
				if enemyArrows[i]:getAnimName() == "off" then
					if not settings.middleScroll then
						graphics.setColor(0.6, 0.6, 0.6)
					else
						graphics.setColor(0.6, 0.6, 0.6, 0.6)
					end
				end
				if not pixel then
					enemyArrows[i]:draw()
				else
					if not settings.downscroll then
						enemyArrows[i]:udraw(8, 8)
					else
						enemyArrows[i]:udraw(8, -8)
					end
				end
				graphics.setColor(1, 1, 1)
				if not pixel then 
					boyfriendArrows[i]:draw()
				else
					if not settings.downscroll then
						boyfriendArrows[i]:udraw(8, 8)
					else
						boyfriendArrows[i]:udraw(8, -8)
					end
				end

				love.graphics.push()
					love.graphics.translate(0, -musicPos)

					for j = #enemyNotes[i], 1, -1 do
						if enemyNotes[i][j].y - musicPos <= 560 then
							local animName = enemyNotes[i][j]:getAnimName()

							if animName == "hold" or animName == "end" then
								if settings.middleScroll then
									graphics.setColor(1, 1, 1, 0.3)
								else
									graphics.setColor(1, 1, 1, 0.5)
								end
							else
								if settings.middleScroll then
									graphics.setColor(1, 1, 1, 0.5)
								else
									graphics.setColor(1, 1, 1, 1)
								end
							end
							if not pixel then
								enemyNotes[i][j]:draw()
							else
								if not settings.downscroll then
									enemyNotes[i][j]:udraw(8, 8)
								else
									if enemyNotes[i][j]:getAnimName() == "end" then
										enemyNotes[i][j]:udraw(8, 8)
									else
										enemyNotes[i][j]:udraw(8, -8)
									end
								end
							end
							graphics.setColor(1, 1, 1)
						end
					end
					for j = #boyfriendNotes[i], 1, -1 do
						if boyfriendNotes[i][j].y - musicPos <= 560 then
							local animName = boyfriendNotes[i][j]:getAnimName()

							if animName == "hold" or animName == "end" then
								graphics.setColor(1, 1, 1, math.min(0.5, (500 + (boyfriendNotes[i][j].y - musicPos)) / 150))
							else
								graphics.setColor(1, 1, 1, math.min(1, (500 + (boyfriendNotes[i][j].y - musicPos)) / 75))
							end
							if not pixel then 
								boyfriendNotes[i][j]:draw()
							else
								if not settings.downscroll then
									boyfriendNotes[i][j]:udraw(8, 8)
								else
									if boyfriendNotes[i][j]:getAnimName() == "end" then
										boyfriendNotes[i][j]:udraw(8, 8)
									else
										boyfriendNotes[i][j]:udraw(8, -8)
									end
								end
							end
						end
					end
					graphics.setColor(1, 1, 1)
				love.graphics.pop()
			end

			graphics.setColor(1, 1, 1, countdownFade[1])
			if not settings.downscroll then
				if not pixel or pixel then 
					countdown:draw()
				else
					countdown:udraw(6.75, 6.75)
				end
			else
				if not pixel or pixel then 
					countdown:udraw(1, -1)
				else
					countdown:udraw(6.75, -6.75)
				end
			end
			graphics.setColor(1, 1, 1)
		love.graphics.pop()
	end,

	healthbarText = function(self, text, colourInline, colourOutline)
		local text = text or "???"
		local colourInline = colourInline or {1, 1, 1, 1}
		if not colourInline[4] then colourInline[4] = 1 end
		local colourOutline = colourOutline or {0, 0, 0, 1}
		if not colourOutline[4] then colourOutline[4] = 1 end
		--textshiz, -600, 400+downscrollOffset, 1200, "center"

		graphics.setColor(colourOutline[1], colourOutline[2], colourOutline[3], colourOutline[4])
		love.graphics.printf(text, -600-2, 400+downscrollOffset, 1200, "center")
		love.graphics.printf(text, -600+2, 400+downscrollOffset, 1200, "center")
		love.graphics.printf(text, -600, 400+downscrollOffset-2, 1200, "center")
		love.graphics.printf(text, -600, 400+downscrollOffset+2, 1200, "center")

		graphics.setColor(colourInline[1], colourInline[2], colourInline[3], colourInline[4])
		love.graphics.printf(text, -600, 400+downscrollOffset, 1200, "center")

	end,

	drawHealthbar = function(self, visibility)
		local visibility = visibility or 1
		love.graphics.push()
			love.graphics.push()
				graphics.setColor(0,0,0,settings.scrollUnderlayTrans)
				if settings.middleScroll and not settings.multiplayer then
					love.graphics.rectangle("fill", 400, -100, 90 + 170 * 2.35, 1000)
				else
					love.graphics.rectangle("fill", 755, -100, 90 + 170 * 2.35, 1000)
				end
			graphics.setColor(1,1,1,1)
			love.graphics.pop()
			love.graphics.translate(lovesize.getWidth() / 2, lovesize.getHeight() / 2)
			love.graphics.scale(0.7, 0.7)
			love.graphics.scale(uiScale.x, uiScale.y)

			graphics.setColor(1, 1, 1, visibility)
			graphics.setColor(1, 0, 0)
			love.graphics.rectangle("fill", -500, 350+downscrollOffset, 1000, 25)
			graphics.setColor(0, 1, 0)
			love.graphics.rectangle("fill", 500, 350+downscrollOffset, -health * 500, 25)
			graphics.setColor(0, 0, 0)
			love.graphics.setLineWidth(10)
			love.graphics.rectangle("line", -500, 350+downscrollOffset, 1000, 25)
			love.graphics.setLineWidth(1)
			graphics.setColor(1, 1, 1)

			boyfriendIcon:draw()
			enemyIcon:draw()
			
			if (additionalAccuracy / (noteCounter + misses)) >= 100 and noteCounter + misses <= 0 then 
				convertedAcc = "0%"
			elseif (additionalAccuracy / (noteCounter + misses)) >= 100 and not (noteCounter + misses <= 0) then
				convertedAcc = "100%"
			end
			if convertedAcc == "nan%" then
				convertedAcc = "0%"
			end
			if not convertedAcc then
				convertedAcc = math.floor(additionalAccuracy / (noteCounter + misses)) .. "%"
			end
			self:healthbarText("Score: " .. score .. " | Misses: " .. misses .. " | Accuracy: " .. convertedAcc)
			if settings.botPlay then
				botplayY = botplayY + math.sin(love.timer.getTime()) * 0.15
				uitext("BOTPLAY", -85, botplayY, 0, 2, 2, 0, 0, 0, 0, botplayAlpha[1])
			end
		love.graphics.pop()
	end,

	leave = function(self)
		if inst then inst:stop() end
		voices:stop()

		playMenuMusic = true

		camera:removePoint("boyfriend")
		camera:removePoint("enemy")

		Timer.clear()

		fakeBoyfriend = nil
	end
}
