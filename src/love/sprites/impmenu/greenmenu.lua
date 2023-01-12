return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("impmenu/greenmenu")), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 865, height = 938, offsetX = 0, offsetY = 0, offsetWidth = 1092, offsetHeight = 1281}, -- 1: green idle0000
		{x = 866, y = 0, width = 867, height = 937, offsetX = 1, offsetY = 0, offsetWidth = 1092, offsetHeight = 1281}, -- 2: green idle0001
		{x = 1734, y = 0, width = 865, height = 937, offsetX = 0, offsetY = 0, offsetWidth = 1092, offsetHeight = 1281}, -- 3: green idle0002
		{x = 2600, y = 0, width = 865, height = 938, offsetX = 1, offsetY = 0, offsetWidth = 1092, offsetHeight = 1281}, -- 4: green idle0003
		{x = 0, y = 939, width = 864, height = 950, offsetX = 0, offsetY = 0, offsetWidth = 1095, offsetHeight = 1371}, -- 5: green select0000
		{x = 865, y = 938, width = 864, height = 950, offsetX = -1, offsetY = 0, offsetWidth = 1095, offsetHeight = 1371}, -- 6: green select0001
		{x = 1730, y = 938, width = 865, height = 950, offsetX = 0, offsetY = 0, offsetWidth = 1095, offsetHeight = 1371}, -- 7: green select0002
		{x = 2596, y = 939, width = 931, height = 929, offsetX = -27, offsetY = 21, offsetWidth = 1095, offsetHeight = 1371}, -- 8: green select0003
		{x = 2596, y = 939, width = 931, height = 929, offsetX = -27, offsetY = 21, offsetWidth = 1095, offsetHeight = 1371}, -- 9: green select0004
		{x = 0, y = 1890, width = 829, height = 930, offsetX = -28, offsetY = 21, offsetWidth = 1095, offsetHeight = 1371}, -- 10: green select0005
		{x = 0, y = 1890, width = 829, height = 930, offsetX = -28, offsetY = 21, offsetWidth = 1095, offsetHeight = 1371}, -- 11: green select0006
		{x = 830, y = 1889, width = 833, height = 919, offsetX = -27, offsetY = 62, offsetWidth = 1095, offsetHeight = 1371}, -- 12: green select0007
		{x = 830, y = 1889, width = 833, height = 919, offsetX = -27, offsetY = 62, offsetWidth = 1095, offsetHeight = 1371}, -- 13: green select0008
		{x = 1664, y = 1889, width = 833, height = 919, offsetX = -27, offsetY = 62, offsetWidth = 1095, offsetHeight = 1371}, -- 14: green select0009
		{x = 1664, y = 1889, width = 833, height = 919, offsetX = -27, offsetY = 62, offsetWidth = 1095, offsetHeight = 1371}, -- 15: green select0010
		{x = 2498, y = 1869, width = 834, height = 920, offsetX = -27, offsetY = 62, offsetWidth = 1095, offsetHeight = 1371}, -- 16: green select0011
		{x = 2498, y = 1869, width = 834, height = 920, offsetX = -27, offsetY = 62, offsetWidth = 1095, offsetHeight = 1371}, -- 17: green select0012
		{x = 0, y = 2821, width = 834, height = 919, offsetX = -27, offsetY = 62, offsetWidth = 1095, offsetHeight = 1371}, -- 18: green select0013
		{x = 0, y = 2821, width = 834, height = 919, offsetX = -27, offsetY = 62, offsetWidth = 1095, offsetHeight = 1371}, -- 19: green select0014
		{x = 1664, y = 1889, width = 833, height = 919, offsetX = -27, offsetY = 62, offsetWidth = 1095, offsetHeight = 1371}, -- 20: green select0015
		{x = 1664, y = 1889, width = 833, height = 919, offsetX = -27, offsetY = 62, offsetWidth = 1095, offsetHeight = 1371}, -- 21: green select0016
		{x = 2498, y = 1869, width = 834, height = 920, offsetX = -27, offsetY = 62, offsetWidth = 1095, offsetHeight = 1371}, -- 22: green select0017
		{x = 2498, y = 1869, width = 834, height = 920, offsetX = -27, offsetY = 62, offsetWidth = 1095, offsetHeight = 1371} -- 23: green select0018
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
