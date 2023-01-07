local allWeeks, currentWeek
local selectSound = love.audio.newSource("sounds/menu/select.ogg", "static")
local confirmSound = love.audio.newSource("sounds/menu/confirm.ogg", "static")
currentWeek = ""
return { 
    enter = function(self)
        graphics.fadeIn(0.5)

        allWeeks = {}

        border = graphics.newImage(love.graphics.newImage(graphics.imagePath("impmenu/border")))
        circle = graphics.newImage(love.graphics.newImage(graphics.imagePath("impmenu/circle")))
        --circleRED = graphics.newImage(love.graphics.newImage(graphics.imagePath("impmenu/circleRED"))) -- unused img (i think)
        finaleAura = graphics.newImage(love.graphics.newImage(graphics.imagePath("impmenu/finaleAura")))
        line = graphics.newImage(love.graphics.newImage(graphics.imagePath("impmenu/line")))
        menuBack = graphics.newImage(love.graphics.newImage(graphics.imagePath("impmenu/menuBack")))

        lineTable = {}
        circleTable = {}

        weekTranslation = {x = 0, y = 0}
        deadWeekTranslation = {x = 0, y = 0}
        
        ship = love.filesystem.load("sprites/impmenu/ship.lua")()

        for _ = 1, 33 do
            table.insert(lineTable, line)
        end

        for i = 1, 12 do 
            table.insert(circleTable, circle)
            circleTable[i].x = 0
            circleTable[i].y = 0
        end

        print(#circleTable)

        currentWeek = ""
    end,

    update = function(self, dt)
        if input:pressed("up") or input:pressed("down") or input:pressed("left") or input:pressed("right") then
            audio.playSound(selectSound) 
        end
        if translationTween then 
            Timer.cancel(translationTween)
        end
        translationTween = Timer.tween(0.1, weekTranslation, {x = deadWeekTranslation.x, y = deadWeekTranslation.y})
        if currentWeek == "" then 
            if input:pressed("up") then 
                currentWeek = "WEEK J"
                deadWeekTranslation.y = 380
            elseif input:pressed("down") then
                currentWeek = "WEEK 5"
                deadWeekTranslation.y = -380
            elseif input:pressed("right") then
                currentWeek = "WEEK 1"
                deadWeekTranslation.x = -380
            end
        elseif currentWeek == "WEEK 1" then 
            if input:pressed("left") then
                currentWeek = ""
                deadWeekTranslation.x = 0
            elseif input:pressed("right") then
                currentWeek = "WEEK 2"
                deadWeekTranslation.x = -760
            end
        elseif currentWeek == "WEEK 2" then
            if input:pressed("left") then
                currentWeek = "WEEK 1"
                deadWeekTranslation.x = -380
            elseif input:pressed("right") then
                currentWeek = "WEEK 3"
                deadWeekTranslation.x = -1140
            elseif input:pressed("up") then
                currentWeek = "BOO!"
                deadWeekTranslation.y = 380
            elseif input:pressed("down") then
                currentWeek = "TOMONGUS"
                deadWeekTranslation.y = -380
            end
        elseif currentWeek == "WEEK 3" then
            if input:pressed("left") then
                currentWeek = "WEEK 2"
                deadWeekTranslation.x = -760
            elseif input:pressed("right") then
                currentWeek = "..."
                deadWeekTranslation.x = -1520
            elseif input:pressed("down") then
                currentWeek = "HENRY"
                deadWeekTranslation.y = -380
            end
        elseif currentWeek == "WEEK 5" then
            if input:pressed("up") then
                currentWeek = ""
                deadWeekTranslation.y = 0
            elseif input:pressed("left") then
                currentWeek = "WEEK 6"
                deadWeekTranslation.x = 380
            end
        elseif currentWeek == "WEEK 6" then
            if input:pressed("right") then
                currentWeek = "WEEK 5"
                deadWeekTranslation.x = 0
            elseif input:pressed("left") then
                currentWeek = "WEEK 7"
                deadWeekTranslation.x = 760
            end  
        elseif currentWeek == "WEEK 7" then
            if input:pressed("right") then
                currentWeek = "WEEK 6"
                deadWeekTranslation.x = 380
            end
        elseif currentWeek == "WEEK J" then
            if input:pressed("down") then
                currentWeek = ""
                deadWeekTranslation.y = 0
            end
        elseif currentWeek == "BOO!" then
            if input:pressed("down") then
                currentWeek = "WEEK 2"
                deadWeekTranslation.y = 0
            end
        elseif currentWeek == "TOMONGUS" then
            if input:pressed("up") then
                currentWeek = "WEEK 2"
                deadWeekTranslation.y = 0
            end
        elseif currentWeek == "HENRY" then
            if input:pressed("up") then
                currentWeek = "WEEK 3"
                deadWeekTranslation.y = 0
            end
        elseif currentWeek == "..." then
            if input:pressed("left") then
                currentWeek = "WEEK 3"
                deadWeekTranslation.x = -1140
            end
        end
    end,

    draw = function(self)
        love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)
        
        love.graphics.push()
            love.graphics.translate(25, 50)
            love.graphics.scale(0.75, 0.75)
            love.graphics.print(currentWeek .. "\n" .. impWeekMeta[currentWeek][1], 100, 100)
            love.graphics.translate(weekTranslation.x, weekTranslation.y)

            for i = 1, #lineTable do
                if i <= 3 then
                    lineTable[i].x = 10 + (i-1 * 72) + (100 * (i - 1)) + 75 + 75
                    lineTable[i].y = 0
                    lineTable[i].orientation = 0
                elseif i > 3 and i <= 6 then
                    lineTable[i].x = 10 + (i-1 * 72) + (100 * (i - 1)) + (75 * 2) + 75
                    lineTable[i].y = 0
                    lineTable[i].orientation = 0
                elseif i > 6 and i <= 9 then
                    lineTable[i].x = 10 + (i-1 * 72) + (100 * (i - 1)) + (75 * 3) + 75
                    lineTable[i].y = 0
                    lineTable[i].orientation = 0
                elseif i > 9 and i <= 12 then
                    lineTable[i].x = 10 + (i-1 * 72) + (100 * (i - 1)) + (75 * 4) + 75
                    lineTable[i].y = 0
                    lineTable[i].orientation = 0
                elseif i > 12 and i <= 15 then
                    --lineTable[i].y = 72 + 25
                    lineTable[i].y = -10 + (i-12 * -72) + (-100 * (i - 12)) + (-75 * 5) + -100
                    lineTable[i].x = 0
                    lineTable[i].orientation = math.rad(90)
                elseif i > 15 and i <= 18 then
                    lineTable[i].y = 380
                    lineTable[i].x = 10 + (i-15 * 72) + (100 * (i - 15)) + (75 * 8) + 75
                    lineTable[i].orientation = 0
                elseif i > 18 and i <= 21 then
                    lineTable[i].y = 380
                    lineTable[i].x = 10 + (i-18 * 72) + (100 * (i - 18)) + (75 * 6) + 75
                    lineTable[i].orientation = 0
                elseif i > 21 and i <= 24 then
                    lineTable[i].y = 10 + (i-21 * -72) + (-100 * (i - 21)) + (-75 * 11) - 715
                    lineTable[i].x = 0
                    lineTable[i].orientation = math.rad(90)
                elseif i > 24 and i <= 27 then
                    lineTable[i].y = 10 + (i-24 * -72) + (-100 * (i - 24)) + (-75 * 14) - 715
                    lineTable[i].x = 755
                    lineTable[i].orientation = math.rad(90)
                elseif i > 27 and i <= 30 then
                    lineTable[i].y = -10 + (i-27 * -72) + (-100 * (i - 27)) + (-75 * 17) - 300
                    lineTable[i].x = 755
                    lineTable[i].orientation = math.rad(90)
                elseif i > 30 and i <= 33 then
                    lineTable[i].y = -10 + (i-30 * -72) + (-100 * (i - 30)) + (-75 * 20) - 300
                    lineTable[i].x = 1130
                    lineTable[i].orientation = math.rad(90)
                end
                lineTable[i]:draw()
            end

            for i = 1, #circleTable do
                if i == 1 then 
                    circleTable[i].x = 0
                    circleTable[i].y = 0
                elseif i == 2 then
                    circleTable[i].x = 10 + (i-1 * 72) + (100 * (i - 1)) + (75 * 5) - 35
                    circleTable[i].y = 0
                elseif i == 3 then
                    circleTable[i].x = 10 + (i+2-1 * 72) + (100 * (i - 1)) + (75 * 8) + 10
                    circleTable[i].y = 0
                elseif i == 4 then
                    circleTable[i].x = 10 + (i+4-1 * 72) + (100 * (i - 1)) + (75 * 11) + 55
                    circleTable[i].y = 0
                elseif i == 5 then
                    circleTable[i].x = 10 + (i+6-1 * 72) + (100 * (i - 1)) + (75 * 14) + 100
                    circleTable[i].y = 0
                elseif i == 6 then
                    circleTable[i].x = 0
                    circleTable[i].y = -380
                elseif i == 7 then
                    circleTable[i].x = 0
                    circleTable[i].y = 380
                elseif i == 8 then
                    circleTable[i].x = -360
                    circleTable[i].y = 380
                elseif i == 9 then
                    circleTable[i].x = -720
                    circleTable[i].y = 380
                elseif i == 10 then
                    circleTable[i].x = 755
                    circleTable[i].y = -380
                elseif i == 11 then
                    circleTable[i].x = 755
                    circleTable[i].y = 380
                elseif i == 12 then
                    circleTable[i].x = 1130
                    circleTable[i].y = 380
                end
                circleTable[i]:draw()
            end
        
        love.graphics.pop()

        border:draw()

        for i = 1, #impWeekMeta[currentWeek][2] do
            love.graphics.print(impWeekMeta[currentWeek][2][i], 100, 200 + (i * 20))
        end
        
        -- every week is seperated by 3 lines
        -- 1 week is 1 circle

        
        
    end,

    leave = function(self)
        
    end
}