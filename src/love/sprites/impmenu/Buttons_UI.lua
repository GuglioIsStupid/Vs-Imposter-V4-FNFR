return graphics.newSprite(
	images.buttons, -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 150, height = 151, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: Innersloth Button0000
		{x = 0, y = 152, width = 150, height = 151, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 2: Innersloth Select0000
		{x = 302, y = 0, width = 151, height = 151, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 3: Shop Button0000
		{x = 302, y = 152, width = 151, height = 151, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 4: Shop Select0000
		{x = 151, y = 0, width = 150, height = 151, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 5: Options Button0000
		{x = 151, y = 152, width = 150, height = 151, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0} -- 6: Options Select0000
	},
	{
		["Innersloth"] = {start = 1, stop = 1, speed = 24, offsetX = 0, offsetY = 0},
		["Innersloth Select"] = {start = 2, stop = 2, speed = 24, offsetX = 0, offsetY = 0},
		["Shop"] = {start = 3, stop = 3, speed = 24, offsetX = 0, offsetY = 0},
		["Shop Select"] = {start = 4, stop = 4, speed = 24, offsetX = 0, offsetY = 0},
		["Options"] = {start = 5, stop = 5, speed = 24, offsetX = 0, offsetY = 0},
		["Options Select"] = {start = 6, stop = 6, speed = 24, offsetX = 0, offsetY = 0},
	},
	"Innersloth", -- set to default animation
	false -- If the sprite repeats
)
