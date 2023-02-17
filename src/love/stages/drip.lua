return {
    enter = function()
        stageImages = {
            graphics.newImage(graphics.imagePath("drip/ng")),
        }


        enemy = love.filesystem.load("sprites/characters/drippy.lua")()
        boyfriend = love.filesystem.load("sprites/DrippyBF.lua")()

        boyfriend.x, boyfriend.y = 412, 168
        enemy.x, enemy.y = -397, 0

        camera:addPoint("boyfriend", 76, 23, 0.9, 0.9)
        camera:addPoint("enemy", 182, 122, 0.7, 0.7)


    end,

    load = function()

    end,

    update = function(self, dt)


        
        if not enemy:isAnimated() and enemy:getAnimName() ~= "idle" then
            enemy:animate("idle", false)        -- fixed the animation issues
        end



    end,

    draw = function()
        love.graphics.push()
            stageImages[1]:draw()
            boyfriend:draw()
            enemy:draw()
		love.graphics.pop()
    end,

    leave = function()
        stageImages[1] = nil
        enemy = nil
        boyfriend = nil
    end
}