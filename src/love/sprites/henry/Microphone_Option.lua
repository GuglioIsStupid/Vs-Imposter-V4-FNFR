return graphics.newSprite(
	graphics.imagePath("henry/henry/Microphone_Option"), -- Do not add the .png extension
	{
		{x = 13, y = 13, width = 399, height = 336, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: Microphone0000
		{x = 425, y = 13, width = 399, height = 324, offsetX = 0, offsetY = -7, offsetWidth = 399, offsetHeight = 331}, -- 2: Microphone Select0000
		{x = 425, y = 13, width = 399, height = 324, offsetX = 0, offsetY = -7, offsetWidth = 399, offsetHeight = 331}, -- 3: Microphone Select0001
		{x = 13, y = 362, width = 399, height = 331, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 4: Microphone Select0002
		{x = 13, y = 362, width = 399, height = 331, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 5: Microphone Select0003
		{x = 425, y = 362, width = 399, height = 330, offsetX = 0, offsetY = -1, offsetWidth = 399, offsetHeight = 331}, -- 6: Microphone Select0004
		{x = 425, y = 362, width = 399, height = 330, offsetX = 0, offsetY = -1, offsetWidth = 399, offsetHeight = 331}, -- 7: Microphone Select0005
		{x = 425, y = 362, width = 399, height = 330, offsetX = 0, offsetY = -1, offsetWidth = 399, offsetHeight = 331}, -- 8: Microphone Select0006
		{x = 425, y = 362, width = 399, height = 330, offsetX = 0, offsetY = -1, offsetWidth = 399, offsetHeight = 331}, -- 9: Microphone Select0007
		{x = 425, y = 362, width = 399, height = 330, offsetX = 0, offsetY = -1, offsetWidth = 399, offsetHeight = 331}, -- 10: Microphone Select0008
		{x = 425, y = 362, width = 399, height = 330, offsetX = 0, offsetY = -1, offsetWidth = 399, offsetHeight = 331}, -- 11: Microphone Select0009
		{x = 425, y = 362, width = 399, height = 330, offsetX = 0, offsetY = -1, offsetWidth = 399, offsetHeight = 331}, -- 12: Microphone Select0010
		{x = 425, y = 362, width = 399, height = 330, offsetX = 0, offsetY = -1, offsetWidth = 399, offsetHeight = 331}, -- 13: Microphone Select0011
		{x = 425, y = 362, width = 399, height = 330, offsetX = 0, offsetY = -1, offsetWidth = 399, offsetHeight = 331}, -- 14: Microphone Select0012
		{x = 425, y = 362, width = 399, height = 330, offsetX = 0, offsetY = -1, offsetWidth = 399, offsetHeight = 331}, -- 15: Microphone Select0013
		{x = 425, y = 362, width = 399, height = 330, offsetX = 0, offsetY = -1, offsetWidth = 399, offsetHeight = 331}, -- 16: Microphone Select0014
		{x = 425, y = 362, width = 399, height = 330, offsetX = 0, offsetY = -1, offsetWidth = 399, offsetHeight = 331}, -- 17: Microphone Select0015
		{x = 425, y = 362, width = 399, height = 330, offsetX = 0, offsetY = -1, offsetWidth = 399, offsetHeight = 331}, -- 18: Microphone Select0016
		{x = 425, y = 362, width = 399, height = 330, offsetX = 0, offsetY = -1, offsetWidth = 399, offsetHeight = 331}, -- 19: Microphone Select0017
		{x = 425, y = 362, width = 399, height = 330, offsetX = 0, offsetY = -1, offsetWidth = 399, offsetHeight = 331}, -- 20: Microphone Select0018
		{x = 425, y = 362, width = 399, height = 330, offsetX = 0, offsetY = -1, offsetWidth = 399, offsetHeight = 331} -- 21: Microphone Select0019
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["notSelect"] = {start = 1, stop = 1, speed = 24, offsetX = 0, offsetY = 0},
		["select"] = {start = 2, stop = 21, speed = 24, offsetX = 0, offsetY = 0},
	},
	"notSelect", -- set to default animation
	false -- If the sprite repeats
)
