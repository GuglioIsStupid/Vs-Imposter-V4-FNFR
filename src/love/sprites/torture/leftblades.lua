return graphics.newSprite(
	graphics.imagePath("torture/leftblades"), -- Do not add the .png extension
	{
		{x = 523, y = 1202, width = 252, height = 603, offsetX = -2, offsetY = -2, offsetWidth = 269, offsetHeight = 611}, -- 1: blad instance 10000
		{x = 269, y = 610, width = 260, height = 590, offsetX = -2, offsetY = -2, offsetWidth = 269, offsetHeight = 611}, -- 2: blad instance 10001
		{x = 2, y = 2, width = 269, height = 606, offsetX = 0, offsetY = 0, offsetWidth = 269, offsetHeight = 611}, -- 3: blad instance 10002
		{x = 2, y = 1220, width = 257, height = 602, offsetX = 0, offsetY = 0, offsetWidth = 269, offsetHeight = 611}, -- 4: blad instance 10003
		{x = 528, y = 2, width = 252, height = 605, offsetX = -6, offsetY = -6, offsetWidth = 269, offsetHeight = 611}, -- 5: blad instance 10004
		{x = 261, y = 1220, width = 260, height = 592, offsetX = -6, offsetY = -6, offsetWidth = 269, offsetHeight = 611}, -- 6: blad instance 10005
		{x = 2, y = 610, width = 265, height = 608, offsetX = -4, offsetY = -2, offsetWidth = 269, offsetHeight = 611}, -- 7: blad instance 10006
		{x = 273, y = 2, width = 253, height = 604, offsetX = -4, offsetY = -2, offsetWidth = 269, offsetHeight = 611} -- 8: blad instance 10007
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
