return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("impmenu/redMenu")), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 876, height = 962, offsetX = 0, offsetY = 0, offsetWidth = 877, offsetHeight = 962}, -- 1: red idle0000
		{x = 877, y = 0, width = 876, height = 961, offsetX = -1, offsetY = 0, offsetWidth = 877, offsetHeight = 962}, -- 2: red idle0001
		{x = 1763, y = 0, width = 876, height = 961, offsetX = -11, offsetY = 0, offsetWidth = 877, offsetHeight = 962}, -- 3: red idle0002
		{x = 2629, y = 0, width = 877, height = 962, offsetX = 0, offsetY = 0, offsetWidth = 877, offsetHeight = 962}, -- 4: red idle0003
		{x = 0, y = 962, width = 878, height = 936, offsetX = 1, offsetY = 1, offsetWidth = 952, offsetHeight = 936}, -- 5: red select0000
		{x = 879, y = 962, width = 877, height = 933, offsetX = 1, offsetY = 1, offsetWidth = 952, offsetHeight = 936}, -- 6: red select0001
		{x = 1757, y = 962, width = 877, height = 933, offsetX = 1, offsetY = 1, offsetWidth = 952, offsetHeight = 936}, -- 7: red select0002
		{x = 2808, y = 1863, width = 902, height = 898, offsetX = 26, offsetY = 44, offsetWidth = 952, offsetHeight = 936}, -- 8: red select0003
		{x = 0, y = 1898, width = 902, height = 900, offsetX = 26, offsetY = 44, offsetWidth = 952, offsetHeight = 936}, -- 9: red select0005
		{x = 0, y = 1898, width = 902, height = 900, offsetX = 26, offsetY = 44, offsetWidth = 952, offsetHeight = 936}, -- 10: red select0006
		{x = 903, y = 1896, width = 951, height = 898, offsetX = 62, offsetY = 44, offsetWidth = 952, offsetHeight = 936}, -- 11: red select0007
		{x = 903, y = 1896, width = 951, height = 898, offsetX = 62, offsetY = 44, offsetWidth = 952, offsetHeight = 936}, -- 12: red select0008
		{x = 1855, y = 1896, width = 952, height = 899, offsetX = 62, offsetY = 44, offsetWidth = 952, offsetHeight = 936}, -- 13: red select0009
		{x = 1855, y = 1896, width = 952, height = 899, offsetX = 62, offsetY = 44, offsetWidth = 952, offsetHeight = 936}, -- 14: red select0010
		{x = 2635, y = 962, width = 952, height = 898, offsetX = 62, offsetY = 44, offsetWidth = 952, offsetHeight = 936}, -- 15: red select0011
		{x = 2635, y = 962, width = 952, height = 898, offsetX = 62, offsetY = 44, offsetWidth = 952, offsetHeight = 936}, -- 16: red select0012
		{x = 903, y = 1896, width = 951, height = 898, offsetX = 62, offsetY = 44, offsetWidth = 952, offsetHeight = 936}, -- 17: red select0013
		{x = 903, y = 1896, width = 951, height = 898, offsetX = 62, offsetY = 44, offsetWidth = 952, offsetHeight = 936}, -- 18: red select0014
		{x = 1855, y = 1896, width = 952, height = 899, offsetX = 62, offsetY = 44, offsetWidth = 952, offsetHeight = 936}, -- 19: red select0015
		{x = 1855, y = 1896, width = 952, height = 899, offsetX = 62, offsetY = 44, offsetWidth = 952, offsetHeight = 936}, -- 20: red select0016
		{x = 2635, y = 962, width = 952, height = 898, offsetX = 62, offsetY = 44, offsetWidth = 952, offsetHeight = 936}, -- 21: red select0017
		{x = 2635, y = 962, width = 952, height = 898, offsetX = 62, offsetY = 44, offsetWidth = 952, offsetHeight = 936} -- 22: red select0018
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["idle"] = {start = 1, stop = 4, speed = 24, offsetX = 0, offsetY = 0},
		["select"] = {start = 5, stop = 22, speed = 24, offsetX = 0, offsetY = 0}
	},
	"idle", -- set to default animation
	true -- If the sprite repeats
)
