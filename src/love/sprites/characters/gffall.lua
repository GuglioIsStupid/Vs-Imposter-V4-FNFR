return graphics.newSprite(
	graphics.imagePath("characters/gffall"), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 311, height = 698, offsetX = -551, offsetY = -14, offsetWidth = 937, offsetHeight = 712}, -- 1: GF Dancing Beat0000
		{x = 316, y = 0, width = 295, height = 684, offsetX = -567, offsetY = -28, offsetWidth = 937, offsetHeight = 712}, -- 2: GF Dancing Beat0001
		{x = 616, y = 0, width = 318, height = 682, offsetX = -543, offsetY = -29, offsetWidth = 937, offsetHeight = 712}, -- 3: GF Dancing Beat0002
		{x = 939, y = 0, width = 311, height = 696, offsetX = -550, offsetY = -15, offsetWidth = 937, offsetHeight = 712}, -- 4: GF Dancing Beat0003
		{x = 1255, y = 0, width = 294, height = 682, offsetX = -569, offsetY = -22, offsetWidth = 937, offsetHeight = 712}, -- 5: GF Dancing Beat0004
		{x = 1554, y = 0, width = 319, height = 680, offsetX = -544, offsetY = -24, offsetWidth = 937, offsetHeight = 712}, -- 6: GF Dancing Beat0005
		{x = 1878, y = 0, width = 311, height = 696, offsetX = -557, offsetY = -10, offsetWidth = 937, offsetHeight = 712}, -- 7: GF Dancing Beat0006
		{x = 2194, y = 0, width = 293, height = 706, offsetX = -600, offsetY = 0, offsetWidth = 937, offsetHeight = 712}, -- 8: GF Dancing Beat0007
		{x = 2492, y = 0, width = 313, height = 682, offsetX = -575, offsetY = -24, offsetWidth = 937, offsetHeight = 712}, -- 9: GF Dancing Beat0008
		{x = 2810, y = 0, width = 306, height = 692, offsetX = -590, offsetY = -14, offsetWidth = 937, offsetHeight = 712}, -- 10: GF Dancing Beat0009
		{x = 3121, y = 0, width = 301, height = 704, offsetX = -600, offsetY = 0, offsetWidth = 937, offsetHeight = 712}, -- 11: GF Dancing Beat0010
		{x = 3427, y = 0, width = 320, height = 674, offsetX = -576, offsetY = -30, offsetWidth = 937, offsetHeight = 712}, -- 12: GF Dancing Beat0011
		{x = 3752, y = 0, width = 311, height = 685, offsetX = -592, offsetY = -21, offsetWidth = 937, offsetHeight = 712}, -- 13: GF Dancing Beat0012
		{x = 0, y = 711, width = 302, height = 705, offsetX = -601, offsetY = -1, offsetWidth = 937, offsetHeight = 712}, -- 14: GF Dancing Beat0013
		{x = 307, y = 711, width = 321, height = 674, offsetX = -577, offsetY = -32, offsetWidth = 937, offsetHeight = 712}, -- 15: GF Dancing Beat0014
		{x = 633, y = 711, width = 322, height = 657, offsetX = -612, offsetY = -49, offsetWidth = 937, offsetHeight = 712}, -- 16: GF Dancing Beat0015
		{x = 960, y = 711, width = 318, height = 686, offsetX = -619, offsetY = -18, offsetWidth = 937, offsetHeight = 712}, -- 17: GF Dancing Beat0016
		{x = 1283, y = 711, width = 316, height = 684, offsetX = -619, offsetY = -17, offsetWidth = 937, offsetHeight = 712}, -- 18: GF Dancing Beat0017
		{x = 1604, y = 711, width = 328, height = 648, offsetX = -598, offsetY = -55, offsetWidth = 937, offsetHeight = 712}, -- 19: GF Dancing Beat0018
		{x = 1937, y = 711, width = 318, height = 667, offsetX = -610, offsetY = -42, offsetWidth = 937, offsetHeight = 712}, -- 20: GF Dancing Beat0019
		{x = 2260, y = 711, width = 309, height = 693, offsetX = -617, offsetY = -15, offsetWidth = 937, offsetHeight = 712}, -- 21: GF Dancing Beat0020
		{x = 2574, y = 711, width = 322, height = 665, offsetX = -591, offsetY = -43, offsetWidth = 937, offsetHeight = 712}, -- 22: GF Dancing Beat0021
		{x = 2901, y = 711, width = 304, height = 700, offsetX = -584, offsetY = -7, offsetWidth = 937, offsetHeight = 712}, -- 23: GF Dancing Beat0022
		{x = 3210, y = 711, width = 285, height = 699, offsetX = -598, offsetY = -8, offsetWidth = 937, offsetHeight = 712}, -- 24: GF Dancing Beat0023
		{x = 3500, y = 711, width = 312, height = 690, offsetX = -571, offsetY = -19, offsetWidth = 937, offsetHeight = 712}, -- 25: GF Dancing Beat0024
		{x = 0, y = 1421, width = 304, height = 703, offsetX = -581, offsetY = -6, offsetWidth = 937, offsetHeight = 712}, -- 26: GF Dancing Beat0025
		{x = 309, y = 1421, width = 290, height = 698, offsetX = -595, offsetY = -10, offsetWidth = 937, offsetHeight = 712}, -- 27: GF Dancing Beat0026
		{x = 604, y = 1421, width = 318, height = 689, offsetX = -569, offsetY = -19, offsetWidth = 937, offsetHeight = 712}, -- 28: GF Dancing Beat0027
		{x = 927, y = 1421, width = 292, height = 696, offsetX = -594, offsetY = -11, offsetWidth = 937, offsetHeight = 712}, -- 29: GF Dancing Beat0028
		{x = 1224, y = 1421, width = 882, height = 688, offsetX = 0, offsetY = -19, offsetWidth = 937, offsetHeight = 712} -- 30: GF Dancing Beat0029
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["idle"] = {start = 1, stop = 30, speed = 24, offsetX = 0, offsetY = 0},
	},
	"idle", -- set to default animation
	false -- If the sprite repeats
)
