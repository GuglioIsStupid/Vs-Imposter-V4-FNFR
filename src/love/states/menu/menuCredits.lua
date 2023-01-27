local creditText, selectSound, confirmSound
-- i literally said we should use a big string and you said no - CH
creditText = [[
CREDITS


Vanilla Engine:

GuglioIsStupid - Programming
c l o t h i n g h a n g e r - Programming
Getsaa - Menu Designer


Funkin' Rewritten:

HTV04


Friday Night Funkin':

ninjamuffin99
PhantomArcade
Evilsk8r
Kawaisprite
And all the contributors


Miscellaneous:

PhantomClo - Pixel note splashes
Keoki - Note splashes
P-sam - Developing LOVE-NX
The developers of the LÖVE framework
RiverOaken - Psych Engine credits button






































Claus - requested furry BF to be added to VE (press UP 10 times)

]]



-- dumbass doesnt know how to spell miscellaneous :skull: guglio typed miscillaneous
return {
    enter = function(self)
        credY = {
            250
        }
        selectSound = love.audio.newSource("sounds/menu/select.ogg", "static")
	    confirmSound = love.audio.newSource("sounds/menu/confirm.ogg", "static")
        selectSound:setVolume(0.2)
        confirmSound:setVolume(0.2)
        graphics.fadeIn(0.5)
        bg = graphics.newImage(graphics.imagePath("menu/menuBG"))
    end,
    update = function(self, dt)
        if input:pressed("gameBack") then
            graphics.fadeOut(0.5,
            function()
                Gamestate.switch(menu)
            end)
        end
        if input:pressed("down") then
            --audio.playSound(selectSound)
            if credY[1] > -2000 then  
                Timer.tween(0.3, credY, {[1] = credY[1] - 50}, "out-quad")
                audio.playSound(selectSound)
            end
        elseif input:pressed("up") then
            audio.playSound(selectSound)
            if credY[1] < 250 then
                Timer.tween(0.3, credY, {[1] = credY[1] + 50}, "out-quad")
            end
        end
    end,
    draw = function(self)
        love.graphics.setFont(credFont)
        love.graphics.push()
        love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)
        graphics.setColor(0, 0, 0.4, 1)
        bg:draw()
        graphics.setColor(1, 1, 1, 1)
        love.graphics.translate(-350,math.abs(graphics.getHeight() / 2)+credY[1]-700)
        love.graphics.printf(creditText, 0, 0, 750, "center")
        love.graphics.pop()
        love.graphics.setFont(font)
    end,
    leave = function(self)

    end
}
