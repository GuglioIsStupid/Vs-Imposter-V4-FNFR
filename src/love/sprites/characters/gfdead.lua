return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("characters/gfdead")), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 616, height = 232, offsetX = 0, offsetY = -1, offsetWidth = 616, offsetHeight = 233}, -- 1: gf speaker instance 10000
		{x = 0, y = 0, width = 616, height = 232, offsetX = 0, offsetY = -1, offsetWidth = 616, offsetHeight = 233}, -- 2: gf speaker instance 10001
		{x = 621, y = 0, width = 613, height = 233, offsetX = -3, offsetY = 0, offsetWidth = 616, offsetHeight = 233}, -- 3: gf speaker instance 10002
		{x = 1239, y = 0, width = 612, height = 233, offsetX = -4, offsetY = 0, offsetWidth = 616, offsetHeight = 233}, -- 4: gf speaker instance 10003
		{x = 0, y = 238, width = 611, height = 232, offsetX = -4, offsetY = -1, offsetWidth = 616, offsetHeight = 233}, -- 5: gf speaker instance 10004
		{x = 0, y = 238, width = 611, height = 232, offsetX = -4, offsetY = -1, offsetWidth = 616, offsetHeight = 233}, -- 6: gf speaker instance 10005
		{x = 616, y = 238, width = 611, height = 229, offsetX = -4, offsetY = -4, offsetWidth = 616, offsetHeight = 233}, -- 7: gf speaker instance 10006
		{x = 616, y = 238, width = 611, height = 229, offsetX = -4, offsetY = -4, offsetWidth = 616, offsetHeight = 233}, -- 8: gf speaker instance 10007
		{x = 1232, y = 238, width = 611, height = 229, offsetX = -4, offsetY = -4, offsetWidth = 616, offsetHeight = 233}, -- 9: gf speaker instance 10008
		{x = 1232, y = 238, width = 611, height = 229, offsetX = -4, offsetY = -4, offsetWidth = 616, offsetHeight = 233}, -- 10: gf speaker instance 10009
		{x = 1232, y = 238, width = 611, height = 229, offsetX = -4, offsetY = -4, offsetWidth = 616, offsetHeight = 233}, -- 11: gf speaker instance 10010
		{x = 1232, y = 238, width = 611, height = 229, offsetX = -4, offsetY = -4, offsetWidth = 616, offsetHeight = 233}, -- 12: gf speaker instance 10011
		{x = 1232, y = 238, width = 611, height = 229, offsetX = -4, offsetY = -4, offsetWidth = 616, offsetHeight = 233}, -- 13: gf speaker instance 10012
		{x = 1232, y = 238, width = 611, height = 229, offsetX = -4, offsetY = -4, offsetWidth = 616, offsetHeight = 233} -- 14: gf speaker instance 10013
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["idle"] = {start = 1, stop = 14, speed = 24, offsetX = 0, offsetY = 0},
	},
	"idle", -- set to default animation
	false -- If the sprite repeats
)
