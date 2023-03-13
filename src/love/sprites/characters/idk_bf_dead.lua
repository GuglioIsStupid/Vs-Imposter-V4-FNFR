return graphics.newSprite(
	graphics.imagePath("characters/idk_bf_dead"), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 183, height = 272, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: first death0000
		{x = 193, y = 0, width = 183, height = 272, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 2: first death0001
		{x = 386, y = 0, width = 183, height = 272, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 3: first death0002
		{x = 579, y = 0, width = 183, height = 272, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 4: first death0003
		{x = 772, y = 0, width = 183, height = 272, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 5: first death0004
		{x = 965, y = 0, width = 183, height = 272, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 6: first death0005
		{x = 1158, y = 0, width = 183, height = 272, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 7: first death0006
		{x = 1351, y = 0, width = 183, height = 272, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 8: first death0007
		{x = 1544, y = 0, width = 183, height = 272, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 9: first death0008
		{x = 1737, y = 0, width = 183, height = 272, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 10: first death0009
		{x = 0, y = 282, width = 183, height = 272, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 11: first death0010
		{x = 193, y = 282, width = 183, height = 272, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 12: first death0011
		{x = 386, y = 282, width = 183, height = 272, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 13: first death0012
		{x = 579, y = 282, width = 183, height = 272, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 14: first death0013
		{x = 772, y = 282, width = 183, height = 272, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 15: first death0014
		{x = 965, y = 282, width = 183, height = 272, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 16: first death0015
		{x = 1158, y = 282, width = 183, height = 272, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 17: first death0016
		{x = 1351, y = 282, width = 183, height = 272, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 18: first death0017
		{x = 1351, y = 282, width = 183, height = 272, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0} -- 19: first death0018
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["anim"] = {start = 1, stop = 19, speed = 24, offsetX = 0, offsetY = 0},
	},
	"anim", -- set to default animation

	false,
	{
		sing_duration = 4,
		isCharacter = true
	}
)

