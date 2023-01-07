return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("impmenu/ship")), -- Do not add the .png extension
	{
		{x = 0, y = 169, width = 159, height = 210, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: down0000
		{x = 169, y = 220, width = 210, height = 159, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 2: left0000
		{x = 0, y = 0, width = 210, height = 159, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 3: right0000
		{x = 220, y = 0, width = 159, height = 210, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0} -- 4: up0000
	},
	{
		["down"] = {start = 1, stop = 1, speed = 24, offsetX = 0, offsetY = 38},
		["left"] = {start = 2, stop = 2, speed = 24, offsetX = -38, offsetY = 0},
		["right"] = {start = 3, stop = 3, speed = 24, offsetX = 38, offsetY = 0},
		["up"] = {start = 4, stop = 4, speed = 24, offsetX = 0, offsetY = -38}
	},
	"right", -- set to default animation
	false -- If the sprite repeats
)
