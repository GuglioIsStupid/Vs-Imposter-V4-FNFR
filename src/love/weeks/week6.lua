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

local dialogueBox, senpaiPortrait, bfPortrait
local spiritPortait, angrySenpaiBox, scaryDialogueBox

return {
	enter = function(self, from, songNum, songAppend)
		love.graphics.setDefaultFilter("nearest")
		pauseColor = {225, 106, 169}
		cam.sizeX, cam.sizeY = 0.78, 0.78
		camScale.x, camScale.y = 0.78, 0.78
		weeks:enter("pixel")
		stages["school"]:enter()
		week = 6
		
		song = songNum
		difficulty = songAppend

		fakeBoyfriend = love.filesystem.load("sprites/pixel/boyfriend-dead.lua")()

		if storyMode then
			doingDialogue = true
			dialogueBox = love.filesystem.load("sprites/week6/dialogueBox.lua")()
			senpaiPortrait = love.filesystem.load("sprites/week6/senpaiPortrait.lua")()
			bfPortrait = love.filesystem.load("sprites/week6/bfPortrait.lua")()

			dialogueBox:animate("anim", false)
			bfPortrait:animate("anim", false)
			senpaiPortrait:animate("anim", false)

			dialogueBox.sizeX, dialogueBox.sizeY = 6, 6
			senpaiPortrait.sizeX, senpaiPortrait.sizeY = 6, 6
			bfPortrait.sizeX, bfPortrait.sizeY = 6, 6

			dialogueBox.x, dialogueBox.y = 650, 375
			bfPortrait.x, bfPortrait.y = 650, 375
			senpaiPortrait.x, senpaiPortrait.y = 650, 375
			if song ~= 3 then
				dialogueMusic = love.audio.newSource("songs/misc/pixel/Lunchbox.ogg", "static")
				dialogueMusic:setLooping(true)

				dialogueMusic:play()
			else
				dialogueMusic = love.audio.newSource("songs/misc/pixel/LunchboxScary.ogg", "static")
				dialogueMusic:setLooping(true)
				dialogueMusic:play()
			end
		else
			cutscene = false
			doingDialogue = false
		end

		if song ~= 3 then
			weeks:setIcon("enemy", "senpai")
		end

		self:load()
	end,

	load = function(self)
		if storyMode then
			doingDialogue = true
		else
			doingDialogue = false
		end
		if song ~= 3 then
			stages["school"]:load()
		else
			stages["evilSchool"]:load()
		end
		if song == 3 then
			scaryDialogueBox = love.filesystem.load("sprites/week6/scaryDialogueBox.lua")()
			spiritPortait = graphics.newImage(love.graphics.newImage(graphics.imagePath("week6/spiritFaceForward")))

			if storyMode then
				dialogueMusic = love.audio.newSource("songs/misc/pixel/LunchboxScary.ogg", "static")
				dialogueMusic:setLooping(true)
				dialogueMusic:play()
			end

			spiritPortait.sizeX, spiritPortait.sizeY = 6, 6
			scaryDialogueBox.sizeX, scaryDialogueBox.sizeY = 6, 6

			spiritPortait.x, spiritPortait.y = 400, 250
			scaryDialogueBox.x, scaryDialogueBox.y = 650, 375

			setDialogueFromTxt("data/dialogue/spiritDialogue.txt")
			weeks:setIcon("enemy", "spirit")
		elseif song == 2 then
			angrySenpaiBox = love.filesystem.load("sprites/week6/angrySenpaiBox.lua")()
			angrySenpaiBox.x, angrySenpaiBox.y = 650, 375

			angrySenpaiBox.sizeX, angrySenpaiBox.sizeY = 6, 6

			setDialogueFromTxt("data/dialogue/rosesDialogue.txt")
			if storyMode then
				angry_text_box = love.audio.newSource("sounds/pixel/ANGRY_TEXT_BOX.ogg", "static")
				angry_text_box:play()
			end
		else
			setDialogueFromTxt("data/dialogue/senpaiDialogue.txt")
		end

		weeks:load()

		if song == 3 then
			inst = waveAudio:newSource("songs/week6/thorns/inst.ogg", "stream")
			voices = waveAudio:newSource("songs/week6/thorns/voices.ogg", "stream")
			stages["school"]:leave()
			stages["evilSchool"]:enter()
			enemy.colours = {255,60,110}
		elseif song == 2 then
			inst = waveAudio:newSource("songs/week6/roses/inst.ogg", "stream")
			voices = waveAudio:newSource("songs/week6/roses/voices.ogg", "stream")
		else
			inst = waveAudio:newSource("songs/week6/senpai/inst.ogg", "stream")
			voices = waveAudio:newSource("songs/week6/senpai/voices.ogg", "stream")
		end

		if storyMode then
			if song ~= 2 then
				dialogueMusic:play()
			end
		end
		self:initUI()
		if not storyMode then
			weeks:setupCountdown()
		end
	end,

	initUI = function(self)
		weeks:initUI("pixel")

		if song == 3 then
			weeks:generateNotes("songs/week6/thorns/" .. difficulty .. ".json")
		elseif song == 2 then
			weeks:generateNotes("songs/week6/roses/" .. difficulty .. ".json")
		else
			weeks:generateNotes("songs/week6/senpai/" .. difficulty .. ".json")
		end
	end,

	update = function(self, dt)
		weeks:update(dt)
		if song ~= 3 then
			stages["school"]:update(dt)
		else
			stages["evilSchool"]:update(dt)
		end

		if doingDialogue then
			weeks:doDialogue(dt)
			if song == 1 then
				senpaiPortrait:update(dt)
			elseif song == 2 then
				angrySenpaiBox:update(dt)
			elseif song == 3 then
				scaryDialogueBox:update(dt)
			end
			bfPortrait:update(dt)
			dialogueBox:update(dt)
			if input:pressed("confirm") then
				if not isDone then
					weeks:advanceDialogue()
				end
			end
			if isDone then
				if song ~= 2 then
					dialogueMusic:stop()
				end
				doingDialogue = false
				cutscene = false
				weeks:setupCountdown()
			end
		end

		if not doingDialogue and not cutscene and not (countingDown or graphics.isFading()) and not (inst:getDuration() > musicTime/1000) and not paused then
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

		if input:pressed("confirm") then
			love.audio.stop(inst, voices)
		end

		weeks:updateUI(dt)
	end,

	draw = function(self)
		love.graphics.setFont(font)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)
			love.graphics.scale(extraCamZoom.sizeX, extraCamZoom.sizeY)
			love.graphics.scale(cam.sizeX, cam.sizeY)

			if song ~= 3 then
				stages["school"]:draw()
			else
				stages["evilSchool"]:draw()
			end

			weeks:drawRating(0.9)
		love.graphics.pop()
		if doingDialogue then -- Doing this cuz i'm stupid as shit
			if characterSpeaking == "senpai" then
				dialogueBox:draw()
				senpaiPortrait:draw()
			end
			if characterSpeaking == "senpai angry" then
				angrySenpaiBox:draw()
			end
			if characterSpeaking == "boyfriend" then
				dialogueBox:draw()
				bfPortrait:draw()
			end
			if characterSpeaking == "spirit" then
				scaryDialogueBox:draw()
				spiritPortait:draw()
			end
			weeks:drawDialogue()
		end
		if not doingDialogue and not cutscene then
			weeks:drawTimeLeftBar()
			weeks:drawHealthBar()
			if not paused then
				weeks:drawUI()
			end
		end
	end,

	leave = function(self)
		stages["school"]:leave()
		stages["evilSchool"]:leave()
		pixel = false
		song = nil
		love.graphics.setDefaultFilter("linear")
		font = love.graphics.newFont("fonts/vcr.ttf", 24)
		weeks:leave()
	end
}
