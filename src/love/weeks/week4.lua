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

local sunset

local bgLimo, limoDancer, limo

return {
	enter = function(self, from, songNum, songAppend)
		pauseColor = {222, 132, 190}
		bpm = 100
		week = 4
		weeks:enter()
		stages["sunset"]:enter()

		song = songNum
		difficulty = songAppend

		weeks:setIcon("enemy", "mommy mearest")

		self:load()
	end,

	load = function(self)
		weeks:load()
		stages["sunset"]:load()

		if song == 3 then
			inst = waveAudio:newSource("songs/week4/milf/inst.ogg", "stream")
			voices = waveAudio:newSource("songs/week4/milf/voices.ogg", "stream")
		elseif song == 2 then
			inst = waveAudio:newSource("songs/week4/high/inst.ogg", "stream")
			voices = waveAudio:newSource("songs/week4/high/voices.ogg", "stream")
		else
			inst = waveAudio:newSource("songs/week4/satin-panties/inst.ogg", "stream")
			voices = waveAudio:newSource("songs/week4/satin-panties/voices.ogg", "stream")
		end

		self:initUI()

		weeks:setupCountdown()
	end,

	initUI = function(self)
		weeks:initUI()

		if song == 3 then
			weeks:generateNotes("songs/week4/milf/" .. difficulty .. ".json")
		elseif song == 2 then
			weeks:generateNotes("songs/week4/high/" .. difficulty .. ".json")
			weeks:generateEventsOld("songs/week4/high/events.json")
		else
			weeks:generateNotes("songs/week4/satin-panties/" .. difficulty .. ".json")
			weeks:generateEventsOld("songs/week4/satin-panties/events.json")
		end
	end,

	update = function(self, dt)
		weeks:update(dt)
		stages["sunset"]:update(dt)
		
		-- Hardcoded M.I.L.F camera scaling
		if song == 3 and musicTime > 56000 and musicTime < 67000 and musicThres ~= oldMusicThres and math.fmod(absMusicTime, 30000 / bpm) < 100 then
			if camScaleTimer then 
				Timer.cancel(camScaleTimer) 
			end
			if uiScaleTimer then
				Timer.cancel(uiScaleTimer)
			end

			camScaleTimer = Timer.tween(
				(60 / bpm) / 16, 
				cam, 
				{
					sizeX = camScale.x * 1.075, 
					sizeY = camScale.y * 1.075
				}, 
				"out-quad", 
				function() 
					camScaleTimer = Timer.tween(
						(60 / bpm), 
						cam, 
						{
							sizeX = camScale.x, 
							sizeY = camScale.y
						}, 
						"out-quad"
					) 
				end
			)

			uiScaleTimer = Timer.tween(
				(60/bpm)/16,
				uiScale,
				{
					sizeX = uiScale.x * 1.075,
					sizeY = uiScale.y * 1.075
				},
				"out-quad",
				function()
					uiScaleTimer = Timer.tween(
						(60/bpm),
						uiScale,
						{
							sizeX = uiScale.x, 
							sizeY = uiScale.y
						},
						"out-quad"
					)
				end
			)
		end

		print(tostring(health[1]))
		if health[1] >= 80 then
			if enemyIcon:getAnimName() == "mommy mearest" then
				weeks:setIcon("enemy", "mommy mearest losing")
			end
		else
			if enemyIcon:getAnimName() == "mommy mearest losing" then
				weeks:setIcon("enemy", "mommy mearest")
			end
		end

		if not (countingDown or graphics.isFading()) and not (inst:getDuration() > musicTime/1000) and not paused then
			if storyMode and song < 3 then
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
				song = song + 1

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

			stages["sunset"]:draw()
			weeks:drawRating(0.9)	
		love.graphics.pop()
		weeks:drawTimeLeftBar()
		weeks:drawHealthBar()
		if not paused then
			weeks:drawUI()
		end
	end,

	leave = function()
		stages["sunset"]:leave()
		weeks:leave()
	end
}
