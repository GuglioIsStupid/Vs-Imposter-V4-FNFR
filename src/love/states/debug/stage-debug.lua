-- uhhhh this file was uh made by GuglioIsStupid
-- Some code was used from sprite debug ig
local menuID, selection
local curDir, dirTable
local stageImgNames = {}
local curChanging = "stage"
return {
    stageViewerSearch = function(self, dir)
        svMode = 1

		if curDir then
			curDir = curDir .. "/" .. dir
		else
			curDir = dir
		end
		selection = 1
		dirTable = love.filesystem.getDirectoryItems(curDir)
    end,

    spriteViewer = function(self, spritePath)
		svMode = 2
	end,

    enter = function(self, previous)
        menuID = 1
        selection = 3

        love.keyboard.setKeyRepeat(true)

        menus = {
            {
                1,
                "Really Bad Debug Menu",
                {
                    "Stage Viewer",
                    function()
                        menuID = 2

                        self:stageViewerSearch("stages")
                    end
                }
            },
            {2}
        }

        graphics.setFade(0)
        graphics.fadeIn(0.5)
    end,

    keypressed = function(self, key)
		if menus[menuID][1] == 2 then -- Stage viewer
			if svMode == 2 then
                -- Stage Positions
				if curChanging == "stage" then
					if key == "a" then
						stageImages[stageImgNames[selection]].x = stageImages[stageImgNames[selection]].x - 1
					elseif key == "d" then
						stageImages[stageImgNames[selection]].x = stageImages[stageImgNames[selection]].x + 1
					elseif key == "w" then
						stageImages[stageImgNames[selection]].y = stageImages[stageImgNames[selection]].y - 1
					elseif key == "s" then
						stageImages[stageImgNames[selection]].y = stageImages[stageImgNames[selection]].y + 1
					end
				elseif curChanging == "boyfriend" then 
					if key == "a" then
						boyfriend.x = boyfriend.x - 1
					elseif key == "d" then
						boyfriend.x = boyfriend.x + 1
					elseif key == "w" then
						boyfriend.y = boyfriend.y - 1
					elseif key == "s" then
						boyfriend.y = boyfriend.y + 1
					end
				elseif curChanging == "girlfriend" then 
					if key == "a" then
						girlfriend.x = girlfriend.x - 1
					elseif key == "d" then
						girlfriend.x = girlfriend.x + 1
					elseif key == "w" then
						girlfriend.y = girlfriend.y - 1
					elseif key == "s" then
						girlfriend.y = girlfriend.y + 1
					end
				end
			end
		end
	end,

    update = function(self, dt)
		-- I wasn't kidding when I said this was a really bad debug menu
		if menus[menuID][1] == 2 then -- Stage viewer
			if svMode == 2 then
                stages[fileStr]:update(dt)
                boyfriend:update(dt)
                girlfriend:update(dt)
				enemy:update(dt)
				if input:pressed("up") then
					selection = selection - 1

					if selection < 1 then
						selection = #stageImgNames
					end
				end
				if input:pressed("down") then
					selection = selection + 1

					if selection > #stageImgNames then
						selection = 1
					end
				end
				if input:pressed("right") then 
					if curChanging == "stage" then 
						curChanging = "boyfriend"
					elseif curChanging == "boyfriend" then
						curChanging = "girlfriend"
					elseif curChanging == "girlfriend" then
						curChanging = "stage"
					end
				elseif input:pressed("left") then 
					if curChanging == "stage" then 
						curChanging = "girlfriend"
					elseif curChanging == "boyfriend" then
						curChanging = "stage"
					elseif curChanging == "girlfriend" then
						curChanging = "boyfriend"
					end
				end
			else
				if input:pressed("up") then
					selection = selection - 1

					if selection < 1 then
						selection = #dirTable
					end
				end
				if input:pressed("down") then
					selection = selection + 1

					if selection > #dirTable then
						selection = 1
					end
				end
				if input:pressed("confirm") then
					if love.filesystem.getInfo(curDir .. "/" .. dirTable[selection]).type == "directory" then
                        fileStr = dirTable[selection]
                        fileStr = fileStr:sub(1, -5)
                        stages[fileStr]:enter()
                        selection = 1
						self:stageViewerSearch(dirTable[selection])
					else
                        fileStr = dirTable[selection]
                        fileStr = fileStr:sub(1, -5)
                        boyfriend = Character.boyfriend(0, 0)
                        girlfriend = Character.girlfriend(0, 0)
                        stages[fileStr]:enter()
						for i, v in pairs(stageImages) do
							-- insert into the stageImgNames table
							table.insert(stageImgNames, i)
						end
                        selection = 1
						self:spriteViewer(curDir .. "/" .. dirTable[selection])
						boyfriend:animate("idle", true)
						girlfriend:animate("idle", true)
						enemy:animate("idle", true)
					end
				end
			end
		else -- Standard menu
			if input:pressed("up") then
				selection = selection - 1

				if selection < 3 then
					selection = #menus[menuID]
				end
			end
			if input:pressed("down") then
				selection = selection + 1

				if selection > #menus[menuID] then
					selection = 3
				end
			end
			if input:pressed("confirm") then
				menus[menuID][selection][2]()
			end
		end

		if input:pressed("back") then
			graphics.fadeOut(0.5, love.event.quit)
		end
		if input:pressed("debugZoomOut") then
			cam.sizeX, cam.sizeY = cam.sizeX - 0.05, cam.sizeY - 0.05
		end
		if input:pressed("debugZoomIn") then
			cam.sizeX, cam.sizeY = cam.sizeX + 0.05, cam.sizeY + 0.05
		end
	end,

    draw = function()
        if menus[menuID][1] == 2 then -- Sprite viewer
			if svMode == 2 then
				graphics.clear(0.5, 0.5, 0.5)

				love.graphics.push()
					love.graphics.translate(lovesize.getWidth() / 2, lovesize.getHeight() / 2)
					love.graphics.scale(cam.sizeX, cam.sizeY)
                    stages[fileStr]:draw()
				love.graphics.pop()

				if curChanging == "stage" then
					love.graphics.print(stageImgNames[selection], 0, 0)
					love.graphics.print("X: " .. stageImages[stageImgNames[selection]].x ..
						"\nY:" .. stageImages[stageImgNames[selection]].y ..
						"\nSizeX:" .. stageImages[stageImgNames[selection]].sizeX ..
						"\nSizeY:" .. stageImages[stageImgNames[selection]].sizeY, 0, 40
					)
				elseif curChanging == "boyfriend" then
					love.graphics.print("Boyfriend", 0, 0)
					love.graphics.print("X: " .. boyfriend.x ..
						"\nY:" .. boyfriend.y ..
						"\nSizeX:" .. boyfriend.sizeX ..
						"\nSizeY:" .. boyfriend.sizeY, 0, 40
					)
				elseif curChanging == "girlfriend" then
					love.graphics.print("Girlfriend", 0, 0)
					love.graphics.print("X: " .. girlfriend.x ..
						"\nY:" .. girlfriend.y ..
						"\nSizeX:" .. girlfriend.sizeX ..
						"\nSizeY:" .. girlfriend.sizeY, 0, 40
					)
				end
                for i = 1, #menus[menuID] do
                    if i == selection then
                        graphics.setColor(1, 1, 0)
                    end
                    graphics.setColor(1, 1, 1)
                        
                    love.graphics.print("\n\n\n\n\n\n\n\nPress Esc to exit at any time", 0, (#menus[menuID] + 1) * 20)
                end
			else
				for i = 1, #dirTable do
					if i == selection then
						graphics.setColor(1, 1, 0)
					elseif love.filesystem.getInfo(curDir .. "/" .. dirTable[i]).type == "directory" then
						graphics.setColor(1, 0, 1)
					end
					love.graphics.print(dirTable[i], 0, (i - 1) * 20)
					graphics.setColor(1, 1, 1)
				end
			end
		else -- Standard menu
			love.graphics.print(menus[menuID][2])

			for i = 3, #menus[menuID] do
				if i == selection then
					graphics.setColor(1, 1, 0)
				end
				love.graphics.print(menus[menuID][i][1], 0, (i - 1) * 20)
				graphics.setColor(1, 1, 1)

				love.graphics.print("Press Esc to exit at any time", 0, (#menus[menuID] + 1) * 20)
			end
		end
    end
}