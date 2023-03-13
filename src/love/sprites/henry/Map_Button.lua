return graphics.newSprite(
	graphics.imagePath("henry/henry/Map_Button"), -- Do not add the .png extension
	{
		{x = 13, y = 13, width = 272, height = 157, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: Map Button0000
		{x = 298, y = 13, width = 272, height = 157, offsetX = -28, offsetY = -19, offsetWidth = 300, offsetHeight = 177}, -- 2: Map Button Select0000
		{x = 583, y = 13, width = 283, height = 164, offsetX = -17, offsetY = -12, offsetWidth = 300, offsetHeight = 177}, -- 3: Map Button Select0001
		{x = 13, y = 190, width = 291, height = 171, offsetX = -9, offsetY = -6, offsetWidth = 300, offsetHeight = 177}, -- 4: Map Button Select0002
		{x = 317, y = 190, width = 295, height = 174, offsetX = -5, offsetY = -3, offsetWidth = 300, offsetHeight = 177}, -- 5: Map Button Select0003
		{x = 625, y = 190, width = 298, height = 176, offsetX = -2, offsetY = -1, offsetWidth = 300, offsetHeight = 177}, -- 6: Map Button Select0004
		{x = 13, y = 379, width = 299, height = 176, offsetX = -1, offsetY = -1, offsetWidth = 300, offsetHeight = 177}, -- 7: Map Button Select0005
		{x = 325, y = 379, width = 299, height = 177, offsetX = -1, offsetY = 0, offsetWidth = 300, offsetHeight = 177}, -- 8: Map Button Select0006
		{x = 637, y = 379, width = 300, height = 177, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 9: Map Button Select0007
		{x = 637, y = 379, width = 300, height = 177, offsetX = -1, offsetY = 0, offsetWidth = 300, offsetHeight = 177}, -- 10: Map Button Select0008
		{x = 637, y = 379, width = 300, height = 177, offsetX = -1, offsetY = 0, offsetWidth = 300, offsetHeight = 177}, -- 11: Map Button Select0009
		{x = 637, y = 379, width = 300, height = 177, offsetX = -1, offsetY = 0, offsetWidth = 300, offsetHeight = 177}, -- 12: Map Button Select0010
		{x = 637, y = 379, width = 300, height = 177, offsetX = -1, offsetY = 0, offsetWidth = 300, offsetHeight = 177}, -- 13: Map Button Select0011
		{x = 637, y = 379, width = 300, height = 177, offsetX = -1, offsetY = 0, offsetWidth = 300, offsetHeight = 177}, -- 14: Map Button Select0012
		{x = 637, y = 379, width = 300, height = 177, offsetX = -1, offsetY = 0, offsetWidth = 300, offsetHeight = 177}, -- 15: Map Button Select0013
		{x = 637, y = 379, width = 300, height = 177, offsetX = -1, offsetY = 0, offsetWidth = 300, offsetHeight = 177}, -- 16: Map Button Select0014
		{x = 637, y = 379, width = 300, height = 177, offsetX = -1, offsetY = 0, offsetWidth = 300, offsetHeight = 177}, -- 17: Map Button Select0015
		{x = 637, y = 379, width = 300, height = 177, offsetX = -1, offsetY = 0, offsetWidth = 300, offsetHeight = 177}, -- 18: Map Button Select0016
		{x = 637, y = 379, width = 300, height = 177, offsetX = -1, offsetY = 0, offsetWidth = 300, offsetHeight = 177}, -- 19: Map Button Select0017
		{x = 637, y = 379, width = 300, height = 177, offsetX = -1, offsetY = 0, offsetWidth = 300, offsetHeight = 177}, -- 20: Map Button Select0018
		{x = 637, y = 379, width = 300, height = 177, offsetX = -1, offsetY = 0, offsetWidth = 300, offsetHeight = 177}, -- 21: Map Button Select0019
		{x = 637, y = 379, width = 300, height = 177, offsetX = -1, offsetY = 0, offsetWidth = 300, offsetHeight = 177}, -- 22: Map Button Select0020
		{x = 637, y = 379, width = 300, height = 177, offsetX = -1, offsetY = 0, offsetWidth = 300, offsetHeight = 177}, -- 23: Map Button Select0021
		{x = 637, y = 379, width = 300, height = 177, offsetX = -1, offsetY = 0, offsetWidth = 300, offsetHeight = 177}, -- 24: Map Button Select0022
		{x = 637, y = 379, width = 300, height = 177, offsetX = -1, offsetY = 0, offsetWidth = 300, offsetHeight = 177}, -- 25: Map Button Select0023
		{x = 637, y = 379, width = 300, height = 177, offsetX = -1, offsetY = 0, offsetWidth = 300, offsetHeight = 177}, -- 26: Map Button Select0024
		{x = 637, y = 379, width = 300, height = 177, offsetX = -1, offsetY = 0, offsetWidth = 300, offsetHeight = 177}, -- 27: Map Button Select0025
		{x = 637, y = 379, width = 300, height = 177, offsetX = -1, offsetY = 0, offsetWidth = 300, offsetHeight = 177}, -- 28: Map Button Select0026
		{x = 637, y = 379, width = 300, height = 177, offsetX = -1, offsetY = 0, offsetWidth = 300, offsetHeight = 177}, -- 29: Map Button Select0027
		{x = 637, y = 379, width = 300, height = 177, offsetX = -1, offsetY = 0, offsetWidth = 300, offsetHeight = 177}, -- 30: Map Button Select0028
		{x = 637, y = 379, width = 300, height = 177, offsetX = -1, offsetY = 0, offsetWidth = 300, offsetHeight = 177}, -- 31: Map Button Select0029
		{x = 637, y = 379, width = 300, height = 177, offsetX = -1, offsetY = 0, offsetWidth = 300, offsetHeight = 177}, -- 32: Map Button Select0030
		{x = 637, y = 379, width = 300, height = 177, offsetX = -1, offsetY = 0, offsetWidth = 300, offsetHeight = 177}, -- 33: Map Button Select0031
		{x = 637, y = 379, width = 300, height = 177, offsetX = -1, offsetY = 0, offsetWidth = 300, offsetHeight = 177} -- 34: Map Button Select0032
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["notSelect"] = {start = 1, stop = 1, speed = 24, offsetX = 0, offsetY = 0},
		["select"] = {start = 2, stop = 34, speed = 24, offsetX = 0, offsetY = 0},
	},
	"notSelect", -- set to default animation
	false -- If the sprite repeats
)
