return {
    enter = function()
        stageImages = {
            ["back"] = graphics.newImage(graphics.imagePath("chip/back")), -- stage-back
            ["backBuildings"] = graphics.newImage(graphics.imagePath("chip/backBuildings")), -- stage-back
            ["balcony"] = graphics.newImage(graphics.imagePath("chip/balcony")), -- stage-back
            ["mainBuildings"] = graphics.newImage(graphics.imagePath("chip/mainBuildings")), -- stage-back
        }


        enemy = love.filesystem.load("sprites/characters/Jerma.lua")()
        boyfriend = love.filesystem.load("sprites/boyfriend.lua")()

        --boyfriend.x, boyfriend.y = 412, 168
        --enemy.x, enemy.y = -397, 0

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
        love.graphics.translate(camera.x * 0.7, camera.y * 0.7)
            stageImages["back"]:draw()
            stageImages["backBuildings"]:draw()
        love.graphics.pop()
        love.graphics.push()
        love.graphics.translate(camera.x * 0.8, camera.y * 0.8)
            stageImages["mainBuildings"]:draw()
        love.graphics.pop()
        love.graphics.push()
        love.graphics.translate(camera.x, camera.y)
            stageImages["balcony"]:draw()
            enemy:draw()
            boyfriend:draw()
        love.graphics.pop()
    end,

    leave = function()
        stageImages["back"] = nil
        stageImages["backBuildings"] = nil
        stageImages["mainBuildings"] = nil
        stageImages["balcony"] = nil
        enemy = nil
        boyfriend = nil
    end
}