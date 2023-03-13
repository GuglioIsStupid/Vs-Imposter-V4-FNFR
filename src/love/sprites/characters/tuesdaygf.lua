return graphics.newSprite(
	graphics.imagePath("characters/tuesdaygf"), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 636, height = 606, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: idle0000
		{x = 0, y = 0, width = 636, height = 606, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 2: idle0001
		{x = 636, y = 0, width = 636, height = 606, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 3: idle0002
		{x = 1272, y = 0, width = 636, height = 606, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 4: idle0003
		{x = 1908, y = 0, width = 636, height = 606, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 5: idle0004
		{x = 2544, y = 0, width = 636, height = 606, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 6: idle0005
		{x = 3180, y = 0, width = 636, height = 606, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 7: idle0006
		{x = 0, y = 606, width = 636, height = 606, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 8: idle0007
		{x = 0, y = 606, width = 636, height = 606, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 9: idle0008
		{x = 0, y = 606, width = 636, height = 606, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 10: idle0009
		{x = 636, y = 606, width = 636, height = 606, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 11: idle0010
		{x = 636, y = 606, width = 636, height = 606, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 12: idle0011
		{x = 636, y = 606, width = 636, height = 606, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 13: idle0012
		{x = 1272, y = 606, width = 636, height = 606, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 14: idle0013
		{x = 1272, y = 606, width = 636, height = 606, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 15: idle0014
		{x = 1908, y = 606, width = 636, height = 606, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 16: idle0015
		{x = 1908, y = 606, width = 636, height = 606, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 17: idle0016
		{x = 2544, y = 606, width = 636, height = 606, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 18: idle0017
		{x = 3180, y = 606, width = 636, height = 606, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 19: idle0018
		{x = 0, y = 1212, width = 636, height = 606, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 20: idle0019
		{x = 636, y = 1212, width = 636, height = 606, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 21: idle0020
		{x = 1272, y = 1212, width = 636, height = 606, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 22: idle0021
		{x = 1908, y = 1212, width = 636, height = 606, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 23: idle0022
		{x = 1908, y = 1212, width = 636, height = 606, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 24: idle0023
		{x = 1908, y = 1212, width = 636, height = 606, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 25: idle0024
		{x = 2544, y = 1212, width = 636, height = 606, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 26: idle0025
		{x = 2544, y = 1212, width = 636, height = 606, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 27: idle0026
		{x = 2544, y = 1212, width = 636, height = 606, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 28: idle0027
		{x = 3180, y = 1212, width = 636, height = 606, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 29: idle0028
		{x = 3180, y = 1212, width = 636, height = 606, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0} -- 30: idle0029
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["idle"] = {start = 1, stop = 30, speed = 24, offsetX = 0, offsetY = 0},
	},
	"idle", -- set to default animation
	false -- If the sprite repeats
)
