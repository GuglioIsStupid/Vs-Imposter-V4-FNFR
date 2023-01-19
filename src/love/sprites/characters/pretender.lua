return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("characters/pretender")), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 494, height = 520, offsetX = 0, offsetY = -8, offsetWidth = 507, offsetHeight = 528}, -- 1: Down0000
		{x = 499, y = 0, width = 494, height = 520, offsetX = 0, offsetY = -8, offsetWidth = 507, offsetHeight = 528}, -- 2: Down0001
		{x = 998, y = 0, width = 501, height = 507, offsetX = -5, offsetY = -8, offsetWidth = 507, offsetHeight = 528}, -- 3: Down0002
		{x = 1504, y = 0, width = 501, height = 507, offsetX = -5, offsetY = -8, offsetWidth = 507, offsetHeight = 528}, -- 4: Down0003
		{x = 2010, y = 0, width = 503, height = 507, offsetX = -4, offsetY = -8, offsetWidth = 507, offsetHeight = 528}, -- 5: Down0004
		{x = 2518, y = 0, width = 503, height = 513, offsetX = -4, offsetY = -2, offsetWidth = 507, offsetHeight = 528}, -- 6: Down0005
		{x = 3026, y = 0, width = 504, height = 513, offsetX = -3, offsetY = -2, offsetWidth = 507, offsetHeight = 528}, -- 7: Down0006
		{x = 3535, y = 0, width = 504, height = 515, offsetX = -3, offsetY = 0, offsetWidth = 507, offsetHeight = 528}, -- 8: Down0007
		{x = 4044, y = 0, width = 504, height = 515, offsetX = -3, offsetY = 0, offsetWidth = 507, offsetHeight = 528}, -- 9: Down0008
		{x = 4044, y = 0, width = 504, height = 515, offsetX = -3, offsetY = 0, offsetWidth = 507, offsetHeight = 528}, -- 10: Down0009
		{x = 4044, y = 0, width = 504, height = 515, offsetX = -3, offsetY = 0, offsetWidth = 507, offsetHeight = 528}, -- 11: Down0010
		{x = 4044, y = 0, width = 504, height = 515, offsetX = -3, offsetY = 0, offsetWidth = 507, offsetHeight = 528}, -- 12: Down0011
		{x = 4044, y = 0, width = 504, height = 515, offsetX = -3, offsetY = 0, offsetWidth = 507, offsetHeight = 528}, -- 13: Down0012
		{x = 4044, y = 0, width = 504, height = 515, offsetX = -3, offsetY = 0, offsetWidth = 507, offsetHeight = 528}, -- 14: Down0013

		{x = 4553, y = 0, width = 643, height = 556, offsetX = -15, offsetY = -25, offsetWidth = 658, offsetHeight = 587}, -- 15: Idle0000
		{x = 4553, y = 0, width = 643, height = 556, offsetX = -15, offsetY = -25, offsetWidth = 658, offsetHeight = 587}, -- 16: Idle0001
		{x = 5201, y = 0, width = 646, height = 580, offsetX = -11, offsetY = -7, offsetWidth = 658, offsetHeight = 587}, -- 17: Idle0002
		{x = 5201, y = 0, width = 646, height = 580, offsetX = -11, offsetY = -7, offsetWidth = 658, offsetHeight = 587}, -- 18: Idle0003
		{x = 5852, y = 0, width = 637, height = 581, offsetX = -10, offsetY = -1, offsetWidth = 658, offsetHeight = 587}, -- 19: Idle0004
		{x = 5852, y = 0, width = 637, height = 581, offsetX = -10, offsetY = -1, offsetWidth = 658, offsetHeight = 587}, -- 20: Idle0005
		{x = 6494, y = 0, width = 633, height = 575, offsetX = -5, offsetY = 0, offsetWidth = 658, offsetHeight = 587}, -- 21: Idle0006
		{x = 6494, y = 0, width = 633, height = 575, offsetX = -5, offsetY = 0, offsetWidth = 658, offsetHeight = 587}, -- 22: Idle0007
		{x = 7132, y = 0, width = 631, height = 570, offsetX = -1, offsetY = 0, offsetWidth = 658, offsetHeight = 587}, -- 23: Idle0008
		{x = 7132, y = 0, width = 631, height = 570, offsetX = -1, offsetY = 0, offsetWidth = 658, offsetHeight = 587}, -- 24: Idle0009
		{x = 0, y = 586, width = 630, height = 568, offsetX = 0, offsetY = -2, offsetWidth = 658, offsetHeight = 587}, -- 25: Idle0010
		{x = 0, y = 586, width = 630, height = 568, offsetX = 0, offsetY = -2, offsetWidth = 658, offsetHeight = 587}, -- 26: Idle0011
		{x = 635, y = 586, width = 630, height = 566, offsetX = 0, offsetY = -4, offsetWidth = 658, offsetHeight = 587}, -- 27: Idle0012
		{x = 1270, y = 586, width = 630, height = 563, offsetX = 0, offsetY = -7, offsetWidth = 658, offsetHeight = 587}, -- 28: Idle0013

		{x = 1905, y = 586, width = 569, height = 571, offsetX = -22, offsetY = 0, offsetWidth = 591, offsetHeight = 571}, -- 29: Left0000
		{x = 1905, y = 586, width = 569, height = 571, offsetX = -22, offsetY = 0, offsetWidth = 591, offsetHeight = 571}, -- 30: Left0001
		{x = 2479, y = 586, width = 581, height = 560, offsetX = -1, offsetY = -11, offsetWidth = 591, offsetHeight = 571}, -- 31: Left0002
		{x = 3065, y = 586, width = 581, height = 565, offsetX = -1, offsetY = -6, offsetWidth = 591, offsetHeight = 571}, -- 32: Left0003
		{x = 3651, y = 586, width = 582, height = 565, offsetX = 0, offsetY = -6, offsetWidth = 591, offsetHeight = 571}, -- 33: Left0004
		{x = 4238, y = 586, width = 582, height = 564, offsetX = 0, offsetY = -7, offsetWidth = 591, offsetHeight = 571}, -- 34: Left0005
		{x = 4825, y = 586, width = 582, height = 564, offsetX = 0, offsetY = -7, offsetWidth = 591, offsetHeight = 571}, -- 35: Left0006
		{x = 5412, y = 586, width = 582, height = 558, offsetX = 0, offsetY = -13, offsetWidth = 591, offsetHeight = 571}, -- 36: Left0007
		{x = 5999, y = 586, width = 582, height = 558, offsetX = 0, offsetY = -13, offsetWidth = 591, offsetHeight = 571}, -- 37: Left0008
		{x = 6586, y = 586, width = 582, height = 556, offsetX = 0, offsetY = -15, offsetWidth = 591, offsetHeight = 571}, -- 38: Left0009
		{x = 7173, y = 586, width = 582, height = 556, offsetX = 0, offsetY = -15, offsetWidth = 591, offsetHeight = 571}, -- 39: Left0010
		{x = 7173, y = 586, width = 582, height = 556, offsetX = 0, offsetY = -15, offsetWidth = 591, offsetHeight = 571}, -- 40: Left0011
		{x = 7173, y = 586, width = 582, height = 556, offsetX = 0, offsetY = -15, offsetWidth = 591, offsetHeight = 571}, -- 41: Left0012
		{x = 7173, y = 586, width = 582, height = 556, offsetX = 0, offsetY = -15, offsetWidth = 591, offsetHeight = 571}, -- 42: Left0013
		{x = 7173, y = 586, width = 582, height = 556, offsetX = 0, offsetY = -15, offsetWidth = 591, offsetHeight = 571}, -- 43: Left0014
		{x = 7173, y = 586, width = 582, height = 556, offsetX = 0, offsetY = -15, offsetWidth = 591, offsetHeight = 571}, -- 44: Left0015
		{x = 7173, y = 586, width = 582, height = 556, offsetX = 0, offsetY = -15, offsetWidth = 591, offsetHeight = 571}, -- 45: Left0016
		{x = 7173, y = 586, width = 582, height = 556, offsetX = 0, offsetY = -15, offsetWidth = 591, offsetHeight = 571}, -- 46: Left0017
		{x = 7173, y = 586, width = 582, height = 556, offsetX = 0, offsetY = -15, offsetWidth = 591, offsetHeight = 571}, -- 47: Left0018
		{x = 7173, y = 586, width = 582, height = 556, offsetX = 0, offsetY = -15, offsetWidth = 591, offsetHeight = 571}, -- 48: Left0019
		{x = 7173, y = 586, width = 582, height = 556, offsetX = 0, offsetY = -15, offsetWidth = 591, offsetHeight = 571}, -- 49: Left0020
		{x = 7173, y = 586, width = 582, height = 556, offsetX = 0, offsetY = -15, offsetWidth = 591, offsetHeight = 571}, -- 50: Left0021
		{x = 7173, y = 586, width = 582, height = 556, offsetX = 0, offsetY = -15, offsetWidth = 591, offsetHeight = 571}, -- 51: Left0022
		{x = 7173, y = 586, width = 582, height = 556, offsetX = 0, offsetY = -15, offsetWidth = 591, offsetHeight = 571}, -- 52: Left0023
		{x = 7173, y = 586, width = 582, height = 556, offsetX = 0, offsetY = -15, offsetWidth = 591, offsetHeight = 571}, -- 53: Left0024
		{x = 7173, y = 586, width = 582, height = 556, offsetX = 0, offsetY = -15, offsetWidth = 591, offsetHeight = 571}, -- 54: Left0025
		{x = 7173, y = 586, width = 582, height = 556, offsetX = 0, offsetY = -15, offsetWidth = 591, offsetHeight = 571}, -- 55: Left0026
		{x = 7173, y = 586, width = 582, height = 556, offsetX = 0, offsetY = -15, offsetWidth = 591, offsetHeight = 571}, -- 56: Left0027
		{x = 7173, y = 586, width = 582, height = 556, offsetX = 0, offsetY = -15, offsetWidth = 591, offsetHeight = 571}, -- 57: Left0028
		{x = 7173, y = 586, width = 582, height = 556, offsetX = 0, offsetY = -15, offsetWidth = 591, offsetHeight = 571}, -- 58: Left0029

		{x = 0, y = 1162, width = 658, height = 560, offsetX = 0, offsetY = 0, offsetWidth = 688, offsetHeight = 560}, -- 59: Right0000
		{x = 663, y = 1162, width = 658, height = 547, offsetX = 0, offsetY = -13, offsetWidth = 688, offsetHeight = 560}, -- 60: Right0001
		{x = 1326, y = 1162, width = 665, height = 545, offsetX = -23, offsetY = -15, offsetWidth = 688, offsetHeight = 560}, -- 61: Right0002
		{x = 1326, y = 1162, width = 665, height = 545, offsetX = -23, offsetY = -15, offsetWidth = 688, offsetHeight = 560}, -- 62: Right0003
		{x = 1996, y = 1162, width = 665, height = 544, offsetX = -23, offsetY = -16, offsetWidth = 688, offsetHeight = 560}, -- 63: Right0004
		{x = 2666, y = 1162, width = 665, height = 544, offsetX = -23, offsetY = -16, offsetWidth = 688, offsetHeight = 560}, -- 64: Right0005
		{x = 3336, y = 1162, width = 665, height = 551, offsetX = -23, offsetY = -9, offsetWidth = 688, offsetHeight = 560}, -- 65: Right0006
		{x = 4006, y = 1162, width = 665, height = 551, offsetX = -23, offsetY = -9, offsetWidth = 688, offsetHeight = 560}, -- 66: Right0007
		{x = 4676, y = 1162, width = 665, height = 553, offsetX = -23, offsetY = -7, offsetWidth = 688, offsetHeight = 560}, -- 67: Right0008
		{x = 5346, y = 1162, width = 665, height = 553, offsetX = -23, offsetY = -7, offsetWidth = 688, offsetHeight = 560}, -- 68: Right0009
		{x = 6016, y = 1162, width = 665, height = 551, offsetX = -23, offsetY = -9, offsetWidth = 688, offsetHeight = 560}, -- 69: Right0010
		{x = 6016, y = 1162, width = 665, height = 551, offsetX = -23, offsetY = -9, offsetWidth = 688, offsetHeight = 560}, -- 70: Right0011
		{x = 6016, y = 1162, width = 665, height = 551, offsetX = -23, offsetY = -9, offsetWidth = 688, offsetHeight = 560}, -- 71: Right0012
		{x = 6016, y = 1162, width = 665, height = 551, offsetX = -23, offsetY = -9, offsetWidth = 688, offsetHeight = 560}, -- 72: Right0013
		{x = 6016, y = 1162, width = 665, height = 551, offsetX = -23, offsetY = -9, offsetWidth = 688, offsetHeight = 560}, -- 73: Right0014
		{x = 6016, y = 1162, width = 665, height = 551, offsetX = -23, offsetY = -9, offsetWidth = 688, offsetHeight = 560}, -- 74: Right0015
		{x = 6016, y = 1162, width = 665, height = 551, offsetX = -23, offsetY = -9, offsetWidth = 688, offsetHeight = 560}, -- 75: Right0016
		{x = 6016, y = 1162, width = 665, height = 551, offsetX = -23, offsetY = -9, offsetWidth = 688, offsetHeight = 560}, -- 76: Right0017
		{x = 6016, y = 1162, width = 665, height = 551, offsetX = -23, offsetY = -9, offsetWidth = 688, offsetHeight = 560}, -- 77: Right0018
		{x = 6016, y = 1162, width = 665, height = 551, offsetX = -23, offsetY = -9, offsetWidth = 688, offsetHeight = 560}, -- 78: Right0019

		{x = 6686, y = 1162, width = 533, height = 469, offsetX = 0, offsetY = -8, offsetWidth = 533, offsetHeight = 477}, -- 79: Up0000
		{x = 6686, y = 1162, width = 533, height = 469, offsetX = 0, offsetY = -8, offsetWidth = 533, offsetHeight = 477}, -- 80: Up0001
		{x = 7224, y = 1162, width = 521, height = 474, offsetX = -9, offsetY = -3, offsetWidth = 533, offsetHeight = 477}, -- 81: Up0002
		{x = 7224, y = 1162, width = 521, height = 474, offsetX = -9, offsetY = -3, offsetWidth = 533, offsetHeight = 477}, -- 82: Up0003
		{x = 0, y = 1727, width = 525, height = 474, offsetX = -7, offsetY = -3, offsetWidth = 533, offsetHeight = 477}, -- 83: Up0004
		{x = 0, y = 1727, width = 525, height = 474, offsetX = -7, offsetY = -3, offsetWidth = 533, offsetHeight = 477}, -- 84: Up0005
		{x = 530, y = 1727, width = 526, height = 477, offsetX = -6, offsetY = 0, offsetWidth = 533, offsetHeight = 477}, -- 85: Up0006
		{x = 530, y = 1727, width = 526, height = 477, offsetX = -6, offsetY = 0, offsetWidth = 533, offsetHeight = 477}, -- 86: Up0007
		{x = 1061, y = 1727, width = 526, height = 477, offsetX = -6, offsetY = 0, offsetWidth = 533, offsetHeight = 477}, -- 87: Up0008
		{x = 1061, y = 1727, width = 526, height = 477, offsetX = -6, offsetY = 0, offsetWidth = 533, offsetHeight = 477}, -- 88: Up0009
		{x = 1061, y = 1727, width = 526, height = 477, offsetX = -6, offsetY = 0, offsetWidth = 533, offsetHeight = 477}, -- 89: Up0010

		{x = 1592, y = 1727, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 90: death confirm0000
		{x = 2292, y = 1727, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 91: death confirm0001
		{x = 2292, y = 1727, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 92: death confirm0002
		{x = 2992, y = 1727, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 93: death confirm0003
		{x = 2992, y = 1727, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 94: death confirm0004
		{x = 3692, y = 1727, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 95: death confirm0005
		{x = 4392, y = 1727, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 96: death confirm0006
		{x = 5092, y = 1727, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 97: death confirm0007
		{x = 5792, y = 1727, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 98: death confirm0008
		{x = 6492, y = 1727, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 99: death confirm0009
		{x = 7192, y = 1727, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 100: death confirm0010
		{x = 0, y = 2298, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 101: death confirm0011
		{x = 700, y = 2298, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 102: death confirm0012
		{x = 1400, y = 2298, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 103: death confirm0013
		{x = 2100, y = 2298, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 104: death confirm0014
		{x = 2800, y = 2298, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 105: death confirm0015
		{x = 3500, y = 2298, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 106: death confirm0016
		{x = 4200, y = 2298, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 107: death confirm0017
		{x = 4900, y = 2298, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 108: death confirm0018
		{x = 5600, y = 2298, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 109: death confirm0019
		{x = 6300, y = 2298, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 110: death confirm0020
		{x = 7000, y = 2298, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 111: death confirm0021
		{x = 0, y = 2869, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 112: death confirm0022
		{x = 700, y = 2869, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 113: death confirm0023
		{x = 1400, y = 2869, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 114: death confirm0024
		{x = 2100, y = 2869, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 115: death confirm0025
		{x = 2800, y = 2869, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 116: death confirm0026
		{x = 3500, y = 2869, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 117: death confirm0027
		{x = 4200, y = 2869, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 118: death confirm0028
		{x = 4900, y = 2869, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 119: death confirm0029
		{x = 5600, y = 2869, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 120: death confirm0030
		{x = 6300, y = 2869, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 121: death confirm0031
		{x = 7000, y = 2869, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 122: death confirm0032
		{x = 7000, y = 2869, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 123: death confirm0033
		{x = 7000, y = 2869, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 124: death confirm0034
		{x = 7000, y = 2869, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 125: death confirm0035
		{x = 7000, y = 2869, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 126: death confirm0036
		{x = 7000, y = 2869, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 127: death confirm0037
		{x = 7000, y = 2869, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 128: death confirm0038
		{x = 7000, y = 2869, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 129: death confirm0039
		{x = 7000, y = 2869, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 130: death confirm0040
		{x = 7000, y = 2869, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 131: death confirm0041
		{x = 7000, y = 2869, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 132: death confirm0042
		{x = 7000, y = 2869, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 133: death confirm0043
		{x = 7000, y = 2869, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 134: death confirm0044
		{x = 7000, y = 2869, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 135: death confirm0045
		{x = 7000, y = 2869, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 136: death confirm0046
		{x = 7000, y = 2869, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 137: death confirm0047
		{x = 7000, y = 2869, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 138: death confirm0048
		{x = 7000, y = 2869, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 139: death confirm0049
		{x = 0, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 140: death confirm0050
		{x = 0, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 141: death confirm0051
		{x = 0, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 142: death confirm0052
		{x = 0, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 143: death confirm0053
		{x = 0, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 144: death confirm0054
		{x = 0, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 145: death confirm0055
		{x = 0, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 146: death confirm0056
		{x = 0, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 147: death confirm0057
		{x = 0, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 148: death confirm0058
		{x = 0, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 149: death confirm0059
		{x = 0, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 150: death confirm0060
		{x = 0, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 151: death confirm0061
		{x = 0, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 152: death confirm0062
		{x = 0, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 153: death confirm0063
		{x = 0, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 154: death confirm0064
		{x = 0, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 155: death confirm0065
		{x = 0, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 156: death confirm0066
		{x = 0, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 157: death confirm0067
		{x = 0, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 158: death confirm0068

		{x = 1592, y = 1727, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 159: death loop0000
		{x = 700, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 160: death loop0001
		{x = 700, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 161: death loop0002
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 162: death loop0003
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 163: death loop0004
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 164: death loop0005
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 165: death loop0006
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 166: death loop0007
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 167: death loop0008
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 168: death loop0009
		{x = 2100, y = 3440, width = 695, height = 559, offsetX = 0, offsetY = 0, offsetWidth = 695, offsetHeight = 566}, -- 169: death loop0010
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 170: death loop0011
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 171: death loop0012
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 172: death loop0013
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 173: death loop0014
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 174: death loop0015
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 175: death loop0016
		{x = 1592, y = 1727, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 176: death loop0017
		{x = 700, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 177: death loop0018
		{x = 700, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 178: death loop0019
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 179: death loop0020
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 180: death loop0021
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 181: death loop0022
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 182: death loop0023
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 183: death loop0024
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 184: death loop0025
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 185: death loop0026
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 186: death loop0027
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 187: death loop0028
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 188: death loop0029
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 189: death loop0030
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 190: death loop0031
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 191: death loop0032
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 192: death loop0033

		{x = 0, y = 0, width = 494, height = 520, offsetX = 0, offsetY = -11, offsetWidth = 507, offsetHeight = 528}, -- 193: mdown0000
		{x = 0, y = 0, width = 494, height = 520, offsetX = 0, offsetY = -11, offsetWidth = 507, offsetHeight = 528}, -- 194: mdown0001
		{x = 2800, y = 3440, width = 481, height = 520, offsetX = -7, offsetY = 0, offsetWidth = 494, offsetHeight = 531}, -- 195: mdown0002
		{x = 2800, y = 3440, width = 481, height = 520, offsetX = -7, offsetY = 0, offsetWidth = 494, offsetHeight = 531}, -- 196: mdown0003
		{x = 3286, y = 3440, width = 486, height = 511, offsetX = -4, offsetY = -9, offsetWidth = 494, offsetHeight = 531}, -- 197: mdown0004
		{x = 3286, y = 3440, width = 486, height = 511, offsetX = -4, offsetY = -9, offsetWidth = 494, offsetHeight = 531}, -- 198: mdown0005
		{x = 3286, y = 3440, width = 486, height = 511, offsetX = -4, offsetY = -9, offsetWidth = 494, offsetHeight = 531}, -- 199: mdown0006
		{x = 3286, y = 3440, width = 486, height = 511, offsetX = -4, offsetY = -9, offsetWidth = 494, offsetHeight = 531}, -- 200: mdown0007
		{x = 3286, y = 3440, width = 486, height = 511, offsetX = -4, offsetY = -9, offsetWidth = 494, offsetHeight = 531}, -- 201: mdown0008
		{x = 3286, y = 3440, width = 486, height = 511, offsetX = -4, offsetY = -9, offsetWidth = 494, offsetHeight = 531}, -- 202: mdown0009
		{x = 3286, y = 3440, width = 486, height = 511, offsetX = -4, offsetY = -9, offsetWidth = 494, offsetHeight = 531}, -- 203: mdown0010
		{x = 3286, y = 3440, width = 486, height = 511, offsetX = -4, offsetY = -9, offsetWidth = 494, offsetHeight = 531}, -- 204: mdown0011

		{x = 3777, y = 3440, width = 569, height = 571, offsetX = 0, offsetY = 0, offsetWidth = 592, offsetHeight = 571}, -- 205: mleft0000
		{x = 3777, y = 3440, width = 569, height = 571, offsetX = 0, offsetY = 0, offsetWidth = 592, offsetHeight = 571}, -- 206: mleft0001
		{x = 4351, y = 3440, width = 559, height = 457, offsetX = -31, offsetY = -112, offsetWidth = 592, offsetHeight = 571}, -- 207: mleft0002
		{x = 4351, y = 3440, width = 559, height = 457, offsetX = -31, offsetY = -112, offsetWidth = 592, offsetHeight = 571}, -- 208: mleft0003
		{x = 4915, y = 3440, width = 560, height = 453, offsetX = -32, offsetY = -116, offsetWidth = 592, offsetHeight = 571}, -- 209: mleft0004
		{x = 4915, y = 3440, width = 560, height = 453, offsetX = -32, offsetY = -116, offsetWidth = 592, offsetHeight = 571}, -- 210: mleft0005
		{x = 4915, y = 3440, width = 560, height = 453, offsetX = -32, offsetY = -116, offsetWidth = 592, offsetHeight = 571}, -- 211: mleft0006
		{x = 4915, y = 3440, width = 560, height = 453, offsetX = -32, offsetY = -116, offsetWidth = 592, offsetHeight = 571}, -- 212: mleft0007
		{x = 4915, y = 3440, width = 560, height = 453, offsetX = -32, offsetY = -116, offsetWidth = 592, offsetHeight = 571}, -- 213: mleft0008
		{x = 4915, y = 3440, width = 560, height = 453, offsetX = -32, offsetY = -116, offsetWidth = 592, offsetHeight = 571}, -- 214: mleft0009
		{x = 4915, y = 3440, width = 560, height = 453, offsetX = -32, offsetY = -116, offsetWidth = 592, offsetHeight = 571}, -- 215: mleft0010
		{x = 4915, y = 3440, width = 560, height = 453, offsetX = -32, offsetY = -116, offsetWidth = 592, offsetHeight = 571}, -- 216: mleft0011
		{x = 4915, y = 3440, width = 560, height = 453, offsetX = -32, offsetY = -116, offsetWidth = 592, offsetHeight = 571}, -- 217: mleft0012
		{x = 4915, y = 3440, width = 560, height = 453, offsetX = -32, offsetY = -116, offsetWidth = 592, offsetHeight = 571}, -- 218: mleft0013
		{x = 4915, y = 3440, width = 560, height = 453, offsetX = -32, offsetY = -116, offsetWidth = 592, offsetHeight = 571}, -- 219: mleft0014
		{x = 4915, y = 3440, width = 560, height = 453, offsetX = -32, offsetY = -116, offsetWidth = 592, offsetHeight = 571}, -- 220: mleft0015
		{x = 4915, y = 3440, width = 560, height = 453, offsetX = -32, offsetY = -116, offsetWidth = 592, offsetHeight = 571}, -- 221: mleft0016
		{x = 4915, y = 3440, width = 560, height = 453, offsetX = -32, offsetY = -116, offsetWidth = 592, offsetHeight = 571}, -- 222: mleft0017
		{x = 4915, y = 3440, width = 560, height = 453, offsetX = -32, offsetY = -116, offsetWidth = 592, offsetHeight = 571}, -- 223: mleft0018
		{x = 4915, y = 3440, width = 560, height = 453, offsetX = -32, offsetY = -116, offsetWidth = 592, offsetHeight = 571}, -- 224: mleft0019
		{x = 4915, y = 3440, width = 560, height = 453, offsetX = -32, offsetY = -116, offsetWidth = 592, offsetHeight = 571}, -- 225: mleft0020
		{x = 4915, y = 3440, width = 560, height = 453, offsetX = -32, offsetY = -116, offsetWidth = 592, offsetHeight = 571}, -- 226: mleft0021
		{x = 4915, y = 3440, width = 560, height = 453, offsetX = -32, offsetY = -116, offsetWidth = 592, offsetHeight = 571}, -- 227: mleft0022
		{x = 4915, y = 3440, width = 560, height = 453, offsetX = -32, offsetY = -116, offsetWidth = 592, offsetHeight = 571}, -- 228: mleft0023
		{x = 4915, y = 3440, width = 560, height = 453, offsetX = -32, offsetY = -116, offsetWidth = 592, offsetHeight = 571}, -- 229: mleft0024
		{x = 4915, y = 3440, width = 560, height = 453, offsetX = -32, offsetY = -116, offsetWidth = 592, offsetHeight = 571}, -- 230: mleft0025
		{x = 4915, y = 3440, width = 560, height = 453, offsetX = -32, offsetY = -116, offsetWidth = 592, offsetHeight = 571}, -- 231: mleft0026
		{x = 4915, y = 3440, width = 560, height = 453, offsetX = -32, offsetY = -116, offsetWidth = 592, offsetHeight = 571}, -- 232: mleft0027
		{x = 4915, y = 3440, width = 560, height = 453, offsetX = -32, offsetY = -116, offsetWidth = 592, offsetHeight = 571}, -- 233: mleft0028
		{x = 4915, y = 3440, width = 560, height = 453, offsetX = -32, offsetY = -116, offsetWidth = 592, offsetHeight = 571}, -- 234: mleft0029

		{x = 0, y = 1162, width = 658, height = 560, offsetX = 0, offsetY = 0, offsetWidth = 688, offsetHeight = 560}, -- 235: mright0000
		{x = 0, y = 1162, width = 658, height = 560, offsetX = 0, offsetY = 0, offsetWidth = 688, offsetHeight = 560}, -- 236: mright0001
		{x = 5480, y = 3440, width = 616, height = 550, offsetX = -41, offsetY = -10, offsetWidth = 660, offsetHeight = 561}, -- 237: mright0002
		{x = 5480, y = 3440, width = 616, height = 550, offsetX = -41, offsetY = -10, offsetWidth = 660, offsetHeight = 561}, -- 238: mright0003
		{x = 6101, y = 3440, width = 617, height = 550, offsetX = -43, offsetY = -11, offsetWidth = 660, offsetHeight = 561}, -- 239: mright0004
		{x = 6101, y = 3440, width = 617, height = 550, offsetX = -43, offsetY = -11, offsetWidth = 660, offsetHeight = 561}, -- 240: mright0005
		{x = 6101, y = 3440, width = 617, height = 550, offsetX = -43, offsetY = -11, offsetWidth = 660, offsetHeight = 561}, -- 241: mright0006
		{x = 6101, y = 3440, width = 617, height = 550, offsetX = -43, offsetY = -11, offsetWidth = 660, offsetHeight = 561}, -- 242: mright0007
		{x = 6101, y = 3440, width = 617, height = 550, offsetX = -43, offsetY = -11, offsetWidth = 660, offsetHeight = 561}, -- 243: mright0008
		{x = 6101, y = 3440, width = 617, height = 550, offsetX = -43, offsetY = -11, offsetWidth = 660, offsetHeight = 561}, -- 244: mright0009

		{x = 6686, y = 1162, width = 533, height = 469, offsetX = 0, offsetY = 0, offsetWidth = 533, offsetHeight = 477}, -- 245: mup0000
		{x = 6686, y = 1162, width = 533, height = 469, offsetX = 0, offsetY = 0, offsetWidth = 533, offsetHeight = 477}, -- 246: mup0001
		{x = 6723, y = 3440, width = 518, height = 433, offsetX = -9, offsetY = -36, offsetWidth = 533, offsetHeight = 469}, -- 247: mup0002
		{x = 6723, y = 3440, width = 518, height = 433, offsetX = -9, offsetY = -36, offsetWidth = 533, offsetHeight = 469}, -- 248: mup0003
		{x = 7246, y = 3440, width = 513, height = 436, offsetX = -11, offsetY = -33, offsetWidth = 533, offsetHeight = 469}, -- 249: mup0004
		{x = 7246, y = 3440, width = 513, height = 436, offsetX = -11, offsetY = -33, offsetWidth = 533, offsetHeight = 469}, -- 250: mup0005
		{x = 7246, y = 3440, width = 513, height = 436, offsetX = -11, offsetY = -33, offsetWidth = 533, offsetHeight = 469}, -- 251: mup0006
		{x = 7246, y = 3440, width = 513, height = 436, offsetX = -11, offsetY = -33, offsetWidth = 533, offsetHeight = 469}, -- 252: mup0007
		{x = 7246, y = 3440, width = 513, height = 436, offsetX = -11, offsetY = -33, offsetWidth = 533, offsetHeight = 469}, -- 253: mup0008
		{x = 7246, y = 3440, width = 513, height = 436, offsetX = -11, offsetY = -33, offsetWidth = 533, offsetHeight = 469}, -- 254: mup0009
		{x = 7246, y = 3440, width = 513, height = 436, offsetX = -11, offsetY = -33, offsetWidth = 533, offsetHeight = 469}, -- 255: mup0010

		{x = 0, y = 4016, width = 703, height = 537, offsetX = -5, offsetY = -32, offsetWidth = 1368, offsetHeight = 580}, -- 256: pink dies0000
		{x = 708, y = 4016, width = 703, height = 569, offsetX = -5, offsetY = 0, offsetWidth = 1368, offsetHeight = 580}, -- 257: pink dies0001
		{x = 1416, y = 4016, width = 712, height = 569, offsetX = -1, offsetY = 0, offsetWidth = 1368, offsetHeight = 580}, -- 258: pink dies0002
		{x = 2133, y = 4016, width = 712, height = 559, offsetX = -1, offsetY = -10, offsetWidth = 1368, offsetHeight = 580}, -- 259: pink dies0003
		{x = 2133, y = 4016, width = 712, height = 559, offsetX = -1, offsetY = -10, offsetWidth = 1368, offsetHeight = 580}, -- 260: pink dies0004
		{x = 2850, y = 4016, width = 712, height = 558, offsetX = -1, offsetY = -11, offsetWidth = 1368, offsetHeight = 580}, -- 261: pink dies0005
		{x = 2850, y = 4016, width = 712, height = 558, offsetX = -1, offsetY = -11, offsetWidth = 1368, offsetHeight = 580}, -- 262: pink dies0006
		{x = 3567, y = 4016, width = 712, height = 558, offsetX = -1, offsetY = -11, offsetWidth = 1368, offsetHeight = 580}, -- 263: pink dies0007
		{x = 3567, y = 4016, width = 712, height = 558, offsetX = -1, offsetY = -11, offsetWidth = 1368, offsetHeight = 580}, -- 264: pink dies0008
		{x = 3567, y = 4016, width = 712, height = 558, offsetX = -1, offsetY = -11, offsetWidth = 1368, offsetHeight = 580}, -- 265: pink dies0009
		{x = 3567, y = 4016, width = 712, height = 558, offsetX = -1, offsetY = -11, offsetWidth = 1368, offsetHeight = 580}, -- 266: pink dies0010
		{x = 3567, y = 4016, width = 712, height = 558, offsetX = -1, offsetY = -11, offsetWidth = 1368, offsetHeight = 580}, -- 267: pink dies0011
		{x = 3567, y = 4016, width = 712, height = 558, offsetX = -1, offsetY = -11, offsetWidth = 1368, offsetHeight = 580}, -- 268: pink dies0012
		{x = 3567, y = 4016, width = 712, height = 558, offsetX = -1, offsetY = -11, offsetWidth = 1368, offsetHeight = 580}, -- 269: pink dies0013
		{x = 3567, y = 4016, width = 712, height = 558, offsetX = -1, offsetY = -11, offsetWidth = 1368, offsetHeight = 580}, -- 270: pink dies0014
		{x = 3567, y = 4016, width = 712, height = 558, offsetX = -1, offsetY = -11, offsetWidth = 1368, offsetHeight = 580}, -- 271: pink dies0015
		{x = 3567, y = 4016, width = 712, height = 558, offsetX = -1, offsetY = -11, offsetWidth = 1368, offsetHeight = 580}, -- 272: pink dies0016
		{x = 4284, y = 4016, width = 712, height = 560, offsetX = -1, offsetY = -9, offsetWidth = 1368, offsetHeight = 580}, -- 273: pink dies0017
		{x = 4284, y = 4016, width = 712, height = 560, offsetX = -1, offsetY = -9, offsetWidth = 1368, offsetHeight = 580}, -- 274: pink dies0018
		{x = 5001, y = 4016, width = 712, height = 568, offsetX = 0, offsetY = -8, offsetWidth = 1368, offsetHeight = 580}, -- 275: pink dies0019
		{x = 5718, y = 4016, width = 712, height = 568, offsetX = 0, offsetY = -8, offsetWidth = 1368, offsetHeight = 580}, -- 276: pink dies0020
		{x = 6435, y = 4016, width = 711, height = 563, offsetX = 0, offsetY = -13, offsetWidth = 1368, offsetHeight = 580}, -- 277: pink dies0021
		{x = 7151, y = 4016, width = 711, height = 563, offsetX = 0, offsetY = -13, offsetWidth = 1368, offsetHeight = 580}, -- 278: pink dies0022
		{x = 0, y = 4590, width = 710, height = 560, offsetX = 0, offsetY = -15, offsetWidth = 1368, offsetHeight = 580}, -- 279: pink dies0023
		{x = 715, y = 4590, width = 1368, height = 560, offsetX = 0, offsetY = -15, offsetWidth = 1368, offsetHeight = 580}, -- 280: pink dies0024
		{x = 2088, y = 4590, width = 843, height = 560, offsetX = 0, offsetY = -15, offsetWidth = 1368, offsetHeight = 580}, -- 281: pink dies0025
		{x = 2936, y = 4590, width = 688, height = 563, offsetX = -3, offsetY = -16, offsetWidth = 1368, offsetHeight = 580}, -- 282: pink dies0026
		{x = 2936, y = 4590, width = 688, height = 563, offsetX = -3, offsetY = -16, offsetWidth = 1368, offsetHeight = 580}, -- 283: pink dies0027
		{x = 3629, y = 4590, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 1368, offsetHeight = 580}, -- 284: pink dies0028
		{x = 3629, y = 4590, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 1368, offsetHeight = 580}, -- 285: pink dies0029
		{x = 4329, y = 4590, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 1368, offsetHeight = 580}, -- 286: pink dies0030
		{x = 4329, y = 4590, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 1368, offsetHeight = 580}, -- 287: pink dies0031
		{x = 5029, y = 4590, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 1368, offsetHeight = 580}, -- 288: pink dies0032
		{x = 5029, y = 4590, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 1368, offsetHeight = 580}, -- 289: pink dies0033
		{x = 5729, y = 4590, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 1368, offsetHeight = 580}, -- 290: pink dies0034
		{x = 5729, y = 4590, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 1368, offsetHeight = 580}, -- 291: pink dies0035
		{x = 5729, y = 4590, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 1368, offsetHeight = 580}, -- 292: pink dies0036
		{x = 5729, y = 4590, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 1368, offsetHeight = 580}, -- 293: pink dies0037
		{x = 5729, y = 4590, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 1368, offsetHeight = 580}, -- 294: pink dies0038
		{x = 5729, y = 4590, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 1368, offsetHeight = 580}, -- 295: pink dies0039
		{x = 5729, y = 4590, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 1368, offsetHeight = 580}, -- 296: pink dies0040
		{x = 5729, y = 4590, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 1368, offsetHeight = 580}, -- 297: pink dies0041
		{x = 5729, y = 4590, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 1368, offsetHeight = 580}, -- 298: pink dies0042
		{x = 5729, y = 4590, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 1368, offsetHeight = 580}, -- 299: pink dies0043
		{x = 5729, y = 4590, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 1368, offsetHeight = 580}, -- 300: pink dies0044
		{x = 5729, y = 4590, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 1368, offsetHeight = 580}, -- 301: pink dies0045
		{x = 6429, y = 4590, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 1368, offsetHeight = 580}, -- 302: pink dies0046
		{x = 7129, y = 4590, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 1368, offsetHeight = 580}, -- 303: pink dies0047
		{x = 0, y = 5161, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 1368, offsetHeight = 580}, -- 304: pink dies0048
		{x = 700, y = 5161, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 1368, offsetHeight = 580}, -- 305: pink dies0049
		{x = 1400, y = 5161, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 1368, offsetHeight = 580}, -- 306: pink dies0050
		{x = 2100, y = 5161, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 1368, offsetHeight = 580}, -- 307: pink dies0051
		{x = 2800, y = 5161, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 1368, offsetHeight = 580}, -- 308: pink dies0052
		{x = 3500, y = 5161, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 1368, offsetHeight = 580}, -- 309: pink dies0053
		{x = 4200, y = 5161, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 1368, offsetHeight = 580}, -- 310: pink dies0054
		{x = 4900, y = 5161, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 1368, offsetHeight = 580}, -- 311: pink dies0055
		{x = 5600, y = 5161, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 1368, offsetHeight = 580}, -- 312: pink dies0056
		{x = 6300, y = 5161, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 1368, offsetHeight = 580}, -- 313: pink dies0057
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 695, offsetHeight = 566}, -- 314: pink dies0058
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 695, offsetHeight = 566}, -- 315: pink dies0059
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 695, offsetHeight = 566}, -- 316: pink dies0060
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 695, offsetHeight = 566}, -- 317: pink dies0061
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 695, offsetHeight = 566}, -- 318: pink dies0062
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 695, offsetHeight = 566}, -- 319: pink dies0063
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 695, offsetHeight = 566}, -- 320: pink dies0064
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 695, offsetHeight = 566}, -- 321: pink dies0065
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 695, offsetHeight = 566}, -- 322: pink dies0066
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 695, offsetHeight = 566}, -- 323: pink dies0067
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 695, offsetHeight = 566}, -- 324: pink dies0068
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 695, offsetHeight = 566}, -- 325: pink dies0069
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 695, offsetHeight = 566}, -- 326: pink dies0070
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 695, offsetHeight = 566}, -- 327: pink dies0071
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 695, offsetHeight = 566}, -- 328: pink dies0072
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 695, offsetHeight = 566}, -- 329: pink dies0073
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 695, offsetHeight = 566}, -- 330: pink dies0074
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 695, offsetHeight = 566}, -- 331: pink dies0075
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 695, offsetHeight = 566}, -- 332: pink dies0076
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 695, offsetHeight = 566}, -- 333: pink dies0077
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 695, offsetHeight = 566}, -- 334: pink dies0078
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 695, offsetHeight = 566}, -- 335: pink dies0079
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 695, offsetHeight = 566}, -- 336: pink dies0080
		{x = 1400, y = 3440, width = 695, height = 566, offsetX = -1, offsetY = -14, offsetWidth = 695, offsetHeight = 566} -- 337: pink dies0081
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["left"] = {start = 29, stop = 58, speed = 24, offsetX = 7, offsetY = 12},
		["down"] = {start = 1, stop = 14, speed = 24, offsetX = 15, offsetY = -23
		["up"] = {start = 79, stop = 89, speed = 24, offsetX = 39, offsetY = -34},
		["right"] = {start = 59, stop = 78, speed = 24, offsetX = 151, offsetY = 5},
		["idle"] = {start = 15, stop = 28, speed = 24, offsetX = 0, offsetY = 0},
		["miss left"] = {start = 205, stop = 234, speed = 24, offsetX = -5, offsetY = 10},
		["miss down"] = {start = 193, stop = 204, speed = 24, offsetX = 22, offsetY = -22},
		["miss up"] = {start = 245, stop = 255, speed = 24, offsetX = 28, offsetY = -34},
		["miss right"] = {start = 235, stop = 244, speed = 24, offsetX = 168, offsetY = 4},
		["dies"] = {start = 256, stop = 337, speed = 24, offsetX = 0, offsetY = 0},
		["dead confirm"] = {start = 90, stop = 158, speed = 24, offsetX = 74, offsetY = 1},
		["dead loop"] = {start = 159, stop = 192, speed = 24, offsetX = 68, offsetY = 6},

	},
	"idle", -- set to default animation
	false -- If the sprite repeats
)
