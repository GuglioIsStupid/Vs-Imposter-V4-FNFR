return {
    enter = function()
        stageImages = {
            graphics.newImage(graphics.imagePath("tuesday/tuesday")), -- stage-back
            graphics.newImage(graphics.imagePath("tuesday/space")), -- stage-back

        }


        enemy = love.filesystem.load("sprites/characters/tuesday.lua")()
        boyfriend = love.filesystem.load("sprites/characters/bfsusreal.lua")()
        girlfriend = love.filesystem.load("sprites/characters/tuesdaygf.lua")()

        --boyfriend.x, boyfriend.y = 412, 168
        enemy.x, enemy.y = -461, 278
        girlfriend.x, girlfriend.y = -83, 70

        --camera:addPoint("boyfriend", 76, 23, 0.9, 0.9)
        --camera:addPoint("enemy", 182, 122, 0.7, 0.7)


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
        love.graphics.translate(camera.x, camera.y)
        love.graphics.translate(camera.ex, camera.ey)
            stageImages[2]:draw()
            stageImages[1]:draw()
            girlfriend:draw()
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