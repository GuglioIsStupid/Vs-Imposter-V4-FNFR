return {
    enter = function()
        stageImages = {
            ["WTF"] = love.filesystem.load("sprites/o2/wtf.lua")(),
            ["light"] = graphics.newImage(graphics.imagePath("o2/O2lighting")),
            ["lounge"] = graphics.newImage(graphics.imagePath("o2/lounge")),
        }

        enemy = love.filesystem.load("sprites/characters/jorsawsee.lua")()
        enemy2 = love.filesystem.load("sprites/characters/meangus.lua")()

        enemy2.sizeX = -1

        stageImages["light"].sizeX, stageImages["light"].sizeY = 1.2, 1.2

        girlfriend.x, girlfriend.y = -200, -445
        enemy.x, enemy.y = -504, 156
        boyfriend.x, boyfriend.y = 278, 215
        enemy2.x, enemy2.y = -504, 156

        
    end,

    load = function()
        fuckerIsDead = false

        camera.sizeX, camera.sizeY = 0.9, 0.9
        camera.scaleX, camera.scaleY = 0.9, 0.9

    end,

    update = function(self, dt)

    end,

    draw = function()
        graphics.setColor(camera:getColor())
		love.graphics.push()
			love.graphics.translate(camera.x, camera.y)

            stageImages["lounge"]:draw()

            if not fuckerIsDead then
			    enemy:draw()
            else
                enemy2:draw()
            end
			boyfriend:draw()
		love.graphics.pop()
		love.graphics.push()

        graphics.setColor(1,1,1)
        if showWTF then 
            stageImages["WTF"]:draw()
        end
        graphics.setColor(camera:getColor())
		love.graphics.pop()
        if fuckerIsDead or inDebug then 
            stageImages["light"]:draw()
        end
    end,

    leave = function()
        stageImages[1] = nil
        stageImages[2] = nil
        stageImages[3] = nil
    end
}