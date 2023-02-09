return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("characters/maroonP")), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 1154, height = 929, offsetX = 0, offsetY = 0, offsetWidth = 1154, offsetHeight = 1060}, -- 1: down0000
		{x = 1159, y = 0, width = 1154, height = 929, offsetX = 0, offsetY = 0, offsetWidth = 1154, offsetHeight = 1060}, -- 2: down0001
		{x = 2318, y = 0, width = 1026, height = 865, offsetX = -51, offsetY = -109, offsetWidth = 1154, offsetHeight = 1060}, -- 3: down0002
		{x = 3349, y = 0, width = 1026, height = 865, offsetX = -51, offsetY = -109, offsetWidth = 1154, offsetHeight = 1060}, -- 4: down0003
		{x = 4380, y = 0, width = 1051, height = 813, offsetX = -29, offsetY = -228, offsetWidth = 1154, offsetHeight = 1060}, -- 5: down0004
		{x = 5436, y = 0, width = 1051, height = 832, offsetX = -29, offsetY = -228, offsetWidth = 1154, offsetHeight = 1060}, -- 6: down0005
		{x = 6492, y = 0, width = 1053, height = 723, offsetX = -22, offsetY = -228, offsetWidth = 1154, offsetHeight = 1060}, -- 7: down0006
		{x = 0, y = 934, width = 1053, height = 723, offsetX = -22, offsetY = -228, offsetWidth = 1154, offsetHeight = 1060}, -- 8: down0007

		{x = 1058, y = 934, width = 1052, height = 771, offsetX = -37, offsetY = -8, offsetWidth = 1113, offsetHeight = 779}, -- 9: idle0000
		{x = 2115, y = 934, width = 1047, height = 771, offsetX = -36, offsetY = -8, offsetWidth = 1113, offsetHeight = 779}, -- 10: idle0001
		{x = 3167, y = 934, width = 1057, height = 773, offsetX = -33, offsetY = -6, offsetWidth = 1113, offsetHeight = 779}, -- 11: idle0002
		{x = 4229, y = 934, width = 1057, height = 773, offsetX = -33, offsetY = -6, offsetWidth = 1113, offsetHeight = 779}, -- 12: idle0003
		{x = 5291, y = 934, width = 1057, height = 779, offsetX = -29, offsetY = 0, offsetWidth = 1113, offsetHeight = 779}, -- 13: idle0004
		{x = 6353, y = 934, width = 1057, height = 779, offsetX = -29, offsetY = 0, offsetWidth = 1113, offsetHeight = 779}, -- 14: idle0005
		{x = 0, y = 1718, width = 1112, height = 778, offsetX = 0, offsetY = -1, offsetWidth = 1113, offsetHeight = 779}, -- 15: idle0006
		{x = 1117, y = 1718, width = 1106, height = 777, offsetX = 0, offsetY = -2, offsetWidth = 1113, offsetHeight = 779}, -- 16: idle0007
		{x = 2228, y = 1718, width = 1099, height = 777, offsetX = -5, offsetY = -2, offsetWidth = 1113, offsetHeight = 779}, -- 17: idle0008
		{x = 3332, y = 1718, width = 1099, height = 772, offsetX = -5, offsetY = -7, offsetWidth = 1113, offsetHeight = 779}, -- 18: idle0009
		{x = 4436, y = 1718, width = 1100, height = 772, offsetX = -13, offsetY = -7, offsetWidth = 1113, offsetHeight = 779}, -- 19: idle0010
		{x = 5541, y = 1718, width = 1100, height = 773, offsetX = -13, offsetY = -6, offsetWidth = 1113, offsetHeight = 779}, -- 20: idle0011
		{x = 6646, y = 1718, width = 1097, height = 773, offsetX = -15, offsetY = -6, offsetWidth = 1113, offsetHeight = 779}, -- 21: idle0012
		{x = 0, y = 2501, width = 1044, height = 766, offsetX = -42, offsetY = -13, offsetWidth = 1113, offsetHeight = 779}, -- 22: idle0013
		{x = 1049, y = 2501, width = 1044, height = 766, offsetX = -42, offsetY = -13, offsetWidth = 1113, offsetHeight = 779}, -- 23: idle0014
		{x = 2098, y = 2501, width = 1052, height = 766, offsetX = -37, offsetY = -13, offsetWidth = 1113, offsetHeight = 779}, -- 24: idle0015
		{x = 3155, y = 2501, width = 1097, height = 771, offsetX = -15, offsetY = -8, offsetWidth = 1113, offsetHeight = 779}, -- 25: idle0016
		{x = 4257, y = 2501, width = 1097, height = 771, offsetX = -15, offsetY = -8, offsetWidth = 1113, offsetHeight = 779}, -- 26: idle0017
		{x = 5359, y = 2501, width = 1103, height = 775, offsetX = -10, offsetY = -4, offsetWidth = 1113, offsetHeight = 779}, -- 27: idle0018
		{x = 6467, y = 2501, width = 1103, height = 775, offsetX = -10, offsetY = -4, offsetWidth = 1113, offsetHeight = 779}, -- 28: idle0019

		{x = 0, y = 3281, width = 1098, height = 809, offsetX = -29, offsetY = 0, offsetWidth = 1138, offsetHeight = 866}, -- 29: left0000
		{x = 1103, y = 3281, width = 1098, height = 809, offsetX = -29, offsetY = 0, offsetWidth = 1138, offsetHeight = 866}, -- 30: left0001
		{x = 2206, y = 3281, width = 1111, height = 776, offsetX = -19, offsetY = -45, offsetWidth = 1138, offsetHeight = 866}, -- 31: left0002
		{x = 3322, y = 3281, width = 1130, height = 808, offsetX = 0, offsetY = -45, offsetWidth = 1138, offsetHeight = 866}, -- 32: left0003
		{x = 4457, y = 3281, width = 1138, height = 812, offsetX = 0, offsetY = -41, offsetWidth = 1138, offsetHeight = 866}, -- 33: left0004
		{x = 5600, y = 3281, width = 1138, height = 825, offsetX = 0, offsetY = -41, offsetWidth = 1138, offsetHeight = 866}, -- 34: left0005
		{x = 6743, y = 3281, width = 1138, height = 822, offsetX = 0, offsetY = -44, offsetWidth = 1138, offsetHeight = 866}, -- 35: left0006
		{x = 0, y = 4111, width = 1138, height = 780, offsetX = 0, offsetY = -44, offsetWidth = 1138, offsetHeight = 866}, -- 36: left0007
		{x = 1143, y = 4111, width = 1138, height = 780, offsetX = 0, offsetY = -44, offsetWidth = 1138, offsetHeight = 866}, -- 37: left0008
		{x = 2286, y = 4111, width = 1138, height = 780, offsetX = 0, offsetY = -44, offsetWidth = 1138, offsetHeight = 866}, -- 38: left0009

		{x = 3429, y = 4111, width = 1194, height = 796, offsetX = -30, offsetY = 0, offsetWidth = 1224, offsetHeight = 823}, -- 39: right0000
		{x = 4628, y = 4111, width = 1194, height = 796, offsetX = -30, offsetY = 0, offsetWidth = 1224, offsetHeight = 823}, -- 40: right0001
		{x = 5827, y = 4111, width = 1192, height = 806, offsetX = 0, offsetY = -17, offsetWidth = 1224, offsetHeight = 823}, -- 41: right0002
		{x = 0, y = 4922, width = 1192, height = 789, offsetX = 0, offsetY = -17, offsetWidth = 1224, offsetHeight = 823}, -- 42: right0003
		{x = 1197, y = 4922, width = 1169, height = 789, offsetX = -29, offsetY = -17, offsetWidth = 1224, offsetHeight = 823}, -- 43: right0004
		{x = 2371, y = 4922, width = 1169, height = 787, offsetX = -29, offsetY = -17, offsetWidth = 1224, offsetHeight = 823}, -- 44: right0005
		{x = 3545, y = 4922, width = 1170, height = 777, offsetX = -28, offsetY = -17, offsetWidth = 1224, offsetHeight = 823}, -- 45: right0006
		{x = 3545, y = 4922, width = 1170, height = 777, offsetX = -28, offsetY = -17, offsetWidth = 1224, offsetHeight = 823}, -- 46: right0007

		{x = 4720, y = 4922, width = 1435, height = 977, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 47: up0000
		{x = 6160, y = 4922, width = 1435, height = 977, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 48: up0001
		{x = 0, y = 5904, width = 1250, height = 782, offsetX = -86, offsetY = -195, offsetWidth = 1435, offsetHeight = 977}, -- 49: up0002
		{x = 1255, y = 5904, width = 1250, height = 782, offsetX = -86, offsetY = -195, offsetWidth = 1435, offsetHeight = 977}, -- 50: up0003
		{x = 2510, y = 5904, width = 1190, height = 844, offsetX = -130, offsetY = -133, offsetWidth = 1435, offsetHeight = 977}, -- 51: up0004
		{x = 3705, y = 5904, width = 1190, height = 844, offsetX = -130, offsetY = -133, offsetWidth = 1435, offsetHeight = 977}, -- 52: up0005
		{x = 4900, y = 5904, width = 1176, height = 844, offsetX = -133, offsetY = -133, offsetWidth = 1435, offsetHeight = 977}, -- 53: up0006
		{x = 6081, y = 5904, width = 1176, height = 844, offsetX = -133, offsetY = -133, offsetWidth = 1435, offsetHeight = 977}, -- 54: up0007
		{x = 0, y = 6753, width = 1172, height = 844, offsetX = -122, offsetY = -133, offsetWidth = 1435, offsetHeight = 977}, -- 55: up0008
		{x = 1177, y = 6753, width = 1172, height = 844, offsetX = -122, offsetY = -133, offsetWidth = 1435, offsetHeight = 977}, -- 56: up0009
		{x = 2354, y = 6753, width = 1172, height = 844, offsetX = -122, offsetY = -133, offsetWidth = 1435, offsetHeight = 977} -- 57: up0010
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["singDOWN"] = {start = 1, stop = 8, speed = 24, offsetX = -50, offsetY = 8},
		["idle"] = {start = 9, stop = 28, speed = 24, offsetX = 0, offsetY = 0},
		["singLEFT"] = {start = 29, stop = 38, speed = 24, offsetX = 45, offsetY = -15},
		["singRIGHT"] = {start = 39, stop = 46, speed = 24, offsetX = -59, offsetY = -7},
		["singUP"] = {start = 47, stop = 57, speed = 24, offsetX = -19, offsetY = 113},

	},
	"idle", -- set to default animation
	false,
	{
		sing_duration = 10,
		isCharacter = true
	}
)
