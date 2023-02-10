return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("characters/jorsawsee")), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 745, height = 504, offsetX = -22, offsetY = -19, offsetWidth = 779, offsetHeight = 524}, -- 1: down0000
		{x = 775, y = 0, width = 746, height = 504, offsetX = -21, offsetY = -19, offsetWidth = 779, offsetHeight = 524}, -- 2: down0001
		{x = 1551, y = 0, width = 774, height = 512, offsetX = 0, offsetY = -11, offsetWidth = 779, offsetHeight = 524}, -- 3: down0002
		{x = 2355, y = 0, width = 774, height = 512, offsetX = 0, offsetY = -11, offsetWidth = 779, offsetHeight = 524}, -- 4: down0003
		{x = 3159, y = 0, width = 759, height = 522, offsetX = -18, offsetY = -2, offsetWidth = 779, offsetHeight = 524}, -- 5: down0004
		{x = 0, y = 552, width = 759, height = 522, offsetX = -18, offsetY = -2, offsetWidth = 779, offsetHeight = 524}, -- 6: down0005
		{x = 789, y = 552, width = 748, height = 524, offsetX = -31, offsetY = 0, offsetWidth = 779, offsetHeight = 524}, -- 7: down0006
		{x = 1567, y = 552, width = 748, height = 524, offsetX = -31, offsetY = 0, offsetWidth = 779, offsetHeight = 524}, -- 8: down0007
		{x = 2345, y = 552, width = 702, height = 485, offsetX = -43, offsetY = -13, offsetWidth = 745, offsetHeight = 532}, -- 9: idle0000
		{x = 3077, y = 552, width = 718, height = 517, offsetX = -27, offsetY = -13, offsetWidth = 745, offsetHeight = 532}, -- 10: idle0001
		{x = 0, y = 1106, width = 724, height = 517, offsetX = -19, offsetY = -15, offsetWidth = 745, offsetHeight = 532}, -- 11: idle0002
		{x = 754, y = 1106, width = 728, height = 517, offsetX = -15, offsetY = -15, offsetWidth = 745, offsetHeight = 532}, -- 12: idle0003
		{x = 1512, y = 1106, width = 706, height = 495, offsetX = -32, offsetY = -11, offsetWidth = 745, offsetHeight = 532}, -- 13: idle0004
		{x = 2248, y = 1106, width = 702, height = 486, offsetX = -36, offsetY = -11, offsetWidth = 745, offsetHeight = 532}, -- 14: idle0005
		{x = 2980, y = 1106, width = 699, height = 495, offsetX = -37, offsetY = -3, offsetWidth = 745, offsetHeight = 532}, -- 15: idle0006
		{x = 0, y = 1653, width = 701, height = 495, offsetX = -35, offsetY = -3, offsetWidth = 745, offsetHeight = 532}, -- 16: idle0007
		{x = 731, y = 1653, width = 725, height = 497, offsetX = -9, offsetY = -1, offsetWidth = 745, offsetHeight = 532}, -- 17: idle0008
		{x = 1486, y = 1653, width = 728, height = 497, offsetX = -6, offsetY = -1, offsetWidth = 745, offsetHeight = 532}, -- 18: idle0009
		{x = 2244, y = 1653, width = 735, height = 498, offsetX = 0, offsetY = 0, offsetWidth = 745, offsetHeight = 532}, -- 19: idle0010
		{x = 2244, y = 1653, width = 735, height = 498, offsetX = 0, offsetY = 0, offsetWidth = 745, offsetHeight = 532}, -- 20: idle0011
		{x = 3009, y = 1653, width = 735, height = 498, offsetX = 0, offsetY = 0, offsetWidth = 745, offsetHeight = 532}, -- 21: idle0012
		{x = 3009, y = 1653, width = 735, height = 498, offsetX = 0, offsetY = 0, offsetWidth = 745, offsetHeight = 532}, -- 22: idle0013
		{x = 0, y = 2181, width = 527, height = 488, offsetX = -33, offsetY = -1, offsetWidth = 596, offsetHeight = 489}, -- 23: left0000
		{x = 0, y = 2181, width = 527, height = 488, offsetX = -33, offsetY = -1, offsetWidth = 596, offsetHeight = 489}, -- 24: left0001
		{x = 557, y = 2181, width = 577, height = 487, offsetX = -11, offsetY = -2, offsetWidth = 596, offsetHeight = 489}, -- 25: left0002
		{x = 557, y = 2181, width = 577, height = 487, offsetX = -11, offsetY = -2, offsetWidth = 596, offsetHeight = 489}, -- 26: left0003
		{x = 1164, y = 2181, width = 591, height = 488, offsetX = -2, offsetY = -1, offsetWidth = 596, offsetHeight = 489}, -- 27: left0004
		{x = 1164, y = 2181, width = 591, height = 488, offsetX = -2, offsetY = -1, offsetWidth = 596, offsetHeight = 489}, -- 28: left0005
		{x = 1785, y = 2181, width = 596, height = 489, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 29: left0006
		{x = 1785, y = 2181, width = 596, height = 489, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 30: left0007
		{x = 2411, y = 2181, width = 768, height = 493, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 31: right0000
		{x = 2411, y = 2181, width = 768, height = 493, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 32: right0001
		{x = 3209, y = 2181, width = 695, height = 485, offsetX = -25, offsetY = -8, offsetWidth = 768, offsetHeight = 493}, -- 33: right0002
		{x = 3209, y = 2181, width = 695, height = 485, offsetX = -25, offsetY = -8, offsetWidth = 768, offsetHeight = 493}, -- 34: right0003
		{x = 0, y = 2704, width = 681, height = 484, offsetX = -29, offsetY = -9, offsetWidth = 768, offsetHeight = 493}, -- 35: right0004
		{x = 0, y = 2704, width = 681, height = 484, offsetX = -29, offsetY = -9, offsetWidth = 768, offsetHeight = 493}, -- 36: right0005
		{x = 711, y = 2704, width = 675, height = 484, offsetX = -32, offsetY = -9, offsetWidth = 768, offsetHeight = 493}, -- 37: right0006
		{x = 711, y = 2704, width = 675, height = 484, offsetX = -32, offsetY = -9, offsetWidth = 768, offsetHeight = 493}, -- 38: right0007
		{x = 1416, y = 2704, width = 586, height = 528, offsetX = 0, offsetY = 0, offsetWidth = 625, offsetHeight = 528}, -- 39: up0000
		{x = 1416, y = 2704, width = 586, height = 528, offsetX = 0, offsetY = 0, offsetWidth = 625, offsetHeight = 528}, -- 40: up0001
		{x = 2032, y = 2704, width = 607, height = 512, offsetX = -11, offsetY = -15, offsetWidth = 625, offsetHeight = 528}, -- 41: up0002
		{x = 2032, y = 2704, width = 607, height = 512, offsetX = -11, offsetY = -15, offsetWidth = 625, offsetHeight = 528}, -- 42: up0003
		{x = 2669, y = 2704, width = 609, height = 508, offsetX = -13, offsetY = -19, offsetWidth = 625, offsetHeight = 528}, -- 43: up0004
		{x = 2669, y = 2704, width = 609, height = 508, offsetX = -13, offsetY = -19, offsetWidth = 625, offsetHeight = 528}, -- 44: up0005
		{x = 3308, y = 2704, width = 611, height = 507, offsetX = -14, offsetY = -20, offsetWidth = 625, offsetHeight = 528}, -- 45: up0006
		{x = 3308, y = 2704, width = 611, height = 507, offsetX = -14, offsetY = -20, offsetWidth = 625, offsetHeight = 528} -- 46: up0007
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["idle"] = {start = 9, stop = 22, speed = 24, offsetX = 0, offsetY = 0},
		["singLEFT"] = {start = 23, stop = 30, speed = 24, offsetX = 0, offsetY = 0},
		["singRIGHT"] = {start = 31, stop = 38, speed = 24, offsetX = 0, offsetY = 0},
		["singUP"] = {start = 39, stop = 46, speed = 24, offsetX = 0, offsetY = 0},
		["singDOWN"] = {start = 1, stop = 8, speed = 24, offsetX = 0, offsetY = 0}
	},
	"idle", -- set to default animation
	false,
	{
		sing_duration = 6.1,
		isCharacter = true
	}
)
