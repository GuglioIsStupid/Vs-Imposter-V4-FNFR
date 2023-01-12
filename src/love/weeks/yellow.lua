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

		thefunnyjudgmentsgoleftabit = false
	end,

	load = function(self)
		weeksYellow:load()
		stages["stage"]:load()

		if song == 5 then
			stages["blackChase"]:leave()
			stages["cargo"]:enter()                                                                                    -- i wanna fucking quit
			inst = waveAudio:newSource("songs/double-kill/Inst.ogg", "stream")
			voices = waveAudio:newSource("songs/double-kill/Voices.ogg", "stream")
			thefunnyjudgmentsgoleftabit = false

		elseif song == 4 then
			stages["yellowAirship"]:leave()
			stages["blackChase"]:enter()
			inst = waveAudio:newSource("songs/danger/Inst.ogg", "stream")
			voices = waveAudio:newSource("songs/danger/Voices.ogg", "stream")
			thefunnyjudgmentsgoleftabit = true
		elseif song == 3 then
			inst = waveAudio:newSource("songs/oversight/Inst.ogg", "stream")
			voices = waveAudio:newSource("songs/oversight/Voices.ogg", "stream")
		elseif song == 2 then
			inst = waveAudio:newSource("songs/dlow/Inst.ogg", "stream")
			voices = waveAudio:newSource("songs/dlow/Voices.ogg", "stream")
		elseif song == 50 then
			inst = "https://www.youtube.com/watch?v=p3wVSfHumRA"
			voices = inst
		else
			inst = waveAudio:newSource("songs/mando/Inst.ogg", "stream")
			voices = waveAudio:newSource("songs/mando/Voices.ogg", "stream")
		end

		self:initUI()

		weeksYellow:setupCountdown()
	end,

	initUI = function(self)
		weeksYellow:initUI()

		if song == 5 then
			weeksYellow:generateNotes("songs/double-kill/double-kill-hard.json")
			weeksYellow:generateEventsOld("songs/double-kill/events.json")
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
		if song == 5 then
			stages["cargo"]:update(dt)
		elseif song == 4 then
			stages["blackChase"]:update(dt)
		else
			stages["yellowAirship"]:update(dt)
		end

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

		if song == 4 then
			if musicTime >= 52000 and musicTime < 52025 then 
				stageImages[9]:animate("anim", false)
				enemy:animate("scream", false)
				ohnoHeAngy = true
			end
			if musicTime >= 54666.6666666667 and musicTime < 54691.6666666667 then
				if gfTween then
					Timer.cancel(gfTween)
				end
				gfTween = Timer.tween(4.5, girlfriend, {x = -2500}, "in-quad")
			end
		end
			
		weeksYellow:updateUI(dt)
	end,

	draw = function(self)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)
			love.graphics.scale(extraCamZoom.sizeX, extraCamZoom.sizeY)
			love.graphics.scale(cam.sizeX, cam.sizeY)

			if song == 5 then
				stages["cargo"]:draw()
			elseif song == 4 then
				stages["blackChase"]:draw()
			else
				stages["yellowAirship"]:draw()
			end
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
