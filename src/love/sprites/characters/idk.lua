return graphics.newSprite(
	graphics.imagePath("characters/idk"), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 297, height = 192, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: down0000
		{x = 0, y = 0, width = 297, height = 192, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 2: down0001
		{x = 0, y = 0, width = 297, height = 192, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 3: down0002
		{x = 302, y = 0, width = 297, height = 192, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 4: down0003
		{x = 302, y = 0, width = 297, height = 192, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 5: down0004
		{x = 302, y = 0, width = 297, height = 192, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 6: down0005

		{x = 604, y = 0, width = 297, height = 192, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 7: idle0000
		{x = 604, y = 0, width = 297, height = 192, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 8: idle0001
		{x = 604, y = 0, width = 297, height = 192, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 9: idle0002
		{x = 0, y = 197, width = 297, height = 192, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 10: idle0003
		{x = 0, y = 197, width = 297, height = 192, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 11: idle0004
		{x = 0, y = 197, width = 297, height = 192, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 12: idle0005
		{x = 302, y = 197, width = 297, height = 192, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 13: idle0006
		{x = 302, y = 197, width = 297, height = 192, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 14: idle0007
		{x = 302, y = 197, width = 297, height = 192, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 15: idle0008

		{x = 604, y = 197, width = 297, height = 192, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 16: left0000
		{x = 604, y = 197, width = 297, height = 192, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 17: left0001
		{x = 604, y = 197, width = 297, height = 192, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 18: left0002
		{x = 0, y = 394, width = 297, height = 192, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 19: left0003
		{x = 0, y = 394, width = 297, height = 192, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 20: left0004
		{x = 0, y = 394, width = 297, height = 192, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 21: left0005

		{x = 302, y = 394, width = 297, height = 192, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 22: right0000
		{x = 302, y = 394, width = 297, height = 192, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 23: right0001
		{x = 302, y = 394, width = 297, height = 192, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 24: right0002
		{x = 604, y = 394, width = 297, height = 192, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 25: right0003
		{x = 604, y = 394, width = 297, height = 192, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 26: right0004
		{x = 604, y = 394, width = 297, height = 192, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 27: right0005

		{x = 0, y = 591, width = 297, height = 192, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 28: up0000
		{x = 0, y = 591, width = 297, height = 192, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 29: up0001
		{x = 0, y = 591, width = 297, height = 192, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 30: up0002
		{x = 302, y = 591, width = 297, height = 192, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 31: up0003
		{x = 302, y = 591, width = 297, height = 192, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 32: up0004
		{x = 302, y = 591, width = 297, height = 192, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0} -- 33: up0005
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["singDOWN"] = {start = 1, stop = 6, speed = 24, offsetX = 0, offsetY = 0},
		["idle"] = {start = 7, stop = 15, speed = 24, offsetX = 0, offsetY = 0},
		["singLEFT"] = {start = 16, stop = 21, speed = 24, offsetX = 0, offsetY = 0},
		["singRIGHT"] = {start = 22, stop = 27, speed = 24, offsetX = 0, offsetY = 0},
		["singUP"] = {start = 28, stop = 33, speed = 24, offsetX = 0, offsetY = 0},

	},
	"idle", -- set to default animation

	false,
	{
		sing_duration = 4,
		isCharacter = true
	}
)
