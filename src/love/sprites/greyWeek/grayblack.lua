return graphics.newSprite(
	graphics.imagePath("greyWeek/grayblack"), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 779, height = 642, offsetX = 0, offsetY = -1, offsetWidth = 798, offsetHeight = 643}, -- 1: whoisthismf0000
		{x = 0, y = 0, width = 779, height = 642, offsetX = 0, offsetY = -1, offsetWidth = 798, offsetHeight = 643}, -- 2: whoisthismf0001
		{x = 784, y = 0, width = 792, height = 634, offsetX = -1, offsetY = -9, offsetWidth = 798, offsetHeight = 643}, -- 3: whoisthismf0002
		{x = 1581, y = 0, width = 792, height = 634, offsetX = -1, offsetY = -9, offsetWidth = 798, offsetHeight = 643}, -- 4: whoisthismf0003
		{x = 2378, y = 0, width = 797, height = 628, offsetX = -1, offsetY = -15, offsetWidth = 798, offsetHeight = 643}, -- 5: whoisthismf0004
		{x = 2378, y = 0, width = 797, height = 628, offsetX = -1, offsetY = -15, offsetWidth = 798, offsetHeight = 643}, -- 6: whoisthismf0005
		{x = 3180, y = 0, width = 783, height = 630, offsetX = -9, offsetY = -13, offsetWidth = 798, offsetHeight = 643}, -- 7: whoisthismf0006
		{x = 3180, y = 0, width = 783, height = 630, offsetX = -9, offsetY = -13, offsetWidth = 798, offsetHeight = 643}, -- 8: whoisthismf0007
		{x = 0, y = 647, width = 775, height = 639, offsetX = -10, offsetY = -4, offsetWidth = 798, offsetHeight = 643}, -- 9: whoisthismf0008
		{x = 780, y = 647, width = 775, height = 639, offsetX = -10, offsetY = -4, offsetWidth = 798, offsetHeight = 643}, -- 10: whoisthismf0009
		{x = 1560, y = 647, width = 769, height = 641, offsetX = -11, offsetY = -2, offsetWidth = 798, offsetHeight = 643}, -- 11: whoisthismf0010
		{x = 2334, y = 647, width = 769, height = 643, offsetX = -11, offsetY = 0, offsetWidth = 798, offsetHeight = 643}, -- 12: whoisthismf0011
		{x = 2334, y = 647, width = 769, height = 643, offsetX = -11, offsetY = 0, offsetWidth = 798, offsetHeight = 643}, -- 13: whoisthismf0012
		{x = 2334, y = 647, width = 769, height = 643, offsetX = -11, offsetY = 0, offsetWidth = 798, offsetHeight = 643} -- 14: whoisthismf0013
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
