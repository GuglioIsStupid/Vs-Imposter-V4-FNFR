return graphics.newSprite(
	love.graphics.newImage(graphics.imagePath("henry/henry/Sock_Puppet_Option")), -- Do not add the .png extension
	{
		{x = 13, y = 13, width = 449, height = 436, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: Sock Puppet0000
		{x = 475, y = 13, width = 453, height = 437, offsetX = 0, offsetY = -17, offsetWidth = 464, offsetHeight = 454}, -- 2: Sock Puppet Select0000
		{x = 941, y = 13, width = 456, height = 442, offsetX = 0, offsetY = -12, offsetWidth = 464, offsetHeight = 454}, -- 3: Sock Puppet Select0001
		{x = 1410, y = 13, width = 459, height = 447, offsetX = 0, offsetY = -7, offsetWidth = 464, offsetHeight = 454}, -- 4: Sock Puppet Select0002
		{x = 13, y = 473, width = 461, height = 450, offsetX = 0, offsetY = -4, offsetWidth = 464, offsetHeight = 454}, -- 5: Sock Puppet Select0003
		{x = 487, y = 473, width = 463, height = 452, offsetX = 0, offsetY = -2, offsetWidth = 464, offsetHeight = 454}, -- 6: Sock Puppet Select0004
		{x = 963, y = 473, width = 463, height = 453, offsetX = 0, offsetY = -1, offsetWidth = 464, offsetHeight = 454}, -- 7: Sock Puppet Select0005
		{x = 1439, y = 473, width = 464, height = 454, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 8: Sock Puppet Select0006
		{x = 13, y = 940, width = 464, height = 454, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 9: Sock Puppet Select0007
		{x = 490, y = 940, width = 464, height = 454, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 10: Sock Puppet Select0008
		{x = 490, y = 940, width = 464, height = 454, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 11: Sock Puppet Select0009
		{x = 490, y = 940, width = 464, height = 454, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 12: Sock Puppet Select0010
		{x = 490, y = 940, width = 464, height = 454, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 13: Sock Puppet Select0011
		{x = 490, y = 940, width = 464, height = 454, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 14: Sock Puppet Select0012
		{x = 490, y = 940, width = 464, height = 454, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 15: Sock Puppet Select0013
		{x = 490, y = 940, width = 464, height = 454, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 16: Sock Puppet Select0014
		{x = 490, y = 940, width = 464, height = 454, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 17: Sock Puppet Select0015
		{x = 490, y = 940, width = 464, height = 454, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 18: Sock Puppet Select0016
		{x = 490, y = 940, width = 464, height = 454, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 19: Sock Puppet Select0017
		{x = 490, y = 940, width = 464, height = 454, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 20: Sock Puppet Select0018
		{x = 490, y = 940, width = 464, height = 454, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 21: Sock Puppet Select0019
		{x = 490, y = 940, width = 464, height = 454, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 22: Sock Puppet Select0020
		{x = 490, y = 940, width = 464, height = 454, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 23: Sock Puppet Select0021
		{x = 490, y = 940, width = 464, height = 454, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0} -- 24: Sock Puppet Select0022
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["notSelect"] = {start = 1, stop = 1, speed = 24, offsetX = 0, offsetY = 0},
		["select"] = {start = 2, stop = 24, speed = 24, offsetX = 0, offsetY = 0},
	},
	"notSelect", -- set to default animation
	false -- If the sprite repeats
)
