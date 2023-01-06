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

local scaryIntro = false

return {
	enter = function(self, from, songNum, songAppend)
		pauseColor = {141, 184, 225}
		cam.sizeX, cam.sizeY = 0.7, 0.7
		camScale.x, camScale.y = 0.7, 0.7

		week = 5
		weeks:enter()
		stages["mall"]:enter()

		sounds.lightsOff = love.audio.newSource("sounds/week5/lights-off.ogg", "static")
		sounds.lightsOn = love.audio.newSource("sounds/week5/lights-on.ogg", "static")

		song = songNum
		difficulty = songAppend

		weeks:setIcon("enemy", "dearest duo")

		self:load()
	end,

	load = function(self)
		weeks:load()
		stages["mall"]:load()

		if song == 3 then
			enemy = Character.monsterchristmas(0, 0)
            enemy.x, enemy.y = -925, 100

			weeks:setIcon("enemy", "monster")

			inst = waveAudio:newSource("songs/week5/winter-horrorland/inst.ogg", "stream")
			voices = waveAudio:newSource("songs/week5/winter-horrorland/voices.ogg", "stream")
		elseif song == 2 then
			inst = waveAudio:newSource("songs/week5/eggnog/inst.ogg", "stream")
			voices = waveAudio:newSource("songs/week5/eggnog/voices.ogg", "stream")
		else
			inst = waveAudio:newSource("songs/week5/cocoa/inst.ogg", "stream")
			voices = waveAudio:newSource("songs/week5/cocoa/voices.ogg", "stream")
		end

		self:initUI()

		if scaryIntro then
			Timer.after(
				5,
				function()
					scaryIntro = false

					camTimer = Timer.tween(2, cam, {x = -boyfriend.x + 100, y = -boyfriend.y + 75, sizeX = 0.9, sizeY = 0.9}, "out-quad")

					weeks:setupCountdown()
				end
			)

			audio.playSound(sounds.lightsOn)
		else
			weeks:setupCountdown()
		end
	end,

	initUI = function(self)
		weeks:initUI()

		if song == 3 then
			weeks:generateNotes("songs/week5/winter-horrorland/" .. difficulty .. ".json")
			weeks:generateEventsOld("songs/week5/winter-horrorland/events.json")
		elseif song == 2 then
			weeks:generateNotes("songs/week5/eggnog/" .. difficulty .. ".json")
			weeks:generateEventsOld("songs/week5/eggnog/events.json")
		else
			weeks:generateNotes("songs/week5/cocoa/" .. difficulty .. ".json")
			weeks:generateEventsOld("songs/week5/cocoa/events.json")
		end
	end,

	update = function(self, dt)
		if not scaryIntro then
			weeks:update(dt)
			stages["mall"]:update(dt)

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
					if enemyIcon:getAnimName() == "dearest duo" then
						weeks:setIcon("enemy", "dearest duo losing")
					end
				else
					if enemyIcon:getAnimName() == "dearest duo losing" then
						weeks:setIcon("enemy", "dearest duo")
					end
				end
			end

			if not (scaryIntro or countingDown or graphics.isFading()) and not (inst:getDuration() > musicTime/1000) and not paused then
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

					-- Winter Horrorland setup
					if song == 3 then
						scaryIntro = true

						audio.playSound(sounds.lightsOff)

						graphics.setFade(0)

						Timer.after(3, function() self:load() end)
					else
						self:load()
					end
				else
					status.setLoading(true)

					graphics.fadeOut(
						0.5,
						function()
							if storyMode then
								Gamestate.switch(menuWeek)
							else
								Gamestate.switch(menuFreeplay)
							end

							status.setLoading(false)
						end
					)
				end
			end

			weeks:updateUI(dt)
			
		end
	end,

	draw = function(self)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)
			love.graphics.scale(extraCamZoom.sizeX, extraCamZoom.sizeY)
			love.graphics.scale(cam.sizeX, cam.sizeY)

			stages["mall"]:draw()
			weeks:drawRating(0.9)
		love.graphics.pop()
		
		if not scaryIntro then
			weeks:drawTimeLeftBar()
			weeks:drawHealthBar()
			weeks:drawUI() -- ITS RIGHT HERE DUMBASS
		end

		--where in fuck is drawui guglio can we PLEASE just rewrite week 5 PLEASE WEEK 5 IS PAINFUL LIKE THIS PLEASE LETS REWRITE IT
	end,

	leave = function()
		song = nil -- wait why does song nil here lmao
		
		stages["mall"]:leave()
		weeks:leave()
	end
}
