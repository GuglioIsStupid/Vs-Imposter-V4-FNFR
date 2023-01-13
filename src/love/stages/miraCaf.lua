return {
    enter = function()
        stageImages = {
            graphics.newImage(love.graphics.newImage(graphics.imagePath("greenWeek/Mira"))),
            graphics.newImage(love.graphics.newImage(graphics.imagePath("greenWeek/vending_machine"))),
            graphics.newImage(love.graphics.newImage(graphics.imagePath("greenWeek/table_bg"))),

        }


        enemy = love.filesystem.load("sprites/characters/crewmate.lua")()
        enemyDark = love.filesystem.load("sprites/characters/blackpostor.lua")()
      
        girlfriend.x, girlfriend.y = -200, -445
        enemy.x, enemy.y = -550, -500
        boyfriend.x, boyfriend.y = 260, -125
    end,

    load = function()

        if song == 2 then
            enemy = love.filesystem.load("sprites/characters/impostor3.lua")()
            enemyDark = love.filesystem.load("sprites/characters/blackpostor.lua")()
            boyfriendDark = love.filesystem.load("sprites/characters/whitebf.lua")()
        end

        dark = true

    end,

    update = function(self, dt)

    end,

    draw = function()
		love.graphics.push()
			love.graphics.translate(cam.x, cam.y)


             stageImages[1]:draw()
            stageImages[2]:draw()
            stageImages[3]:draw()
            girlfriend:draw()
            enemy:draw()
            boyfriend:draw()

            love.graphics.setColor(0, 0, 0, darkTween[1])
            love.graphics.rectangle("fill", -1000, -1000, 10000, 10000)
            love.graphics.setColor(1, 1, 1, darkTween[1])
            enemyDark:draw()
            boyfriendDark:draw()
            love.graphics.setColor(1, 1, 1, 1)

		love.graphics.pop()
        if inCutscene then
            love.graphics.draw(video, -720, -430, 0, 0.8, 0.8)
    
        end
    end,

    leave = function()
        stageImages[1] = nil
        stageImages[2] = nil
        stageImages[3] = nil
    end
}


--            love.graphics.draw(cutscene, -720, -430, 0, 0.8, 0.8)
