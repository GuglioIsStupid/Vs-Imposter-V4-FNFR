return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("characters/crewmate")), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 620, height = 395, offsetX = 0, offsetY = -5, offsetWidth = 622, offsetHeight = 400}, -- 1: green down0000
		{x = 0, y = 0, width = 620, height = 395, offsetX = 0, offsetY = -5, offsetWidth = 622, offsetHeight = 400}, -- 2: green down0001
		{x = 630, y = 0, width = 622, height = 387, offsetX = 0, offsetY = 0, offsetWidth = 622, offsetHeight = 400}, -- 3: green down0002
		{x = 630, y = 0, width = 622, height = 387, offsetX = 0, offsetY = 0, offsetWidth = 622, offsetHeight = 400}, -- 4: green down0003
		{x = 1262, y = 0, width = 622, height = 387, offsetX = 0, offsetY = 0, offsetWidth = 622, offsetHeight = 400}, -- 5: green down0004
		{x = 1262, y = 0, width = 622, height = 387, offsetX = 0, offsetY = 0, offsetWidth = 622, offsetHeight = 400}, -- 6: green down0005
		{x = 1894, y = 0, width = 622, height = 387, offsetX = 0, offsetY = 0, offsetWidth = 622, offsetHeight = 400}, -- 7: green down0006
		{x = 1894, y = 0, width = 622, height = 387, offsetX = 0, offsetY = 0, offsetWidth = 622, offsetHeight = 400}, -- 8: green down0007

		{x = 2526, y = 0, width = 476, height = 362, offsetX = -1, offsetY = -18, offsetWidth = 477, offsetHeight = 380}, -- 9: green idle0000
		{x = 2526, y = 0, width = 476, height = 362, offsetX = -1, offsetY = -18, offsetWidth = 477, offsetHeight = 380}, -- 10: green idle0001
		{x = 3012, y = 0, width = 476, height = 367, offsetX = 0, offsetY = -12, offsetWidth = 477, offsetHeight = 380}, -- 11: green idle0002
		{x = 3012, y = 0, width = 476, height = 367, offsetX = 0, offsetY = -12, offsetWidth = 477, offsetHeight = 380}, -- 12: green idle0003
		{x = 3498, y = 0, width = 446, height = 378, offsetX = -3, offsetY = -2, offsetWidth = 477, offsetHeight = 380}, -- 13: green idle0004
		{x = 3498, y = 0, width = 446, height = 378, offsetX = -3, offsetY = -2, offsetWidth = 477, offsetHeight = 380}, -- 14: green idle0005
		{x = 3954, y = 0, width = 433, height = 380, offsetX = -2, offsetY = 0, offsetWidth = 477, offsetHeight = 380}, -- 15: green idle0006
		{x = 3954, y = 0, width = 433, height = 380, offsetX = -2, offsetY = 0, offsetWidth = 477, offsetHeight = 380}, -- 16: green idle0007
		{x = 4397, y = 0, width = 434, height = 380, offsetX = -1, offsetY = 0, offsetWidth = 477, offsetHeight = 380}, -- 17: green idle0008
		{x = 4397, y = 0, width = 434, height = 380, offsetX = -1, offsetY = 0, offsetWidth = 477, offsetHeight = 380}, -- 18: green idle0009
		{x = 4841, y = 0, width = 434, height = 380, offsetX = -1, offsetY = 0, offsetWidth = 477, offsetHeight = 380}, -- 19: green idle0010
		{x = 4841, y = 0, width = 434, height = 380, offsetX = -1, offsetY = 0, offsetWidth = 477, offsetHeight = 380}, -- 20: green idle0011

		{x = 5285, y = 0, width = 658, height = 382, offsetX = 0, offsetY = -1, offsetWidth = 672, offsetHeight = 383}, -- 21: green left0000
		{x = 5285, y = 0, width = 658, height = 382, offsetX = 0, offsetY = -1, offsetWidth = 672, offsetHeight = 383}, -- 22: green left0001
		{x = 5953, y = 0, width = 666, height = 383, offsetX = -6, offsetY = 0, offsetWidth = 672, offsetHeight = 383}, -- 23: green left0002
		{x = 5953, y = 0, width = 666, height = 383, offsetX = -6, offsetY = 0, offsetWidth = 672, offsetHeight = 383}, -- 24: green left0003
		{x = 6629, y = 0, width = 666, height = 383, offsetX = -6, offsetY = 0, offsetWidth = 672, offsetHeight = 383}, -- 25: green left0004
		{x = 6629, y = 0, width = 666, height = 383, offsetX = -6, offsetY = 0, offsetWidth = 672, offsetHeight = 383}, -- 26: green left0005
		{x = 7305, y = 0, width = 666, height = 383, offsetX = -6, offsetY = 0, offsetWidth = 672, offsetHeight = 383}, -- 27: green left0006
		{x = 7305, y = 0, width = 666, height = 383, offsetX = -6, offsetY = 0, offsetWidth = 672, offsetHeight = 383}, -- 28: green left0007
		{x = 0, y = 405, width = 666, height = 383, offsetX = -6, offsetY = 0, offsetWidth = 672, offsetHeight = 383}, -- 29: green left0008

		{x = 676, y = 405, width = 434, height = 380, offsetX = -176, offsetY = -2, offsetWidth = 672, offsetHeight = 395}, -- 30: green notice0000
		{x = 676, y = 405, width = 434, height = 380, offsetX = -176, offsetY = -2, offsetWidth = 672, offsetHeight = 395}, -- 31: green notice0001
		{x = 1120, y = 405, width = 443, height = 377, offsetX = -174, offsetY = -5, offsetWidth = 672, offsetHeight = 395}, -- 32: green notice0002
		{x = 1120, y = 405, width = 443, height = 377, offsetX = -174, offsetY = -5, offsetWidth = 672, offsetHeight = 395}, -- 33: green notice0003
		{x = 1573, y = 405, width = 487, height = 382, offsetX = -185, offsetY = 0, offsetWidth = 672, offsetHeight = 395}, -- 34: green notice0004
		{x = 1573, y = 405, width = 487, height = 382, offsetX = -185, offsetY = 0, offsetWidth = 672, offsetHeight = 395}, -- 35: green notice0005
		{x = 2070, y = 405, width = 490, height = 382, offsetX = -181, offsetY = 0, offsetWidth = 672, offsetHeight = 395}, -- 36: green notice0006
		{x = 2070, y = 405, width = 490, height = 382, offsetX = -181, offsetY = 0, offsetWidth = 672, offsetHeight = 395}, -- 37: green notice0007
		{x = 2570, y = 405, width = 492, height = 382, offsetX = -179, offsetY = 0, offsetWidth = 672, offsetHeight = 395}, -- 38: green notice0008
		{x = 2570, y = 405, width = 492, height = 382, offsetX = -179, offsetY = 0, offsetWidth = 672, offsetHeight = 395}, -- 39: green notice0009
		{x = 2570, y = 405, width = 492, height = 382, offsetX = -179, offsetY = 0, offsetWidth = 672, offsetHeight = 395}, -- 40: green notice0010
		{x = 2570, y = 405, width = 492, height = 382, offsetX = -179, offsetY = 0, offsetWidth = 672, offsetHeight = 395}, -- 41: green notice0011
		{x = 2570, y = 405, width = 492, height = 382, offsetX = -179, offsetY = 0, offsetWidth = 672, offsetHeight = 395}, -- 42: green notice0012
		{x = 2570, y = 405, width = 492, height = 382, offsetX = -179, offsetY = 0, offsetWidth = 672, offsetHeight = 395}, -- 43: green notice0013
		{x = 3072, y = 405, width = 492, height = 379, offsetX = -179, offsetY = -3, offsetWidth = 672, offsetHeight = 395}, -- 44: green notice0014
		{x = 3072, y = 405, width = 492, height = 379, offsetX = -179, offsetY = -3, offsetWidth = 672, offsetHeight = 395}, -- 45: green notice0015
		{x = 3574, y = 405, width = 634, height = 395, offsetX = -37, offsetY = 0, offsetWidth = 672, offsetHeight = 395}, -- 46: green notice0016
		{x = 3574, y = 405, width = 634, height = 395, offsetX = -37, offsetY = 0, offsetWidth = 672, offsetHeight = 395}, -- 47: green notice0017
		{x = 4218, y = 405, width = 671, height = 382, offsetX = 0, offsetY = 0, offsetWidth = 672, offsetHeight = 395}, -- 48: green notice0018
		{x = 4218, y = 405, width = 671, height = 382, offsetX = 0, offsetY = 0, offsetWidth = 672, offsetHeight = 395}, -- 49: green notice0019

		{x = 4899, y = 405, width = 579, height = 370, offsetX = -6, offsetY = 0, offsetWidth = 585, offsetHeight = 370}, -- 50: green right0000
		{x = 4899, y = 405, width = 579, height = 370, offsetX = -6, offsetY = 0, offsetWidth = 585, offsetHeight = 370}, -- 51: green right0001
		{x = 5488, y = 405, width = 567, height = 370, offsetX = 0, offsetY = 0, offsetWidth = 585, offsetHeight = 370}, -- 52: green right0002
		{x = 5488, y = 405, width = 567, height = 370, offsetX = 0, offsetY = 0, offsetWidth = 585, offsetHeight = 370}, -- 53: green right0003
		{x = 6065, y = 405, width = 567, height = 370, offsetX = 0, offsetY = 0, offsetWidth = 585, offsetHeight = 370}, -- 54: green right0004
		{x = 6065, y = 405, width = 567, height = 370, offsetX = 0, offsetY = 0, offsetWidth = 585, offsetHeight = 370}, -- 55: green right0005
		{x = 6642, y = 405, width = 567, height = 370, offsetX = 0, offsetY = 0, offsetWidth = 585, offsetHeight = 370}, -- 56: green right0006
		{x = 6642, y = 405, width = 567, height = 370, offsetX = 0, offsetY = 0, offsetWidth = 585, offsetHeight = 370}, -- 57: green right0007

		{x = 7219, y = 405, width = 667, height = 382, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 58: green unwave0000
		{x = 7219, y = 405, width = 667, height = 382, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 59: green unwave0001
		{x = 0, y = 810, width = 659, height = 382, offsetX = -8, offsetY = 0, offsetWidth = 667, offsetHeight = 382}, -- 60: green unwave0002
		{x = 0, y = 810, width = 659, height = 382, offsetX = -8, offsetY = 0, offsetWidth = 667, offsetHeight = 382}, -- 61: green unwave0003
		{x = 669, y = 810, width = 612, height = 381, offsetX = -55, offsetY = -1, offsetWidth = 667, offsetHeight = 382}, -- 62: green unwave0004
		{x = 669, y = 810, width = 612, height = 381, offsetX = -55, offsetY = -1, offsetWidth = 667, offsetHeight = 382}, -- 63: green unwave0005
		{x = 1291, y = 810, width = 574, height = 374, offsetX = -93, offsetY = -8, offsetWidth = 667, offsetHeight = 382}, -- 64: green unwave0006
		{x = 1291, y = 810, width = 574, height = 374, offsetX = -93, offsetY = -8, offsetWidth = 667, offsetHeight = 382}, -- 65: green unwave0007
		{x = 1875, y = 810, width = 576, height = 375, offsetX = -90, offsetY = -7, offsetWidth = 667, offsetHeight = 382}, -- 66: green unwave0008
		{x = 1875, y = 810, width = 576, height = 375, offsetX = -90, offsetY = -7, offsetWidth = 667, offsetHeight = 382}, -- 67: green unwave0009
		{x = 2461, y = 810, width = 576, height = 375, offsetX = -90, offsetY = -7, offsetWidth = 667, offsetHeight = 382}, -- 68: green unwave0010
		{x = 2461, y = 810, width = 576, height = 375, offsetX = -90, offsetY = -7, offsetWidth = 667, offsetHeight = 382}, -- 69: green unwave0011
		{x = 2461, y = 810, width = 576, height = 375, offsetX = -90, offsetY = -7, offsetWidth = 667, offsetHeight = 382}, -- 70: green unwave0012
		{x = 2461, y = 810, width = 576, height = 375, offsetX = -90, offsetY = -7, offsetWidth = 667, offsetHeight = 382}, -- 71: green unwave0013
		{x = 2461, y = 810, width = 576, height = 375, offsetX = -90, offsetY = -7, offsetWidth = 667, offsetHeight = 382}, -- 72: green unwave0014
		{x = 2461, y = 810, width = 576, height = 375, offsetX = -90, offsetY = -7, offsetWidth = 667, offsetHeight = 382}, -- 73: green unwave0015
		{x = 2461, y = 810, width = 576, height = 375, offsetX = -90, offsetY = -7, offsetWidth = 667, offsetHeight = 382}, -- 74: green unwave0016

		{x = 3047, y = 810, width = 759, height = 503, offsetX = -9, offsetY = 0, offsetWidth = 819, offsetHeight = 503}, -- 75: green up0000
		{x = 3047, y = 810, width = 759, height = 503, offsetX = -9, offsetY = 0, offsetWidth = 819, offsetHeight = 503}, -- 76: green up0001
		{x = 3816, y = 810, width = 804, height = 483, offsetX = 0, offsetY = -20, offsetWidth = 819, offsetHeight = 503}, -- 77: green up0002
		{x = 4630, y = 810, width = 819, height = 485, offsetX = 0, offsetY = -18, offsetWidth = 819, offsetHeight = 503}, -- 78: green up0003
		{x = 5459, y = 810, width = 819, height = 485, offsetX = 0, offsetY = -18, offsetWidth = 819, offsetHeight = 503}, -- 79: green up0004
		{x = 6288, y = 810, width = 817, height = 484, offsetX = 0, offsetY = -19, offsetWidth = 819, offsetHeight = 503}, -- 80: green up0005
		{x = 7115, y = 810, width = 817, height = 484, offsetX = 0, offsetY = -19, offsetWidth = 819, offsetHeight = 503}, -- 81: green up0006
		{x = 0, y = 1323, width = 634, height = 453, offsetX = 0, offsetY = -50, offsetWidth = 819, offsetHeight = 503}, -- 82: green up0007
		{x = 644, y = 1323, width = 634, height = 453, offsetX = 0, offsetY = -50, offsetWidth = 819, offsetHeight = 503}, -- 83: green up0008

		{x = 1288, y = 1323, width = 675, height = 382, offsetX = -13, offsetY = 0, offsetWidth = 688, offsetHeight = 382}, -- 84: green wave0000
		{x = 1288, y = 1323, width = 675, height = 382, offsetX = -13, offsetY = 0, offsetWidth = 688, offsetHeight = 382}, -- 85: green wave0001
		{x = 1973, y = 1323, width = 659, height = 382, offsetX = -29, offsetY = 0, offsetWidth = 688, offsetHeight = 382}, -- 86: green wave0002
		{x = 1973, y = 1323, width = 659, height = 382, offsetX = -29, offsetY = 0, offsetWidth = 688, offsetHeight = 382}, -- 87: green wave0003
		{x = 2642, y = 1323, width = 653, height = 382, offsetX = -35, offsetY = 0, offsetWidth = 688, offsetHeight = 382}, -- 88: green wave0004
		{x = 2642, y = 1323, width = 653, height = 382, offsetX = -35, offsetY = 0, offsetWidth = 688, offsetHeight = 382}, -- 89: green wave0005
		{x = 3305, y = 1323, width = 655, height = 382, offsetX = -33, offsetY = 0, offsetWidth = 688, offsetHeight = 382}, -- 90: green wave0006
		{x = 3305, y = 1323, width = 655, height = 382, offsetX = -33, offsetY = 0, offsetWidth = 688, offsetHeight = 382}, -- 91: green wave0007
		{x = 3970, y = 1323, width = 676, height = 382, offsetX = -12, offsetY = 0, offsetWidth = 688, offsetHeight = 382}, -- 92: green wave0008
		{x = 3970, y = 1323, width = 676, height = 382, offsetX = -12, offsetY = 0, offsetWidth = 688, offsetHeight = 382}, -- 93: green wave0009
		{x = 4656, y = 1323, width = 686, height = 382, offsetX = -2, offsetY = 0, offsetWidth = 688, offsetHeight = 382}, -- 94: green wave0010
		{x = 4656, y = 1323, width = 686, height = 382, offsetX = -2, offsetY = 0, offsetWidth = 688, offsetHeight = 382}, -- 95: green wave0011
		{x = 5352, y = 1323, width = 688, height = 382, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 96: green wave0012
		{x = 5352, y = 1323, width = 688, height = 382, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 97: green wave0013
		{x = 6050, y = 1323, width = 683, height = 382, offsetX = -5, offsetY = 0, offsetWidth = 688, offsetHeight = 382}, -- 98: green wave0014
		{x = 6050, y = 1323, width = 683, height = 382, offsetX = -5, offsetY = 0, offsetWidth = 688, offsetHeight = 382}, -- 99: green wave0015

		{x = 6743, y = 1323, width = 433, height = 399, offsetX = -5, offsetY = 0, offsetWidth = 438, offsetHeight = 399}, -- 100: silly dance left0000
		{x = 6743, y = 1323, width = 433, height = 399, offsetX = -5, offsetY = 0, offsetWidth = 438, offsetHeight = 399}, -- 101: silly dance left0001
		{x = 7186, y = 1323, width = 432, height = 397, offsetX = 0, offsetY = -2, offsetWidth = 438, offsetHeight = 399}, -- 102: silly dance left0002
		{x = 7186, y = 1323, width = 432, height = 397, offsetX = 0, offsetY = -2, offsetWidth = 438, offsetHeight = 399}, -- 103: silly dance left0003
		{x = 7628, y = 1323, width = 427, height = 396, offsetX = -2, offsetY = -3, offsetWidth = 438, offsetHeight = 399}, -- 104: silly dance left0004
		{x = 0, y = 1786, width = 413, height = 376, offsetX = -3, offsetY = -23, offsetWidth = 438, offsetHeight = 399}, -- 105: silly dance left0005
		{x = 0, y = 1786, width = 413, height = 376, offsetX = -3, offsetY = -23, offsetWidth = 438, offsetHeight = 399}, -- 106: silly dance left0006
		{x = 423, y = 1786, width = 411, height = 379, offsetX = -5, offsetY = -20, offsetWidth = 438, offsetHeight = 399}, -- 107: silly dance left0007
		{x = 423, y = 1786, width = 411, height = 379, offsetX = -5, offsetY = -20, offsetWidth = 438, offsetHeight = 399}, -- 108: silly dance left0008
		{x = 844, y = 1786, width = 410, height = 379, offsetX = -6, offsetY = -20, offsetWidth = 438, offsetHeight = 399}, -- 109: silly dance left0009
		{x = 844, y = 1786, width = 410, height = 379, offsetX = -6, offsetY = -20, offsetWidth = 438, offsetHeight = 399}, -- 110: silly dance left0010

		{x = 1264, y = 1786, width = 362, height = 399, offsetX = -22, offsetY = 0, offsetWidth = 412, offsetHeight = 399}, -- 111: silly dance right0000
		{x = 1264, y = 1786, width = 362, height = 399, offsetX = -22, offsetY = 0, offsetWidth = 412, offsetHeight = 399}, -- 112: silly dance right0001
		{x = 1636, y = 1786, width = 368, height = 397, offsetX = -21, offsetY = -2, offsetWidth = 412, offsetHeight = 399}, -- 113: silly dance right0002
		{x = 1636, y = 1786, width = 368, height = 397, offsetX = -21, offsetY = -2, offsetWidth = 412, offsetHeight = 399}, -- 114: silly dance right0003
		{x = 2014, y = 1786, width = 373, height = 395, offsetX = -20, offsetY = -4, offsetWidth = 412, offsetHeight = 399}, -- 115: silly dance right0004
		{x = 2397, y = 1786, width = 397, height = 376, offsetX = -15, offsetY = -23, offsetWidth = 412, offsetHeight = 399}, -- 116: silly dance right0005
		{x = 2397, y = 1786, width = 397, height = 376, offsetX = -15, offsetY = -23, offsetWidth = 412, offsetHeight = 399}, -- 117: silly dance right0006
		{x = 2804, y = 1786, width = 411, height = 379, offsetX = -1, offsetY = -20, offsetWidth = 412, offsetHeight = 399}, -- 118: silly dance right0007
		{x = 2804, y = 1786, width = 411, height = 379, offsetX = -1, offsetY = -20, offsetWidth = 412, offsetHeight = 399}, -- 119: silly dance right0008
		{x = 3225, y = 1786, width = 412, height = 379, offsetX = 0, offsetY = -20, offsetWidth = 412, offsetHeight = 399}, -- 120: silly dance right0009
		{x = 3225, y = 1786, width = 412, height = 379, offsetX = 0, offsetY = -20, offsetWidth = 412, offsetHeight = 399} -- 121: silly dance right0010
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["down"] = {start = 1, stop = 8, speed = 24, offsetX = 0, offsetY = 0},
		["right"] = {start = 50, stop = 57, speed = 24, offsetX = 0, offsetY = 0},
		["left"] = {start = 21, stop = 29, speed = 24, offsetX = 0, offsetY = 0},
		["up"] = {start = 75, stop = 83, speed = 24, offsetX = 0, offsetY = 0},
		["danceLeft"] = {start = 100, stop = 110, speed = 24, offsetX = 0, offsetY = 0},
		["danceRight"] = {start = 111, stop = 121, speed = 24, offsetX = 0, offsetY = 0},
		["wave"] = {start = 84, stop = 99, speed = 24, offsetX = 0, offsetY = 0},
		["notice"] = {start = 30, stop = 49, speed = 24, offsetX = 0, offsetY = 0},
		["idle"] = {start = 9, stop = 20, speed = 24, offsetX = 0, offsetY = 0},
		["unwave"] = {start = 58, stop = 74, speed = 24, offsetX = 0, offsetY = 0},
	},
	"anim", -- set to default animation
	false,
	{
		sing_duration = 4,
		isCharacter = true
	}
)
