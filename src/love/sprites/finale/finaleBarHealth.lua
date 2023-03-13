return graphics.newSprite(
	graphics.imagePath("finale/finaleBarHealth"), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 1232, height = 356, offsetX = 0, offsetY = 0, offsetWidth = 1232, offsetHeight = 356}, -- 1: finaleBarHealth 100000
		{x = 1232, y = 0, width = 1232, height = 356, offsetX = 0, offsetY = 0, offsetWidth = 1232, offsetHeight = 356}, -- 2: finaleBarHealth 200000
		{x = 2464, y = 0, width = 1232, height = 356, offsetX = 0, offsetY = 0, offsetWidth = 1232, offsetHeight = 356}, -- 3: finaleBarHealth 300000
		{x = 0, y = 356, width = 1232, height = 356, offsetX = 0, offsetY = 0, offsetWidth = 1232, offsetHeight = 356}, -- 4: finaleBarHealth 400000
		{x = 1232, y = 356, width = 1232, height = 356, offsetX = 0, offsetY = 0, offsetWidth = 1232, offsetHeight = 356}, -- 5: finaleBarHealth 500000
		{x = 2464, y = 356, width = 1232, height = 356, offsetX = 0, offsetY = 0, offsetWidth = 1232, offsetHeight = 356}, -- 6: finaleBarHealth 600000
		{x = 0, y = 712, width = 1232, height = 356, offsetX = 0, offsetY = 0, offsetWidth = 1232, offsetHeight = 356}, -- 7: finaleBarHealth 700000
		{x = 1232, y = 712, width = 1232, height = 356, offsetX = 0, offsetY = 0, offsetWidth = 1232, offsetHeight = 356}, -- 8: finaleBarHealth 800000
		{x = 2464, y = 712, width = 1232, height = 356, offsetX = 0, offsetY = 0, offsetWidth = 1232, offsetHeight = 356}, -- 9: finaleBarHealth 900000
		{x = 0, y = 1068, width = 1232, height = 356, offsetX = 0, offsetY = 0, offsetWidth = 1232, offsetHeight = 356} -- 10: finaleBarHealth 1000000
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["100"] = {start = 1, stop = 1, speed = 24, offsetX = 0, offsetY = 0},
		["80"] = {start = 2, stop = 2, speed = 24, offsetX = 0, offsetY = 0},
		["30"] = {start = 3, stop = 3, speed = 24, offsetX = 0, offsetY = 0},
		["70"] = {start = 4, stop = 4, speed = 24, offsetX = 0, offsetY = 0},
		["60"] = {start = 5, stop = 5, speed = 24, offsetX = 0, offsetY = 0},
		["50"] = {start = 6, stop = 6, speed = 24, offsetX = 0, offsetY = 0},
		["40"] = {start = 7, stop = 7, speed = 24, offsetX = 0, offsetY = 0},
		["30"] = {start = 8, stop = 8, speed = 24, offsetX = 0, offsetY = 0},
		["20"] = {start = 9, stop = 9, speed = 24, offsetX = 0, offsetY = 0},
		["10"] = {start = 10, stop = 10, speed = 24, offsetX = 0, offsetY = 0}
	},
	"10", -- set to default animation
	false -- If the sprite repeats
)
