return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("characters/blackalt")), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 1246, height = 636, offsetX = 0, offsetY = -37, offsetWidth = 1246, offsetHeight = 673}, -- 1: down alt0000
		{x = 1266, y = 0, width = 1121, height = 640, offsetX = -20, offsetY = -13, offsetWidth = 1246, offsetHeight = 673}, -- 2: down alt0001
		{x = 1266, y = 0, width = 1121, height = 640, offsetX = -20, offsetY = -13, offsetWidth = 1246, offsetHeight = 673}, -- 3: down alt0002
		{x = 2407, y = 0, width = 1066, height = 639, offsetX = -31, offsetY = -3, offsetWidth = 1246, offsetHeight = 673}, -- 4: down alt0003
		{x = 3493, y = 0, width = 1066, height = 638, offsetX = -31, offsetY = -3, offsetWidth = 1246, offsetHeight = 673}, -- 5: down alt0004
		{x = 4579, y = 0, width = 1046, height = 637, offsetX = -34, offsetY = 0, offsetWidth = 1246, offsetHeight = 673}, -- 6: down alt0005
		{x = 5645, y = 0, width = 1046, height = 636, offsetX = -34, offsetY = 0, offsetWidth = 1246, offsetHeight = 673}, -- 7: down alt0006
		{x = 6711, y = 0, width = 1040, height = 630, offsetX = -36, offsetY = 0, offsetWidth = 1246, offsetHeight = 673}, -- 8: down alt0007
		{x = 0, y = 660, width = 1040, height = 632, offsetX = -36, offsetY = 0, offsetWidth = 1246, offsetHeight = 673}, -- 9: down alt0008
		{x = 1060, y = 660, width = 1039, height = 630, offsetX = -37, offsetY = 0, offsetWidth = 1246, offsetHeight = 673}, -- 10: down alt0009

		{x = 2119, y = 660, width = 897, height = 592, offsetX = -38, offsetY = -23, offsetWidth = 962, offsetHeight = 654}, -- 11: idle alt0000
		{x = 3036, y = 660, width = 877, height = 595, offsetX = -41, offsetY = -24, offsetWidth = 962, offsetHeight = 654}, -- 12: idle alt0001
		{x = 3933, y = 660, width = 860, height = 579, offsetX = -46, offsetY = -19, offsetWidth = 962, offsetHeight = 654}, -- 13: idle alt0002
		{x = 3933, y = 660, width = 860, height = 579, offsetX = -46, offsetY = -19, offsetWidth = 962, offsetHeight = 654}, -- 14: idle alt0003
		{x = 4813, y = 660, width = 805, height = 540, offsetX = -58, offsetY = -9, offsetWidth = 962, offsetHeight = 654}, -- 15: idle alt0004
		{x = 5638, y = 660, width = 762, height = 590, offsetX = -99, offsetY = -7, offsetWidth = 962, offsetHeight = 654}, -- 16: idle alt0005
		{x = 6420, y = 660, width = 666, height = 606, offsetX = -143, offsetY = -14, offsetWidth = 962, offsetHeight = 654}, -- 17: idle alt0006
		{x = 7106, y = 660, width = 646, height = 589, offsetX = -102, offsetY = -23, offsetWidth = 962, offsetHeight = 654}, -- 18: idle alt0007
		{x = 0, y = 1312, width = 671, height = 586, offsetX = -72, offsetY = -26, offsetWidth = 962, offsetHeight = 654}, -- 19: idle alt0008
		{x = 691, y = 1312, width = 746, height = 654, offsetX = 0, offsetY = 0, offsetWidth = 962, offsetHeight = 654}, -- 20: idle alt0009
		{x = 1457, y = 1312, width = 585, height = 549, offsetX = -161, offsetY = -24, offsetWidth = 962, offsetHeight = 654}, -- 21: idle alt0010
		{x = 2062, y = 1312, width = 635, height = 547, offsetX = -157, offsetY = -19, offsetWidth = 962, offsetHeight = 654}, -- 22: idle alt0011
		{x = 2717, y = 1312, width = 691, height = 568, offsetX = -153, offsetY = -5, offsetWidth = 962, offsetHeight = 654}, -- 23: idle alt0012
		{x = 3428, y = 1312, width = 771, height = 585, offsetX = -155, offsetY = -7, offsetWidth = 962, offsetHeight = 654}, -- 24: idle alt0013
		{x = 4219, y = 1312, width = 834, height = 565, offsetX = -128, offsetY = -11, offsetWidth = 962, offsetHeight = 654}, -- 25: idle alt0014
		{x = 5073, y = 1312, width = 903, height = 592, offsetX = -39, offsetY = -15, offsetWidth = 962, offsetHeight = 654}, -- 26: idle alt0015

		{x = 5996, y = 1312, width = 734, height = 599, offsetX = -36, offsetY = 0, offsetWidth = 900, offsetHeight = 599}, -- 27: left alt0000
		{x = 6750, y = 1312, width = 841, height = 565, offsetX = -4, offsetY = -29, offsetWidth = 900, offsetHeight = 599}, -- 28: left alt0001
		{x = 6750, y = 1312, width = 841, height = 565, offsetX = -4, offsetY = -29, offsetWidth = 900, offsetHeight = 599}, -- 29: left alt0002
		{x = 0, y = 1986, width = 886, height = 566, offsetX = -1, offsetY = -30, offsetWidth = 900, offsetHeight = 599}, -- 30: left alt0003
		{x = 0, y = 1986, width = 886, height = 566, offsetX = -1, offsetY = -30, offsetWidth = 900, offsetHeight = 599}, -- 31: left alt0004
		{x = 906, y = 1986, width = 897, height = 571, offsetX = 0, offsetY = -23, offsetWidth = 900, offsetHeight = 599}, -- 32: left alt0005
		{x = 906, y = 1986, width = 897, height = 571, offsetX = 0, offsetY = -23, offsetWidth = 900, offsetHeight = 599}, -- 33: left alt0006
		{x = 1823, y = 1986, width = 898, height = 570, offsetX = -1, offsetY = -21, offsetWidth = 900, offsetHeight = 599}, -- 34: left alt0007
		{x = 1823, y = 1986, width = 898, height = 570, offsetX = -1, offsetY = -21, offsetWidth = 900, offsetHeight = 599}, -- 35: left alt0008
		{x = 2741, y = 1986, width = 899, height = 570, offsetX = -1, offsetY = -20, offsetWidth = 900, offsetHeight = 599}, -- 36: left alt0009

		{x = 3660, y = 1986, width = 787, height = 689, offsetX = -54, offsetY = 0, offsetWidth = 841, offsetHeight = 697}, -- 37: right alt0000
		{x = 4467, y = 1986, width = 708, height = 656, offsetX = -31, offsetY = -12, offsetWidth = 841, offsetHeight = 697}, -- 38: right alt0001
		{x = 5195, y = 1986, width = 708, height = 670, offsetX = -31, offsetY = -12, offsetWidth = 841, offsetHeight = 697}, -- 39: right alt0002
		{x = 5923, y = 1986, width = 696, height = 680, offsetX = -14, offsetY = -17, offsetWidth = 841, offsetHeight = 697}, -- 40: right alt0003
		{x = 6639, y = 1986, width = 696, height = 638, offsetX = -14, offsetY = -17, offsetWidth = 841, offsetHeight = 697}, -- 41: right alt0004
		{x = 7355, y = 1986, width = 701, height = 627, offsetX = -4, offsetY = -23, offsetWidth = 841, offsetHeight = 697}, -- 42: right alt0005
		{x = 7355, y = 1986, width = 701, height = 627, offsetX = -4, offsetY = -23, offsetWidth = 841, offsetHeight = 697}, -- 43: right alt0006
		{x = 0, y = 2695, width = 706, height = 619, offsetX = 0, offsetY = -27, offsetWidth = 841, offsetHeight = 697}, -- 44: right alt0007
		{x = 0, y = 2695, width = 706, height = 619, offsetX = 0, offsetY = -27, offsetWidth = 841, offsetHeight = 697}, -- 45: right alt0008
		{x = 726, y = 2695, width = 706, height = 617, offsetX = -1, offsetY = -28, offsetWidth = 841, offsetHeight = 697}, -- 46: right alt0009

		{x = 1452, y = 2695, width = 755, height = 711, offsetX = 0, offsetY = 0, offsetWidth = 785, offsetHeight = 711}, -- 47: up alt0000
		{x = 2227, y = 2695, width = 773, height = 653, offsetX = -8, offsetY = -30, offsetWidth = 785, offsetHeight = 711}, -- 48: up alt0001
		{x = 3020, y = 2695, width = 773, height = 653, offsetX = -8, offsetY = -30, offsetWidth = 785, offsetHeight = 711}, -- 49: up alt0002
		{x = 3813, y = 2695, width = 767, height = 633, offsetX = -18, offsetY = -41, offsetWidth = 785, offsetHeight = 711}, -- 50: up alt0003
		{x = 4600, y = 2695, width = 767, height = 632, offsetX = -18, offsetY = -42, offsetWidth = 785, offsetHeight = 711}, -- 51: up alt0004
		{x = 5387, y = 2695, width = 764, height = 625, offsetX = -20, offsetY = -46, offsetWidth = 785, offsetHeight = 711}, -- 52: up alt0005
		{x = 6171, y = 2695, width = 764, height = 625, offsetX = -20, offsetY = -46, offsetWidth = 785, offsetHeight = 711}, -- 53: up alt0006
		{x = 6955, y = 2695, width = 761, height = 624, offsetX = -20, offsetY = -46, offsetWidth = 785, offsetHeight = 711}, -- 54: up alt0007
		{x = 6955, y = 2695, width = 761, height = 624, offsetX = -20, offsetY = -46, offsetWidth = 785, offsetHeight = 711}, -- 55: up alt0008
		{x = 0, y = 3426, width = 759, height = 624, offsetX = -21, offsetY = -46, offsetWidth = 785, offsetHeight = 711} -- 56: up alt0009
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["idle"] = {start = 11, stop = 26, speed = 24, offsetX = 0, offsetY = 0},
		["singLEFT"] = {start = 27, stop = 36, speed = 24, offsetX = 10, offsetY = -6},
		["singRIGHT"] = {start = 37, stop = 46, speed = 24, offsetX = -82, offsetY = 48},
		["singUP"] = {start = 47, stop = 56, speed = 24, offsetX = 77, offsetY = 98},
		["singDOWN"] = {start = 1, stop = 10, speed = 24, offsetX = -83, offsetY = -94},
	},
	"idle", -- set to default animation
	false,
	{
		sing_duration = 4,
		isCharacter = true
	}
)
