return {
    enter = function()
        stageImages = {
            ["cargo"] = graphics.newImage(graphics.imagePath("yellowWeek/airship/cargo")),
            ["airship"] = graphics.newImage(graphics.imagePath("yellowWeek/airship/airshipFlashback")),
        }

        stageImages["cargo"].y = 0
        stageImages["airship"].x, stageImages["airship"].y = 185, 289
        stageImages["airship"].sizeX, stageImages["airship"].sizeY = 1.3, 1.3

        enemyTwo = love.filesystem.load("sprites/characters/blackdk.lua")()
        enemy = love.filesystem.load("sprites/characters/whitedk.lua")()

        girlfriend.x, girlfriend.y = 0, 0
        enemy.x, enemy.y = -861, 419
        enemyTwo.x, enemyTwo.y = -432, 279
        boyfriend.x, boyfriend.y = 430, 382

        camera:addPoint("enemy", 312, -238)
        camera:addPoint("boyfriend", -35, -238)
        camera.sizeX, camera.sizeY = 0.8, 0.8
        camera.scaleX, camera.scaleY = 0.8, 0.8

        myMassiveCock = {0, 0}
    end,

    load = function()
        myMassiveCock = {0, 0}
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

        if not enemy:isAnimated() then
            enemy:animate("idle", false)
        end
        if not enemyTwo:isAnimated() then
            enemyTwo:animate("idle", false)
        end
        if not boyfriend:isAnimated() then
            boyfriend:animate("idle", false)
        end

    end,

    draw = function()
		love.graphics.push()
			love.graphics.translate(camera.x, camera.y)
            love.graphics.translate(camera.ex, camera.ey)

            stageImages["cargo"]:draw()

            enemyTwo:draw()
            

            enemy:draw()
            love.graphics.setColor(0, 0, 0, myMassiveCock[1])
            love.graphics.rectangle("fill", -1000, -1000, 10000, 10000)
            love.graphics.setColor(1, 1, 1, myMassiveCock[2])
            stageImages["airship"]:draw()
            love.graphics.setColor(1, 1, 1, 1)

            if inDebug then
                love.graphics.setColor(1, 1, 1, 0.5)
                stageImages["airship"]:draw()
                love.graphics.setColor(1, 1, 1, 1)
            end

			boyfriend:draw()
		love.graphics.pop()
    end,

    leave = function()
        stageImages[1] = nil
        stageImages[2] = nil
        stageImages[3] = nil
    end
}