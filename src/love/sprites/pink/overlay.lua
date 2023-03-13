return graphics.newSprite(
	graphics.imagePath("pink/overlay"), -- Do not add the .png extension
	{
		{x = 0, y = 0, width = 2053, height = 1799, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: Reactor Overlay Top0000
		{x = 0, y = 0, width = 2053, height = 1799, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 2: Reactor Overlay Top0001
		{x = 2058, y = 0, width = 1982, height = 1740, offsetX = -35, offsetY = -20, offsetWidth = 2053, offsetHeight = 1799}, -- 3: Reactor Overlay Top0002
		{x = 2058, y = 0, width = 1982, height = 1740, offsetX = -35, offsetY = -20, offsetWidth = 2053, offsetHeight = 1799}, -- 4: Reactor Overlay Top0003
		{x = 4045, y = 0, width = 1949, height = 1718, offsetX = -51, offsetY = -28, offsetWidth = 2053, offsetHeight = 1799}, -- 5: Reactor Overlay Top0004
		{x = 4045, y = 0, width = 1949, height = 1718, offsetX = -51, offsetY = -28, offsetWidth = 2053, offsetHeight = 1799}, -- 6: Reactor Overlay Top0005
		{x = 5999, y = 0, width = 1916, height = 1686, offsetX = -67, offsetY = -39, offsetWidth = 2053, offsetHeight = 1799}, -- 7: Reactor Overlay Top0006
		{x = 5999, y = 0, width = 1916, height = 1686, offsetX = -67, offsetY = -39, offsetWidth = 2053, offsetHeight = 1799}, -- 8: Reactor Overlay Top0007
		{x = 0, y = 1804, width = 1916, height = 1686, offsetX = -67, offsetY = -39, offsetWidth = 2053, offsetHeight = 1799}, -- 9: Reactor Overlay Top0008
		{x = 0, y = 1804, width = 1916, height = 1686, offsetX = -67, offsetY = -39, offsetWidth = 2053, offsetHeight = 1799}, -- 10: Reactor Overlay Top0009
		{x = 0, y = 1804, width = 1916, height = 1686, offsetX = -67, offsetY = -39, offsetWidth = 2053, offsetHeight = 1799}, -- 11: Reactor Overlay Top0010
		{x = 0, y = 1804, width = 1916, height = 1686, offsetX = -67, offsetY = -39, offsetWidth = 2053, offsetHeight = 1799}, -- 12: Reactor Overlay Top0011
		{x = 0, y = 1804, width = 1916, height = 1686, offsetX = -67, offsetY = -39, offsetWidth = 2053, offsetHeight = 1799}, -- 13: Reactor Overlay Top0012
		{x = 0, y = 1804, width = 1916, height = 1686, offsetX = -67, offsetY = -39, offsetWidth = 2053, offsetHeight = 1799}, -- 14: Reactor Overlay Top0013
		{x = 0, y = 1804, width = 1916, height = 1686, offsetX = -67, offsetY = -39, offsetWidth = 2053, offsetHeight = 1799} -- 15: Reactor Overlay Top0014
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
