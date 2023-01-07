return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("impmenu/greenmenu")), -- Do not add the .png extension
	{
		{x = 10, y = 10, width = 1091, height = 1281, offsetX = 0, offsetY = 0, offsetWidth = 1092, offsetHeight = 1281}, -- 1: green idle0000
		{x = 1111, y = 10, width = 1092, height = 1279, offsetX = 0, offsetY = 0, offsetWidth = 1092, offsetHeight = 1281}, -- 2: green idle0001
		{x = 2213, y = 10, width = 1091, height = 1279, offsetX = -1, offsetY = 0, offsetWidth = 1092, offsetHeight = 1281}, -- 3: green idle0002
		{x = 3314, y = 10, width = 1090, height = 1281, offsetX = -1, offsetY = 0, offsetWidth = 1092, offsetHeight = 1281}, -- 4: green idle0003
		{x = 4414, y = 10, width = 1088, height = 1297, offsetX = 0, offsetY = -74, offsetWidth = 1095, offsetHeight = 1371}, -- 5: green select0000
		{x = 5512, y = 10, width = 1089, height = 1297, offsetX = 0, offsetY = -74, offsetWidth = 1095, offsetHeight = 1371}, -- 6: green select0001
		{x = 6611, y = 10, width = 1089, height = 1297, offsetX = 0, offsetY = -74, offsetWidth = 1095, offsetHeight = 1371}, -- 7: green select0002
		{x = 10, y = 1317, width = 1047, height = 1268, offsetX = -37, offsetY = -22, offsetWidth = 1095, offsetHeight = 1371}, -- 8: green select0003
		{x = 10, y = 1317, width = 1047, height = 1268, offsetX = -37, offsetY = -22, offsetWidth = 1095, offsetHeight = 1371}, -- 9: green select0004
		{x = 1067, y = 1317, width = 1046, height = 1270, offsetX = -38, offsetY = -21, offsetWidth = 1095, offsetHeight = 1371}, -- 10: green select0005
		{x = 1067, y = 1317, width = 1046, height = 1270, offsetX = -38, offsetY = -21, offsetWidth = 1095, offsetHeight = 1371}, -- 11: green select0006
		{x = 2123, y = 1317, width = 1050, height = 1256, offsetX = -45, offsetY = 0, offsetWidth = 1095, offsetHeight = 1371}, -- 12: green select0007
		{x = 2123, y = 1317, width = 1050, height = 1256, offsetX = -45, offsetY = 0, offsetWidth = 1095, offsetHeight = 1371}, -- 13: green select0008
		{x = 3183, y = 1317, width = 1050, height = 1255, offsetX = -45, offsetY = -1, offsetWidth = 1095, offsetHeight = 1371}, -- 14: green select0009
		{x = 3183, y = 1317, width = 1050, height = 1255, offsetX = -45, offsetY = -1, offsetWidth = 1095, offsetHeight = 1371}, -- 15: green select0010
		{x = 4243, y = 1317, width = 1050, height = 1256, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 16: green select0011
		{x = 4243, y = 1317, width = 1050, height = 1256, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 17: green select0012
		{x = 5303, y = 1317, width = 1050, height = 1255, offsetX = 0, offsetY = -1, offsetWidth = 1050, offsetHeight = 1256}, -- 18: green select0013
		{x = 5303, y = 1317, width = 1050, height = 1255, offsetX = 0, offsetY = -1, offsetWidth = 1050, offsetHeight = 1256}, -- 19: green select0014
		{x = 4243, y = 1317, width = 1050, height = 1256, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 20: green select0015
		{x = 4243, y = 1317, width = 1050, height = 1256, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 21: green select0016
		{x = 5303, y = 1317, width = 1050, height = 1255, offsetX = 0, offsetY = -1, offsetWidth = 1050, offsetHeight = 1256}, -- 22: green select0017
		{x = 5303, y = 1317, width = 1050, height = 1255, offsetX = 0, offsetY = -1, offsetWidth = 1050, offsetHeight = 1256} -- 23: green select0018
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
