return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("characters/red")), -- Do not add the .png extension
	{
		{x = 10, y = 10, width = 450, height = 410, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: red down0000
		{x = 10, y = 10, width = 450, height = 410, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 2: red down0001
		{x = 470, y = 10, width = 450, height = 410, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 3: red down0002
		{x = 470, y = 10, width = 450, height = 410, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 4: red down0003
		{x = 930, y = 10, width = 450, height = 410, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 5: red down0004
		{x = 930, y = 10, width = 450, height = 410, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 6: red down0005
		{x = 1390, y = 10, width = 450, height = 410, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 7: red down0006

		{x = 1850, y = 10, width = 318, height = 357, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 8: red idle0000
		{x = 1850, y = 10, width = 318, height = 357, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 9: red idle0001
		{x = 2178, y = 10, width = 318, height = 357, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 10: red idle0002
		{x = 2178, y = 10, width = 318, height = 357, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 11: red idle0003
		{x = 2506, y = 10, width = 318, height = 357, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 12: red idle0004
		{x = 2506, y = 10, width = 318, height = 357, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 13: red idle0005
		{x = 2834, y = 10, width = 318, height = 357, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 14: red idle0006
		{x = 2834, y = 10, width = 318, height = 357, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 15: red idle0007
		{x = 3162, y = 10, width = 318, height = 357, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 16: red idle0008
		{x = 3162, y = 10, width = 318, height = 357, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 17: red idle0009
		{x = 3490, y = 10, width = 318, height = 357, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 18: red idle0010
		{x = 3490, y = 10, width = 318, height = 357, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 19: red idle0011
		{x = 3490, y = 10, width = 318, height = 357, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 20: red idle0012
		{x = 3490, y = 10, width = 318, height = 357, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 21: red idle0013

		{x = 10, y = 430, width = 510, height = 397, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 22: red left0000
		{x = 10, y = 430, width = 510, height = 397, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 23: red left0001
		{x = 530, y = 430, width = 510, height = 397, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 24: red left0002
		{x = 530, y = 430, width = 510, height = 397, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 25: red left0003
		{x = 1050, y = 430, width = 510, height = 397, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 26: red left0004
		{x = 1050, y = 430, width = 510, height = 397, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 27: red left0005
		{x = 1570, y = 430, width = 510, height = 397, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 28: red left0006

		{x = 2090, y = 430, width = 764, height = 379, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 29: red right0000
		{x = 2864, y = 430, width = 764, height = 379, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 30: red right0001
		{x = 10, y = 837, width = 764, height = 379, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 31: red right0002
		{x = 10, y = 837, width = 764, height = 379, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 32: red right0003
		{x = 784, y = 837, width = 764, height = 379, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 33: red right0004
		{x = 784, y = 837, width = 764, height = 379, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 34: red right0005
		{x = 1558, y = 837, width = 764, height = 379, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 35: red right0006

		{x = 2332, y = 837, width = 250, height = 383, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 36: red up0000
		{x = 2332, y = 837, width = 250, height = 383, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 37: red up0001
		{x = 2592, y = 837, width = 250, height = 383, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 38: red up0002
		{x = 2592, y = 837, width = 250, height = 383, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 39: red up0003
		{x = 2852, y = 837, width = 250, height = 383, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 40: red up0004
		{x = 2852, y = 837, width = 250, height = 383, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 41: red up0005
		{x = 3112, y = 837, width = 250, height = 383, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0} -- 42: red up0006
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["down"] = {start = 1, stop = 7, speed = 24, offsetX = 0, offsetY = 0},
		["idle"] = {start = 8, stop = 21, speed = 24, offsetX = 0, offsetY = 0},
		["left"] = {start = 22, stop = 28, speed = 24, offsetX = 0, offsetY = 0},
		["right"] = {start = 29, stop = 35, speed = 24, offsetX = 0, offsetY = 0},
		["up"] = {start = 36, stop = 42, speed = 24, offsetX = 0, offsetY = 0},
	},
	"idle", -- set to default animation
	false -- If the sprite repeats
)
