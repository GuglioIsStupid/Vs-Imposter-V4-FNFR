--[[----------------------------------------------------------------------------
Friday Night Funkin' Rewritten v1.1.0 beta 2

Copyright (C) 2021  HTV04

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
------------------------------------------------------------------------------]]
if love.filesystem.isFused() then function print() end end -- print functions tend the make the game lag when in update functions, so we do this just in

function uitextflarge(text,x,y,limit,align,hovered,r,sx,sy,ox,oy,kx,ky)
	local x = x or 0
	local y = y or 0
	local r = r or 0
	local limit = limit or 750
	local align = align or "center"
	local hovered = hovered or false
	local sx = sx or 1
	local sy = sy or 1
	local ox = ox or 0
	local oy = oy or 0
	local kx = kx or 0
	local ky = ky or 0
	if not hovered then graphics.setColor(0,0,0) else graphics.setColor(1,1,1) end
	love.graphics.printf(text,x-6,y,limit,align,r,sx,sy,ox,oy,kx,ky)
	love.graphics.printf(text,x+6,y,limit,align,r,sx,sy,ox,oy,kx,ky)
	love.graphics.printf(text,x,y-6,limit,align,r,sx,sy,ox,oy,kx,ky)
	love.graphics.printf(text,x,y+6,limit,align,r,sx,sy,ox,oy,kx,ky)
	if not hovered then graphics.setColor(1,1,1) else graphics.setColor(0,0,0) end
	love.graphics.printf(text,x,y,limit,align,r,sx,sy,ox,oy,kx,ky)
end
function uitextf(text,x,y,limit,align,r,sx,sy,ox,oy,kx,ky,alpha)
	local x = x or 0
	local y = y or 0
	local r = r or 0
	local limit = limit or 750
	local align = align or "left"
	local sx = sx or 1
	local sy = sy or 1
	local ox = ox or 0
	local oy = oy or 0
	local kx = kx or 0
	local ky = ky or 0
	graphics.setColor(0,0,0, alpha or 1)
	love.graphics.printf(text,x-2,y,limit,align,r,sx,sy,ox,oy,kx,ky)
	love.graphics.printf(text,x+2,y,limit,align,r,sx,sy,ox,oy,kx,ky)
	love.graphics.printf(text,x,y-2,limit,align,r,sx,sy,ox,oy,kx,ky)
	love.graphics.printf(text,x,y+2,limit,align,r,sx,sy,ox,oy,kx,ky)
	graphics.setColor(1,1,1, alpha or 1)
    love.graphics.printf(text,x,y,limit,align,r,sx,sy,ox,oy,kx,ky)
end
function uitext(text,x,y,r,sx,sy,ox,oy,kx,ky,alpha)
	local x = x or 0
	local y = y or 0
	local r = r or 0
	local sx = sx or 1
	local sy = sy or 1
	local ox = ox or 0
	local oy = oy or 0
	local kx = kx or 0
	local ky = ky or 0
	graphics.setColor(0,0,0, alpha or 1)
	love.graphics.print(text,x-2,y,r,sx,sy,a,ox,oy,kx,ky)
	love.graphics.print(text,x+2,y,r,sx,sy,a,ox,oy,kx,ky)
	love.graphics.print(text,x,y-2,r,sx,sy,a,ox,oy,kx,ky)
	love.graphics.print(text,x,y+2,r,sx,sy,a,ox,oy,kx,ky)
	graphics.setColor(1,1,1, alpha or 1)
    love.graphics.print(text,x,y,r,sx,sy,a,ox,oy,kx,ky)
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
            multiplayer = settings.multiplayer,

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

function love.load()
	paused = false
	settings = {}
	local curOS = love.system.getOS()

	flash = {alpha = 0}

	-- Load libraries
	baton = require "lib.baton"
	ini = require "lib.ini"
	lovesize = require "lib.lovesize"
	Gamestate = require "lib.gamestate"
	Timer = require "lib.timer"
	json = require "lib.json"
	lume = require "lib.lume"

	-- Load modules
	status = require "modules.status"
	audio = require "modules.audio"
	graphics = require "modules.graphics"
	camera = require "modules.camera"
	beatHandler = require "modules.beatHandler"
	util = require "modules.util"
	cutscene = require "modules.cutscene"
	settings = require "settings"

	playMenuMusic = true

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
		settings.practiceMode = settingdata.saveSettingsMoment.practiceMode
		settings.noMiss = settingdata.saveSettingsMoment.noMiss
		settings.customScrollSpeed = settingdata.saveSettingsMoment.customScrollSpeed
		settings.scrollUnderlayTrans = settingdata.saveSettingsMoment.scrollUnderlayTrans
		settings.noteSkins = settingdata.saveSettingsMoment.noteSkins
		customBindDown = settingdata.saveSettingsMoment.customBindDown
		customBindUp = settingdata.saveSettingsMoment.customBindUp
		customBindLeft = settingdata.saveSettingsMoment.customBindLeft
		customBindRight = settingdata.saveSettingsMoment.customBindRight
	
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
			practiceMode = settings.practiceMode,
			noMiss = settings.noMiss,
			customScrollSpeed = settings.customScrollSpeed,
			keystrokes = settings.keystrokes,
			scrollUnderlayTrans = settings.scrollUnderlayTrans,
			customBindDown = customBindDown,
			customBindUp = customBindUp,
			customBindLeft = customBindLeft,
			customBindRight = customBindRight,
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
		settings.practiceMode = false
		settings.noMiss = false
		settings.customScrollSpeed = 1
		settings.keystrokes = false
		settings.scrollUnderlayTrans = 0
		--settings.noteSkins = 1
		customBindLeft = "a"
		customBindRight = "d"
		customBindUp = "w"
		customBindDown = "s"
	
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
			practiceMode = settings.practiceMode,
			noMiss = settings.noMiss,
			customScrollSpeed = settings.customScrollSpeed,
			keystrokes = settings.keystrokes,
			scrollUnderlayTrans = settings.scrollUnderlayTrans,
			customBindLeft = customBindLeft,
			customBindRight = customBindRight,
			customBindUp = customBindUp,
			customBindDown = customBindDown,
			
			settingsVer = settingsVer
		}
		serialized = lume.serialize(settingdata)
		love.filesystem.write("settings", serialized)
	end

	volumeWidth = {width = 160}
	volFade = 0

	-- Load settings
	--settings = require "settings"
	input = require "input"

	-- Load Debugs
	debugMenu = require "states.debug.debugMenu"
	spriteDebug = require "states.debug.sprite-debug"
	stageDebug = require "states.debug.stage-debug"

	-- Load stages
	stages = {
		["stage"] = require "stages.stage",
		["yellowAirship"] = require "stages.yellowAirship",
		["blackChase"] = require "stages.blackChase",
		["cargo"] = require "stages.cargo",
		["henry"] = require "stages.henry",
		["polus1"] = require "stages.polus1",
		["miraCaf"] = require "stages.miraCaf",
		["miraReactor"] = require "stages.miraReactor",
		["miraFall"] = require "stages.miraFall",
		["pinkMira"] = require "stages.pinkMira",
		["finale"] = require "stages.finale",
        ["greyMira"] = require "stages.greyMira",
		["esculent"] = require "stages.esculent",
		["jerma"] = require "stages.jerma",
		["o2"] = require "stages.o2",
		["crewicide"] = require "stages.crewicide",
		["voting-lounge"] = require "stages.voting-lounge",
		["nuzzus"] = require "stages.nuzzus",
		["greyElec"] = require "stages.greyElec",
		["turbulence"] = require "stages.turbulence",
		["maroon1"] = require "stages.maroon1",
		["victory"] = require "stages.victory"
	}

	-- Load Menus
	clickStart = require "states.click-start"
	menu = require "states.menu.menu"
	menuWeek = require "states.menu.menuWeek"
	menuSelect = require "states.menu.menuSelect"
	menuFreeplay = require "states.menu.menuFreeplay"
	menuSettings = require "states.menu.menuSettings"
	menuCredits = require "states.menu.menuCredits"
	impWeekMenu = require "states.menu.impWeekMenu"

	chooseMissCount = require "states.misc.chooseMissCount"

	shop = require "states.hi"
	credits = require "states.hi"

	-- Load weeks
	weeks = require "states.weeks.weeks"
	weeksHenry = require "states.weeks.weeksHenry"
	weeksDefeat = require "states.weeks.weeksDefeat"
	weeksOw = require "states.weeks.weeksOw"
	weeksGreen = require "states.weeks.weeksGreen"
	weeksPink = require "states.weeks.weeksPink"
	weeksYellow = require "states.weeks.weeksYellow"
	weeksJ = require "states.weeks.weeksJ"
	weeksNuzzus = require "states.weeks.weeksNuzzus"
	weeksGrey = require "states.weeks.weeksGrey"


	-- Load substates
	gameOver = require "substates.game-over"
	gameOverPixel = require "substates.game-over-pixel"

	-- Load week data
	weekData = {
		require "weeks.defeat",
		require "weeks.yellow",
		require "weeks.henry",
		require "weeks.green",
		require "weeks.red",
		require "weeks.orange",
		require "weeks.pink",
		require "weeks.finale",
        require "weeks.ow",
		require "weeks.esculent",
		require "weeks.insaneStreamer",
		require "weeks.j",
		require "weeks.crewicide",
		require "weeks.nuzzus",
		require "weeks.grey",
		require "weeks.maroon",
	}

	weekDesc = { -- Add your week description here
		"LEARN TO FUNK",
		"DADDY DEAREST",
		"SPOOKY MONTH",
		"PICO",
		"MOMMY MUST MURDER",
		"RED SNOW",
		"HATING SIMULATOR FT. MOAWLING",
		"TANKMAN"
	}

	weekDesc = { -- Add your week description here
		"LEARN TO FUNK",
		"DADDY DEAREST",
		"SPOOKY MONTH",
		"PICO",
		"MOMMY MUST MURDER",
		"RED SNOW",
		"HATING SIMULATOR FT. MOAWLING",
		"TANKMAN"
	}
	weekMeta = { -- Add/remove weeks here
		{
			"Defeat",
			{
				"Defeat"
			}
		},
		{
			"Yellow",
			{
				"Mando",
				"Dlow",
				"Oversight",
				"Danger",
				"Double Kill"
			}
		},
		{
			"Henry",
			{
				"Titular",
				"Greatest Plan",
				"Reinforcements",
				"Armed"
			}
		},
		{
			"Green",
			{
				"Sussus Toogus",
				"Lights Down",
				"Reactor",
				"Ejected"
			}
		},
		{
			"Red",
			{
				"fuck1",
				"fuck2",  -- i hate you guglio          the songs have names 
				"fuck3" -- i dont fucking know them          learn them
			}
		},
		{
			"Orange",
			{
				"Bopeebo",
			}
		},
		{
			"Pink",
			{
				"Heartbeat",
				"Pinkwave",
				"Pretender"
			},
		},
		{
			"Finale",
			{
				"COCK",
				"COCKCOCK",    -- bruhhh ahnfjdnkhsjdklgiloskgnolsfihfkjgiupvjkliuefwsdojkpk;lvhoiujeksfudzjocpklhaguibfvhjcnj90 oisyhkfcdnuigfjkvfadhunkiugxjmn THEY HAVE NAMES
				"COCKCOCKCOCK" -- I DONT KNOW THE NAMES                  THEN LEARN THEM FUCKER ITS NOT HARD
			},
		},
		{
			"Ow",
			{
				"Ow"
			}
		},
		{
			"Esculent",
			{
				"Esculent"
			}
		},
		{
			"Insane Streamer",
			{
				"Insane Streamer"
			}
		},
		{
			"Week J",
			{
				"O2",
				"Voting Time",
				"Turbulence",
				"Victory"
			},
		},
		{
			"Crewicide",
			{
				"Crewicide"
			}
		},
		{
			"Nuzzus",
			{
				"Nuzzus"
			}
		},
		{
			"Gray",
			{
				"Delusion",
				"Blackout",
				"Neurotic"
			}
		},
		{
			"Maroon",
			{
				"Ashes",
				"Magmatic",
				"Boiling Point"
			}
		}
	}

	impWeekMeta = {
		[""] = {"", {""}},
		["WEEK 1"] = {"POLUS PROBLEMS", {"SUSSUS MOOGUS", "SABOTAGE", "MELTDOWN"}},
		["WEEK 2"] = {"MIRA MANIA", {"SUSSUS TOOGUS", "LIGHTS DOWN", "REACTOR", "EJECTED"}},
		["WEEK 3"] = {"AIRSHIP ATROCITIES", {"MANDO", "DLOW", "OVERSIGHT", "DANGER", "DOUBLE KILL"}},
		["WEEK 5"] = {"MAGMATIC MONSTROSITY", {"ASHES", "MAGMATIC", "BOILING POINT"}},
		["WEEK 6"] = {"DEADLY DELUSION", {"DELUSION", "BLACKOUT", "NEUROTIC"}},
		["WEEK 7"] = {"HUMANE HEARTBEAT", {"HEARTBEAT", "PINKWAVE", "PRETENDER"}},
		["WEEK J"] = {"JORSAWSEE'S JAMS", {"02", "VOITING TIME", "TURBULENCE", "VICTORY"}},
		["BOO!"] = {"LOGGO'S HALLOWEEN", {"CHRISTMAS", "SPOOKPOSTOR"}},
		["TOMONGUS"] = {"ROUSEY RIVAL", {"SUSSY BUSSY", "RIVALS", "CHEWMATE"}},
		["HENRY"] = {"BATTLING THE BOYFRIEND", {"TITULAR", "GREATEST PLAN", "REINFORCEMENTS", "ARMED"}},
		["..."] = {"DEFEAT", {""}}
	}
	impWeeks = {
		[""] = require "weeks.orange",
		["WEEK 1"] = require "weeks.red",
		["WEEK 2"] = require "weeks.green",
		["WEEK 3"] = require "weeks.yellow",
		["WEEK 5"] = require "weeks.maroon",
		["WEEK 6"] = require "weeks.grey",
		["WEEK 7"] = require "weeks.pink",
		["WEEK J"] = require "weeks.j",
		["BOO!"] = require "weeks.orange",
		["TOMONGUS"] = require "weeks.orange",
		["HENRY"] = require "weeks.henry",
		["..."] = chooseMissCount
	}

	defeatWeekLololol = require "weeks.defeat"

	-- LÖVE init
	if curOS == "OS X" then
		love.window.setIcon(love.image.newImageData("icons/macos.png"))
	else
		love.window.setIcon(love.image.newImageData("icons/default.png"))
	end

	lovesize.set(1280, 720)

	-- Variables
	font = love.graphics.newFont("fonts/vcr.ttf", 24)
	FUCKINGLARGEASSFONT = love.graphics.newFont("fonts/vcr.ttf", 96)
	FNFFont = love.graphics.newFont("fonts/fnFont.ttf", 24)
	credFont = love.graphics.newFont("fonts/fnFont.ttf", 32)   -- guglio is a bitch
	uiFont = love.graphics.newFont("fonts/Dosis-SemiBold.ttf", 32)
	pauseFont = love.graphics.newFont("fonts/Dosis-SemiBold.ttf", 96)
	weekFont = love.graphics.newFont("fonts/Dosis-SemiBold.ttf", 84)
	weekFontSmall = love.graphics.newFont("fonts/Dosis-SemiBold.ttf", 54)
	susFontSmall = love.graphics.newFont("fonts/AmaticSC-Regular.ttf", 32)
	susFont = love.graphics.newFont("fonts/AmaticSC-Bold.ttf", 32)

	weekNum = 1
	songDifficulty = 2

	spriteTimers = {
		0, -- Girlfriend
		0, -- Enemy
		0 -- Boyfriend
	}

	storyMode = false
	countingDown = false

	--cam = {x = 0, y = 0, sizeX = 0.9, sizeY = 0.9}
	--camScale = {x = 0.9, y = 0.9}
	uiScale = {x = 1, y = 1, sizeX = 1, sizeY = 1}
	camHUD = {x = 0, y = 0, angle = 0}

	musicTime = 0
	health = 0

	music = love.audio.newSource("music/menu/menu.ogg", "stream")

	if curOS == "Web" then
		Gamestate.switch(clickStart)
	else
		Gamestate.switch(menu)
	end
end

function love.resize(width, height)
	lovesize.resize(width, height)
end

function love.keypressed(key)
	if key == "6" then
		love.filesystem.createDirectory("screenshots")

		love.graphics.captureScreenshot("screenshots/" .. os.time() .. ".png")
	elseif key == "7" then
		Gamestate.switch(debugMenu)
	elseif key == "0" then
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
    else
		Gamestate.keypressed(key)
	end
end

function love.mousepressed(x, y, button, istouch, presses)
	Gamestate.mousepressed(x, y, button, istouch, presses)
end

function love.update(dt)
	dt = math.min(dt, 1 / 30)

	if volFade > 0 then
		volFade = volFade - 0.4 * dt
	end

	input:update()

	if status.getNoResize() then
		Gamestate.update(dt)
	else
		love.graphics.setFont(font)
		graphics.screenBase(lovesize.getWidth(), lovesize.getHeight())
		graphics.setColor(1, 1, 1) -- Fade effect on
		Gamestate.update(dt)
		love.graphics.setColor(1, 1, 1) -- Fade effect off
		graphics.screenBase(love.graphics.getWidth(), love.graphics.getHeight())
		love.graphics.setFont(font)
	end

	Timer.update(dt)
end

function love.draw()
	love.graphics.setFont(font)
	graphics.screenBase(lovesize.getWidth(), lovesize.getHeight())

	lovesize.begin()
		graphics.setColor(1, 1, 1) -- Fade effect on
		Gamestate.draw()
		love.graphics.setColor(1, 1, 1) -- Fade effect off
		love.graphics.setFont(font)
		if status.getLoading() then
			love.graphics.print("Loading...", lovesize.getWidth() - 175, lovesize.getHeight() - 50)
		end
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
	lovesize.finish()

	graphics.screenBase(love.graphics.getWidth(), love.graphics.getHeight())

	-- Debug output
	if settings.showDebug then
		love.graphics.print(status.getDebugStr(settings.showDebug), 5, 5, nil, 0.5, 0.5)
	end
end

function love.focus(t)
	Gamestate.focus(t)
end