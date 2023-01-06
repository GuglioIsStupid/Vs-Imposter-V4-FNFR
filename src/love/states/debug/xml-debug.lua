return {
    enter = function(self)
        graphics.setFade(0)
		graphics.fadeIn(0.5)
        for i = 1, #Character.list do
            print(Character.list[i][1])
        end
        choice = 1
        menuThing = 0
        spriteAnims = {}
        love.keyboard.setKeyRepeat(true)
    end,

    update = function(self, dt)
        if menuThing == 1 then
            char:update(dt)
            charGhost:update(dt)
        end

        if input:pressed("back") then
			graphics.fadeOut(0.5, love.event.quit)
		end
		if input:pressed("debugZoomOut") then
			cam.sizeX, cam.sizeY = cam.sizeX - 0.05, cam.sizeY - 0.05
		end
		if input:pressed("debugZoomIn") then
			cam.sizeX, cam.sizeY = cam.sizeX + 0.05, cam.sizeY + 0.05
		end
    end,

    draw = function(self)
        graphics.clear(0.5, 0.5, 0.5)
        if menuThing == 0 then
            for i = 1, #Character.list do
                if i == choice then
                    graphics.setColor(1, 1, 0)
                else
                    graphics.setColor(1, 1, 1)
                end
                love.graphics.print(Character.list[i][1], 10, 10 + (i * 20))
            end
        elseif menuThing == 1 then
            for i = 1, #spriteAnims do
                if i == choice then
                    graphics.setColor(1, 1, 0)
                else
                    graphics.setColor(1, 1, 1)
                end
                love.graphics.print(spriteAnims[i], 0, (i - 1) * 20)
                graphics.setColor(1,1,1)
            end
            love.graphics.print("Offset X:" .. tostring(charGhost.x), 0, (#spriteAnims + 1) * 20)
            love.graphics.print("Offset Y:" .. tostring(charGhost.y), 0, (#spriteAnims + 2) * 20)
            love.graphics.translate(graphics.getWidth() / 2-200, graphics.getHeight() / 2-200)
            love.graphics.scale(cam.sizeX, cam.sizeY)
            
            char:draw()
            charGhost:cdraw(1,1,1,0.65)
        end
    end,

    keypressed = function(self, key)
        if menuThing == 0 then
            if key == "up" then
                if choice ~= 1 then
                    choice = choice - 1
                else
                    choice = #Character.list
                end
            elseif key == "down" then
                if choice ~= #Character.list then
                    choice = choice + 1
                else
                    choice = 1
                end
            elseif key == "return" then
                menuThing = 1
                char = Character.list[choice][2]()
                charGhost = Character.list[choice][2]()

                for i, _ in pairs(char.anims) do 
                    table.insert(spriteAnims, i)
                end

                char:animate(spriteAnims[1], false)
                charGhost:animate(spriteAnims[1], false)
            end
        elseif menuThing == 1 then
            if key == "w" then
                charGhost.y = charGhost.y - 1
            elseif key == "s" then
                charGhost.y = charGhost.y + 1
            elseif key == "a" then
                charGhost.x = charGhost.x - 1
            elseif key == "d" then
                charGhost.x = charGhost.x + 1
            end
            if key == "up" then
                if choice ~= 1 then
                    choice = choice - 1
                else
                    choice = #spriteAnims
                end
                char:animate(spriteAnims[choice], false)
            elseif key == "down" then
                if choice ~= #spriteAnims then
                    choice = choice + 1
                else
                    choice = 1
                end
                char:animate(spriteAnims[choice], false)
            elseif key == "return" then
                char:animate(spriteAnims[choice], false)
                charGhost:animate(spriteAnims[choice], false)
            end
        end
    end
}
