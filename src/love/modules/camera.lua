local camera = {}
local camTimer
camera.x = 0
camera.y = 0
camera.sizeX = 1
camera.sizeY = 1
camera.scaleX = 1
camera.scaleY = 1

camera.ex = 0
camera.ey = 0
camera.esizeX = 1
camera.esizeY = 1

camera.flash = 0
camera.col = {1, 1, 1}
camera.points = {}

camera.mustHit = true

-- e stands for extra

function camera:moveToMain(time, x, y)
    if camTimer then 
        Timer.cancel(camTimer)
    end
    camTimer = Timer.tween(time, camera, {x = x, y = y}, "out-quad")
end

function camera:zoomTo(time, x, y)
    if camTimer then 
        Timer.cancel(camTimer)
    end
    camTimer = Timer.tween(time, camera, {esizeX = x, esizeY = y}, "in-bounce")
end

function camera:moveToExtra(time, x, y)
    if camTimerE then 
        Timer.cancel(camTimerE)
    end
    camTimerE = Timer.tween(time, camera, {ex = x, ey = y}, "out-quad")
end

function camera:reset()
    camera.x = 0
    camera.y = 0
    camera.sizeX = 1
    camera.sizeY = 1
    camera.ex = 0
    camera.ey = 0
    camera.esizeX = 1
    camera.esizeY = 1
end

function camera:flash(time, x, col)
    camera.color = col or {1, 1, 1}
    if camTimer then 
        Timer.cancel(camTimer)
    end
    camTimer = Timer.tween(time, camera, {flash = x}, "in-bounce")
end

function camera:removePoint(name)
    camera.points[name] = nil
end

function camera:addPoint(name, x, y)
    camera.points[name] = {x = x, y = y}
end

function camera:moveToPoint(time, name, mustHit)
    if camTimer then 
        Timer.cancel(camTimer)
    end
    mustHit = mustHit or true 
    camera.mustHit = mustHit
    camTimer = Timer.tween(time, camera, {x = camera.points[name].x, y = camera.points[name].y}, "out-quad")
end

function camera:drawCameraPoints()
    for k, v in pairs(camera.points) do
        love.graphics.circle("fill", -v.x, -v.y, 10)
        -- print the name under the circle
        love.graphics.print(k, -v.x, -v.y + 10)
    end
end

function camera:drawPoint(name)
    love.graphics.circle("fill", -camera.points[name].x, -camera.points[name].y, 10)
    -- print the name under the circle
    love.graphics.print(name, -camera.points[name].x, -camera.points[name].y + 10)
end

function camera:attach()
    love.graphics.push()
    love.graphics.scale(camera.sizeX, camera.sizeY)
    love.graphics.translate(camera.x, camera.y)
    love.graphics.scale(camera.esizeX, camera.esizeY)
    love.graphics.translate(camera.ex, camera.ey)

    love.graphics.setColor(camera.col[1], camera.col[2], camera.col[3], camera.flash)
end

function camera:detach()
    love.graphics.pop()
end

return camera