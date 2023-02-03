return {
    enter = function()
        stageImages = {
            graphics.newImage(graphics.imagePath("henry/stagehenry")),
        }


        enemy = love.filesystem.load("sprites/characters/HENRY_ASSS.lua")()
        enemyTwo = love.filesystem.load("sprites/characters/Ellie_Assets.lua")()
        boyfriend = love.filesystem.load("sprites/boyfriend.lua")()



        camera.scaleX, camera.scaleY = 0.8, 0.8
        camera.sizeX, camera.sizeY = 0.8, 0.8

        enemy.x, enemy.y = -275, 84
        boyfriend.x, boyfriend.y = 571, 252
        girlfriend.x, girlfriend.y = 144, 53
    end,

    load = function()

        enemy.x, enemy.y = -275, 84
        boyfriend.x, boyfriend.y = 571, 252
        girlfriend.x, girlfriend.y = 144, 53
        afterEllie = false


        camera:addPoint("enemy", 234, 0)

        if song == 4 then
            enemy = love.filesystem.load("sprites/characters/Reginald_Assets.lua")()
            enemyTwo = love.filesystem.load("sprites/characters/rhm.lua")()

        elseif song == 3 then
            enemy = love.filesystem.load("sprites/characters/HENRY_ASSS.lua")()
            enemyTwo = love.filesystem.load("sprites/characters/Ellie_Assets.lua")()
            boyfriend = love.filesystem.load("sprites/boyfriend.lua")()
            enemy.x, enemy.y = -275, 84
            boyfriend.x, boyfriend.y = 571, 252
            girlfriend.x, girlfriend.y = 144, 53
        elseif song == 2 then
            enemy = love.filesystem.load("sprites/characters/charles.lua")()
            boyfriend = love.filesystem.load("sprites/characters/henry_i_phone.lua")()

        else
            enemy = love.filesystem.load("sprites/characters/HENRY_ASSS.lua")()
            boyfriend = love.filesystem.load("sprites/boyfriend.lua")()

            enemy.x, enemy.y = -275, 84
            boyfriend.x, boyfriend.y = 571, 252
            girlfriend.x, girlfriend.y = 144, 53

            camera:addPoint("boyfriend", -335, -153)
        end

    end,

    update = function(self, dt)

        if song == 3 then

            if musicTime >= 70163 and musicTime < 70213 then
                camera:moveToPoint(1.25, "enemy")
            end
            if musicTime >= 71663 and musicTime < 71713 then
                enemyTwo:animate("enter", false)
                afterEllie = true

            end
        end


    end,

    draw = function()
		love.graphics.push()
			love.graphics.translate(camera.x, camera.y)
			love.graphics.translate(camera.ex, camera.ey)
            love.graphics.scale(camera.sizeX, camera.sizeY)
            stageImages[1]:draw()
            girlfriend:draw()

            if song == 3 and afterEllie then
                enemyTwo:draw()
            elseif song == 4 then
                enemyTwo:draw()
            end
                    

            --enemyTwo:draw()
            enemy:draw()
            

            boyfriend:draw()
		love.graphics.pop()
    end,

    leave = function()
        stageImages[1] = nil
    end
}


--[[









            enemy = love.filesystem.load("sprites/characters/HENRY_ASSS.lua")()           
            boyfriend = Character.boyfriend(0,0)
            curEnemy = "white"
            enemy.x, enemy.y = -325, 90
            girlfriend.x, girlfriend.y = -258, -255
            boyfriend.x, boyfriend.y = 243, 63














































--]]
