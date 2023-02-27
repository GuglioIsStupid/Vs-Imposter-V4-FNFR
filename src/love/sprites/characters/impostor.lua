return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("characters/impostor")), -- Do not add the .png extension
	{
		{x = 1, y = 1, width = 657, height = 354, offsetX = 0, offsetY = 0, offsetWidth = 673, offsetHeight = 354}, -- 1: imposter left0000
		{x = 1, y = 1, width = 657, height = 354, offsetX = 0, offsetY = 0, offsetWidth = 673, offsetHeight = 354}, -- 2: imposter left0001
		{x = 659, y = 1, width = 659, height = 354, offsetX = -14, offsetY = 0, offsetWidth = 673, offsetHeight = 354}, -- 3: imposter left0002
		{x = 659, y = 1, width = 659, height = 354, offsetX = -14, offsetY = 0, offsetWidth = 673, offsetHeight = 354}, -- 4: imposter left0003
		{x = 1319, y = 1, width = 660, height = 354, offsetX = -13, offsetY = 0, offsetWidth = 673, offsetHeight = 354}, -- 5: imposter left0004
		{x = 1319, y = 1, width = 660, height = 354, offsetX = -13, offsetY = 0, offsetWidth = 673, offsetHeight = 354}, -- 6: imposter left0005
		{x = 1319, y = 1, width = 660, height = 354, offsetX = -13, offsetY = 0, offsetWidth = 673, offsetHeight = 354}, -- 7: imposter left0006
		{x = 1319, y = 1, width = 660, height = 354, offsetX = -13, offsetY = 0, offsetWidth = 673, offsetHeight = 354}, -- 8: imposter left0007
		{x = 1319, y = 1, width = 660, height = 354, offsetX = -13, offsetY = 0, offsetWidth = 673, offsetHeight = 354}, -- 9: imposter left0008
		{x = 1319, y = 1, width = 660, height = 354, offsetX = -13, offsetY = 0, offsetWidth = 673, offsetHeight = 354}, -- 10: imposter left0009

		{x = 1, y = 356, width = 466, height = 364, offsetX = -43, offsetY = -55, offsetWidth = 520, offsetHeight = 419}, -- 11: impostor down0000
		{x = 1, y = 356, width = 466, height = 364, offsetX = -43, offsetY = -55, offsetWidth = 520, offsetHeight = 419}, -- 12: impostor down0001
		{x = 468, y = 356, width = 520, height = 402, offsetX = 0, offsetY = 0, offsetWidth = 520, offsetHeight = 419}, -- 13: impostor down0002
		{x = 468, y = 356, width = 520, height = 402, offsetX = 0, offsetY = 0, offsetWidth = 520, offsetHeight = 419}, -- 14: impostor down0003
		{x = 989, y = 356, width = 520, height = 401, offsetX = 0, offsetY = 0, offsetWidth = 520, offsetHeight = 419}, -- 15: impostor down0004
		{x = 989, y = 356, width = 520, height = 401, offsetX = 0, offsetY = 0, offsetWidth = 520, offsetHeight = 419}, -- 16: impostor down0005

		{x = 1, y = 759, width = 586, height = 342, offsetX = -3, offsetY = -27, offsetWidth = 590, offsetHeight = 369}, -- 17: impostor idle0000
		{x = 1, y = 759, width = 586, height = 342, offsetX = -3, offsetY = -27, offsetWidth = 590, offsetHeight = 369}, -- 18: impostor idle0001
		{x = 588, y = 759, width = 588, height = 338, offsetX = -2, offsetY = -31, offsetWidth = 590, offsetHeight = 369}, -- 19: impostor idle0002
		{x = 588, y = 759, width = 588, height = 338, offsetX = -2, offsetY = -31, offsetWidth = 590, offsetHeight = 369}, -- 20: impostor idle0003
		{x = 1177, y = 759, width = 589, height = 343, offsetX = 0, offsetY = -26, offsetWidth = 590, offsetHeight = 369}, -- 21: impostor idle0004
		{x = 1177, y = 759, width = 589, height = 343, offsetX = 0, offsetY = -26, offsetWidth = 590, offsetHeight = 369}, -- 22: impostor idle0005
		{x = 1, y = 1103, width = 579, height = 363, offsetX = -4, offsetY = -6, offsetWidth = 590, offsetHeight = 369}, -- 23: impostor idle0006
		{x = 1, y = 1103, width = 579, height = 363, offsetX = -4, offsetY = -6, offsetWidth = 590, offsetHeight = 369}, -- 24: impostor idle0007
		{x = 581, y = 1103, width = 577, height = 369, offsetX = -6, offsetY = 0, offsetWidth = 590, offsetHeight = 369}, -- 25: impostor idle0008
		{x = 581, y = 1103, width = 577, height = 369, offsetX = -6, offsetY = 0, offsetWidth = 590, offsetHeight = 369}, -- 26: impostor idle0009
		{x = 581, y = 1103, width = 577, height = 369, offsetX = -6, offsetY = 0, offsetWidth = 590, offsetHeight = 369}, -- 27: impostor idle0010

		{x = 1159, y = 1103, width = 391, height = 383, offsetX = -27, offsetY = 0, offsetWidth = 422, offsetHeight = 383}, -- 28: impostor right0000
		{x = 1159, y = 1103, width = 391, height = 383, offsetX = -27, offsetY = 0, offsetWidth = 422, offsetHeight = 383}, -- 29: impostor right0001
		{x = 1551, y = 1103, width = 422, height = 373, offsetX = 0, offsetY = 0, offsetWidth = 422, offsetHeight = 383}, -- 30: impostor right0002
		{x = 1551, y = 1103, width = 422, height = 373, offsetX = 0, offsetY = 0, offsetWidth = 422, offsetHeight = 383}, -- 31: impostor right0003
		{x = 1, y = 1487, width = 422, height = 374, offsetX = 0, offsetY = 0, offsetWidth = 422, offsetHeight = 383}, -- 32: impostor right0004
		{x = 1, y = 1487, width = 422, height = 374, offsetX = 0, offsetY = 0, offsetWidth = 422, offsetHeight = 383}, -- 33: impostor right0005

		{x = 424, y = 1487, width = 394, height = 405, offsetX = 0, offsetY = 0, offsetWidth = 398, offsetHeight = 405}, -- 34: impostor up20000
		{x = 424, y = 1487, width = 394, height = 405, offsetX = 0, offsetY = 0, offsetWidth = 398, offsetHeight = 405}, -- 35: impostor up20001
		{x = 819, y = 1487, width = 384, height = 366, offsetX = -13, offsetY = -38, offsetWidth = 398, offsetHeight = 405}, -- 36: impostor up20002
		{x = 819, y = 1487, width = 384, height = 366, offsetX = -13, offsetY = -38, offsetWidth = 398, offsetHeight = 405}, -- 37: impostor up20003
		{x = 1204, y = 1487, width = 385, height = 370, offsetX = -13, offsetY = -34, offsetWidth = 398, offsetHeight = 405}, -- 38: impostor up20004
		{x = 1204, y = 1487, width = 385, height = 370, offsetX = -13, offsetY = -34, offsetWidth = 398, offsetHeight = 405} -- 39: impostor up20005
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["singLEFT"] = {start = 1, stop = 10, speed = 24, offsetX = 0, offsetY = 0},
		["singDOWN"] = {start = 11, stop = 16, speed = 24, offsetX = 0, offsetY = 0},
		["idle"] = {start = 17, stop = 27, speed = 24, offsetX = 0, offsetY = 0},
		["singRIGHT"] = {start = 28, stop = 33, speed = 24, offsetX = 0, offsetY = 0},
		["singUP"] = {start = 34, stop = 39, speed = 24, offsetX = 0, offsetY = 0},

	},
	"idle", -- set to default animation
	false,
	{
		sing_duration = 4,
		isCharacter = true
	}
)

