return graphics.newSprite(
	graphics.imagePath("pink/stereo_taken"), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 736, height = 356, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: stereo boom0000
		{x = 0, y = 0, width = 736, height = 356, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 2: stereo boom0001
		{x = 746, y = 0, width = 736, height = 356, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 3: stereo boom0002
		{x = 0, y = 366, width = 736, height = 356, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 4: stereo boom0003
		{x = 746, y = 366, width = 736, height = 356, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 5: stereo boom0004
		{x = 746, y = 366, width = 736, height = 356, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 6: stereo boom0005
		{x = 0, y = 732, width = 736, height = 356, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 7: stereo boom0006
		{x = 0, y = 732, width = 736, height = 356, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 8: stereo boom0007
		{x = 746, y = 732, width = 736, height = 356, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 9: stereo boom0008
		{x = 746, y = 732, width = 736, height = 356, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 10: stereo boom0009
		{x = 746, y = 732, width = 736, height = 356, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 11: stereo boom0010
		{x = 746, y = 732, width = 736, height = 356, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 12: stereo boom0011
		{x = 746, y = 732, width = 736, height = 356, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 13: stereo boom0012
		{x = 746, y = 732, width = 736, height = 356, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 14: stereo boom0013
		{x = 746, y = 732, width = 736, height = 356, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 15: stereo boom0014
		{x = 746, y = 732, width = 736, height = 356, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 16: stereo boom0015
		{x = 746, y = 732, width = 736, height = 356, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 17: stereo boom0016
		{x = 746, y = 732, width = 736, height = 356, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 18: stereo boom0017
		{x = 746, y = 732, width = 736, height = 356, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 19: stereo boom0018
		{x = 746, y = 732, width = 736, height = 356, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 20: stereo boom0019
		{x = 746, y = 732, width = 736, height = 356, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 21: stereo boom0020
		{x = 746, y = 732, width = 736, height = 356, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 22: stereo boom0021
		{x = 746, y = 732, width = 736, height = 356, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 23: stereo boom0022
		{x = 746, y = 732, width = 736, height = 356, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 24: stereo boom0023
		{x = 746, y = 732, width = 736, height = 356, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0} -- 25: stereo boom0024
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["anim"] = {start = 1, stop = 25, speed = 24, offsetX = 0, offsetY = 0},
	},
	"anim", -- set to default animation
	false -- If the sprite repeats
)
