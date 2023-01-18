return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("mira/crewback")), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 1588, height = 363, offsetX = 0, offsetY = -22, offsetWidth = 1588, offsetHeight = 385}, -- 1: crewback0000
		{x = 0, y = 0, width = 1588, height = 363, offsetX = 0, offsetY = -22, offsetWidth = 1588, offsetHeight = 385}, -- 2: crewback0001
		{x = 0, y = 368, width = 1582, height = 368, offsetX = -4, offsetY = -17, offsetWidth = 1588, offsetHeight = 385}, -- 3: crewback0002
		{x = 0, y = 368, width = 1582, height = 368, offsetX = -4, offsetY = -17, offsetWidth = 1588, offsetHeight = 385}, -- 4: crewback0003
		{x = 0, y = 741, width = 1567, height = 382, offsetX = -12, offsetY = -3, offsetWidth = 1588, offsetHeight = 385}, -- 5: crewback0004
		{x = 0, y = 741, width = 1567, height = 382, offsetX = -12, offsetY = -3, offsetWidth = 1588, offsetHeight = 385}, -- 6: crewback0005
		{x = 0, y = 1128, width = 1561, height = 385, offsetX = -15, offsetY = 0, offsetWidth = 1588, offsetHeight = 385}, -- 7: crewback0006
		{x = 0, y = 1128, width = 1561, height = 385, offsetX = -15, offsetY = 0, offsetWidth = 1588, offsetHeight = 385}, -- 8: crewback0007
		{x = 0, y = 1128, width = 1561, height = 385, offsetX = -15, offsetY = 0, offsetWidth = 1588, offsetHeight = 385}, -- 9: crewback0008
		{x = 0, y = 1128, width = 1561, height = 385, offsetX = -15, offsetY = 0, offsetWidth = 1588, offsetHeight = 385}, -- 10: crewback0009
		{x = 0, y = 1128, width = 1561, height = 385, offsetX = -15, offsetY = 0, offsetWidth = 1588, offsetHeight = 385}, -- 11: crewback0010
		{x = 0, y = 1128, width = 1561, height = 385, offsetX = -15, offsetY = 0, offsetWidth = 1588, offsetHeight = 385}, -- 12: crewback0011
		{x = 0, y = 1128, width = 1561, height = 385, offsetX = -15, offsetY = 0, offsetWidth = 1588, offsetHeight = 385}, -- 13: crewback0012
		{x = 0, y = 1128, width = 1561, height = 385, offsetX = -15, offsetY = 0, offsetWidth = 1588, offsetHeight = 385}, -- 14: crewback0013
		{x = 0, y = 1128, width = 1561, height = 385, offsetX = -15, offsetY = 0, offsetWidth = 1588, offsetHeight = 385} -- 15: crewback0014
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
