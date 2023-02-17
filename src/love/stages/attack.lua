return {
    enter = function()
        stageImages = {
            ["backlights"] = graphics.newImage(graphics.imagePath("attack/backlights")),
            ["fg"] = graphics.newImage(graphics.imagePath("attack/fg")),
            ["frontlight"] = graphics.newImage(graphics.imagePath("attack/frontlight")),
            ["lamp"] = graphics.newImage(graphics.imagePath("attack/lamp")),
            ["bg"] = graphics.newImage(graphics.imagePath("attack/monotoneback")),
            ["purple"] = graphics.newImage(graphics.imagePath("attack/purple")),
            ["cooper"] = love.filesystem.load("sprites/attack/cooper.lua")(), --rip
            ["crowd"] = love.filesystem.load("sprites/attack/crowd.lua")(),
            ["loggo"] = love.filesystem.load("sprites/attack/loggoattack.lua")(),
            ["nick"] = love.filesystem.load("sprites/attack/nick t.lua")(),
            ["offbi"] = love.filesystem.load("sprites/attack/offbi.lua")(),
            ["orbyy"] = love.filesystem.load("sprites/attack/orbyy.lua")()
        }


        enemy = love.filesystem.load("sprites/characters/attack.lua")()
        enemy2 = love.filesystem.load("sprites/characters/fabs.lua")()
        boyfriend2 = love.filesystem.load("sprites/characters/biddle.lua")()
        boyfriend = love.filesystem.load("sprites/characters/clowfoefnf.lua")()

        boyfriend.x, boyfriend.y = 407, 402
        boyfriend.sizeX, boyfriend.sizeY = 0.7, 0.7
        boyfriend2.x, boyfriend2.y = 618, 150
        enemy.x, enemy.y = -813, 443
        enemy2.x, enemy2.y = -808, 159

        enemy2.sizeX, enemy2.sizeY = 0.9, 0.9

        camera:addPoint("boyfriend", 220, -339, 0.9, 0.9)
        camera:addPoint("enemy", 492, -339, 0.9, 0.9)


        stageImages["cooper"].x, stageImages["cooper"].y = 1030, 211
        stageImages["loggo"].x, stageImages["loggo"].y = -42, 222
        stageImages["nick"].x, stageImages["nick"].y = -550, 108
        stageImages["offbi"].x, stageImages["offbi"].y = 251, 132
        stageImages["orbyy"].x, stageImages["orbyy"].y = -251, 142


        stageImages["cooper"]:animate("anim", true)
        stageImages["loggo"]:animate("anim", true)
        stageImages["nick"]:animate("idle", true)
        stageImages["offbi"]:animate("anim", true)
        stageImages["orbyy"]:animate("idle", true)







    end,

    load = function()

    end,

    update = function(self, dt)
        stageImages["cooper"]:update(dt)
        stageImages["loggo"]:update(dt)
        stageImages["nick"]:update(dt)
        stageImages["offbi"]:update(dt)
        stageImages["orbyy"]:update(dt)

    end,

    draw = function()
        love.graphics.push()
        love.graphics.translate(camera.x, camera.y)
        love.graphics.translate(camera.ex, camera.ey)
            stageImages["bg"]:draw()
            stageImages["backlights"]:draw()  -- i am completely guessing where this goes
            stageImages["fg"]:draw()
            stageImages["cooper"]:draw()
            stageImages["offbi"]:draw()
            stageImages["orbyy"]:draw()
            stageImages["nick"]:draw()
            stageImages["loggo"]:draw()

            --[[

            if inDebug then
                stageImages["fucker2"]:draw()
                stageImages["fucker1"]:draw()
            else
                boyfriend2:draw()
                enemy2:draw()
            end


            --]]
            enemy2:draw()
            enemy:draw()
            boyfriend2:draw()
            boyfriend:draw()
            stageImages["lamp"]:draw()
            stageImages["frontlight"]:draw()
		love.graphics.pop()
    end,

    leave = function()
        stageImages[1] = nil
        enemy = nil
        boyfriend = nil
    end
}