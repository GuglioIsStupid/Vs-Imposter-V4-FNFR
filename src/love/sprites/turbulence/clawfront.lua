return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("turbulence/clawfront")), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 395, height = 577, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: clawhands instance 10000
		{x = 0, y = 0, width = 395, height = 577, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 2: clawhands instance 10001
		{x = 404, y = 0, width = 395, height = 577, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 3: clawhands instance 10002
		{x = 404, y = 0, width = 395, height = 577, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 4: clawhands instance 10003
		{x = 808, y = 0, width = 395, height = 577, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 5: clawhands instance 10004
		{x = 808, y = 0, width = 395, height = 577, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 6: clawhands instance 10005
		{x = 1212, y = 0, width = 395, height = 577, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 7: clawhands instance 10006
		{x = 1212, y = 0, width = 395, height = 577, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0} -- 8: clawhands instance 10007
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["anim"] = {start = 1, stop = 8, speed = 24, offsetX = 0, offsetY = 0},
	},
	"anim", -- set to default animation
	false -- If the sprite repeats
)
