return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("greyWeek/grayglowy")), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 581, height = 603, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: jar??0000
		{x = 586, y = 0, width = 581, height = 603, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 2: jar??0001
		{x = 1172, y = 0, width = 581, height = 603, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 3: jar??0002
		{x = 1758, y = 0, width = 581, height = 603, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 4: jar??0003
		{x = 2344, y = 0, width = 581, height = 603, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 5: jar??0004
		{x = 2930, y = 0, width = 581, height = 603, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 6: jar??0005
		{x = 0, y = 608, width = 581, height = 603, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 7: jar??0006
		{x = 586, y = 608, width = 581, height = 603, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 8: jar??0007
		{x = 1172, y = 608, width = 581, height = 603, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 9: jar??0008
		{x = 1758, y = 608, width = 581, height = 603, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 10: jar??0009
		{x = 2344, y = 608, width = 581, height = 603, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 11: jar??0010
		{x = 2930, y = 608, width = 581, height = 603, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 12: jar??0011
		{x = 0, y = 1216, width = 581, height = 603, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 13: jar??0012
		{x = 586, y = 1216, width = 581, height = 603, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 14: jar??0013
		{x = 1172, y = 1216, width = 581, height = 603, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 15: jar??0014
		{x = 1758, y = 1216, width = 581, height = 603, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 16: jar??0015
		{x = 2344, y = 1216, width = 581, height = 603, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 17: jar??0016
		{x = 2930, y = 1216, width = 581, height = 603, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 18: jar??0017
		{x = 0, y = 1824, width = 581, height = 603, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 19: jar??0018
		{x = 586, y = 1824, width = 581, height = 603, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 20: jar??0019
		{x = 1172, y = 1824, width = 581, height = 603, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 21: jar??0020
		{x = 1758, y = 1824, width = 581, height = 603, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 22: jar??0021
		{x = 2344, y = 1824, width = 581, height = 603, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 23: jar??0022
		{x = 2930, y = 1824, width = 581, height = 603, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 24: jar??0023
		{x = 0, y = 2432, width = 581, height = 603, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 25: jar??0024
		{x = 586, y = 2432, width = 581, height = 603, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 26: jar??0025
		{x = 1172, y = 2432, width = 581, height = 603, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 27: jar??0026
		{x = 1758, y = 2432, width = 581, height = 603, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0} -- 28: jar??0027
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["anim"] = {start = 1, stop = 28, speed = 24, offsetX = 0, offsetY = 0},
	},
	"anim", -- set to default animation
	true -- If the sprite repeats
)
