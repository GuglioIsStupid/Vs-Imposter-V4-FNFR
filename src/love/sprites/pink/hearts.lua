return graphics.newSprite(
	graphics.imagePath("pink/hearts"), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 1310, height = 750, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: Symbol 20000
		{x = 0, y = 0, width = 1310, height = 750, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 2: Symbol 20001
		{x = 0, y = 0, width = 1310, height = 750, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 3: Symbol 20002
		{x = 0, y = 755, width = 1310, height = 750, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 4: Symbol 20003
		{x = 0, y = 755, width = 1310, height = 750, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 5: Symbol 20004
		{x = 0, y = 755, width = 1310, height = 750, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0} -- 6: Symbol 20005
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["anim"] = {start = 1, stop = 6, speed = 24, offsetX = 0, offsetY = 0},
	},
	"anim", -- set to default animation
	false -- If the sprite repeats
)
