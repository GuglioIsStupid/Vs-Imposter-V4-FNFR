return {
    enter = function()
        stageImages = {
            ["fog mid"] = graphics.newImage(graphics.imagePath("victory/fog_mid")),
            ["vic bgchars"] = love.filesystem.load("sprites/victory/vic_bgchars.lua")(),
            ["vic jelq"] = love.filesystem.load("sprites/victory/vic_jelq.lua")(),
            ["vic_jor"] = love.filesystem.load("sprites/victory/vic_jor.lua")(),
            ["vic war"] = love.filesystem.load("sprites/victory/vic_war.lua")(),
            ["victory spotlights"] = graphics.newImage(graphics.imagePath("victory/victory_spotlights")),
            ["victorytext"] = love.filesystem.load("sprites/victory/victorytext.lua")(),
            ["victory pulse"] = love.filesystem.load("sprites/victory/victory_pulse.lua")(),
        }

        enemy = love.filesystem.load("sprites/characters/warchief.lua")()
        enemy2 = love.filesystem.load("sprites/characters/jelqer.lua")()
        enemy3 = love.filesystem.load("sprites/characters/jorsawdead.lua")()


        stageImages["fog mid"].x, stageImages["fog mid"].y = -25, 137
        stageImages["victory spotlights"].x, stageImages["victory spotlights"].y = 0, 0
        stageImages["vic bgchars"].x, stageImages["vic bgchars"].y = 0, -90
        stageImages["vic jelq"].x, stageImages["vic jelq"].y = -4, 28
        stageImages["vic war"].x, stageImages["vic war"].y = 7, 12
        stageImages["vic_jor"].x, stageImages["vic_jor"].y = 140, 12
        stageImages["victorytext"].x, stageImages["victorytext"].y = 0, -323
        stageImages["victory pulse"].x, stageImages["victory pulse"].y = 0, 40

        stageImages["vic_jor"].alpha = 0
		stageImages["vic war"].alpha = 0

        boyfriend.x, boyfriend.y = 505, 146
        enemy.x, enemy.y = -532, 107
        enemy2.x, enemy2.y = -532, 107
        enemy3.x, enemy3.y = -532, 107

        camera.sizeX, camera.sizeY = 0.85, 0.85
        camera.scaleX, camera.scaleY = 0.85, 0.85

        boyfriend.orientation = 0

        curChar = "warchief"
    end,

    load = function()
        curChar = "warchief"
        if stageImages["vic_jor"] then stageImages["vic_jor"].alpha = 0 end
		if stageImages["vic jelq"] then stageImages["vic jelq"].alpha = 1 end
    end,

    update = function(self, dt)
        stageImages["vic jelq"]:update(dt)
        stageImages["vic war"]:update(dt)
        stageImages["vic_jor"]:update(dt)
        stageImages["vic bgchars"]:update(dt)
        stageImages["victory pulse"]:update(dt)
        stageImages["victorytext"]:update(dt)
        if beatHandler.onBeat() and beatHandler.getBeat() % 2 == 0 then 
            stageImages["victory pulse"]:animate("anim")
            stageImages["vic jelq"]:animate("anim")
            stageImages["vic war"]:animate("anim")
            stageImages["vic_jor"]:animate("anim")
            stageImages["vic bgchars"]:animate("anim")
            stageImages["victorytext"]:animate("anim")
        end

        if not enemy2:isAnimated() then            -- you can remove this if you want, i was just bored
            if enemyDance == "left" then
                enemyDance = "right"
            else
                enemyDance = "left"
            end
            if enemyDance == "left" then
                enemy2:animate("danceLEFT", false)
            else
                enemy2:animate("danceRIGHT", false)
            end
        end

        end,

    draw = function()
        love.graphics.scale(camera.sizeX, camera.sizeY)
        graphics.setColor(camera:getColor())
		love.graphics.push()
            graphics.setColor(0,0,0,1)
            love.graphics.rectangle("fill", -2000, -2000, 5000, 5000)
            graphics.setColor(1,1,1,1)
            stageImages["victorytext"]:draw()
            stageImages["vic bgchars"]:draw()
            graphics.setColor(1,1,1, stageImages["vic jelq"].alpha)
            stageImages["vic jelq"]:draw()
            graphics.setColor(1,1,1, stageImages["vic war"].alpha)
            stageImages["vic war"]:draw()
            graphics.setColor(1,1,1, stageImages["vic_jor"].alpha)
            stageImages["vic_jor"]:draw()
            graphics.setColor(1,1,1,1)
            graphics.setColor(1, 1, 1, 0.21)
            stageImages["fog mid"]:draw()
            graphics.setColor(1, 1, 1, 1)
            if curChar == "warchief" then
                enemy:draw()
            elseif curChar == "jelqer" then
                enemy2:draw()
            elseif curChar == "jorsawghost" then
                enemy3:draw()
            end
            boyfriend:draw()
            stageImages["victory spotlights"]:draw()
		love.graphics.pop()
		love.graphics.push()

        graphics.setColor(1,1,1)
        graphics.setColor(camera:getColor())
		love.graphics.pop()
        if victoryDarkness then 
            graphics.setColor(0,0,0,1)
            love.graphics.rectangle("fill", -2000, -2000, 5000, 5000)
            graphics.setColor(1,1,1,1)
        end
    end,

    leave = function()
        stageImages[1] = nil
        stageImages[2] = nil
        stageImages[3] = nil
    end
}