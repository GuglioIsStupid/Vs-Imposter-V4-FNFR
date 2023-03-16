return graphics.newSprite(
	graphics.imagePath("attack/offbi"), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 449, height = 738, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: offbi0000
		{x = 0, y = 0, width = 449, height = 738, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 2: offbi0001
		{x = 454, y = 0, width = 437, height = 718, offsetX = -7, offsetY = -20, offsetWidth = 449, offsetHeight = 738}, -- 3: offbi0002
		{x = 454, y = 0, width = 437, height = 718, offsetX = -7, offsetY = -20, offsetWidth = 449, offsetHeight = 738}, -- 4: offbi0003
		{x = 896, y = 0, width = 435, height = 732, offsetX = -8, offsetY = -6, offsetWidth = 449, offsetHeight = 738}, -- 5: offbi0004
		{x = 896, y = 0, width = 435, height = 732, offsetX = -8, offsetY = -6, offsetWidth = 449, offsetHeight = 738}, -- 6: offbi0005
		{x = 1336, y = 0, width = 435, height = 737, offsetX = -8, offsetY = -1, offsetWidth = 449, offsetHeight = 738}, -- 7: offbi0006
		{x = 1336, y = 0, width = 435, height = 737, offsetX = -8, offsetY = -1, offsetWidth = 449, offsetHeight = 738}, -- 8: offbi0007
		{x = 0, y = 743, width = 435, height = 738, offsetX = -8, offsetY = 0, offsetWidth = 449, offsetHeight = 738}, -- 9: offbi0008
		{x = 0, y = 743, width = 435, height = 738, offsetX = -8, offsetY = 0, offsetWidth = 449, offsetHeight = 738}, -- 10: offbi0009
		{x = 0, y = 743, width = 435, height = 738, offsetX = -8, offsetY = 0, offsetWidth = 449, offsetHeight = 738}, -- 11: offbi0010
		{x = 0, y = 743, width = 435, height = 738, offsetX = -8, offsetY = 0, offsetWidth = 449, offsetHeight = 738}, -- 12: offbi0011
		{x = 0, y = 743, width = 435, height = 738, offsetX = -8, offsetY = 0, offsetWidth = 449, offsetHeight = 738}, -- 13: offbi0012
		{x = 0, y = 743, width = 435, height = 738, offsetX = -8, offsetY = 0, offsetWidth = 449, offsetHeight = 738} -- 14: offbi0013
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["anim"] = {start = 1, stop = 14, speed = 24, offsetX = 0, offsetY = 0},
	},
	"anim", -- set to default animation
	true -- If the sprite repeats
)
