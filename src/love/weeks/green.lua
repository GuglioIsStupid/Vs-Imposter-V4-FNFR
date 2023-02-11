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

local cutsceneTime, cutsceneTimeThres, oldcutsceneTimeThres

return {
	enter = function(self, from, songNum, songAppend)
		pauseColor = {129, 100, 223}
		weeksGreen:enter()
		stages["miraCaf"]:enter()

		week = 1
		weekString = "green"



		cutsceneTime, cutsceneTimeThres, oldcutsceneTimeThres = 0, 0, 0

		song = songNum
		difficulty = songAppend

		enemyIcon:animate("green", false)

		darkTween = {0}

		self:load()
	end,

	load = function(self)
		if song == 4 then
			stages["miraReactor"]:leave()
			stages["miraFall"]:enter()
			stages["miraFall"]:load()
			inst = love.audio.newSource("songs/ejected/Inst.ogg", "stream")
			voices = love.audio.newSource("songs/ejected/Voices.ogg", "stream")
			self:initUI()
			weeksGreen:setupEjectCountdown()
		elseif song == 3 then
			stages["miraCaf"]:leave()
			stages["miraReactor"]:enter()
			stages["miraReactor"]:load()
			inst = love.audio.newSource("songs/reactor/Inst.ogg", "stream")
			voices = love.audio.newSource("songs/reactor/Voices.ogg", "stream")
			self:initUI()
			weeksGreen:setupCountdown()
		elseif song == 2 then
			stages["miraCaf"]:load()
			inst = love.audio.newSource("songs/lights-down/Inst.ogg", "stream")
			voices = love.audio.newSource("songs/lights-down/Voices.ogg", "stream")
			self:initUI()
			weeksGreen:setupCountdown()
		else
			stages["miraCaf"]:load()
			inst = love.audio.newSource("songs/sussus-toogus/Inst.ogg", "stream")
			voices = love.audio.newSource("songs/sussus-toogus/Voices.ogg", "stream")
			if not died and storyMode then
				inCutscene = true
				video = cutscene.video("videos/toogus.ogv")
				video:play()
				Timer.after(33, function()
					inCutscene = false
					video:destroy()
					weeksGreen:setupCountdown()
				end)
			end
			self:initUI()
		end
		weeksGreen:load()
	end,

	initUI = function(self)
		weeksGreen:initUI()
		if song == 4 then
			weeksGreen:generateNotes("songs/ejected/ejected-hard.json")
		elseif song == 3 then
			weeksGreen:generateNotes("songs/reactor/reactor-hard.json")
		elseif song == 2 then
			weeksGreen:generateNotes("songs/lights-down/lights-down-hard.json")
			weeksGreen:generateEvents("songs/lights-down/events.json")
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

		if health >= 80 then
			if enemyIcon:getAnimName() == "green" then
				enemyIcon:animate("green losing", false)
			end
		else
			if enemyIcon:getAnimName() == "green losing" then
				enemyIcon:animate("green", false)
			end
		end

		if not (countingDown or graphics.isFading()) and not (inst:isPlaying() and voices:isPlaying()) and not paused and not inCutscene then
			if storyMode and song < 4 then
				campaignScore = campaignScore + score
				song = song + 1

				self:load()
			else
				campaignScore = campaignScore + score
				status.setLoading(true)

				graphics.fadeOut(
					0.5,
					function()
						Gamestate.switch(beansCounter)

						status.setLoading(false)
					end
				)
			end
		end


		if song == 2 then

			if musicTime >= 141176.470588235 and musicTime < 141201.470588235 then 
				--LightsonEnding()
			end


			if musicTime >= 144000 and musicTime < 144025 then 
				--LightsDownOFF()
			end

		end

		weeksGreen:updateUI(dt)
	end,

	draw = function(self)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)
			love.graphics.scale(camera.esizeX, camera.esizeY)
			love.graphics.scale(camera.sizeX, camera.sizeY)
			if song == 4 then
				stages["miraFall"]:draw()
			elseif song == 3 then
				stages["miraReactor"]:draw()
			else
				stages["miraCaf"]:draw()
			end
			weeksGreen:drawRating(0.9)
		love.graphics.pop()


		if song == 4 then
			if not paused and not video:isPlaying() then	
				weeksGreen:drawUI()
			end
		else
			if not paused then	
				weeksGreen:drawUI()
			end
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
