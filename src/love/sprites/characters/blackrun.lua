return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("characters/blackrun")), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 1004, height = 676, offsetX = -64, offsetY = -24, offsetWidth = 1073, offsetHeight = 701}, -- 1: BLACK DOWN0000
		{x = 1024, y = 0, width = 1008, height = 676, offsetX = -65, offsetY = -25, offsetWidth = 1073, offsetHeight = 701}, -- 2: BLACK DOWN0001
		{x = 2052, y = 0, width = 946, height = 672, offsetX = -62, offsetY = -20, offsetWidth = 1073, offsetHeight = 701}, -- 3: BLACK DOWN0002
		{x = 3018, y = 0, width = 917, height = 647, offsetX = -43, offsetY = -8, offsetWidth = 1073, offsetHeight = 701}, -- 4: BLACK DOWN0003
		{x = 3955, y = 0, width = 928, height = 619, offsetX = 0, offsetY = 0, offsetWidth = 1073, offsetHeight = 701}, -- 5: BLACK DOWN0004

		{x = 4903, y = 0, width = 973, height = 579, offsetX = -5, offsetY = -15, offsetWidth = 978, offsetHeight = 654}, -- 6: BLACK IDLE0000
		{x = 5896, y = 0, width = 978, height = 564, offsetX = 0, offsetY = -6, offsetWidth = 978, offsetHeight = 654}, -- 7: BLACK IDLE0001
		{x = 6894, y = 0, width = 960, height = 573, offsetX = -3, offsetY = 0, offsetWidth = 978, offsetHeight = 654}, -- 8: BLACK IDLE0002
		{x = 6894, y = 0, width = 960, height = 573, offsetX = -3, offsetY = 0, offsetWidth = 978, offsetHeight = 654}, -- 9: BLACK IDLE0003
		{x = 0, y = 696, width = 891, height = 556, offsetX = -30, offsetY = -23, offsetWidth = 978, offsetHeight = 654}, -- 10: BLACK IDLE0004
		{x = 911, y = 696, width = 800, height = 568, offsetX = -91, offsetY = -52, offsetWidth = 978, offsetHeight = 654}, -- 11: BLACK IDLE0005
		{x = 1731, y = 696, width = 667, height = 580, offsetX = -176, offsetY = -68, offsetWidth = 978, offsetHeight = 654}, -- 12: BLACK IDLE0006
		{x = 2418, y = 696, width = 610, height = 593, offsetX = -171, offsetY = -61, offsetWidth = 978, offsetHeight = 654}, -- 13: BLACK IDLE0007
		{x = 3048, y = 696, width = 605, height = 593, offsetX = -169, offsetY = -47, offsetWidth = 978, offsetHeight = 654}, -- 14: BLACK IDLE0008
		{x = 3673, y = 696, width = 613, height = 585, offsetX = -168, offsetY = -11, offsetWidth = 978, offsetHeight = 654}, -- 15: BLACK IDLE0009
		{x = 4306, y = 696, width = 613, height = 585, offsetX = -168, offsetY = -11, offsetWidth = 978, offsetHeight = 654}, -- 16: BLACK IDLE0010
		{x = 4939, y = 696, width = 629, height = 592, offsetX = -172, offsetY = -2, offsetWidth = 978, offsetHeight = 654}, -- 17: BLACK IDLE0011
		{x = 5588, y = 696, width = 702, height = 602, offsetX = -174, offsetY = -2, offsetWidth = 978, offsetHeight = 654}, -- 18: BLACK IDLE0012
		{x = 6310, y = 696, width = 783, height = 606, offsetX = -175, offsetY = -14, offsetWidth = 978, offsetHeight = 654}, -- 19: BLACK IDLE0013
		{x = 7113, y = 696, width = 821, height = 624, offsetX = -157, offsetY = -24, offsetWidth = 978, offsetHeight = 654}, -- 20: BLACK IDLE0014
		{x = 0, y = 1340, width = 947, height = 622, offsetX = -31, offsetY = -18, offsetWidth = 978, offsetHeight = 654}, -- 21: BLACK IDLE0015

		{x = 967, y = 1340, width = 872, height = 546, offsetX = -80, offsetY = -9, offsetWidth = 1080, offsetHeight = 556}, -- 22: BLACK LEFT0000
		{x = 1859, y = 1340, width = 866, height = 543, offsetX = -82, offsetY = -12, offsetWidth = 1080, offsetHeight = 556}, -- 23: BLACK LEFT0001
		{x = 2745, y = 1340, width = 892, height = 532, offsetX = -79, offsetY = -19, offsetWidth = 1080, offsetHeight = 556}, -- 24: BLACK LEFT0002
		{x = 3657, y = 1340, width = 966, height = 529, offsetX = -48, offsetY = -21, offsetWidth = 1080, offsetHeight = 556}, -- 25: BLACK LEFT0003
		{x = 4643, y = 1340, width = 1080, height = 556, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 26: BLACK LEFT0004

		{x = 5743, y = 1340, width = 1155, height = 599, offsetX = -2, offsetY = -8, offsetWidth = 1157, offsetHeight = 627}, -- 27: BLACK RIGHT0000
		{x = 6918, y = 1340, width = 1152, height = 610, offsetX = 0, offsetY = -6, offsetWidth = 1157, offsetHeight = 627}, -- 28: BLACK RIGHT0001
		{x = 0, y = 1982, width = 1115, height = 622, offsetX = -25, offsetY = -5, offsetWidth = 1157, offsetHeight = 627}, -- 29: BLACK RIGHT0002
		{x = 1135, y = 1982, width = 1042, height = 610, offsetX = -58, offsetY = 0, offsetWidth = 1157, offsetHeight = 627}, -- 30: BLACK RIGHT0003
		{x = 2197, y = 1982, width = 919, height = 567, offsetX = -114, offsetY = -1, offsetWidth = 1157, offsetHeight = 627}, -- 31: BLACK RIGHT0004

		{x = 3136, y = 1982, width = 818, height = 694, offsetX = -70, offsetY = -638, offsetWidth = 1115, offsetHeight = 1354}, -- 32: BLACK SCREAM0000
		{x = 3974, y = 1982, width = 801, height = 651, offsetX = -96, offsetY = -651, offsetWidth = 1115, offsetHeight = 1354}, -- 33: BLACK SCREAM0001
		{x = 4795, y = 1982, width = 804, height = 683, offsetX = -101, offsetY = -657, offsetWidth = 1115, offsetHeight = 1354}, -- 34: BLACK SCREAM0002
		{x = 5619, y = 1982, width = 799, height = 693, offsetX = -103, offsetY = -661, offsetWidth = 1115, offsetHeight = 1354}, -- 35: BLACK SCREAM0003
		{x = 6438, y = 1982, width = 799, height = 655, offsetX = -103, offsetY = -661, offsetWidth = 1115, offsetHeight = 1354}, -- 36: BLACK SCREAM0004
		{x = 7257, y = 1982, width = 798, height = 658, offsetX = -104, offsetY = -661, offsetWidth = 1115, offsetHeight = 1354}, -- 37: BLACK SCREAM0005
		{x = 0, y = 2696, width = 798, height = 663, offsetX = -104, offsetY = -661, offsetWidth = 1115, offsetHeight = 1354}, -- 38: BLACK SCREAM0006
		{x = 818, y = 2696, width = 798, height = 666, offsetX = -104, offsetY = -661, offsetWidth = 1115, offsetHeight = 1354}, -- 39: BLACK SCREAM0007
		{x = 1636, y = 2696, width = 801, height = 668, offsetX = -104, offsetY = -661, offsetWidth = 1115, offsetHeight = 1354}, -- 40: BLACK SCREAM0008
		{x = 2457, y = 2696, width = 801, height = 669, offsetX = -104, offsetY = -661, offsetWidth = 1115, offsetHeight = 1354}, -- 41: BLACK SCREAM0009
		{x = 3278, y = 2696, width = 820, height = 663, offsetX = -101, offsetY = -657, offsetWidth = 1115, offsetHeight = 1354}, -- 42: BLACK SCREAM0010
		{x = 4118, y = 2696, width = 820, height = 663, offsetX = -101, offsetY = -657, offsetWidth = 1115, offsetHeight = 1354}, -- 43: BLACK SCREAM0011
		{x = 4958, y = 2696, width = 855, height = 656, offsetX = -88, offsetY = -653, offsetWidth = 1115, offsetHeight = 1354}, -- 44: BLACK SCREAM0012
		{x = 5833, y = 2696, width = 855, height = 656, offsetX = -88, offsetY = -653, offsetWidth = 1115, offsetHeight = 1354}, -- 45: BLACK SCREAM0013
		{x = 6708, y = 2696, width = 920, height = 650, offsetX = -70, offsetY = -648, offsetWidth = 1115, offsetHeight = 1354}, -- 46: BLACK SCREAM0014
		{x = 0, y = 3385, width = 920, height = 650, offsetX = -70, offsetY = -648, offsetWidth = 1115, offsetHeight = 1354}, -- 47: BLACK SCREAM0015
		{x = 940, y = 3385, width = 1015, height = 702, offsetX = -46, offsetY = -610, offsetWidth = 1115, offsetHeight = 1354}, -- 48: BLACK SCREAM0016
		{x = 1975, y = 3385, width = 1095, height = 657, offsetX = -20, offsetY = -565, offsetWidth = 1115, offsetHeight = 1354}, -- 49: BLACK SCREAM0017
		{x = 3090, y = 3385, width = 867, height = 1164, offsetX = -90, offsetY = 0, offsetWidth = 1115, offsetHeight = 1354}, -- 50: BLACK SCREAM0018
		{x = 3977, y = 3385, width = 931, height = 971, offsetX = -34, offsetY = -203, offsetWidth = 1115, offsetHeight = 1354}, -- 51: BLACK SCREAM0019
		{x = 4928, y = 3385, width = 981, height = 987, offsetX = 0, offsetY = -151, offsetWidth = 1115, offsetHeight = 1354}, -- 52: BLACK SCREAM0020
		{x = 5929, y = 3385, width = 897, height = 807, offsetX = -85, offsetY = -321, offsetWidth = 1115, offsetHeight = 1354}, -- 53: BLACK SCREAM0021
		{x = 6846, y = 3385, width = 875, height = 783, offsetX = -74, offsetY = -324, offsetWidth = 1115, offsetHeight = 1354}, -- 54: BLACK SCREAM0022
		{x = 0, y = 4569, width = 892, height = 794, offsetX = -54, offsetY = -324, offsetWidth = 1115, offsetHeight = 1354}, -- 55: BLACK SCREAM0023
		{x = 912, y = 4569, width = 847, height = 881, offsetX = -98, offsetY = -282, offsetWidth = 1115, offsetHeight = 1354}, -- 56: BLACK SCREAM0024
		{x = 1779, y = 4569, width = 843, height = 822, offsetX = -92, offsetY = -282, offsetWidth = 1115, offsetHeight = 1354}, -- 57: BLACK SCREAM0025
		{x = 2642, y = 4569, width = 901, height = 899, offsetX = -43, offsetY = -208, offsetWidth = 1115, offsetHeight = 1354}, -- 58: BLACK SCREAM0026
		{x = 3563, y = 4569, width = 847, height = 739, offsetX = -98, offsetY = -365, offsetWidth = 1115, offsetHeight = 1354}, -- 59: BLACK SCREAM0027
		{x = 4430, y = 4569, width = 843, height = 736, offsetX = -92, offsetY = -368, offsetWidth = 1115, offsetHeight = 1354}, -- 60: BLACK SCREAM0028
		{x = 5293, y = 4569, width = 848, height = 735, offsetX = -96, offsetY = -372, offsetWidth = 1115, offsetHeight = 1354}, -- 61: BLACK SCREAM0029
		{x = 6161, y = 4569, width = 847, height = 725, offsetX = -98, offsetY = -379, offsetWidth = 1115, offsetHeight = 1354}, -- 62: BLACK SCREAM0030
		{x = 7028, y = 4569, width = 843, height = 739, offsetX = -92, offsetY = -365, offsetWidth = 1115, offsetHeight = 1354}, -- 63: BLACK SCREAM0031
		{x = 0, y = 5488, width = 848, height = 739, offsetX = -96, offsetY = -368, offsetWidth = 1115, offsetHeight = 1354}, -- 64: BLACK SCREAM0032
		{x = 868, y = 5488, width = 847, height = 732, offsetX = -98, offsetY = -372, offsetWidth = 1115, offsetHeight = 1354}, -- 65: BLACK SCREAM0033
		{x = 1735, y = 5488, width = 843, height = 725, offsetX = -92, offsetY = -379, offsetWidth = 1115, offsetHeight = 1354}, -- 66: BLACK SCREAM0034
		{x = 2598, y = 5488, width = 848, height = 742, offsetX = -96, offsetY = -365, offsetWidth = 1115, offsetHeight = 1354}, -- 67: BLACK SCREAM0035
		{x = 3466, y = 5488, width = 847, height = 736, offsetX = -98, offsetY = -368, offsetWidth = 1115, offsetHeight = 1354}, -- 68: BLACK SCREAM0036

		{x = 4333, y = 5488, width = 734, height = 861, offsetX = -14, offsetY = -4, offsetWidth = 1003, offsetHeight = 865}, -- 69: BLACK UP0000
		{x = 5087, y = 5488, width = 730, height = 865, offsetX = -15, offsetY = 0, offsetWidth = 1003, offsetHeight = 865}, -- 70: BLACK UP0001
		{x = 5837, y = 5488, width = 748, height = 845, offsetX = -13, offsetY = -10, offsetWidth = 1003, offsetHeight = 865}, -- 71: BLACK UP0002
		{x = 6605, y = 5488, width = 837, height = 789, offsetX = -16, offsetY = -36, offsetWidth = 1003, offsetHeight = 865}, -- 72: BLACK UP0003
		{x = 0, y = 6373, width = 1003, height = 661, offsetX = 0, offsetY = -100, offsetWidth = 1003, offsetHeight = 865} -- 73: BLACK UP0004
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["down"] = {start = 1, stop = 5, speed = 24, offsetX = -169, offsetY = -28},
		["idle"] = {start = 6, stop = 21, speed = 24, offsetX = 0, offsetY = 0},
		["left"] = {start = 22, stop = 26, speed = 24, offsetX = -35, offsetY = 0},
		["right"] = {start = 27, stop = 31, speed = 24, offsetX = -33, offsetY = 33},
		["aggressive shitting"] = {start = 32, stop = 68, speed = 24, offsetX = -41, offsetY = 228},
		["up"] = {start = 69, stop = 73, speed = 24, offsetX = -52, offsetY = 44},
	},
	"idle", -- set to default animation
	false,
	{
		sing_duration = 4,
		isCharacter = true
	}
)
