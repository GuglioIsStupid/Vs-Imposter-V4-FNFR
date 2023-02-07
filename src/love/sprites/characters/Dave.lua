return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("characters/Dave")), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 1204, height = 804, offsetX = 0, offsetY = 0, offsetWidth = 1204, offsetHeight = 804}, -- 1: Dave Idle0000
		{x = 1204, y = 0, width = 1204, height = 804, offsetX = 0, offsetY = 0, offsetWidth = 1204, offsetHeight = 804}, -- 2: Dave Idle0001
		{x = 2408, y = 0, width = 1204, height = 804, offsetX = 0, offsetY = 0, offsetWidth = 1204, offsetHeight = 804}, -- 3: Dave Idle0002
		{x = 3612, y = 0, width = 1204, height = 804, offsetX = 0, offsetY = 0, offsetWidth = 1204, offsetHeight = 804}, -- 4: Dave Idle0003
		{x = 4816, y = 0, width = 1204, height = 804, offsetX = 0, offsetY = 0, offsetWidth = 1204, offsetHeight = 804}, -- 5: Dave Idle0004
		{x = 6020, y = 0, width = 1204, height = 804, offsetX = 0, offsetY = 0, offsetWidth = 1204, offsetHeight = 804}, -- 6: Dave Idle0005
		{x = 0, y = 804, width = 1204, height = 804, offsetX = 0, offsetY = 0, offsetWidth = 1204, offsetHeight = 804}, -- 7: Dave Idle0006
		{x = 1204, y = 804, width = 1204, height = 804, offsetX = 0, offsetY = 0, offsetWidth = 1204, offsetHeight = 804}, -- 8: Dave Idle0007

		{x = 2408, y = 804, width = 1204, height = 804, offsetX = 0, offsetY = 0, offsetWidth = 1204, offsetHeight = 804}, -- 9: Dave Left0000
		{x = 3612, y = 804, width = 1204, height = 804, offsetX = 0, offsetY = 0, offsetWidth = 1204, offsetHeight = 804}, -- 10: Dave Left0001
		{x = 4816, y = 804, width = 1204, height = 804, offsetX = 0, offsetY = 0, offsetWidth = 1204, offsetHeight = 804}, -- 11: Dave Left0002

		{x = 6020, y = 804, width = 1204, height = 804, offsetX = 0, offsetY = 0, offsetWidth = 1204, offsetHeight = 804}, -- 12: Dave Down0000
		{x = 0, y = 1608, width = 1204, height = 804, offsetX = 0, offsetY = 0, offsetWidth = 1204, offsetHeight = 804}, -- 13: Dave Down0001
		{x = 1204, y = 1608, width = 1204, height = 804, offsetX = 0, offsetY = 0, offsetWidth = 1204, offsetHeight = 804}, -- 14: Dave Down0002

		{x = 2408, y = 1608, width = 1204, height = 804, offsetX = 0, offsetY = 0, offsetWidth = 1204, offsetHeight = 804}, -- 15: Dave Up0000
		{x = 3612, y = 1608, width = 1204, height = 804, offsetX = 0, offsetY = 0, offsetWidth = 1204, offsetHeight = 804}, -- 16: Dave Up0001
		{x = 4816, y = 1608, width = 1204, height = 804, offsetX = 0, offsetY = 0, offsetWidth = 1204, offsetHeight = 804}, -- 17: Dave Up0002

		{x = 6020, y = 1608, width = 1204, height = 804, offsetX = 0, offsetY = 0, offsetWidth = 1204, offsetHeight = 804}, -- 18: Dave Right0000
		{x = 0, y = 2412, width = 1204, height = 804, offsetX = 0, offsetY = 0, offsetWidth = 1204, offsetHeight = 804}, -- 19: Dave Right0001
		{x = 1204, y = 2412, width = 1204, height = 804, offsetX = 0, offsetY = 0, offsetWidth = 1204, offsetHeight = 804}, -- 20: Dave Right0002

		{x = 2408, y = 2412, width = 1204, height = 804, offsetX = 0, offsetY = 0, offsetWidth = 1204, offsetHeight = 804}, -- 21: Dave Death0000
		{x = 3612, y = 2412, width = 1204, height = 804, offsetX = 0, offsetY = 0, offsetWidth = 1204, offsetHeight = 804}, -- 22: Dave Death0001
		{x = 4816, y = 2412, width = 1204, height = 804, offsetX = 0, offsetY = 0, offsetWidth = 1204, offsetHeight = 804}, -- 23: Dave Death0002
		{x = 6020, y = 2412, width = 1204, height = 804, offsetX = 0, offsetY = 0, offsetWidth = 1204, offsetHeight = 804}, -- 24: Dave Death0003
		{x = 0, y = 3216, width = 1204, height = 804, offsetX = 0, offsetY = 0, offsetWidth = 1204, offsetHeight = 804}, -- 25: Dave Death0004
		{x = 1204, y = 3216, width = 1204, height = 804, offsetX = 0, offsetY = 0, offsetWidth = 1204, offsetHeight = 804}, -- 26: Dave Death0005
		{x = 2408, y = 3216, width = 1204, height = 804, offsetX = 0, offsetY = 0, offsetWidth = 1204, offsetHeight = 804}, -- 27: Dave Death0006
		{x = 3612, y = 3216, width = 1204, height = 804, offsetX = 0, offsetY = 0, offsetWidth = 1204, offsetHeight = 804}, -- 28: Dave Death0007
		{x = 4816, y = 3216, width = 1204, height = 804, offsetX = 0, offsetY = 0, offsetWidth = 1204, offsetHeight = 804}, -- 29: Dave Death0008
		{x = 6020, y = 3216, width = 1204, height = 804, offsetX = 0, offsetY = 0, offsetWidth = 1204, offsetHeight = 804}, -- 30: Dave Death0009
		{x = 0, y = 4020, width = 1204, height = 804, offsetX = 0, offsetY = 0, offsetWidth = 1204, offsetHeight = 804}, -- 31: Dave Death0010
		{x = 1204, y = 4020, width = 1204, height = 804, offsetX = 0, offsetY = 0, offsetWidth = 1204, offsetHeight = 804}, -- 32: Dave Death0011
		{x = 2408, y = 4020, width = 1204, height = 804, offsetX = 0, offsetY = 0, offsetWidth = 1204, offsetHeight = 804}, -- 33: Dave Death0012
		{x = 3612, y = 4020, width = 1204, height = 804, offsetX = 0, offsetY = 0, offsetWidth = 1204, offsetHeight = 804}, -- 34: Dave Death0013
		{x = 4816, y = 4020, width = 1204, height = 804, offsetX = 0, offsetY = 0, offsetWidth = 1204, offsetHeight = 804}, -- 35: Dave Death0014
		{x = 6020, y = 4020, width = 1204, height = 804, offsetX = 0, offsetY = 0, offsetWidth = 1204, offsetHeight = 804}, -- 36: Dave Death0015
		{x = 0, y = 4824, width = 1204, height = 804, offsetX = 0, offsetY = 0, offsetWidth = 1204, offsetHeight = 804}, -- 37: Dave Death0016
		{x = 1204, y = 4824, width = 1204, height = 804, offsetX = 0, offsetY = 0, offsetWidth = 1204, offsetHeight = 804}, -- 38: Dave Death0017
		{x = 2408, y = 4824, width = 1204, height = 804, offsetX = 0, offsetY = 0, offsetWidth = 1204, offsetHeight = 804}, -- 39: Dave Death0018
		{x = 3612, y = 4824, width = 1204, height = 804, offsetX = 0, offsetY = 0, offsetWidth = 1204, offsetHeight = 804} -- 40: Dave Death0019
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["idle"] = {start = 1, stop = 8, speed = 12, offsetX = 0, offsetY = 0},
		["singLEFT"] = {start = 9, stop = 11, speed = 12, offsetX = 0, offsetY = 0},
		["singDOWN"] = {start = 12, stop = 14, speed = 12, offsetX = 0, offsetY = 0},
		["singUP"] = {start = 15, stop = 17, speed = 12, offsetX = 0, offsetY = 0},
		["singRIGHT"] = {start = 18, stop = 20, speed = 12, offsetX = 0, offsetY = 0},
		["fuckingSuicide"] = {start = 21, stop = 40, speed = 12, offsetX = 0, offsetY = 0},
	},
	"idle", -- set to default animation
	false,
	{
		sing_duration = 6.1,
		isCharacter = true
	}
)
