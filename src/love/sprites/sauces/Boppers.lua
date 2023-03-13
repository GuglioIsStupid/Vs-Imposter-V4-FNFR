return graphics.newSprite(
	graphics.imagePath("sauces/Boppers"), -- Do not add the .png extension
	{
		{x = 0, y = 590, width = 303, height = 570, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: grey0000
		{x = 0, y = 590, width = 303, height = 570, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 2: grey0001
		{x = 313, y = 590, width = 303, height = 570, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 3: grey0002
		{x = 313, y = 590, width = 303, height = 570, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 4: grey0003
		{x = 626, y = 590, width = 303, height = 570, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 5: grey0004
		{x = 626, y = 590, width = 303, height = 570, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 6: grey0005
		{x = 939, y = 590, width = 303, height = 570, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 7: grey0006
		{x = 939, y = 590, width = 303, height = 570, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 8: grey0007
		{x = 1252, y = 590, width = 303, height = 570, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 9: grey0008
		{x = 1252, y = 590, width = 303, height = 570, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 10: grey0009
		{x = 1565, y = 590, width = 303, height = 570, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 11: grey0010
		{x = 1565, y = 590, width = 303, height = 570, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 12: grey0011
		{x = 1565, y = 590, width = 303, height = 570, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 13: grey0012
		{x = 1565, y = 590, width = 303, height = 570, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 14: grey0013
		{x = 1565, y = 590, width = 303, height = 570, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 15: grey0014

		{x = 0, y = 0, width = 397, height = 580, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 16: saster0000
		{x = 0, y = 0, width = 397, height = 580, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 17: saster0001
		{x = 407, y = 0, width = 397, height = 580, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 18: saster0002
		{x = 407, y = 0, width = 397, height = 580, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 19: saster0003
		{x = 814, y = 0, width = 397, height = 580, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 20: saster0004
		{x = 814, y = 0, width = 397, height = 580, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 21: saster0005
		{x = 1221, y = 0, width = 397, height = 580, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 22: saster0006
		{x = 1221, y = 0, width = 397, height = 580, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 23: saster0007
		{x = 1628, y = 0, width = 397, height = 580, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 24: saster0008
		{x = 1628, y = 0, width = 397, height = 580, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 25: saster0009
		{x = 1628, y = 0, width = 397, height = 580, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 26: saster0010
		{x = 1628, y = 0, width = 397, height = 580, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 27: saster0011
		{x = 1628, y = 0, width = 397, height = 580, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 28: saster0012
		{x = 1628, y = 0, width = 397, height = 580, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 29: saster0013
		{x = 1628, y = 0, width = 397, height = 580, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0} -- 30: saster0014
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["grey"] = {start = 1, stop = 15, speed = 24, offsetX = 0, offsetY = 0},
		["saster"] = {start = 16, stop = 30, speed = 24, offsetX = 0, offsetY = 0},

	},
	"grey", -- set to default animation
	true -- If the sprite repeats
)
