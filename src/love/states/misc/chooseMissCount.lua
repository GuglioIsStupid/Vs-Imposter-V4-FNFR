return {
    enter = function(self)
        dummypostors = {}
        for i = 1, 6 do 
            table.insert(dummypostors, graphics.newImage(graphics.imagePath("defeat/dummypostor" .. i)))
        end

        for i = 1, #dummypostors do
            dummypostors[i].x = -520 + (i * 160)
            dummypostors[i].y = 75
        end

        arrow = graphics.newImage(graphics.imagePath("defeat/missAmountArrow"))

        arrow.x = dummypostors[1].x
        arrow.y = 0

        missMax = 5

        choice = 1

        graphics.fadeIn(0.5)
    end,

    update = function(self, dt)
        if not graphics.isFading() then
            if input:pressed("left") then
                choice = choice - 1
                if choice < 1 then choice = 1 end
            end
            if input:pressed("right") then
                choice = choice + 1
            end

            arrow.x = dummypostors[choice].x

            if choice == 1 then
                missMax = 5 
            elseif choice == 2 then
                missMax = 4
            elseif choice == 3 then
                missMax = 3
            elseif choice == 4 then
                missMax = 2
            elseif choice == 5 then
                missMax = 1
            elseif choice == 6 then
                missMax = 0
            end

            if input:pressed("confirm") then
                graphics.fadeOut(
                    0.5,
                    function()
                        music:stop()
                        songAppend = "hard"
                        storyMode = true
                        songNum = 1
                        Gamestate.switch(defeatWeekLololol, songNum, songAppend, currentWeek)
                        status.setLoading(false)
                    end
                )
            end
        end

    end,

    draw = function(self)
        love.graphics.translate(graphics.getWidth()/2, graphics.getHeight()/2)
        for i = 1, #dummypostors do
            dummypostors[i]:draw()
        end
        arrow:draw()

        love.graphics.setFont(FUCKINGLARGEASSFONT)
        love.graphics.print({{1,0,0}, missMax .. "/5 COMBO BREAKS"}, -410, -200)
        love.graphics.setFont(font)
    end,

    leave = function(self)
        for i = 1, #dummypostors do
            dummypostors[i] = nil
        end
        dummypostors = nil
        arrow = nil
    end
}