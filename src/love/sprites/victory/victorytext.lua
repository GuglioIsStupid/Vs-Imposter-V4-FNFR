return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("victory/victorytext")), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 1057, height = 218, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: VICTORY instance 10000
		{x = 1066, y = 0, width = 1057, height = 218, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 2: VICTORY instance 10001
		{x = 2132, y = 0, width = 1057, height = 218, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 3: VICTORY instance 10002
		{x = 0, y = 227, width = 1057, height = 218, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 4: VICTORY instance 10003
		{x = 1066, y = 227, width = 1057, height = 218, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 5: VICTORY instance 10004
		{x = 2132, y = 227, width = 1057, height = 218, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 6: VICTORY instance 10005
		{x = 0, y = 454, width = 1057, height = 218, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 7: VICTORY instance 10006
		{x = 1066, y = 454, width = 1057, height = 218, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 8: VICTORY instance 10007
		{x = 2132, y = 454, width = 1057, height = 218, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 9: VICTORY instance 10008
		{x = 0, y = 681, width = 1057, height = 218, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 10: VICTORY instance 10009
		{x = 1066, y = 681, width = 1057, height = 218, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 11: VICTORY instance 10010
		{x = 2132, y = 681, width = 1057, height = 218, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0} -- 12: VICTORY instance 10011
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["anim"] = {start = 1, stop = 12, speed = 24, offsetX = 0, offsetY = 0},
	},
	"anim", -- set to default animation
	false -- If the sprite repeats
)
