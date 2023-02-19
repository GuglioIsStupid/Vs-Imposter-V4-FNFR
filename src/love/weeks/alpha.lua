alphaMoogus = {
    init = function()
        weekString = "alpha"
        weeksOld.init()

        sheets["oldpostor"] = love.graphics.newImage(graphics.imagePath("alpha/oldpostor"))
        enemy = love.filesystem.load("sprites/alpha/oldpostor.lua")()

        HOTASS = Image(graphics.imagePath("alpha/HOTASS"))

        alphaMoogus.load()

        boyfriend.x = 400
        boyfriend.y = 145

        girlfriend.y = -125

        enemy.x = -400
        enemy.y = -150

        enemyFrameTimer = 0
    end,

    load = function()
        weeksOld.load()

        inst = love.audio.newSource("songs/alpha-moogus/Inst.ogg", "stream")
        voices = love.audio.newSource("songs/alpha-moogus/Voices.ogg", "stream")

        alphaMoogus.initUI()

        inst:play()
        weeksOld.voicesPlay()
    end,

    initUI = function()
        weeksOld.initUI()

        weeksOld.generateNotes(love.filesystem.load("songs/alpha-moogus/alpha-moogus-hard.lua")())
    end,

    update = function(dt)
        if gameOver then 

        end

        weeksOld.updateInput()
        weeksOld.update(dt)

        if enemyFrameTimer >= 12 then 
            enemy:animate("idle", false) 
            enemyFrameTimer = 0
        end
        enemyFrameTimer = enemyFrameTimer + 24 * dt

        weeksOld.updateUI(dt)
        weeksOld.updateEnd(dt)
    end,

    draw = function()
        love.graphics.push()
            love.graphics.translate(graphics.getWidth()/2, graphics.getHeight()/2)
            weeksOld.draw()

            love.graphics.push()
                love.graphics.push()
                    love.graphics.scale(cam.sizeX, cam.sizeY)
                    love.graphics.translate(cam.x, cam.y)

                    HOTASS:draw()
                    girlfriend:draw()
                    boyfriend:draw()
                    enemy:draw()
                    
                love.graphics.pop()
                love.graphics.push()
                    love.graphics.scale(uiScale.alphax, uiScale.alphay)
                    alphaMoogus.drawUI()
                love.graphics.pop()
            love.graphics.pop()
        love.graphics.pop()
    end,

    drawUI = function()
        weeksOld.drawUI()
    end,

    stop = function()
        weeksOld.stop()
    end,
}