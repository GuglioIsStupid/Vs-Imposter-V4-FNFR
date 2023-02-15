return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("characters/whitedk")), -- Do not add the .png extension
	{
		{x = 10, y = 10, width = 539, height = 399, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: down_w0000
		{x = 10, y = 10, width = 539, height = 399, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 2: down_w0001
		{x = 559, y = 10, width = 539, height = 399, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 3: down_w0002
		{x = 559, y = 10, width = 539, height = 399, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 4: down_w0003
		{x = 1108, y = 10, width = 539, height = 399, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 5: down_w0004
		{x = 1108, y = 10, width = 539, height = 399, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 6: down_w0005
		{x = 1657, y = 10, width = 539, height = 399, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 7: down_w0006

		{x = 2206, y = 10, width = 341, height = 420, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 8: idle_w0000
		{x = 2206, y = 10, width = 341, height = 420, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 9: idle_w0001
		{x = 2557, y = 10, width = 341, height = 420, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 10: idle_w0002
		{x = 2557, y = 10, width = 341, height = 420, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 11: idle_w0003
		{x = 2908, y = 10, width = 341, height = 420, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 12: idle_w0004
		{x = 2908, y = 10, width = 341, height = 420, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 13: idle_w0005
		{x = 3259, y = 10, width = 341, height = 420, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 14: idle_w0006
		{x = 3259, y = 10, width = 341, height = 420, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 15: idle_w0007
		{x = 3610, y = 10, width = 341, height = 420, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 16: idle_w0008
		{x = 3610, y = 10, width = 341, height = 420, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 17: idle_w0009
		{x = 3610, y = 10, width = 341, height = 420, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 18: idle_w0010
		{x = 3610, y = 10, width = 341, height = 420, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 19: idle_w0011
		{x = 3610, y = 10, width = 341, height = 420, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 20: idle_w0012
		{x = 3610, y = 10, width = 341, height = 420, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 21: idle_w0013

		{x = 10, y = 440, width = 536, height = 404, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 22: left_w0000
		{x = 10, y = 440, width = 536, height = 404, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 23: left_w0001
		{x = 556, y = 440, width = 536, height = 404, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 24: left_w0002
		{x = 556, y = 440, width = 536, height = 404, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 25: left_w0003
		{x = 1102, y = 440, width = 536, height = 404, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 26: left_w0004
		{x = 1102, y = 440, width = 536, height = 404, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 27: left_w0005
		{x = 1648, y = 440, width = 536, height = 404, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 28: left_w0006

		{x = 2194, y = 440, width = 527, height = 419, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 29: right_w0000
		{x = 2194, y = 440, width = 527, height = 419, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 30: right_w0001
		{x = 2731, y = 440, width = 527, height = 419, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 31: right_w0002
		{x = 2731, y = 440, width = 527, height = 419, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 32: right_w0003
		{x = 3268, y = 440, width = 527, height = 419, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 33: right_w0004
		{x = 3268, y = 440, width = 527, height = 419, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 34: right_w0005
		{x = 10, y = 869, width = 527, height = 419, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 35: right_w0006

		{x = 547, y = 869, width = 527, height = 443, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 36: up_w0000
		{x = 547, y = 869, width = 527, height = 443, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 37: up_w0001
		{x = 1084, y = 869, width = 527, height = 443, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 38: up_w0002
		{x = 1084, y = 869, width = 527, height = 443, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 39: up_w0003
		{x = 1621, y = 869, width = 527, height = 443, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 40: up_w0004
		{x = 1621, y = 869, width = 527, height = 443, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 41: up_w0005
		{x = 2158, y = 869, width = 527, height = 443, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0} -- 42: up_w0006
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["idle"] = {start = 8, stop = 21, speed = 24, offsetX = 0, offsetY = 0},
		["singLEFT"] = {start = 22, stop = 28, speed = 24, offsetX = 0, offsetY = 0},
		["dingRIGHT"] = {start = 29, stop = 35, speed = 24, offsetX = 0, offsetY = 0},
		["singUP"] = {start = 36, stop = 42, speed = 24, offsetX = 0, offsetY = 0},
		["singDOWN"] = {start = 1, stop = 7, speed = 24, offsetX = 0, offsetY = 0},

	},
	"idle", -- set to default animation
	false,
	{
		sing_duration = 6.1,
		sing_duration = 10,
		isCharacter = true
	}
)

