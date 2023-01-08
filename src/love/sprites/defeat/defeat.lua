return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("defeat/defeat")), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 2193, height = 1300, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: defeat0000
		{x = 2223, y = 0, width = 2193, height = 1300, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 2: defeat0001
		{x = 4446, y = 0, width = 2193, height = 1300, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 3: defeat0002
		{x = 0, y = 1330, width = 2193, height = 1300, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 4: defeat0003
		{x = 2223, y = 1330, width = 2193, height = 1300, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 5: defeat0004
		{x = 4446, y = 1330, width = 2193, height = 1300, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 6: defeat0005
		{x = 0, y = 2660, width = 2193, height = 1300, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 7: defeat0006
		{x = 2223, y = 2660, width = 2193, height = 1300, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 8: defeat0007
		{x = 4446, y = 2660, width = 2193, height = 1300, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 9: defeat0008
		{x = 0, y = 3990, width = 2193, height = 1300, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 10: defeat0009
		{x = 2223, y = 3990, width = 2193, height = 1300, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 11: defeat0010
		{x = 4446, y = 3990, width = 2193, height = 1300, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 12: defeat0011
		{x = 0, y = 5320, width = 2193, height = 1300, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 13: defeat0012
		{x = 2223, y = 5320, width = 2193, height = 1300, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 14: defeat0013
		{x = 4446, y = 5320, width = 2193, height = 1300, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0} -- 15: defeat0014
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["anim"] = {start = 1, stop = 15, speed = 24, offsetX = 0, offsetY = 0},
	},
	"anim", -- set to default animation
	false -- If the sprite repeats
)
