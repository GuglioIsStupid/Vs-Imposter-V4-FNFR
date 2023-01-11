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
    end,

    load = function()

        if song == 4 then
            enemy = love.filesystem.load("sprites/characters/Reginald_Assets.lua")()
            enemyTwo = love.filesystem.load("sprites/characters/rhm.lua")()
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
        end

    end,

    update = function(self, dt)

    end,

    draw = function()
		love.graphics.push()
			love.graphics.translate(cam.x, cam.y)
            stageImages[1]:draw()
            if curEnemy == "black" then
                enemyTwo:draw()
            else
                enemy:draw()
            end

            boyfriend:draw()
		love.graphics.pop()
    end,

    leave = function()
        stageImages[1] = nil
    end
}
