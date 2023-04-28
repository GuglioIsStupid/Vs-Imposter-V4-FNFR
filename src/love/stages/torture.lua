return {
    enter = function()
        stageImages = {
            graphics.newImage(graphics.imagePath("torture/torture_glow")),
            graphics.newImage(graphics.imagePath("torture/torture_glasses_preblended")),
            graphics.newImage(graphics.imagePath("torture/torture_wall")),
            love.filesystem.load("sprites/torture/leftblades.lua")(),
            love.filesystem.load("sprites/torture/rightblades.lua")(),
            love.filesystem.load("sprites/torture/torture_roze.lua")(),
            love.filesystem.load("sprites/torture/torture_startZiffy.lua")()
        }


        boyfriend = love.filesystem.load("sprites/characters/ziffytorture.lua")()
        boyfriend2 = boyfriend
        enemy = love.filesystem.load("sprites/characters/piptorture.lua")()
        enemyTwo = love.filesystem.load("sprites/characters/cvaltorture.lua")()

        boyfriend.x, boyfriend.y = -17, 218
        enemy.x, enemy.y = -710, 383
        enemyTwo.x, enemyTwo.y = 830, 297
        enemyTwo.sizeX = -1
        stageImages[2].x, stageImages[2].y = -17, 519


        stageImages[4].x, stageImages[4].y = -335, -277
        stageImages[5].x, stageImages[5].y = 297, -277
        stageImages[6].x, stageImages[6].y = -633, -149
        stageImages[7].x, stageImages[7].y = -30, 78


        

        camera:addPoint("boyfriend", 0, -221, 1.1, 1.1)
        camera:addPoint("enemy", 44, -226, 0.95, 0.95)
        camera:addPoint("enemyTwo", -28, -226, 0.95, 0.95)
        camera:addPoint("roze", 0, -121, 0.9, 0.9)
        defaultCamZoom = 0.95, 0.95
		camera.sizeX, camera.sizeY = 0.95, 0.95

        if inDebug then
            cutsceneAlpha = {0}
        end



        

    end,

    load = function()


                

        camera:addPoint("boyfriend", 0, -221, 1.1, 1.1)
        camera:addPoint("enemy", 44, -226, 0.95, 0.95)
        camera:addPoint("enemyTwo", -28, -226, 0.95, 0.95)
        camera:addPoint("roze", 0, -121, 0.9, 0.9)  -- 0.9


        stageImages[4]:animate("anim", true)
        stageImages[5]:animate("anim", true)
        stageImages[7]:animate("anim", true)
        doingRozebudWaitWaitWaitWaitNotLikeThat = false
        camera:moveToPoint(0, "boyfriend")
        setHealthTable = false



        

    end,

    update = function(self, dt)
        enemyTwo:update(dt)
        stageImages[5]:update(dt)
        stageImages[4]:update(dt)

        stageImages[7]:update(dt)

        if mustHitSection then
            if jermaZoom then
                Timer.cancel(jermaZoom)
            end
            jermaZoom = Timer.tween(1.25, camera, {sizeX = 1.1, sizeY = 1.1, scaleX = 1.1, scaleY = 1.1}, "out-quad")
        else
            if jermaZoom then
                Timer.cancel(jermaZoom)
            end
        
            jermaZoom = Timer.tween(1.25, camera, {sizeX = 0.95, sizeY = 0.95, scaleX = 0.95, scaleY = 0.95}, "out-quad")
        end

        

        
        if not enemy:isAnimated() and enemy:getAnimName() ~= "idle" then
            enemy:animate("idle", false)        -- fixed the animation issues
        end



        if musicTime >= 806 and musicTime < 856 then
            doingIntroZiffyThingyIdk = true
            stageImages[7]:animate("anim", false, function()
                doingIntroZiffyThingyIdk = false
                defaultCamZoom = 0.95, 0.95

            end)

        end

        
		if musicTime >= 10322 and musicTime < 10372 then
			doingIntro = false
			if cutsceneTween then
				Timer.cancel(cutsceneTween)
			end
			cutsceneTween = Timer.tween(3, cutsceneAlpha, {[1] = 0}, "linear")
		end



        

		if musicTime >= 82580 and musicTime < 82580+50 then
            doingRozebudWaitWaitWaitWaitNotLikeThat = true
            rozeBudZooming = true
            IDKWHATTOCALLYOU = Timer.after(1, function()
                rozeBudZooming = false
            end)
            camera:moveToPoint(1, "roze")
            stageImages[7]:animate("anim", false)
            boyfriend:animate("rozebud", false)
            camera.zooming = false

        end

        if musicTime >= 87661 and musicTime < 87661+50 then
            camera:moveToPoint(1, "enemy")
            doingRozebudWaitWaitWaitWaitNotLikeThat = false
            if not setHealthTable then
                setHealthTable = true
                healthtable = {health}
            end

            if leftbladetween then
                Timer.cancel(leftbladetween)
            end
            if rightbladetween then
                Timer.cancel(rightbladetween)
            end

            leftbladetween = Timer.tween(1, stageImages[4], {x = -225, y = -256}, "out-quad")
            rightbladetween = Timer.tween(1, stageImages[5], {x = 193, y = -256}, "out-quad")
            doingHealthTween = true
            
            if healthtween then
                Timer.cancel(healthtween)
            end

            healthtween = Timer.tween(1, healthtable, {0.01}, "out-quad")

           -- end)

            Timer.after(1, function()
                doingHealthTween = false
            end)



        end

        if doingHealthTween then
            health = healthtable[1]
        end



                    
        if rozeBudZooming then
            defaultCamZoom = camera.sizeX, camera.sizeY
        end



        
        if musicTime >= 84274 and musicTime < 84274+50 then
            enemy:animate("rozebud", false)
            enemyTwo:animate("rozebud", false)
        end




    end,

    draw = function()
        love.graphics.push()
            
            love.graphics.translate(camera.x, camera.y)
            love.graphics.translate(camera.ex, camera.ey)
            love.graphics.scale(camera.sizeX, camera.sizeY)
            love.graphics.scale(camera.scaleX, camera.scaleY)
            stageImages[3]:draw()
            boyfriend:draw()
            stageImages[4]:draw()

            stageImages[5]:draw()

            stageImages[2]:draw()
            if doingRozebudWaitWaitWaitWaitNotLikeThat then
                stageImages[6]:draw()
            end

            enemy:draw()
            --stageImages[4]:draw()
            enemyTwo:draw()
            love.graphics.setColor(1,1,1,0.5)
            stageImages[1]:draw()

            love.graphics.setColor(0,0,0,cutsceneAlpha[1])
            love.graphics.rectangle("fill", -1000, -1000, 10000, 10000)
            love.graphics.setColor(1,1,1,1)

            if doingIntroZiffyThingyIdk or inDebug then

                stageImages[7]:draw()
            end

            
		love.graphics.pop()
    end,

    leave = function()
        stageImages[1] = nil
        enemy = nil
        boyfriend = nil
    end
}