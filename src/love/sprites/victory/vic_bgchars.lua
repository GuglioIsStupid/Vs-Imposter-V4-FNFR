return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("victory/vic_bgchars")), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 2158, height = 488, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: lol thing 0000
		{x = 0, y = 0, width = 2158, height = 488, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 2: lol thing 0001
		{x = 0, y = 497, width = 2158, height = 488, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 3: lol thing 0002
		{x = 0, y = 497, width = 2158, height = 488, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 4: lol thing 0003
		{x = 0, y = 994, width = 2158, height = 488, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 5: lol thing 0004
		{x = 0, y = 994, width = 2158, height = 488, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 6: lol thing 0005
		{x = 0, y = 994, width = 2158, height = 488, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 7: lol thing 0006
		{x = 0, y = 994, width = 2158, height = 488, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 8: lol thing 0007
		{x = 0, y = 994, width = 2158, height = 488, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0} -- 9: lol thing 0008
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["anim"] = {start = 1, stop = 9, speed = 24, offsetX = 0, offsetY = 0},
	},
	"anim", -- set to default animation
	false -- If the sprite repeats
)
