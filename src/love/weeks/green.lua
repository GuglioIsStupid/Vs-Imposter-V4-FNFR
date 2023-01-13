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


		cutsceneTime, cutsceneTimeThres, oldcutsceneTimeThres = 0, 0, 0

		song = songNum
		difficulty = songAppend

		weeksGreen:setIcon("enemy", "daddy dearest")

		darkTween = {0}

		self:load()
	end,

	load = function(self)
		weeksGreen:load()
		if song == 4 then
			stages["miraReactor"]:leave()
			stages["miraFall"]:enter()
			stages["miraFall"]:load()
			inst = waveAudio:newSource("songs/ejected/Inst.ogg")
			voices = waveAudio:newSource("songs/ejected/Voices.ogg")
			self:initUI()
			weeksGreen:setupEjectCountdown()
		elseif song == 3 then
			stages["miraCaf"]:leave()
			stages["miraReactor"]:enter()
			stages["miraReactor"]:load()
			inst = waveAudio:newSource("songs/reactor/Inst.ogg", "stream")
			voices = waveAudio:newSource("songs/reactor/Voices.ogg", "stream")
			self:initUI()
			weeksGreen:setupCountdown()
		elseif song == 2 then
			stages["miraCaf"]:load()
			inst = waveAudio:newSource("songs/lights-down/Inst.ogg", "stream")
			voices = waveAudio:newSource("songs/lights-down/Voices.ogg", "stream")
			self:initUI()
			weeksGreen:setupCountdown()
		else
			stages["miraCaf"]:load()
			inst = waveAudio:newSource("songs/sussus-toogus/Inst.ogg", "stream")
			voices = waveAudio:newSource("songs/sussus-toogus/Voices.ogg", "stream")
			if not died and storyMode then
				inCutscene = true
				video = love.graphics.newVideo("videos/toogus.ogv")
				video:play()
				Timer.after(33, function()
					inCutscene = false
					video:release()
					weeksGreen:setupCountdown()
					
				end)
			end
			self:initUI()
		end

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


		if song == 2 then
			if musicTime >= 22588.2352941176 and musicTime < 22613.2352941176 then
				if lights1 then
					Timer.cancel(lights1)
				end
				lights1 = Timer.tween(0.1, darkTween, {[1] = 1}, "linear")
			end


			if musicTime >= 45176.4705882353 and musicTime < 45201.4705882353 then 
				if lights2 then
					Timer.cancel(lights2)
				end
				lights2 = Timer.tween(0.1, darkTween, {[1] = 0}, "linear")
			end


			if musicTime >= 56470.5882352941 and musicTime < 56495.5882352941 then 
				if lights3 then
					Timer.cancel(lights3)
				end
				lights3 = Timer.tween(0.1, darkTween, {[1] = 1}, "linear")
			end


			if musicTime >= 67764.7058823529 and musicTime < 67789.7058823529 then 
				if lights4 then
					Timer.cancel(lights4)
				end
				lights4 = Timer.tween(0.1, darkTween, {[1] = 0}, "linear")
			end


			if musicTime >= 69176.4705882352 and musicTime < 69201.4705882352 then 
				if lights5 then
					Timer.cancel(lights5)
				end
				lights5 = Timer.tween(0.1, darkTween, {[1] = 1}, "linear")
			end


			if musicTime >= 70588.2352941176 and musicTime < 70613.2352941176 then 
				if lights6 then
					Timer.cancel(lights6)
				end
				lights6 = Timer.tween(0.1, darkTween, {[1] = 0}, "linear")
			end


			if musicTime >= 70588.2352941176 and musicTime < 70613.2352941176 then 
				if lights7 then
					Timer.cancel(lights7)
				end
				lights7 = Timer.tween(0.1, darkTween, {[1] = 1}, "linear")
			end


			if musicTime >= 71999.9999999999 and musicTime < 72024.9999999999 then 
				if lights8 then
					Timer.cancel(lights8)
				end
				lights8 = Timer.tween(0.1, darkTween, {[1] = 0}, "linear")
			end

			
			if musicTime >= 73411.7647058823 and musicTime < 73436.7647058823 then 
				if lights9 then
					Timer.cancel(lights9)
				end
				lights9 = Timer.tween(0.1, darkTween, {[1] = 1}, "linear")
			end


			if musicTime >= 95999.9999999999 and musicTime < 96024.9999999999 then 
				if lights10 then
					Timer.cancel(lights10)
				end
				lights10 = Timer.tween(0.1, darkTween, {[1] = 0}, "linear")
			end


			if musicTime >= 97411.7647058822 and musicTime < 97436.7647058822 then 
				if lights11 then
					Timer.cancel(lights11)
				end
				lights11 = Timer.tween(0.1, darkTween, {[1] = 1}, "linear")
			end


			if musicTime >= 98823.5294117646 and musicTime < 98848.5294117646 then 
				if lights12 then
					Timer.cancel(lights12)
				end
				lights12 = Timer.tween(0.1, darkTween, {[1] = 0}, "linear")
			end


			if musicTime >= 100235.294117647 and musicTime < 100260.294117647 then 
				if lights13 then
					Timer.cancel(lights13)
				end
				lights13 = Timer.tween(0.1, darkTween, {[1] = 1}, "linear")
			end


			if musicTime >= 101647.058823529 and musicTime < 101672.058823529 then 
				if lights14 then
					Timer.cancel(lights14)
				end
				lights14 = Timer.tween(0.1, darkTween, {[1] = 0}, "linear")
			end


			if musicTime >= 103058.823529412 and musicTime < 103083.823529412 then 
				if lights15 then
					Timer.cancel(lights15)
				end
				lights15 = Timer.tween(0.1, darkTween, {[1] = 1}, "linear")
			end


			if musicTime >= 104470.588235294 and musicTime < 104495.588235294 then 
				if lights16 then
					Timer.cancel(lights16)
				end
				lights16 = Timer.tween(0.1, darkTween, {[1] = 0}, "linear")
			end


			if musicTime >= 104470.588235294 and musicTime < 104495.588235294 then 
				if lights17 then
					Timer.cancel(lights17)
				end
				lights17 = Timer.tween(0.1, darkTween, {[1] = 1}, "linear")
			end


			if musicTime >= 104470.588235294 and musicTime < 104495.588235294 then 
				if lights18 then
					Timer.cancel(lights18)
				end
				lights18 = Timer.tween(0.1, darkTween, {[1] = 0}, "linear")
			end


			if musicTime >= 104470.588235294 and musicTime < 104495.588235294 then 
				if lights19 then
					Timer.cancel(lights19)
				end
				lights19 = Timer.tween(0.1, darkTween, {[1] = 1}, "linear")
			end


			if musicTime >= 105882.352941176 and musicTime < 105907.352941176 then 
				if lights20 then
					Timer.cancel(lights20)
				end
				lights20 = Timer.tween(0.1, darkTween, {[1] = 0}, "linear")
			end


			if musicTime >= 105882.352941176 and musicTime < 105907.352941176 then 
				if lights21 then
					Timer.cancel(lights21)
				end
				lights21 = Timer.tween(0.1, darkTween, {[1] = 1}, "linear")
			end


			if musicTime >= 107294.117647059 and musicTime < 107319.117647059 then 
				if lights22 then
					Timer.cancel(lights22)
				end
				lights22 = Timer.tween(0.1, darkTween, {[1] = 0}, "linear")
			end


			if musicTime >= 127058.823529412 and musicTime < 127083.823529412 then 
				if lights23 then
					Timer.cancel(lights23)
				end
				lights23 = Timer.tween(0.1, darkTween, {[1] = 1}, "linear")
			end


			if musicTime >= 129882.352941176 and musicTime < 129907.352941176 then 
				if lights24 then
					Timer.cancel(lights24)
				end
				lights24 = Timer.tween(0.1, darkTween, {[1] = 0}, "linear")
			end


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


		if song == 4 then
			if not paused and not video:isPlaying() then	
				weeksGreen:drawTimeLeftBar()
				weeksGreen:drawHealthBar()
				weeksGreen:drawUI()
			end
		else
			if not paused then	
				weeksGreen:drawTimeLeftBar()
				weeksGreen:drawHealthBar()
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
