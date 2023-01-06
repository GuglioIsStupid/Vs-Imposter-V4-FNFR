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
	images.rating,
	{
		{x = 0, y = 171, width = 366, height = 152, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: Sick Plus
		{x = 0, y = 0, width = 403, height = 152, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 2: Sick
		{x = 404, y = 0, width = 317, height = 126, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 3: Good
		{x = 722, y = 0, width = 261, height = 131, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 4: Bad
		{x = 984, y = 0, width = 285, height = 163, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 5: Shit
	},
	{
		["sickPlus"] = {start = 1, stop = 1, speed = 0, offsetX = 0, offsetY = 0},
		["sick"] = {start = 2, stop = 2, speed = 0, offsetX = -19, offsetY = -4},
		["good"] = {start = 3, stop = 3, speed = 0, offsetX = -7, offsetY = -2},
		["bad"] = {start = 4, stop = 4, speed = 0, offsetX = -3, offsetY = -5},
		["shit"] = {start = 5, stop = 5, speed = 0, offsetX = -3, offsetY = -5}
	},
	"sickPlus",
	false
)
