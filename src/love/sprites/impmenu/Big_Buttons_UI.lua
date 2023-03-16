return graphics.newSprite(
	graphics.imagePath("impmenu/Big_Buttons_UI"), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 439, height = 112, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: Credits Button0000
		{x = 440, y = 0, width = 441, height = 114, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 2: Credits Select0000
		{x = 442, y = 115, width = 441, height = 182, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 3: Freeplay Button0000
		{x = 0, y = 113, width = 441, height = 182, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 4: Freeplay Select0000
		{x = 0, y = 296, width = 439, height = 112, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 5: Gallery Button0000
		{x = 440, y = 298, width = 439, height = 112, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 6: Gallery Select0000
		{x = 442, y = 411, width = 441, height = 182, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 7: Story Mode Button0000
		{x = 0, y = 409, width = 441, height = 182, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0} -- 8: Story Mode Select0000
	},
	{
		["Credits"] = {start = 1, stop = 1, speed = 24, offsetX = 0, offsetY = 0},
		["Credits Select"] = {start = 2, stop = 2, speed = 24, offsetX = 0, offsetY = 0},
		["Freeplay"] = {start = 3, stop = 3, speed = 24, offsetX = 0, offsetY = 0},
		["Freeplay Select"] = {start = 4, stop = 4, speed = 24, offsetX = 0, offsetY = 0},
		["Gallery"] = {start = 5, stop = 5, speed = 24, offsetX = 0, offsetY = 0},
		["Gallery Select"] = {start = 6, stop = 6, speed = 24, offsetX = 0, offsetY = 0},
		["StoryMode"] = {start = 7, stop = 7, speed = 24, offsetX = 0, offsetY = 0},
		["StoryMode Select"] = {start = 8, stop = 8, speed = 24, offsetX = 0, offsetY = 0},
	},
	"StoryMode", -- set to default animation
	false -- If the sprite repeats
)
