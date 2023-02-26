return {
    enter = function()
        stageImages = {
            ["BG"] = graphics.newImage(graphics.imagePath("sauces/Back Wall Kitchen")),
            ["backTable"] = graphics.newImage(graphics.imagePath("sauces/Back Table Kitchen")),
            ["blackShadow"] = graphics.newImage(graphics.imagePath("sauces/black_overhead_shadow")),
            ["blueLight"] = graphics.newImage(graphics.imagePath("sauces/bluelight")),
            ["floor"] = graphics.newImage(graphics.imagePath("sauces/Chef Floor")),
            ["frontTable"] = graphics.newImage(graphics.imagePath("sauces/Kitchen Counter")),
            ["oven"] = graphics.newImage(graphics.imagePath("sauces/oven")),
            ["grey"] = love.filesystem.load("sprites/sauces/Boppers.lua")(),
            ["saster"] = love.filesystem.load("sprites/sauces/Boppers.lua")()


        }

        stageImages["oven"].x, stageImages["oven"].y = 1057, 135
        stageImages["floor"].x, stageImages["floor"].y = 0, 472
        stageImages["frontTable"].x, stageImages["frontTable"].y = 423, 305

        stageImages["grey"].x, stageImages["grey"].y = 185, 159
        stageImages["saster"].x, stageImages["saster"].y = 609, 168




        enemy = love.filesystem.load("sprites/characters/chefogus.lua")()
        boyfriend = love.filesystem.load("sprites/characters/bfsauce.lua")()

        boyfriend.x, boyfriend.y = 917, 375
        enemy.x, enemy.y = -210, 279

        camera:addPoint("boyfriend", -409, -102, 0.85, 0.85)
        camera:addPoint("enemy", -192, -102, 0.85, 0.85)


        camera.sizeX, camera.sizeY = 0.85, 0.85

        defaultCamZoom = 0.85, 0.85
        stageImages["grey"]:animate("grey", true)
        stageImages["saster"]:animate("saster", true)


    end,

    load = function()

        

        camera.sizeX, camera.sizeY = 0.85, 0.85

        defaultCamZoom = 0.85, 0.85

    end,

    update = function(self, dt)

        stageImages["grey"]:update(dt)
        stageImages["saster"]:update(dt)



        
        if not enemy:isAnimated() and enemy:getAnimName() ~= "idle" then
            enemy:animate("idle", false)        -- fixed the animation issues
        end



    end,

    draw = function()
        love.graphics.push()
        love.graphics.scale(camera.esizeX, camera.esizeY)
        love.graphics.scale(camera.sizeX, camera.sizeY)
        love.graphics.translate(camera.x, camera.y)
        love.graphics.translate(camera.ex, camera.ey)
            stageImages["BG"]:draw()
            stageImages["floor"]:draw()

            stageImages["backTable"]:draw()
            stageImages["oven"]:draw()
            stageImages["grey"]:draw()
            stageImages["saster"]:draw()

            stageImages["frontTable"]:draw()
            stageImages["blackShadow"]:draw()
            stageImages["blueLight"]:draw()

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