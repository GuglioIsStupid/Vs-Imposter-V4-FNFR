return graphics.newSprite(
	graphics.imagePath("polus/boppers_meltdown"), -- Do not add the .png extension
	{
		{x = 13, y = 13, width = 2967, height = 885, offsetX = 0, offsetY = -28, offsetWidth = 2967, offsetHeight = 913}, -- 1: BoppersMeltdown0000
		{x = 2993, y = 13, width = 2967, height = 885, offsetX = 0, offsetY = -28, offsetWidth = 2967, offsetHeight = 913}, -- 2: BoppersMeltdown0001
		{x = 13, y = 911, width = 2963, height = 882, offsetX = -3, offsetY = -28, offsetWidth = 2967, offsetHeight = 913}, -- 3: BoppersMeltdown0002
		{x = 2989, y = 911, width = 2963, height = 882, offsetX = -3, offsetY = -28, offsetWidth = 2967, offsetHeight = 913}, -- 4: BoppersMeltdown0003
		{x = 13, y = 1806, width = 2958, height = 873, offsetX = -5, offsetY = -16, offsetWidth = 2967, offsetHeight = 913}, -- 5: BoppersMeltdown0004
		{x = 2984, y = 1806, width = 2958, height = 873, offsetX = -5, offsetY = -16, offsetWidth = 2967, offsetHeight = 913}, -- 6: BoppersMeltdown0005
		{x = 13, y = 2692, width = 2951, height = 884, offsetX = -9, offsetY = -1, offsetWidth = 2967, offsetHeight = 913}, -- 7: BoppersMeltdown0006
		{x = 2977, y = 2692, width = 2951, height = 884, offsetX = -9, offsetY = -1, offsetWidth = 2967, offsetHeight = 913}, -- 8: BoppersMeltdown0007
		{x = 13, y = 3589, width = 2954, height = 885, offsetX = -8, offsetY = 0, offsetWidth = 2967, offsetHeight = 913}, -- 9: BoppersMeltdown0008
		{x = 2980, y = 3589, width = 2954, height = 885, offsetX = -8, offsetY = 0, offsetWidth = 2967, offsetHeight = 913}, -- 10: BoppersMeltdown0009
		{x = 13, y = 4487, width = 2954, height = 885, offsetX = -8, offsetY = 0, offsetWidth = 2967, offsetHeight = 913}, -- 11: BoppersMeltdown0010
		{x = 2980, y = 4487, width = 2954, height = 885, offsetX = -8, offsetY = 0, offsetWidth = 2967, offsetHeight = 913}, -- 12: BoppersMeltdown0011
		{x = 13, y = 5385, width = 2954, height = 885, offsetX = -8, offsetY = 0, offsetWidth = 2967, offsetHeight = 913}, -- 13: BoppersMeltdown0012
		{x = 2980, y = 5385, width = 2954, height = 885, offsetX = -8, offsetY = 0, offsetWidth = 2967, offsetHeight = 913}, -- 14: BoppersMeltdown0013
		{x = 13, y = 6283, width = 2954, height = 885, offsetX = -8, offsetY = 0, offsetWidth = 2967, offsetHeight = 913} -- 15: BoppersMeltdown0014
	},
	{
		--To get the animations, look at the number and the name of the frame
		--Start is the first frame, stop is the last frame, speed is the speed of the animation, offsetX and offsetY are the offset of the animation
		--Get the offset by using the ingame offset editor and pressing 7
		["anim"] = {start = 1, stop = 15, speed = 24, offsetX = 0, offsetY = 0},
	},
	"anim", -- set to default animation
	true -- If the sprite repeats
)
