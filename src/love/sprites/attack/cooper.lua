return graphics.newSprite(
	graphics.imagePath("attack/cooper"), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 679, height = 641, offsetX = 0, offsetY = -2, offsetWidth = 679, offsetHeight = 643}, -- 1: bg seat 1 instance 10000
		{x = 0, y = 0, width = 679, height = 641, offsetX = 0, offsetY = -2, offsetWidth = 679, offsetHeight = 643}, -- 2: bg seat 1 instance 10001
		{x = 684, y = 0, width = 679, height = 640, offsetX = 0, offsetY = -3, offsetWidth = 679, offsetHeight = 643}, -- 3: bg seat 1 instance 10002
		{x = 684, y = 0, width = 679, height = 640, offsetX = 0, offsetY = -3, offsetWidth = 679, offsetHeight = 643}, -- 4: bg seat 1 instance 10003
		{x = 1368, y = 0, width = 679, height = 643, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 5: bg seat 1 instance 10004
		{x = 1368, y = 0, width = 679, height = 643, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 6: bg seat 1 instance 10005
		{x = 0, y = 648, width = 679, height = 643, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 7: bg seat 1 instance 10006
		{x = 0, y = 648, width = 679, height = 643, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 8: bg seat 1 instance 10007
		{x = 0, y = 648, width = 679, height = 643, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 9: bg seat 1 instance 10008
		{x = 0, y = 648, width = 679, height = 643, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 10: bg seat 1 instance 10009
		{x = 0, y = 648, width = 679, height = 643, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 11: bg seat 1 instance 10010
		{x = 0, y = 648, width = 679, height = 643, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 12: bg seat 1 instance 10011
		{x = 0, y = 648, width = 679, height = 643, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 13: bg seat 1 instance 10012
		{x = 0, y = 648, width = 679, height = 643, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0} -- 14: bg seat 1 instance 10013
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
