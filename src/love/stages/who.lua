return {
    enter = function()
        stageImages = {
            ["bg"] = graphics.newImage(graphics.imagePath("who/deadguy")),
            ["meeting"] = graphics.newImage(graphics.imagePath("who/emergency")),
            ["white"] = graphics.newImage(graphics.imagePath("who/mad mad dude")),
            ["KYS"] = graphics.newImage(graphics.imagePath("who/KILLYOURSELF")),     -- i want to
            ["redShit"] = love.filesystem.load("sprites/who/meeting.lua")()
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
        camera.scaleX, camera.scaleY = 0.7, 0.7
        camera:addPoint("middle", 0, -200) --0.7
        camera:addPoint("boyfriend", -420, -389) -- 1.3
        camera:addPoint("enemy", 371, -389) --1.3

        camera:moveToPoint(0, "middle")

    end,

    update = function(self, dt)

        if not enemy:isAnimated() and enemy:getAnimName() ~= "idle" then
            enemy:animate("idle", false)        -- fixed the animation issues
        end

        

    end,

    draw = function()
        love.graphics.push()
            love.graphics.translate(camera.x, camera.y)
            love.graphics.translate(camera.ex, camera.ey)
			love.graphics.scale(camera.esizeX, camera.esizeY)
			love.graphics.scale(camera.sizeX, camera.sizeY)

            stageImages["bg"]:draw()

            if mad then
                enemyTwo:draw()
                boyfriendTwo:draw()
            else
                enemy:draw()
                boyfriend:draw()
            end

		love.graphics.pop()
    end,

    leave = function()
        stageImages[1] = nil
        enemy = nil
        boyfriend = nil
    end
}