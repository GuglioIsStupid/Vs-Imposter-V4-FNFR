return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("attack/loggoattack")), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 510, height = 581, offsetX = 0, offsetY = -21, offsetWidth = 510, offsetHeight = 602}, -- 1: loggfriend0000
		{x = 515, y = 0, width = 510, height = 581, offsetX = 0, offsetY = -21, offsetWidth = 510, offsetHeight = 602}, -- 2: loggfriend0001
		{x = 1030, y = 0, width = 510, height = 576, offsetX = 0, offsetY = -26, offsetWidth = 510, offsetHeight = 602}, -- 3: loggfriend0002
		{x = 1545, y = 0, width = 510, height = 576, offsetX = 0, offsetY = -26, offsetWidth = 510, offsetHeight = 602}, -- 4: loggfriend0003
		{x = 2060, y = 0, width = 510, height = 593, offsetX = 0, offsetY = -9, offsetWidth = 510, offsetHeight = 602}, -- 5: loggfriend0004
		{x = 2575, y = 0, width = 510, height = 593, offsetX = 0, offsetY = -9, offsetWidth = 510, offsetHeight = 602}, -- 6: loggfriend0005
		{x = 3090, y = 0, width = 510, height = 599, offsetX = 0, offsetY = -3, offsetWidth = 510, offsetHeight = 602}, -- 7: loggfriend0006
		{x = 0, y = 604, width = 510, height = 599, offsetX = 0, offsetY = -3, offsetWidth = 510, offsetHeight = 602}, -- 8: loggfriend0007
		{x = 515, y = 604, width = 510, height = 602, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 9: loggfriend0008
		{x = 1030, y = 604, width = 510, height = 602, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 10: loggfriend0009
		{x = 515, y = 604, width = 510, height = 602, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 11: loggfriend0010
		{x = 1030, y = 604, width = 510, height = 602, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 12: loggfriend0011
		{x = 515, y = 604, width = 510, height = 602, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 13: loggfriend0012
		{x = 1030, y = 604, width = 510, height = 602, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0} -- 14: loggfriend0013
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["anim"] = {start = 1, stop = 14, speed = 24, offsetX = 0, offsetY = 0},
	},
	"anim", -- set to default animation
	true -- If the sprite repeats
)
