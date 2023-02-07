return {
    enter = function()
        stageImages = {
            graphics.newImage(graphics.imagePath("freeplaySongs/esculent/background")), -- stage-back
        }


        enemy = love.filesystem.load("sprites/characters/esculent.lua")()
        boyfriend = love.filesystem.load("sprites/boyfriend.lua")()

        


    end,

    load = function()
        doMustHitSectionCam = false

    end,

    update = function(self, dt)

    end,

    draw = function()
        love.graphics.push()
            love.graphics.translate(camera.x, camera.y)
            love.graphics.translate(camera.ex, camera.ey)
            stageImages[1]:draw()
			enemy:draw()
		love.graphics.pop()
    end,

    leave = function()
        stageImages[1] = nil
        enemy = nil
        boyfriend = nil
        doMustHitSectionCam = true
    end
}