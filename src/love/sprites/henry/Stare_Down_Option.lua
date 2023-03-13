return graphics.newSprite(
	graphics.imagePath("henry/henry/Stare_Down_Option"), -- Do not add the .png extension
	{
		{x = 13, y = 13, width = 342, height = 311, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: Stare Down0000
		{x = 368, y = 13, width = 342, height = 308, offsetX = 0, offsetY = -1, offsetWidth = 342, offsetHeight = 309}, -- 2: Stare Down Select0000
		{x = 368, y = 13, width = 342, height = 308, offsetX = 0, offsetY = -1, offsetWidth = 342, offsetHeight = 309}, -- 3: Stare Down Select0001
		{x = 13, y = 337, width = 342, height = 309, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 4: Stare Down Select0002
		{x = 13, y = 337, width = 342, height = 309, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 5: Stare Down Select0003
		{x = 368, y = 337, width = 342, height = 308, offsetX = 0, offsetY = -1, offsetWidth = 342, offsetHeight = 309}, -- 6: Stare Down Select0004
		{x = 368, y = 337, width = 342, height = 308, offsetX = 0, offsetY = -1, offsetWidth = 342, offsetHeight = 309}, -- 7: Stare Down Select0005
		{x = 13, y = 659, width = 342, height = 308, offsetX = 0, offsetY = -1, offsetWidth = 342, offsetHeight = 309}, -- 8: Stare Down Select0006
		{x = 13, y = 659, width = 342, height = 308, offsetX = 0, offsetY = -1, offsetWidth = 342, offsetHeight = 309}, -- 9: Stare Down Select0007
		{x = 13, y = 659, width = 342, height = 308, offsetX = 0, offsetY = -1, offsetWidth = 342, offsetHeight = 309}, -- 10: Stare Down Select0008
		{x = 13, y = 659, width = 342, height = 308, offsetX = 0, offsetY = -1, offsetWidth = 342, offsetHeight = 309}, -- 11: Stare Down Select0009
		{x = 13, y = 659, width = 342, height = 308, offsetX = 0, offsetY = -1, offsetWidth = 342, offsetHeight = 309}, -- 12: Stare Down Select0010
		{x = 13, y = 659, width = 342, height = 308, offsetX = 0, offsetY = -1, offsetWidth = 342, offsetHeight = 309}, -- 13: Stare Down Select0011
		{x = 13, y = 659, width = 342, height = 308, offsetX = 0, offsetY = -1, offsetWidth = 342, offsetHeight = 309}, -- 14: Stare Down Select0012
		{x = 13, y = 659, width = 342, height = 308, offsetX = 0, offsetY = -1, offsetWidth = 342, offsetHeight = 309}, -- 15: Stare Down Select0013
		{x = 13, y = 659, width = 342, height = 308, offsetX = 0, offsetY = -1, offsetWidth = 342, offsetHeight = 309}, -- 16: Stare Down Select0014
		{x = 13, y = 659, width = 342, height = 308, offsetX = 0, offsetY = -1, offsetWidth = 342, offsetHeight = 309}, -- 17: Stare Down Select0015
		{x = 13, y = 659, width = 342, height = 308, offsetX = 0, offsetY = -1, offsetWidth = 342, offsetHeight = 309}, -- 18: Stare Down Select0016
		{x = 13, y = 659, width = 342, height = 308, offsetX = 0, offsetY = -1, offsetWidth = 342, offsetHeight = 309} -- 19: Stare Down Select0017
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["notSelect"] = {start = 1, stop = 1, speed = 24, offsetX = 0, offsetY = 0},
		["select"] = {start = 2, stop = 19, speed = 24, offsetX = 0, offsetY = 0},
	},
	"notSelect", -- set to default animation
	false -- If the sprite repeats
)
