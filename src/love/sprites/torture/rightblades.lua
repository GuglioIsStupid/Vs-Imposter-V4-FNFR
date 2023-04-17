return graphics.newSprite(
	graphics.imagePath("torture/rightblades"), -- Do not add the .png extension
	{
		{x = 523, y = 1204, width = 252, height = 604, offsetX = -15, offsetY = -2, offsetWidth = 269, offsetHeight = 612}, -- 1: blad instance 10000
		{x = 269, y = 611, width = 260, height = 591, offsetX = -7, offsetY = -2, offsetWidth = 269, offsetHeight = 612}, -- 2: blad instance 10001
		{x = 2, y = 2, width = 269, height = 607, offsetX = 0, offsetY = 0, offsetWidth = 269, offsetHeight = 612}, -- 3: blad instance 10002
		{x = 2, y = 1222, width = 257, height = 602, offsetX = -12, offsetY = 0, offsetWidth = 269, offsetHeight = 612}, -- 4: blad instance 10003
		{x = 528, y = 2, width = 252, height = 606, offsetX = -11, offsetY = -6, offsetWidth = 269, offsetHeight = 612}, -- 5: blad instance 10004
		{x = 261, y = 1222, width = 260, height = 593, offsetX = -3, offsetY = -6, offsetWidth = 269, offsetHeight = 612}, -- 6: blad instance 10005
		{x = 2, y = 611, width = 265, height = 609, offsetX = 0, offsetY = -2, offsetWidth = 269, offsetHeight = 612}, -- 7: blad instance 10006
		{x = 273, y = 2, width = 253, height = 604, offsetX = -12, offsetY = -2, offsetWidth = 269, offsetHeight = 612} -- 8: blad instance 10007
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["anim"] = {start = 1, stop = 8, speed = 24, offsetX = 0, offsetY = 0},
	},
	"anim", -- set to default animation
	false -- If the sprite repeats
)
