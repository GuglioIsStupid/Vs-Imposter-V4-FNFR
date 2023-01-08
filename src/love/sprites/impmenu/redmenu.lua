return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("impmenu/redmenu")), -- Do not add the .png extension
	{
		{x = 10, y = 10, width = 1258, height = 1495, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: red idle0000
		{x = 1278, y = 10, width = 1256, height = 1492, offsetX = -2, offsetY = 0, offsetWidth = 1258, offsetHeight = 1495}, -- 2: red idle0001
		{x = 2544, y = 10, width = 1256, height = 1492, offsetX = -2, offsetY = 0, offsetWidth = 1258, offsetHeight = 1495}, -- 3: red idle0002
		{x = 3810, y = 10, width = 1258, height = 1495, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 4: red idle0003
		{x = 5078, y = 10, width = 1260, height = 1453, offsetX = 0, offsetY = -80, offsetWidth = 1369, offsetHeight = 1533}, -- 5: red select0000
		{x = 6348, y = 10, width = 1258, height = 1451, offsetX = -2, offsetY = -80, offsetWidth = 1369, offsetHeight = 1533}, -- 6: red select0001
		{x = 10, y = 1515, width = 1258, height = 1451, offsetX = -2, offsetY = -80, offsetWidth = 1369, offsetHeight = 1533}, -- 7: red select0002
		{x = 1278, y = 1515, width = 1293, height = 1399, offsetX = -10, offsetY = -30, offsetWidth = 1369, offsetHeight = 1533}, -- 8: red select0003
		{x = 2581, y = 1515, width = 1293, height = 1397, offsetX = -10, offsetY = -30, offsetWidth = 1369, offsetHeight = 1533}, -- 9: red select0004
		{x = 2581, y = 1515, width = 1293, height = 1397, offsetX = -10, offsetY = -30, offsetWidth = 1369, offsetHeight = 1533}, -- 10: red select0005
		{x = 1278, y = 1515, width = 1293, height = 1399, offsetX = -10, offsetY = -30, offsetWidth = 1369, offsetHeight = 1533}, -- 11: red select0006
		{x = 3884, y = 1515, width = 1364, height = 1397, offsetX = -5, offsetY = 0, offsetWidth = 1369, offsetHeight = 1533}, -- 12: red select0007
		{x = 3884, y = 1515, width = 1364, height = 1397, offsetX = -5, offsetY = 0, offsetWidth = 1369, offsetHeight = 1533}, -- 13: red select0008
		{x = 5258, y = 1515, width = 1365, height = 1395, offsetX = -4, offsetY = 0, offsetWidth = 1369, offsetHeight = 1533}, -- 14: red select0009
		{x = 5258, y = 1515, width = 1365, height = 1395, offsetX = -4, offsetY = 0, offsetWidth = 1369, offsetHeight = 1533}, -- 15: red select0010
		{x = 3884, y = 1515, width = 1364, height = 1397, offsetX = -1, offsetY = 0, offsetWidth = 1369, offsetHeight = 1533}, -- 16: red select0011
		{x = 3884, y = 1515, width = 1364, height = 1397, offsetX = -1, offsetY = 0, offsetWidth = 1369, offsetHeight = 1533}, -- 17: red select0012
		{x = 6633, y = 1515, width = 1365, height = 1395, offsetX = 0, offsetY = 0, offsetWidth = 1365, offsetHeight = 1397}, -- 18: red select0013
		{x = 6633, y = 1515, width = 1365, height = 1395, offsetX = 0, offsetY = 0, offsetWidth = 1365, offsetHeight = 1397}, -- 19: red select0014
		{x = 3884, y = 1515, width = 1364, height = 1397, offsetX = -1, offsetY = 0, offsetWidth = 1369, offsetHeight = 1533}, -- 20: red select0015
		{x = 3884, y = 1515, width = 1364, height = 1397, offsetX = -1, offsetY = 0, offsetWidth = 1369, offsetHeight = 1533}, -- 21: red select0016
		{x = 6633, y = 1515, width = 1365, height = 1395, offsetX = 0, offsetY = 0, offsetWidth = 1365, offsetHeight = 1397}, -- 22: red select0017
		{x = 6633, y = 1515, width = 1365, height = 1395, offsetX = 0, offsetY = 0, offsetWidth = 1365, offsetHeight = 1397} -- 23: red select0018
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["idle"] = {start = 1, stop = 4, speed = 24, offsetX = 0, offsetY = 0},
		["select"] = {start = 5, stop = 23, speed = 24, offsetX = 0, offsetY = 0}
	},
	"idle", -- set to default animation
	true -- If the sprite repeats
)
