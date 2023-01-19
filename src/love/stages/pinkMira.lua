return {
    enter = function()
        stageImages = {
            ["Sky"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("pink/bg sky"))),
            ["backCloud"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("pink/cloud fathest"))),  --yes it is misspelled in the actual game
            ["cloud1"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("pink/cloud 1"))),
            ["cloud2"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("pink/cloud 2"))),
            ["cloud3"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("pink/cloud 3"))),
            ["cloud4"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("pink/cloud 4"))),
            ["floor"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("pink/glasses"))),
            ["backPlant"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("pink/lmao"))),
            ["frontPlant"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("pink/front pot"))),
            ["blackPretender"] = love.filesystem.load("sprites/pink/black_pretender.lua")(),
            ["theThingIDFK"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("pink/what is this"))),
            ["greyPretender"] = love.filesystem.load("sprites/pink/grey_pretender.lua")(),
            ["rhm"] = love.filesystem.load("sprites/pink/crew.lua")(),
            ["blue"] = love.filesystem.load("sprites/pink/crew.lua")(),
            ["grey"] = love.filesystem.load("sprites/pink/crew.lua")(),
            ["longus"] = love.filesystem.load("sprites/pink/crew.lua")(),
            ["longusLeave"] = love.filesystem.load("sprites/pink/longus_leave.lua")(),
            ["scaredBlue"] = love.filesystem.load("sprites/pink/mirascaredmates.lua")(),
            ["scaredOrange"] = love.filesystem.load("sprites/pink/mirascaredmates.lua")(),
            ["scaredWhite"] = love.filesystem.load("sprites/pink/mirascaredmates.lua")(),
            ["deadBlue"] = love.filesystem.load("sprites/pink/mirascaredmates.lua")(),
            ["deadOrange"] = love.filesystem.load("sprites/pink/mirascaredmates.lua")(),
            ["deadWhite"] = love.filesystem.load("sprites/pink/mirascaredmates.lua")(),
            ["pretenderDark"] = love.filesystem.load("sprites/pink/pretender_dark.lua")(),
            ["vines"] = love.filesystem.load("sprites/pink/vines.lua")(),
            ["hearts"] = love.filesystem.load("sprites/pink/hearts.lua")(),
            ["littleHearts"] = love.filesystem.load("sprites/pink/littleheart.lua")(),
            ["overlaySmallHoleIDK"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("pink/vignette"))),
            ["overlayLargeHoleIDK"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("pink/vignette2"))),                 --"akjgtbukhionjksdtjgiormk jfdghrieojkfd"  - guglio
            ["frontPlant"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("pink/front pot")))
        }

        enemy = love.filesystem.load("sprites/characters/pink.lua")()
        boyfriend = love.filesystem.load("sprites/characters/bfmira.lua")()
        girlfriend = love.filesystem.load("sprites/characters/gfmira.lua")()


        boyfriend.x, boyfriend.y = 276, 86
        girlfriend.x, girlfriend.y = -330, -226
        enemy.x, enemy.y = -432, 293

        
        stageImages["backPlant"].x, stageImages["backPlant"].y = -859, 35
        stageImages["frontPlant"].x, stageImages["frontPlant"].y = -1327, 586
        stageImages["theThingIDFK"].x, stageImages["theThingIDFK"].y = 27, -188
        stageImages["rhm"].x, stageImages["rhm"].y = 1057, 474
        stageImages["vines"].x, stageImages["vines"].y = 85, -451
        stageImages["blue"].x, stageImages["blue"].y = -1059, 297
        stageImages["grey"].x, stageImages["grey"].y = -513, 2
        stageImages["Sky"].x, stageImages["Sky"].y = -575, -462
        stageImages["longus"].x, stageImages["longus"].y = 804, 50

        stageImages["rhm"].sizeX, stageImages["rhm"].sizeY = 0.8, 0.8
        stageImages["blue"].sizeX, stageImages["blue"].sizeY = 0.8, 0.8
        stageImages["frontPlant"].sizeX, stageImages["frontPlant"].sizeY = 0.6, 0.6

        stageImages["rhm"]:animate("rhm", true)
        stageImages["grey"]:animate("grey", true)
        stageImages["blue"]:animate("blue", true)
        stageImages["longus"]:animate("tomatomongus", true)
        stageImages["vines"]:animate("anim", true)
        stageImages["hearts"]:animate("anim", true)


    end,

    load = function()

    end,

    update = function(self, dt)
        stageImages["rhm"]:update(dt)
        stageImages["grey"]:update(dt)
        stageImages["blue"]:update(dt)
        stageImages["vines"]:update(dt)
        stageImages["longus"]:update(dt)
        stageImages["hearts"]:update(dt)
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
            stageImages["grey"]:draw()
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
            stageImages["hearts"]:draw()
            love.graphics.pop()
		love.graphics.pop()
    end,

    leave = function()
        stageImages = nil
        collectgarbage()
    end
}




































-- i wanna fuck pink's amongussy