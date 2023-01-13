return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("greenWeek/crewfront")), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 2453, height = 406, offsetX = 0, offsetY = -16, offsetWidth = 2453, offsetHeight = 422}, -- 1: crewfront0000
		{x = 0, y = 0, width = 2453, height = 406, offsetX = 0, offsetY = -16, offsetWidth = 2453, offsetHeight = 422}, -- 2: crewfront0001
		{x = 0, y = 411, width = 2447, height = 410, offsetX = -3, offsetY = -12, offsetWidth = 2453, offsetHeight = 422}, -- 3: crewfront0002
		{x = 0, y = 411, width = 2447, height = 410, offsetX = -3, offsetY = -12, offsetWidth = 2453, offsetHeight = 422}, -- 4: crewfront0003
		{x = 0, y = 826, width = 2432, height = 419, offsetX = -11, offsetY = -3, offsetWidth = 2453, offsetHeight = 422}, -- 5: crewfront0004
		{x = 0, y = 826, width = 2432, height = 419, offsetX = -11, offsetY = -3, offsetWidth = 2453, offsetHeight = 422}, -- 6: crewfront0005
		{x = 0, y = 1250, width = 2428, height = 422, offsetX = -13, offsetY = 0, offsetWidth = 2453, offsetHeight = 422}, -- 7: crewfront0006
		{x = 0, y = 1250, width = 2428, height = 422, offsetX = -13, offsetY = 0, offsetWidth = 2453, offsetHeight = 422}, -- 8: crewfront0007
		{x = 0, y = 1250, width = 2428, height = 422, offsetX = -13, offsetY = 0, offsetWidth = 2453, offsetHeight = 422}, -- 9: crewfront0008
		{x = 0, y = 1250, width = 2428, height = 422, offsetX = -13, offsetY = 0, offsetWidth = 2453, offsetHeight = 422}, -- 10: crewfront0009
		{x = 0, y = 1250, width = 2428, height = 422, offsetX = -13, offsetY = 0, offsetWidth = 2453, offsetHeight = 422}, -- 11: crewfront0010
		{x = 0, y = 1250, width = 2428, height = 422, offsetX = -13, offsetY = 0, offsetWidth = 2453, offsetHeight = 422}, -- 12: crewfront0011
		{x = 0, y = 1250, width = 2428, height = 422, offsetX = -13, offsetY = 0, offsetWidth = 2453, offsetHeight = 422}, -- 13: crewfront0012
		{x = 0, y = 1250, width = 2428, height = 422, offsetX = -13, offsetY = 0, offsetWidth = 2453, offsetHeight = 422}, -- 14: crewfront0013
		{x = 0, y = 1250, width = 2428, height = 422, offsetX = -13, offsetY = 0, offsetWidth = 2453, offsetHeight = 422} -- 15: crewfront0014
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["anim"] = {start = 1, stop = 15, speed = 24, offsetX = 0, offsetY = 0},
	},
	"anim", -- set to default animation
	false -- If the sprite repeats
)
