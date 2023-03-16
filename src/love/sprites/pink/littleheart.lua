return graphics.newSprite(
	graphics.imagePath("pink/littleheart"), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 95, height = 87, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: littleheart0000
		{x = 0, y = 0, width = 95, height = 87, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 2: littleheart0001
		{x = 0, y = 0, width = 95, height = 87, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 3: littleheart0002
		{x = 100, y = 0, width = 95, height = 87, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 4: littleheart0003
		{x = 100, y = 0, width = 95, height = 87, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 5: littleheart0004
		{x = 100, y = 0, width = 95, height = 87, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 6: littleheart0005
		{x = 0, y = 92, width = 95, height = 87, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 7: littleheart0006
		{x = 0, y = 92, width = 95, height = 87, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 8: littleheart0007
		{x = 0, y = 92, width = 95, height = 87, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0} -- 9: littleheart0008
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["anim"] = {start = 1, stop = 9, speed = 24, offsetX = 0, offsetY = 0},
	},
	"anim", -- set to default animation
	false -- If the sprite repeats
)
