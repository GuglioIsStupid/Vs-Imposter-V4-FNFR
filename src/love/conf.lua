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

function love.conf(t)
	t.identity = "vanilla-engine" -- This is for the name of the folder found in %appdata% or .local
	t.version = "11.4" -- You do not need to edit this. This is just for love2d version
	--t.console = true -- uncomment this to use the console (To use print functions)

	t.window.title = "Friday Night Funkin' Vanilla Engine v1.0.0" -- Custom window Title
end
