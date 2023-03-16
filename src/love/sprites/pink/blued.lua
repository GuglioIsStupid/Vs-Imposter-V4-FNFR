return graphics.newSprite(
	graphics.imagePath("pink/pretender/blued"), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 702, height = 435, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: bob bop0000
		{x = 0, y = 0, width = 702, height = 435, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 2: bob bop0001
		{x = 712, y = 0, width = 702, height = 435, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 3: bob bop0002
		{x = 712, y = 0, width = 702, height = 435, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 4: bob bop0003
		{x = 0, y = 445, width = 702, height = 435, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 5: bob bop0004
		{x = 0, y = 445, width = 702, height = 435, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 6: bob bop0005
		{x = 712, y = 445, width = 702, height = 435, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 7: bob bop0006
		{x = 712, y = 445, width = 702, height = 435, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 8: bob bop0007
		{x = 0, y = 890, width = 702, height = 435, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 9: bob bop0008
		{x = 0, y = 890, width = 702, height = 435, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 10: bob bop0009
		{x = 0, y = 890, width = 702, height = 435, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 11: bob bop0010
		{x = 0, y = 890, width = 702, height = 435, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 12: bob bop0011
		{x = 0, y = 890, width = 702, height = 435, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 13: bob bop0012
		{x = 0, y = 890, width = 702, height = 435, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 14: bob bop0013
		{x = 0, y = 890, width = 702, height = 435, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 15: bob bop0014
		{x = 0, y = 890, width = 702, height = 435, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0} -- 16: bob bop0015
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["anim"] = {start = 1, stop = 16, speed = 24, offsetX = 0, offsetY = 0},
	},
	"anim", -- set to default animation
	true -- If the sprite repeats
)
