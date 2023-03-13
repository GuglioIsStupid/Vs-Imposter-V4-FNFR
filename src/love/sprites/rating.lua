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
	graphics.imagePath("rating"),
	{
		{x = 0, y = 0, width = 430, height = 151, offsetX = 0, offsetY = 0, offsetWidth = 430, offsetHeight = 151}, -- 1: sick0000
		{x = 197, y = 152, width = 225, height = 107, offsetX = -4, offsetY = -36, offsetWidth = 430, offsetHeight = 151}, -- 2: good0000
		{x = 423, y = 152, width = 184, height = 123, offsetX = 0, offsetY = -28, offsetWidth = 430, offsetHeight = 151}, -- 3: bad0000
		{x = 0, y = 152, width = 196, height = 138, offsetX = 0, offsetY = -34, offsetWidth = 430, offsetHeight = 151} -- 4: shit0000
	},
	{
		["sick"] = {start = 1, stop = 1, speed = 0, offsetX = -19, offsetY = -4},
		["good"] = {start = 2, stop = 2, speed = 0, offsetX = -7, offsetY = -2},
		["bad"] = {start = 3, stop = 3, speed = 0, offsetX = -3, offsetY = -5},
		["shit"] = {start = 4, stop = 4, speed = 0, offsetX = -3, offsetY = -5}
	},
	"sick",
	false
)
