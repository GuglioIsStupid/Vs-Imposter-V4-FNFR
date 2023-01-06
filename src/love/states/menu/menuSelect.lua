local leftFunc, rightFunc, confirmFunc, backFunc, drawFunc

local menuState

local menuButton

local selectSound = love.audio.newSource("sounds/menu/select.ogg", "static")
local confirmSound = love.audio.newSource("sounds/menu/confirm.ogg", "static")

local function switchMenu(menu)
	menuState = 1
end

return {
	enter = function(self, previous)
        
		menuButton = 1
		songNum = 0
        selectBG = graphics.newImage(love.graphics.newImage(graphics.imagePath("menu/selectBG")))
        selectBGOverlay = graphics.newImage(love.graphics.newImage(graphics.imagePath("menu/selectBGOverlay")))

        options = love.filesystem.load("sprites/menu/menuButtons.lua")()
        story = love.filesystem.load("sprites/menu/menuButtons.lua")()
        freeplay = love.filesystem.load("sprites/menu/menuButtons.lua")()
        credits = love.filesystem.load("sprites/menu/credits.lua")()
        story:animate("story hover", true)
        freeplay:animate("freeplay", true)
        options:animate("options", true)
        credits:animate("credits", true)
        story.y,freeplay.y,options.y,credits.y = -200, -50, 100, 250
        story.sizeX, story.sizeY = 0.75, 0.75
        freeplay.sizeX, freeplay.sizeY = 0.75, 0.75
        options.sizeX, options.sizeY = 0.75, 0.75
        credits.sizeX, credits.sizeY = 0.75, 0.75

        story.x, freeplay.x, options.x, credits.x = -295, -320, -345, -370
        --Timer.tween(1, story, {y = -200}, "out-expo")
        --Timer.tween(1, freeplay, {y = -50}, "out-expo")
        --Timer.tween(1, options, {y = 100}, "out-expo")
        --Timer.tween(1, credits, {y = 250}, "out-expo")
        --Timer.tween(0.88, cam, {y = 35, sizeX = 1.1, sizeY = 1.1}, "out-quad")

        function loopbgfloat()
            Timer.tween(
                3,
                menuDetails.selectBG,
                {
                    y = menuDetails.selectBG.y + 6
                },
                "in-out-quad",
                function()
                    Timer.tween(
                        3,
                        menuDetails.selectBG,
                        {
                            y = menuDetails.selectBG.y - 6
                        },
                        "in-out-quad",
                        function()
                            loopbgfloat()
                        end
                    )
                end
            )
        end
        loopbgfloat()

        function changeSelect()
            if menuButton == 1 then
                story:animate("story hover", true)
                freeplay:animate("freeplay", true)
                options:animate("options", true)
                credits:animate("credits", true)

            elseif menuButton == 2 then
                story:animate("story", true)
                freeplay:animate("freeplay hover", true)
                options:animate("options", true)
                credits:animate("credits", true)

            elseif menuButton == 3 then
                story:animate("story", true)
                freeplay:animate("freeplay", true)
                options:animate("options hover", true)
                credits:animate("credits", true)

            elseif menuButton == 4 then
                story:animate("story", true)
                freeplay:animate("freeplay", true)
                options:animate("options", true)
                credits:animate("credits hover", true)
            end
        end

        function confirmFunc()
            if menuButton == 1 then
                status.setLoading(true)
                graphics.fadeOut(
                    0.3,
                    function()
                        Gamestate.switch(menuWeek)
                        status.setLoading(false)
                    end
                )
                Timer.tween(0.9, story, {y = 0}, "out-expo")
                Timer.tween(0.9, freeplay, {y = 700}, "out-expo")
                Timer.tween(0.9, options, {y = 700}, "out-expo")
                Timer.tween(0.9, credits, {y = 700}, "out-expo")
            elseif menuButton == 2 then
                status.setLoading(true)
                graphics.fadeOut(
                    0.3,
                    function()
                        if mods.weekMeta[1] then
                            Gamestate.switch(menuChooseFreeplay)
                        else
                            Gamestate.switch(menuFreeplay)
                        end
                        status.setLoading(false)
                    end
                )
                Timer.tween(0.9, freeplay, {y = 0}, "out-expo")
                Timer.tween(0.9, story, {y = -700}, "out-expo")
                Timer.tween(0.9, options, {y = 700}, "out-expo")
                Timer.tween(0.9, credits, {y = 700}, "out-expo")
            elseif menuButton == 3 then
                status.setLoading(true)
                graphics.fadeOut(
                    0.3,
                    function()
                        Gamestate.push(menuSettings)
                        status.setLoading(false)
                    end
                )
                Timer.tween(0.9, freeplay, {y = -700}, "out-expo")
                Timer.tween(0.9, options, {y = 0}, "out-expo")
                Timer.tween(0.9, story, {y = -700}, "out-expo")
                Timer.tween(0.9, credits, {y = 700}, "out-expo")
            elseif menuButton == 4 then
                status.setLoading(true)
                graphics.fadeOut(
                    0.3,
                    function()
                        Gamestate.switch(menuCredits)
                        status.setLoading(false)
                    end
                )
                Timer.tween(0.9, credits, {y = 0}, "out-expo")
                Timer.tween(0.9, options, {y = -700}, "out-expo")
                Timer.tween(0.9, freeplay, {y = -700}, "out-expo")
                Timer.tween(0.9, story, {y = -700}, "out-expo")
            end
            Timer.tween(1.1, cam, {sizeX = 4, sizeY = 4}, "linear")
        end

		switchMenu(1)

		graphics.setFade(0)
		graphics.fadeIn(0.5)

        updatePres("Choosing a mode", "In the Main Menu")

	end,

	update = function(self, dt)
        options:update(dt)
        story:update(dt)
        freeplay:update(dt)
        credits:update(dt)

		if not graphics.isFading() then
			if input:pressed("up") then
				audio.playSound(selectSound)

                menuButton = menuButton ~= 1 and menuButton - 1 or 4

                changeSelect()

			elseif input:pressed("down") then
				audio.playSound(selectSound)

                menuButton = menuButton ~= 4 and menuButton + 1 or 1

                changeSelect()

			elseif input:pressed("confirm") then
				audio.playSound(confirmSound)

				confirmFunc()
			elseif input:pressed("back") then
				audio.playSound(selectSound)

				Gamestate.switch(menu)
			end
		end
	end,

	draw = function(self)
		love.graphics.push()
            love.graphics.setFont(uiFont)
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)
            love.graphics.push()
                love.graphics.translate(menuDetails.selectBG.x, menuDetails.selectBG.y)
                selectBG:draw()
            love.graphics.pop()
            love.graphics.push()
                love.graphics.translate(menuDetails.selectBGOverlay.x, menuDetails.selectBGOverlay.y)
                selectBGOverlay:draw()
            love.graphics.pop()
            love.graphics.push()
                graphics.setColor(0,0,0)
                love.graphics.translate(menuDetails.selectUIElements.x, menuDetails.selectUIElements.y)
                love.graphics.print("Vanilla Engine " .. __VERSION__ .. "\nBuilt on: Funkin Rewritten v1.1.0 Beta 2", -635, -360)
                graphics.setColor(1,1,1)
                story:draw()
                freeplay:draw()
                options:draw()
                credits:draw()
            love.graphics.pop()
            love.graphics.setFont(font)
		love.graphics.pop()
        
	end,

	leave = function(self)
        titleBG = nil
        story = nil
        freeplay = nil
        options = nil
        credits = nil
		Timer.clear()
	end
}