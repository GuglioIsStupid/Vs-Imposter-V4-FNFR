return {
    enter = function()
        stageImages = {
            ["bg"] = graphics.newImage(graphics.imagePath("who/deadguy")),
            ["emergency"] = graphics.newImage(graphics.imagePath("who/emergency")),
            ["white"] = graphics.newImage(graphics.imagePath("who/mad mad dude")),
            ["KYS"] = graphics.newImage(graphics.imagePath("who/KILLYOURSELF")),     -- i want to
            ["meeting"] = love.filesystem.load("sprites/who/meeting.lua")(),
            ["starsBG"] = graphics.newImage(graphics.imagePath("impmenu/starBG")),
            ["starsFG"] = graphics.newImage(graphics.imagePath("impmenu/starFG")),
        }


        boyfriend = love.filesystem.load("sprites/characters/whitewho.lua")()
        enemy = love.filesystem.load("sprites/characters/bluewhonormal.lua")()

        boyfriendTwo = love.filesystem.load("sprites/characters/whitemad.lua")()
        enemyTwo = love.filesystem.load("sprites/characters/bluewho.lua")()


        enemy.sizeX = -1
        enemyTwo.sizeX = -1    --backwards facing fucker just turn around its not that hard

        enemy.x, enemy.y = -512, 430
        enemyTwo.x, enemyTwo.y = enemy.x, enemy.y
        boyfriend.x, boyfriend.y = 476, 430
        boyfriendTwo.x, boyfriendTwo.y = boyfriend.x, boyfriend.y

    end,

    load = function()

        camera.sizeX, camera.sizeY = 0.7, 0.7
        defaultCamZoom = 0.7, 0.7
        camera:addPoint("middle", 0, -200, 0.7, 0.7)
        camera:addPoint("boyfriend", -420, -389, 1.2, 1.2)
        camera:addPoint("enemy", 371, -389, 1.2, 1.2)

        camera:moveToPoint2(0, "middle", false)
        camera:addPoint("fuckingZoomed", 0, 0, 0.5, 0.5)

        curBoyfriend = "whitewho"
        curEnemy = "bluewhonormal"

    end,

    update = function(self, dt)
        stageImages["meeting"]:update(dt)
    end,

    draw = function()
        love.graphics.push()
            love.graphics.translate(camera.x, camera.y)
            love.graphics.translate(camera.ex, camera.ey)
			love.graphics.scale(camera.esizeX, camera.esizeY)
			love.graphics.scale(camera.sizeX, camera.sizeY)

            stageImages["bg"]:draw()

            if curEnemy == "bluewhonormal" then 
                if enemy and enemy.draw then enemy:draw() end
            elseif curEnemy == "bluewho" then
                enemyTwo:draw()
            end

            if curBoyfriend == "whitewho" then
                if boyfriend and boyfriend.draw then boyfriend:draw() end
            elseif curBoyfriend == "whitemad" then
                boyfriendTwo:draw()
            end

            if drawEject then
                stageImages["starsBG"]:draw()
                stageImages["starsFG"]:draw()
                stageImages["white"]:draw()
            end

		love.graphics.pop()

        if meetingLol then
            stageImages["meeting"]:draw() 
            if drawEmergency then 
                stageImages["emergency"]:draw()
                stageImages["KYS"]:draw()
            end           
        end
    end,

    leave = function()
        stageImages[1] = nil
        enemy = nil
        boyfriend = nil
    end
}