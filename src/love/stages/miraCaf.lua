return {
    enter = function()
        stageImages = {
            graphics.newImage(graphics.imagePath("greenWeek/Mira")),
            graphics.newImage(graphics.imagePath("greenWeek/vending_machine")),
            graphics.newImage(graphics.imagePath("greenWeek/table_bg")),
        }


        enemy = love.filesystem.load("sprites/characters/crewmate.lua")()
        enemyDark = love.filesystem.load("sprites/characters/blackpostor.lua")()
      
        girlfriend.x, girlfriend.y = -29, -70
        enemy.x, enemy.y = -365, 169
        boyfriend.x, boyfriend.y = 345, 175

        stageImages[1].sizeX, stageImages[1].sizeY = 1.25, 1.25
        stageImages[2].sizeX, stageImages[2].sizeY = 1.35, 1.35
        stageImages[3].sizeX, stageImages[3].sizeY = 1.25, 1.25

        stageImages[2].x, stageImages[2].y = -579, -184
        stageImages[3].x = 207

        darkTween = {0}
    end,

    load = function()

        if song == 2 then
            enemy = love.filesystem.load("sprites/characters/impostor3.lua")()
            enemyDark = love.filesystem.load("sprites/characters/blackpostor.lua")()
            boyfriendDark = love.filesystem.load("sprites/characters/whitebf.lua")()

            enemy.x, enemy.y = -365, 169
            boyfriend.x, boyfriend.y = 345, 175
            boyfriendDark.x, boyfriendDark.y = 345, 175
            enemyDark.x, enemyDark.y = -365, 169
        end
        dark = true

    end,

    update = function(self, dt)

    end,

    draw = function()
		love.graphics.push()
			love.graphics.translate(camera.x, camera.y)
            love.graphics.translate(camera.ex, camera.ey)


            stageImages[1]:draw()
            stageImages[2]:draw()
            stageImages[3]:draw()
            love.graphics.push()
                love.graphics.scale()
                girlfriend:draw()
                enemy:draw()
                boyfriend:draw()
            love.graphics.pop()

            if darkTween[1] ~= 0 then
                graphics.setColor(0, 0, 0, darkTween[1])
                love.graphics.rectangle("fill", -1000, -1000, 10000, 10000)
                graphics.setColor(1, 1, 1, darkTween[1])
                enemyDark:draw()
                boyfriendDark:draw()
                graphics.setColor(1, 1, 1, 1)
            end

		love.graphics.pop()
        if inCutscene then
            video:draw(-720, -430, 0.8)
        end
    end,

    leave = function()
        stageImages[1] = nil
        stageImages[2] = nil
        stageImages[3] = nil
    end
}


--            love.graphics.draw(cutscene, -720, -430, 0, 0.8, 0.8)
