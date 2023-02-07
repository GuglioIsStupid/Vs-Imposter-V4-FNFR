return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("characters/bfshock")), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 409, height = 416, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: BF idle dance instance 10000
		{x = 418, y = 0, width = 409, height = 416, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 2: BF idle dance instance 10001
		{x = 836, y = 0, width = 409, height = 416, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 3: BF idle dance instance 10002
		{x = 1254, y = 0, width = 409, height = 416, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 4: BF idle dance instance 10003
		{x = 0, y = 425, width = 409, height = 416, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 5: BF idle dance instance 10004
		{x = 418, y = 425, width = 409, height = 416, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0} -- 6: BF idle dance instance 10005
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["anim"] = {start = 1, stop = 6, speed = 24, offsetX = 0, offsetY = 0},
	},
	"anim", -- set to default animation
	true -- If the sprite repeats
)
