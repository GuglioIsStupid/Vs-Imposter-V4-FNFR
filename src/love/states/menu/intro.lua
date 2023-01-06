local introText = {}
local __doingIntro, curBeat, curStep, doingBPS, beatEverySecond, choice, didTimers
return {
    enter = function(self)
        didTimers = {
			false,
			false,
			false,
			false,
			false,
			false
		}
        for line in love.filesystem.lines("data/introText.txt") do
            -- split from -- and --
            local line1, line2, line3 = line:match("(.*)--(.*)--(.*)")

            line1 = line1 or line
            line2 = line2 or ""
            line3 = line3 or ""

            table.insert(introText, {line1, line2, line3})
        end
        function beatEverySecond()
			doingBPS = true
			Timer.after(
				1,
				function()
					curBeat = curBeat + 1
					beatEverySecond()
				end
			)
		end
        __doingIntro = true
        curBeat = 1

        choice = love.math.random(1, #introText)
        if not music[1]:isPlaying() then
			music[1]:play()
		end
		music[1]:onBeat(function()
		end)
    end,

    update = function(self, dt)
        music[1]:updateBeat()
        curStep = math.floor(curBeat / 4)

        if not graphics.isFading() then 
            if not doingBPS then
                beatEverySecond()
            end
        end
        if input:pressed("confirm") then 
            Gamestate.switch(menu)
        end
        print(curBeat, __doingIntro)
    end,

    onBeat = function(self, n)

    end,

    draw = function(self)
        love.graphics.push()
            love.graphics.scale(cam.sizeX, cam.sizeY)

            if __doingIntro then 
                love.graphics.setFont(credFont)

                if curBeat == 3 then 
                    love.graphics.printf("VANILLA ENGINE BY",-320,-225, 700, "center")
                elseif curBeat == 4 then 
                    love.graphics.printf("VANILLA ENGINE BY\n3 DUMB PEOPLE",-320,-225, 700, "center")
                elseif curBeat == 6 or curBeat == 7 then 
                    love.graphics.printf(
                        introText[choice][1],
                        -320, -210, 700, "center"
                    )
                    if didTimers[2] then 
                        love.graphics.printf(
                            "\n"..introText[choice][2],
                            -320, -210, 700, "center"
                        )
                    end
                    if didTimers[3] then 
                        love.graphics.printf(
                            "\n"..introText[choice][3],
                            -320, -210, 700, "center"
                        )
                    end
                    if not didTimers[1] then
                        didTimers[1] = true
                        Timer.after(
                            0.50,
                            function()
                                didTimers[2] = true
                                Timer.after(
                                    0.50,
                                    function()
                                        didTimers[3] = true
                                    end
                                )
                            end
                        )
                    end
                elseif curBeat == 9 then 
                    love.graphics.printf(
                        "FRIDAY",
                        -320, -210, 700, "center"
                    )
                    if didTimers[5] then 
                        love.graphics.printf(
                            "\nNIGHT",
                            -320, -210, 700, "center"
                        )
                    end
                    if didTimers[6] then 
                        love.graphics.printf(
                            "\nFUNKIN'",
                            -320, -210, 700, "center"
                        )
                    end
                    if not didTimers[4] then
                        didTimers[4] = true
                        Timer.after(
                            0.65,
                            function()
                                didTimers[5] = true
                                Timer.after(
                                    0.65,
                                    function()
                                        didTimers[6] = true
                                    end
                                )
                            end
                        )
                    end
                elseif curBeat == 10 and __doingIntro then
                    __doingIntro = false
                    Gamestate.switch(menu)
                end
            end
        love.graphics.pop()
        love.graphics.setFont(font)

    end,

    leave = function(self)
        Timer.clear()
    end
}