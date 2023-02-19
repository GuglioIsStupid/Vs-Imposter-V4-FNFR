return Sprite (
	sheets["oldpostor"],
	{
		{x = 0, y = 0, width = 860, height = 400, offsetX = 300, offsetY = -330, offsetWidth = 488, offsetHeight = 1000}, -- 1: Impostor Backwards0000
		{x = 860, y = 0, width = 853, height = 400, offsetX = 287, offsetY = -330, offsetWidth = 488, offsetHeight = 1000}, -- 2: Impostor Backwards0001
		{x = 1713, y = 0, width = 848, height = 362, offsetX = 300, offsetY = -330, offsetWidth = 736, offsetHeight = 1292}, -- 3: Impostor Down0000
		{x = 2561, y = 0, width = 831, height = 341, offsetX = 274, offsetY = -351, offsetWidth = 736, offsetHeight = 1292}, -- 4: Impostor Down0001
		{x = 3392, y = 0, width = 664, height = 400, offsetX = 197, offsetY = -330, offsetWidth = 459, offsetHeight = 476}, -- 5: Impostor Forward0000
		{x = 0, y = 400, width = 645, height = 400, offsetX = 200, offsetY = -330, offsetWidth = 459, offsetHeight = 476}, -- 6: Impostor Forward0001
		{x = 645, y = 400, width = 757, height = 446, offsetX = 214, offsetY = -331, offsetWidth = 453, offsetHeight = 475}, -- 7: Impostor Idle0000
		{x = 1402, y = 400, width = 804, height = 434, offsetX = 227, offsetY = -337, offsetWidth = 453, offsetHeight = 475}, -- 8: Impostor Idle0001
		{x = 2206, y = 400, width = 877, height = 378, offsetX = 284, offsetY = -361, offsetWidth = 453, offsetHeight = 475}, -- 9: Impostor Idle0002
		{x = 3083, y = 400, width = 909, height = 367, offsetX = 300, offsetY = -372, offsetWidth = 453, offsetHeight = 475}, -- 10: Impostor Idle0003
		{x = 0, y = 846, width = 746, height = 415, offsetX = 192, offsetY = -347, offsetWidth = 453, offsetHeight = 475}, -- 11: Impostor Idle0004
		{x = 746, y = 846, width = 739, height = 452, offsetX = 204, offsetY = -330, offsetWidth = 453, offsetHeight = 475}, -- 12: Impostor Idle0005
		{x = 1485, y = 846, width = 763, height = 446, offsetX = 220, offsetY = -331, offsetWidth = 453, offsetHeight = 475}, -- 13: Impostor Idle0006
		{x = 2248, y = 846, width = 640, height = 468, offsetX = 100, offsetY = -330, offsetWidth = 433, offsetHeight = 1000}, -- 14: Impostor Up0000
		{x = 2888, y = 846, width = 638, height = 443, offsetX = 93, offsetY = -355, offsetWidth = 433, offsetHeight = 1000} -- 15: Impostor Up0001
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["idle"] = {start = 7, stop = 13, speed = 12, offsetX = 0, offsetY = 0},
		["up"] = {start = 14, stop = 15, speed = 12, offsetX = 26, offsetY = -400},
		["down"] = {start = 3, stop = 4, speed = 12, offsetX = -97, offsetY = -440},
		["right"] = {start = 5, stop = 6, speed = 12, offsetX = -3, offsetY = -33},
		["left"] = {start = 1, stop = 2, speed = 12, offsetX = -12, offsetY = -263}
	},
	"idle", -- set to default animation
	false -- If the sprite repeats
)
