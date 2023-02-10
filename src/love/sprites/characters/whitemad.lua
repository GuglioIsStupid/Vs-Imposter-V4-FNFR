return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("characters/whitemad")), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 592, height = 514, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: down0000
		{x = 0, y = 0, width = 592, height = 514, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 2: down0001
		{x = 592, y = 0, width = 592, height = 514, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 3: down0002
		{x = 1184, y = 0, width = 592, height = 514, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 4: down0003
		{x = 1184, y = 0, width = 592, height = 514, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 5: down0004
		{x = 1184, y = 0, width = 592, height = 514, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 6: down0005
		{x = 1184, y = 0, width = 592, height = 514, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 7: down0006
		{x = 1184, y = 0, width = 592, height = 514, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 8: down0007
		{x = 1184, y = 0, width = 592, height = 514, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 9: down0008
		{x = 1184, y = 0, width = 592, height = 514, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 10: down0009

		{x = 1776, y = 0, width = 502, height = 466, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 11: idle0000
		{x = 1776, y = 0, width = 502, height = 466, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 12: idle0001
		{x = 2278, y = 0, width = 502, height = 466, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 13: idle0002
		{x = 2278, y = 0, width = 502, height = 466, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 14: idle0003
		{x = 2780, y = 0, width = 502, height = 466, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 15: idle0004
		{x = 2780, y = 0, width = 502, height = 466, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 16: idle0005
		{x = 3282, y = 0, width = 502, height = 466, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 17: idle0006
		{x = 3282, y = 0, width = 502, height = 466, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 18: idle0007
		{x = 0, y = 514, width = 502, height = 466, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 19: idle0008
		{x = 0, y = 514, width = 502, height = 466, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 20: idle0009
		{x = 502, y = 514, width = 502, height = 466, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 21: idle0010
		{x = 502, y = 514, width = 502, height = 466, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 22: idle0011
		{x = 1004, y = 514, width = 502, height = 466, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 23: idle0012
		{x = 1004, y = 514, width = 502, height = 466, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 24: idle0013
		{x = 1506, y = 514, width = 502, height = 466, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 25: idle0014
		{x = 1506, y = 514, width = 502, height = 466, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 26: idle0015
		{x = 1506, y = 514, width = 502, height = 466, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 27: idle0016
		{x = 1506, y = 514, width = 502, height = 466, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 28: idle0017
		{x = 1506, y = 514, width = 502, height = 466, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 29: idle0018

		{x = 2008, y = 514, width = 745, height = 453, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 30: left0000
		{x = 2008, y = 514, width = 745, height = 453, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 31: left0001
		{x = 2753, y = 514, width = 745, height = 453, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 32: left0002
		{x = 0, y = 980, width = 745, height = 453, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 33: left0003
		{x = 0, y = 980, width = 745, height = 453, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 34: left0004
		{x = 0, y = 980, width = 745, height = 453, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 35: left0005
		{x = 0, y = 980, width = 745, height = 453, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 36: left0006
		{x = 0, y = 980, width = 745, height = 453, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 37: left0007
		{x = 0, y = 980, width = 745, height = 453, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 38: left0008
		{x = 0, y = 980, width = 745, height = 453, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 39: left0009

		{x = 745, y = 980, width = 588, height = 531, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 40: miss down0000
		{x = 1333, y = 980, width = 588, height = 531, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 41: miss down0001
		{x = 1921, y = 980, width = 588, height = 531, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 42: miss down0002
		{x = 1921, y = 980, width = 588, height = 531, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 43: miss down0003
		{x = 1921, y = 980, width = 588, height = 531, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 44: miss down0004
		{x = 1921, y = 980, width = 588, height = 531, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 45: miss down0005
		{x = 1921, y = 980, width = 588, height = 531, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 46: miss down0006
		{x = 1921, y = 980, width = 588, height = 531, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 47: miss down0007
		{x = 1921, y = 980, width = 588, height = 531, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 48: miss down0008
		{x = 1921, y = 980, width = 588, height = 531, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 49: miss down0009

		{x = 2509, y = 980, width = 753, height = 465, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 50: miss left0000
		{x = 3262, y = 980, width = 753, height = 465, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 51: miss left0001
		{x = 0, y = 1511, width = 753, height = 465, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 52: miss left0002
		{x = 0, y = 1511, width = 753, height = 465, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 53: miss left0003
		{x = 0, y = 1511, width = 753, height = 465, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 54: miss left0004
		{x = 0, y = 1511, width = 753, height = 465, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 55: miss left0005
		{x = 0, y = 1511, width = 753, height = 465, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 56: miss left0006
		{x = 0, y = 1511, width = 753, height = 465, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 57: miss left0007
		{x = 0, y = 1511, width = 753, height = 465, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 58: miss left0008

		{x = 753, y = 1511, width = 609, height = 484, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 59: miss right0000
		{x = 1362, y = 1511, width = 609, height = 484, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 60: miss right0001
		{x = 1971, y = 1511, width = 609, height = 484, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 61: miss right0002
		{x = 1971, y = 1511, width = 609, height = 484, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 62: miss right0003
		{x = 1971, y = 1511, width = 609, height = 484, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 63: miss right0004
		{x = 1971, y = 1511, width = 609, height = 484, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 64: miss right0005
		{x = 1971, y = 1511, width = 609, height = 484, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 65: miss right0006
		{x = 1971, y = 1511, width = 609, height = 484, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 66: miss right0007
		{x = 1971, y = 1511, width = 609, height = 484, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 67: miss right0008
		{x = 1971, y = 1511, width = 609, height = 484, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 68: miss right0009
		{x = 1971, y = 1511, width = 609, height = 484, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 69: miss right0010

		{x = 2580, y = 1511, width = 442, height = 459, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 70: miss up0000
		{x = 3022, y = 1511, width = 442, height = 459, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 71: miss up0001
		{x = 3464, y = 1511, width = 442, height = 459, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 72: miss up0002
		{x = 3464, y = 1511, width = 442, height = 459, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 73: miss up0003
		{x = 3464, y = 1511, width = 442, height = 459, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 74: miss up0004
		{x = 3464, y = 1511, width = 442, height = 459, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 75: miss up0005
		{x = 3464, y = 1511, width = 442, height = 459, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 76: miss up0006
		{x = 3464, y = 1511, width = 442, height = 459, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 77: miss up0007
		{x = 3464, y = 1511, width = 442, height = 459, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 78: miss up0008
		{x = 3464, y = 1511, width = 442, height = 459, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 79: miss up0009

		{x = 0, y = 1995, width = 617, height = 466, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 80: right0000
		{x = 0, y = 1995, width = 617, height = 466, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 81: right0001
		{x = 617, y = 1995, width = 617, height = 466, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 82: right0002
		{x = 1234, y = 1995, width = 617, height = 466, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 83: right0003
		{x = 1234, y = 1995, width = 617, height = 466, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 84: right0004
		{x = 1234, y = 1995, width = 617, height = 466, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 85: right0005
		{x = 1234, y = 1995, width = 617, height = 466, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 86: right0006
		{x = 1234, y = 1995, width = 617, height = 466, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 87: right0007
		{x = 1234, y = 1995, width = 617, height = 466, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 88: right0008
		{x = 1234, y = 1995, width = 617, height = 466, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 89: right0009
		{x = 1234, y = 1995, width = 617, height = 466, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 90: right0010

		{x = 1851, y = 1995, width = 434, height = 445, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 91: up0000
		{x = 1851, y = 1995, width = 434, height = 445, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 92: up0001
		{x = 2285, y = 1995, width = 434, height = 445, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 93: up0002
		{x = 2719, y = 1995, width = 434, height = 445, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 94: up0003
		{x = 2719, y = 1995, width = 434, height = 445, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 95: up0004
		{x = 2719, y = 1995, width = 434, height = 445, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 96: up0005
		{x = 2719, y = 1995, width = 434, height = 445, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 97: up0006
		{x = 2719, y = 1995, width = 434, height = 445, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 98: up0007
		{x = 2719, y = 1995, width = 434, height = 445, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 99: up0008
		{x = 2719, y = 1995, width = 434, height = 445, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0} -- 100: up0009
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["singDOWN"] = {start = 1, stop = 11, speed = 24, offsetX = 0, offsetY = 0},
		["idle"] = {start = 11, stop = 29, speed = 24, offsetX = 0, offsetY = 0},
		["singLEFT"] = {start = 30, stop = 39, speed = 24, offsetX = 0, offsetY = 0},
		["miss down"] = {start = 40, stop = 49, speed = 24, offsetX = 0, offsetY = 0},
		["miss left"] = {start = 50, stop = 58, speed = 24, offsetX = 0, offsetY = 0},
		["miss right"] = {start = 59, stop = 69, speed = 24, offsetX = 0, offsetY = 0},
		["miss up"] = {start = 70, stop = 79, speed = 24, offsetX = 0, offsetY = 0},
		["singRIGHT"] = {start = 80, stop = 90, speed = 24, offsetX = 0, offsetY = 0},
		["singUP"] = {start = 91, stop = 100, speed = 24, offsetX = 0, offsetY = 0},

	},
	"idle", -- set to default animation
	false,
	{
		sing_duration = 4,
		isCharacter = true
	}
)
