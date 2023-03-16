return graphics.newSprite(
	graphics.imagePath("who/meeting"), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 941, height = 453, offsetX = 0, offsetY = 0, offsetWidth = 941, offsetHeight = 453}, -- 1: meeting buzz0000
		{x = 0, y = 453, width = 941, height = 453, offsetX = 0, offsetY = 0, offsetWidth = 941, offsetHeight = 453}, -- 2: meeting buzz0002
		{x = 0, y = 906, width = 941, height = 453, offsetX = 0, offsetY = 0, offsetWidth = 941, offsetHeight = 453}, -- 3: meeting buzz0001
		{x = 0, y = 0, width = 941, height = 453, offsetX = 0, offsetY = 0, offsetWidth = 941, offsetHeight = 453} -- 4: meeting buzz0003
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["anim"] = {start = 1, stop = 4, speed = 24, offsetX = 0, offsetY = 0},
	},
	"anim", -- set to default animation
	false -- If the sprite repeats
)
