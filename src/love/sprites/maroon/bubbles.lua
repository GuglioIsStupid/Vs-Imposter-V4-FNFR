return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("maroonStage2/bubbles")), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 15, height = 13, offsetX = -146, offsetY = -14, offsetWidth = 1735, offsetHeight = 190}, -- 1: Lava Bubbles0000
		{x = 0, y = 0, width = 15, height = 13, offsetX = -146, offsetY = -14, offsetWidth = 1735, offsetHeight = 190}, -- 2: Lava Bubbles0001
		{x = 20, y = 0, width = 573, height = 158, offsetX = -144, offsetY = -10, offsetWidth = 1735, offsetHeight = 190}, -- 3: Lava Bubbles0002
		{x = 598, y = 0, width = 1577, height = 164, offsetX = -137, offsetY = -4, offsetWidth = 1735, offsetHeight = 190}, -- 4: Lava Bubbles0003
		{x = 2180, y = 0, width = 1580, height = 168, offsetX = -134, offsetY = -2, offsetWidth = 1735, offsetHeight = 190}, -- 5: Lava Bubbles0004
		{x = 0, y = 173, width = 1702, height = 169, offsetX = -16, offsetY = -2, offsetWidth = 1735, offsetHeight = 190}, -- 6: Lava Bubbles0005
		{x = 1707, y = 173, width = 1707, height = 172, offsetX = -16, offsetY = 0, offsetWidth = 1735, offsetHeight = 190}, -- 7: Lava Bubbles0006
		{x = 0, y = 350, width = 1709, height = 169, offsetX = -15, offsetY = -3, offsetWidth = 1735, offsetHeight = 190}, -- 8: Lava Bubbles0007
		{x = 1714, y = 350, width = 1714, height = 168, offsetX = -10, offsetY = -5, offsetWidth = 1735, offsetHeight = 190}, -- 9: Lava Bubbles0008
		{x = 0, y = 524, width = 1720, height = 169, offsetX = -8, offsetY = -5, offsetWidth = 1735, offsetHeight = 190}, -- 10: Lava Bubbles0009
		{x = 1725, y = 524, width = 1724, height = 162, offsetX = -8, offsetY = -12, offsetWidth = 1735, offsetHeight = 190}, -- 11: Lava Bubbles0010
		{x = 0, y = 698, width = 1729, height = 162, offsetX = -6, offsetY = -12, offsetWidth = 1735, offsetHeight = 190}, -- 12: Lava Bubbles0011
		{x = 1734, y = 698, width = 1733, height = 159, offsetX = -2, offsetY = -15, offsetWidth = 1735, offsetHeight = 190}, -- 13: Lava Bubbles0012
		{x = 0, y = 865, width = 1720, height = 159, offsetX = 0, offsetY = -15, offsetWidth = 1735, offsetHeight = 190}, -- 14: Lava Bubbles0013
		{x = 1725, y = 865, width = 1722, height = 158, offsetX = 0, offsetY = -27, offsetWidth = 1735, offsetHeight = 190}, -- 15: Lava Bubbles0014
		{x = 0, y = 1029, width = 1711, height = 161, offsetX = -2, offsetY = -24, offsetWidth = 1735, offsetHeight = 190}, -- 16: Lava Bubbles0015
		{x = 1716, y = 1029, width = 1711, height = 162, offsetX = -2, offsetY = -24, offsetWidth = 1735, offsetHeight = 190}, -- 17: Lava Bubbles0016
		{x = 0, y = 1196, width = 1714, height = 164, offsetX = -3, offsetY = -23, offsetWidth = 1735, offsetHeight = 190}, -- 18: Lava Bubbles0017
		{x = 1719, y = 1196, width = 1718, height = 163, offsetX = -3, offsetY = -25, offsetWidth = 1735, offsetHeight = 190}, -- 19: Lava Bubbles0018
		{x = 0, y = 1365, width = 1538, height = 161, offsetX = -186, offsetY = -27, offsetWidth = 1735, offsetHeight = 190}, -- 20: Lava Bubbles0019
		{x = 1543, y = 1365, width = 1537, height = 162, offsetX = -187, offsetY = -27, offsetWidth = 1735, offsetHeight = 190}, -- 21: Lava Bubbles0020
		{x = 0, y = 1532, width = 1522, height = 156, offsetX = -187, offsetY = -34, offsetWidth = 1735, offsetHeight = 190}, -- 22: Lava Bubbles0021
		{x = 1527, y = 1532, width = 191, height = 114, offsetX = -1072, offsetY = -76, offsetWidth = 1735, offsetHeight = 190}, -- 23: Lava Bubbles0022
		{x = 1527, y = 1532, width = 191, height = 114, offsetX = -1072, offsetY = -76, offsetWidth = 1735, offsetHeight = 190}, -- 24: Lava Bubbles0023
		{x = 1723, y = 1532, width = 191, height = 115, offsetX = -1075, offsetY = -75, offsetWidth = 1735, offsetHeight = 190}, -- 25: Lava Bubbles0024
		{x = 1919, y = 1532, width = 195, height = 113, offsetX = -1075, offsetY = -77, offsetWidth = 1735, offsetHeight = 190}, -- 26: Lava Bubbles0025
		{x = 2119, y = 1532, width = 197, height = 110, offsetX = -1076, offsetY = -79, offsetWidth = 1735, offsetHeight = 190}, -- 27: Lava Bubbles0026
		{x = 2119, y = 1532, width = 197, height = 110, offsetX = -1076, offsetY = -79, offsetWidth = 1735, offsetHeight = 190}, -- 28: Lava Bubbles0027
		{x = 2321, y = 1532, width = 43, height = 20, offsetX = -1215, offsetY = -86, offsetWidth = 1735, offsetHeight = 190}, -- 29: Lava Bubbles0028
		{x = 2369, y = 1532, width = 45, height = 21, offsetX = -1215, offsetY = -86, offsetWidth = 1735, offsetHeight = 190} -- 30: Lava Bubbles0029
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["anim"] = {start = 1, stop = 30, speed = 24, offsetX = 0, offsetY = 0},
	},
	"anim", -- set to default animation
	true -- If the sprite repeats
)
