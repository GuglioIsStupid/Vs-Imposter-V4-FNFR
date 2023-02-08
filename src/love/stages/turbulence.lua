return {
    enter = function()
        stageImages = {
            ["clowfront"] = love.filesystem.load("sprites/turbulence/clawfront.lua")(),
            ["clawback"] = graphics.newImage(graphics.imagePath("turbulence/clawback")),
            ["backclouds"] = graphics.newImage(graphics.imagePath("turbulence/backclouds")),
            ["frontclouds"] = graphics.newImage(graphics.imagePath("turbulence/frontclouds")),
            ["hotairballoon"] = graphics.newImage(graphics.imagePath("turbulence/hotairballoon")),
            ["midclouds"] = graphics.newImage(graphics.imagePath("turbulence/midclouds")),
            ["light"] = graphics.newImage(graphics.imagePath("turbulence/TURBLIGHTING")),
            ["sky"] = graphics.newImage(graphics.imagePath("turbulence/turbsky")),
        }

        enemy = love.filesystem.load("sprites/characters/redMungParasite.lua")()

        girlfriend.x, girlfriend.y = -200, -445
        enemy.x, enemy.y = -400, -250
        boyfriend.x, boyfriend.y = 612, -29
        boyfriend.orientation = math.rad(270)
        boyfriend.sizeX, boyfriend.sizeY = 1.1, 1.1

        stageImages["clowfront"].x = 510
        stageImages["clowfront"].y = -37

        stageImages["clawback"].x = -727

        stageImages["backclouds"].translation = {x = 0, y = 0}
        stageImages["frontclouds"].translation = {x = 0, y = 0}
        stageImages["hotairballoon"].translation = {x = 0, y = 0}
        stageImages["midclouds"].translation = {x = 0, y = 0}

        stageImages["frontclouds"].y = 530
        stageImages["midclouds"].y = 0
        stageImages["backclouds"].y = 0
        stageImages["hotairballoon"].y = -300

        camera.sizeX, camera.sizeY = 0.85, 0.85
        camera.scaleX, camera.scaleY = 0.85, 0.85
    end,

    load = function()
    end,

    update = function(self, dt)
        stageImages["clowfront"]:update(dt)
        if beatHandler.onBeat() and beatHandler.getBeat() % 2 == 0 then 
            stageImages["clowfront"]:animate("anim")
        end

        stageImages["backclouds"].translation.x = stageImages["backclouds"].translation.x + 2000 * dt
        stageImages["frontclouds"].translation.x = stageImages["frontclouds"].translation.x + 1800 * dt
        stageImages["hotairballoon"].translation.x = stageImages["hotairballoon"].translation.x + 1000 * dt
        stageImages["midclouds"].translation.x = stageImages["midclouds"].translation.x + 1700 * dt

        if stageImages["backclouds"].translation.x > 4100 then 
            stageImages["backclouds"].translation.x = -stageImages["backclouds"].translation.x
        end
        if stageImages["frontclouds"].translation.x > 4300 then 
            stageImages["frontclouds"].translation.x = -stageImages["frontclouds"].translation.x
        end
        if stageImages["hotairballoon"].translation.x > 2300 then 
            stageImages["hotairballoon"].translation.x = -stageImages["hotairballoon"].translation.x
        end
        if stageImages["midclouds"].translation.x > 3900 then 
            stageImages["midclouds"].translation.x = -stageImages["midclouds"].translation.x
        end

        --[[
                if(turbEnding){
					dad.x = FlxMath.lerp(dad.x, dad.x + 650,
						CoolUtil.boundTo(elapsed * 9, 0, 1));
					dad.y = FlxMath.lerp(dad.y, dad.y + 200,
						CoolUtil.boundTo(elapsed * 9, 0, 1));
					dad.angle = FlxMath.lerp(dad.angle, dad.angle + 120,
						CoolUtil.boundTo(elapsed * 9, 0, 1));
				}
        --]]

        if turbEnding then 
            enemy.x = util.lerp(enemy.x, enemy.x + 650, util.clamp(dt * 9, 0, 1))
            enemy.y = util.lerp(enemy.y, enemy.y + 200, util.clamp(dt * 9, 0, 1))
            enemy.orientation = util.lerp(enemy.orientation, enemy.orientation + math.rad(120), util.clamp(dt * 9, 0, 1))
        end

        if musicTime >= 128000 and musicTime <= 130000 and boyfriend:getAnimName() == "singUP" then -- look.... i'm lazy ok?
            boyfriend:animate("hey", false)
        end

        camHUD.y = math.sin((musicTime / 1000) * (bpm / 60) * 1.0) * 15
        camHUD.angle = math.rad(math.sin(musicTime / 1200) * (bpm / 60) * -1.0) * 1.2
    end,

    draw = function()
        love.graphics.scale(camera.sizeX, camera.sizeY)
        graphics.setColor(camera:getColor())
		love.graphics.push()
			love.graphics.translate(camera.x, camera.y)

            stageImages["sky"]:draw()
            love.graphics.push()
                love.graphics.translate(stageImages["backclouds"].translation.x, stageImages["backclouds"].translation.y)
                stageImages["backclouds"]:draw()
            love.graphics.pop()
            love.graphics.push()
                love.graphics.translate(stageImages["midclouds"].translation.x, stageImages["midclouds"].translation.y)
                stageImages["midclouds"]:draw()
            love.graphics.pop()
            love.graphics.push()
                love.graphics.translate(stageImages["hotairballoon"].translation.x, stageImages["hotairballoon"].translation.y)
                stageImages["hotairballoon"]:draw()
            love.graphics.pop()
            enemy:draw()
            stageImages["clawback"]:draw()
            boyfriend:draw()
            stageImages["clowfront"]:draw()
            love.graphics.push()
                love.graphics.translate(stageImages["frontclouds"].translation.x, stageImages["frontclouds"].translation.y)
                stageImages["frontclouds"]:draw()
            love.graphics.pop()
		love.graphics.pop()
		love.graphics.push()

        graphics.setColor(1,1,1)
        graphics.setColor(camera:getColor())
		love.graphics.pop()
    end,

    leave = function()
        stageImages[1] = nil
        stageImages[2] = nil
        stageImages[3] = nil
    end
}