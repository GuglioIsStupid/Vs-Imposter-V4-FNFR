return graphics.newSprite(
    love.graphics.newImage(graphics.imagePath("menu/menu_credits")),
    	-- Automatically generated from menu_credits.xml
	{
		{x = 4, y = 4, width = 474, height = 126, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 1: credits basic0000
		{x = 4, y = 4, width = 474, height = 126, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 2: credits basic0001
		{x = 4, y = 4, width = 474, height = 126, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 3: credits basic0002
		{x = 478, y = 4, width = 474, height = 126, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 4: credits basic0003
		{x = 478, y = 4, width = 474, height = 126, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 5: credits basic0004
		{x = 478, y = 4, width = 474, height = 126, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 6: credits basic0005
		{x = 4, y = 130, width = 474, height = 126, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 7: credits basic0006
		{x = 4, y = 130, width = 474, height = 126, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 8: credits basic0007
		{x = 4, y = 130, width = 474, height = 126, offsetX = 0, offsetY = 0, offsetWidth = 0, offsetHeight = 0}, -- 9: credits basic0008
		{x = 4, y = 256, width = 650, height = 172, offsetX = 0, offsetY = 0, offsetWidth = 652, offsetHeight = 172}, -- 10: credits white0000
		{x = 4, y = 428, width = 643, height = 171, offsetX = 0, offsetY = 0, offsetWidth = 652, offsetHeight = 172}, -- 11: credits white0001
		{x = 4, y = 599, width = 651, height = 171, offsetX = -1, offsetY = 0, offsetWidth = 652, offsetHeight = 172} -- 12: credits white0002
	},
    {
        ["credits"] = {start = 1, stop = 9, speed = 24, offsetX = 0, offsetY = 0},
        ["credits hover"] = {start = 10, stop = 12, speed = 24, offsetX = 0, offsetY = 0}
    },
    "credits",
    true
)