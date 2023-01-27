return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("icon-blackFinale")), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 435, height = 495, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: black icon mad0000
		{x = 445, y = 0, width = 435, height = 495, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 2: black icon mad0001
		{x = 890, y = 0, width = 435, height = 495, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 3: black icon mad0002
		{x = 1335, y = 0, width = 435, height = 495, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 4: black icon mad0003
		{x = 0, y = 505, width = 435, height = 495, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 5: black icon mad0004
		{x = 445, y = 505, width = 435, height = 495, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 6: black icon mad0005
		{x = 890, y = 505, width = 435, height = 495, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 7: black icon mad0006
		{x = 1335, y = 505, width = 435, height = 495, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 8: black icon mad0007
		{x = 0, y = 1010, width = 435, height = 495, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 9: black icon mad0008
		{x = 445, y = 1010, width = 435, height = 495, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 10: black icon mad0009
		{x = 890, y = 1010, width = 435, height = 452, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 11: black icon calm0000
		{x = 890, y = 1010, width = 435, height = 452, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 12: black icon calm0001
		{x = 1335, y = 1010, width = 435, height = 452, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 13: black icon calm0002
		{x = 1335, y = 1010, width = 435, height = 452, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 14: black icon calm0003
		{x = 890, y = 1472, width = 435, height = 452, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 15: black icon calm0004
		{x = 890, y = 1472, width = 435, height = 452, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 16: black icon calm0005
		{x = 1335, y = 1472, width = 435, height = 452, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 17: black icon calm0006
		{x = 1335, y = 1472, width = 435, height = 452, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 18: black icon calm0007
		{x = 0, y = 1515, width = 435, height = 452, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 19: black icon calm0008
		{x = 0, y = 1515, width = 435, height = 452, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0} -- 20: black icon calm0009
	},
	{
		["mad"] = {start = 1, stop = 9, speed = 24, offsetX = 0, offsetY = 0},
		["calm"] = {start = 11, stop = 20, speed = 24, offsetX = 0, offsetY = 0}
	},
	"calm", -- set to default animation
	true -- If the sprite repeats
)
