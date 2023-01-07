return {
    enter = function(self)
        graphics.fadeIn(0.5)
        video = love.graphics.newVideo("videos/dietznuts.ogv")
        video:play()
    end,

    update = function(self, dt)
        if input:pressed("gameBack") then
            Gamestate.switch(menu)
        end
    end,

    draw = function(self)
        love.graphics.draw(video, 0, 0)
    end
}