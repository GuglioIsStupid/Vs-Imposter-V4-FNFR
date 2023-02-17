return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("characters/top10")), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 800, height = 600, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: down0000
		{x = 830, y = 0, width = 800, height = 600, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 2: idle0000
		{x = 0, y = 630, width = 800, height = 600, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 3: left0000
		{x = 830, y = 630, width = 800, height = 600, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 4: right0000
		{x = 0, y = 1260, width = 800, height = 600, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0} -- 5: up0000
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["singDOWN"] = {start = 1, stop = 1, speed = 24, offsetX = 0, offsetY = 0},
		["idle"] = {start = 2, stop = 2, speed = 24, offsetX = 0, offsetY = 0},
		["singLEFT"] = {start = 3, stop = 3, speed = 24, offsetX = 0, offsetY = 0},
		["singRIGHT"] = {start = 4, stop = 4, speed = 24, offsetX = 0, offsetY = 0},
		["singUP"] = {start = 5, stop = 5, speed = 24, offsetX = 0, offsetY = 0},
	},
	"idle", -- set to default animation
	false -- If the sprite repeats
)
