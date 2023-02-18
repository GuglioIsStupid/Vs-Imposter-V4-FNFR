return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("characters/idkbf")), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 304, height = 254, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: down0000
		{x = 0, y = 0, width = 304, height = 254, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 2: down0001
		{x = 0, y = 0, width = 304, height = 254, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 3: down0002
		{x = 309, y = 0, width = 304, height = 254, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 4: down0003
		{x = 309, y = 0, width = 304, height = 254, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 5: down0004
		{x = 309, y = 0, width = 304, height = 254, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 6: down0005
		{x = 618, y = 0, width = 304, height = 254, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 7: down0006
		{x = 618, y = 0, width = 304, height = 254, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 8: down0007
		{x = 618, y = 0, width = 304, height = 254, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 9: down0008

		{x = 927, y = 0, width = 304, height = 254, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 10: idle0000
		{x = 927, y = 0, width = 304, height = 254, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 11: idle0001
		{x = 927, y = 0, width = 304, height = 254, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 12: idle0002
		{x = 1236, y = 0, width = 304, height = 254, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 13: idle0003
		{x = 1236, y = 0, width = 304, height = 254, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 14: idle0004
		{x = 1236, y = 0, width = 304, height = 254, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 15: idle0005
		{x = 1545, y = 0, width = 304, height = 254, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 16: idle0006
		{x = 1545, y = 0, width = 304, height = 254, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 17: idle0007
		{x = 1545, y = 0, width = 304, height = 254, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 18: idle0008

		{x = 0, y = 259, width = 304, height = 254, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 19: left0000
		{x = 0, y = 259, width = 304, height = 254, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 20: left0001
		{x = 0, y = 259, width = 304, height = 254, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 21: left0002
		{x = 309, y = 259, width = 304, height = 254, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 22: left0003
		{x = 309, y = 259, width = 304, height = 254, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 23: left0004
		{x = 309, y = 259, width = 304, height = 254, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 24: left0005

		{x = 618, y = 259, width = 304, height = 254, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 25: right0000
		{x = 618, y = 259, width = 304, height = 254, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 26: right0001
		{x = 618, y = 259, width = 304, height = 254, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 27: right0002
		{x = 927, y = 259, width = 304, height = 254, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 28: right0003
		{x = 927, y = 259, width = 304, height = 254, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 29: right0004
		{x = 927, y = 259, width = 304, height = 254, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 30: right0005

		{x = 1236, y = 259, width = 304, height = 254, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 31: up0000
		{x = 1236, y = 259, width = 304, height = 254, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 32: up0001
		{x = 1236, y = 259, width = 304, height = 254, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 33: up0002
		{x = 1545, y = 259, width = 304, height = 254, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 34: up0003
		{x = 1545, y = 259, width = 304, height = 254, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 35: up0004
		{x = 1545, y = 259, width = 304, height = 254, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0} -- 36: up0005
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["singDOWN"] = {start = 1, stop = 9, speed = 24, offsetX = 0, offsetY = 0},
		["idle"] = {start = 10, stop = 18, speed = 24, offsetX = 0, offsetY = 0},
		["singLEFT"] = {start = 19, stop = 24, speed = 24, offsetX = 0, offsetY = 0},
		["singRIGHT"] = {start = 25, stop = 30, speed = 24, offsetX = 0, offsetY = 0},
		["singUP"] = {start = 31, stop = 36, speed = 24, offsetX = 0, offsetY = 0},

	},
	"idle", -- set to default animation

	false,
	{
		sing_duration = 4,
		isCharacter = true
	}
)

