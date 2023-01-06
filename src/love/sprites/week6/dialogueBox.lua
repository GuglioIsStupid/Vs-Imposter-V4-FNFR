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
	love.graphics.newImage(graphics.imagePath("week6/dialogueBox-pixel")),
	-- Automatically generated from dialogueBox-pixel.xml
	{
		{x = 0, y = 0, width = 249, height = 144, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: Text Box Appear instance 10000
		{x = 259, y = 0, width = 249, height = 144, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 2: Text Box Appear instance 10001
		{x = 0, y = 154, width = 249, height = 144, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 3: Text Box Appear instance 10002
		{x = 259, y = 154, width = 249, height = 144, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 4: Text Box Appear instance 10003
		{x = 259, y = 154, width = 249, height = 144, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0} -- 5: Text Box Appear instance 10004
	},
	{
		["anim"] = {start = 1, stop = 5, speed = 24, offsetX = 0, offsetY = 0}
	},
	"anim",
	false
)
