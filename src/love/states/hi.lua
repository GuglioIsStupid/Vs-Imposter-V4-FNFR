return {
    enter = function(self)
        graphics.fadeIn(0.5)
        if love.math.random(1,2) == 1 then
            video = love.graphics.newVideo("videos/BREASTS.ogv")
        else
            video = love.graphics.newVideo("videos/dietznuts.ogv")
        end
        video:play()

        print("huh")
    end,

    update = function(self, dt)
        if input:pressed("gameBack") or not video:isPlaying() then
            Gamestate.switch(menu)
        end
    end,

    draw = function(self)
        love.graphics.draw(video, 0, 0)
    end,

    leave = function(self)
        video:release()
        collectgarbage()
    end


    --i understand
}