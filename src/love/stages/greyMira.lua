return {
    enter = function()
        stageImages = {
            ["Sky"] = graphics.newImage(graphics.imagePath("pink/pretender/bg sky")),
            ["backCloud"] = graphics.newImage(graphics.imagePath("pink/pretender/cloud fathest")),  --yes it is misspelled in the actual game
            ["cloud1"] = graphics.newImage(graphics.imagePath("pink/pretender/cloud 1")),
            ["cloud2"] = graphics.newImage(graphics.imagePath("pink/pretender/cloud 2")),
            ["cloud3"] = graphics.newImage(graphics.imagePath("pink/pretender/cloud 3")),
            ["cloud4"] = graphics.newImage(graphics.imagePath("pink/pretender/cloud 4")),
            ["floor"] = graphics.newImage(graphics.imagePath("pink/pretender/ground")),
            ["backPlant"] = graphics.newImage(graphics.imagePath("pink/pretender/knocked over plant 2")),
            ["frontPlant"] = graphics.newImage(graphics.imagePath("pink/pretender/front pot")),
            ["theThingIDFK"] = graphics.newImage(graphics.imagePath("pink/pretender/front plant")),
            ["rhm"] = graphics.newImage(graphics.imagePath("pink/pretender/rhm dead")),
            ["blue"] = love.filesystem.load("sprites/pink/blued.lua")(),
            ["vines"] = graphics.newImage(graphics.imagePath("pink/pretender/green")),
            ["longus"] = graphics.newImage(graphics.imagePath("pink/pretender/tomatodead")),
        }

        enemy = love.filesystem.load("sprites/characters/grey.lua")()
        boyfriend = love.filesystem.load("sprites/characters/pretender.lua")()
        girlfriend = love.filesystem.load("sprites/pink/gf_dead_p.lua")()


        boyfriend.x, boyfriend.y = 540, 350
        boyfriend.sizeX = -1
        girlfriend.x, girlfriend.y = 32, 211
        enemy.x, enemy.y = -432, 395

        
        stageImages["backPlant"].x, stageImages["backPlant"].y = -859, 247
        stageImages["frontPlant"].x, stageImages["frontPlant"].y = -1327, 586
        stageImages["theThingIDFK"].x, stageImages["theThingIDFK"].y = 27, -188
        stageImages["rhm"].x, stageImages["rhm"].y = 1123, 636
        stageImages["vines"].x, stageImages["vines"].y = 85, -451
        stageImages["blue"].x, stageImages["blue"].y = -1122, 427
        stageImages["Sky"].x, stageImages["Sky"].y = -149, -77
        stageImages["longus"].x, stageImages["longus"].y = 849, 282
        stageImages["cloud4"].x, stageImages["cloud4"].y = -2172, -810
        stageImages["cloud3"].x, stageImages["cloud3"].y = 363, -398
        stageImages["cloud2"].x, stageImages["cloud2"].y = 24, -6
        stageImages["cloud1"].x, stageImages["cloud1"].y = 622, 71


        stageImages["rhm"].sizeX, stageImages["rhm"].sizeY = 0.8, 0.8
        stageImages["blue"].sizeX, stageImages["blue"].sizeY = 0.8, 0.8
        stageImages["frontPlant"].sizeX, stageImages["frontPlant"].sizeY = 0.6, 0.6

        stageImages["blue"]:animate("anim", true)

        camera:addPoint("boyfriend", -42, 5, 1, 1)
        camera:addPoint("enemy", 41, 5, 1, 1)


    end,

    load = function()
        
        
        camera:addPoint("boyfriend", -42, 5, 1, 1)
        camera:addPoint("enemy", 41, 5, 1, 1)
        camera:moveToPoint(0, "boyfriend")

    end,

    update = function(self, dt)

        if not paused then
            stageImages["blue"]:update(dt)
        end
    end,

    draw = function()
        love.graphics.push()
            love.graphics.push()
            love.graphics.translate(camera.x * 0.8, camera.y * 0.8)
            love.graphics.translate(camera.ex * 0.8, camera.ey * 0.8)

            stageImages["Sky"]:draw()
            stageImages["backCloud"]:draw()
            love.graphics.translate(camera.x * 0.9, camera.y * 0.9)
            love.graphics.translate(camera.ex * 0.9, camera.ey * 0.9)

            stageImages["cloud1"]:draw()
            stageImages["cloud2"]:draw()
            stageImages["cloud3"]:draw()
            stageImages["cloud4"]:draw()
            love.graphics.translate(camera.x, camera.y)
            love.graphics.translate(camera.ex, camera.ey)

            stageImages["floor"]:draw()
            stageImages["backPlant"]:draw()
            stageImages["theThingIDFK"]:draw()
            stageImages["longus"]:draw()
            stageImages["rhm"]:draw()

            girlfriend:draw()
            enemy:draw()
            boyfriend:draw()
            love.graphics.translate(camera.x * 1.1, camera.y * 1.1)
            love.graphics.translate(camera.ex * 1.1, camera.ey * 1.1)

            stageImages["blue"]:draw()
            stageImages["frontPlant"]:draw()
            stageImages["vines"]:draw()
            love.graphics.pop()
            love.graphics.push()
            love.graphics.pop()
		love.graphics.pop()
    end,

    leave = function()
        stageImages = nil
        collectgarbage()
    end
}




































-- i wanna fuck pink's amongussy