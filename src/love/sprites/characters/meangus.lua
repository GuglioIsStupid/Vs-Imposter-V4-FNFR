return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("characters/meangus")), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 353, height = 337, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: down0000
		{x = 362, y = 0, width = 353, height = 337, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 2: down0001
		{x = 724, y = 0, width = 353, height = 337, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 3: down0002
		{x = 1086, y = 0, width = 353, height = 337, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 4: down0003
		{x = 1448, y = 0, width = 275, height = 362, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 5: idle0000
		{x = 1732, y = 0, width = 275, height = 362, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 6: idle0001
		{x = 0, y = 371, width = 275, height = 362, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 7: idle0002
		{x = 284, y = 371, width = 275, height = 362, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 8: idle0003
		{x = 284, y = 371, width = 275, height = 362, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 9: idle0004
		{x = 284, y = 371, width = 275, height = 362, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 10: idle0005
		{x = 284, y = 371, width = 275, height = 362, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 11: idle0006
		{x = 568, y = 371, width = 349, height = 328, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 12: left0000
		{x = 926, y = 371, width = 349, height = 328, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 13: left0001
		{x = 1284, y = 371, width = 349, height = 328, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 14: left0002
		{x = 1642, y = 371, width = 349, height = 328, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 15: left0003
		{x = 0, y = 742, width = 518, height = 325, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 16: right0000
		{x = 527, y = 742, width = 518, height = 325, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 17: right0001
		{x = 1054, y = 742, width = 518, height = 325, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 18: right0002
		{x = 0, y = 1076, width = 518, height = 325, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 19: right0003
		{x = 527, y = 1076, width = 493, height = 336, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 20: up0000
		{x = 1029, y = 1076, width = 493, height = 336, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 21: up0001
		{x = 1531, y = 1076, width = 493, height = 336, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 22: up0002
		{x = 0, y = 1421, width = 493, height = 336, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0} -- 23: up0003
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["idle"] = {start = 5, stop = 11, speed = 12, offsetX = 0, offsetY = 0},
		["singDOWN"] = {start = 1, stop = 4, speed = 12, offsetX = 0, offsetY = 0},
		["singRIGHT"] = {start = 12, stop = 15, speed = 12, offsetX = 0, offsetY = 0},
		["singLEFT"] = {start = 16, stop = 19, speed = 12, offsetX = 0, offsetY = 0},
		["singUP"] = {start = 20, stop = 23, speed = 12, offsetX = 0, offsetY = 0}
	},
	"idle", -- set to default animation
	false -- If the sprite repeats
)
