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
		weeksHenry:enter()
		stages["henry"]:enter()

		week = 1

		song = songNum
		difficulty = songAppend

		weeksHenry:setIcon("enemy", "daddy dearest")

		self:load()
	end,

	load = function(self)
		weeksHenry:load()
		stages["henry"]:load()

		if song == 4 then
			inst = waveAudio:newSource("songs/armed/Inst.ogg", "stream")
			voices = waveAudio:newSource("songs/armed/Voices.ogg", "stream")
		elseif song == 3 then
			inst = waveAudio:newSource("songs/reinforcements/Inst.ogg", "stream")
			voices = waveAudio:newSource("songs/reinforcements/Voices.ogg", "stream")
		elseif song == 2 then
			inst = waveAudio:newSource("songs/greatest-plan/Inst.ogg", "stream")
			voices = waveAudio:newSource("songs/greatest-plan/Voices.ogg", "stream")
		else
			inst = waveAudio:newSource("songs/titular/Inst.ogg", "stream")
			voices = waveAudio:newSource("songs/titular/Voices.ogg", "stream")
		end

		self:initUI()

		weeksHenry:setupCountdown()
	end,

	initUI = function(self)
		weeksHenry:initUI()

		if song == 4 then
			weeksHenry:generateNotes("songs/armed/armed-hard.json")
		elseif song == 3 then
			weeksHenry:generateNotes("songs/reinforcements/reinforcements-hard.json")
		elseif song == 2 then
			weeksHenry:generateNotes("songs/greatest-plan/greatest-plan-hard.json")
		else
			weeksHenry:generateNotes("songs/titular/titular-hard.json")
		end
	end,

	update = function(self, dt)
		weeksHenry:update(dt)
		stages["henry"]:update(dt)

		if health[1] >= 80 then
			if enemyIcon:getAnimName() == "daddy dearest" then
				weeksHenry:setIcon("enemy", "daddy dearest losing")
			end
		else
			if enemyIcon:getAnimName() == "daddy dearest losing" then
				weeksHenry:setIcon("enemy", "daddy dearest")
			end
		end

		if not (countingDown or graphics.isFading()) and not (inst:getDuration() > musicTime/1000) and not paused then
			if storyMode and song < 4 then
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

		weeksHenry:updateUI(dt)
	end,

	draw = function(self)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)
			love.graphics.scale(extraCamZoom.sizeX, extraCamZoom.sizeY)
			love.graphics.scale(cam.sizeX, cam.sizeY)

			stages["henry"]:draw()
			weeksHenry:drawRating(0.9)
		love.graphics.pop()
		
		weeksHenry:drawTimeLeftBar()
		weeksHenry:drawHealthBar()
		if not paused then
			weeksHenry:drawUI()
		end
	end,

	leave = function(self)
		stages["henry"]:leave()
		weeksHenry:leave()
	end
}
