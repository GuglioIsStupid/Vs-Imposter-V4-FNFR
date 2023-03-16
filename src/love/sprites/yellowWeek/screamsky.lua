return graphics.newSprite(
	graphics.imagePath("yellowWeek/airship/screamsky"), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 2059, height = 1116, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: scream sky  instance 10000
		{x = 2079, y = 0, width = 2059, height = 1116, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 2: scream sky  instance 10001
		{x = 4158, y = 0, width = 2059, height = 1116, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 3: scream sky  instance 10002
		{x = 0, y = 1136, width = 2059, height = 1116, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 4: scream sky  instance 10003
		{x = 2079, y = 1136, width = 2059, height = 1116, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 5: scream sky  instance 10004
		{x = 4158, y = 1136, width = 2059, height = 1116, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 6: scream sky  instance 10005
		{x = 2079, y = 1136, width = 2059, height = 1116, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 7: scream sky  instance 10006
		{x = 4158, y = 1136, width = 2059, height = 1116, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 8: scream sky  instance 10007
		{x = 2079, y = 1136, width = 2059, height = 1116, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 9: scream sky  instance 10008
		{x = 4158, y = 1136, width = 2059, height = 1116, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 10: scream sky  instance 10009
		{x = 2079, y = 1136, width = 2059, height = 1116, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 11: scream sky  instance 10010
		{x = 4158, y = 1136, width = 2059, height = 1116, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 12: scream sky  instance 10011
		{x = 0, y = 2272, width = 2059, height = 1116, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 13: scream sky  instance 10012
		{x = 2079, y = 2272, width = 2059, height = 1116, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 14: scream sky  instance 10013
		{x = 4158, y = 2272, width = 2059, height = 1116, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 15: scream sky  instance 10014
		{x = 0, y = 3408, width = 2059, height = 1116, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0} -- 16: scream sky  instance 10015
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["anim"] = {start = 1, stop = 16, speed = 24, offsetX = 0, offsetY = 0},
	},
	"anim", -- set to default animation
	false -- If the sprite repeats
)
