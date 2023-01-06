-- This file doesn't need to be messed with unless you are adding a new setting

-- TODO: clean this menu up

local selectSound = love.audio.newSource("sounds/menu/select.ogg", "static")
local confirmSound = love.audio.newSource("sounds/menu/confirm.ogg", "static")
local menuBG = graphics.newImage(love.graphics.newImage(graphics.imagePath("menu/title-bg")))

newlinesMoment = {
    "",
    "\n\n",
    "\n\n\n\n",
    "\n\n\n\n\n\n",
    "\n\n\n\n\n\n\n\n",
    "\n\n\n\n\n\n\n\n\n\n",
    "\n\n\n\n\n\n\n\n\n\n\n\n",
    "\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
    "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",  --bruh -- shhhhhhhh  -- no -- yes
    "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
    "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
    "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",
    "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
}

settingsDescriptions1 = { -- The big spaces are so it lines up lol
    "Downscroll:" ..
    "\n      \"Downscroll\" Makes arrows scroll down, and rearranges the UI.",

    "Middlescroll:" ..
    "\n      \"Middlescroll\" Centers the player notefield",

    "Ghost Tapping:" ..
    "\n       \"Ghost Tapping\" disables anti-spam, but counts \"Shit\" inputs as\n       misses" ..
    "\n\n       NOTE: Currently unfinished, some aspects of this input mode\n       still need to be implemented, like mash violations",

    "Side Judgements" ..
    "\n       \"Side Judgements\" Shows your judgment counts on the left\n       side of the screen.",

    "Bot Play" ..
    "\n       \"Bot Play\" Sit back and relax. Let the bot do all the playing\n       for you", 

    "Custom Scroll Speed" ..
    "\n       \"Custom Scroll Speed\" Allows you to set a custom scroll speed\n       for the game.\n       1 = Default",

    "Keystrokes" ..
    "\n       \"Keystrokes\" Show your keystrokes at the bottom of the screen",

    "Scroll Underlay" ..
    "\n       \"Scroll Underlay\" set a opacity for a scroll underlay\n       0 = Default",

    "Hitsounds" ..
    "\n       \"Hitsounds\" ", -- CH YOU DO THIS ONE

    "Noteskins" ..
    "\n       \"Noteskins\" ",

    "Flashing Lights" ..
    "\n       \"Flashing Lights\" Enable/Disable flashing lights",
}
settingsDescriptions2 = {

    "Hardware Compression:" ..
    "\n       \"Hardware Compression\" Use hardware-compressed image formats\n       to save RAM, disabling this will make the game eat your RAM\n       for breakfast (and increase load times)" ..
    "\n\n       WARNING: Don't disable this on 32-bit versions of the game,\n       or the game will quickly run out of memory and crash (thanks\n       to the 2 GB RAM cap)",

    "Show Debug Info" ..
    "\n       \"Show Debug\" Shows debug info on the screen" ..
    "\n\n       \"fps\" only displays FPS count" ..
    "\n\n       \"detailed\" shows things for debugging. (E.g. Music time,\n       Health, etc)",

    "Instrumental Volume" .. 
    "\n       \"Instrumental Volume\" Raise or lower the volume of the\n       Instrumental" ..
    "\n\n       1 = Default",

    "Vocals Volume" ..
    "\n       \"Vocals Volume\" Raise or lower the volume of the Vocals" ..
    "\n\n       1 = Default",

    "Hitsounds Volume" ..
    "\n       \"Hitsounds Volume\" Raise or lower the volume of the\n       Hitsounds" ..
    "\n\n       1 = Default",
}
settingsDescriptions3 = { 

    "Practice Mode:" ..
    "\n       \"Practice Mode\" Too hard? Enable this to not lose!",

    "Sudden Death:" ..
    "\n       \"Sudden Death\" Too easy? Enable this to lose if you miss one note"
}

local function switchMenu(menu)end

return {
	enter = function(self, previous)

		songNum = 0
        settingSelect = 1
        settingsMenuState = 0

		cam.sizeX, cam.sizeY = 0.9, 0.9
		camScale.x, camScale.y = 0.9, 0.9

		switchMenu(1)

		graphics.setFade(0)
		graphics.fadeIn(0.5)

        updatePres("Changing Settings", "In the Settings Menu")
	end,

	update = function(self, dt)
		if not graphics.isFading() then
			if input:pressed("confirm") then
                function confirmFunc()
                    if settingsMenuState == 0 then
                        if settingSelect == 1 then
                            settingSelect = 1
                            settingsMenuState = 1 
                        elseif settingSelect == 2 then
                            settingSelect = 1
                            settingsMenuState = 2
                        elseif settingSelect == 3 then
                            graphics.fadeOut(0.3,
                            function()
                                Gamestate.switch(settingsKeybinds)
                            end)
                        elseif settingSelect == 4 then
                            settingSelect = 1
                            settingsMenuState = 3
                        elseif settingSelect == 5 then
                            settingSelect = 1
                            saveSettings()
                        end
                    elseif settingsMenuState == 1 then
                        if settingSelect == 1 then
                            if settings.practiceMode then
                                settings.practiceMode = false
                            else
                                settings.practiceMode = true
                            end
                        elseif settingSelect == 2 then
                            if settings.noMiss then
                                settings.noMiss = false
                            else
                                settings.noMiss = true
                            end
                        end
                    elseif settingsMenuState == 2 then
                        if settingSelect == 1 then
                            if settings.downscroll then
                                settings.downscroll = false
                            else
                                settings.downscroll = true
                            end
                        elseif settingSelect == 2 then
                            if settings.middleScroll then
                                settings.middleScroll = false
                            else
                                settings.middleScroll = true
                            end
                        elseif settingSelect == 3 then
                            if settings.ghostTapping then
                                settings.ghostTapping = false
                            else
                                settings.ghostTapping = true
                            end
                        elseif settingSelect == 4 then
                            if not settings.sideJudgements then
                                settings.sideJudgements = true
                            else
                                settings.sideJudgements = false
                            end
                        elseif settingSelect == 5 then
                            if not settings.botPlay then
                                settings.botPlay = true
                            else
                                settings.botPlay = false
                            end
                        -- 6 is scroll speed
                        elseif settingSelect == 7 then
                            if not settings.keystrokes then
                                settings.keystrokes = true
                            else
                                settings.keystrokes = false
                            end
                        -- 8 is scroll underlay transparency
                        elseif settingSelect == 9 then
                            if not settings.Hitsounds then
                                settings.Hitsounds = true
                            else
                                settings.Hitsounds = false
                            end
                        -- 10 is noteskins
                        elseif settingSelect == 11 then
                            if not settings.flashinglights then
                                settings.flashinglights = true
                            else
                                settings.flashinglights = false
                            end
                        end
                    elseif settingsMenuState == 3 then
                        if settingSelect == 1 then
                            if settings.hardwareCompression then
                                settings.hardwareCompression = false
                            else
                                settings.hardwareCompression = true
                            end
                        elseif settingSelect == 2 then
                            if not settings.showDebug then
                                settings.showDebug = "fps"
                            elseif settings.showDebug == "fps" then
                                settings.showDebug = "detailed" 
                            elseif settings.showDebug == "detailed" then
                                settings.showDebug = false
                            end
                            -- 3 is inst volume
                            -- 4 is vocals volume
                            -- 5 is Hitsounds volume
                        end
                    end
                end
				audio.playSound(confirmSound)

                confirmFunc()
			elseif input:pressed("back") then
				audio.playSound(selectSound)

                if settingsMenuState == 0 then
			    	saveSettings()
                else
                    settingsMenuState = 0
                    settingSelect = 1
                end
            elseif input:pressed("up") then
                if settingsMenuState == 0 then
                    settingSelect = settingSelect ~= 1 and settingSelect - 1 or 5
                elseif settingsMenuState == 1 then
                    settingSelect = settingSelect ~= 1 and settingSelect - 1 or 2
                elseif settingsMenuState == 2 then
                    settingSelect = settingSelect ~= 1 and settingSelect - 1 or 11
                elseif settingsMenuState == 3 then
                    settingSelect = settingSelect ~= 1 and settingSelect - 1 or 5
                end
            elseif input:pressed("down") then
                if settingsMenuState == 0 then
                    settingSelect = settingSelect ~= 5 and settingSelect + 1 or 1
                elseif settingsMenuState == 1 then
                    settingSelect = settingSelect ~= 3 and settingSelect + 1 or 1
                elseif settingsMenuState == 2 then
                    settingSelect = settingSelect ~= 11 and settingSelect + 1 or 1
                elseif settingsMenuState == 3 then
                    settingSelect = settingSelect ~= 5 and settingSelect + 1 or 1               
                end
            elseif input:pressed("right") then
                if settingsMenuState == 2 then
                    if settingSelect == 6 then
                        settings.customScrollSpeed = settings.customScrollSpeed + 0.05
                    elseif settingSelect == 8 then
                        if settings.scrollUnderlayTrans < 1 then
                            settings.scrollUnderlayTrans = settings.scrollUnderlayTrans + 0.05
                        else
                            settings.scrollUnderlayTrans = 1
                        end
                    elseif settingSelect == 10 then
                        if settings.noteSkins ~= #noteskins then
                            settings.noteSkins = settings.noteSkins + 1
                        end
                    end
                elseif settingsMenuState == 3 then
                    if settingSelect == 3 then
                        if settings.instVol < 1 then
                            settings.instVol = settings.instVol + 0.05
                        else
                            settings.instVol = 1
                        end
                    elseif settingSelect == 4 then
                        if settings.vocalsVol < 1 then
                            settings.vocalsVol = settings.vocalsVol + 0.05
                        else
                            settings.vocalsVol = 1
                        end
                    elseif settingSelect == 5 then
                        if settings.hitsoundVol < 1 then
                            settings.hitsoundVol = settings.hitsoundVol + 0.05
                        else
                            settings.hitsoundVol = 1
                        end
                    end
                end
            elseif input:pressed("left") then
                if settingsMenuState == 2 then
                    if settingSelect == 6 then
                        if settings.customScrollSpeed > 0.05 then
                            settings.customScrollSpeed = settings.customScrollSpeed - 0.05
                        else
                            settings.customScrollSpeed = 0.05
                        end
                    elseif settingSelect == 8 then
                        if settings.scrollUnderlayTrans > 0 then
                            settings.scrollUnderlayTrans = settings.scrollUnderlayTrans - 0.05
                        else
                            settings.scrollUnderlayTrans = 0
                        end
                    elseif settingSelect == 10 then
                        if settings.noteSkins ~= 1 then
                            settings.noteSkins = settings.noteSkins - 1
                        end
                    end
                elseif settingsMenuState == 3 then
                    if settingSelect == 3 then
                        if settings.instVol > 0 then
                            settings.instVol = settings.instVol - 0.05
                        else
                            settings.instVol = 0
                        end
                    elseif settingSelect == 4 then
                        if settings.vocalsVol > 0 then
                            settings.vocalsVol = settings.vocalsVol - 0.05
                        else
                            settings.vocalsVol = 0
                        end
                    elseif settingSelect == 5 then
                        if settings.hitsoundVol > 0 then
                            settings.hitsoundVol = settings.hitsoundVol - 0.05
                        else
                            settings.hitsoundVol = 0
                        end
                    end
                end
			end
		end
        if settings.hardwareCompression ~= settingdata.saveSettingsMoment.hardwareCompression then
            isRestartNeeded = "(RESTART REQUIRED)"
        else
            isRestartNeeded = ""
        end
	end,

	draw = function(self)
		love.graphics.push()
			love.graphics.translate(graphics.getWidth() / 2, graphics.getHeight() / 2)

			love.graphics.push()
                menuBG:draw()

                graphics.setColor(1,1,0)
                if settingsMenuState == 0 then
                    love.graphics.print("Gamemodes", -628, -300)
                    love.graphics.print("\n\nGameplay", -628, -300)
                    love.graphics.print("\n\n\n\nKeybinds", -628, -300)
                    love.graphics.print("\n\n\n\n\n\nMisc.", -628, -300)
                    if settings.hardwareCompression ~= settingdata.saveSettingsMoment.hardwareCompression then
                        love.graphics.print("\n\n\n\n\n\n\n\nSave settings & Restart", -628, -300)
                    else
                        love.graphics.print("\n\n\n\n\n\n\n\nSave settings", -628, -300)
                    end
                elseif settingsMenuState == 1 then
                    love.graphics.print("Practice Mode = " .. tostring(settings.practiceMode), -628, -300)
                    love.graphics.print("\n\nNo Miss = " .. tostring(settings.noMiss), -628, -300)
                elseif settingsMenuState == 2 then -- I need a better way for this lmfao
                    love.graphics.print("Downscroll = " .. tostring(settings.downscroll), -628, -300)
                    love.graphics.print("\n\nMiddlescroll = " .. tostring(settings.middleScroll), -628, -300)
                    love.graphics.print("\n\n\n\nGhost Tapping = " .. tostring(settings.ghostTapping), -628, -300)
                    love.graphics.print("\n\n\n\n\n\nSide Judgements = " .. tostring(settings.sideJudgements), -628, -300)
                    love.graphics.print("\n\n\n\n\n\n\n\nBot Play = " .. tostring(settings.botPlay), -628, -300)
                    love.graphics.print("\n\n\n\n\n\n\n\n\n\nCustom Scroll Speed = " .. tostring(settings.customScrollSpeed), -628, -300)
                    love.graphics.print("\n\n\n\n\n\n\n\n\n\n\n\nKeystrokes = " .. tostring(settings.keystrokes), -628, -300)
                    love.graphics.print("\n\n\n\n\n\n\n\n\n\n\n\n\n\nScroll Underlay Transparency = " .. tostring(settings.scrollUnderlayTrans), -628, -300)
                    love.graphics.print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nHitsounds = " .. tostring(settings.Hitsounds), -628, -300)
                    love.graphics.print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nNoteskin = " .. tostring(noteskins[settings.noteSkins]), -628, -300)
                    love.graphics.print("\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\nFlashing Lights = " .. tostring(settings.flashinglights), -628, -300)
                elseif settingsMenuState == 3 then
                    love.graphics.print("Hardware Compression = " .. tostring(settings.hardwareCompression) .. " " .. isRestartNeeded, -628, -300) 
                    love.graphics.print("\n\nShow Debug = " .. tostring(settings.showDebug), -628, -300)
                    love.graphics.print("\n\n\n\nInstrumental Volume = " .. tostring(settings.instVol), -628, -300)
                    love.graphics.print("\n\n\n\n\n\nVocals Volume = " .. tostring(settings.vocalsVol), -628, -300)
                    love.graphics.print("\n\n\n\n\n\n\n\nHitsounds Volume = " .. tostring(settings.hitsoundVol), -628, -300)
                end
                love.graphics.print(newlinesMoment[settingSelect] .. ">", -640, -300)
                

                if settingsMenuState ~= 0 then
                    graphics.setColor(0,0,0,0.4)
                    love.graphics.rectangle("fill", -400, 175, 800, 300)
                    graphics.setColor(1,1,1)
                    if settingsMenuState == 1 then
                        love.graphics.printf(settingsDescriptions3[settingSelect], -390, 185, 1000, "left", nil, 0.8, 0.8)
                    elseif settingsMenuState == 2 then
                        love.graphics.printf(settingsDescriptions1[settingSelect], -390, 185, 1000, "left", nil, 0.8, 0.8)
                    elseif settingsMenuState == 3 then
                        love.graphics.printf(settingsDescriptions2[settingSelect], -390, 185, 1000, "left", nil, 0.8, 0.8)
                    end
                end

				love.graphics.scale(cam.sizeX, cam.sizeY)

				love.graphics.pop()
		love.graphics.pop()
	end,

	leave = function(self)
		

		Timer.clear()
	end
}
