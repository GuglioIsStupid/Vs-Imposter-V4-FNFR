return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("henry/henry/i_schee_u_enry")), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 1786, height = 1313, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: rhm intro shadow0000
		{x = 1796, y = 0, width = 1786, height = 1313, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 2: rhm intro shadow0001
		{x = 0, y = 1323, width = 1786, height = 1313, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 3: rhm intro shadow0002
		{x = 1796, y = 1323, width = 1786, height = 1313, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0} -- 4: rhm intro shadow0003
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["anim"] = {start = 1, stop = 4, speed = 24, offsetX = 0, offsetY = 0},
	},
	"anim", -- set to default animation
	false -- If the sprite repeats
)
