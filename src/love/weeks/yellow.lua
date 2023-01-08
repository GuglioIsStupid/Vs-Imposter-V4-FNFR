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
		weeksYellow:enter()
		stages["yellowAirship"]:enter()

		week = 1

		song = songNum
		difficulty = songAppend

		weeksYellow:setIcon("enemy", "daddy dearest")

		self:load()
	end,

	load = function(self)
		weeksYellow:load()
		stages["stage"]:load()

		if song == 5 then
			inst = waveAudio:newSource("songs/double-kill/inst.ogg", "stream")
			voices = waveAudio:newSource("songs/double-kill/voices.ogg", "stream")
		elseif song == 4 then
			inst = waveAudio:newSource("songs/danger/inst.ogg", "stream")
			voices = waveAudio:newSource("songs/danger/voices.ogg", "stream")
		elseif song == 3 then
			inst = waveAudio:newSource("songs/oversight/inst.ogg", "stream")
			voices = waveAudio:newSource("songs/oversight/voices.ogg", "stream")
		elseif song == 2 then
			inst = waveAudio:newSource("songs/dlow/inst.ogg", "stream")
			voices = waveAudio:newSource("songs/dlow/voices.ogg", "stream")
		else
			inst = waveAudio:newSource("songs/mando/inst.ogg", "stream")
			voices = waveAudio:newSource("songs/mando/voices.ogg", "stream")
		end

		self:initUI()

		weeksYellow:setupCountdown()
	end,

	initUI = function(self)
		weeksYellow:initUI()

		if song == 5 then
			weeksYellow:generateNotes("songs/double-kill/double-kill-hard.json")
		elseif song == 4 then
			weeksYellow:generateNotes("songs/danger/danger-hard.json")
		elseif song == 3 then
			weeksYellow:generateNotes("songs/oversight/oversight-hard.json")
		elseif song == 2 then
			weeksYellow:generateNotes("songs/dlow/dlow-hard.json")
		else
			weeksYellow:generateNotes("songs/mando/mando-hard.json")
		end
	end,

	update = function(self, dt)
		weeksYellow:update(dt)
		stages["stage"]:update(dt)

		if health[1] >= 80 then
			if enemyIcon:getAnimName() == "daddy dearest" then
				weeksYellow:setIcon("enemy", "daddy dearest losing")
			end
		else
			if enemyIcon:getAnimName() == "daddy dearest losing" then
				weeksYellow:setIcon("enemy", "daddy dearest")
			end
		end

		if not (countingDown or graphics.isFading()) and not (inst:getDuration() > musicTime/1000) and not paused then
			if storyMode and song < 5 then
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

		weeksYellow:updateUI(dt)
	end,

	draw = function(self)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)
			love.graphics.scale(extraCamZoom.sizeX, extraCamZoom.sizeY)
			love.graphics.scale(cam.sizeX, cam.sizeY)

			stages["yellowAirship"]:draw()
			weeksYellow:drawRating(0.9)
		love.graphics.pop()
		
		weeksYellow:drawTimeLeftBar()
		weeksYellow:drawHealthBar()
		if not paused then
			weeksYellow:drawUI()
		end
	end,

	leave = function(self)
		stages["yellowAirship"]:leave()
		weeksYellow:leave()
	end
}
