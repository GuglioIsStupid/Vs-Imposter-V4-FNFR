return {
    enter = function()
        stageImages = {
            ["backerground"] = graphics.newImage(graphics.imagePath("voting-time/backer_groung_voting")),
            ["background"] = graphics.newImage(graphics.imagePath("voting-time/main_bg_meeting")),
            ["chairs"] = graphics.newImage(graphics.imagePath("voting-time/CHAIRS!!!!!!!!!!!!!!!")),
            ["table"] = graphics.newImage(graphics.imagePath("voting-time/table_voting")),
        }

        enemy = love.filesystem.load("sprites/characters/warchief.lua")()
        enemy2 = love.filesystem.load("sprites/characters/jelqer.lua")()

        boyfriend2 = love.filesystem.load("sprites/characters/madgus.lua")()

        girlfriend.x, girlfriend.y = -200, -445
        enemy.x, enemy.y = -770, 90
        boyfriend.x, boyfriend.y = 770, 178

        boyfriend2.x, boyfriend2.y = 530, 30
        enemy2.x, enemy2.y = -530, 30

        stageImages["backerground"].y = -94
        stageImages["background"].y = 0
        stageImages["chairs"].y = 187
        stageImages["table"].y = 122

        camera.sizeX, camera.sizeY = 1.25, 1.25
		defaultCamZoom = 1.25, 1.25
    end,

    load = function()

    end,

    update = function(self, dt)

        if not enemy2:isAnimated() then            -- you can remove this if you want, i was just bored
            if enemyDance == "left" then
                enemyDance = "right"
            else
                enemyDance = "left"
            end
            if enemyDance == "left" then
                enemy2:animate("danceLEFT", false)
            else
                enemy2:animate("danceRIGHT", false)
            end
        end

    end,

    draw = function()
        love.graphics.push()
			love.graphics.translate(camera.x, camera.y)
            stageImages["backerground"]:draw()
            stageImages["background"]:draw()
            stageImages["chairs"]:draw()
            enemy2:draw()
            enemy:draw()
            boyfriend2:draw()
            boyfriend:draw()
            stageImages["table"]:draw()
		love.graphics.pop()
    end,

    leave = function()
        stageImages[1] = nil
        stageImages[2] = nil
        stageImages[3] = nil
    end
}