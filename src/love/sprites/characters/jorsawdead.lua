return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("characters/jorsawdead")), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 374, height = 392, offsetX = -2, offsetY = -11, offsetWidth = 376, offsetHeight = 403}, -- 1: down0000
		{x = 0, y = 0, width = 374, height = 392, offsetX = -2, offsetY = -11, offsetWidth = 376, offsetHeight = 403}, -- 2: down0001
		{x = 379, y = 0, width = 371, height = 396, offsetX = -5, offsetY = -2, offsetWidth = 376, offsetHeight = 403}, -- 3: down0002
		{x = 755, y = 0, width = 376, height = 400, offsetX = 0, offsetY = -2, offsetWidth = 376, offsetHeight = 403}, -- 4: down0003
		{x = 1136, y = 0, width = 370, height = 396, offsetX = -5, offsetY = 0, offsetWidth = 376, offsetHeight = 403}, -- 5: down0004
		{x = 1136, y = 0, width = 370, height = 396, offsetX = -5, offsetY = 0, offsetWidth = 376, offsetHeight = 403}, -- 6: down0005
		{x = 1511, y = 0, width = 374, height = 400, offsetX = -1, offsetY = 0, offsetWidth = 376, offsetHeight = 403}, -- 7: down0006
		{x = 1511, y = 0, width = 374, height = 400, offsetX = -1, offsetY = 0, offsetWidth = 376, offsetHeight = 403}, -- 8: down0007
		{x = 1890, y = 0, width = 370, height = 396, offsetX = -5, offsetY = 0, offsetWidth = 376, offsetHeight = 403}, -- 9: down0008
		{x = 1890, y = 0, width = 370, height = 396, offsetX = -5, offsetY = 0, offsetWidth = 376, offsetHeight = 403}, -- 10: down0009
		{x = 2265, y = 0, width = 374, height = 400, offsetX = -1, offsetY = 0, offsetWidth = 376, offsetHeight = 403}, -- 11: down0010
		{x = 2265, y = 0, width = 374, height = 400, offsetX = -1, offsetY = 0, offsetWidth = 376, offsetHeight = 403}, -- 12: down0011
		{x = 2644, y = 0, width = 370, height = 396, offsetX = -5, offsetY = 0, offsetWidth = 376, offsetHeight = 403}, -- 13: down0012
		{x = 2644, y = 0, width = 370, height = 396, offsetX = -5, offsetY = 0, offsetWidth = 376, offsetHeight = 403}, -- 14: down0013
		{x = 3019, y = 0, width = 378, height = 437, offsetX = 0, offsetY = -10, offsetWidth = 378, offsetHeight = 449}, -- 15: idle0000
		{x = 3402, y = 0, width = 366, height = 439, offsetX = -12, offsetY = -10, offsetWidth = 378, offsetHeight = 449}, -- 16: idle0001
		{x = 0, y = 444, width = 372, height = 437, offsetX = 0, offsetY = -3, offsetWidth = 378, offsetHeight = 449}, -- 17: idle0002
		{x = 377, y = 444, width = 372, height = 437, offsetX = 0, offsetY = -3, offsetWidth = 378, offsetHeight = 449}, -- 18: idle0003
		{x = 754, y = 444, width = 362, height = 435, offsetX = -9, offsetY = 0, offsetWidth = 378, offsetHeight = 449}, -- 19: idle0004
		{x = 1121, y = 444, width = 363, height = 435, offsetX = -8, offsetY = 0, offsetWidth = 378, offsetHeight = 449}, -- 20: idle0005
		{x = 1121, y = 444, width = 363, height = 435, offsetX = -8, offsetY = 0, offsetWidth = 378, offsetHeight = 449}, -- 21: idle0006
		{x = 1489, y = 444, width = 369, height = 431, offsetX = -2, offsetY = 0, offsetWidth = 378, offsetHeight = 449}, -- 22: idle0007
		{x = 1489, y = 444, width = 369, height = 431, offsetX = -2, offsetY = 0, offsetWidth = 378, offsetHeight = 449}, -- 23: idle0008
		{x = 1863, y = 444, width = 357, height = 436, offsetX = -14, offsetY = 0, offsetWidth = 378, offsetHeight = 449}, -- 24: idle0009
		{x = 1863, y = 444, width = 357, height = 436, offsetX = -14, offsetY = 0, offsetWidth = 378, offsetHeight = 449}, -- 25: idle0010
		{x = 1121, y = 444, width = 363, height = 435, offsetX = -8, offsetY = 0, offsetWidth = 378, offsetHeight = 449}, -- 26: idle0011
		{x = 2225, y = 444, width = 365, height = 435, offsetX = -9, offsetY = -4, offsetWidth = 378, offsetHeight = 449}, -- 27: idle0012
		{x = 2595, y = 444, width = 371, height = 432, offsetX = -3, offsetY = -4, offsetWidth = 378, offsetHeight = 449}, -- 28: idle0013
		{x = 2971, y = 444, width = 332, height = 427, offsetX = 0, offsetY = -3, offsetWidth = 347, offsetHeight = 432}, -- 29: left0000
		{x = 2971, y = 444, width = 332, height = 427, offsetX = 0, offsetY = -3, offsetWidth = 347, offsetHeight = 432}, -- 30: left0001
		{x = 3308, y = 444, width = 336, height = 431, offsetX = -11, offsetY = -1, offsetWidth = 347, offsetHeight = 432}, -- 31: left0002
		{x = 3308, y = 444, width = 336, height = 431, offsetX = -11, offsetY = -1, offsetWidth = 347, offsetHeight = 432}, -- 32: left0003
		{x = 3649, y = 444, width = 335, height = 430, offsetX = -9, offsetY = 0, offsetWidth = 347, offsetHeight = 432}, -- 33: left0004
		{x = 0, y = 886, width = 336, height = 430, offsetX = -8, offsetY = 0, offsetWidth = 347, offsetHeight = 432}, -- 34: left0005
		{x = 341, y = 886, width = 336, height = 432, offsetX = -8, offsetY = 0, offsetWidth = 347, offsetHeight = 432}, -- 35: left0006
		{x = 682, y = 886, width = 336, height = 432, offsetX = -8, offsetY = 0, offsetWidth = 347, offsetHeight = 432}, -- 36: left0007
		{x = 1023, y = 886, width = 336, height = 430, offsetX = -8, offsetY = 0, offsetWidth = 347, offsetHeight = 432}, -- 37: left0008
		{x = 3649, y = 444, width = 335, height = 430, offsetX = -9, offsetY = 0, offsetWidth = 347, offsetHeight = 432}, -- 38: left0009
		{x = 1364, y = 886, width = 335, height = 432, offsetX = -9, offsetY = 0, offsetWidth = 347, offsetHeight = 432}, -- 39: left0010
		{x = 341, y = 886, width = 336, height = 432, offsetX = -8, offsetY = 0, offsetWidth = 347, offsetHeight = 432}, -- 40: left0011
		{x = 0, y = 886, width = 336, height = 430, offsetX = -8, offsetY = 0, offsetWidth = 347, offsetHeight = 432}, -- 41: left0012
		{x = 1023, y = 886, width = 336, height = 430, offsetX = -8, offsetY = 0, offsetWidth = 347, offsetHeight = 432}, -- 42: left0013
		{x = 1704, y = 886, width = 477, height = 407, offsetX = -12, offsetY = 0, offsetWidth = 489, offsetHeight = 407}, -- 43: right0000
		{x = 1704, y = 886, width = 477, height = 407, offsetX = -12, offsetY = 0, offsetWidth = 489, offsetHeight = 407}, -- 44: right0001
		{x = 2186, y = 886, width = 474, height = 402, offsetX = 0, offsetY = -4, offsetWidth = 489, offsetHeight = 407}, -- 45: right0002
		{x = 2186, y = 886, width = 474, height = 402, offsetX = 0, offsetY = -4, offsetWidth = 489, offsetHeight = 407}, -- 46: right0003
		{x = 2665, y = 886, width = 471, height = 403, offsetX = -5, offsetY = -4, offsetWidth = 489, offsetHeight = 407}, -- 47: right0004
		{x = 2665, y = 886, width = 471, height = 403, offsetX = -5, offsetY = -4, offsetWidth = 489, offsetHeight = 407}, -- 48: right0005
		{x = 3141, y = 886, width = 474, height = 402, offsetX = -2, offsetY = -4, offsetWidth = 489, offsetHeight = 407}, -- 49: right0006
		{x = 3141, y = 886, width = 474, height = 402, offsetX = -2, offsetY = -4, offsetWidth = 489, offsetHeight = 407}, -- 50: right0007
		{x = 3620, y = 886, width = 471, height = 403, offsetX = -5, offsetY = -4, offsetWidth = 489, offsetHeight = 407}, -- 51: right0008
		{x = 3620, y = 886, width = 471, height = 403, offsetX = -5, offsetY = -4, offsetWidth = 489, offsetHeight = 407}, -- 52: right0009
		{x = 0, y = 1323, width = 474, height = 402, offsetX = -2, offsetY = -4, offsetWidth = 489, offsetHeight = 407}, -- 53: right0010
		{x = 0, y = 1323, width = 474, height = 402, offsetX = -2, offsetY = -4, offsetWidth = 489, offsetHeight = 407}, -- 54: right0011
		{x = 479, y = 1323, width = 471, height = 403, offsetX = -5, offsetY = -4, offsetWidth = 489, offsetHeight = 407}, -- 55: right0012
		{x = 479, y = 1323, width = 471, height = 403, offsetX = -5, offsetY = -4, offsetWidth = 489, offsetHeight = 407}, -- 56: right0013
		{x = 955, y = 1323, width = 314, height = 481, offsetX = -5, offsetY = 0, offsetWidth = 319, offsetHeight = 491}, -- 57: up0000
		{x = 955, y = 1323, width = 314, height = 481, offsetX = -5, offsetY = 0, offsetWidth = 319, offsetHeight = 491}, -- 58: up0001
		{x = 1274, y = 1323, width = 317, height = 481, offsetX = -2, offsetY = -8, offsetWidth = 319, offsetHeight = 491}, -- 59: up0002
		{x = 1274, y = 1323, width = 317, height = 481, offsetX = -2, offsetY = -8, offsetWidth = 319, offsetHeight = 491}, -- 60: up0003
		{x = 1596, y = 1323, width = 319, height = 481, offsetX = 0, offsetY = -10, offsetWidth = 319, offsetHeight = 491}, -- 61: up0004
		{x = 1596, y = 1323, width = 319, height = 481, offsetX = 0, offsetY = -10, offsetWidth = 319, offsetHeight = 491}, -- 62: up0005
		{x = 1920, y = 1323, width = 316, height = 481, offsetX = -3, offsetY = -10, offsetWidth = 319, offsetHeight = 491}, -- 63: up0006
		{x = 1920, y = 1323, width = 316, height = 481, offsetX = -3, offsetY = -10, offsetWidth = 319, offsetHeight = 491}, -- 64: up0007
		{x = 2241, y = 1323, width = 319, height = 481, offsetX = 0, offsetY = -10, offsetWidth = 319, offsetHeight = 491}, -- 65: up0008
		{x = 2241, y = 1323, width = 319, height = 481, offsetX = 0, offsetY = -10, offsetWidth = 319, offsetHeight = 491}, -- 66: up0009
		{x = 2565, y = 1323, width = 316, height = 481, offsetX = -3, offsetY = -10, offsetWidth = 319, offsetHeight = 491}, -- 67: up0010
		{x = 2565, y = 1323, width = 316, height = 481, offsetX = -3, offsetY = -10, offsetWidth = 319, offsetHeight = 491}, -- 68: up0011
		{x = 2886, y = 1323, width = 319, height = 481, offsetX = 0, offsetY = -10, offsetWidth = 319, offsetHeight = 491}, -- 69: up0012
		{x = 2886, y = 1323, width = 319, height = 481, offsetX = 0, offsetY = -10, offsetWidth = 319, offsetHeight = 491} -- 70: up0013
	},
	{
		["idle"] = {start = 15, stop = 28, speed = 24, offsetX = 0, offsetY = 0},
		["singDOWN"] = {start = 1, stop = 14, speed = 24, offsetX = -36, offsetY = -17},
		["singLEFT"] = {start = 29, stop = 42, speed = 24, offsetX = 32, offsetY = 8},
		["singRIGHT"] = {start = 43, stop = 56, speed = 24, offsetX = -53, offsetY = 0},
		["singUP"] = {start = 57, stop = 70, speed = 24, offsetX = -10, offsetY = 35}
	},
	"idle", -- set to default animation
	false,
	{
		isCharacter = true,
		sing_duration = 4
	}
)
