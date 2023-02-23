return {
    enter = function()
        stageImages = {
            ["bg"] = graphics.newImage(graphics.imagePath("top/polus_custom_sky")),
            ["fg"] = graphics.newImage(graphics.imagePath("top/polus_custom_lab")),
            ["floor"] = graphics.newImage(graphics.imagePath("top/polus_custom_floor")),
            ["bg but more in the bg"] = graphics.newImage(graphics.imagePath("top/polusrocks")),
            ["snowFront"] = love.filesystem.load("sprites/maroon/snow.lua")()
        }


        enemy = love.filesystem.load("sprites/characters/top10.lua")()
        boyfriend = love.filesystem.load("sprites/boyfriend.lua")()

        stageImages["snowFront"]:animate("anim", true)
        boyfriend.x, boyfriend.y = 188, 291
        enemy.x, enemy.y = -661, 186
        girlfriend.x, girlfriend.y = -249, 100

        camera.sizeX, camera.sizeY = 0.75, 0.75
        camera.scaleX, camera.scaleY = 0.75, 0.75

        stageImages["floor"].x, stageImages["floor"].y = -582, 801

        stageImages["bg"].sizeX, stageImages["bg"].sizeY = 1.6, 1.6
        stageImages["snowFront"].sizeX, stageImages["snowFront"].sizeY = 2, 2

        camera:addPoint("boyfriend", 93, -103, 0.75, 0.75)
        camera:addPoint("enemy", 282, -103, 0.75, 0.75)

    end,

    load = function()

    end,

    update = function(self, dt)
        stageImages["snowFront"]:update(dt)
    end,

    draw = function()

        love.graphics.push()
            love.graphics.translate(camera.x * 0.7, camera.y * 0.7)
            love.graphics.translate(camera.ex * 0.7, camera.ey * 0.7)
            stageImages["bg"]:draw()
        love.graphics.pop()
        love.graphics.push()
            love.graphics.translate(camera.x * 0.9, camera.y * 0.9)
            love.graphics.translate(camera.ex * 0.9, camera.ey * 0.9)
            stageImages["bg but more in the bg"]:draw()


        love.graphics.pop()
        
    love.graphics.push()
        love.graphics.translate(camera.x, camera.y)
        love.graphics.translate(camera.ex, camera.ey)

        stageImages["fg"]:draw()
        stageImages["floor"]:draw()

        girlfriend:draw()
        enemy:draw()
        boyfriend:draw()
        stageImages["snowFront"]:draw()

    love.graphics.pop()




    end,

    leave = function()
        stageImages["bg"] = nil
        enemy = nil
        boyfriend = nil
    end
}