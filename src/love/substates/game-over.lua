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

local fromState

return {
	enter = function(self, from)
		local boyfriend = fakeBoyfriend or boyfriend
		died = true
		achievementProgress["death"] = achievementProgress["death"] + 1
		if achievementProgress["death"] >= 100 and gamejoltLogin["useGamejolt"] then
			gamejolt.giveTrophy(175140)
			trophies = gamejolt.fetchAllTrophies()
		end

		fromState = from

		if inst then inst:stop() end
		voices:stop()

		if not pauseRestart then   -- because i too lazy to make the restart work properly so i just make it use gameover code    it works but guglio gonna be mad at me lmao
			audio.playSound(sounds["death"])
			boyfriend:animate("dies", false)
		end
		Timer.clear()

		if week == 7 then
			tankSound = love.audio.newSource("sounds/week7/tankmanDeathSounds/" .. love.math.random(1, 25) .. ".mp3", "static")
			tankSound:setVolume(2.0)
			Timer.after(
				0.2,
				function()
					tankSound:play()
				end
			)
		end

		Timer.tween(
			2,
			cam,
			{x = -boyfriend.x, y = -boyfriend.y, sizeX = camScale.x, sizeY = camScale.y},
			"out-quad",
			function()
				if week == 6 then
					inst = love.audio.newSource("songs/misc/pixel/game-over.ogg", "stream")
				else
					inst = love.audio.newSource("songs/misc/game-over.ogg", "stream")
				end
				inst:setLooping(true)
				inst:play()

				boyfriend:animate("dead", true)
			end
		)
	end,

	update = function(self, dt)
		local boyfriend = fakeBoyfriend or boyfriend

		if not graphics.isFading() then
			if input:pressed("confirm") or instantRestart or pauseRestart then
				if inst then inst:stop() end -- In case inst is nil and "confirm" is pressed before game over music starts
				if pauseRestart then
					sounds.breakfast:stop()
				end

				if week == 6 then
					inst = love.audio.newSource("songs/misc/pixel/game-over-end.ogg", "stream")
				else
					inst = love.audio.newSource("songs/misc/game-over-end.ogg", "stream")
				end
				inst:play()
				Timer.clear()

				cam.x, cam.y = -boyfriend.x, -boyfriend.y
				if not pauseRestart then
					boyfriend:animate("dead confirm", false)
				end
				graphics.fadeOut(
					3,
					function()
						Gamestate.pop()

						fromState:load()
						
						if pauseRestart then
							pauseRestart = false
						end
					end
				)
			elseif input:pressed("gameBack") then
				status.setLoading(true)

				graphics.fadeOut(
					0.5,
					function()
						Gamestate.pop()

						Gamestate.switch(menu)

						status.setLoading(false)
					end
				)
			end
		end

		boyfriend:update(dt)
	end,

	draw = function(self)
		local boyfriend = fakeBoyfriend or boyfriend

		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)

			love.graphics.push()
				love.graphics.scale(cam.sizeX, cam.sizeY)
				love.graphics.translate(cam.x, cam.y)

				if not pauseRestart then
					if not pixel then
						boyfriend:draw()
					else
						boyfriend:udraw()
					end
				end
			love.graphics.pop()
		love.graphics.pop()
	end
}
