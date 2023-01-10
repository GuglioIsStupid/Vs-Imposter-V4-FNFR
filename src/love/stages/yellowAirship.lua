return {
    enter = function()
        stageImages = {
            graphics.newImage(love.graphics.newImage(graphics.imagePath("yellowWeek/airship/newAirship/fartingSky"))),
            graphics.newImage(love.graphics.newImage(graphics.imagePath("yellowWeek/airship/newAirship/backSkyyellow"))),
            graphics.newImage(love.graphics.newImage(graphics.imagePath("yellowWeek/airship/newAirship/cloudYellow 1"))),
            graphics.newImage(love.graphics.newImage(graphics.imagePath("yellowWeek/airship/newAirship/window"))),
            graphics.newImage(love.graphics.newImage(graphics.imagePath("yellowWeek/airship/newAirship/backDlowFloor"))),
            graphics.newImage(love.graphics.newImage(graphics.imagePath("yellowWeek/airship/newAirship/DlowFloor"))),
            graphics.newImage(love.graphics.newImage(graphics.imagePath("yellowWeek/airship/newAirship/yellow"))),
        }

        stageImages[1].x, stageImages[1].y = 10, 117
        stageImages[2].x, stageImages[2].y = 2, 92
        stageImages[3].x, stageImages[3].y = 3, -4
        stageImages[4].x, stageImages[4].y = 13, -15
        stageImages[5].x, stageImages[5].y = -46, 323
        stageImages[6].x, stageImages[6].y = -215, 243
        stageImages[7].x, stageImages[7].y = 0, 188

        
        stageImages[3].sizeY, stageImages[3].sizeX = 0.5, 0.5

        enemy = love.filesystem.load("sprites/yellowWeek/yellow.lua")()
        enemyTwo = enemy

        whiteAwkward = love.filesystem.load("sprites/yellowWeek/white_awkward.lua")()


        girlfriend.x, girlfriend.y = -200, -445
        enemy.x, enemy.y = -300, 75
        boyfriend.x, boyfriend.y = 290, -110
    end,

    load = function()

    end,

    update = function(self, dt)

    end,

    draw = function()
        love.graphics.push()
        love.graphics.translate(cam.x * 0.8, cam.y * 0.8)
            stageImages[1]:draw()
            stageImages[2]:draw()

        love.graphics.pop()
        love.graphics.push()
            love.graphics.translate(cam.x, cam.y)
            stageImages[3]:draw()
            stageImages[4]:draw()
            stageImages[5]:draw()
            stageImages[6]:draw()
            stageImages[7]:draw()

            whiteAwkward:draw()
            girlfriend:draw()

            enemyTwo:draw()
            enemy:draw()
                
            boyfriend:draw()

        love.graphics.pop()
        love.graphics.push()
            love.graphics.translate(cam.x * 1.1, cam.y * 1.1)

        love.graphics.pop()
    end,

    leave = function()
        stageImages[1] = nil
        stageImages[2] = nil
        stageImages[3] = nil
    end
}