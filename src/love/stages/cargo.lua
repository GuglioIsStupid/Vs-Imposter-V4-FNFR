return {
    enter = function()
        stageImages = {
            graphics.newImage(graphics.imagePath("yellowWeek/airship/cargo")),
            graphics.newImage(graphics.imagePath("yellowWeek/airship/airshipFlashback")),
        }

        stageImages[1].y = 0
        stageImages[2].y = 0


        enemyTwo = love.filesystem.load("sprites/characters/yellow.lua")()
        enemy = love.filesystem.load("sprites/characters/white.lua")()

        girlfriend.x, girlfriend.y = 0, 0
        enemy.x, enemy.y = 0, 0
        boyfriend.x, boyfriend.y = 300, 0

        myMassiveCock = {0, 0}
    end,

    load = function()
        myMassiveCock = {0}
    end,

    update = function(self, dt)

        if musicTime >= 106800 and musicTime < 106825 then 
            Timer.tween(2, myMassiveCock, {[1] = 1}, "linear")
		end

		if musicTime >= 116400 and musicTime < 116425 then 
            if secondTween then
                Timer.cancel(secondTween)
            end
            secondTween = Timer.tween(10, myMassiveCock, {[2] = 1}, "linear")
		end

        --[[

		if musicTime >= 126000 and musicTime < 126025 then
            if secondTween then
                Timer.cancel(secondTween)
            end 

            secondTween = Timer.tween(3, myMassiveCock, {[1] = 0}, "linear")
		end

        --]]

        if musicTime >= 127200 and musicTime < 127225 then 
            myMassiveCock[1] = 0
            myMassiveCock[2] = 0
        end

    end,

    draw = function()
		love.graphics.push()
			love.graphics.translate(camera.x, camera.y)
            love.graphics.translate(camera.ex, camera.ey)

            stageImages[1]:draw()
            enemy:draw()
            enemyTwo:draw()
            love.graphics.setColor(0, 0, 0, myMassiveCock[1])
            love.graphics.rectangle("fill", -1000, -1000, 10000, 10000)
            love.graphics.setColor(1, 1, 1, myMassiveCock[2])
            stageImages[2]:draw()
            love.graphics.setColor(1, 1, 1, 1)

			boyfriend:draw()
		love.graphics.pop()
    end,

    leave = function()
        stageImages[1] = nil
        stageImages[2] = nil
        stageImages[3] = nil
    end
}