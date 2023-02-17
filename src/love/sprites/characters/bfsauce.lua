return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("characters/bfsauce")), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 389, height = 491, offsetX = -2, offsetY = -3, offsetWidth = 397, offsetHeight = 494}, -- 1: BF NOTE DOWN0000
		{x = 0, y = 0, width = 389, height = 491, offsetX = -2, offsetY = -3, offsetWidth = 397, offsetHeight = 494}, -- 2: BF NOTE DOWN0001
		{x = 419, y = 0, width = 397, height = 494, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 3: BF NOTE DOWN0002
		{x = 419, y = 0, width = 397, height = 494, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 4: BF NOTE DOWN0003

		{x = 0, y = 0, width = 389, height = 491, offsetX = -1, offsetY = -10, offsetWidth = 397, offsetHeight = 494}, -- 5: BF NOTE DOWN MISS0000
		{x = 846, y = 0, width = 392, height = 502, offsetX = -1, offsetY = 0, offsetWidth = 394, offsetHeight = 502}, -- 6: BF NOTE DOWN MISS0001
		{x = 846, y = 0, width = 392, height = 502, offsetX = -1, offsetY = 0, offsetWidth = 394, offsetHeight = 502}, -- 7: BF NOTE DOWN MISS0002
		{x = 1268, y = 0, width = 394, height = 496, offsetX = 0, offsetY = -6, offsetWidth = 394, offsetHeight = 502}, -- 8: BF NOTE DOWN MISS0003
		{x = 1268, y = 0, width = 394, height = 496, offsetX = 0, offsetY = -6, offsetWidth = 394, offsetHeight = 502}, -- 9: BF NOTE DOWN MISS0004

		{x = 1692, y = 0, width = 395, height = 483, offsetX = 0, offsetY = -10, offsetWidth = 395, offsetHeight = 494}, -- 10: BF NOTE DOWN VIBRATO0000
		{x = 1692, y = 0, width = 395, height = 483, offsetX = 0, offsetY = -10, offsetWidth = 395, offsetHeight = 494}, -- 11: BF NOTE DOWN VIBRATO0001
		{x = 2117, y = 0, width = 389, height = 491, offsetX = -5, offsetY = -3, offsetWidth = 395, offsetHeight = 494}, -- 12: BF NOTE DOWN VIBRATO0002
		{x = 2117, y = 0, width = 389, height = 491, offsetX = -5, offsetY = -3, offsetWidth = 395, offsetHeight = 494}, -- 13: BF NOTE DOWN VIBRATO0003
		{x = 2536, y = 0, width = 387, height = 493, offsetX = -6, offsetY = -1, offsetWidth = 395, offsetHeight = 494}, -- 14: BF NOTE DOWN VIBRATO0004
		{x = 2536, y = 0, width = 387, height = 493, offsetX = -6, offsetY = -1, offsetWidth = 395, offsetHeight = 494}, -- 15: BF NOTE DOWN VIBRATO0005
		{x = 2953, y = 0, width = 388, height = 494, offsetX = -6, offsetY = 0, offsetWidth = 395, offsetHeight = 494}, -- 16: BF NOTE DOWN VIBRATO0006
		{x = 2953, y = 0, width = 388, height = 494, offsetX = -6, offsetY = 0, offsetWidth = 395, offsetHeight = 494}, -- 17: BF NOTE DOWN VIBRATO0007

		{x = 3371, y = 0, width = 416, height = 525, offsetX = 0, offsetY = -2, offsetWidth = 420, offsetHeight = 527}, -- 18: BF NOTE LEFT0000
		{x = 3371, y = 0, width = 416, height = 525, offsetX = 0, offsetY = -2, offsetWidth = 420, offsetHeight = 527}, -- 19: BF NOTE LEFT0001
		{x = 0, y = 555, width = 418, height = 527, offsetX = -2, offsetY = 0, offsetWidth = 420, offsetHeight = 527}, -- 20: BF NOTE LEFT0002
		{x = 0, y = 555, width = 418, height = 527, offsetX = -2, offsetY = 0, offsetWidth = 420, offsetHeight = 527}, -- 21: BF NOTE LEFT0003

		{x = 448, y = 555, width = 416, height = 525, offsetX = -2, offsetY = 0, offsetWidth = 423, offsetHeight = 525}, -- 22: BF NOTE LEFT MISS0000
		{x = 894, y = 555, width = 420, height = 509, offsetX = -3, offsetY = -16, offsetWidth = 423, offsetHeight = 525}, -- 23: BF NOTE LEFT MISS0001
		{x = 894, y = 555, width = 420, height = 509, offsetX = -3, offsetY = -16, offsetWidth = 423, offsetHeight = 525}, -- 24: BF NOTE LEFT MISS0002
		{x = 1344, y = 555, width = 418, height = 509, offsetX = 0, offsetY = -16, offsetWidth = 423, offsetHeight = 525}, -- 25: BF NOTE LEFT MISS0003
		{x = 1344, y = 555, width = 418, height = 509, offsetX = 0, offsetY = -16, offsetWidth = 423, offsetHeight = 525}, -- 26: BF NOTE LEFT MISS0004

		{x = 1792, y = 555, width = 419, height = 540, offsetX = -5, offsetY = 0, offsetWidth = 428, offsetHeight = 540}, -- 27: BF NOTE RIGHT0000
		{x = 1792, y = 555, width = 419, height = 540, offsetX = -5, offsetY = 0, offsetWidth = 428, offsetHeight = 540}, -- 28: BF NOTE RIGHT0001
		{x = 2241, y = 555, width = 428, height = 540, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 29: BF NOTE RIGHT0002
		{x = 2241, y = 555, width = 428, height = 540, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 30: BF NOTE RIGHT0003

		{x = 1792, y = 555, width = 419, height = 540, offsetX = -11, offsetY = 0, offsetWidth = 428, offsetHeight = 540}, -- 31: BF NOTE RIGHT MISS0000
		{x = 2699, y = 555, width = 424, height = 534, offsetX = 0, offsetY = -2, offsetWidth = 433, offsetHeight = 540}, -- 32: BF NOTE RIGHT MISS0001
		{x = 2699, y = 555, width = 424, height = 534, offsetX = 0, offsetY = -2, offsetWidth = 433, offsetHeight = 540}, -- 33: BF NOTE RIGHT MISS0002
		{x = 3153, y = 555, width = 429, height = 534, offsetX = -4, offsetY = -2, offsetWidth = 433, offsetHeight = 540}, -- 34: BF NOTE RIGHT MISS0003
		{x = 3153, y = 555, width = 429, height = 534, offsetX = -4, offsetY = -2, offsetWidth = 433, offsetHeight = 540}, -- 35: BF NOTE RIGHT MISS0004

		{x = 3612, y = 555, width = 454, height = 527, offsetX = -1, offsetY = 0, offsetWidth = 455, offsetHeight = 527}, -- 36: BF NOTE UP0000
		{x = 3612, y = 555, width = 454, height = 527, offsetX = -1, offsetY = 0, offsetWidth = 455, offsetHeight = 527}, -- 37: BF NOTE UP0001
		{x = 0, y = 1125, width = 454, height = 523, offsetX = 0, offsetY = -4, offsetWidth = 455, offsetHeight = 527}, -- 38: BF NOTE UP0002
		{x = 0, y = 1125, width = 454, height = 523, offsetX = 0, offsetY = -4, offsetWidth = 455, offsetHeight = 527}, -- 39: BF NOTE UP0003

		{x = 484, y = 1125, width = 454, height = 527, offsetX = -5, offsetY = -4, offsetWidth = 460, offsetHeight = 531}, -- 40: BF NOTE UP MISS0000
		{x = 968, y = 1125, width = 460, height = 527, offsetX = 0, offsetY = -4, offsetWidth = 460, offsetHeight = 531}, -- 41: BF NOTE UP MISS0001
		{x = 968, y = 1125, width = 460, height = 527, offsetX = 0, offsetY = -4, offsetWidth = 460, offsetHeight = 531}, -- 42: BF NOTE UP MISS0002
		{x = 1458, y = 1125, width = 455, height = 531, offsetX = -2, offsetY = 0, offsetWidth = 460, offsetHeight = 531}, -- 43: BF NOTE UP MISS0003
		{x = 1458, y = 1125, width = 455, height = 531, offsetX = -2, offsetY = 0, offsetWidth = 460, offsetHeight = 531}, -- 44: BF NOTE UP MISS0004

		{x = 1943, y = 1125, width = 439, height = 539, offsetX = -2, offsetY = -3, offsetWidth = 441, offsetHeight = 542}, -- 45: BF NOTE UP VIBRATO0000
		{x = 1943, y = 1125, width = 439, height = 539, offsetX = -2, offsetY = -3, offsetWidth = 441, offsetHeight = 542}, -- 46: BF NOTE UP VIBRATO0001
		{x = 2412, y = 1125, width = 435, height = 540, offsetX = -1, offsetY = -1, offsetWidth = 441, offsetHeight = 542}, -- 47: BF NOTE UP VIBRATO0002
		{x = 2412, y = 1125, width = 435, height = 540, offsetX = -1, offsetY = -1, offsetWidth = 441, offsetHeight = 542}, -- 48: BF NOTE UP VIBRATO0003
		{x = 2877, y = 1125, width = 432, height = 541, offsetX = 0, offsetY = 0, offsetWidth = 441, offsetHeight = 542}, -- 49: BF NOTE UP VIBRATO0004
		{x = 2877, y = 1125, width = 432, height = 541, offsetX = 0, offsetY = 0, offsetWidth = 441, offsetHeight = 542}, -- 50: BF NOTE UP VIBRATO0005
		{x = 3339, y = 1125, width = 431, height = 541, offsetX = 0, offsetY = 0, offsetWidth = 441, offsetHeight = 542}, -- 51: BF NOTE UP VIBRATO0006
		{x = 3339, y = 1125, width = 431, height = 541, offsetX = 0, offsetY = 0, offsetWidth = 441, offsetHeight = 542}, -- 52: BF NOTE UP VIBRATO0007

		{x = 0, y = 1696, width = 393, height = 527, offsetX = 0, offsetY = -15, offsetWidth = 408, offsetHeight = 542}, -- 53: BF idle dance0000
		{x = 0, y = 1696, width = 393, height = 527, offsetX = 0, offsetY = -15, offsetWidth = 408, offsetHeight = 542}, -- 54: BF idle dance0001
		{x = 423, y = 1696, width = 391, height = 529, offsetX = 0, offsetY = -13, offsetWidth = 408, offsetHeight = 542}, -- 55: BF idle dance0002
		{x = 423, y = 1696, width = 391, height = 529, offsetX = 0, offsetY = -13, offsetWidth = 408, offsetHeight = 542}, -- 56: BF idle dance0003
		{x = 844, y = 1696, width = 393, height = 532, offsetX = -4, offsetY = -10, offsetWidth = 408, offsetHeight = 542}, -- 57: BF idle dance0004
		{x = 844, y = 1696, width = 393, height = 532, offsetX = -4, offsetY = -10, offsetWidth = 408, offsetHeight = 542}, -- 58: BF idle dance0005
		{x = 1267, y = 1696, width = 402, height = 542, offsetX = -6, offsetY = 0, offsetWidth = 408, offsetHeight = 542}, -- 59: BF idle dance0006
		{x = 1267, y = 1696, width = 402, height = 542, offsetX = -6, offsetY = 0, offsetWidth = 408, offsetHeight = 542}, -- 60: BF idle dance0007
		{x = 1699, y = 1696, width = 402, height = 542, offsetX = -6, offsetY = 0, offsetWidth = 408, offsetHeight = 542}, -- 61: BF idle dance0008
		{x = 1699, y = 1696, width = 402, height = 542, offsetX = -6, offsetY = 0, offsetWidth = 408, offsetHeight = 542}, -- 62: BF idle dance0009
		{x = 1699, y = 1696, width = 402, height = 542, offsetX = -6, offsetY = 0, offsetWidth = 408, offsetHeight = 542}, -- 63: BF idle dance0010
		{x = 1699, y = 1696, width = 402, height = 542, offsetX = -6, offsetY = 0, offsetWidth = 408, offsetHeight = 542}, -- 64: BF idle dance0011
		{x = 1699, y = 1696, width = 402, height = 542, offsetX = -6, offsetY = 0, offsetWidth = 408, offsetHeight = 542}, -- 65: BF idle dance0012
		{x = 1699, y = 1696, width = 402, height = 542, offsetX = -6, offsetY = 0, offsetWidth = 408, offsetHeight = 542} -- 66: BF idle dance0013
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["singDOWN"] = {start = 1, stop = 4, speed = 24, offsetX = 24, offsetY = -25},
		["miss down"] = {start = 5, stop = 9, speed = 24, offsetX = 26, offsetY = -21},
		["singDOWN alt"] = {start = 10, stop = 17, speed = 24, offsetX = 26, offsetY = -25},
		["singLEFT"] = {start = 18, stop = 21, speed = 24, offsetX = 28, offsetY = -7},
		["miss left"] = {start = 22, stop = 26, speed = 24, offsetX = 32, offsetY = -8},
		["singRIGHT"] = {start = 27, stop = 30, speed = 24, offsetX = -22, offsetY = -2},
		["miss right"] = {start = 31, stop = 35, speed = 24, offsetX = -22, offsetY = -3},
		["singUP"] = {start = 36, stop = 39, speed = 24, offsetX = -40, offsetY = -10},
		["miss up"] = {start = 40, stop = 44, speed = 24, offsetX = -42, offsetY = -5},
		["singUP alt"] = {start = 45, stop = 52, speed = 24, offsetX = -22, offsetY = -4},
		["idle"] = {start = 53, stop = 66, speed = 24, offsetX = 0, offsetY = 0},
	},
	"idle", -- set to default animation
	false,
	{
		sing_duration = 4,
		isCharacter = true
	}
)
