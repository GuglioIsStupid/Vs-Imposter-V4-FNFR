return {
    enter = function()
        stageImages = {
            graphics.newImage(graphics.imagePath("henry/stagehenry")),
        }


        enemy = love.filesystem.load("sprites/characters/HENRY_ASSS.lua")()
        enemyTwo = love.filesystem.load("sprites/characters/Ellie_Assets.lua")()
        boyfriend = love.filesystem.load("sprites/boyfriend.lua")()




        defaultCamZoom = 0.85, 0.85
        camera.sizeX, camera.sizeY = 0.85, 0.85

        enemy.x, enemy.y = -275, 84
        boyfriend.x, boyfriend.y = 571, 252
        girlfriend.x, girlfriend.y = 144, 53

    end,

    load = function()

        enemy.x, enemy.y = -275, 84
        boyfriend.x, boyfriend.y = 571, 252
        girlfriend.x, girlfriend.y = 144, 53
        afterEllie = false


        camera:addPoint("enemy", 234, 0, 0.85, 0.85)

        if song == 4 then
            enemyTwo = love.filesystem.load("sprites/characters/Reginald_Assets.lua")()
            enemy = love.filesystem.load("sprites/characters/rhm.lua")()
            enemy.x, enemy.y = -259, 69
            enemyTwo.x, enemyTwo.y = -574, 67
            
            defaultCamZoom = 0.85, 0.85
            camera.sizeX, camera.sizeY = 0.85, 0.85

        elseif song == 3 then
            enemy = love.filesystem.load("sprites/characters/HENRY_ASSS.lua")()
            enemyTwo = love.filesystem.load("sprites/characters/Ellie_Assets.lua")()
            boyfriend = love.filesystem.load("sprites/boyfriend.lua")()
            enemy.x, enemy.y = -275, 84
            boyfriend.x, boyfriend.y = 571, 252
            girlfriend.x, girlfriend.y = 144, 53
            enemyTwo.x, enemyTwo.y = -602, 148
            
            defaultCamZoom = 0.85, 0.85
            camera.sizeX, camera.sizeY = 0.85, 0.85
        elseif song == 2 then
            enemy = love.filesystem.load("sprites/characters/charles.lua")()
            boyfriend = love.filesystem.load("sprites/characters/henry_i_phone.lua")()
            boyfriend.x, boyfriend.y = -275, 84

            boyfriendButNotReally = love.filesystem.load("sprites/boyfriend.lua")()
            boyfriendButNotReally.x, boyfriendButNotReally.y = 571, 252
            boyfriendButNotReally:animate("idle", true)
            camera.x, camera.y = -113, 0
            boyfriend:animate("greatestPlanIntro", false)
            camera:addPoint("enemy", 687, 0, 0.85, 0.85)
            enemy.x, enemy.y = -4000, 0


            zoom1Num = 0.95
            zoom2Num = 1.05
            defaultCamZoom = 0.85, 0.85
            camera.sizeX, camera.sizeY = 0.85, 0.85

        else
            enemy = love.filesystem.load("sprites/characters/HENRY_ASSS.lua")()
            boyfriend = love.filesystem.load("sprites/boyfriend.lua")()

            enemy.x, enemy.y = -275, 84
            boyfriend.x, boyfriend.y = 571, 252
            girlfriend.x, girlfriend.y = 144, 53
            defaultCamZoom = 0.85, 0.85
            camera.sizeX, camera.sizeY = 0.85, 0.85

            camera:addPoint("boyfriend", -335, -153, 0.85, 0.85)
        end

    end,

    update = function(self, dt)

        if song == 3 then

            if musicTime >= 70163 and musicTime < 70213 then
                camera:moveToPoint(1.25, "enemy")
            end
            if musicTime >= 71663 and musicTime < 71713 then
                enemyTwo:animate("enter", false)
                enemy:animate("shock", false)
                afterEllie = true

            end
        elseif song == 2 then
            boyfriendButNotReally:update(dt)
            if musicTime >= 2666 and musicTime < 2716 then
                camera:moveToPoint(2.25, "enemy")
                if charlesTween then Timer.cancel(charlesTween) end
                charlesTween = Timer.tween(3, enemy, {x = -955}, "out-expo")
            end

            if musicTime >= 3333 and musicTime < 3383 then
                camera.sizeX, camera.sizeY = zoom1Num, zoom1Num
                defaultCamZoom = zoom1Num, zoom1Num
            end

            if musicTime >= 3500 and musicTime < 3550 then
                camera.sizeX, camera.sizeY = zoom2Num, zoom2Num
                defaultCamZoom = zoom2Num, zoom2Num
            end

            if musicTime >= 4333 and musicTime < 4383 then
                enemy:animate("oh", false)
            end

            if musicTime >= 68166 and musicTime < 68216 then
                enemy:animate("perfect", false)
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

            enemy:draw()
            if song == 3 and afterEllie then
                enemyTwo:draw()
            elseif song == 4 then
                enemyTwo:draw()
            end

            if song == 2 then
                boyfriendButNotReally:draw()
            end
           -- stageImages[2]:draw()

 
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
