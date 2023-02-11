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

return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("i-hate-you/candle")),
	-- Automatically generated from Luigi_IHY_Background_Assets_Candle.xml
	{
		{x = 0, y = 0, width = 132, height = 189, offsetX = 0, offsetY = -2, offsetWidth = 133, offsetHeight = 191}, -- 1: fuegoaaaaaaaaa instancia 10000
		{x = 0, y = 0, width = 132, height = 189, offsetX = 0, offsetY = -2, offsetWidth = 133, offsetHeight = 191}, -- 2: fuegoaaaaaaaaa instancia 10001
		{x = 156, y = 0, width = 118, height = 187, offsetX = -13, offsetY = -4, offsetWidth = 133, offsetHeight = 191}, -- 3: fuegoaaaaaaaaa instancia 10002
		{x = 156, y = 0, width = 118, height = 187, offsetX = -13, offsetY = -4, offsetWidth = 133, offsetHeight = 191}, -- 4: fuegoaaaaaaaaa instancia 10003
		{x = 298, y = 0, width = 118, height = 191, offsetX = -15, offsetY = 0, offsetWidth = 133, offsetHeight = 191}, -- 5: fuegoaaaaaaaaa instancia 10004
		{x = 298, y = 0, width = 118, height = 191, offsetX = -15, offsetY = 0, offsetWidth = 133, offsetHeight = 191}, -- 6: fuegoaaaaaaaaa instancia 10005
		{x = 0, y = 215, width = 127, height = 190, offsetX = -4, offsetY = -1, offsetWidth = 133, offsetHeight = 191}, -- 7: fuegoaaaaaaaaa instancia 10006
		{x = 0, y = 215, width = 127, height = 190, offsetX = -4, offsetY = -1, offsetWidth = 133, offsetHeight = 191} -- 8: fuegoaaaaaaaaa instancia 10007
	},
	{
		["anim"] = {start = 1, stop = 8, speed = 24, offsetX = 0, offsetY = 0}
	},
	"anim",
	false
)
