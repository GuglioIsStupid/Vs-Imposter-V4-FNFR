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

		weeksYellow:setIcon("enemy", "yellow")
		curEnemy = "white"

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
		elseif song == 50 then
			inst = "https://www.youtube.com/watch?v=p3wVSfHumRA"
			voices = inst
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
			weeksYellow:setIcon("enemy", "white")
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
			if enemyIcon:getAnimName() == "yellow" then
				weeksYellow:setIcon("enemy", "yellow losing")
			elseif enemyIcon:getAnimName() == "white" then
				weeksYellow:setIcon("enemy", "white losing")
			elseif enemyIcon:getAnimName() == "black" then
				weeksYellow:setIcon("enemy", "black losing")
			end
		else
			if enemyIcon:getAnimName() == "yellow losing" then
				weeksYellow:setIcon("enemy", "yellow")
			elseif enemyIcon:getAnimName() == "white losing" then
				weeksYellow:setIcon("enemy", "white")
			elseif enemyIcon:getAnimName() == "black losing" then
				weeksYellow:setIcon("enemy", "black")
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

		if song == 5 then

			if musicTime >= 1200 and musicTime < 1225 then 
				weeksYellow:doFlash()
			end
			if musicTime >= 10800 and musicTime < 10825 then 
				curEnemy = "black"
				weeksYellow:setIcon("enemy", "black")
			end
			if musicTime >= 20400 and musicTime < 20425 then 
				curEnemy = "white"
				weeksYellow:setIcon("enemy", "white")
			end
			if musicTime >= 25200 and musicTime < 25225 then 
				curEnemy = "black"
				weeksYellow:setIcon("enemy", "black")
			end
			if musicTime >= 39600 and musicTime < 39625 then 
				curEnemy = "white"
				weeksYellow:setIcon("enemy", "white")
			end
			if musicTime >= 49200 and musicTime < 49225 then 
				curEnemy = "black"
				weeksYellow:setIcon("enemy", "black")
			end
			if musicTime >= 58500 and musicTime < 58525 then 
				curEnemy = "white"
				weeksYellow:setIcon("enemy", "white")
			end
			if musicTime >= 58800 and musicTime < 58825 then 
				curEnemy = "both"
				weeksYellow:setIcon("enemy", "blackwhite")
			end
			if musicTime >= 76800 and musicTime < 76825 then 
				curEnemy = "both"
				weeksYellow:setIcon("enemy", "blackwhite")
			end
			if musicTime >= 79200 and musicTime < 79225 then 
				curEnemy = "black"
				weeksYellow:setIcon("enemy", "black")
			end
			if musicTime >= 80400 and musicTime < 80425 then 
				curEnemy = "white"
				weeksYellow:setIcon("enemy", "white")
			end
			if musicTime >= 81600 and musicTime < 81625 then 
				curEnemy = "both"
				weeksYellow:setIcon("enemy", "blackwhite")
			end
			if musicTime >= 82800 and musicTime < 82825 then 
				curEnemy = "both"
				weeksYellow:setIcon("enemy", "blackwhite")
			end
			if musicTime >= 84000 and musicTime < 84025 then 
				curEnemy = "black"
				weeksYellow:setIcon("enemy", "black")
			end
			if musicTime >= 85200 and musicTime < 85225 then 
				curEnemy = "white"
				weeksYellow:setIcon("enemy", "white")
			end
			if musicTime >= 86400 and musicTime < 86425 then 
				curEnemy = "both"
				weeksYellow:setIcon("enemy", "blackwhite")
			end
			if musicTime >= 86400 and musicTime < 86425 then 
				curEnemy = "both"
				weeksYellow:setIcon("enemy", "blackwhite")
			end
			if musicTime >= 97200 and musicTime < 97225 then 
				curEnemy = "black"
				weeksYellow:setIcon("enemy", "black")
			end
			if musicTime >= 106800 and musicTime < 106825 then 
			--	DoubleKillEvents(darken)
			end
			if musicTime >= 116400 and musicTime < 116425 then 
			--	DoubleKillEvents(airship)
			end
			if musicTime >= 126000 and musicTime < 126025 then 
				--DoubleKillEvents(brighten)
			end
			if musicTime >= 126000 and musicTime < 126025 then 
				--AddCameraZoom(0.1)
			end
			if musicTime >= 127200 and musicTime < 127225 then 
				curEnemy = "white"
				weeksYellow:setIcon("enemy", "white")
			end
			if musicTime >= 136800 and musicTime < 136825 then 
				curEnemy = "black"
				weeksYellow:setIcon("enemy", "black")
			end
			if musicTime >= 146400 and musicTime < 146425 then 
				curEnemy = "both"
				weeksYellow:setIcon("enemy", "blackwhite")
			end
			if musicTime >= 165600 and musicTime < 165625 then 
				curEnemy = "black"
				weeksYellow:setIcon("enemy", "black")
			end
			if musicTime >= 175470.12987013 and musicTime < 175495.12987013 then 
				curEnemy = "white"
				weeksYellow:setIcon("enemy", "white")
			end
			if musicTime >= 192924.675324675 and musicTime < 192949.675324675 then 
				curEnemy = "black"
				weeksYellow:setIcon("enemy", "black")
			end
			if musicTime >= 201651.948051948 and musicTime < 201676.948051948 then 
				curEnemy = "white"
				weeksYellow:setIcon("enemy", "white")
			end
			if musicTime >= 211470.12987013 and musicTime < 211495.12987013 then 
				curEnemy = "black"
				weeksYellow:setIcon("enemy", "black")
			end
			if musicTime >= 220197.402597402 and musicTime < 220222.402597402 then 
				curEnemy = "white"
				weeksYellow:setIcon("enemy", "white")
			end
			if musicTime >= 228924.675324675 and musicTime < 228949.675324675 then 
				curEnemy = "both"
				weeksYellow:setIcon("enemy", "blackwhite")
			end
			if musicTime >= 246447.402597402 and musicTime < 246472.402597402 then 
				curEnemy = "black"
				weeksYellow:setIcon("enemy", "black")
			end
			if musicTime >= 246447.402597402 and musicTime < 246472.402597402 then 
				--DoubleKillEvents(gonnakill)
			end
			if musicTime >= 246447.402597402 and musicTime < 246472.402597402 then 
				--OpponentTwo(readykill)
			end
			if musicTime >= 247470.12987013 and musicTime < 247495.12987013 then 
				--DoubleKillEvents(readykill)
			end
			if musicTime >= 282379.220779221 and musicTime < 282404.220779221 then 
				--DoubleKillEvents(kill)
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
