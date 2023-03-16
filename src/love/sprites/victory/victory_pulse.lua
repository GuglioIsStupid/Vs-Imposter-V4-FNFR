return graphics.newSprite(
	graphics.imagePath("victory/victory_pulse"), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 2667, height = 1137, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: animatedlight instance 10000
		{x = 2676, y = 0, width = 2667, height = 1137, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 2: animatedlight instance 10001
		{x = 5352, y = 0, width = 2667, height = 1137, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 3: animatedlight instance 10002
		{x = 0, y = 1146, width = 2667, height = 1137, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 4: animatedlight instance 10003
		{x = 2676, y = 1146, width = 2667, height = 1137, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 5: animatedlight instance 10004
		{x = 5352, y = 1146, width = 2667, height = 1137, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 6: animatedlight instance 10005
		{x = 0, y = 2292, width = 2667, height = 1137, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 7: animatedlight instance 10006
		{x = 2676, y = 2292, width = 2667, height = 1137, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 8: animatedlight instance 10007
		{x = 5352, y = 2292, width = 2667, height = 1137, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 9: animatedlight instance 10008
		{x = 0, y = 3438, width = 2667, height = 1137, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 10: animatedlight instance 10009
		{x = 2676, y = 3438, width = 2667, height = 1137, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0} -- 11: animatedlight instance 10010
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["anim"] = {start = 1, stop = 11, speed = 24, offsetX = 0, offsetY = 0},
	},
	"anim", -- set to default animation
	false -- If the sprite repeats
)
