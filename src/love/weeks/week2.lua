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

return {
	enter = function(self, from, songNum, songAppend)
		pauseColor = {30, 45, 60}

		weeks:enter()
		stages.hauntedHouse:enter()

		week = 2

		song = songNum
		difficulty = songAppend

		cam.sizeX, cam.sizeY = 1.1, 1.1
		camScale.x, camScale.y = 1.1, 1.1

		sounds["thunder"] = {
			love.audio.newSource("sounds/week2/thunder1.ogg", "static"),
			love.audio.newSource("sounds/week2/thunder2.ogg", "static")
		}

		weeks:setIcon("enemy", "skid and pump")

		self:load()
	end,

	load = function(self)
		weeks:load()
		stages.hauntedHouse:load()

		if song == 3 then
			enemy = Character.monster(0,0)
			enemy.x, enemy.y = -610, -215
            weeks:setIcon("enemy", "monster")
			inst = waveAudio:newSource("songs/week2/monster/inst.ogg", "stream")
			voices = waveAudio:newSource("songs/week2/monster/voices.ogg", "stream")
		elseif song == 2 then
			inst = waveAudio:newSource("songs/week2/south/inst.ogg", "stream")
			voices = waveAudio:newSource("songs/week2/south/voices.ogg", "stream")
		else
			inst = waveAudio:newSource("songs/week2/spookeez/inst.ogg", "stream")
			voices = waveAudio:newSource("songs/week2/spookeez/voices.ogg", "stream")
		end

		self:initUI()

		weeks:setupCountdown()
	end,

	initUI = function(self)
		weeks:initUI()

		if song == 3 then
			weeks:generateNotes("songs/week2/monster/" .. difficulty .. ".json")
		elseif song == 2 then
			weeks:generateNotes("songs/week2/south/" .. difficulty .. ".json")
		else
			weeks:generateNotes("songs/week2/spookeez/" .. difficulty .. ".json")
		end
	end,

	update = function(self, dt)
		weeks:update(dt)
		stages["hauntedHouse"]:update(dt)

		if song ~= 3 and musicThres ~= oldMusicThres and math.fmod(absMusicTime, 60000 / bpm) < 100 then
			if enemy:getAnimName() == "idle" then
				enemy:setAnimSpeed(14.4 / (120 / bpm))
			end
		end

		if song == 3 then
			if health[1] >= 80 then
				if enemyIcon:getAnimName() == "monster" then
					weeks:setIcon("enemy", "monster losing")
				end
			else
				if enemyIcon:getAnimName() == "monster losing" then
					weeks:setIcon("enemy", "monster")
				end
			end
		else
			if health[1] >= 80 then
				if enemyIcon:getAnimName() == "skid and pump" then
					weeks:setIcon("enemy", "skid and pump losing")
				end
			else
				if enemyIcon:getAnimName() == "skid and pump losing" then
					weeks:setIcon("enemy", "skid and pump")
				end
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

			stages.hauntedHouse:draw()
			weeks:drawRating(0.9)
		love.graphics.pop()
		weeks:drawTimeLeftBar()
		weeks:drawHealthBar()
		if not paused then
			weeks:drawUI()
		end
	end,

	leave = function(self)
		stages.hauntedHouse:leave()
		weeks:leave()
	end
}
