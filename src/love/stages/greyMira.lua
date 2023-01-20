return {
    enter = function()
        stageImages = {
            ["Sky"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("pink/pretender/bg sky"))),
            ["backCloud"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("pink/pretender/cloud fathest"))),  --yes it is misspelled in the actual game
            ["cloud1"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("pink/pretender/cloud 1"))),
            ["cloud2"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("pink/pretender/cloud 2"))),
            ["cloud3"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("pink/pretender/cloud 3"))),
            ["cloud4"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("pink/pretender/cloud 4"))),
            ["floor"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("pink/pretender/ground"))),
            ["backPlant"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("pink/pretender/knocked over plant 2"))),
            ["frontPlant"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("pink/pretender/front pot"))),
            ["theThingIDFK"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("pink/pretender/front plant"))),
            ["rhm"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("pink/pretender/rhm dead"))),
            ["blue"] = love.filesystem.load("sprites/pink/blued.lua")(),
            ["vines"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("pink/pretender/green"))),
            ["longus"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("pink/pretender/tomatodead"))),
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


    end,

    load = function()

    end,

    update = function(self, dt)

        if not paused then
            stageImages["blue"]:update(dt)
        end
    end,

    draw = function()
        love.graphics.push()
            love.graphics.push()
            love.graphics.translate(cam.x * 0.8, cam.y * 0.8)
            stageImages["Sky"]:draw()
            stageImages["backCloud"]:draw()
            love.graphics.translate(cam.x * 0.9, cam.y * 0.9)
            stageImages["cloud1"]:draw()
            stageImages["cloud2"]:draw()
            stageImages["cloud3"]:draw()
            stageImages["cloud4"]:draw()
            love.graphics.translate(cam.x, cam.y)
            stageImages["floor"]:draw()
            stageImages["backPlant"]:draw()
            stageImages["theThingIDFK"]:draw()
            stageImages["longus"]:draw()
            girlfriend:draw()
            enemy:draw()
            boyfriend:draw()
            love.graphics.translate(cam.x * 1.1, cam.y * 1.1)
            stageImages["rhm"]:draw()
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