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
		weeksGreen:enter()
		stages["miraCaf"]:enter()

		week = 1

		song = songNum
		difficulty = songAppend

		weeksGreen:setIcon("enemy", "daddy dearest")

		self:load()
	end,

	load = function(self)
		weeksGreen:load()
		if song == 4 then
			stages["miraReactor"]:leave()
			stages["miraFall"]:enter()
			stages["miraFall"]:load()
			inst = waveAudio:newSource("songs/ejected/Inst.ogg")
			inst = waveAudio:newSource("songs/ejected/Voices.ogg")
		elseif song == 3 then
			stages["miraCaf"]:leave()
			stages["miraReactor"]:enter()
			stages["miraReactor"]:load()
			inst = waveAudio:newSource("songs/reactor/Inst.ogg", "stream")
			voices = waveAudio:newSource("songs/reactor/Voices.ogg", "stream")
		elseif song == 2 then
			stages["miraCaf"]:load()
			inst = waveAudio:newSource("songs/lights-down/Inst.ogg", "stream")
			voices = waveAudio:newSource("songs/lights-down/Voices.ogg", "stream")
		else
			stages["miraCaf"]:load()
			inst = waveAudio:newSource("songs/sussus-toogus/Inst.ogg", "stream")
			voices = waveAudio:newSource("songs/sussus-toogus/Voices.ogg", "stream")
		end

		self:initUI()

		weeksGreen:setupCountdown()
	end,

	initUI = function(self)
		weeksGreen:initUI()
		if song == 4 then
			weeksGreen:generateNotes("songs/ejected/ejected-hard.json")
		elseif song == 3 then
			weeksGreen:generateNotes("songs/reactor/reactor-hard.json")
		elseif song == 2 then
			weeksGreen:generateNotes("songs/lights-down/lights-down-hard.json")
		else
			weeksGreen:generateNotes("songs/sussus-toogus/sussus-toogus-hard.json")
		end
	end,

	update = function(self, dt)
		weeksGreen:update(dt)
		if song == 4 then
			stages["miraFall"]:update(dt)
		elseif song == 3 then
			stages["miraReactor"]:update(dt)
		else
			stages["miraCaf"]:update(dt)
		end

		if health[1] >= 80 then
			if enemyIcon:getAnimName() == "daddy dearest" then
				weeksGreen:setIcon("enemy", "daddy dearest losing")
			end
		else
			if enemyIcon:getAnimName() == "daddy dearest losing" then
				weeksGreen:setIcon("enemy", "daddy dearest")
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

		weeksGreen:updateUI(dt)
	end,

	draw = function(self)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)
			love.graphics.scale(extraCamZoom.sizeX, extraCamZoom.sizeY)
			love.graphics.scale(cam.sizeX, cam.sizeY)
			if song == 4 then
				stages["miraFall"]:draw()
			elseif song == 3 then
				stages["miraReactor"]:draw()
			else
				stages["miraCaf"]:draw()
			end
			weeksGreen:drawRating(0.9)
		love.graphics.pop()
		
		weeksGreen:drawTimeLeftBar()
		weeksGreen:drawHealthBar()
		if not paused then
			weeksGreen:drawUI()
		end
	end,

	leave = function(self)
		if song == 4 then
			stages["miraFall"]:leave()
		elseif song == 3 then
			stages["miraReactor"]:leave()
		else
			stages["miraCaf"]:leave()
		end
		weeksGreen:leave()
	end
}
