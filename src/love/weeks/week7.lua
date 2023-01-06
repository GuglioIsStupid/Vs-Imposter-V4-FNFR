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

local difficulty
local cutsceneTime, cutsceneTimeThres, oldcutsceneTimeThres

return {
	enter = function(self, from, songNum, songAppend)
		pauseColor = {50, 50, 50}
		weeks:enter() 
		stages["tank"]:enter()

		week = 7

		cutsceneTime, cutsceneTimeThres, oldcutsceneTimeThres = 0, 0, 0

		if storyMode and not died then
			inCutscene = true
			didCountdown = false
			tankCutscene = {}
			musicPos = 0
			cam.sizeX, cam.sizeY = 1.1, 1.1
			camScale.x, camScale.y = 1.1, 1.1
		end

		song = songNum
		difficulty = songAppend

		weeks:setIcon("enemy", "tankman")

		self:load()
	end,

	load = function(self)
		weeks:load()
		stages["tank"]:load()
		girlfriend:setAnimSpeed(14.4 / (60 / 60))
		girlfriend:animate("idle", true)

		if song == 3 then
			picoSpeaker = love.filesystem.load("sprites/week7/picoSpeaker.lua")()
			picoSpeaker.x, picoSpeaker.y = 105, 110
			boyfriend = Character.bfandgf(0, 0)
			boyfriend.x, boyfriend.y = 175, 175
			fakeBoyfriend = love.filesystem.load("sprites/week7/gfdead.lua")()
			fakeBoyfriend.x, fakeBoyfriend.y = 380, 410
			if not died and storyMode then
				inCutscene = true
				video = cutscene.video("videos/stressCutscene.ogv")
				video:play()
				Timer.after(35.20, function()
					inCutscene = false
					video:destroy()
					weeks:setupCountdown()
				end)
			end

			inst = waveAudio:newSource("songs/week7/stress/inst.ogg", "stream")
			voices = waveAudio:newSource("songs/week7/stress/voices.ogg", "stream")
		elseif song == 2 then
			inst = waveAudio:newSource("songs/week7/guns/inst.ogg", "stream")
			voices = waveAudio:newSource("songs/week7/guns/voices.ogg", "stream")
			if storyMode and not died then
				inCutscene = true
				tankCutsceneAudio = love.audio.newSource("sounds/cutscenes/tank/tankSong2.ogg", "static")
				tankCutscene[1] = love.filesystem.load("sprites/cutscenes/guns-talk.lua")()

				cam.x, cam.y = 100, -165
				cam.sizeX, cam.sizeY = 1.1, 1.1
				camScale.x, camScale.y = 1.1, 1.1
				tankCutscene[1].x, tankCutscene[1].y = enemy.x, enemy.y - 25
				tankCutsceneAudio:play()
				tankCutscene[1]:animate("talk", false)
				Timer.after(
					4.12,
					function()
						girlfriend:animate("sad", false)
						Timer.tween(
							0.8, 
							cam,
							{
								x = girlfriend.x,
								y = girlfriend.y - 120
							},
							"out-quad",
							function()
								Timer.tween(
									0.4,
									cam,
									{
										x = 100,
										y = -165
									},
									"out-quad"
								)
								Timer.tween(
									0.4, 
									cam,
									{
										sizeX = 1,
										sizeY = 1
									},
									"out-quad"
								)
								Timer.tween(
									0.4, 
									camScale,
									{
										x = 1,
										y = 1
									},
									"out-quad"
								)
							end
						)
						Timer.tween(
							0.2, 
							cam,
							{
								sizeX = 1.4,
								sizeY = 1.4
							},
							"out-quad"
						)
						Timer.tween(
							0.2, 
							camScale,
							{
								x = 1.4,
								y = 1.4
							},
							"out-quad"
						)
					end
				)
				Timer.after(
					11.507,
					function()
						tankCutscene[1] = nil
						weeks:setupCountdown()
						inCutscene = false
						cam.sizeX, cam.sizeY = 1, 1
						camScale.x, camScale.y = 1, 1
					end
				)
			end
		else
			inst = waveAudio:newSource("songs/week7/ugh/inst.ogg", "stream")
			voices = waveAudio:newSource("songs/week7/ugh/voices.ogg", "stream")
			if storyMode and not died then
				tankCutsceneAudio = love.audio.newSource("sounds/cutscenes/tank/wellWellWell.ogg", "static")
				tankCutsceneAudio2 = love.audio.newSource("sounds/cutscenes/tank/killYou.ogg", "static")

				bfBeep = love.audio.newSource("sounds/cutscenes/tank/bfBeep.ogg", "static")

				for i = 1, 2 do 
					tankCutscene[i] = love.filesystem.load("sprites/cutscenes/ugh-talk-" .. i .. ".lua")()
					tankCutscene[i].x, tankCutscene[i].y = enemy.x, enemy.y - 25
				end
				cam.x, cam.y = 100, -165
				tankCutsceneAudio:play()
				tankCutscene[1]:animate("talk", false)
				Timer.after(
					3.357,
					function()
						Timer.tween(
							0.5,
							cam,
							{
								x = -boyfriend.x + 25,
								y = cam.y - 50
							},
							"out-quad",
							function()
								Timer.after(
									0.1,
									function()
										bfBeep:play()
										boyfriend:animate("up", false)
										Timer.after(
											0.42,
											function()
												boyfriend:animate("idle", false)
												Timer.tween(
													0.5,
													cam,
													{
														x = -enemy.x - 75,
														y = cam.y + 50
													},
													"out-quad",
													function()
														Timer.after(
															0.12,
															function()
																tankCutscene[2]:animate("talk", false)
																tankCutsceneAudio2:play()
																Timer.after(
																	6.1,
																	function()
																		for i = 1, 2 do
																			tankCutscene[i] = nil
																		end
																		weeks:setupCountdown()
																		inCutscene = false
																		cam.sizeX, cam.sizeY = 1, 1
																		camScale.x, camScale.y = 1, 1
																	end
																)
															end
														)
													end
												)
											end
										)
									end
								)
							end
						)
						
						
					end
				)
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
			weeks:generateNotes("songs/week7/stress/" .. difficulty .. ".json")
            weeks:generatePicoNotes("songs/week7/stress/picospeaker.json")
		elseif song == 2 then
			weeks:generateNotes("songs/week7/guns/" .. difficulty .. ".json")
		else
			weeks:generateNotes("songs/week7/ugh/" .. difficulty .. ".json")
			weeks:generateEvents("songs/week7/ugh/events.json")
		end
	end,

	update = function(self, dt)
		weeks:update(dt)
		stages["tank"]:update(dt)

		if inCutscene then
			local timerBF = 0
			
			timerBF = timerBF + 1 * dt

			if timerBF > 0.5 then
				boyfriend:animate("idle", false)
				timerBF = 0
			end

			girlfriend:update(dt) -- updating here cuz moment
			boyfriend:update(dt)
			if song ~= 3 then
				tankCutscene[1]:update(dt)
			end
			if song == 1 then
				if not tankCutscene[1]:isAnimated() then
					tankCutscene[2]:update(dt)
				end
			elseif song == 2 then
				if girlfriend:getAnimName() == "sad" and not girlfriend:isAnimated() then
					girlfriend:animate("idle", false)
				end
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

		if health[1] >= 80 then
			if enemyIcon:getAnimName() == "tankman" then
				weeks:setIcon("enemy", "tankman losing")
			end
		else
			if enemyIcon:getAnimName() == "tankman losing" then
				weeks:setIcon("enemy", "tankman")
			end
		end

		if not (countingDown or graphics.isFading()) and not (inst:getDuration() > musicTime/1000) and not paused and not inCutscene then
			if storyMode and song < 3 then
				song = song + 1
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

	draw = function(self)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)
			love.graphics.scale(extraCamZoom.sizeX, extraCamZoom.sizeY)
			love.graphics.scale(cam.sizeX, cam.sizeY)

			stages["tank"]:draw()
			weeks:drawRating(0.9)
		love.graphics.pop()

		if not inCutscene then
			weeks:drawTimeLeftBar()
			weeks:drawHealthBar()
			if not paused then

				weeks:drawUI()
			end
		end
		if song == 3 and inCutscene then
			if video:isPlaying() then
				video:draw()
			end
		end
	end,

	leave = function(self)
		song = 1
		stages["tank"]:leave()
		weeks:leave()
	end
}
