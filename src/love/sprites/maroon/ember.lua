return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("maroonStage2/ember")), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 81, height = 81, offsetX = -3, offsetY = -1, offsetWidth = 87, offsetHeight = 85}, -- 1: ember0000
		{x = 0, y = 0, width = 81, height = 81, offsetX = -3, offsetY = -1, offsetWidth = 87, offsetHeight = 85}, -- 2: ember0001
		{x = 0, y = 86, width = 87, height = 82, offsetX = 0, offsetY = -1, offsetWidth = 87, offsetHeight = 85}, -- 3: ember0002
		{x = 0, y = 86, width = 87, height = 82, offsetX = 0, offsetY = -1, offsetWidth = 87, offsetHeight = 85}, -- 4: ember0003
		{x = 0, y = 173, width = 85, height = 83, offsetX = -1, offsetY = -1, offsetWidth = 87, offsetHeight = 85}, -- 5: ember0004
		{x = 0, y = 173, width = 85, height = 83, offsetX = -1, offsetY = -1, offsetWidth = 87, offsetHeight = 85}, -- 6: ember0005
		{x = 0, y = 261, width = 86, height = 85, offsetX = -1, offsetY = 0, offsetWidth = 87, offsetHeight = 85}, -- 7: ember0006
		{x = 0, y = 261, width = 86, height = 85, offsetX = -1, offsetY = 0, offsetWidth = 87, offsetHeight = 85}, -- 8: ember0007
		{x = 0, y = 351, width = 85, height = 83, offsetX = -1, offsetY = -1, offsetWidth = 87, offsetHeight = 85}, -- 9: ember0008
		{x = 0, y = 351, width = 85, height = 83, offsetX = -1, offsetY = -1, offsetWidth = 87, offsetHeight = 85} -- 10: ember0009
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["anim"] = {start = 1, stop = 10, speed = 24, offsetX = 0, offsetY = 0},
	},
	"anim", -- set to default animation
	true -- If the sprite repeats
)
