return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("characters/esculent")), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 755, height = 639, offsetX = -95, offsetY = -189, offsetWidth = 851, offsetHeight = 829}, -- 1: down0000
		{x = 760, y = 0, width = 749, height = 631, offsetX = -102, offsetY = -198, offsetWidth = 851, offsetHeight = 829}, -- 2: down0001
		{x = 1514, y = 0, width = 795, height = 654, offsetX = 0, offsetY = -89, offsetWidth = 851, offsetHeight = 829}, -- 3: down0002
		{x = 1514, y = 0, width = 795, height = 654, offsetX = 0, offsetY = -89, offsetWidth = 851, offsetHeight = 829}, -- 4: down0003
		{x = 2314, y = 0, width = 722, height = 768, offsetX = -30, offsetY = -6, offsetWidth = 851, offsetHeight = 829}, -- 5: down0004
		{x = 2314, y = 0, width = 722, height = 768, offsetX = -30, offsetY = -6, offsetWidth = 851, offsetHeight = 829}, -- 6: down0005
		{x = 3041, y = 0, width = 679, height = 798, offsetX = -51, offsetY = 0, offsetWidth = 851, offsetHeight = 829}, -- 7: down0006
		{x = 3041, y = 0, width = 679, height = 798, offsetX = -51, offsetY = 0, offsetWidth = 851, offsetHeight = 829}, -- 8: down0007
		{x = 3725, y = 0, width = 654, height = 802, offsetX = -74, offsetY = 0, offsetWidth = 851, offsetHeight = 829}, -- 9: down0008
		{x = 3725, y = 0, width = 654, height = 802, offsetX = -74, offsetY = 0, offsetWidth = 851, offsetHeight = 829}, -- 10: down0009
		{x = 4384, y = 0, width = 654, height = 711, offsetX = 0, offsetY = -6, offsetWidth = 654, offsetHeight = 760}, -- 11: idle0000
		{x = 4384, y = 0, width = 654, height = 711, offsetX = 0, offsetY = -6, offsetWidth = 654, offsetHeight = 760}, -- 12: idle0001
		{x = 4384, y = 0, width = 654, height = 711, offsetX = 0, offsetY = -6, offsetWidth = 654, offsetHeight = 760}, -- 13: idle0002
		{x = 5043, y = 0, width = 654, height = 710, offsetX = 0, offsetY = -8, offsetWidth = 654, offsetHeight = 760}, -- 14: idle0003
		{x = 5702, y = 0, width = 652, height = 711, offsetX = -1, offsetY = -8, offsetWidth = 654, offsetHeight = 760}, -- 15: idle0004
		{x = 5702, y = 0, width = 652, height = 711, offsetX = -1, offsetY = -8, offsetWidth = 654, offsetHeight = 760}, -- 16: idle0005
		{x = 6359, y = 0, width = 652, height = 711, offsetX = -1, offsetY = -14, offsetWidth = 654, offsetHeight = 760}, -- 17: idle0006
		{x = 6359, y = 0, width = 652, height = 711, offsetX = -1, offsetY = -14, offsetWidth = 654, offsetHeight = 760}, -- 18: idle0007
		{x = 7016, y = 0, width = 650, height = 714, offsetX = -3, offsetY = -14, offsetWidth = 654, offsetHeight = 760}, -- 19: idle0008
		{x = 7016, y = 0, width = 650, height = 714, offsetX = -3, offsetY = -14, offsetWidth = 654, offsetHeight = 760}, -- 20: idle0009
		{x = 0, y = 807, width = 650, height = 714, offsetX = -3, offsetY = -29, offsetWidth = 654, offsetHeight = 760}, -- 21: idle0010
		{x = 0, y = 807, width = 650, height = 714, offsetX = -3, offsetY = -29, offsetWidth = 654, offsetHeight = 760}, -- 22: idle0011
		{x = 0, y = 807, width = 650, height = 714, offsetX = -3, offsetY = -29, offsetWidth = 654, offsetHeight = 760}, -- 23: idle0012
		{x = 655, y = 807, width = 639, height = 722, offsetX = -8, offsetY = -34, offsetWidth = 654, offsetHeight = 760}, -- 24: idle0013
		{x = 1299, y = 807, width = 639, height = 722, offsetX = -8, offsetY = -34, offsetWidth = 654, offsetHeight = 760}, -- 25: idle0014
		{x = 1299, y = 807, width = 639, height = 722, offsetX = -8, offsetY = -34, offsetWidth = 654, offsetHeight = 760}, -- 26: idle0015
		{x = 1299, y = 807, width = 639, height = 722, offsetX = -8, offsetY = -36, offsetWidth = 654, offsetHeight = 760}, -- 27: idle0016
		{x = 1299, y = 807, width = 639, height = 722, offsetX = -8, offsetY = -36, offsetWidth = 654, offsetHeight = 760}, -- 28: idle0017
		{x = 1943, y = 807, width = 632, height = 722, offsetX = -13, offsetY = -38, offsetWidth = 654, offsetHeight = 760}, -- 29: idle0018
		{x = 1943, y = 807, width = 632, height = 722, offsetX = -13, offsetY = -36, offsetWidth = 654, offsetHeight = 760}, -- 30: idle0019
		{x = 2580, y = 807, width = 632, height = 722, offsetX = -13, offsetY = -36, offsetWidth = 654, offsetHeight = 760}, -- 31: idle0020
		{x = 3217, y = 807, width = 628, height = 723, offsetX = -14, offsetY = -36, offsetWidth = 654, offsetHeight = 760}, -- 32: idle0021
		{x = 3217, y = 807, width = 628, height = 723, offsetX = -14, offsetY = -33, offsetWidth = 654, offsetHeight = 760}, -- 33: idle0022
		{x = 3850, y = 807, width = 628, height = 722, offsetX = -14, offsetY = -33, offsetWidth = 654, offsetHeight = 760}, -- 34: idle0023
		{x = 3850, y = 807, width = 628, height = 722, offsetX = -14, offsetY = -33, offsetWidth = 654, offsetHeight = 760}, -- 35: idle0024
		{x = 3850, y = 807, width = 628, height = 722, offsetX = -14, offsetY = -33, offsetWidth = 654, offsetHeight = 760}, -- 36: idle0025
		{x = 4483, y = 807, width = 626, height = 722, offsetX = -15, offsetY = -18, offsetWidth = 654, offsetHeight = 760}, -- 37: idle0026
		{x = 4483, y = 807, width = 626, height = 722, offsetX = -15, offsetY = -18, offsetWidth = 654, offsetHeight = 760}, -- 38: idle0027
		{x = 4483, y = 807, width = 626, height = 722, offsetX = -15, offsetY = -18, offsetWidth = 654, offsetHeight = 760}, -- 39: idle0028
		{x = 5114, y = 807, width = 626, height = 719, offsetX = -15, offsetY = -11, offsetWidth = 654, offsetHeight = 760}, -- 40: idle0029
		{x = 5114, y = 807, width = 626, height = 719, offsetX = -15, offsetY = -11, offsetWidth = 654, offsetHeight = 760}, -- 41: idle0030
		{x = 5114, y = 807, width = 626, height = 719, offsetX = -15, offsetY = -11, offsetWidth = 654, offsetHeight = 760}, -- 42: idle0031
		{x = 5114, y = 807, width = 626, height = 719, offsetX = -15, offsetY = -8, offsetWidth = 654, offsetHeight = 760}, -- 43: idle0032
		{x = 5745, y = 807, width = 630, height = 722, offsetX = -12, offsetY = -5, offsetWidth = 654, offsetHeight = 760}, -- 44: idle0033
		{x = 6380, y = 807, width = 630, height = 716, offsetX = -12, offsetY = -5, offsetWidth = 654, offsetHeight = 760}, -- 45: idle0034
		{x = 6380, y = 807, width = 630, height = 716, offsetX = -12, offsetY = -3, offsetWidth = 654, offsetHeight = 760}, -- 46: idle0035
		{x = 6380, y = 807, width = 630, height = 716, offsetX = -12, offsetY = -3, offsetWidth = 654, offsetHeight = 760}, -- 47: idle0036
		{x = 7015, y = 807, width = 639, height = 717, offsetX = -8, offsetY = -2, offsetWidth = 654, offsetHeight = 760}, -- 48: idle0037
		{x = 0, y = 1535, width = 639, height = 715, offsetX = -8, offsetY = 0, offsetWidth = 654, offsetHeight = 760}, -- 49: idle0038
		{x = 0, y = 1535, width = 639, height = 715, offsetX = -8, offsetY = 0, offsetWidth = 654, offsetHeight = 760}, -- 50: idle0039
		{x = 644, y = 1535, width = 651, height = 711, offsetX = -2, offsetY = -1, offsetWidth = 654, offsetHeight = 760}, -- 51: idle0040
		{x = 644, y = 1535, width = 651, height = 711, offsetX = -2, offsetY = -1, offsetWidth = 654, offsetHeight = 760}, -- 52: idle0041
		{x = 644, y = 1535, width = 651, height = 711, offsetX = -2, offsetY = -1, offsetWidth = 654, offsetHeight = 760}, -- 53: idle0042
		{x = 1300, y = 1535, width = 651, height = 711, offsetX = -2, offsetY = -1, offsetWidth = 654, offsetHeight = 760}, -- 54: idle0043
		{x = 1956, y = 1535, width = 654, height = 711, offsetX = 0, offsetY = -2, offsetWidth = 654, offsetHeight = 760}, -- 55: idle0044
		{x = 1956, y = 1535, width = 654, height = 711, offsetX = 0, offsetY = -2, offsetWidth = 654, offsetHeight = 760}, -- 56: idle0045
		{x = 2615, y = 1535, width = 654, height = 711, offsetX = 0, offsetY = -2, offsetWidth = 654, offsetHeight = 760}, -- 57: idle0046
		{x = 3274, y = 1535, width = 654, height = 711, offsetX = 0, offsetY = -2, offsetWidth = 654, offsetHeight = 760}, -- 58: idle0047
		{x = 3933, y = 1535, width = 844, height = 707, offsetX = -31, offsetY = -85, offsetWidth = 897, offsetHeight = 802}, -- 59: left0000
		{x = 3933, y = 1535, width = 844, height = 707, offsetX = -31, offsetY = -85, offsetWidth = 897, offsetHeight = 802}, -- 60: left0001
		{x = 4782, y = 1535, width = 874, height = 702, offsetX = 0, offsetY = -100, offsetWidth = 897, offsetHeight = 802}, -- 61: left0002
		{x = 4782, y = 1535, width = 874, height = 702, offsetX = 0, offsetY = -100, offsetWidth = 897, offsetHeight = 802}, -- 62: left0003
		{x = 5661, y = 1535, width = 797, height = 740, offsetX = -100, offsetY = -17, offsetWidth = 897, offsetHeight = 802}, -- 63: left0004
		{x = 5661, y = 1535, width = 797, height = 740, offsetX = -100, offsetY = -17, offsetWidth = 897, offsetHeight = 802}, -- 64: left0005
		{x = 6463, y = 1535, width = 778, height = 746, offsetX = -114, offsetY = -3, offsetWidth = 897, offsetHeight = 802}, -- 65: left0006
		{x = 6463, y = 1535, width = 778, height = 746, offsetX = -114, offsetY = -3, offsetWidth = 897, offsetHeight = 802}, -- 66: left0007
		{x = 7246, y = 1535, width = 772, height = 751, offsetX = -117, offsetY = 0, offsetWidth = 897, offsetHeight = 802}, -- 67: left0008
		{x = 7246, y = 1535, width = 772, height = 751, offsetX = -117, offsetY = 0, offsetWidth = 897, offsetHeight = 802}, -- 68: left0009
		{x = 0, y = 2291, width = 737, height = 748, offsetX = -118, offsetY = -2, offsetWidth = 897, offsetHeight = 802}, -- 69: left0010
		{x = 0, y = 2291, width = 737, height = 748, offsetX = -118, offsetY = -2, offsetWidth = 897, offsetHeight = 802}, -- 70: left0011
		{x = 742, y = 2291, width = 728, height = 659, offsetX = 0, offsetY = -7, offsetWidth = 737, offsetHeight = 698}, -- 71: right0000
		{x = 742, y = 2291, width = 728, height = 659, offsetX = 0, offsetY = -7, offsetWidth = 737, offsetHeight = 698}, -- 72: right0001
		{x = 1475, y = 2291, width = 718, height = 689, offsetX = -19, offsetY = 0, offsetWidth = 737, offsetHeight = 698}, -- 73: right0002
		{x = 1475, y = 2291, width = 718, height = 689, offsetX = -19, offsetY = 0, offsetWidth = 737, offsetHeight = 698}, -- 74: right0003
		{x = 2198, y = 2291, width = 593, height = 665, offsetX = -83, offsetY = -4, offsetWidth = 737, offsetHeight = 698}, -- 75: right0004
		{x = 2198, y = 2291, width = 593, height = 665, offsetX = -83, offsetY = -4, offsetWidth = 737, offsetHeight = 698}, -- 76: right0005
		{x = 2796, y = 2291, width = 506, height = 681, offsetX = -120, offsetY = -13, offsetWidth = 737, offsetHeight = 698}, -- 77: right0006
		{x = 2796, y = 2291, width = 506, height = 681, offsetX = -120, offsetY = -13, offsetWidth = 737, offsetHeight = 698}, -- 78: right0007
		{x = 3307, y = 2291, width = 499, height = 683, offsetX = -113, offsetY = -15, offsetWidth = 737, offsetHeight = 698}, -- 79: right0008
		{x = 3307, y = 2291, width = 499, height = 683, offsetX = -113, offsetY = -15, offsetWidth = 737, offsetHeight = 698}, -- 80: right0009
		{x = 3811, y = 2291, width = 615, height = 823, offsetX = -8, offsetY = -25, offsetWidth = 623, offsetHeight = 964}, -- 81: up0000
		{x = 3811, y = 2291, width = 615, height = 823, offsetX = -8, offsetY = -25, offsetWidth = 623, offsetHeight = 964}, -- 82: up0001
		{x = 4431, y = 2291, width = 619, height = 830, offsetX = 0, offsetY = 0, offsetWidth = 623, offsetHeight = 964}, -- 83: up0002
		{x = 5055, y = 2291, width = 606, height = 839, offsetX = -11, offsetY = -45, offsetWidth = 623, offsetHeight = 964}, -- 84: up0003
		{x = 5055, y = 2291, width = 606, height = 839, offsetX = -11, offsetY = -45, offsetWidth = 623, offsetHeight = 964}, -- 85: up0004
		{x = 5666, y = 2291, width = 601, height = 832, offsetX = -14, offsetY = -78, offsetWidth = 623, offsetHeight = 964}, -- 86: up0005
		{x = 5666, y = 2291, width = 601, height = 832, offsetX = -14, offsetY = -78, offsetWidth = 623, offsetHeight = 964}, -- 87: up0006
		{x = 6272, y = 2291, width = 597, height = 879, offsetX = -16, offsetY = -85, offsetWidth = 623, offsetHeight = 964}, -- 88: up0007
		{x = 6272, y = 2291, width = 597, height = 879, offsetX = -16, offsetY = -85, offsetWidth = 623, offsetHeight = 964}, -- 89: up0008
		{x = 6874, y = 2291, width = 602, height = 849, offsetX = -13, offsetY = -82, offsetWidth = 623, offsetHeight = 964}, -- 90: up0009
		{x = 6874, y = 2291, width = 602, height = 849, offsetX = -13, offsetY = -82, offsetWidth = 623, offsetHeight = 964}, -- 91: up0010
		{x = 7481, y = 2291, width = 604, height = 816, offsetX = -12, offsetY = -79, offsetWidth = 623, offsetHeight = 964}, -- 92: up0011
		{x = 7481, y = 2291, width = 604, height = 816, offsetX = -12, offsetY = -79, offsetWidth = 623, offsetHeight = 964}, -- 93: up0012
		{x = 7481, y = 2291, width = 604, height = 816, offsetX = -12, offsetY = -79, offsetWidth = 623, offsetHeight = 964}, -- 94: up0013
		{x = 7481, y = 2291, width = 604, height = 816, offsetX = -12, offsetY = -79, offsetWidth = 623, offsetHeight = 964} -- 95: up0014
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["singDOWN"] = {start = 1, stop = 10, speed = 24, offsetX = -175, offsetY = -129},
		["idle"] = {start = 11, stop = 58, speed = 24, offsetX = 0, offsetY = 0},
		["singLEFT"] = {start = 59, stop = 70, speed = 24, offsetX = 295, offsetY = -71},
		["singRIGHT"] = {start = 71, stop = 80, speed = 24, offsetX = -83, offsetY = 43},
		["singUP"] = {start = 81, stop = 95, speed = 24, offsetX = 51, offsetY = 22},

	},
	"anim", -- set to default animation
	false,
	{
		sing_duration = 4,
		isCharacter = true
	}
)
