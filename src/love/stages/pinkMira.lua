return {
    enter = function()
        stageImages = {
            ["Sky"] = graphics.newImage(graphics.imagePath("pink/bg sky")),
            ["backCloud"] = graphics.newImage(graphics.imagePath("pink/cloud fathest")),  --yes it is misspelled in the actual game
            ["cloud1"] = graphics.newImage(graphics.imagePath("pink/cloud 1")),
            ["cloud2"] = graphics.newImage(graphics.imagePath("pink/cloud 2")),
            ["cloud3"] = graphics.newImage(graphics.imagePath("pink/cloud 3")),
            ["cloud4"] = graphics.newImage(graphics.imagePath("pink/cloud 4")),
            ["floor"] = graphics.newImage(graphics.imagePath("pink/glasses")),
            ["backPlant"] = graphics.newImage(graphics.imagePath("pink/lmao")),
            ["blackPretender"] = love.filesystem.load("sprites/pink/black_pretender.lua")(),
            ["theThingIDFK"] = graphics.newImage(graphics.imagePath("pink/what is this")),
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
            ["overlaySmallHoleIDK"] = graphics.newImage(graphics.imagePath("pink/vignette")),
            ["overlayLargeHoleIDK"] = graphics.newImage(graphics.imagePath("pink/vignette2")),                 --"akjgtbukhionjksdtjgiormk jfdghrieojkfd"  - guglio
            ["frontPlant"] = graphics.newImage(graphics.imagePath("pink/front pot")),
            ["vignette"] = graphics.newImage(graphics.imagePath("pink/vignette")),
            ["vignette2"] = graphics.newImage(graphics.imagePath("pink/vignette2")),
        }

        enemy = love.filesystem.load("sprites/characters/pink.lua")()
        boyfriend = love.filesystem.load("sprites/characters/bfmira.lua")()
        girlfriend = love.filesystem.load("sprites/characters/gfmira.lua")()

        enemy.x, enemy.y = -459, 308
        boyfriend.x, boyfriend.y = 518, 375
        girlfriend.x, girlfriend.y = 10, 90

        stageImages["theThingIDFK"].x, stageImages["theThingIDFK"].y = 0, -239
        stageImages["rhm"].x, stageImages["rhm"].y = 1323, 398
        stageImages["Sky"].x, stageImages["Sky"].y = -183, 102
        stageImages["blue"].x, stageImages["blue"].y = -796, 258
        stageImages["grey"].x, stageImages["grey"].y = -514, 38
        stageImages["longus"].x, stageImages["longus"].y = 797, 48
        stageImages["backCloud"].x, stageImages["backCloud"].y = -199, 339
        stageImages["cloud1"].x, stageImages["cloud1"].y = -1369, -179
        stageImages["cloud2"].x, stageImages["cloud2"].y = -27, 43
        stageImages["cloud3"].x, stageImages["cloud3"].y = 261, -317
        stageImages["cloud4"].x, stageImages["cloud4"].y = 72, -133
        stageImages["backPlant"].x, stageImages["backPlant"].y = -875, 155
        stageImages["frontPlant"].x, stageImages["frontPlant"].y = -1059, 559
        stageImages["vines"].x, stageImages["vines"].y = 5, -678


        stageImages["rhm"].sizeX, stageImages["rhm"].sizeY = 0.8, 0.8
        stageImages["blue"].sizeX, stageImages["blue"].sizeY = 0.8, 0.8
        stageImages["frontPlant"].sizeX, stageImages["frontPlant"].sizeY = 0.6, 0.6

        stageImages["rhm"]:animate("rhm", true)
        stageImages["grey"]:animate("grey", true)
        stageImages["blue"]:animate("blue", true)
        stageImages["longus"]:animate("tomatomongus", true)
        stageImages["vines"]:animate("anim", true)
        stageImages["hearts"]:animate("anim", true)

        defaultCamZoom = 1, 1
        camera.sizeX, camera.sizeY = 1, 1
        
        stageImages["littleHearts"].alpha = 0
        stageImages["hearts"].alpha = 0
        stageImages["vignette"].alpha = 0
        stageImages["vignette2"].alpha = 0

        stageImages["littleHearts"]:animate("anim", true)

        camera:addPoint("boyfriend", -37, -93, 1, 1)
        camera:addPoint("enemy", -3, 18, 1, 1)

        camera:moveToPoint(0, "boyfriend")
        

        hearts = {}
    end,

    load = function()
       -- camera.x, camera.y = -3, 18

       
        defaultCamZoom = 1, 1
        camera.sizeX, camera.sizeY = 1, 1

        camera:addPoint("boyfriend", -37, -93, 1, 1)
        camera:addPoint("enemy", -3, 18, 1, 1)

        camera:moveToPoint(0, "boyfriend")



        pinkToggle = false
    end,

    update = function(self, dt)
        if paused then return end
        stageImages["rhm"]:update(dt)
        stageImages["grey"]:update(dt)
        stageImages["blue"]:update(dt)
        stageImages["vines"]:update(dt)
        stageImages["longus"]:update(dt)
        stageImages["hearts"]:update(dt)
        stageImages["littleHearts"]:update(dt)
        if beatHandler.onBeat() and beatHandler.getBeat() % 2 == 0 then 
            stageImages["rhm"]:animate("rhm", false)
            stageImages["grey"]:animate("grey", false)
            stageImages["blue"]:animate("blue", false)
            stageImages["longus"]:animate("tomatomongus", false)
        end

        if song == 2 then
            if musicTime >= 960 and musicTime < 1010 then
                if zoom1 then
                    Timer.cancel(zoom1)
                end
                zoom1 = Timer.tween(1, camera, {sizeX = 0.5, sizeY = 0.5, scaleX = 0.5, scaleY = 0.5}, "out-quad")
                camera:addPoint("boyfriend", -40, 18, 0.5, 0.5)
                camera:addPoint("enemy", -3, 18, 0.5, 0.5)
            end
        else
            if musicTime >= 5517 and musicTime < 5567 then
                if zoom1 then
                    Timer.cancel(zoom1)
                end
                zoom1 = Timer.tween(1, camera, {sizeX = 0.5, sizeY = 0.5, scaleX = 0.5, scaleY = 0.5}, "out-quad")
                camera:addPoint("boyfriend", -40, 18, 0.5, 0.5)
                camera:addPoint("enemy", -3, 18, 0.5, 0.5)
            end
        end




        
        if pinkCanPulse then
            if beatHandler.onBeat() then 
                if beatHandler.getBeat() % 3 == 1 then 
                    stageImages["vignette"].alpha = 1
                    if vignetteTween then Timer.cancel(vignetteTween) end
                    vignetteTween = Timer.tween(1.2, stageImages["vignette"], {alpha = 0}, "out-sine")
                end
                hearts[#hearts+1] = {x = love.math.random(-1080/2, 1080/2), y = 730, speed = love.math.random(80, 200), scale = 1}
            end
        end

        if #hearts > 0 then 
            for i, v in ipairs(hearts) do
                v.y = v.y - v.speed * dt
                if v.y < -480 then
                    table.remove(hearts, i)
                end
                -- make scale get smaller until it's 0
                v.scale = v.scale - 0.08 * dt
                if v.scale <= 0 then
                    table.remove(hearts, i)
                end
            end
        end

        flash.alpha = util.lerp(flash.alpha, 0, util.clamp(0, dt * 5, 1))
    end,

    draw = function()
        love.graphics.push()
            love.graphics.push()
                love.graphics.translate(camera.x * 0.8, camera.y * 0.8)
                love.graphics.translate(camera.ex * 0.5 * 0.8, camera.ey * 0.5 * 0.8)

                stageImages["Sky"]:draw()
                stageImages["backCloud"]:draw()
                love.graphics.translate(camera.x * 0.9, camera.y * 0.9)
                love.graphics.translate(camera.ex * 0.5 * 0.9, camera.ey * 0.5 * 0.9)

                stageImages["cloud1"]:draw()
                stageImages["cloud2"]:draw()
                stageImages["cloud3"]:draw()
                stageImages["cloud4"]:draw()
                love.graphics.translate(camera.x, camera.y)
                love.graphics.translate(camera.ex * 0.5, camera.ey * 0.5)

                stageImages["floor"]:draw()
                stageImages["backPlant"]:draw()
                stageImages["theThingIDFK"]:draw()
                stageImages["grey"]:draw()
                stageImages["longus"]:draw()
                girlfriend:draw()
                enemy:draw()
                boyfriend:draw()
                love.graphics.translate(camera.x * 1.1, camera.y * 1.1)
                love.graphics.translate(camera.ex * 0.5 * 1.1, camera.ey * 0.5 * 1.1)

                stageImages["rhm"]:draw()
                stageImages["blue"]:draw()
                stageImages["frontPlant"]:draw()
                stageImages["vines"]:draw()
            love.graphics.pop()
            love.graphics.push()
                love.graphics.scale(2, 2)
                graphics.setColor(1,1,1, stageImages["vignette"].alpha)
                stageImages["vignette"]:draw()
                graphics.setColor(1,1,1, stageImages["vignette2"].alpha)
                stageImages["vignette2"]:draw()
                graphics.setColor(1,1,1, 1)
                if stageImages["vignette2"].alpha > 0.1 then
                    stageImages["hearts"]:draw()
                end

                if #hearts > 0 then 
                    for i, v in ipairs(hearts) do
                        stageImages["littleHearts"].x, stageImages["littleHearts"].y = v.x, v.y
                        stageImages["littleHearts"].sizeX, stageImages["littleHearts"].sizeY = v.scale, v.scale
                        stageImages["littleHearts"]:draw()
                    end
                end
            love.graphics.pop()
		love.graphics.pop()
    end,

    leave = function()
        stageImages = nil
        collectgarbage()
    end
}




































-- i wanna fuck pink's amongussy