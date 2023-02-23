return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("characters/tuesday")), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 297, height = 346, offsetX = -1, offsetY = -2, offsetWidth = 299, offsetHeight = 348}, -- 1: anim 10000
		{x = 0, y = 0, width = 297, height = 346, offsetX = -1, offsetY = -2, offsetWidth = 299, offsetHeight = 348}, -- 2: anim 10001
		{x = 317, y = 0, width = 299, height = 341, offsetX = 0, offsetY = -7, offsetWidth = 299, offsetHeight = 348}, -- 3: anim 10002
		{x = 317, y = 0, width = 299, height = 341, offsetX = 0, offsetY = -7, offsetWidth = 299, offsetHeight = 348}, -- 4: anim 10003
		{x = 636, y = 0, width = 299, height = 343, offsetX = 0, offsetY = -5, offsetWidth = 299, offsetHeight = 348}, -- 5: anim 10004
		{x = 636, y = 0, width = 299, height = 343, offsetX = 0, offsetY = -5, offsetWidth = 299, offsetHeight = 348}, -- 6: anim 10005
		{x = 955, y = 0, width = 297, height = 348, offsetX = -1, offsetY = 0, offsetWidth = 299, offsetHeight = 348}, -- 7: anim 10006
		{x = 1272, y = 0, width = 297, height = 348, offsetX = -1, offsetY = 0, offsetWidth = 299, offsetHeight = 348}, -- 8: anim 10007
		{x = 1589, y = 0, width = 297, height = 348, offsetX = -1, offsetY = 0, offsetWidth = 299, offsetHeight = 348}, -- 9: anim 10008
		{x = 1589, y = 0, width = 297, height = 348, offsetX = -1, offsetY = 0, offsetWidth = 299, offsetHeight = 348}, -- 10: anim 10009
		{x = 1589, y = 0, width = 297, height = 348, offsetX = -1, offsetY = 0, offsetWidth = 299, offsetHeight = 348}, -- 11: anim 10010
		{x = 1589, y = 0, width = 297, height = 348, offsetX = -1, offsetY = 0, offsetWidth = 299, offsetHeight = 348}, -- 12: anim 10011
		{x = 1589, y = 0, width = 297, height = 348, offsetX = -1, offsetY = 0, offsetWidth = 299, offsetHeight = 348}, -- 13: anim 10012
		{x = 1589, y = 0, width = 297, height = 348, offsetX = -1, offsetY = 0, offsetWidth = 299, offsetHeight = 348}, -- 14: anim 10013
		{x = 1906, y = 0, width = 501, height = 355, offsetX = -782, offsetY = -44, offsetWidth = 1283, offsetHeight = 434}, -- 15: anim 20000
		{x = 2427, y = 0, width = 633, height = 399, offsetX = -650, offsetY = 0, offsetWidth = 1283, offsetHeight = 434}, -- 16: anim 20001
		{x = 3080, y = 0, width = 629, height = 399, offsetX = -650, offsetY = 0, offsetWidth = 1283, offsetHeight = 434}, -- 17: anim 20002
		{x = 0, y = 419, width = 802, height = 373, offsetX = -477, offsetY = -26, offsetWidth = 1283, offsetHeight = 434}, -- 18: anim 20003
		{x = 822, y = 419, width = 803, height = 373, offsetX = -477, offsetY = -26, offsetWidth = 1283, offsetHeight = 434}, -- 19: anim 20004
		{x = 1645, y = 419, width = 1095, height = 358, offsetX = -185, offsetY = -41, offsetWidth = 1283, offsetHeight = 434}, -- 20: anim 20005
		{x = 2760, y = 419, width = 1095, height = 358, offsetX = -185, offsetY = -41, offsetWidth = 1283, offsetHeight = 434}, -- 21: anim 20006
		{x = 0, y = 812, width = 1280, height = 324, offsetX = 0, offsetY = -75, offsetWidth = 1283, offsetHeight = 434}, -- 22: anim 20007
		{x = 1300, y = 812, width = 1280, height = 324, offsetX = 0, offsetY = -75, offsetWidth = 1283, offsetHeight = 434}, -- 23: anim 20008
		{x = 2600, y = 812, width = 653, height = 256, offsetX = -627, offsetY = -143, offsetWidth = 1283, offsetHeight = 434}, -- 24: anim 20009
		{x = 3273, y = 812, width = 653, height = 256, offsetX = -627, offsetY = -143, offsetWidth = 1283, offsetHeight = 434}, -- 25: anim 20010
		{x = 0, y = 1156, width = 733, height = 205, offsetX = -547, offsetY = -196, offsetWidth = 1283, offsetHeight = 434}, -- 26: anim 20011
		{x = 0, y = 1156, width = 733, height = 205, offsetX = -547, offsetY = -196, offsetWidth = 1283, offsetHeight = 434}, -- 27: anim 20012
		{x = 753, y = 1156, width = 795, height = 238, offsetX = -485, offsetY = -196, offsetWidth = 1283, offsetHeight = 434}, -- 28: anim 20013
		{x = 753, y = 1156, width = 795, height = 238, offsetX = -485, offsetY = -196, offsetWidth = 1283, offsetHeight = 434}, -- 29: anim 20014
		{x = 1568, y = 1156, width = 861, height = 234, offsetX = -420, offsetY = -198, offsetWidth = 1283, offsetHeight = 434}, -- 30: anim 20015
		{x = 2449, y = 1156, width = 876, height = 211, offsetX = -405, offsetY = -198, offsetWidth = 1283, offsetHeight = 434}, -- 31: anim 20016
		{x = 0, y = 1414, width = 875, height = 239, offsetX = -405, offsetY = -170, offsetWidth = 1283, offsetHeight = 434}, -- 32: anim 20017
		{x = 895, y = 1414, width = 880, height = 245, offsetX = -400, offsetY = -170, offsetWidth = 1283, offsetHeight = 434}, -- 33: anim 20018
		{x = 1795, y = 1414, width = 880, height = 262, offsetX = -400, offsetY = -153, offsetWidth = 1283, offsetHeight = 434}, -- 34: anim 20019
		{x = 2695, y = 1414, width = 883, height = 260, offsetX = -397, offsetY = -153, offsetWidth = 1283, offsetHeight = 434}, -- 35: anim 20020
		{x = 0, y = 1696, width = 883, height = 260, offsetX = -397, offsetY = -153, offsetWidth = 1283, offsetHeight = 434}, -- 36: anim 20021
		{x = 903, y = 1696, width = 886, height = 261, offsetX = -394, offsetY = -153, offsetWidth = 1283, offsetHeight = 434}, -- 37: anim 20022
		{x = 1809, y = 1696, width = 886, height = 261, offsetX = -394, offsetY = -153, offsetWidth = 1283, offsetHeight = 434}, -- 38: anim 20023
		{x = 2715, y = 1696, width = 886, height = 261, offsetX = -394, offsetY = -153, offsetWidth = 1283, offsetHeight = 434}, -- 39: anim 20024
		{x = 903, y = 1696, width = 886, height = 261, offsetX = -394, offsetY = -153, offsetWidth = 1283, offsetHeight = 434}, -- 40: anim 20025
		{x = 1809, y = 1696, width = 886, height = 261, offsetX = -394, offsetY = -153, offsetWidth = 1283, offsetHeight = 434}, -- 41: anim 20026
		{x = 2715, y = 1696, width = 886, height = 261, offsetX = -394, offsetY = -153, offsetWidth = 1283, offsetHeight = 434}, -- 42: anim 20027
		{x = 903, y = 1696, width = 886, height = 261, offsetX = -394, offsetY = -153, offsetWidth = 1283, offsetHeight = 434}, -- 43: anim 20028
		{x = 1809, y = 1696, width = 886, height = 261, offsetX = -394, offsetY = -153, offsetWidth = 1283, offsetHeight = 434}, -- 44: anim 20029
		{x = 2715, y = 1696, width = 886, height = 261, offsetX = -394, offsetY = -153, offsetWidth = 1283, offsetHeight = 434}, -- 45: anim 20030
		{x = 903, y = 1696, width = 886, height = 261, offsetX = -394, offsetY = -153, offsetWidth = 1283, offsetHeight = 434}, -- 46: anim 20031
		{x = 1809, y = 1696, width = 886, height = 261, offsetX = -394, offsetY = -153, offsetWidth = 1283, offsetHeight = 434}, -- 47: anim 20032
		{x = 3621, y = 1696, width = 332, height = 244, offsetX = -948, offsetY = -155, offsetWidth = 1283, offsetHeight = 434}, -- 48: anim 20033
		{x = 0, y = 1977, width = 886, height = 259, offsetX = -394, offsetY = -155, offsetWidth = 1283, offsetHeight = 434}, -- 49: anim 20034
		{x = 0, y = 1977, width = 886, height = 259, offsetX = -394, offsetY = -155, offsetWidth = 1283, offsetHeight = 434}, -- 50: anim 20035
		{x = 906, y = 1977, width = 332, height = 244, offsetX = -948, offsetY = -155, offsetWidth = 1283, offsetHeight = 434}, -- 51: anim 20036
		{x = 1258, y = 1977, width = 886, height = 259, offsetX = -394, offsetY = -155, offsetWidth = 1283, offsetHeight = 434}, -- 52: anim 20037
		{x = 906, y = 1977, width = 332, height = 244, offsetX = -948, offsetY = -155, offsetWidth = 1283, offsetHeight = 434}, -- 53: anim 20038
		{x = 1258, y = 1977, width = 886, height = 259, offsetX = -394, offsetY = -155, offsetWidth = 1283, offsetHeight = 434}, -- 54: anim 20039
		{x = 906, y = 1977, width = 332, height = 244, offsetX = -948, offsetY = -155, offsetWidth = 1283, offsetHeight = 434}, -- 55: anim 20040
		{x = 906, y = 1977, width = 332, height = 244, offsetX = -948, offsetY = -155, offsetWidth = 1283, offsetHeight = 434}, -- 56: anim 20041
		{x = 2164, y = 1977, width = 332, height = 245, offsetX = -948, offsetY = -154, offsetWidth = 1283, offsetHeight = 434}, -- 57: anim 20042
		{x = 2164, y = 1977, width = 332, height = 245, offsetX = -948, offsetY = -154, offsetWidth = 1283, offsetHeight = 434}, -- 58: anim 20043
		{x = 2516, y = 1977, width = 332, height = 246, offsetX = -948, offsetY = -153, offsetWidth = 1283, offsetHeight = 434}, -- 59: anim 20044
		{x = 2516, y = 1977, width = 332, height = 246, offsetX = -948, offsetY = -153, offsetWidth = 1283, offsetHeight = 434}, -- 60: anim 20045

		{x = 2868, y = 1977, width = 335, height = 325, offsetX = 0, offsetY = 0, offsetWidth = 335, offsetHeight = 326}, -- 61: down0000
		{x = 2868, y = 1977, width = 335, height = 325, offsetX = 0, offsetY = 0, offsetWidth = 335, offsetHeight = 326}, -- 62: down0001
		{x = 3223, y = 1977, width = 324, height = 321, offsetX = -5, offsetY = -5, offsetWidth = 335, offsetHeight = 326}, -- 63: down0002
		{x = 3223, y = 1977, width = 324, height = 321, offsetX = -5, offsetY = -5, offsetWidth = 335, offsetHeight = 326}, -- 64: down0003
		{x = 3223, y = 1977, width = 324, height = 321, offsetX = -5, offsetY = -5, offsetWidth = 335, offsetHeight = 326}, -- 65: down0004
		{x = 3223, y = 1977, width = 324, height = 321, offsetX = -5, offsetY = -5, offsetWidth = 335, offsetHeight = 326}, -- 66: down0005
		{x = 3223, y = 1977, width = 324, height = 321, offsetX = -5, offsetY = -5, offsetWidth = 335, offsetHeight = 326}, -- 67: down0006
		{x = 3223, y = 1977, width = 324, height = 321, offsetX = -5, offsetY = -5, offsetWidth = 335, offsetHeight = 326}, -- 68: down0007
		{x = 3223, y = 1977, width = 324, height = 321, offsetX = -5, offsetY = -5, offsetWidth = 335, offsetHeight = 326}, -- 69: down0008
		{x = 3223, y = 1977, width = 324, height = 321, offsetX = -5, offsetY = -5, offsetWidth = 335, offsetHeight = 326}, -- 70: down0009

		{x = 3567, y = 1977, width = 318, height = 335, offsetX = 0, offsetY = -10, offsetWidth = 318, offsetHeight = 346}, -- 71: idle0000
		{x = 3567, y = 1977, width = 318, height = 335, offsetX = 0, offsetY = -10, offsetWidth = 318, offsetHeight = 346}, -- 72: idle0001
		{x = 0, y = 2332, width = 305, height = 337, offsetX = -6, offsetY = -9, offsetWidth = 318, offsetHeight = 346}, -- 73: idle0002
		{x = 0, y = 2332, width = 305, height = 337, offsetX = -6, offsetY = -9, offsetWidth = 318, offsetHeight = 346}, -- 74: idle0003
		{x = 325, y = 2332, width = 298, height = 344, offsetX = -10, offsetY = -2, offsetWidth = 318, offsetHeight = 346}, -- 75: idle0004
		{x = 325, y = 2332, width = 298, height = 344, offsetX = -10, offsetY = -2, offsetWidth = 318, offsetHeight = 346}, -- 76: idle0005
		{x = 643, y = 2332, width = 297, height = 345, offsetX = -10, offsetY = -1, offsetWidth = 318, offsetHeight = 346}, -- 77: idle0006
		{x = 643, y = 2332, width = 297, height = 345, offsetX = -10, offsetY = -1, offsetWidth = 318, offsetHeight = 346}, -- 78: idle0007
		{x = 960, y = 2332, width = 297, height = 346, offsetX = -10, offsetY = 0, offsetWidth = 318, offsetHeight = 346}, -- 79: idle0008
		{x = 960, y = 2332, width = 297, height = 346, offsetX = -10, offsetY = 0, offsetWidth = 318, offsetHeight = 346}, -- 80: idle0009

		{x = 1277, y = 2332, width = 326, height = 349, offsetX = 0, offsetY = -2, offsetWidth = 329, offsetHeight = 351}, -- 81: left0000
		{x = 1277, y = 2332, width = 326, height = 349, offsetX = 0, offsetY = -2, offsetWidth = 329, offsetHeight = 351}, -- 82: left0001
		{x = 1623, y = 2332, width = 326, height = 351, offsetX = -3, offsetY = 0, offsetWidth = 329, offsetHeight = 351}, -- 83: left0002
		{x = 1623, y = 2332, width = 326, height = 351, offsetX = -3, offsetY = 0, offsetWidth = 329, offsetHeight = 351}, -- 84: left0003
		{x = 1623, y = 2332, width = 326, height = 351, offsetX = -3, offsetY = 0, offsetWidth = 329, offsetHeight = 351}, -- 85: left0004
		{x = 1623, y = 2332, width = 326, height = 351, offsetX = -3, offsetY = 0, offsetWidth = 329, offsetHeight = 351}, -- 86: left0005
		{x = 1623, y = 2332, width = 326, height = 351, offsetX = -3, offsetY = 0, offsetWidth = 329, offsetHeight = 351}, -- 87: left0006
		{x = 1623, y = 2332, width = 326, height = 351, offsetX = -3, offsetY = 0, offsetWidth = 329, offsetHeight = 351}, -- 88: left0007
		{x = 1623, y = 2332, width = 326, height = 351, offsetX = -3, offsetY = 0, offsetWidth = 329, offsetHeight = 351}, -- 89: left0008
		{x = 1623, y = 2332, width = 326, height = 351, offsetX = -3, offsetY = 0, offsetWidth = 329, offsetHeight = 351}, -- 90: left0009

		{x = 1969, y = 2332, width = 326, height = 342, offsetX = -3, offsetY = 0, offsetWidth = 329, offsetHeight = 342}, -- 91: right0000
		{x = 1969, y = 2332, width = 326, height = 342, offsetX = -3, offsetY = 0, offsetWidth = 329, offsetHeight = 342}, -- 92: right0001
		{x = 2315, y = 2332, width = 326, height = 337, offsetX = 0, offsetY = -5, offsetWidth = 329, offsetHeight = 342}, -- 93: right0002
		{x = 2315, y = 2332, width = 326, height = 337, offsetX = 0, offsetY = -5, offsetWidth = 329, offsetHeight = 342}, -- 94: right0003
		{x = 2315, y = 2332, width = 326, height = 337, offsetX = 0, offsetY = -5, offsetWidth = 329, offsetHeight = 342}, -- 95: right0004
		{x = 2315, y = 2332, width = 326, height = 337, offsetX = 0, offsetY = -5, offsetWidth = 329, offsetHeight = 342}, -- 96: right0005
		{x = 2315, y = 2332, width = 326, height = 337, offsetX = 0, offsetY = -5, offsetWidth = 329, offsetHeight = 342}, -- 97: right0006
		{x = 2315, y = 2332, width = 326, height = 337, offsetX = 0, offsetY = -5, offsetWidth = 329, offsetHeight = 342}, -- 98: right0007
		{x = 2315, y = 2332, width = 326, height = 337, offsetX = 0, offsetY = -5, offsetWidth = 329, offsetHeight = 342}, -- 99: right0008
		{x = 2315, y = 2332, width = 326, height = 337, offsetX = 0, offsetY = -5, offsetWidth = 329, offsetHeight = 342}, -- 100: right0009

		{x = 3235, y = 2332, width = 332, height = 246, offsetX = 0, offsetY = -5, offsetWidth = 332, offsetHeight = 251}, -- 101: tomidle0000
		{x = 3587, y = 2332, width = 332, height = 246, offsetX = 0, offsetY = -5, offsetWidth = 332, offsetHeight = 251}, -- 102: tomidle0001
		{x = 0, y = 2718, width = 330, height = 245, offsetX = -1, offsetY = -5, offsetWidth = 332, offsetHeight = 251}, -- 103: tomidle0002
		{x = 0, y = 2718, width = 330, height = 245, offsetX = -1, offsetY = -5, offsetWidth = 332, offsetHeight = 251}, -- 104: tomidle0003
		{x = 350, y = 2718, width = 327, height = 249, offsetX = -2, offsetY = -1, offsetWidth = 332, offsetHeight = 251}, -- 105: tomidle0004
		{x = 350, y = 2718, width = 327, height = 249, offsetX = -2, offsetY = -1, offsetWidth = 332, offsetHeight = 251}, -- 106: tomidle0005
		{x = 697, y = 2718, width = 324, height = 249, offsetX = -3, offsetY = -1, offsetWidth = 332, offsetHeight = 251}, -- 107: tomidle0006
		{x = 697, y = 2718, width = 324, height = 249, offsetX = -3, offsetY = -1, offsetWidth = 332, offsetHeight = 251}, -- 108: tomidle0007
		{x = 1041, y = 2718, width = 324, height = 250, offsetX = -3, offsetY = 0, offsetWidth = 332, offsetHeight = 251}, -- 109: tomidle0008
		{x = 1041, y = 2718, width = 324, height = 250, offsetX = -3, offsetY = 0, offsetWidth = 332, offsetHeight = 251}, -- 110: tomidle0009

		{x = 2661, y = 2332, width = 263, height = 364, offsetX = -4, offsetY = -2, offsetWidth = 271, offsetHeight = 366}, -- 111: up0000
		{x = 2661, y = 2332, width = 263, height = 364, offsetX = -4, offsetY = -2, offsetWidth = 271, offsetHeight = 366}, -- 112: up0001
		{x = 2944, y = 2332, width = 271, height = 366, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 113: up0002
		{x = 2944, y = 2332, width = 271, height = 366, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 114: up0003
		{x = 2944, y = 2332, width = 271, height = 366, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 115: up0004
		{x = 2944, y = 2332, width = 271, height = 366, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 116: up0005
		{x = 2944, y = 2332, width = 271, height = 366, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 117: up0006
		{x = 2944, y = 2332, width = 271, height = 366, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 118: up0007
		{x = 2944, y = 2332, width = 271, height = 366, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 119: up0008
		{x = 2944, y = 2332, width = 271, height = 366, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0} -- 120: up0009
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["anim"] = {start = 1, stop = 60, speed = 24, offsetX = 0, offsetY = 0},
		["singDOWN"] = {start = 61, stop = 70, speed = 24, offsetX = 0, offsetY = 0},
		["idle"] = {start = 71, stop = 80, speed = 24, offsetX = 0, offsetY = 0},
		["singLEFT"] = {start = 81, stop = 90, speed = 24, offsetX = 0, offsetY = 0},
		["singRIGHT"] = {start = 91, stop = 100, speed = 24, offsetX = 0, offsetY = 0},
		["tomidle"] = {start = 101, stop = 110, speed = 24, offsetX = 0, offsetY = 0},
		["singUP"] = {start = 111, stop = 120, speed = 24, offsetX = 0, offsetY = 0},
	},
	"idle", -- set to default animation
	false,
	{
		sing_duration = 4,
		isCharacter = true
	}
)
