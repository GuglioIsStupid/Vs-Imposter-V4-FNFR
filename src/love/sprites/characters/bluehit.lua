return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("characters/bluehit")), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 341, height = 302, offsetX = 0, offsetY = -13, offsetWidth = 341, offsetHeight = 316}, -- 1: hit down0000
		{x = 0, y = 0, width = 341, height = 302, offsetX = 0, offsetY = -13, offsetWidth = 341, offsetHeight = 316}, -- 2: hit down0001
		{x = 346, y = 0, width = 329, height = 316, offsetX = 0, offsetY = 0, offsetWidth = 341, offsetHeight = 316}, -- 3: hit down0002

		{x = 680, y = 0, width = 302, height = 312, offsetX = 0, offsetY = -32, offsetWidth = 303, offsetHeight = 344}, -- 4: hit idle0000
		{x = 680, y = 0, width = 302, height = 312, offsetX = 0, offsetY = -32, offsetWidth = 303, offsetHeight = 344}, -- 5: hit idle0001
		{x = 987, y = 0, width = 299, height = 316, offsetX = -4, offsetY = -28, offsetWidth = 303, offsetHeight = 344}, -- 6: hit idle0002
		{x = 987, y = 0, width = 299, height = 316, offsetX = -4, offsetY = -28, offsetWidth = 303, offsetHeight = 344}, -- 7: hit idle0003
		{x = 1291, y = 0, width = 287, height = 326, offsetX = -5, offsetY = -18, offsetWidth = 303, offsetHeight = 344}, -- 8: hit idle0004
		{x = 1291, y = 0, width = 287, height = 326, offsetX = -5, offsetY = -18, offsetWidth = 303, offsetHeight = 344}, -- 9: hit idle0005
		{x = 1583, y = 0, width = 275, height = 341, offsetX = -1, offsetY = -2, offsetWidth = 303, offsetHeight = 344}, -- 10: hit idle0006
		{x = 1583, y = 0, width = 275, height = 341, offsetX = -1, offsetY = -2, offsetWidth = 303, offsetHeight = 344}, -- 11: hit idle0007
		{x = 0, y = 346, width = 272, height = 344, offsetX = -1, offsetY = 0, offsetWidth = 303, offsetHeight = 344}, -- 12: hit idle0008
		{x = 0, y = 346, width = 272, height = 344, offsetX = -1, offsetY = 0, offsetWidth = 303, offsetHeight = 344}, -- 13: hit idle0009
		{x = 277, y = 346, width = 270, height = 343, offsetX = -1, offsetY = 0, offsetWidth = 303, offsetHeight = 344}, -- 14: hit idle0010
		{x = 277, y = 346, width = 270, height = 343, offsetX = -1, offsetY = 0, offsetWidth = 303, offsetHeight = 344}, -- 15: hit idle0011
		{x = 277, y = 346, width = 270, height = 343, offsetX = -1, offsetY = 0, offsetWidth = 303, offsetHeight = 344}, -- 16: hit idle0012
		{x = 277, y = 346, width = 270, height = 343, offsetX = -1, offsetY = 0, offsetWidth = 303, offsetHeight = 344}, -- 17: hit idle0013

		{x = 552, y = 346, width = 209, height = 406, offsetX = -60, offsetY = -58, offsetWidth = 287, offsetHeight = 464}, -- 18: hit left0000
		{x = 766, y = 346, width = 240, height = 432, offsetX = -29, offsetY = -32, offsetWidth = 287, offsetHeight = 464}, -- 19: hit left0001
		{x = 1011, y = 346, width = 275, height = 463, offsetX = -5, offsetY = 0, offsetWidth = 287, offsetHeight = 464}, -- 20: hit left0002
		{x = 1011, y = 346, width = 275, height = 463, offsetX = -5, offsetY = 0, offsetWidth = 287, offsetHeight = 464}, -- 21: hit left0003
		{x = 1291, y = 346, width = 278, height = 462, offsetX = 0, offsetY = -1, offsetWidth = 287, offsetHeight = 464}, -- 22: hit left0004
		{x = 1291, y = 346, width = 278, height = 462, offsetX = 0, offsetY = -1, offsetWidth = 287, offsetHeight = 464}, -- 23: hit left0005
		{x = 1574, y = 346, width = 287, height = 438, offsetX = 0, offsetY = -25, offsetWidth = 287, offsetHeight = 464}, -- 24: hit left0006
		{x = 1574, y = 346, width = 287, height = 438, offsetX = 0, offsetY = -25, offsetWidth = 287, offsetHeight = 464}, -- 25: hit left0007
		{x = 0, y = 814, width = 256, height = 367, offsetX = -22, offsetY = -96, offsetWidth = 287, offsetHeight = 464}, -- 26: hit left0008

		{x = 261, y = 814, width = 248, height = 352, offsetX = -8, offsetY = 0, offsetWidth = 256, offsetHeight = 352}, -- 27: hit right0000
		{x = 261, y = 814, width = 248, height = 352, offsetX = -8, offsetY = 0, offsetWidth = 256, offsetHeight = 352}, -- 28: hit right0001
		{x = 514, y = 814, width = 246, height = 352, offsetX = 0, offsetY = 0, offsetWidth = 256, offsetHeight = 352}, -- 29: hit right0002

		{x = 765, y = 814, width = 233, height = 432, offsetX = -1, offsetY = 0, offsetWidth = 268, offsetHeight = 432}, -- 30: hit up0000
		{x = 765, y = 814, width = 233, height = 432, offsetX = -1, offsetY = 0, offsetWidth = 268, offsetHeight = 432}, -- 31: hit up0001
		{x = 1003, y = 814, width = 263, height = 382, offsetX = -3, offsetY = -47, offsetWidth = 268, offsetHeight = 432}, -- 32: hit up0002
		{x = 1003, y = 814, width = 263, height = 382, offsetX = -3, offsetY = -47, offsetWidth = 268, offsetHeight = 432}, -- 33: hit up0003
		{x = 1271, y = 814, width = 268, height = 371, offsetX = 0, offsetY = -60, offsetWidth = 268, offsetHeight = 432} -- 34: hit up0004
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["singDOWN moan"] = {start = 1, stop = 3, speed = 24, offsetX = -7, offsetY = -15},
		["idle"] = {start = 4, stop = 17, speed = 24, offsetX = 0, offsetY = 0},
		["singLEFT moan"] = {start = 18, stop = 26, speed = 24, offsetX = 8, offsetY = 61},
		["singRIGHT moan"] = {start = 27, stop = 29, speed = 24, offsetX = -5, offsetY = 3},
		["singUP moan"] = {start = 30, stop = 34, speed = 24, offsetX = 0, offsetY = 40},
	},
	"idle", -- set to default animation
	false,
	{
		sing_duration = 10,
		isCharacter = true
	}
)
