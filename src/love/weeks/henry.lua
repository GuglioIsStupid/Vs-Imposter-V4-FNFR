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
		stages["henry"]:enter()

		week = 1

		song = songNum
		difficulty = songAppend

		weeksYellow:setIcon("enemy", "daddy dearest")

		self:load()
	end,

	load = function(self)
		weeksYellow:load()
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

		weeksYellow:setupCountdown()
	end,

	initUI = function(self)
		weeksYellow:initUI()

		if song == 4 then
			weeksYellow:generateNotes("songs/armed/armed-hard.json")
		elseif song == 3 then
			weeksYellow:generateNotes("songs/reinforcements/reinforcements-hard.json")
		elseif song == 2 then
			weeksYellow:generateNotes("songs/greatest-plan/greatest-plan-hard.json")
		else
			weeksYellow:generateNotes("songs/titular/titular-hard.json")
		end
	end,

	update = function(self, dt)
		weeksYellow:update(dt)
		stages["henry"]:update(dt)

		if song == 1 and musicThres ~= oldMusicThres and math.fmod(absMusicTime + 500, 480000 / bpm) < 100 then
			weeksYellow:safeAnimate(girlfriend, "cheer", false, 1)
			weeksYellow:changeNoteTransparency()
		end

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





		if song == 4 then
			if musicTime >= 0 and musicTime < 0 + 25 then
				curEnemy = "black"
				print("1")
			end
			if musicTime >= 8860 and musicTime < 8860 + 25 then
				curEnemy = "white"
				print("2")
			end
			if musicTime >= 24488 and musicTime < 24488 + 25 then
				curEnemy = "black"
				print("3")


			end
			if musicTime >= 35651 and musicTime < 35651 + 25 then
				curEnemy = "white"
				print("4")

			end
			if musicTime >= 40116 and musicTime < 40116 + 25 then
				curEnemy = "black"
				print("5")

			end
			if musicTime >= 49046 and musicTime < 49046 + 25 then
				curEnemy = "white"
				print("6")

			end
			if musicTime >= 53511 and musicTime < 53511 + 25 then
				curEnemy = "black"
				print("7")

			end
			if musicTime >= 62441 and musicTime < 62441 + 25 then
				curEnemy = "white"
				print("8")

			end
			if musicTime >= 70255 and musicTime < 70255 + 25 then
				curEnemy = "black"
				print("9")

			end
			if musicTime >= 80302 and musicTime < 80302 + 25 then
				curEnemy = "white"
				print("10")

			end
			if musicTime >= 84767 and musicTime < 84767 + 25 then
				curEnemy = "white"
				print("11")

			end
			if musicTime >= 83967 and musicTime < 83967 + 25 then
				curEnemy = "black"
				print("12")

			end
			if musicTime >= 93697 and musicTime < 93697 + 25 then
				curEnemy = "white"
				print("13")

			end
			if musicTime >= 98162 and musicTime < 98162 + 25 then
				curEnemy = "black"
				print("14")

			end

			--[[
			if musicTime >= 116023 and musicTime < 116023 + 25 then
				curEnemy = "black"
			end
			--]]
			if musicTime >= 121325 and musicTime < 121325 + 25 then
				curEnemy = "white"
				print("15")

			end
			if musicTime >= 124953 and musicTime < 124953 + 25 then
				curEnemy = "black"
				print("16")

			end
			if musicTime >= 139325 and musicTime < 139325 + 25 then
				curEnemy = "white"
				print("17")

			end
			if musicTime >= 152023 and musicTime < 152023 + 25 then
				curEnemy = "black"
				print("18")

			end
			if musicTime >= 156209 and musicTime < 156209 + 25 then
				curEnemy = "white"
				print("19")

			end
			if musicTime >= 160674 and musicTime < 160674 + 25 then
				curEnemy = "both"
				print("20")

			end
		elseif song == 3 then
			if musicTime >= 0 and musicTime < 25 then
				curEnemy = "white"
			end
			if musicTime >= 72340 and musicTime < 72365 then
				curEnemy = "black"
			end
			if musicTime >= 78534 and musicTime < 78559 then
				curEnemy = "white"
			end
			if musicTime >= 84727 and musicTime < 84752 then
				curEnemy = "black"
			end
			if musicTime >= 90921 and musicTime < 90946 then
				curEnemy = "white"
			end
			if musicTime >= 100211 and musicTime < 100236 then
				curEnemy = "black"
			end
			if musicTime >= 103308 and musicTime < 103308 + 25 then
				curEnemy = "white"
			end
			if musicTime >= 106405 and musicTime < 106405 + 25 then
				curEnemy = "black"
			end
			if musicTime >= 109502 and musicTime < 109502 + 25 then
				curEnemy = "white"
			end
			if musicTime >= 119695 and musicTime < 119695 + 25 then
				curEnemy = "both"
			end
			if musicTime >= 122469 and musicTime < 122459 + 25 then
				curEnemy = "white"
			end
			if musicTime >= 124211 and musicTime < 124211 + 25 then
				curEnemy = "black"
			end
		end

		weeksYellow:updateUI(dt)
	end,

	draw = function(self)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)
			love.graphics.scale(extraCamZoom.sizeX, extraCamZoom.sizeY)
			love.graphics.scale(cam.sizeX, cam.sizeY)

			stages["henry"]:draw()
			weeksYellow:drawRating(0.9)
		love.graphics.pop()
		
		weeksYellow:drawTimeLeftBar()
		weeksYellow:drawHealthBar()
		if not paused then
			weeksYellow:drawUI()
		end
	end,

	leave = function(self)
		stages["henry"]:leave()
		weeksYellow:leave()
	end
}
