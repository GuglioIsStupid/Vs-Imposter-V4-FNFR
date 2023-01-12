return {
    enter = function()
        stageImages = {
            graphics.newImage(love.graphics.newImage(graphics.imagePath("henry/stagehenry"))),
        }


        enemy = love.filesystem.load("sprites/characters/HENRY_ASSS.lua")()
        enemyTwo = enemy
        boyfriend = Character.boyfriend(0,0)


        girlfriend.x, girlfriend.y = -200, -445
        enemy.x, enemy.y = -550, -500
        boyfriend.x, boyfriend.y = 260, -125


        

        cam.sizeX, cam.sizeY = 0.7, 0.7
        camScale.x, camScale.y = 0.7, 0.7
    end,

    load = function()

        if song == 4 then
            enemy = love.filesystem.load("sprites/characters/Reginald_Assets.lua")()
            enemyTwo = love.filesystem.load("sprites/characters/rhm.lua")()

            enemy.x, enemy.y = -517, 40
            enemyTwo.x, enemyTwo.y = -286, 34
            girlfriend.x, girlfriend.y = -258, -255
            boyfriend.x, boyfriend.y = 243, 63
        elseif song == 3 then
            enemy = love.filesystem.load("sprites/characters/HENRY_ASSS.lua")()
            enemyTwo = love.filesystem.load("sprites/characters/Ellie_Assets.lua")()
            boyfriend = Character.boyfriend(0,0)
        elseif song == 2 then
            enemy = love.filesystem.load("sprites/characters/charles.lua")()
            boyfriend = love.filesystem.load("sprites/characters/henry_i_phone.lua")()

        else
            enemy = love.filesystem.load("sprites/characters/HENRY_ASSS.lua")()
            boyfriend = Character.boyfriend(0,0)
            curEnemy = "white"
            enemy.x, enemy.y = -325, 90
            girlfriend.x, girlfriend.y = -258, -255
            boyfriend.x, boyfriend.y = 243, 63
        end

    end,

    update = function(self, dt)

    end,

    draw = function()
		love.graphics.push()
			love.graphics.translate(cam.x, cam.y)
            stageImages[1]:draw()
            girlfriend:draw()
            if song == 3 or song == 4 then
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