return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("characters/biddle")), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 532, height = 602, offsetX = -1, offsetY = 0, offsetWidth = 542, offsetHeight = 604}, -- 1: biddle down0000
		{x = 0, y = 0, width = 532, height = 602, offsetX = -1, offsetY = 0, offsetWidth = 542, offsetHeight = 604}, -- 2: biddle down0001
		{x = 537, y = 0, width = 540, height = 593, offsetX = 0, offsetY = -11, offsetWidth = 542, offsetHeight = 604}, -- 3: biddle down0002
		{x = 537, y = 0, width = 540, height = 593, offsetX = 0, offsetY = -11, offsetWidth = 542, offsetHeight = 604}, -- 4: biddle down0003
		{x = 1082, y = 0, width = 542, height = 587, offsetX = 0, offsetY = -17, offsetWidth = 542, offsetHeight = 604}, -- 5: biddle down0004
		{x = 1082, y = 0, width = 542, height = 587, offsetX = 0, offsetY = -17, offsetWidth = 542, offsetHeight = 604}, -- 6: biddle down0005
		{x = 1629, y = 0, width = 542, height = 587, offsetX = 0, offsetY = -17, offsetWidth = 542, offsetHeight = 604}, -- 7: biddle down0006
		{x = 1629, y = 0, width = 542, height = 587, offsetX = 0, offsetY = -17, offsetWidth = 542, offsetHeight = 604}, -- 8: biddle down0007
		{x = 2176, y = 0, width = 542, height = 587, offsetX = 0, offsetY = -17, offsetWidth = 542, offsetHeight = 604}, -- 9: biddle down0008
		{x = 2176, y = 0, width = 542, height = 587, offsetX = 0, offsetY = -17, offsetWidth = 542, offsetHeight = 604}, -- 10: biddle down0009
		{x = 2176, y = 0, width = 542, height = 587, offsetX = 0, offsetY = -17, offsetWidth = 542, offsetHeight = 604}, -- 11: biddle down0010
		{x = 2176, y = 0, width = 542, height = 587, offsetX = 0, offsetY = -17, offsetWidth = 542, offsetHeight = 604}, -- 12: biddle down0011
		{x = 2176, y = 0, width = 542, height = 587, offsetX = 0, offsetY = -17, offsetWidth = 542, offsetHeight = 604}, -- 13: biddle down0012
		{x = 2176, y = 0, width = 542, height = 587, offsetX = 0, offsetY = -17, offsetWidth = 542, offsetHeight = 604}, -- 14: biddle down0013

		{x = 2723, y = 0, width = 485, height = 753, offsetX = -17, offsetY = -14, offsetWidth = 502, offsetHeight = 768}, -- 15: biddle idle0000
		{x = 2723, y = 0, width = 485, height = 753, offsetX = -17, offsetY = -14, offsetWidth = 502, offsetHeight = 768}, -- 16: biddle idle0001
		{x = 3213, y = 0, width = 496, height = 747, offsetX = -4, offsetY = -21, offsetWidth = 502, offsetHeight = 768}, -- 17: biddle idle0002
		{x = 3213, y = 0, width = 496, height = 747, offsetX = -4, offsetY = -21, offsetWidth = 502, offsetHeight = 768}, -- 18: biddle idle0003
		{x = 0, y = 758, width = 499, height = 755, offsetX = 0, offsetY = -13, offsetWidth = 502, offsetHeight = 768}, -- 19: biddle idle0004
		{x = 0, y = 758, width = 499, height = 755, offsetX = 0, offsetY = -13, offsetWidth = 502, offsetHeight = 768}, -- 20: biddle idle0005
		{x = 504, y = 758, width = 497, height = 768, offsetX = -3, offsetY = 0, offsetWidth = 502, offsetHeight = 768}, -- 21: biddle idle0006
		{x = 504, y = 758, width = 497, height = 768, offsetX = -3, offsetY = 0, offsetWidth = 502, offsetHeight = 768}, -- 22: biddle idle0007
		{x = 1006, y = 758, width = 495, height = 768, offsetX = -4, offsetY = 0, offsetWidth = 502, offsetHeight = 768}, -- 23: biddle idle0008
		{x = 1006, y = 758, width = 495, height = 768, offsetX = -4, offsetY = 0, offsetWidth = 502, offsetHeight = 768}, -- 24: biddle idle0009
		{x = 1006, y = 758, width = 495, height = 768, offsetX = -4, offsetY = 0, offsetWidth = 502, offsetHeight = 768}, -- 25: biddle idle0010
		{x = 1006, y = 758, width = 495, height = 768, offsetX = -4, offsetY = 0, offsetWidth = 502, offsetHeight = 768}, -- 26: biddle idle0011
		{x = 1006, y = 758, width = 495, height = 768, offsetX = -4, offsetY = 0, offsetWidth = 502, offsetHeight = 768}, -- 27: biddle idle0012
		{x = 1006, y = 758, width = 495, height = 768, offsetX = -4, offsetY = 0, offsetWidth = 502, offsetHeight = 768}, -- 28: biddle idle0013

		{x = 1506, y = 758, width = 520, height = 702, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 29: biddle left0000
		{x = 1506, y = 758, width = 520, height = 702, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 30: biddle left0001
		{x = 2031, y = 758, width = 518, height = 696, offsetX = -1, offsetY = -6, offsetWidth = 520, offsetHeight = 702}, -- 31: biddle left0002
		{x = 2031, y = 758, width = 518, height = 696, offsetX = -1, offsetY = -6, offsetWidth = 520, offsetHeight = 702}, -- 32: biddle left0003
		{x = 2554, y = 758, width = 514, height = 696, offsetX = -1, offsetY = -6, offsetWidth = 520, offsetHeight = 702}, -- 33: biddle left0004
		{x = 2554, y = 758, width = 514, height = 696, offsetX = -1, offsetY = -6, offsetWidth = 520, offsetHeight = 702}, -- 34: biddle left0005
		{x = 3073, y = 758, width = 514, height = 696, offsetX = -1, offsetY = -6, offsetWidth = 520, offsetHeight = 702}, -- 35: biddle left0006
		{x = 3073, y = 758, width = 514, height = 696, offsetX = -1, offsetY = -6, offsetWidth = 520, offsetHeight = 702}, -- 36: biddle left0007
		{x = 0, y = 1531, width = 514, height = 696, offsetX = -1, offsetY = -6, offsetWidth = 520, offsetHeight = 702}, -- 37: biddle left0008
		{x = 0, y = 1531, width = 514, height = 696, offsetX = -1, offsetY = -6, offsetWidth = 520, offsetHeight = 702}, -- 38: biddle left0009
		{x = 0, y = 1531, width = 514, height = 696, offsetX = -1, offsetY = -6, offsetWidth = 520, offsetHeight = 702}, -- 39: biddle left0010
		{x = 0, y = 1531, width = 514, height = 696, offsetX = -1, offsetY = -6, offsetWidth = 520, offsetHeight = 702}, -- 40: biddle left0011
		{x = 0, y = 1531, width = 514, height = 696, offsetX = -1, offsetY = -6, offsetWidth = 520, offsetHeight = 702}, -- 41: biddle left0012
		{x = 0, y = 1531, width = 514, height = 696, offsetX = -1, offsetY = -6, offsetWidth = 520, offsetHeight = 702}, -- 42: biddle left0013

		{x = 519, y = 1531, width = 495, height = 752, offsetX = -6, offsetY = 0, offsetWidth = 510, offsetHeight = 752}, -- 43: biddle right0000
		{x = 519, y = 1531, width = 495, height = 752, offsetX = -6, offsetY = 0, offsetWidth = 510, offsetHeight = 752}, -- 44: biddle right0001
		{x = 1019, y = 1531, width = 509, height = 745, offsetX = 0, offsetY = -7, offsetWidth = 510, offsetHeight = 752}, -- 45: biddle right0002
		{x = 1019, y = 1531, width = 509, height = 745, offsetX = 0, offsetY = -7, offsetWidth = 510, offsetHeight = 752}, -- 46: biddle right0003
		{x = 1533, y = 1531, width = 510, height = 746, offsetX = 0, offsetY = -6, offsetWidth = 510, offsetHeight = 752}, -- 47: biddle right0004
		{x = 1533, y = 1531, width = 510, height = 746, offsetX = 0, offsetY = -6, offsetWidth = 510, offsetHeight = 752}, -- 48: biddle right0005
		{x = 2048, y = 1531, width = 510, height = 746, offsetX = 0, offsetY = -6, offsetWidth = 510, offsetHeight = 752}, -- 49: biddle right0006
		{x = 2048, y = 1531, width = 510, height = 746, offsetX = 0, offsetY = -6, offsetWidth = 510, offsetHeight = 752}, -- 50: biddle right0007
		{x = 2563, y = 1531, width = 510, height = 746, offsetX = 0, offsetY = -6, offsetWidth = 510, offsetHeight = 752}, -- 51: biddle right0008
		{x = 2563, y = 1531, width = 510, height = 746, offsetX = 0, offsetY = -6, offsetWidth = 510, offsetHeight = 752}, -- 52: biddle right0009
		{x = 2563, y = 1531, width = 510, height = 746, offsetX = 0, offsetY = -6, offsetWidth = 510, offsetHeight = 752}, -- 53: biddle right0010
		{x = 2563, y = 1531, width = 510, height = 746, offsetX = 0, offsetY = -6, offsetWidth = 510, offsetHeight = 752}, -- 54: biddle right0011
		{x = 2563, y = 1531, width = 510, height = 746, offsetX = 0, offsetY = -6, offsetWidth = 510, offsetHeight = 752}, -- 55: biddle right0012
		{x = 2563, y = 1531, width = 510, height = 746, offsetX = 0, offsetY = -6, offsetWidth = 510, offsetHeight = 752}, -- 56: biddle right0013

		{x = 3078, y = 1531, width = 504, height = 719, offsetX = 0, offsetY = -22, offsetWidth = 504, offsetHeight = 741}, -- 57: biddle up0000
		{x = 3078, y = 1531, width = 504, height = 719, offsetX = 0, offsetY = -22, offsetWidth = 504, offsetHeight = 741}, -- 58: biddle up0001
		{x = 3587, y = 1531, width = 496, height = 733, offsetX = -6, offsetY = -7, offsetWidth = 504, offsetHeight = 741}, -- 59: biddle up0002
		{x = 3587, y = 1531, width = 496, height = 733, offsetX = -6, offsetY = -7, offsetWidth = 504, offsetHeight = 741}, -- 60: biddle up0003
		{x = 0, y = 2288, width = 493, height = 740, offsetX = -10, offsetY = 0, offsetWidth = 504, offsetHeight = 741}, -- 61: biddle up0004
		{x = 0, y = 2288, width = 493, height = 740, offsetX = -10, offsetY = 0, offsetWidth = 504, offsetHeight = 741}, -- 62: biddle up0005
		{x = 498, y = 2288, width = 493, height = 740, offsetX = -10, offsetY = 0, offsetWidth = 504, offsetHeight = 741}, -- 63: biddle up0006
		{x = 498, y = 2288, width = 493, height = 740, offsetX = -10, offsetY = 0, offsetWidth = 504, offsetHeight = 741}, -- 64: biddle up0007
		{x = 996, y = 2288, width = 493, height = 740, offsetX = -10, offsetY = 0, offsetWidth = 504, offsetHeight = 741}, -- 65: biddle up0008
		{x = 996, y = 2288, width = 493, height = 740, offsetX = -10, offsetY = 0, offsetWidth = 504, offsetHeight = 741}, -- 66: biddle up0009
		{x = 996, y = 2288, width = 493, height = 740, offsetX = -10, offsetY = 0, offsetWidth = 504, offsetHeight = 741}, -- 67: biddle up0010
		{x = 996, y = 2288, width = 493, height = 740, offsetX = -10, offsetY = 0, offsetWidth = 504, offsetHeight = 741}, -- 68: biddle up0011
		{x = 996, y = 2288, width = 493, height = 740, offsetX = -10, offsetY = 0, offsetWidth = 504, offsetHeight = 741}, -- 69: biddle up0012
		{x = 996, y = 2288, width = 493, height = 740, offsetX = -10, offsetY = 0, offsetWidth = 504, offsetHeight = 741} -- 70: biddle up0013
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["singDOWN"] = {start = 1, stop = 14, speed = 24, offsetX = 0, offsetY = 0},
		["idle"] = {start = 15, stop = 28, speed = 24, offsetX = 0, offsetY = 0},
		["singLEFT"] = {start = 29, stop = 42, speed = 24, offsetX = 0, offsetY = 0},
		["singRIGHT"] = {start = 43, stop = 56, speed = 24, offsetX = 0, offsetY = 0},
		["singUP"] = {start = 57, stop = 70, speed = 24, offsetX = 0, offsetY = 0},

	},
	"idle", -- set to default animation
	false,
	{
		sing_duration = 4,
		isCharacter = true
	}
)
