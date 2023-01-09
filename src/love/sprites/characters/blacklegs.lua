return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("characters/blacklegs")), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 318, height = 263, offsetX = -64, offsetY = 0, offsetWidth = 471, offsetHeight = 288}, -- 1: legs0000
		{x = 338, y = 0, width = 316, height = 257, offsetX = -63, offsetY = 0, offsetWidth = 471, offsetHeight = 288}, -- 2: legs0001
		{x = 674, y = 0, width = 317, height = 240, offsetX = -63, offsetY = 0, offsetWidth = 471, offsetHeight = 288}, -- 3: legs0002
		{x = 674, y = 0, width = 317, height = 240, offsetX = -63, offsetY = 0, offsetWidth = 471, offsetHeight = 288}, -- 4: legs0003
		{x = 1011, y = 0, width = 317, height = 266, offsetX = -63, offsetY = 0, offsetWidth = 471, offsetHeight = 288}, -- 5: legs0004
		{x = 1348, y = 0, width = 319, height = 288, offsetX = -62, offsetY = 0, offsetWidth = 471, offsetHeight = 288}, -- 6: legs0005
		{x = 1687, y = 0, width = 329, height = 288, offsetX = -62, offsetY = 0, offsetWidth = 471, offsetHeight = 288}, -- 7: legs0006
		{x = 0, y = 308, width = 399, height = 284, offsetX = -23, offsetY = 0, offsetWidth = 471, offsetHeight = 288}, -- 8: legs0007
		{x = 419, y = 308, width = 452, height = 251, offsetX = 0, offsetY = 0, offsetWidth = 471, offsetHeight = 288}, -- 9: legs0008
		{x = 891, y = 308, width = 462, height = 240, offsetX = -1, offsetY = 0, offsetWidth = 471, offsetHeight = 288}, -- 10: legs0009
		{x = 891, y = 308, width = 462, height = 240, offsetX = -1, offsetY = 0, offsetWidth = 471, offsetHeight = 288}, -- 11: legs0010
		{x = 1373, y = 308, width = 467, height = 238, offsetX = -4, offsetY = 0, offsetWidth = 471, offsetHeight = 288}, -- 12: legs0011
		{x = 0, y = 612, width = 455, height = 251, offsetX = -15, offsetY = 0, offsetWidth = 471, offsetHeight = 288}, -- 13: legs0012
		{x = 475, y = 612, width = 377, height = 271, offsetX = -41, offsetY = 0, offsetWidth = 471, offsetHeight = 288}, -- 14: legs0013
		{x = 872, y = 612, width = 327, height = 274, offsetX = -60, offsetY = 0, offsetWidth = 471, offsetHeight = 288}, -- 15: legs0014
		{x = 1219, y = 612, width = 323, height = 275, offsetX = -60, offsetY = 0, offsetWidth = 471, offsetHeight = 288} -- 16: legs0015
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["run"] = {start = 1, stop = 16, speed = 24, offsetX = 0, offsetY = 0},
	},
	"run", -- set to default animation
	false -- If the sprite repeats
)
