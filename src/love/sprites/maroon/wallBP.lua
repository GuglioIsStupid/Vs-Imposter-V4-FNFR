return graphics.newSprite(
	graphics.imagePath("maroonStage2/wallBP"), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 4286, height = 1969, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: Back wall and lava0000
		{x = 0, y = 0, width = 4286, height = 1969, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 2: Back wall and lava0001
		{x = 0, y = 0, width = 4286, height = 1969, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 3: Back wall and lava0002
		{x = 0, y = 1974, width = 4286, height = 1969, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 4: Back wall and lava0003
		{x = 0, y = 1974, width = 4286, height = 1969, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 5: Back wall and lava0004
		{x = 0, y = 1974, width = 4286, height = 1969, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 6: Back wall and lava0005
		{x = 0, y = 1974, width = 4286, height = 1969, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 7: Back wall and lava0006
		{x = 0, y = 1974, width = 4286, height = 1969, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 8: Back wall and lava0007
		{x = 0, y = 1974, width = 4286, height = 1969, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 9: Back wall and lava0008
		{x = 0, y = 3948, width = 4286, height = 1969, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 10: Back wall and lava0009
		{x = 0, y = 3948, width = 4286, height = 1969, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 11: Back wall and lava0010
		{x = 0, y = 3948, width = 4286, height = 1969, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 12: Back wall and lava0011
		{x = 0, y = 1974, width = 4286, height = 1969, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 13: Back wall and lava0012
		{x = 0, y = 1974, width = 4286, height = 1969, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 14: Back wall and lava0013
		{x = 0, y = 1974, width = 4286, height = 1969, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 15: Back wall and lava0014
		{x = 0, y = 1974, width = 4286, height = 1969, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 16: Back wall and lava0015
		{x = 0, y = 1974, width = 4286, height = 1969, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 17: Back wall and lava0016
		{x = 0, y = 1974, width = 4286, height = 1969, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0} -- 18: Back wall and lava0017
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["anim"] = {start = 1, stop = 18, speed = 24, offsetX = 0, offsetY = 0},
	},
	"anim", -- set to default animation
	true -- If the sprite repeats
)
