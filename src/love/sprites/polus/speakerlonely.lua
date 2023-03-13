return graphics.newSprite(
	graphics.imagePath("polus/speakerlonely"), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 699, height = 388, offsetX = -2, offsetY = 0, offsetWidth = 703, offsetHeight = 389}, -- 1: speakers lonely0000
		{x = 729, y = 0, width = 703, height = 388, offsetX = 0, offsetY = 0, offsetWidth = 703, offsetHeight = 389}, -- 2: speakers lonely0001
		{x = 0, y = 418, width = 703, height = 389, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 3: speakers lonely0002
		{x = 733, y = 418, width = 699, height = 389, offsetX = -2, offsetY = 0, offsetWidth = 703, offsetHeight = 389}, -- 4: speakers lonely0003
		{x = 0, y = 837, width = 699, height = 389, offsetX = -2, offsetY = 0, offsetWidth = 703, offsetHeight = 389} -- 5: speakers lonely0004
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["anim"] = {start = 1, stop = 5, speed = 24, offsetX = 0, offsetY = 0},
	},
	"anim", -- set to default animation
	false -- If the sprite repeats
)
