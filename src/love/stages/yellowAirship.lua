return {
    enter = function()
        stageImages = {
            graphics.newImage(graphics.imagePath("yellowWeek/airship/newAirship/fartingSky")),
            graphics.newImage(graphics.imagePath("yellowWeek/airship/newAirship/backSkyyellow")),
            graphics.newImage(graphics.imagePath("yellowWeek/airship/newAirship/cloudYellow 1")),
            graphics.newImage(graphics.imagePath("yellowWeek/airship/newAirship/window")),
            graphics.newImage(graphics.imagePath("yellowWeek/airship/newAirship/backDlowFloor")),
            graphics.newImage(graphics.imagePath("yellowWeek/airship/newAirship/DlowFloor")),
            graphics.newImage(graphics.imagePath("yellowWeek/airship/newAirship/YELLOW")),
            love.filesystem.load("sprites/yellowWeek/white_awkward.lua")(),
            love.filesystem.load("sprites/characters/bfshock.lua")()
        }

        stageImages[1].x, stageImages[1].y = 10, 117
        stageImages[2].x, stageImages[2].y = 2, 92
        stageImages[3].x, stageImages[3].y = 3, -4
        stageImages[4].x, stageImages[4].y = 13, -15
        stageImages[5].x, stageImages[5].y = -46, 323
        stageImages[6].x, stageImages[6].y = -215, 243
        stageImages[7].x, stageImages[7].y = 0, 188

        stageImages[9].x, stageImages[9].y = 368, 97

        
        stageImages[3].sizeY, stageImages[3].sizeX = 0.5, 0.5

        stageImages[8].x, stageImages[8].y = -65, 60
        stageImages[7].x, stageImages[7].y = 74, 222

        enemy = love.filesystem.load("sprites/characters/yellow.lua")()
        enemyTwo = enemy

        fakeEnemy = enemy

        boyfriend = love.filesystem.load("sprites/boyfriend.lua")()


        girlfriend.x, girlfriend.y = -77, -122
        enemy.x, enemy.y = -537, 75
        boyfriend.x, boyfriend.y = 368, 97
    end,

    load = function()

        fuckingDead = false

        camera.sizeX, camera.sizeY = 0.7, 0.7
        camera.scaleX, camera.scaleY = 0.7, 0.7

        camera:addPoint("enemy", 234, 11, 0.7, 0.7)
        camera:addPoint("boyfriend", -40, 11, 0.7, 0.7)


        if song == 3 then
            enemy = love.filesystem.load("sprites/characters/white.lua")()
            enemy.x, enemy.y = -537, 75

        end

    end,

    update = function(self, dt)

        stageImages[8]:update(dt)
        stageImages[9]:update(dt)

        if inDebug then
            if not enemy:isAnimated() or enemy:getAnimName() == "idle" then
                enemy:animate("fuckingDies", false)
            end
        end

        if song == 2 then
            if musicTime >= 125600 and musicTime < 125650 then
                fuckingDying = true
                fakeEnemy:animate("fuckingDies", false, function()
                    fuckingDead = true
                end)
            end
        end

    end,

    draw = function()
        love.graphics.push()
        love.graphics.translate(camera.x * 0.8, camera.y * 0.8)
        love.graphics.translate(camera.ex * 0.8, camera.ey * 0.8)
        love.graphics.scale(camera.sizeX, camera.sizeY)

            stageImages[1]:draw()
            stageImages[2]:draw()

        love.graphics.pop()
        love.graphics.push()
            love.graphics.translate(camera.x, camera.y)
            love.graphics.translate(camera.ex, camera.ey)

            stageImages[3]:draw()
            stageImages[4]:draw()
            stageImages[5]:draw()
            stageImages[6]:draw()
           -- stageImages[7]:draw()

            stageImages[8]:draw()

            girlfriend:draw()


            if song == 5 then
                enemyTwo:draw()
            end

            if not fuckingDead then
                enemy:draw()
            else
                if fakeEnemy:isAnimated() then         -- i thought this would fix the animation speed but it didnt
                    fakeEnemy:draw()
                else
                    stageImages[7]:draw()
                end
            end

            if inDebug then
                stageImages[7]:draw()
            end

            if not fuckingDying then
                boyfriend:draw()
            else
                stageImages[9]:draw()
            end
                
 

        love.graphics.pop()

    end,

    leave = function()
        stageImages[1] = nil
        stageImages[2] = nil
        stageImages[3] = nil
    end
}