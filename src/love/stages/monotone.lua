return {
    enter = function()
        bg = graphics.newImage(graphics.imagePath("monotone/SkeldBack"))
        floor = graphics.newImage(graphics.imagePath("monotone/Floor"))
        wires = graphics.newImage(graphics.imagePath("monotone/wires1"))
        stageImages = {
            plagueBGBLUE = {
                bgblue = graphics.newImage(graphics.imagePath("monotone/BackThings")),
                bgblue2 = graphics.newImage(graphics.imagePath("monotone/Reactor")),
                bgblue3 = graphics.newImage(graphics.imagePath("monotone/Reactorlight")),
                visible = true
            },
            plagueBGRED = {
                bgred = graphics.newImage(graphics.imagePath("monotone/backthingsred")),
                bgred2 = graphics.newImage(graphics.imagePath("monotone/ReactorRed")),
                bgred3 = graphics.newImage(graphics.imagePath("monotone/ReactorLightRed")),
                visible = false
            },
            plagueBGPURPLE = {
                defeat = love.filesystem.load("sprites/defeat/defeat.lua")(),
                visible = false
            },
            plagueBGGREEN = {
                bggreen = graphics.newImage(graphics.imagePath("monotone/evilejected")),
                bggreen2 = graphics.newImage(graphics.imagePath("monotone/brombom")),
                speedlines = graphics.newImage(graphics.imagePath("greenWeek/speedLines")),
                visible = false
            }
        }

        saxguy = love.filesystem.load("sprites/monotone/dialogue.lua")()
        saxguy.visible = false

        for i, v in pairs(stageImages) do
             for _, v2 in pairs(v) do
                if type(v2) == "table" then
                    v2.sizeX, v2.sizeY = 2, 2
                end
            end
        end
        
        bg.sizeX, bg.sizeY = 2, 2
        floor.sizeX, floor.sizeY = 2, 2
        wires.sizeX, wires.sizeY = 2, 2

        enemyBF = love.filesystem.load("sprites/characters/bfscary.lua")()
        enemy = love.filesystem.load("sprites/characters/monotone.lua")()
        enemy2 = love.filesystem.load("sprites/characters/impostor.lua")()
        enemy3 = love.filesystem.load("sprites/characters/parasite.lua")()
        enemy4 = love.filesystem.load("sprites/characters/blackdk.lua")()
        boyfriend = love.filesystem.load("sprites/boyfriend.lua")()
        boyfriend2 = love.filesystem.load("sprites/characters/bfFly.lua")()

        boyfriend.x, boyfriend.y = 545, 425
        enemy.x, enemy.y = -500, 300

        enemy2.x, enemy2.y = enemy.x, enemy.y
        enemy3.x, enemy3.y = enemy.x, enemy.y + 80
        enemy4.x, enemy4.y = enemy.x, enemy.y
        enemyBF.x, enemyBF.y = enemy.x, enemy.y + 125

        boyfriend2.x, boyfriend2.y = boyfriend.x, boyfriend.y

        enemy3.sizeX, enemy3.sizeY = 1.05, 1.05
        boyfriend2.sizeX, boyfriend2.sizeY = 0.6, 0.6

        camera.sizeX, camera.sizeY = 0.75, 0.75
        defaultCamZoom = 0.75

        curEnemy = "bf"
        curBF = "bf"
    end,

    load = function()
        for i, v in pairs(stageImages) do
            if i ~= "plagueBGBLUE" then
                v.visible = false
            else
                v.visible = true
            end
        end
        saxguy.visible = false
        curEnemy = "bf"
        curBF = "bf"
    end,

    update = function(self, dt)
        saxguy:update(dt)
        stageImages.plagueBGPURPLE.defeat:update(dt)

        stageImages.plagueBGGREEN.speedlines.offsetY = stageImages.plagueBGGREEN.speedlines.offsetY - 10000 * dt
        if stageImages.plagueBGGREEN.speedlines.offsetY < -9976 then
            stageImages.plagueBGGREEN.speedlines.offsetY = 0
        end

        if beatHandler.onBeat() and beatHandler.getBeat() % 4 == 0 then 
            stageImages.plagueBGPURPLE.defeat:animate("anim", false)
        end

        enemy2:update(dt)
        enemy3:update(dt)
        enemy4:update(dt)
        enemyBF:update(dt)
        boyfriend2:update(dt)
    end,

    draw = function()
        love.graphics.push()
        love.graphics.translate(camera.x + camera.ex, camera.y + camera.ey)
        bg:draw()
        floor:draw()

        if stageImages["plagueBGBLUE"].visible then
            stageImages["plagueBGBLUE"].bgblue:draw()
            stageImages["plagueBGBLUE"].bgblue2:draw()
            stageImages["plagueBGBLUE"].bgblue3:draw()
        elseif stageImages["plagueBGRED"].visible then
            stageImages["plagueBGRED"].bgred:draw()
            stageImages["plagueBGRED"].bgred2:draw()
            stageImages["plagueBGRED"].bgred3:draw()
        elseif stageImages["plagueBGPURPLE"].visible then
            stageImages["plagueBGPURPLE"].defeat:draw()
        elseif stageImages["plagueBGGREEN"].visible then
            love.graphics.push()
                love.graphics.scale(0.8, 0.8)
                stageImages["plagueBGGREEN"].bggreen:draw()
                stageImages["plagueBGGREEN"].bggreen2:draw()
                for i = 1, 4 do 
                    stageImages["plagueBGGREEN"].speedlines.y = (i - 1) * 4170
                    stageImages["plagueBGGREEN"].speedlines:draw()
                end
            love.graphics.pop()
        end

        wires:draw()
        if curEnemy == "monotone" then 
            enemy:draw()
        elseif curEnemy == "impostor" then
            enemy2:draw()
        elseif curEnemy == "parasite" then
            enemy3:draw()
        elseif curEnemy == "blackdk" then
            enemy4:draw()
        elseif curEnemy == "bf" then
            enemyBF:draw()
        end
        if curBF == "bf" then
            boyfriend:draw()
        elseif curBF == "bf-fall" then
            boyfriend2:draw()
        end

        love.graphics.push()
            love.graphics.scale(2, 2)
            graphics.setColor(1, 1, 1, camera.flash)
            love.graphics.rectangle("fill", -2000, -2000, 10000, 10000)
            graphics.setColor(1, 1, 1, 1)
        love.graphics.pop()

		love.graphics.pop()
        if darkMono then 
            graphics.setColor(0, 0, 0, 1)
            love.graphics.rectangle("fill", -2000, -2000, 10000, 10000)
            graphics.setColor(1, 1, 1, 1)
            if saxguy.visible then
                saxguy:draw()
            end
        end
    end,

    leave = function()
        stageImages[1] = nil
        enemy = nil
        boyfriend = nil
    end
}