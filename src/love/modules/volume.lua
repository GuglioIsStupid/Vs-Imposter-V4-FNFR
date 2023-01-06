function volumeControl()
    -- Guglios's volume control stuff
    -- (Some is ch's though)
    love.graphics.setColor(1, 1, 1, volFade)
    fixVol = tonumber(string.format(
        "%.1f  ",
        (love.audio.getVolume())
    ))
    love.graphics.setColor(0.5, 0.5, 0.5, volFade - 0.3)

    love.graphics.rectangle("fill", 1110, 0, 170, 50)

    love.graphics.setColor(1, 1, 1, volFade)

    if volTween then Timer.cancel(volTween) end
    volTween = Timer.tween(
        0.2, 
        volumeWidth, 
        {width = fixVol * 160}, 
        "out-quad"
    )
    love.graphics.rectangle("fill", 1113, 10, volumeWidth.width, 30)
    graphics.setColor(1, 1, 1, 1)
end

function volumeKeyPressed(key)
    if key == "0" then
		volFade = 1
		if fixVol == 0 then
			love.audio.setVolume(lastAudioVolume)
		else
			lastAudioVolume = love.audio.getVolume()
			love.audio.setVolume(0)
		end
	elseif key == "-" then
		volFade = 1
		if fixVol > 0 then
			love.audio.setVolume(love.audio.getVolume() - 0.1)
		end
	elseif key == "=" then
		volFade = 1
		if fixVol <= 0.9 then
			love.audio.setVolume(love.audio.getVolume() + 0.1)
		end
    end
end