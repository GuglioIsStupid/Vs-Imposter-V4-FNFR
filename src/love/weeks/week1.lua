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

local stageBack, stageFront, curtains

return {
	enter = function(self, from, songNum, songAppend)
		pauseColor = {129, 100, 223}
		weeks:enter()
		stages["stage"]:enter()

		week = 1

		song = songNum
		difficulty = songAppend

		weeks:setIcon("enemy", "daddy dearest")

		self:load()
	end,

	load = function(self)
		weeks:load()
		stages["stage"]:load()

		if song == 3 then
			inst = waveAudio:newSource("songs/week1/dadbattle/inst.ogg", "stream")
			voices = waveAudio:newSource("songs/week1/dadbattle/voices.ogg", "stream")
		elseif song == 2 then
			inst = waveAudio:newSource("songs/week1/fresh/inst.ogg", "stream")
			voices = waveAudio:newSource("songs/week1/fresh/voices.ogg", "stream")
		else
			inst = waveAudio:newSource("songs/week1/bopeebo/inst.ogg", "stream")
			voices = waveAudio:newSource("songs/week1/bopeebo/voices.ogg", "stream")
		end

		self:initUI()

		weeks:setupCountdown()
	end,

	initUI = function(self)
		weeks:initUI()

		if song == 3 then
			weeks:generateNotes("songs/week1/dadbattle/" .. difficulty .. ".json")
		elseif song == 2 then
			weeks:generateNotes("songs/week1/fresh/" .. difficulty .. ".json")
			weeks:generateEventsOld("songs/week1/fresh/events.json")
		else
			weeks:generateNotes("songs/week1/bopeebo/" .. difficulty .. ".json")
			weeks:generateEventsOld("songs/week1/bopeebo/events.json")
		end
	end,

	update = function(self, dt)
		weeks:update(dt)
		stages["stage"]:update(dt)

		if song == 1 and musicThres ~= oldMusicThres and math.fmod(absMusicTime + 500, 480000 / bpm) < 100 then
			weeks:safeAnimate(girlfriend, "cheer", false, 1)
			weeks:changeNoteTransparency()
		end

		if health[1] >= 80 then
			if enemyIcon:getAnimName() == "daddy dearest" then
				weeks:setIcon("enemy", "daddy dearest losing")
			end
		else
			if enemyIcon:getAnimName() == "daddy dearest losing" then
				weeks:setIcon("enemy", "daddy dearest")
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

			stages["stage"]:draw()
			weeks:drawRating(0.9)
		love.graphics.pop()
		
		weeks:drawTimeLeftBar()
		weeks:drawHealthBar()
		if not paused then
			weeks:drawUI()
		end
	end,

	leave = function(self)
		stages["stage"]:leave()
		weeks:leave()
	end
}