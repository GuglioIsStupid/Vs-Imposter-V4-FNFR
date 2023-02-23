local beansValue
return {
    enter = function(self)
        beansCounterSound = love.audio.newSource("sounds/getBeans.ogg", "static")
        beansValue = math.floor(campaignScore / 600)

        graphics.fadeIn(0.1)

        if not settings.botPlay then
            beansCounterSound:play()
            Timer.tween(beansCounterSound:getDuration(), beans, {beans[1] + beansValue}, "out-quad", function()
                beans[1] = math.floor(beans[1])

                Timer.after(
                    0.33,
                    function()
                        graphics.fadeOut(0.3, function()
                            Gamestate.switch(menu)

                            campaignScore = 0
                        end)
                    end
                )
            end)
        else
            Gamestate.switch(menu)

            campaignScore = 0
        end
    end,

    draw = function(self)
        -- draw beans in top right

        love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)

        love.graphics.setColor(1, 1, 1, 1)
        love.graphics.printf("Beans: " .. math.floor(beans[1]), -graphics.getWidth() / 2, -graphics.getHeight() / 2, graphics.getWidth(), "left")
    end
}