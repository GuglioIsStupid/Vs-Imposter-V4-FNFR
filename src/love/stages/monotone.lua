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

        boyfriendCount = 2

        enemyBF = love.filesystem.load("sprites/characters/bfscary.lua")()
        enemy = love.filesystem.load("sprites/characters/monotone.lua")()
        enemy2 = love.filesystem.load("sprites/characters/impostor.lua")()
        enemy3 = love.filesystem.load("sprites/characters/parasite.lua")()
        enemy4 = love.filesystem.load("sprites/characters/blackdk.lua")()
        boyfriend = love.filesystem.load("sprites/boyfriend.lua")()
        boyfriend2 = love.filesystem.load("sprites/characters/bfFly.lua")()

        -- TODO: optimize this shiz
        enemyBFghost = love.filesystem.load("sprites/characters/bfscary.lua")()
        enemyghost = love.filesystem.load("sprites/characters/monotone.lua")()
        enemy2ghost = love.filesystem.load("sprites/characters/impostor.lua")()
        enemy3ghost = love.filesystem.load("sprites/characters/parasite.lua")()
        enemy4ghost = love.filesystem.load("sprites/characters/blackdk.lua")()
        bfghost = love.filesystem.load("sprites/boyfriend.lua")()
        boyfriend2ghost = love.filesystem.load("sprites/characters/bfFly.lua")()

        enemyBFghost.colors = {0,0,1}
        enemyBFghost.alpha = 0
        enemyghost.colors = {1,0,0}
        enemyghost.alpha = 0
        enemy2ghost.colors = {1,0,0}
        enemy2ghost.alpha = 0
        enemy3ghost.colors = {1,0,0}
        enemy3ghost.alpha = 0
        enemy4ghost.colors = {1,0,0}
        enemy4ghost.alpha = 0
        bfghost.colors = {0,0,1}
        bfghost.alpha = 0
        boyfriend2ghost.colors = {0,0,1}
        boyfriend2ghost.alpha = 0

        boyfriend.x, boyfriend.y = 545, 425
        enemy.x, enemy.y = -500, 300

        enemy2.x, enemy2.y = enemy.x, enemy.y + 80
        enemy3.x, enemy3.y = enemy.x, enemy.y
        enemy4.x, enemy4.y = enemy.x, enemy.y
        enemyBF.x, enemyBF.y = enemy.x, enemy.y + 125

        boyfriend2.x, boyfriend2.y = boyfriend.x, boyfriend.y

        enemy3.sizeX, enemy3.sizeY = 1.05, 1.05
        boyfriend2.sizeX, boyfriend2.sizeY = 0.6, 0.6

        enemyBFghost.x, enemyBFghost.y = enemyBF.x, enemyBF.y
        enemyghost.x, enemyghost.y = enemy.x, enemy.y
        enemy2ghost.x, enemy2ghost.y = enemy2.x, enemy2.y
        enemy3ghost.x, enemy3ghost.y = enemy3.x, enemy3.y
        enemy4ghost.x, enemy4ghost.y = enemy4.x, enemy4.y
        bfghost.x, bfghost.y = boyfriend.x, boyfriend.y
        boyfriend2ghost.x, boyfriend2ghost.y = boyfriend2.x, boyfriend2.y
        boyfriend2ghost.sizeX, boyfriend2ghost.sizeY = 0.6, 0.6

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

        enemyghost:update(dt)
        enemy2ghost:update(dt)
        enemy3ghost:update(dt)
        enemy4ghost:update(dt)
        enemyBFghost:update(dt)

        boyfriend2:update(dt)

        bfghost:update(dt)
        boyfriend2ghost:update(dt)
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
            graphics.setColor(enemyghost.colors[1], enemyghost.colors[2], enemyghost.colors[3], enemyghost.alpha)
            enemyghost:draw()
            graphics.setColor(1, 1, 1, 1)
            enemy:draw()
        elseif curEnemy == "impostor" then
            graphics.setColor(enemy2ghost.colors[1], enemy2ghost.colors[2], enemy2ghost.colors[3], enemy2ghost.alpha)
            enemy2ghost:draw()
            graphics.setColor(1, 1, 1, 1)
            enemy2:draw()
        elseif curEnemy == "parasite" then
            graphics.setColor(enemy3ghost.colors[1], enemy3ghost.colors[2], enemy3ghost.colors[3], enemy3ghost.alpha)
            enemy3ghost:draw()
            graphics.setColor(1, 1, 1, 1)
            enemy3:draw()
        elseif curEnemy == "blackdk" then
            graphics.setColor(enemy4ghost.colors[1], enemy4ghost.colors[2], enemy4ghost.colors[3], enemy4ghost.alpha)
            enemy4ghost:draw()
            graphics.setColor(1, 1, 1, 1)
            enemy4:draw()
        elseif curEnemy == "bf" then
            graphics.setColor(enemyBFghost.colors[1], enemyBFghost.colors[2], enemyBFghost.colors[3], enemyBFghost.alpha)
            enemyBFghost:draw()
            graphics.setColor(1, 1, 1, 1)
            enemyBF:draw()
        end
        if curBF == "bf" then
            graphics.setColor(bfghost.colors[1], bfghost.colors[2], bfghost.colors[3], bfghost.alpha)
            bfghost:draw()
            graphics.setColor(1, 1, 1, 1)
            boyfriend:draw()
        elseif curBF == "bf-fall" then
            graphics.setColor(boyfriend2ghost.colors[1], boyfriend2ghost.colors[2], boyfriend2ghost.colors[3], boyfriend2ghost.alpha)
            boyfriend2ghost:draw()
            graphics.setColor(1, 1, 1, 1)
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
        boyfriendCount = 1
    end
}