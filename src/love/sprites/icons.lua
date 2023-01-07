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
    images.icons,
	{
		{x = 0, y = 0, width = 150, height = 150, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: Boyfriend
		{x = 150, y = 0, width = 150, height = 150, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 2: Boyfriend Losing
		{x = 300, y = 0, width = 150, height = 150, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 3: Red
		{x = 450, y = 0, width = 150, height = 150, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 4: Red Losing
		{x = 600, y = 0, width = 150, height = 150, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 5: Green
		{x = 750, y = 0, width = 150, height = 150, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 6: Green Losing
		{x = 900, y = 0, width = 150, height = 150, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 7: Yellow
		{x = 1050, y = 0, width = 150, height = 150, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 8: Yellow Losing
		{x = 1200, y = 0, width = 150, height = 150, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 9: Black
		{x = 1350, y = 0, width = 150, height = 150, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 10: Black Losing
		{x = 0, y = 150, width = 150, height = 150, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 11: Maroon
		{x = 150, y = 150, width = 150, height = 150, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 12: Maroon Losing
		{x = 300, y = 150, width = 150, height = 150, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 13: Grey
		{x = 450, y = 150, width = 150, height = 150, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 14: Grey Losing
		{x = 600, y = 150, width = 150, height = 150, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 15: Pink
		{x = 750, y = 150, width = 150, height = 150, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 16: Pink
		{x = 900, y = 150, width = 150, height = 150, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 17: Balls
		{x = 1050, y = 150, width = 150, height = 150, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 18: Balls Losing
		{x = 1200, y = 150, width = 150, height = 150, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 19: fella
		{x = 1350, y = 150, width = 150, height = 150, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 20: fella losing
		{x = 0, y = 300, width = 150, height = 150, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 21: tomongus
		{x = 150, y = 300, width = 150, height = 150, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 22: tomongus losing
		{x = 300, y = 300, width = 150, height = 150, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 23: henry
		{x = 450, y = 300, width = 150, height = 150, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0} -- 24: henry losing

	},
	{
		["boyfriend"] = {start = 1, stop = 1, speed = 0, offsetX = 0, offsetY = 0},
		["boyfriend losing"] = {start = 2, stop = 2, speed = 0, offsetX = 0, offsetY = 0},
		["red"] = {start = 3, stop = 3, speed = 0, offsetX = 0, offsetY = 0},
		["red losing"] = {start = 4, stop = 4, speed = 0, offsetX = 0, offsetY = 0},
		["green"] = {start = 5, stop = 5, speed = 0, offsetX = 0, offsetY = 0},
		["green losing"] = {start = 6, stop = 6, speed = 0, offsetX = 0, offsetY = 0},
		["yellow"] = {start = 7, stop = 7, speed = 0, offsetX = 0, offsetY = 0},
		["yellow losing"] = {start = 8, stop = 8, speed = 0, offsetX = 0, offsetY = 0},
		["black"] = {start = 9, stop = 9, speed = 0, offsetX = 0, offsetY = 0},
		["black losing"] = {start = 10, stop = 10, speed = 0, offsetX = 0, offsetY = 0},
		["maroon"] = {start = 11, stop = 11, speed = 0, offsetX = 0, offsetY = 0},
		["maroon losing"] = {start = 12, stop = 12, speed = 0, offsetX = 0, offsetY = 0},
		["grey"] = {start = 13, stop = 13, speed = 0, offsetX = 0, offsetY = 0},
		["grey losing"] = {start = 14, stop = 14, speed = 0, offsetX = 0, offsetY = 0},
		["pink"] = {start = 15, stop = 15, speed = 0, offsetX = 0, offsetY = 0},
		["pink losing"] = {start = 16, stop = 16, speed = 0, offsetX = 0, offsetY = 0},
		["balls"] = {start = 17, stop = 17, speed = 0, offsetX = 0, offsetY = 0},
		["balls losing"] = {start = 18, stop = 18, speed = 0, offsetX = 0, offsetY = 0},
		["fella"] = {start = 19, stop = 19, speed = 0, offsetX = 0, offsetY = 0},
		["fella losing"] = {start = 20, stop = 20, speed = 0, offsetX = 0, offsetY = 0},
		["tomongus"] = {start = 21, stop = 21, speed = 0, offsetX = 0, offsetY = 0},
		["tomongus losing"] = {start = 22, stop = 22, speed = 0, offsetX = 0, offsetY = 0},
		["henry"] = {start = 23, stop = 23, speed = 0, offsetX = 0, offsetY = 0},
		["henry losing"] = {start = 24, stop = 24, speed = 0, offsetX = 0, offsetY = 0}
	},
	"boyfriend",
	false
)
