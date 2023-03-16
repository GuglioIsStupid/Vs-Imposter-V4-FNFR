return graphics.newSprite(
	graphics.imagePath("pink/vines"), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 2612, height = 1487, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: green0000
		{x = 0, y = 0, width = 2612, height = 1487, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 2: green0001
		{x = 2622, y = 0, width = 2612, height = 1487, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 3: green0002
		{x = 2622, y = 0, width = 2612, height = 1487, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 4: green0003
		{x = 5244, y = 0, width = 2612, height = 1487, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 5: green0004
		{x = 5244, y = 0, width = 2612, height = 1487, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 6: green0005
		{x = 0, y = 1497, width = 2612, height = 1487, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 7: green0006
		{x = 0, y = 1497, width = 2612, height = 1487, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 8: green0007
		{x = 2622, y = 1497, width = 2612, height = 1487, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 9: green0008
		{x = 2622, y = 1497, width = 2612, height = 1487, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 10: green0009
		{x = 5244, y = 0, width = 2612, height = 1487, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 11: green0010
		{x = 5244, y = 0, width = 2612, height = 1487, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 12: green0011
		{x = 5244, y = 1497, width = 2612, height = 1487, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 13: green0012
		{x = 5244, y = 1497, width = 2612, height = 1487, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 14: green0013
		{x = 0, y = 2994, width = 2612, height = 1487, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 15: green0014
		{x = 0, y = 2994, width = 2612, height = 1487, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 16: green0015
		{x = 0, y = 0, width = 2612, height = 1487, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 17: green0016
		{x = 0, y = 0, width = 2612, height = 1487, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 18: green0017
		{x = 0, y = 0, width = 2612, height = 1487, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 19: green0018
		{x = 0, y = 0, width = 2612, height = 1487, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0} -- 20: green0019
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["anim"] = {start = 1, stop = 20, speed = 24, offsetX = 0, offsetY = 0},
	},
	"anim", -- set to default animation
	false -- If the sprite repeats
)
