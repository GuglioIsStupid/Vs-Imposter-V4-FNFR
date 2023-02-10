return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("characters/maroon")), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 630, height = 436, offsetX = -40, offsetY = -18, offsetWidth = 670, offsetHeight = 454}, -- 1: down0000
		{x = 635, y = 0, width = 564, height = 436, offsetX = -106, offsetY = -18, offsetWidth = 670, offsetHeight = 454}, -- 2: down0001
		{x = 1204, y = 0, width = 610, height = 423, offsetX = -51, offsetY = -31, offsetWidth = 670, offsetHeight = 454}, -- 3: down0002
		{x = 1819, y = 0, width = 603, height = 444, offsetX = -58, offsetY = -10, offsetWidth = 670, offsetHeight = 454}, -- 4: down0003
		{x = 2427, y = 0, width = 615, height = 424, offsetX = -46, offsetY = -30, offsetWidth = 670, offsetHeight = 454}, -- 5: down0004
		{x = 3047, y = 0, width = 636, height = 423, offsetX = -25, offsetY = -31, offsetWidth = 670, offsetHeight = 454}, -- 6: down0005
		{x = 3688, y = 0, width = 660, height = 423, offsetX = -1, offsetY = -31, offsetWidth = 670, offsetHeight = 454}, -- 7: down0006
		{x = 4353, y = 0, width = 661, height = 423, offsetX = 0, offsetY = -31, offsetWidth = 670, offsetHeight = 454}, -- 8: down0007
		{x = 5019, y = 0, width = 595, height = 423, offsetX = -66, offsetY = -31, offsetWidth = 670, offsetHeight = 454}, -- 9: down0008

		{x = 5619, y = 0, width = 685, height = 519, offsetX = -25, offsetY = -45, offsetWidth = 710, offsetHeight = 564}, -- 10: hey0000
		{x = 6309, y = 0, width = 685, height = 564, offsetX = -25, offsetY = 0, offsetWidth = 710, offsetHeight = 564}, -- 11: hey0001
		{x = 6999, y = 0, width = 668, height = 493, offsetX = -37, offsetY = -58, offsetWidth = 710, offsetHeight = 564}, -- 12: hey0002
		{x = 0, y = 569, width = 701, height = 519, offsetX = -4, offsetY = -32, offsetWidth = 710, offsetHeight = 564}, -- 13: hey0003
		{x = 706, y = 569, width = 687, height = 503, offsetX = -19, offsetY = -50, offsetWidth = 710, offsetHeight = 564}, -- 14: hey0004
		{x = 1398, y = 569, width = 684, height = 495, offsetX = -22, offsetY = -58, offsetWidth = 710, offsetHeight = 564}, -- 15: hey0005
		{x = 2087, y = 569, width = 706, height = 495, offsetX = 0, offsetY = -58, offsetWidth = 710, offsetHeight = 564}, -- 16: hey0006
		{x = 2798, y = 569, width = 671, height = 495, offsetX = -35, offsetY = -58, offsetWidth = 710, offsetHeight = 564}, -- 17: hey0007
		{x = 3474, y = 569, width = 671, height = 495, offsetX = -35, offsetY = -58, offsetWidth = 710, offsetHeight = 564}, -- 18: hey0008
		{x = 4150, y = 569, width = 671, height = 495, offsetX = -35, offsetY = -58, offsetWidth = 710, offsetHeight = 564}, -- 19: hey0009
		{x = 4826, y = 569, width = 702, height = 521, offsetX = -4, offsetY = -32, offsetWidth = 710, offsetHeight = 564}, -- 20: hey0010
		{x = 5533, y = 569, width = 687, height = 503, offsetX = -19, offsetY = -50, offsetWidth = 710, offsetHeight = 564}, -- 21: hey0011
		{x = 6225, y = 569, width = 684, height = 495, offsetX = -22, offsetY = -58, offsetWidth = 710, offsetHeight = 564}, -- 22: hey0012
		{x = 6914, y = 569, width = 706, height = 495, offsetX = 0, offsetY = -58, offsetWidth = 710, offsetHeight = 564}, -- 23: hey0013
		{x = 0, y = 1095, width = 671, height = 495, offsetX = -35, offsetY = -58, offsetWidth = 710, offsetHeight = 564}, -- 24: hey0014
		{x = 3474, y = 569, width = 671, height = 495, offsetX = -35, offsetY = -58, offsetWidth = 710, offsetHeight = 564}, -- 25: hey0015
		{x = 676, y = 1095, width = 671, height = 495, offsetX = -35, offsetY = -58, offsetWidth = 710, offsetHeight = 564}, -- 26: hey0016
		{x = 1352, y = 1095, width = 702, height = 521, offsetX = -4, offsetY = -32, offsetWidth = 710, offsetHeight = 564}, -- 27: hey0017
		{x = 2059, y = 1095, width = 687, height = 503, offsetX = -19, offsetY = -50, offsetWidth = 710, offsetHeight = 564}, -- 28: hey0018
		{x = 2751, y = 1095, width = 684, height = 495, offsetX = -22, offsetY = -58, offsetWidth = 710, offsetHeight = 564}, -- 29: hey0019
		{x = 3440, y = 1095, width = 706, height = 495, offsetX = 0, offsetY = -58, offsetWidth = 710, offsetHeight = 564}, -- 30: hey0020
		{x = 4151, y = 1095, width = 671, height = 495, offsetX = -35, offsetY = -58, offsetWidth = 710, offsetHeight = 564}, -- 31: hey0021
		{x = 4827, y = 1095, width = 671, height = 495, offsetX = -35, offsetY = -58, offsetWidth = 710, offsetHeight = 564}, -- 32: hey0022
		{x = 5503, y = 1095, width = 671, height = 495, offsetX = -35, offsetY = -58, offsetWidth = 710, offsetHeight = 564}, -- 33: hey0023
		{x = 6179, y = 1095, width = 702, height = 521, offsetX = -4, offsetY = -32, offsetWidth = 710, offsetHeight = 564}, -- 34: hey0024
		{x = 6886, y = 1095, width = 687, height = 503, offsetX = -19, offsetY = -50, offsetWidth = 710, offsetHeight = 564}, -- 35: hey0025
		{x = 0, y = 1621, width = 684, height = 495, offsetX = -22, offsetY = -58, offsetWidth = 710, offsetHeight = 564}, -- 36: hey0026
		{x = 689, y = 1621, width = 706, height = 495, offsetX = 0, offsetY = -58, offsetWidth = 710, offsetHeight = 564}, -- 37: hey0027
		{x = 1400, y = 1621, width = 671, height = 495, offsetX = -35, offsetY = -58, offsetWidth = 710, offsetHeight = 564}, -- 38: hey0028
		{x = 2076, y = 1621, width = 671, height = 495, offsetX = -35, offsetY = -58, offsetWidth = 710, offsetHeight = 564}, -- 39: hey0029

		{x = 2752, y = 1621, width = 625, height = 467, offsetX = -74, offsetY = -95, offsetWidth = 706, offsetHeight = 581}, -- 40: idle0000
		{x = 3382, y = 1621, width = 639, height = 527, offsetX = -60, offsetY = -35, offsetWidth = 706, offsetHeight = 581}, -- 41: idle0001
		{x = 4026, y = 1621, width = 684, height = 571, offsetX = -14, offsetY = 0, offsetWidth = 706, offsetHeight = 581}, -- 42: idle0002
		{x = 4715, y = 1621, width = 669, height = 553, offsetX = -29, offsetY = -18, offsetWidth = 706, offsetHeight = 581}, -- 43: idle0003
		{x = 5389, y = 1621, width = 668, height = 486, offsetX = -32, offsetY = -95, offsetWidth = 706, offsetHeight = 581}, -- 44: idle0004
		{x = 6062, y = 1621, width = 690, height = 486, offsetX = -10, offsetY = -95, offsetWidth = 706, offsetHeight = 581}, -- 45: idle0005
		{x = 6757, y = 1621, width = 649, height = 477, offsetX = -54, offsetY = -88, offsetWidth = 706, offsetHeight = 581}, -- 46: idle0006
		{x = 7411, y = 1621, width = 640, height = 477, offsetX = -63, offsetY = -88, offsetWidth = 706, offsetHeight = 581}, -- 47: idle0007
		{x = 0, y = 2197, width = 656, height = 512, offsetX = -50, offsetY = -35, offsetWidth = 706, offsetHeight = 581}, -- 48: idle0008
		{x = 661, y = 2197, width = 703, height = 547, offsetX = -3, offsetY = 0, offsetWidth = 706, offsetHeight = 581}, -- 49: idle0009
		{x = 1369, y = 2197, width = 687, height = 533, offsetX = -19, offsetY = -9, offsetWidth = 706, offsetHeight = 581}, -- 50: idle0010
		{x = 2061, y = 2197, width = 685, height = 458, offsetX = -21, offsetY = -84, offsetWidth = 706, offsetHeight = 581}, -- 51: idle0011
		{x = 2751, y = 2197, width = 706, height = 458, offsetX = 0, offsetY = -84, offsetWidth = 706, offsetHeight = 581}, -- 52: idle0012
		{x = 3462, y = 2197, width = 652, height = 458, offsetX = -54, offsetY = -84, offsetWidth = 706, offsetHeight = 581}, -- 53: idle0013

		{x = 4119, y = 2197, width = 612, height = 550, offsetX = -22, offsetY = -17, offsetWidth = 643, offsetHeight = 576}, -- 54: left0000
		{x = 4736, y = 2197, width = 634, height = 550, offsetX = 0, offsetY = -17, offsetWidth = 643, offsetHeight = 576}, -- 55: left0001
		{x = 5375, y = 2197, width = 588, height = 553, offsetX = -55, offsetY = -23, offsetWidth = 643, offsetHeight = 576}, -- 56: left0002
		{x = 5968, y = 2197, width = 579, height = 553, offsetX = -64, offsetY = -23, offsetWidth = 643, offsetHeight = 576}, -- 57: left0003
		{x = 6552, y = 2197, width = 593, height = 551, offsetX = -50, offsetY = -23, offsetWidth = 643, offsetHeight = 576}, -- 58: left0004
		{x = 7150, y = 2197, width = 639, height = 574, offsetX = -4, offsetY = 0, offsetWidth = 643, offsetHeight = 576}, -- 59: left0005
		{x = 0, y = 2776, width = 624, height = 555, offsetX = -19, offsetY = -19, offsetWidth = 643, offsetHeight = 576}, -- 60: left0006

		{x = 629, y = 2776, width = 659, height = 440, offsetX = -51, offsetY = -6, offsetWidth = 710, offsetHeight = 446}, -- 61: right0000
		{x = 1293, y = 2776, width = 659, height = 440, offsetX = -51, offsetY = -6, offsetWidth = 710, offsetHeight = 446}, -- 62: right0001
		{x = 1957, y = 2776, width = 681, height = 446, offsetX = -16, offsetY = 0, offsetWidth = 710, offsetHeight = 446}, -- 63: right0002
		{x = 2643, y = 2776, width = 675, height = 446, offsetX = -22, offsetY = 0, offsetWidth = 710, offsetHeight = 446}, -- 64: right0003
		{x = 3323, y = 2776, width = 679, height = 446, offsetX = -19, offsetY = 0, offsetWidth = 710, offsetHeight = 446}, -- 65: right0004
		{x = 4007, y = 2776, width = 698, height = 446, offsetX = 0, offsetY = 0, offsetWidth = 710, offsetHeight = 446}, -- 66: right0005
		{x = 4710, y = 2776, width = 669, height = 446, offsetX = -29, offsetY = 0, offsetWidth = 710, offsetHeight = 446}, -- 67: right0006

		{x = 5384, y = 2776, width = 894, height = 438, offsetX = -7, offsetY = -31, offsetWidth = 901, offsetHeight = 469}, -- 68: up0000
		{x = 6283, y = 2776, width = 894, height = 438, offsetX = -7, offsetY = -31, offsetWidth = 901, offsetHeight = 469}, -- 69: up0001
		{x = 7182, y = 2776, width = 900, height = 468, offsetX = 0, offsetY = 0, offsetWidth = 901, offsetHeight = 469}, -- 70: up0002
		{x = 0, y = 3336, width = 900, height = 445, offsetX = 0, offsetY = -23, offsetWidth = 901, offsetHeight = 469}, -- 71: up0003
		{x = 905, y = 3336, width = 896, height = 400, offsetX = -2, offsetY = -68, offsetWidth = 901, offsetHeight = 469}, -- 72: up0004
		{x = 1806, y = 3336, width = 896, height = 400, offsetX = -2, offsetY = -68, offsetWidth = 901, offsetHeight = 469}, -- 73: up0005
		{x = 2707, y = 3336, width = 896, height = 400, offsetX = -2, offsetY = -68, offsetWidth = 901, offsetHeight = 469} -- 74: up0006
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["singDOWN"] = {start = 1, stop = 9, speed = 24, offsetX = -7, offsetY = 54},
		["hey"] = {start = 10, stop = 39, speed = 24, offsetX = -16, offsetY = 9},
		["idle"] = {start = 40, stop = 53, speed = 24, offsetX = 0, offsetY = 0},
		["singLEFT"] = {start = 54, stop = 60, speed = 24, offsetX = 44, offsetY = -57},
		["singRIGHT"] = {start = 61, stop = 67, speed = 24, offsetX = -134, offsetY = 35},
		["singUP"] = {start = 68, stop = 74, speed = 24, offsetX = 31, offsetY = 67},

	},
	"idle", -- set to default animation
	false,
	{
		sing_duration = 10,
		isCharacter = true
	}
)
