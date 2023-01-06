-- Coming in a later update
local arrows, sprites, doBindSet, choice
local inputList = {
    "gameLeft",
    "gameDown",
    "gameUp",
    "gameRight"
}
local curInput = inputList[i]
return {
    enter = function(self)
        images = {
            notes = love.graphics.newImage(graphics.imagePath(noteskins[settings.noteSkins])),
        } 
        sprites = {
            leftArrow = love.filesystem.load("sprites/notes/" .. noteskins[settings.noteSkins] .. "/left-arrow.lua"),
		    downArrow = love.filesystem.load("sprites/notes/" .. noteskins[settings.noteSkins] .. "/down-arrow.lua"),
		    upArrow = love.filesystem.load("sprites/notes/" .. noteskins[settings.noteSkins] .. "/up-arrow.lua"),
		    rightArrow = love.filesystem.load("sprites/notes/" .. noteskins[settings.noteSkins] .. "/right-arrow.lua")
        }
        arrows = {
            sprites.leftArrow(),
			sprites.downArrow(),
			sprites.upArrow(),
			sprites.rightArrow()
        }
        for i = 1, 4 do
            arrows[i].x = -165*2 + 165 * i-1 - 50
        end
        doBindSet = false
        choice = 0
        graphics.setFade(0)
        graphics.fadeIn(0.5)
    end,
    update = function(self, dt)
        for i = 1, 4 do
            arrows[i]:update(dt)
            if not doBindSet then
                if input:pressed("left") then
                    arrows[1]:animate("confirm", false)
                    choice = 1
                elseif not input:down("left") then
                    arrows[1]:animate("off", false)
                end
                if input:pressed("down") then
                    arrows[2]:animate("confirm", false)
                    choice = 2
                elseif not input:down("down") then
                    arrows[2]:animate("off", false)
                end
                if input:pressed("up") then
                    arrows[3]:animate("confirm", false)
                    choice = 3
                elseif not input:down("up") then
                    arrows[3]:animate("off", false)
                end
                if input:pressed("right") then
                    arrows[4]:animate("confirm", false)
                    choice = 4
                elseif not input:down("right") then
                    arrows[4]:animate("off", false)
                end
            end
        end
    end,
    keypressed = function(self, key)
        if key == "escape" then
            graphics.fadeOut(0.3,
            function()
                Gamestate.switch(menuSettings)
            end)
        elseif key == "return" then
            doBindSet = true
        end
    end,
    textinput = function(self, text)
        if doBindSet then
            if choice == 1 then
                customBindLeft = text
            elseif choice == 2 then
                customBindDown = text
            elseif choice == 3 then
                customBindUp = text
            elseif choice == 4 then
                customBindRight = text
            end
            doBindSet = false
        end
    end,
    draw = function(self)
        love.graphics.translate(lovesize.getWidth() / 2, lovesize.getHeight() / 2)
		love.graphics.scale(0.7, 0.7)
        for i = 1, 4 do 
            graphics.setColor(0.40, 0.40, 0.40)
            if i == choice then
                graphics.setColor(1,1,1)
            end
            arrows[i]:draw()
            graphics.setColor(1,1,1)
        end
        love.graphics.print(customBindLeft, -165*2 + 100, 80)
        love.graphics.print(customBindDown, -165 + 100, 80)
        love.graphics.print(customBindUp, 0 + 100, 80)
        love.graphics.print(customBindRight, 165 + 100, 80)
    end,
    leave = function(self)
        saveSettings()
        love.window.showMessageBox("Keybinds Saved", "The game will now restart to apply these keybinds", "info", true)
        love.event.quit( "restart" )
    end
}