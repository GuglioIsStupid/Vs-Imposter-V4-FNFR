return graphics.newSprite(
	graphics.imagePath("pink/pretender/gf_dead_p"), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 703, height = 469, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: GF Dancing Beat0000
		{x = 0, y = 479, width = 703, height = 469, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 2: GF Dancing Beat0001
		{x = 0, y = 479, width = 703, height = 469, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 3: GF Dancing Beat0002
		{x = 0, y = 958, width = 703, height = 469, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 4: GF Dancing Beat0003
		{x = 0, y = 0, width = 703, height = 469, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 5: GF Dancing Beat0004
		{x = 0, y = 0, width = 703, height = 469, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 6: GF Dancing Beat0005
		{x = 0, y = 0, width = 703, height = 469, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 7: GF Dancing Beat0006
		{x = 0, y = 0, width = 703, height = 469, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0} -- 8: GF Dancing Beat0007
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["idle"] = {start = 1, stop = 8, speed = 24, offsetX = 0, offsetY = 0},
	},
	"idle", -- set to default animation
	false -- If the sprite repeats
)
