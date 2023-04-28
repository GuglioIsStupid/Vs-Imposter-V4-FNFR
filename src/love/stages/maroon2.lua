return {
    enter = function()
        
        stageImages = {                   -- i have no fucking clue why this needs to be in load but for some reason it doesnt work in enter
        ["ember"] = love.filesystem.load("sprites/maroon/ember.lua")(),
        ["bg"] = love.filesystem.load("sprites/maroon/wallBP.lua")(),
        ["bubbles"] = love.filesystem.load("sprites/maroon/bubbles.lua")(),
        ["platform"] = graphics.newImage(graphics.imagePath("maroonStage2/platform")),
        ["overlay"] = graphics.newImage(graphics.imagePath("maroonStage2/LAVA OVERLAY IN GAME")),

    }

        embers = {}

    stageImages["ember"]:animate("anim", true)
    stageImages["bg"]:animate("anim", true)
    stageImages["bubbles"]:animate("anim", true)






        enemy = love.filesystem.load("sprites/characters/maroonP.lua")()
        boyfriend = love.filesystem.load("sprites/characters/bflava.lua")()

        boyfriend.x, boyfriend.y = 451, 254
        enemy.x, enemy.y = -319, 36
        stageImages["platform"].x, stageImages["platform"].y = 67, 475
        stageImages["bubbles"].x, stageImages["bubbles"].y = 0, 619

        camera:addPoint("boyfriend", -84, -142, 0.75, 0.75)  --  0.75
        camera:addPoint("enemy", 0, -112, 0.65, 0.65)  --  0.65


        enemyghost = love.filesystem.load("sprites/characters/maroonP.lua")()
        bfghost = love.filesystem.load("sprites/characters/bfpolus.lua")()

        embers = {}




    end,

    load = function()



    end,

    update = function(self, dt)
        stageImages["ember"]:update(dt)

        stageImages["bg"]:update(dt)
        stageImages["bubbles"]:update(dt)

        
        

        if mustHitSection then
            if jermaZoom then
                Timer.cancel(jermaZoom)
            end
            jermaZoom = Timer.tween(1.25, camera, {sizeX = 0.75, sizeY = 0.75, scaleX = 0.75, scaleY = 0.75}, "out-quad")
        else
            if jermaZoom then
                Timer.cancel(jermaZoom)
            end
            jermaZoom = Timer.tween(1.25, camera, {sizeX = 0.65, sizeY = 0.65, scaleX = 0.65, scaleY = 0.65}, "out-quad")
        end

        --]]
        if not enemy:isAnimated() and enemy:getAnimName() ~= "idle" then
            enemy:animate("idle", false)        -- fixed the animation issues
        end

        if beatHandler.onBeat() then 
            embers[#embers+1] = {x = love.math.random(-push.getWidth()/2, push.getWidth()/2), y = 730, speed = love.math.random(80, 200), scale = 1}
        end
        if #embers > 0 then 
            for i, v in ipairs(embers) do
                v.y = v.y - v.speed * dt
                if v.y < -480 then
                    table.remove(embers, i)
                end
                v.scale = v.scale - 0.08 * dt
                if v.scale <= 0 then
                    table.remove(embers, i)
                end
            end
        end
    end,

    draw = function()
        love.graphics.push()
            love.graphics.translate(camera.x, camera.y)
            love.graphics.translate(camera.ex, camera.ey)

            --stageImages[1]:draw()
            stageImages["bg"]:draw()
            stageImages["bubbles"]:draw()
            stageImages["platform"]:draw()
            boyfriend:draw()
            enemy:draw()
            if #embers > 0 then 
                for i, v in ipairs(embers) do
                    stageImages["ember"].x, stageImages["ember"].y = v.x, v.y
                    stageImages["ember"].sizeX, stageImages["ember"].sizeY = v.scale, v.scale
                    stageImages["ember"]:draw()
                end
            end
            love.graphics.setColor(1, 1, 1, 0.3)
            stageImages["overlay"]:draw()
            love.graphics.setColor(1, 1, 1, 1)
		love.graphics.pop()
    end,

    leave = function()
        stageImages[1] = nil
        enemy = nil
        boyfriend = nil
    end
}