return {
    enter = function()
        stageImages = {
            ["notDead"] = graphics.newImage(graphics.imagePath("freeplaySongs/crewicide/DAVE")),
            ["dead"] = graphics.newImage(graphics.imagePath("freeplaySongs/crewicide/DAVEdie"))
        }

        lmaoSuicideSound = love.audio.newSource("sounds/davewindowsmash.ogg", "static")


        enemy = love.filesystem.load("sprites/characters/Dave.lua")()
        boyfriend = love.filesystem.load("sprites/boyfriend.lua")()

        boyfriend.x, boyfriend.y = 510, 321
        enemy.x, enemy.y = -291, 148

        camera:addPoint("boyfriend", -73, -114, 0.85, 0.85)
        camera:addPoint("enemy", 62, -114, 0.85, 0.85)

        camera.sizeX, camera.sizeY = 0.85, 0.85
        defaultCamZoom = 0.85, 0.85





    end,

    load = function()
        lmaoHeKilledHimself = false    
    end,

    update = function(self, dt)


        if musicTime >= 153170 and musicTime < 153230 then
            enemy:animate("fuckingSuicide", false, function()
                lmaoHeKilledHimself = true
                lmaoSuicideSound:play()
            end)
        end


    end,

    draw = function()
        love.graphics.push()


        if not lmaoHeKilledHimself then
            stageImages["notDead"]:draw()
            enemy:draw()
        else
            stageImages["dead"]:draw()
        end


        boyfriend:draw()


		love.graphics.pop()
    end,

    leave = function()
        stageImages[1] = nil
        enemy = nil
        boyfriend = nil
    end
}