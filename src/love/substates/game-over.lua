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
		graphics.setFade(1)
		local boyfriend = fakeBoyfriend or boyfriend

		fromState = from

		if inst then inst:stop() end
		voices:stop()

		if not pauseRestart then

			audio.playSound(sounds["death"])
		end
		boyfriend:animate("dies", false)

		Timer.clear()

		Timer.tween(
			2,
			camera,
			{x = -boyfriend.x, y = -boyfriend.y, sizeX = camera.scaleX, sizeY = camera.scaleY},
			"out-quad",
			function()


				if gameOverMusic == "j" then
					inst = love.audio.newSource("music/SUSPICIOUS/Jorsawsee_Loop.ogg", "stream")
				elseif gameOverMusic == "pico" then
					inst = love.audio.newSource("music/SUSPICIOUS/deathPicoMusicLoop.ogg", "stream")
				elseif gameOverMusic == "henry" then
					inst = love.audio.newSource("music/SUSPICIOUS/deathHenryMusicLoop.ogg", "stream")
				else
					inst = love.audio.newSource("music/SUSPICIOUS/gameover_v4_LOOP.ogg", "stream")
				end



				inst:setLooping(true)
				inst:play()

				boyfriend:animate("dead", true)
			end
		)
	end,

	update = function(self, dt)
		local boyfriend = fakeBoyfriend or boyfriend

		if input:pressed("confirm") or pauseRestart then
			if inst then inst:stop() end -- In case inst is nil and "confirm" is pressed before game over music starts


			if gameOverMusic == "j" then
				inst = love.audio.newSource("music/SUSPICIOUS/Jorsawsee_End.ogg", "stream")
			elseif gameOverMusic == "pico" then
				inst = love.audio.newSource("music/SUSPICIOUS/deathPicoMusicEnd.ogg", "stream")
			elseif gameOverMusic == "henry" then
				inst = love.audio.newSource("music/SUSPICIOUS/deathHenryMusicEnd.ogg", "stream")
			else
				inst = love.audio.newSource("music/SUSPICIOUS/gameover_v4_End.ogg", "stream")
			end


			inst:play()

			Timer.clear()

			camera.x, camera.y = -boyfriend.x, -boyfriend.y

			boyfriend:animate("dead confirm", false)

			graphics.fadeOut(
				3,
				function()
					Gamestate.pop()
					pauseRestart = false

					fromState:load()
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

		boyfriend:update(dt)
	end,

	draw = function(self)
		local boyfriend = fakeBoyfriend or boyfriend

		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)

			love.graphics.push()
				love.graphics.scale(camera.sizeX, camera.sizeY)
				love.graphics.translate(camera.x, camera.y)
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
