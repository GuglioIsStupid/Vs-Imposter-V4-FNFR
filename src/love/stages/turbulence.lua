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

        camera.scaleX, camera.scaleY = 0.85, 0.85
		camera.sizeX, camera.sizeY = 0.85, 0.85
    end,

    load = function()
    end,

    update = function(self, dt)
        stageImages["clowfront"]:update(dt)
        if beatHandler.onBeat() and beatHandler.getBeat() % 2 == 0 then 
            stageImages["clowfront"]:animate("anim")
        end
        
        stageImages["backclouds"].x = util.lerp(stageImages["backclouds"].x, stageImages["backclouds"].x + 55, util.clamp(dt * 9, 0, 1))
        stageImages["midclouds"].x = util.lerp(stageImages["midclouds"].x, stageImages["midclouds"].x + 175, util.clamp(dt * 9, 0, 1))
        stageImages["frontclouds"].x = util.lerp(stageImages["frontclouds"].x, stageImages["frontclouds"].x + 400, util.clamp(dt * 9, 0, 1))
        stageImages["hotairballoon"].x = util.lerp(stageImages["hotairballoon"].x, stageImages["hotairballoon"].x + 75, util.clamp(dt * 9, 0, 1))

        if stageImages["backclouds"].x > 5140.05 then 
            stageImages["backclouds"].x = -1352.1
        end
        if stageImages["frontclouds"].x > 5140.05 then 
            stageImages["frontclouds"].x = -3352.1
        end
        if stageImages["hotairballoon"].x > 3140.05 then 
            stageImages["hotairballoon"].x = -1352.1
        end
        if stageImages["midclouds"].x > 5140.05 then 
            stageImages["midclouds"].x = -3352.1
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

        boyfriend.y = math.sin((musicTime / 1000) * (bpm / 60) * 1.0) * 15;
        stageImages["clowfront"].y = math.sin((musicTime / 1000) * (bpm / 60) * 1.0) * 15;
        stageImages["clawback"].y = math.sin((musicTime / 1000) * (bpm / 60) * 1.0) * 15;
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