return {
    enter = function()
        stageImages = {
            ["BG"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("finale/bg"))),
            ["bgg"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("finale/bgg"))),
            ["dark"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("finale/dark"))),
            ["dead"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("finale/dead"))),
            ["fore"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("finale/fore"))),
            ["lamp"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("finale/lamp"))),
            ["splat"] = graphics.newImage(love.graphics.newImage(graphics.imagePath("finale/splat"))),
            ["finaleFlashback"] = love.filesystem.load("sprites/finale/finaleFlashback.lua")(),
            ["light"] = love.filesystem.load("sprites/finale/light.lua")(),
            ["defeat"] = love.filesystem.load("sprites/defeat/defeat.lua")(),
        }

        curStage = "finalem"

        cock = 0

    end,

    load = function()
        flash.alpha = 0
    end,

    update = function(self, dt)
        stageImages["finaleFlashback"]:update(dt)
        stageImages["light"]:update(dt)
        stageImages["defeat"]:update(dt)

        if musicTime >= 4800 and musicTime <= 4850 then 
            doingFlashback = true
            stageImages["finaleFlashback"]:animate("moog", false)
            cock = 0.6
        elseif musicTime >= 6000 and musicTime <= 6050 then
            stageImages["finaleFlashback"]:animate("toog", false)
        elseif musicTime >= 7200 and musicTime <= 7250 then
            stageImages["finaleFlashback"]:animate("doog", false)
        elseif musicTime >= 8400 and musicTime <= 8450 then
            doingFlashback = false
            if flash.alpha == 0 then weeksFinale:doFlashTimed() end
            cock = 0
        end

        if musicTime >= 20400 and musicTime <= 20450 then 
            health = 10
            curStage = "finale"
        end

        if musicThres ~= oldMusicThres and math.fmod(absMusicTime, 240000 / bpm) < 100 then
			stageImages["defeat"]:animate("anim", false)
            stageImages["light"]:animate("anim", false)
		end
    end,

    draw = function()
        if curStage == "finalem" then
            love.graphics.push()
                love.graphics.translate(cam.x * 0.8, cam.y * 0.8)

                stageImages["defeat"]:draw()
            love.graphics.pop()
            love.graphics.push()
                love.graphics.translate(cam.x, cam.y)

                enemy:draw()
                boyfriend:draw()

                graphics.setColor(1, 1, 1, cock)
                if doingFlashback then 
                    stageImages["finaleFlashback"]:draw()
                end
                graphics.setColor(1, 1, 1, 1)
            love.graphics.pop()
        elseif curStage == "finale" then
            love.graphics.push()
                love.graphics.translate(cam.x * 0.9, cam.y * 0.9)
                stageImages["bgg"]:draw()
                stageImages["BG"]:draw()

                
            love.graphics.pop() 
        end
    end,

    leave = function()
        stageImages[1] = nil
        stageImages[2] = nil
        stageImages[3] = nil
    end
}