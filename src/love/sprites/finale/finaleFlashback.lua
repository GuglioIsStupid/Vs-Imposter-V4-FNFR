return graphics.newSprite(
	graphics.imagePath("finale/finaleFlashback"), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 1924, height = 1084, offsetX = 0, offsetY = 0, offsetWidth = 1924, offsetHeight = 1084}, -- 1: finaleFlashback moog0000
		{x = 0, y = 1084, width = 1924, height = 1084, offsetX = 0, offsetY = 0, offsetWidth = 1924, offsetHeight = 1084}, -- 2: finaleFlashback toog0000
		{x = 0, y = 2168, width = 1924, height = 1084, offsetX = 0, offsetY = 0, offsetWidth = 1924, offsetHeight = 1084} -- 3: finaleFlashback doog0000
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["moog"] = {start = 1, stop = 1, speed = 24, offsetX = 0, offsetY = 0},
		["toog"] = {start = 2, stop = 2, speed = 24, offsetX = 0, offsetY = 0},
		["doog"] = {start = 3, stop = 3, speed = 24, offsetX = 0, offsetY = 0}
	},
	"moog", -- set to default animation
	false -- If the sprite repeats
)
