return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("attack/crowd")), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 657, height = 202, offsetX = -4, offsetY = -6, offsetWidth = 661, offsetHeight = 209}, -- 1: tess n gus fring instance 10000
		{x = 0, y = 0, width = 657, height = 202, offsetX = -4, offsetY = -6, offsetWidth = 661, offsetHeight = 209}, -- 2: tess n gus fring instance 10001
		{x = 662, y = 0, width = 659, height = 205, offsetX = 0, offsetY = -4, offsetWidth = 661, offsetHeight = 209}, -- 3: tess n gus fring instance 10002
		{x = 662, y = 0, width = 659, height = 205, offsetX = 0, offsetY = -4, offsetWidth = 661, offsetHeight = 209}, -- 4: tess n gus fring instance 10003
		{x = 1326, y = 0, width = 655, height = 206, offsetX = -2, offsetY = -3, offsetWidth = 661, offsetHeight = 209}, -- 5: tess n gus fring instance 10004
		{x = 1326, y = 0, width = 655, height = 206, offsetX = -2, offsetY = -3, offsetWidth = 661, offsetHeight = 209}, -- 6: tess n gus fring instance 10005
		{x = 0, y = 211, width = 654, height = 209, offsetX = -3, offsetY = 0, offsetWidth = 661, offsetHeight = 209}, -- 7: tess n gus fring instance 10006
		{x = 0, y = 211, width = 654, height = 209, offsetX = -3, offsetY = 0, offsetWidth = 661, offsetHeight = 209}, -- 8: tess n gus fring instance 10007
		{x = 659, y = 211, width = 653, height = 209, offsetX = -4, offsetY = 0, offsetWidth = 661, offsetHeight = 209}, -- 9: tess n gus fring instance 10008
		{x = 659, y = 211, width = 653, height = 209, offsetX = -4, offsetY = 0, offsetWidth = 661, offsetHeight = 209}, -- 10: tess n gus fring instance 10009
		{x = 659, y = 211, width = 653, height = 209, offsetX = -4, offsetY = 0, offsetWidth = 661, offsetHeight = 209}, -- 11: tess n gus fring instance 10010
		{x = 659, y = 211, width = 653, height = 209, offsetX = -4, offsetY = 0, offsetWidth = 661, offsetHeight = 209}, -- 12: tess n gus fring instance 10011
		{x = 659, y = 211, width = 653, height = 209, offsetX = -4, offsetY = 0, offsetWidth = 661, offsetHeight = 209}, -- 13: tess n gus fring instance 10012
		{x = 659, y = 211, width = 653, height = 209, offsetX = -4, offsetY = 0, offsetWidth = 661, offsetHeight = 209} -- 14: tess n gus fring instance 10013
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["anim"] = {start = 1, stop = 14, speed = 24, offsetX = 0, offsetY = 0},
	},
	"anim", -- set to default animation
	true -- If the sprite repeats
)
