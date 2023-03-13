return graphics.newSprite(
	graphics.imagePath("greenWeek/corereactor"), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 1468, height = 1297, offsetX = 0, offsetY = 0, offsetWidth = 1468, offsetHeight = 1298}, -- 1: core0000
		{x = 1473, y = 0, width = 1468, height = 1260, offsetX = 0, offsetY = 0, offsetWidth = 1468, offsetHeight = 1298}, -- 2: core0001
		{x = 2946, y = 0, width = 1468, height = 1294, offsetX = 0, offsetY = 0, offsetWidth = 1468, offsetHeight = 1298}, -- 3: core0002
		{x = 4419, y = 0, width = 1468, height = 1291, offsetX = 0, offsetY = 0, offsetWidth = 1468, offsetHeight = 1298}, -- 4: core0003
		{x = 5892, y = 0, width = 1468, height = 1288, offsetX = 0, offsetY = 0, offsetWidth = 1468, offsetHeight = 1298}, -- 5: core0004
		{x = 0, y = 1302, width = 1468, height = 1286, offsetX = 0, offsetY = 0, offsetWidth = 1468, offsetHeight = 1298}, -- 6: core0005
		{x = 1473, y = 1302, width = 1468, height = 1248, offsetX = 0, offsetY = 0, offsetWidth = 1468, offsetHeight = 1298}, -- 7: core0006
		{x = 2946, y = 1302, width = 1468, height = 1282, offsetX = 0, offsetY = 0, offsetWidth = 1468, offsetHeight = 1298}, -- 8: core0007
		{x = 4419, y = 1302, width = 1468, height = 1279, offsetX = 0, offsetY = 0, offsetWidth = 1468, offsetHeight = 1298}, -- 9: core0008
		{x = 5892, y = 1302, width = 1468, height = 1277, offsetX = 0, offsetY = 0, offsetWidth = 1468, offsetHeight = 1298}, -- 10: core0009
		{x = 0, y = 2593, width = 1468, height = 1275, offsetX = 0, offsetY = 0, offsetWidth = 1468, offsetHeight = 1298}, -- 11: core0010
		{x = 1473, y = 2593, width = 1468, height = 1236, offsetX = 0, offsetY = 0, offsetWidth = 1468, offsetHeight = 1298}, -- 12: core0011
		{x = 2946, y = 2593, width = 1468, height = 1271, offsetX = 0, offsetY = 0, offsetWidth = 1468, offsetHeight = 1298}, -- 13: core0012
		{x = 4419, y = 1302, width = 1468, height = 1279, offsetX = 0, offsetY = 0, offsetWidth = 1468, offsetHeight = 1298}, -- 14: core0013
		{x = 4419, y = 2593, width = 1468, height = 1229, offsetX = 0, offsetY = 0, offsetWidth = 1468, offsetHeight = 1298}, -- 15: core0014
		{x = 5892, y = 2593, width = 1468, height = 1282, offsetX = 0, offsetY = 0, offsetWidth = 1468, offsetHeight = 1298}, -- 16: core0015
		{x = 0, y = 3880, width = 1468, height = 1268, offsetX = 0, offsetY = 0, offsetWidth = 1468, offsetHeight = 1298}, -- 17: core0016
		{x = 1473, y = 3880, width = 1468, height = 1270, offsetX = 0, offsetY = 0, offsetWidth = 1468, offsetHeight = 1298}, -- 18: core0017
		{x = 2946, y = 3880, width = 1468, height = 1272, offsetX = 0, offsetY = 0, offsetWidth = 1468, offsetHeight = 1298}, -- 19: core0018
		{x = 4419, y = 3880, width = 1468, height = 1239, offsetX = 0, offsetY = 0, offsetWidth = 1468, offsetHeight = 1298}, -- 20: core0019
		{x = 5892, y = 3880, width = 1468, height = 1278, offsetX = 0, offsetY = 0, offsetWidth = 1468, offsetHeight = 1298}, -- 21: core0020
		{x = 0, y = 5163, width = 1468, height = 1279, offsetX = 0, offsetY = 0, offsetWidth = 1468, offsetHeight = 1298}, -- 22: core0021
		{x = 1473, y = 5163, width = 1468, height = 1281, offsetX = 0, offsetY = 0, offsetWidth = 1468, offsetHeight = 1298}, -- 23: core0022
		{x = 2946, y = 5163, width = 1468, height = 1284, offsetX = 0, offsetY = 0, offsetWidth = 1468, offsetHeight = 1298}, -- 24: core0023
		{x = 4419, y = 2593, width = 1468, height = 1229, offsetX = 0, offsetY = 0, offsetWidth = 1468, offsetHeight = 1298}, -- 25: core0024
		{x = 4419, y = 5163, width = 1468, height = 1289, offsetX = 0, offsetY = 0, offsetWidth = 1468, offsetHeight = 1298}, -- 26: core0025
		{x = 0, y = 5163, width = 1468, height = 1279, offsetX = 0, offsetY = 0, offsetWidth = 1468, offsetHeight = 1298}, -- 27: core0026
		{x = 1473, y = 5163, width = 1468, height = 1281, offsetX = 0, offsetY = 0, offsetWidth = 1468, offsetHeight = 1298}, -- 28: core0027
		{x = 2946, y = 5163, width = 1468, height = 1284, offsetX = 0, offsetY = 0, offsetWidth = 1468, offsetHeight = 1298}, -- 29: core0028
		{x = 5892, y = 5163, width = 1468, height = 1297, offsetX = 0, offsetY = 0, offsetWidth = 1468, offsetHeight = 1298} -- 30: core0029
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["anim"] = {start = 1, stop = 30, speed = 24, offsetX = 0, offsetY = 0},
	},
	"anim", -- set to default animation
	false -- If the sprite repeats
)
