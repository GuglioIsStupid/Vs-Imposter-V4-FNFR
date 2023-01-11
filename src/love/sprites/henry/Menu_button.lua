return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("henry/henry/Menu_button")), -- Do not add the .png extension
	{
		{x = 13, y = 13, width = 174, height = 90, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: Menu Button0000
		{x = 200, y = 13, width = 174, height = 90, offsetX = -15, offsetY = -13, offsetWidth = 189, offsetHeight = 103}, -- 2: Menu Button Select0000
		{x = 13, y = 116, width = 180, height = 95, offsetX = -9, offsetY = -8, offsetWidth = 189, offsetHeight = 103}, -- 3: Menu Button Select0001
		{x = 206, y = 116, width = 185, height = 99, offsetX = -4, offsetY = -4, offsetWidth = 189, offsetHeight = 103}, -- 4: Menu Button Select0002
		{x = 13, y = 228, width = 187, height = 101, offsetX = -2, offsetY = -2, offsetWidth = 189, offsetHeight = 103}, -- 5: Menu Button Select0003
		{x = 213, y = 228, width = 189, height = 102, offsetX = 0, offsetY = -1, offsetWidth = 189, offsetHeight = 103}, -- 6: Menu Button Select0004
		{x = 13, y = 343, width = 189, height = 103, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 7: Menu Button Select0005
		{x = 215, y = 343, width = 189, height = 103, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 8: Menu Button Select0006
		{x = 215, y = 343, width = 189, height = 103, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 9: Menu Button Select0007
		{x = 215, y = 343, width = 189, height = 103, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 10: Menu Button Select0008
		{x = 215, y = 343, width = 189, height = 103, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 11: Menu Button Select0009
		{x = 215, y = 343, width = 189, height = 103, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 12: Menu Button Select0010
		{x = 215, y = 343, width = 189, height = 103, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 13: Menu Button Select0011
		{x = 215, y = 343, width = 189, height = 103, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 14: Menu Button Select0012
		{x = 215, y = 343, width = 189, height = 103, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 15: Menu Button Select0013
		{x = 215, y = 343, width = 189, height = 103, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 16: Menu Button Select0014
		{x = 215, y = 343, width = 189, height = 103, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 17: Menu Button Select0015
		{x = 215, y = 343, width = 189, height = 103, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 18: Menu Button Select0016
		{x = 215, y = 343, width = 189, height = 103, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 19: Menu Button Select0017
		{x = 215, y = 343, width = 189, height = 103, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 20: Menu Button Select0018
		{x = 215, y = 343, width = 189, height = 103, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 21: Menu Button Select0019
		{x = 215, y = 343, width = 189, height = 103, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 22: Menu Button Select0020
		{x = 215, y = 343, width = 189, height = 103, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 23: Menu Button Select0021
		{x = 215, y = 343, width = 189, height = 103, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 24: Menu Button Select0022
		{x = 215, y = 343, width = 189, height = 103, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 25: Menu Button Select0023
		{x = 215, y = 343, width = 189, height = 103, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 26: Menu Button Select0024
		{x = 215, y = 343, width = 189, height = 103, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 27: Menu Button Select0025
		{x = 215, y = 343, width = 189, height = 103, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0} -- 28: Menu Button Select0026
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["notSelect"] = {start = 1, stop = 1, speed = 24, offsetX = 0, offsetY = 0},
		["select"] = {start = 2, stop = 28, speed = 24, offsetX = 0, offsetY = 0},
	},
	"notSelect", -- set to default animation
	false -- If the sprite repeats
)
