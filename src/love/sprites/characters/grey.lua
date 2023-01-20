return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("characters/grey")), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 590, height = 554, offsetX = -14, offsetY = -9, offsetWidth = 608, offsetHeight = 563}, -- 1: down0000
		{x = 595, y = 0, width = 590, height = 554, offsetX = -14, offsetY = -9, offsetWidth = 608, offsetHeight = 563}, -- 2: down0001
		{x = 1190, y = 0, width = 608, height = 547, offsetX = 0, offsetY = 0, offsetWidth = 608, offsetHeight = 563}, -- 3: down0002
		{x = 1803, y = 0, width = 608, height = 547, offsetX = 0, offsetY = 0, offsetWidth = 608, offsetHeight = 563}, -- 4: down0003
		{x = 2416, y = 0, width = 608, height = 548, offsetX = 0, offsetY = 0, offsetWidth = 608, offsetHeight = 563}, -- 5: down0004
		{x = 3029, y = 0, width = 608, height = 548, offsetX = 0, offsetY = 0, offsetWidth = 608, offsetHeight = 563}, -- 6: down0005
		{x = 3642, y = 0, width = 608, height = 548, offsetX = 0, offsetY = 0, offsetWidth = 608, offsetHeight = 563}, -- 7: down0006
		{x = 2416, y = 0, width = 608, height = 548, offsetX = 0, offsetY = 0, offsetWidth = 608, offsetHeight = 563}, -- 8: down0007
		{x = 3029, y = 0, width = 608, height = 548, offsetX = 0, offsetY = 0, offsetWidth = 608, offsetHeight = 563}, -- 9: down0008
		{x = 3642, y = 0, width = 608, height = 548, offsetX = 0, offsetY = 0, offsetWidth = 608, offsetHeight = 563}, -- 10: down0009
		{x = 2416, y = 0, width = 608, height = 548, offsetX = 0, offsetY = 0, offsetWidth = 608, offsetHeight = 563}, -- 11: down0010
		{x = 3029, y = 0, width = 608, height = 548, offsetX = 0, offsetY = 0, offsetWidth = 608, offsetHeight = 563}, -- 12: down0011

		{x = 4255, y = 0, width = 749, height = 518, offsetX = -18, offsetY = -11, offsetWidth = 810, offsetHeight = 544}, -- 13: idle0000
		{x = 5009, y = 0, width = 749, height = 518, offsetX = -18, offsetY = -11, offsetWidth = 810, offsetHeight = 544}, -- 14: idle0001
		{x = 5763, y = 0, width = 754, height = 514, offsetX = -2, offsetY = -24, offsetWidth = 810, offsetHeight = 544}, -- 15: idle0002
		{x = 6522, y = 0, width = 754, height = 514, offsetX = -2, offsetY = -24, offsetWidth = 810, offsetHeight = 544}, -- 16: idle0003
		{x = 7281, y = 0, width = 752, height = 513, offsetX = 0, offsetY = -31, offsetWidth = 810, offsetHeight = 544}, -- 17: idle0004
		{x = 0, y = 559, width = 752, height = 513, offsetX = 0, offsetY = -31, offsetWidth = 810, offsetHeight = 544}, -- 18: idle0005
		{x = 757, y = 559, width = 754, height = 507, offsetX = -4, offsetY = -35, offsetWidth = 810, offsetHeight = 544}, -- 19: idle0006
		{x = 1516, y = 559, width = 754, height = 507, offsetX = -4, offsetY = -35, offsetWidth = 810, offsetHeight = 544}, -- 20: idle0007
		{x = 2275, y = 559, width = 762, height = 499, offsetX = -6, offsetY = -35, offsetWidth = 810, offsetHeight = 544}, -- 21: idle0008
		{x = 3042, y = 559, width = 762, height = 499, offsetX = -6, offsetY = -35, offsetWidth = 810, offsetHeight = 544}, -- 22: idle0009
		{x = 3809, y = 559, width = 768, height = 506, offsetX = -21, offsetY = -23, offsetWidth = 810, offsetHeight = 544}, -- 23: idle0010
		{x = 4582, y = 559, width = 768, height = 506, offsetX = -21, offsetY = -23, offsetWidth = 810, offsetHeight = 544}, -- 24: idle0011
		{x = 5355, y = 559, width = 768, height = 511, offsetX = -31, offsetY = -13, offsetWidth = 810, offsetHeight = 544}, -- 25: idle0012
		{x = 6128, y = 559, width = 768, height = 511, offsetX = -31, offsetY = -13, offsetWidth = 810, offsetHeight = 544}, -- 26: idle0013
		{x = 6901, y = 559, width = 749, height = 520, offsetX = -53, offsetY = -7, offsetWidth = 810, offsetHeight = 544}, -- 27: idle0014
		{x = 0, y = 1084, width = 749, height = 520, offsetX = -53, offsetY = -7, offsetWidth = 810, offsetHeight = 544}, -- 28: idle0015
		{x = 754, y = 1084, width = 741, height = 524, offsetX = -68, offsetY = -7, offsetWidth = 810, offsetHeight = 544}, -- 29: idle0016
		{x = 1500, y = 1084, width = 741, height = 524, offsetX = -68, offsetY = -7, offsetWidth = 810, offsetHeight = 544}, -- 30: idle0017
		{x = 2246, y = 1084, width = 736, height = 518, offsetX = -73, offsetY = -15, offsetWidth = 810, offsetHeight = 544}, -- 31: idle0018
		{x = 2987, y = 1084, width = 736, height = 518, offsetX = -73, offsetY = -15, offsetWidth = 810, offsetHeight = 544}, -- 32: idle0019
		{x = 3728, y = 1084, width = 739, height = 519, offsetX = -71, offsetY = -17, offsetWidth = 810, offsetHeight = 544}, -- 33: idle0020
		{x = 4472, y = 1084, width = 739, height = 519, offsetX = -71, offsetY = -17, offsetWidth = 810, offsetHeight = 544}, -- 34: idle0021
		{x = 5216, y = 1084, width = 743, height = 520, offsetX = -59, offsetY = -8, offsetWidth = 810, offsetHeight = 544}, -- 35: idle0022
		{x = 5964, y = 1084, width = 743, height = 520, offsetX = -59, offsetY = -8, offsetWidth = 810, offsetHeight = 544}, -- 36: idle0023
		{x = 6712, y = 1084, width = 743, height = 520, offsetX = -47, offsetY = -1, offsetWidth = 810, offsetHeight = 544}, -- 37: idle0024
		{x = 0, y = 1613, width = 743, height = 520, offsetX = -47, offsetY = -1, offsetWidth = 810, offsetHeight = 544}, -- 38: idle0025
		{x = 748, y = 1613, width = 739, height = 519, offsetX = -38, offsetY = 0, offsetWidth = 810, offsetHeight = 544}, -- 39: idle0026
		{x = 1492, y = 1613, width = 739, height = 519, offsetX = -38, offsetY = 0, offsetWidth = 810, offsetHeight = 544}, -- 40: idle0027

		{x = 2236, y = 1613, width = 655, height = 520, offsetX = 0, offsetY = -2, offsetWidth = 712, offsetHeight = 527}, -- 41: left0000
		{x = 2896, y = 1613, width = 655, height = 520, offsetX = 0, offsetY = -2, offsetWidth = 712, offsetHeight = 527}, -- 42: left0001
		{x = 3556, y = 1613, width = 707, height = 526, offsetX = -5, offsetY = -1, offsetWidth = 712, offsetHeight = 527}, -- 43: left0002
		{x = 4268, y = 1613, width = 707, height = 526, offsetX = -5, offsetY = -1, offsetWidth = 712, offsetHeight = 527}, -- 44: left0003
		{x = 4980, y = 1613, width = 703, height = 527, offsetX = -6, offsetY = 0, offsetWidth = 712, offsetHeight = 527}, -- 45: left0004
		{x = 5688, y = 1613, width = 703, height = 527, offsetX = -6, offsetY = 0, offsetWidth = 712, offsetHeight = 527}, -- 46: left0005
		{x = 6396, y = 1613, width = 703, height = 527, offsetX = -6, offsetY = 0, offsetWidth = 712, offsetHeight = 527}, -- 47: left0006
		{x = 4980, y = 1613, width = 703, height = 527, offsetX = -6, offsetY = 0, offsetWidth = 712, offsetHeight = 527}, -- 48: left0007
		{x = 5688, y = 1613, width = 703, height = 527, offsetX = -6, offsetY = 0, offsetWidth = 712, offsetHeight = 527}, -- 49: left0008
		{x = 6396, y = 1613, width = 703, height = 527, offsetX = -6, offsetY = 0, offsetWidth = 712, offsetHeight = 527}, -- 50: left0009
		{x = 4980, y = 1613, width = 703, height = 527, offsetX = -6, offsetY = 0, offsetWidth = 712, offsetHeight = 527}, -- 51: left0010
		{x = 5688, y = 1613, width = 703, height = 527, offsetX = -6, offsetY = 0, offsetWidth = 712, offsetHeight = 527}, -- 52: left0011
		{x = 6396, y = 1613, width = 703, height = 527, offsetX = -6, offsetY = 0, offsetWidth = 712, offsetHeight = 527}, -- 53: left0012
		{x = 4980, y = 1613, width = 703, height = 527, offsetX = -6, offsetY = 0, offsetWidth = 712, offsetHeight = 527}, -- 54: left0013

		{x = 7104, y = 1613, width = 865, height = 526, offsetX = -10, offsetY = -6, offsetWidth = 875, offsetHeight = 543}, -- 55: right0000
		{x = 0, y = 2145, width = 865, height = 526, offsetX = -10, offsetY = -6, offsetWidth = 875, offsetHeight = 543}, -- 56: right0001
		{x = 870, y = 2145, width = 857, height = 541, offsetX = 0, offsetY = -2, offsetWidth = 875, offsetHeight = 543}, -- 57: right0002
		{x = 1732, y = 2145, width = 857, height = 541, offsetX = 0, offsetY = -2, offsetWidth = 875, offsetHeight = 543}, -- 58: right0003
		{x = 2594, y = 2145, width = 857, height = 543, offsetX = -1, offsetY = 0, offsetWidth = 875, offsetHeight = 543}, -- 59: right0004
		{x = 3456, y = 2145, width = 857, height = 543, offsetX = -1, offsetY = 0, offsetWidth = 875, offsetHeight = 543}, -- 60: right0005
		{x = 4318, y = 2145, width = 857, height = 543, offsetX = -1, offsetY = 0, offsetWidth = 875, offsetHeight = 543}, -- 61: right0006
		{x = 2594, y = 2145, width = 857, height = 543, offsetX = -1, offsetY = 0, offsetWidth = 875, offsetHeight = 543}, -- 62: right0007
		{x = 3456, y = 2145, width = 857, height = 543, offsetX = -1, offsetY = 0, offsetWidth = 875, offsetHeight = 543}, -- 63: right0008
		{x = 4318, y = 2145, width = 857, height = 543, offsetX = -1, offsetY = 0, offsetWidth = 875, offsetHeight = 543}, -- 64: right0009

		{x = 5180, y = 2145, width = 721, height = 470, offsetX = 0, offsetY = -12, offsetWidth = 721, offsetHeight = 482}, -- 65: up0000
		{x = 5906, y = 2145, width = 721, height = 470, offsetX = 0, offsetY = -12, offsetWidth = 721, offsetHeight = 482}, -- 66: up0001
		{x = 6632, y = 2145, width = 688, height = 482, offsetX = -6, offsetY = 0, offsetWidth = 721, offsetHeight = 482}, -- 67: up0002
		{x = 7325, y = 2145, width = 688, height = 482, offsetX = -6, offsetY = 0, offsetWidth = 721, offsetHeight = 482}, -- 68: up0003
		{x = 0, y = 2693, width = 688, height = 480, offsetX = -6, offsetY = -2, offsetWidth = 721, offsetHeight = 482}, -- 69: up0004
		{x = 693, y = 2693, width = 688, height = 480, offsetX = -6, offsetY = -2, offsetWidth = 721, offsetHeight = 482}, -- 70: up0005
		{x = 1386, y = 2693, width = 688, height = 480, offsetX = -6, offsetY = -2, offsetWidth = 721, offsetHeight = 482}, -- 71: up0006
		{x = 0, y = 2693, width = 688, height = 480, offsetX = -6, offsetY = -2, offsetWidth = 721, offsetHeight = 482}, -- 72: up0007
		{x = 693, y = 2693, width = 688, height = 480, offsetX = -6, offsetY = -2, offsetWidth = 721, offsetHeight = 482} -- 73: up0008
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["down"] = {start = 1, stop = 12, speed = 24, offsetX = 0, offsetY = 0},
		["idle"] = {start = 13, stop = 40, speed = 24, offsetX = 0, offsetY = 0},
		["left"] = {start = 41, stop = 54, speed = 24, offsetX = 0, offsetY = 0},
		["right"] = {start = 55, stop = 64, speed = 24, offsetX = 0, offsetY = 0},
		["up"] = {start = 65, stop = 73, speed = 24, offsetX = 0, offsetY = 0},
	},
	"idle", -- set to default animation
	false -- If the sprite repeats
)
