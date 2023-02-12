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

        starBG = graphics.newImage(graphics.imagePath("impmenu/starBG"))
		startFG = graphics.newImage(graphics.imagePath("impmenu/starFG"))

        images = {
            bigButtons = love.graphics.newImage(graphics.imagePath("impmenu/Big_Buttons_UI")),
            buttons = love.graphics.newImage(graphics.imagePath("impmenu/Buttons_UI")),
        }


        story = love.filesystem.load("sprites/impmenu/Big_Buttons_UI.lua")()
        freeplay = love.filesystem.load("sprites/impmenu/Big_Buttons_UI.lua")()
        credits = love.filesystem.load("sprites/impmenu/Big_Buttons_UI.lua")()
        gallery = love.filesystem.load("sprites/impmenu/Big_Buttons_UI.lua")()

        options = love.filesystem.load("sprites/impmenu/Buttons_UI.lua")()
        inntersloth = love.filesystem.load("sprites/impmenu/Buttons_UI.lua")()
        shop = love.filesystem.load("sprites/impmenu/Buttons_UI.lua")()

        greenSussy = love.filesystem.load("sprites/impmenu/greenmenu.lua")()
        redSussy = love.filesystem.load("sprites/impmenu/redmenu.lua")()

        

        --logo.scale.x, logo.scale.y = 0.6, 0.6

        greenSussy.sizeX, greenSussy.sizeY = 0.8, 0.8
        redSussy.sizeX, redSussy.sizeY = 0.8, 0.8

        greenSussy.x, greenSussy.y = -350, 300
        redSussy.x, redSussy.y = 350, 175

        story:animate("StoryMode", true)
        freeplay:animate("Freeplay", true)
        credits:animate("Credits", true)
        gallery:animate("Gallery", true)

        options:animate("Options", true)
        inntersloth:animate("Innersloth", true)
        shop:animate("Shop", true)

        story.y,freeplay.y,gallery.y,credits.y = 150, 150, 235, 235
        story.sizeX, story.sizeY = 0.5, 0.5
        freeplay.sizeX, freeplay.sizeY = 0.5, 0.5
        credits.sizeX, credits.sizeY = 0.5, 0.5
        gallery.sizeX, gallery.sizeY = 0.5, 0.5

        options.sizeX, options.sizeY = 0.5, 0.5
        inntersloth.sizeX, inntersloth.sizeY = 0.5, 0.5
        shop.sizeX, shop.sizeY = 0.5, 0.5

        story.x, freeplay.x, gallery.x, credits.x = -120, 120, -120, 120
       
        options.x, shop.x, inntersloth.x = -120, 0, 120
        options.y, shop.y, inntersloth.y = 310, 310, 310

        starBG.translation = {x = 0, y = 0}
		startFG.translation = {x = 0, y = 0}

        currentSelect = "StoryMode"

        function changeSelect()
            lastStoryAnim = story:getAnimName()
            lastFreeplayAnim = freeplay:getAnimName()
            lastCreditsAnim = credits:getAnimName()
            lastGalleryAnim = gallery:getAnimName()

            lastOptionsAnim = options:getAnimName()
            lastInnerslothAnim = inntersloth:getAnimName()
            lastShopAnim = shop:getAnimName()
            if currentSelect == "StoryMode" then
                story:animate("StoryMode Select", true)
                freeplay:animate("Freeplay", false)
                credits:animate("Credits", false)
                gallery:animate("Gallery", false)
    
                options:animate("Options", false)
                inntersloth:animate("Innersloth", false)
                shop:animate("Shop", false)
            elseif currentSelect == "Freeplay" then
                story:animate("StoryMode", false)
                freeplay:animate("Freeplay Select", true)
                credits:animate("Credits", false)
                gallery:animate("Gallery", false)
    
                options:animate("Options", false)
                inntersloth:animate("Innersloth", false)
                shop:animate("Shop", false)
            elseif currentSelect == "Credits" then
                story:animate("StoryMode", false)
                freeplay:animate("Freeplay", false)
                credits:animate("Credits Select", true)
                gallery:animate("Gallery", false)
    
                options:animate("Options", false)
                inntersloth:animate("Innersloth", false)
                shop:animate("Shop", false)
            elseif currentSelect == "Gallery" then
                story:animate("StoryMode", false)
                freeplay:animate("Freeplay", false)
                credits:animate("Credits", false)
                gallery:animate("Gallery Select", true)
    
                options:animate("Options", false)
                inntersloth:animate("Innersloth", false)
                shop:animate("Shop", false)
            elseif currentSelect == "Options" then
                story:animate("StoryMode", false)
                freeplay:animate("Freeplay", false)
                credits:animate("Credits", false)
                gallery:animate("Gallery", false)
    
                options:animate("Options Select", true)
                inntersloth:animate("Innersloth", false)
                shop:animate("Shop", false)
            elseif currentSelect == "Innersloth" then
                story:animate("StoryMode", false)
                freeplay:animate("Freeplay", false)
                credits:animate("Credits", false)
                gallery:animate("Gallery", false)
    
                options:animate("Options", false)
                inntersloth:animate("Innersloth Select", true)
                shop:animate("Shop", false)
            elseif currentSelect == "Shop" then
                story:animate("StoryMode", false)
                freeplay:animate("Freeplay", false)
                credits:animate("Credits", false)
                gallery:animate("Gallery", false)
    
                options:animate("Options", false)
                inntersloth:animate("Innersloth", false)
                shop:animate("Shop Select", true)
            end

            if lastStoryAnim ~= story:getAnimName() or lastFreeplayAnim ~= freeplay:getAnimName() or lastCreditsAnim ~= credits:getAnimName() or lastGalleryAnim ~= gallery:getAnimName() or lastOptionsAnim ~= options:getAnimName() or lastInnerslothAnim ~= inntersloth:getAnimName() or lastShopAnim ~= shop:getAnimName() then
                audio.playSound(selectSound)
            end
        end

        changeSelect()

        function confirmFunc()
            audio.playSound(confirmSound)
            
            if currentSelect ~= "Innersloth" and currentSelect ~= "Gallery" then
                redSussy:animate("select", false)
                greenSussy:animate("select", false)
                Timer.after(0.25, function()
                    Timer.tween(0.85, redSussy, {y = 600}, "out-quad")
                    Timer.tween(0.85, greenSussy, {y = 600}, "out-quad")
                end)
                -- TODO: Make a fake website for nintendo switch (It can't open links)
                graphics.fadeOut(1, function()
                    status.setLoading(true)
                    if currentSelect == "StoryMode" then
                        Gamestate.switch(impWeekMenu)
                    elseif currentSelect == "Freeplay" then
                        Gamestate.switch(menuFreeplay)
                    elseif currentSelect == "Credits" then
                        Gamestate.switch(menuCredits)
                    elseif currentSelect == "Gallery" then
                        love.system.openURL("https://www.vsimpostor.com")
                    elseif currentSelect == "Options" then
                        Gamestate.switch(menuSettings)
                    elseif currentSelect == "Innersloth" then
                        love.system.openURL("https://www.innersloth.com")
                    elseif currentSelect == "Shop" then
                        Gamestate.switch(shop)
                    end
    
                    status.setLoading(false)
                end)
            elseif currentSelect == "Gallery" then
                love.system.openURL("https://www.vsimpostor.com")
            elseif currentSelect == "Innersloth" then
                love.system.openURL("https://www.innersloth.com")
            end
            
            
        end

		switchMenu(1)

		graphics.setFade(0)
		graphics.fadeIn(0.5)

	end,

	update = function(self, dt)
        gallery:update(dt)
        story:update(dt)
        freeplay:update(dt)
        credits:update(dt)

        options:update(dt)
        inntersloth:update(dt)
        shop:update(dt)

        redSussy:update(dt)
        greenSussy:update(dt)

        if not graphics.isFading() then
            if currentSelect == "StoryMode" then
                if input:pressed("left") then 
                    currentSelect = "Freeplay"
                elseif input:pressed("right") then
                    currentSelect = "Freeplay"
                elseif input:pressed("up") then
                    currentSelect = "Options"
                elseif input:pressed("down") then
                    currentSelect = "Gallery"
                end
            elseif currentSelect == "Freeplay" then
                if input:pressed("left") then 
                    currentSelect = "StoryMode"
                elseif input:pressed("right") then
                    currentSelect = "StoryMode"
                elseif input:pressed("up") then
                    currentSelect = "Credits"
                elseif input:pressed("down") then
                    currentSelect = "Credits"
                end
            elseif currentSelect == "Credits" then
                if input:pressed("left") then 
                    currentSelect = "Gallery"
                elseif input:pressed("right") then
                    currentSelect = "Gallery"
                elseif input:pressed("up") then
                    currentSelect = "Freeplay"
                elseif input:pressed("down") then
                    currentSelect = "Innersloth"
                end
            elseif currentSelect == "Gallery" then
                if input:pressed("left") then 
                    currentSelect = "Credits"
                elseif input:pressed("right") then
                    currentSelect = "Credits"
                elseif input:pressed("up") then
                    currentSelect = "StoryMode"
                elseif input:pressed("down") then
                    currentSelect = "Options"
                end
            elseif currentSelect == "Options" then
                if input:pressed("left") then 
                    currentSelect = "Innersloth"
                elseif input:pressed("right") then
                    currentSelect = "Shop"
                elseif input:pressed("up") then
                    currentSelect = "Gallery"
                elseif input:pressed("down") then
                    currentSelect = "StoryMode"
                end
            elseif currentSelect == "Innersloth" then
                if input:pressed("left") then 
                    currentSelect = "Shop"
                elseif input:pressed("right") then
                    currentSelect = "Shop"
                elseif input:pressed("up") then
                    currentSelect = "Credits"
                elseif input:pressed("down") then
                    currentSelect = "Freeplay"
                end
            elseif currentSelect == "Shop" then
                if input:pressed("left") then 
                    currentSelect = "Options"
                elseif input:pressed("right") then
                    currentSelect = "Innersloth"
                elseif input:pressed("up") then
                    currentSelect = "Gallery"
                elseif input:pressed("down") then
                    currentSelect = "StoryMode"
                end
            end

            if not graphics.isFading() then
                if input:pressed("confirm") then
                    confirmFunc()
                end

                if input:pressed("left") or input:pressed("right") or input:pressed("up") or input:pressed("down") then
                    changeSelect()
                end
            end
        end

        starBG.translation.x = starBG.translation.x - 12.5 * dt
		if starBG.translation.x < -1102 then
			starBG.translation.x = 0
		end

		startFG.translation.x = startFG.translation.x - 25 * dt
		if startFG.translation.x < -1216 then
			startFG.translation.x = 0
        end
		starBG.translation.x = starBG.translation.x - 12.5 * dt
		if starBG.translation.x < -1102 then
			starBG.translation.x = 0
		end

		startFG.translation.x = startFG.translation.x - 25 * dt
		if startFG.translation.x < -1216 then
			startFG.translation.x = 0
		end

        mx, my = love.mouse.getPosition()

        if not graphics.isFading() then
            if push.toGameX(mx) >= 410 and push.toGameX(mx) <= 630 and push.toGameY(my) >= 465 and push.toGameY(my) <= 555 then
                currentSelect = "StoryMode"
                changeSelect()
            elseif push.toGameX(mx) >= 650 and push.toGameX(mx) <= 870 and push.toGameY(my) >= 465 and push.toGameY(my) <= 555 then
                currentSelect = "Freeplay"
                changeSelect()
            elseif push.toGameX(mx) >= 410 and push.toGameX(mx) <= 630 and push.toGameY(my) >= 565 and push.toGameY(my) <= 625 then
                currentSelect = "Gallery"
                changeSelect()
            elseif push.toGameX(mx) >= 650 and push.toGameX(mx) <= 870 and push.toGameY(my) >= 565 and push.toGameY(my) <= 625 then
                currentSelect = "Credits"
                changeSelect()
            elseif push.toGameX(mx) >= 480 and push.toGameX(mx) <= 560 and push.toGameY(my) >= 635 and push.toGameY(my) <= 710 then
                currentSelect = "Options"
                changeSelect()
            elseif push.toGameX(mx) >= 600 and push.toGameX(mx) <= 680 and push.toGameY(my) >= 635 and push.toGameY(my) <= 710 then
                currentSelect = "Shop"
                changeSelect()
            elseif push.toGameX(mx) >= 720 and push.toGameX(mx) <= 800 and push.toGameY(my) >= 635 and push.toGameY(my) <= 710 then
                currentSelect = "Innersloth"
                changeSelect()
            end
        end
	end,

    mousepressed = function(self, x, y, button)
        if button == 1 and not graphics.isFading() then
            local mx, my = x, y

            if push.toGameX(mx) >= 410 and push.toGameX(mx) <= 630 and push.toGameY(my) >= 465 and push.toGameY(my) <= 555 then
                confirmFunc()
            elseif push.toGameX(mx) >= 650 and push.toGameX(mx) <= 870 and push.toGameY(my) >= 465 and push.toGameY(my) <= 555 then
                confirmFunc()
            elseif push.toGameX(mx) >= 410 and push.toGameX(mx) <= 630 and push.toGameY(my) >= 565 and push.toGameY(my) <= 625 then
                confirmFunc()
            elseif push.toGameX(mx) >= 650 and push.toGameX(mx) <= 870 and push.toGameY(my) >= 565 and push.toGameY(my) <= 625 then
                confirmFunc()
            elseif push.toGameX(mx) >= 480 and push.toGameX(mx) <= 560 and push.toGameY(my) >= 635 and push.toGameY(my) <= 710 then
                confirmFunc()
            elseif push.toGameX(mx) >= 600 and push.toGameX(mx) <= 680 and push.toGameY(my) >= 635 and push.toGameY(my) <= 710 then
                confirmFunc()
            elseif push.toGameX(mx) >= 720 and push.toGameX(mx) <= 800 and push.toGameY(my) >= 635 and push.toGameY(my) <= 710 then
                confirmFunc()
            end
        end
    end,

	draw = function(self)
		love.graphics.push()
            love.graphics.setFont(uiFont)
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)
            love.graphics.push()

				love.graphics.translate(starBG.translation.x, starBG.translation.y)
				for i = 1, 3 do
					starBG.x = (i - 1) * 1102
					starBG:draw()
				end
			love.graphics.pop()
			love.graphics.push()

				love.graphics.translate(startFG.translation.x, startFG.translation.y)
				for i = 1, 3 do
					startFG.x = (i - 1) * 1216
					startFG:draw()
				end
			love.graphics.pop()
            greenSussy:draw()
            redSussy:draw()
            love.graphics.push()
                graphics.setColor(0,0,0)
                love.graphics.print("Vanilla Engine " .. "???" .. "\nBuilt on: Funkin Rewritten v1.1.0 Beta 2", -635, -360)
                graphics.setColor(1,1,1)
                story:draw()
                freeplay:draw()
                gallery:draw()
                credits:draw()

                options:draw()
                inntersloth:draw()
                shop:draw()

                --logo:draw()
            love.graphics.pop()
            love.graphics.setFont(font)
		love.graphics.pop()
        
	end,

	leave = function(self)
        story = nil
        freeplay = nil
        credits = nil
        gallery = nil

        options = nil
        inntersloth = nil
        shop = nil

        starBG = nil
		startFG = nil

        redSussy = nil
        greenSussy = nil

        images = nil
        
		Timer.clear()
	end
}