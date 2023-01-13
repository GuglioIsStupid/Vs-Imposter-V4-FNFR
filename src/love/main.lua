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
__VERSION__ = love.filesystem.read("version.txt") or "UNKNOWN"
__GIT_VERSION__ = love.filesystem.read("git-version.txt") or "UNKNOWN" 
if love.filesystem.isFused() then function print() end end -- print functions tend the make the game lag when in update functions, so we do this just in
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
function weekUIText(text,x,y,limit,align,r,sx,sy,ox,oy,kx,ky,alpha)
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
    love.graphics.printf({{enemy.colours[1]/255, enemy.colours[2]/255, enemy.colours[3]/255}, text},x,y,limit,align,r,sx,sy,ox,oy,kx,ky)
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

volFade = 0

function math.round(num)
	return math.floor(num + 0.5)
end

function love.load()
	local curOS = love.system.getOS()

	local selectSound = love.audio.newSource("sounds/menu/select.ogg", "static")
	local confirmSound = love.audio.newSource("sounds/menu/confirm.ogg", "static")

	curMusicBeat = 0

	if not love.filesystem.getInfo("ratEAT.png") then
		ratEat = love.image.newImageData("fonts/ratEAT.png")
		ratEat:encode("png", "ratEAT.png")
	end

	-- Load libraries
	baton = require "lib.baton"
	if love.system.getOS() == "Android" or love.system.getOS() == "iOS" then
		paddy = require "lib.paddy"
	end  
	lovesize = require "lib.lovesize"
	Gamestate = require "lib.gamestate"
	Timer = require "lib.timer"
	lume = require "lib.lume"
	json = require "lib.json"
	Object = require "lib.classic"
	waveAudio = require "lib.wave"
	moonshine = require "lib.moonshine"

	e = require "modules.e"   -- wtf is e 

	status = require "modules.status"
	audio = require "modules.audio"
	graphics = require "modules.graphics"
	modchartHandler = require "modules.modchart"
	sprite = require "modules.sprite"
	paths = require "modules.paths"
	Character = require "modules.Character"
	require "modules.volume"
	require "modules.saving"
	require "modules.camera"
	require "modules.discord"
	require "modules.errHandler"
	coolUtil = require "modules.coolUtil"
	cutscene = require "modules.cutscene"
	input = require "input"

	music = {
		waveAudio:newSource("songs/misc/menu.ogg", "stream"),
		--love.audio.newSource("songs/misc/menu.ogg", "stream"),
		vol = 1
	}

	died = false

	music[1]:parse()
	music[1]:setBPM(102)
	music[1]:setIntensity(20)
	music[1]:setVolume(music.vol)
	music[1]:setLooping(true)

	music[1]:play()

	spongebirth = love.graphics.newImage(graphics.imagePath("spongebirth"))

	-- Load states
	clickStart = require "states.click-start"

	debugMenu = require "states.debug.debugMenu"
	spriteDebug = require "states.debug.sprite-debug"
	stageDebug = require "states.debug.stage-debug"
	xmlDebug = require "states.debug.xml-debug"

	-- Load stages
	stages = {
		["stage"] = require "stages.stage",
		["yellowAirship"] = require "stages.yellowAirship",
		["blackChase"] = require "stages.blackChase",
		["cargo"] = require "stages.cargo",
		["henry"] = require "stages.henry",
		["miraCaf"] = require "stages.miraCaf",
		["miraReactor"] = require "stages.miraReactor",
		["miraFall"] = require "stages.miraFall"
	}

	mods = {
		weekMeta = {},
		modNames = {},
		WeekData = {}
	}

	modloader = require "modules.modloader"
	modloader.load()

	-- Load menus
	menu = require "states.menu.menu"
	menuWeek = require "states.menu.menuWeek"
	menuSelect = require "states.menu.menuSelect"
	menuFreeplay = require "states.menu.menuFreeplay"
	menuChooseFreeplay = require "states.menu.menuChooseFreeplay"
	menuSettings = require "states.menu.menuSettings"
	menuCredits = require "states.menu.menuCredits"
	impWeekMenu = require "states.menu.impWeekMenu"
	intro = require "states.menu.intro" -- unused for now (Im too lazy)

	chooseMissCount = require "states.misc.chooseMissCount"

	shop = require "states.hi"
	credits = require "states.hi"

	-- Load weeks
	weeks = require "states.weeks.weeks"
	weeksDefeat = require "states.weeks.weeks-Defeat"
	weeksYellow = require "states.weeks.weeksYellow"
	weeksHenry = require "states.weeks.weeksHenry"
	weeksGreen = require "states.weeks.weeksGreen"

	-- Load substates
	gameOver = require "substates.game-over"
	settingsKeybinds = require "substates.settings-keybinds"

	uiTextColour = {1,1,1} -- Set a custom UI colour (Put it in the weeks file to change it for only that week)
	-- When adding custom colour for the health bar. Make sure to use 255 RGB values. It will automatically convert it for you.
	pauseColor = {0,0,0} -- Pause screen colour
	volumeWidth = {width = 160}

	function setDialogue(strList)
		dialogueList = strList
		curDialogue = 1
		timer = 0
		progress = 1
		output = ""
		isDone = false
	end

	function setDialogueFromTxt(path)
		dialogueList = {}
		curDialogue = 1
		timer = 0
		progress = 1
		output = ""
		isDone = false

		for line in love.filesystem.lines(path) do
			-- remove the first :
			line = line:sub(2)
			local speaker, text = line:match("([^:]+):(.+)")
			table.insert(dialogueList, {speaker, text})
		end
	end

	-- Load week data
	weekData = {
		require "weeks.defeat",
		require "weeks.yellow",
		require "weeks.henry",
		require "weeks.green"
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
			"Week 4",
			{
				"Satin Panties",
				"High",
				"M.I.L.F"
			}
		},
		{
			"Week 5",
			{
				"Cocoa",
				"Eggnog",
				"Winter Horrorland"
			}
		},
		{
			"Week 6",
			{
				"Senpai",
				"Roses",
				"Thorns"
			},
		},
		{
			"Week 7",
			{
				"Ugh",
				"Guns",
				"Stress"
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
		[""] = require "states.hi",
		["WEEK 1"] = require "weeks.red",
		["WEEK 2"] = require "states.green",
		["WEEK 3"] = require "weeks.yellow",
		["WEEK 5"] = require "states.hi",
		["WEEK 6"] = require "states.hi",
		["WEEK 7"] = require "states.hi",
		["WEEK J"] = require "states.hi",
		["BOO!"] = require "states.hi",
		["TOMONGUS"] = require "states.hi",
		["HENRY"] = require "weeks.henry",
		["..."] = chooseMissCount
	}

	defeatWeekLololol = require "weeks.defeat"

	noteskins = {
		"arrows",
		"circles"
	}

	if love.system.getOS() == "NX" then
		love.window.setMode(1920, 1080)
	else
		love.window.setMode(
			settings.window.windowWidth,
			settings.window.windowHeight,
			{
				vsync = settings.window.vsync,
				fullscreen = settings.window.fullscreen,
				fullscreentype = settings.window.fullscreentype,
				resizable = true
			}
		)
	end
	--[[
	; Fullscreen settings, if you don't want Vsync (60 FPS cap), set "fullscreenType" to "exclusive" and "vsync" to "0"
	fullscreen=false
	fullscreenType=desktop
	vsync=1
	
	]]

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

	paused = false

	spriteTimers = {
		0, -- Girlfriend
		0, -- Enemy
		0 -- Boyfriend
	}

	storyMode = false
	countingDown = false

	menuDetails = {
		titleBG = {x = 0,y = 0,sizeX = 1,sizeY = 1},
		titleLogo = {x = 0,y = 0,sizeX = 1,sizeY = 1},
		girlfriendTitle = {x = 0,y = 0,sizeX = 1,sizeY = 1},
		selectBG = {x = 0,y = 0,sizeX = 1,sizeY = 1},
		selectBGOverlay = {x = 0,y = 0,sizeX = 1,sizeY = 1},
		selectUIElements = {x = 0,y = 0,sizeX = 1,sizeY = 1}
	}

	musicTime = 0
	
	health = {}
	health[1] = 50 -- tweened one
	health[2] = 50 -- normal one

	if curOS == "Web" then
		Gamestate.switch(clickStart)
	else
		Gamestate.switch(menu)
	end
end
function love.graphics.setColorF(R,G,B,A)
	local R, G, B = R/255 or 1, G/255 or 1, B/255 or 1 -- convert 255 values to work with the setColor
	graphics.setColor(R,G,B,A or 1) -- Alpha is not converted because using 255 alpha can be strange (I much rather 0-1 values lol)
end
if useDiscordRPC then
	function discordRPC.ready(userId, username, discriminator, avatar)
		print(string.format("Discord: ready (%s, %s, %s, %s)", userId, username, discriminator, avatar))
	end

	function discordRPC.disconnected(errorCode, message)
		print(string.format("Discord: disconnected (%d: %s)", errorCode, message))
	end

	function discordRPC.errored(errorCode, message)
		print(string.format("Discord: error (%d: %s)", errorCode, message))
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
	elseif key == "f11" then
		fullscreen = not fullscreen
		love.window.setFullscreen(fullscreen, fstype)
		love.resize(love.graphics.getDimensions())
	else
		volumeKeyPressed(key)
		Gamestate.keypressed(key)
	end
end

function love.textinput(text)
	Gamestate.textinput(text)
end

function love.mousepressed(x, y, button, istouch, presses)
	Gamestate.mousepressed(x, y, button, istouch, presses)
end

function love.update(dt)
	dt = math.min(dt, 1 / 30)

	delta = love.timer.getDelta()

	if volFade > 0 then
		volFade = volFade - 0.4 * delta
	end

	if Gamestate.current() ~= gjlogin then
		music[1]:update(dt)
		music[1]:setVolume(music.vol)
	end

	if paddy then 
		if paddy.dpad.isDown("gameLeft") then 
			--love.keypressed("left")
			input:setPressed("gameLeft")
			input:setDown("left")
		end
		if paddy.dpad.isDown("gameDown") then 
			--love.keypressed("down")
			input:setPressed("gameDown")
			input:setDown("down")
		end
		if paddy.dpad.isDown("gameUp") then 
			--love.keypressed("up")
			input:setPressed("gameUp")
			input:setDown("up")
		end
		if paddy.dpad.isDown("gameRight") then 
			--love.keypressed("right")
			input:setPressed("gameRight")
			input:setDown("right")
		end
		if paddy.dpad.isDown("enter") then 
			--love.keypressed("return") 
			input:setDown("confirm")
		end
		paddy.update(dt)
	end
	
	input:update(dt)

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
	if useDiscordRPC then
		if nextPresenceUpdate < love.timer.getTime() then
			discordRPC.updatePresence(presence)
			nextPresenceUpdate = love.timer.getTime() + 2.0
		end
		discordRPC.runCallbacks()
	end

	Timer.update(dt)
end

function love.draw()
	love.graphics.setFont(font)
	graphics.screenBase(lovesize.getWidth(), lovesize.getHeight())
	lovesize.begin()
		graphics.setColor(1, 1, 1) -- Fade effect on
		
		Gamestate.draw()
		if paddy then paddy.draw() end
		love.graphics.setColor(1, 1, 1) -- Fade effect off
		
		love.graphics.setFont(font)
		volumeControl()
		
	lovesize.finish()
	
	graphics.screenBase(love.graphics.getWidth(), love.graphics.getHeight())

	-- Debug output
	if settings.showDebug then
		love.graphics.print(status.getDebugStr(settings.showDebug), 5, 5, nil, 0.5, 0.5)
	end
end
function love.quit()
	if useDiscordRPC then
		discordRPC.shutdown()
	end
	saveAchivementsProgress()
	saveSettings()
end
