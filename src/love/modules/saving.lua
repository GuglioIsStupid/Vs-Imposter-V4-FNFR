highscores = {
    [0] = {
        ["hard"] = {
            scores = {0,0,0,0,0,0,0,0,0}, accuracys = {0,0,0,0,0,0,0,0,0}
        }
    },
    [1] = {
        ["hard"] = {
            scores = {0,0,0,0,0,0,0,0,0}, accuracys = {0,0,0,0,0,0,0,0,0}
        }
    }, -- Week 1
    [2] = {
        ["hard"] = {
            scores = {0,0,0,0,0,0,0,0,0}, accuracys = {0,0,0,0,0,0,0,0,0}
        }
    }, -- Week 2
    [3] = {
        ["hard"] = {
            scores = {0,0,0,0,0,0,0,0,0}, accuracys = {0,0,0,0,0,0,0,0,0}
        }
    }, -- Week 3
    [4] = {
        ["hard"] = {
            scores = {0,0,0,0,0,0,0,0,0}, accuracys = {0,0,0,0,0,0,0,0,0}
        }
    }, -- Week 4
    [5] = {
        ["hard"] = {
            scores = {0,0,0,0,0,0,0,0,0}, accuracys = {0,0,0,0,0,0,0,0,0}
        }
    }, -- Week 5
    [6] = {
        ["hard"] = {
            scores = {0,0,0,0,0,0,0,0,0}, accuracys = {0,0,0,0,0,0,0,0,0}
        }
    }, -- Week 6
    [7] = {
        ["hard"] = {
            scores = {0,0,0,0,0,0,0,0,0}, accuracys = {0,0,0,0,0,0,0,0,0}
        }
    }, -- Week 7
    version = 3
}
achievementProgress = {
    ["death"] = 0,
}
gamejoltLogin = {}

settings = {}

function saveHighscores()
    local file = love.filesystem.newFile("highscores")
    file:open("w")
    file:write(lume.serialize({highscores = highscores}))
    file:close()
end

function saveAchivementsProgress()
    local file = love.filesystem.newFile("achivements")
    file:open("w")
    file:write(lume.serialize({achievementProgress = achievementProgress}))
    file:close()
end

function saveSettings()
    if settings.hardwareCompression ~= settingdata.saveSettingsMoment.hardwareCompression then
        settingdata = {}
        if settings.hardwareCompression then
            imageTyppe = "dds" 
        else
            imageTyppe = "png"
        end
        settingdata.saveSettingsMoment = {
            hardwareCompression = settings.hardwareCompression,
            downscroll = settings.downscroll,
            ghostTapping = settings.ghostTapping,
            showDebug = settings.showDebug,
            setImageType = "dds",
            sideJudgements = settings.sideJudgements,
            botPlay = settings.botPlay,
            middleScroll = settings.middleScroll,
            randomNotePlacements = settings.randomNotePlacements,
            practiceMode = settings.practiceMode,
            noMiss = settings.noMiss,
            customScrollSpeed = settings.customScrollSpeed,
            keystrokes = settings.keystrokes,
            scrollUnderlayTrans = settings.scrollUnderlayTrans,
            Hitsounds = settings.Hitsounds,
            vocalsVol = settings.vocalsVol,
            instVol = settings.instVol,
            hitsoundVol = settings.hitsoundVol,
            noteSkins = settings.noteSkins,
            flashinglights = settings.flashinglights,
            window = settings.window,
            customBindDown = customBindDown,
            customBindUp = customBindUp,
            customBindLeft = customBindLeft,
            customBindRight = customBindRight,
            settingsVer = settingsVer
        }
        serialized = lume.serialize(settingdata)
        love.filesystem.write("settings", serialized)
        love.window.showMessageBox("Settings Saved!", "Settings saved. Vanilla Engine will now restart to make sure your settings saved")
        love.event.quit("restart")
    else
        settingdata = {}
        if settings.hardwareCompression then
            imageTyppe = "dds" 
        else
            imageTyppe = "png"
        end
        settingdata.saveSettingsMoment = {
            hardwareCompression = settings.hardwareCompression,
            downscroll = settings.downscroll,
            ghostTapping = settings.ghostTapping,
            showDebug = settings.showDebug,
            setImageType = "dds",
            sideJudgements = settings.sideJudgements,
            botPlay = settings.botPlay,
            middleScroll = settings.middleScroll,
            randomNotePlacements = settings.randomNotePlacements,
            practiceMode = settings.practiceMode,
            noMiss = settings.noMiss,
            customScrollSpeed = settings.customScrollSpeed,
            keystrokes = settings.keystrokes,
            scrollUnderlayTrans = settings.scrollUnderlayTrans,
            Hitsounds = settings.Hitsounds,
            vocalsVol = settings.vocalsVol,
            instVol = settings.instVol,
            hitsoundVol = settings.hitsoundVol,
            noteSkins = settings.noteSkins,
            flashinglights = settings.flashinglights,
            window = {
                windowWidth = love.graphics.getWidth(),
                windowHeight = love.graphics.getHeight(),
                fullscreen = love.window.getFullscreen(),
                vsync = love.window.getVSync(),
            },
            customBindDown = customBindDown,
            customBindUp = customBindUp,
            customBindLeft = customBindLeft,
            customBindRight = customBindRight,
            settingsVer = settingsVer
        }
        serialized = lume.serialize(settingdata)
        love.filesystem.write("settings", serialized)
        graphics.fadeOut(
            0.3,
            function()
                Gamestate.switch(menuSelect)
                status.setLoading(false)
            end
        )
    end
end
if love.filesystem.getInfo("achivements") then
    local file = love.filesystem.read("achivements")
    local data = lume.deserialize(file)

    achievementProgress["death"] = data.achievementProgress["death"]
else
    local file = love.filesystem.newFile("achivements")
    file:open("w")
    file:write(lume.serialize({achievementProgress = achievementProgress}))
    file:close()
end

if love.filesystem.getInfo("gamejoltLogin") then
    local file = love.filesystem.read("gamejoltLogin")
    local data = lume.deserialize(file)
    gamejoltLogin["useGamejolt"] = data["useGamejolt"]
    if gamejoltLogin["useGamejolt"] then
        gamejoltLogin["username"] = data["username"]
        gamejoltLogin["token"] = data["token"]
        
        gamejolt.authUser(gamejoltLogin["username"], gamejoltLogin["token"])
    end
else
    local file = love.filesystem.newFile("gamejoltLogin")
    file:open("w")
    file:write(lume.serialize({gamejoltLogin = gamejoltLogin}))
    notLoggedIn = true
    file:close()
end

if love.filesystem.getInfo("highscores") then
    local file = love.filesystem.read("highscores")
    local data = lume.deserialize(file)
    if data.highscores.version ~= 3 then
        print("hi")
        highscores = {
            [0] = {
                ["easy"] = {
                    scores = {0}, accuracys = {0}
                },
                ["normal"] = {
                    scores = {0}, accuracys = {0}
                },
                ["hard"] = {
                    scores = {0}, accuracys = {0}
                }
            },             -- Tutorial
            [1] = {
                ["hard"] = {
                    scores = {0,0,0,0,0,0,0,0,0}, accuracys = {0,0,0,0,0,0,0,0,0}
                }
            }, -- Week 1
            [2] = {
                ["hard"] = {
                    scores = {0,0,0,0,0,0,0,0,0}, accuracys = {0,0,0,0,0,0,0,0,0}
                }
            }, -- Week 2
            [3] = {
                ["hard"] = {
                    scores = {0,0,0,0,0,0,0,0,0}, accuracys = {0,0,0,0,0,0,0,0,0}
                }
            }, -- Week 3
            [4] = {
                ["hard"] = {
                    scores = {0,0,0,0,0,0,0,0,0}, accuracys = {0,0,0,0,0,0,0,0,0}
                }
            }, -- Week 4
            [5] = {
                ["hard"] = {
                    scores = {0,0,0,0,0,0,0,0,0}, accuracys = {0,0,0,0,0,0,0,0,0}
                }
            }, -- Week 5
            [6] = {
                ["hard"] = {
                    scores = {0,0,0,0,0,0,0,0,0}, accuracys = {0,0,0,0,0,0,0,0,0}
                }
            }, -- Week 6
            [7] = {
                ["hard"] = {
                    scores = {0,0,0,0,0,0,0,0,0}, accuracys = {0,0,0,0,0,0,0,0,0}
                }
            }, -- Week 7
            version = 3
        }
        saveHighscores()
    end
    
    for i = 0, #data.highscores do
        for j = 1, #data.highscores[i]["easy"].scores do
            highscores[i]["easy"].scores[j] = data.highscores[i]["easy"].scores[j]
        end
        for j = 1, #data.highscores[i]["normal"].scores do
            highscores[i]["normal"].scores[j] = data.highscores[i]["normal"].scores[j] 
        end
        for j = 1, #data.highscores[i]["hard"].scores do
            highscores[i]["hard"].scores[j] = data.highscores[i]["hard"].scores[j]
        end
        for j = 1, #data.highscores[i]["easy"].accuracys do
            highscores[i]["easy"].accuracys[j] = data.highscores[i]["easy"].accuracys[j]
        end
        for j = 1, #data.highscores[i]["normal"].accuracys do
            highscores[i]["normal"].accuracys[j] = data.highscores[i]["normal"].accuracys[j] 
        end
        for j = 1, #data.highscores[i]["hard"].accuracys do
            highscores[i]["hard"].accuracys[j] = data.highscores[i]["hard"].accuracys[j]
        end
    end
else
    local file = love.filesystem.newFile("highscores")
    file:open("w")
    file:write(lume.serialize({highscores = highscores}))
    file:close()
end
-- You don't need to mess with this unless you are adding a custom setting (Will nil be default (AKA. False)) --
if love.filesystem.getInfo("settings") then 
    settingdata = love.filesystem.read("settings")
    settingdata = lume.deserialize(settingdata)

    settings.hardwareCompression = settingdata.saveSettingsMoment.hardwareCompression
    settings.downscroll = settingdata.saveSettingsMoment.downscroll
    settings.ghostTapping = settingdata.saveSettingsMoment.ghostTapping
    settings.showDebug = settingdata.saveSettingsMoment.showDebug
    graphics.setImageType(settingdata.saveSettingsMoment.setImageType)
    settings.sideJudgements = settingdata.saveSettingsMoment.sideJudgements
    settings.botPlay = settingdata.saveSettingsMoment.botPlay
    settings.middleScroll = settingdata.saveSettingsMoment.middleScroll
    settings.randomNotePlacements = settingdata.saveSettingsMoment.randomNotePlacements
    settings.practiceMode = settingdata.saveSettingsMoment.practiceMode
    settings.noMiss = settingdata.saveSettingsMoment.noMiss
    settings.customScrollSpeed = settingdata.saveSettingsMoment.customScrollSpeed
    settings.keystrokes = settingdata.saveSettingsMoment.keystrokes
    settings.scrollUnderlayTrans = settingdata.saveSettingsMoment.scrollUnderlayTrans
    settings.instVol = settingdata.saveSettingsMoment.instVol
    settings.vocalsVol = settingdata.saveSettingsMoment.vocalsVol
    settings.Hitsounds = settingdata.saveSettingsMoment.Hitsounds
    settings.hitsoundVol = settingdata.saveSettingsMoment.hitsoundVol
    settings.noteSkins = settingdata.saveSettingsMoment.noteSkins
    customBindDown = settingdata.saveSettingsMoment.customBindDown
    customBindUp = settingdata.saveSettingsMoment.customBindUp
    customBindLeft = settingdata.saveSettingsMoment.customBindLeft
    customBindRight = settingdata.saveSettingsMoment.customBindRight
    settings.flashinglights = settingdata.saveSettingsMoment.flashinglights
    settings.window = settingdata.saveSettingsMoment.window

    settingsVer = settingdata.saveSettingsMoment.settingsVer

    settingdata.saveSettingsMoment = {
        hardwareCompression = settings.hardwareCompression,
        downscroll = settings.downscroll,
        ghostTapping = settings.ghostTapping,
        showDebug = settings.showDebug,
        setImageType = "dds",
        sideJudgements = settings.sideJudgements,
        botPlay = settings.botPlay,
        middleScroll = settings.middleScroll,
        randomNotePlacements = settings.randomNotePlacements,
        practiceMode = settings.practiceMode,
        noMiss = settings.noMiss,
        customScrollSpeed = settings.customScrollSpeed,
        keystrokes = settings.keystrokes,
        scrollUnderlayTrans = settings.scrollUnderlayTrans,
        Hitsounds = settings.Hitsounds,
        instVol = settings.instVol,
        vocalsVol = settings.vocalsVol,
        hitsoundVol = settings.hitsoundVol,
        noteSkins = settings.noteSkins,
        customBindDown = customBindDown,
        customBindUp = customBindUp,
        customBindLeft = customBindLeft,
        customBindRight = customBindRight,
        flashinglights = settings.flashinglights,
        window = settings.window,
        settingsVer = settingsVer
    }
    serialized = lume.serialize(settingdata)
    love.filesystem.write("settings", serialized)
end
if settingsVer ~= 7 then
    love.window.showMessageBox("Uh Oh!", "Settings have been reset.", "warning")
    love.filesystem.remove("settings")
end
if not love.filesystem.getInfo("settings") or settingsVer ~= 7 then
    settings.hardwareCompression = true
    graphics.setImageType("dds")
    settings.downscroll = false
    settings.middleScroll = false
    settings.ghostTapping = false
    settings.showDebug = false
    settings.sideJudgements = false
    settings.botPlay = false
    settings.randomNotePlacements = false
    settings.practiceMode = false
    settings.noMiss = false
    settings.customScrollSpeed = 1
    settings.keystrokes = false
    settings.scrollUnderlayTrans = 0
    settings.Hitsounds = false
    settings.instVol = 1
    settings.vocalsVol = 1
    settings.hitsoundVol = 1
    settings.noteSkins = 1
    customBindLeft = "a"
    customBindRight = "d"
    customBindUp = "w"
    customBindDown = "s"

    settings.window = {
        vsync = 1,
        windowWidth = 1280,
        windowHeight = 720,
        fullscreen = false,
        fullscreentype = "desktop"
    }

    settings.flashinglights = false
    settingsVer = 7
    settingdata = {}
    settingdata.saveSettingsMoment = {
        hardwareCompression = settings.hardwareCompression,
        downscroll = settings.downscroll,
        ghostTapping = settings.ghostTapping,
        showDebug = settings.showDebug,
        setImageType = "dds",
        sideJudgements = settings.sideJudgements,
        botPlay = settings.botPlay,
        middleScroll = settings.middleScroll,
        randomNotePlacements = settings.randomNotePlacements,
        practiceMode = settings.practiceMode,
        noMiss = settings.noMiss,
        customScrollSpeed = settings.customScrollSpeed,
        keystrokes = settings.keystrokes,
        scrollUnderlayTrans = settings.scrollUnderlayTrans,
        instVol = settings.instVol,
        vocalsVol = settings.vocalsVol,
        Hitsounds = settings.Hitsounds,
        hitsoundVol = settings.hitsoundVol,
        noteSkins = settings.noteSkins,
        customBindLeft = customBindLeft,
        customBindRight = customBindRight,
        customBindUp = customBindUp,
        customBindDown = customBindDown,
        flashinglights = settings.flashinglights,
        window = settings.window,
        
        settingsVer = settingsVer
    }
    serialized = lume.serialize(settingdata)
    love.filesystem.write("settings", serialized)
end