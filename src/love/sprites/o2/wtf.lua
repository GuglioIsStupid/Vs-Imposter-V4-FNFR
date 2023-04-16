return graphics.newSprite(
	graphics.imagePath("o2/wtf"), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 249, height = 76, offsetX = 0, offsetY = 0, offsetWidth = 509, offsetHeight = 212}, -- 1: wtf what0000
		{x = 0, y = 0, width = 505, height = 76, offsetX = 0, offsetY = 0, offsetWidth = 509, offsetHeight = 212}, -- 2: wtf the0000
		{x = 0, y = 0, width = 505, height = 208, offsetX = 0, offsetY = 0, offsetWidth = 509, offsetHeight = 212} -- 3: wtf fuck0000
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["what"] = {start = 1, stop = 1, speed = 24, offsetX = 0, offsetY = 0},
		["the"] = {start = 2, stop = 2, speed = 24, offsetX = 0, offsetY = 0},
		["fuck"] = {start = 3, stop = 3, speed = 24, offsetX = 0, offsetY = 0},
	},
	"what", -- set to default animation
	false -- If the sprite repeats
)
