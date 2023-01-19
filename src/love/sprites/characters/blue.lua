return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("characters/blue")), -- Do not add the .png extension
	{
		{x = 10, y = 10, width = 377, height = 321, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: blue down0000
		{x = 10, y = 10, width = 377, height = 321, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 2: blue down0001
		{x = 397, y = 10, width = 377, height = 321, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 3: blue down0002

		{x = 784, y = 10, width = 303, height = 344, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 4: blue idle0000
		{x = 784, y = 10, width = 303, height = 344, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 5: blue idle0001
		{x = 1097, y = 10, width = 303, height = 344, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 6: blue idle0002
		{x = 1097, y = 10, width = 303, height = 344, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 7: blue idle0003
		{x = 1410, y = 10, width = 303, height = 344, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 8: blue idle0004
		{x = 1410, y = 10, width = 303, height = 344, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 9: blue idle0005
		{x = 1723, y = 10, width = 303, height = 344, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 10: blue idle0006
		{x = 1723, y = 10, width = 303, height = 344, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 11: blue idle0007
		{x = 10, y = 364, width = 303, height = 344, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 12: blue idle0008
		{x = 10, y = 364, width = 303, height = 344, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 13: blue idle0009
		{x = 323, y = 364, width = 303, height = 344, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 14: blue idle0010
		{x = 323, y = 364, width = 303, height = 344, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 15: blue idle0011
		{x = 323, y = 364, width = 303, height = 344, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 16: blue idle0012
		{x = 323, y = 364, width = 303, height = 344, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 17: blue idle0013

		{x = 636, y = 364, width = 373, height = 342, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 18: blue left0000
		{x = 636, y = 364, width = 373, height = 342, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 19: blue left0001
		{x = 1019, y = 364, width = 373, height = 342, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 20: blue left0002

		{x = 1402, y = 364, width = 458, height = 342, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 21: blue right0000
		{x = 1402, y = 364, width = 458, height = 342, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 22: blue right0001
		{x = 10, y = 718, width = 458, height = 342, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 23: blue right0002

		{x = 478, y = 718, width = 340, height = 375, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 24: blue up0000
		{x = 478, y = 718, width = 340, height = 375, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 25: blue up0001
		{x = 828, y = 718, width = 340, height = 375, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0} -- 26: blue up0002
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["down"] = {start = 1, stop = 3, speed = 24, offsetX = -25, offsetY = -11},
		["idle"] = {start = 4, stop = 17, speed = 24, offsetX = 0, offsetY = 0},
		["left"] = {start = 18, stop = 20, speed = 24, offsetX = -16, offsetY = 0},
		["right"] = {start = 21, stop = 23, speed = 24, offsetX = -91, offsetY = -1},
		["up"] = {start = 24, stop = 26, speed = 24, offsetX = -27, offsetY = 16},
	},
	"idle", -- set to default animation
	false -- If the sprite repeats
)
