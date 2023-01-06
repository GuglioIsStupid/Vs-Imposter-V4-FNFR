--[[----------------------------------------------------------------------------
This file is part of Friday Night Funkin' Rewritten

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

local imageType = "png"
local fade = {1}
local isFading = false
color = {}

local fadeTimer

local screenWidth, screenHeight

return {
	screenBase = function(width, height)
		screenWidth, screenHeight = width, height
	end,
	getWidth = function()
		return screenWidth
	end,
	getHeight = function()
		return screenHeight
	end,

	imagePath = function(path)
		local pathStr = "images/" .. imageType .. "/" .. path .. "." .. imageType

		--[[
		if love.filesystem.getInfo(pathStr) then
			return pathStr
		else
			if love.filesystem.getInfo("images/png/" .. path .. ".png") then
				return "images/png/" .. path .. ".png"
			else
				return "mods/" .. mods.modNames[modWeekNum] .. "/images/png/" .. path .. ".png"
			end
		end
		--]]
		if love.filesystem.getInfo("images/dds/" .. path .. ".dds") then
			return "images/dds/" .. path .. ".dds"
		else
			if love.filesystem.getInfo("images/png/" .. path .. ".png") then
				return "images/png/" .. path .. ".png"
			else
				if love.filesystem.getInfo("mods/" .. mods.modNames[modWeekNum] .. "/images/dds/" .. path .. ".dds") then
					return "mods/" .. mods.modNames[modWeekNum] .. "/images/dds/" .. path .. ".dds"
				else
					return "mods/" .. mods.modNames[modWeekNum] .. "/images/png/" .. path .. ".png"
				end
			end
		end
	end,
	setImageType = function(type)
		imageType = type
	end,
	getImageType = function()
		return imageType
	end,

	newImage = function(imageData, optionsTable)
		local image, width, height

		local options

		local object = {
			x = 0,
			y = 0,
			orientation = 0,
			sizeX = 1,
			sizeY = 1,
			offsetX = 0,
			offsetY = 0,
			shearX = 0,
			shearY = 0,

			setImage = function(self, imageData)
				image = imageData
				width = image:getWidth()
				height = image:getHeight()
			end,

			getImage = function(self)
				return image
			end,

			draw = function(self)
				local x = self.x
				local y = self.y

				if options and options.floored then
					x = math.floor(x)
					y = math.floor(y)
				end

				love.graphics.draw(
					image,
					self.x,
					self.y,
					self.orientation,
					self.sizeX,
					self.sizeY,
					math.floor(width / 2) + self.offsetX,
					math.floor(height / 2) + self.offsetY,
					self.shearX,
					self.shearY
				)
			end,

			udraw = function(self,sizeX,sizeY) -- auto upscale pixel images
				local x = self.x
				local y = self.y
				local sizeX, sizeY = sizeX or 7, sizeY or 7

				if options and options.floored then
					x = math.floor(x)
					y = math.floor(y)
				end

				love.graphics.draw(
					image,
					self.x,
					self.y,
					self.orientation,
					sizeX,
					sizeY,
					math.floor(width / 2) + self.offsetX,
					math.floor(height / 2) + self.offsetY,
					self.shearX,
					self.shearY
				)
			end,

			cdraw = function(self,R,G,B,A)
				local R = R or 255
				local G = G or 255
				local B = B or 255
				local A = A or 1
				love.graphics.setColorF(R,G,B,A)
				local x = self.x
				local y = self.y

				if options and options.floored then
					x = math.floor(x)
					y = math.floor(y)
				end

				love.graphics.draw(
					image,
					self.x,
					self.y,
					self.orientation,
					self.sizeX,
					self.sizeY,
					math.floor(width / 2) + self.offsetX,
					math.floor(height / 2) + self.offsetY,
					self.shearX,
					self.shearY
				)
				love.graphics.setColor(1,1,1,1)
			end,
			
			cudraw = function(self,R,G,B,A,sizeX,sizeY) -- Colour draw for pixel assets
				local R = R or 255
				local G = G or 255
				local B = B or 255
				local A = A or 1
				love.graphics.setColorF(R,G,B,A)
				local x = self.x
				local y = self.y
				local sizeX, sizeY = sizeX or 7, sizeY or 7

				if options and options.floored then
					x = math.floor(x)
					y = math.floor(y)
				end
				love.graphics.draw(
					image,
					self.x,
					self.y,
					self.orientation,
					sizeX,
					sizeY,
					math.floor(width / 2) + self.offsetX,
					math.floor(height / 2) + self.offsetY,
					self.shearX,
					self.shearY
				)
				love.graphics.setColor(1,1,1,1)
			end
		}

		object:setImage(imageData)

		options = optionsTable

		return object
	end,

	newSprite = function(imageData, frameData, animData, animName, loopAnim, optionsTable)
		local sheet, sheetWidth, sheetHeight

		local frames = {}
		local frame
		local anims = animData
		local anim = {
			name = nil,
			start = nil,
			stop = nil,
			speed = nil,
			offsetX = nil,
			offsetY = nil
		}

		local isAnimated
		local isLooped

		local options

		local object = {
			x = 0,
			y = 0,
			orientation = 0,
			sizeX = 1,
			sizeY = 1,
			offsetX = 0,
			offsetY = 0,
			shearX = 0,
			shearY = 0,

			setSheet = function(self, imageData)
				sheet = imageData
				sheetWidth = sheet:getWidth()
				sheetHeight = sheet:getHeight()
			end,

			getSheet = function(self)
				return sheet
			end,

			animate = function(self, animName, loopAnim)
				if self:isAnimName(animName) then
					anim.name = animName
					anim.start = anims[animName].start
					anim.stop = anims[animName].stop
					anim.speed = anims[animName].speed
					anim.offsetX = anims[animName].offsetX
					anim.offsetY = anims[animName].offsetY

					frame = anim.start
					isLooped = loopAnim

					isAnimated = true
				else
					print("Error: " .. animName .. " is not a valid animation name.")
				end
			end,
			getAnims = function(self)
				return anims
			end,
			getAnimName = function(self)
				return anim.name
			end,
			isAnimName = function(self, animName)
				if anims[animName] then
					return true
				else
					return false
				end
			end,
			setAnimSpeed = function(self, speed)
				anim.speed = speed
			end,
			isAnimated = function(self)
				return isAnimated
			end,
			isLooped = function(self)
				return isLooped
			end,

			setOptions = function(self, optionsTable)
				options = optionsTable
			end,
			getOptions = function(self)
				return options
			end,

			update = function(self, dt)
				if not paused then
					if isAnimated then
						frame = frame + anim.speed * dt
					end

					if isAnimated and frame > anim.stop then
						if isLooped then
							frame = anim.start
						else
							isAnimated = false
						end
					end
				end
			end,
			draw = function(self, x, y)
				local flooredFrame = math.floor(frame)

				if flooredFrame <= anim.stop then
					local x = x or self.x
					local y = y or self.y 
					if x == 0 then 
						x = self.x 
					end
					if y == 0 then 
						y = self.y 
					end
					local width
					local height

					if options and options.floored then
						x = math.floor(x)
						y = math.floor(y)
					end

					if options and options.noOffset then
						if frameData[flooredFrame].offsetWidth ~= 0 then
							width = frameData[flooredFrame].offsetX
						end
						if frameData[flooredFrame].offsetHeight ~= 0 then
							height = frameData[flooredFrame].offsetY
						end
					else
						if frameData[flooredFrame].offsetWidth == 0 then
							width = math.floor(frameData[flooredFrame].width / 2)
						else
							width = math.floor(frameData[flooredFrame].offsetWidth / 2) + frameData[flooredFrame].offsetX
						end
						if frameData[flooredFrame].offsetHeight == 0 then
							height = math.floor(frameData[flooredFrame].height / 2)
						else
							height = math.floor(frameData[flooredFrame].offsetHeight / 2) + frameData[flooredFrame].offsetY
						end
					end

					love.graphics.draw(
						sheet,
						frames[flooredFrame],
						x,
						y,
						self.orientation,
						self.sizeX,
						self.sizeY,
						width + anim.offsetX + self.offsetX,
						height + anim.offsetY + self.offsetY,
						self.shearX,
						self.shearY
					)
				end
			end,

			udraw = function(self, sizeX, sizeY, x, y)
				local flooredFrame = math.floor(frame)
				local sizeX, sizeY = sizeX or 7, sizeY or 7

				if flooredFrame <= anim.stop then
					local x = x or self.x 
					local y = y or self.y 
					if x == 0 then 
						x = self.x 
					end
					if y == 0 then 
						y = self.y 
					end
					local width
					local height

					if options and options.floored then
						x = math.floor(x)
						y = math.floor(y)
					end

					if options and options.noOffset then
						if frameData[flooredFrame].offsetWidth ~= 0 then
							width = frameData[flooredFrame].offsetX
						end
						if frameData[flooredFrame].offsetHeight ~= 0 then
							height = frameData[flooredFrame].offsetY
						end
					else
						if frameData[flooredFrame].offsetWidth == 0 then
							width = math.floor(frameData[flooredFrame].width / 2)
						else
							width = math.floor(frameData[flooredFrame].offsetWidth / 2) + frameData[flooredFrame].offsetX
						end
						if frameData[flooredFrame].offsetHeight == 0 then
							height = math.floor(frameData[flooredFrame].height / 2)
						else
							height = math.floor(frameData[flooredFrame].offsetHeight / 2) + frameData[flooredFrame].offsetY
						end
					end

					love.graphics.draw(
						sheet,
						frames[flooredFrame],
						x,
						y,
						self.orientation,
						sizeX,
						sizeY,
						width + anim.offsetX + self.offsetX,
						height + anim.offsetY + self.offsetY,
						self.shearX,
						self.shearY
					)
				end
			end,

			cdraw = function(self,R,G,B,A)
				local R = R or 255
				local G = G or 255
				local B = B or 255
				local A = A or 1
				love.graphics.setColorF(R,G,B,A)
				local flooredFrame = math.floor(frame)

				if flooredFrame <= anim.stop then
					local x = self.x
					local y = self.y
					local width
					local height

					if options and options.floored then
						x = math.floor(x)
						y = math.floor(y)
					end

					if options and options.noOffset then
						if frameData[flooredFrame].offsetWidth ~= 0 then
							width = frameData[flooredFrame].offsetX
						end
						if frameData[flooredFrame].offsetHeight ~= 0 then
							height = frameData[flooredFrame].offsetY
						end
					else
						if frameData[flooredFrame].offsetWidth == 0 then
							width = math.floor(frameData[flooredFrame].width / 2)
						else
							width = math.floor(frameData[flooredFrame].offsetWidth / 2) + frameData[flooredFrame].offsetX
						end
						if frameData[flooredFrame].offsetHeight == 0 then
							height = math.floor(frameData[flooredFrame].height / 2)
						else
							height = math.floor(frameData[flooredFrame].offsetHeight / 2) + frameData[flooredFrame].offsetY
						end
					end

					love.graphics.draw(
						sheet,
						frames[flooredFrame],
						x,
						y,
						self.orientation,
						self.sizeX,
						self.sizeY,
						width + anim.offsetX + self.offsetX,
						height + anim.offsetY + self.offsetY,
						self.shearX,
						self.shearY
					)
				end
				love.graphics.setColor(1,1,1,1)
			end,
			
			cudraw = function(self,R,G,B,A,sizeX,sizeY) -- Colour draw for pixel assets
				local R = R or 255
				local G = G or 255
				local B = B or 255
				local A = A or 1
				love.graphics.setColorF(R,G,B,A)
				local flooredFrame = math.floor(frame)
				local sizeX, sizeY = sizeX or 7, sizeY or 7

				if flooredFrame <= anim.stop then
					local x = self.x
					local y = self.y
					local width
					local height

					if options and options.floored then
						x = math.floor(x)
						y = math.floor(y)
					end

					if options and options.noOffset then
						if frameData[flooredFrame].offsetWidth ~= 0 then
							width = frameData[flooredFrame].offsetX
						end
						if frameData[flooredFrame].offsetHeight ~= 0 then
							height = frameData[flooredFrame].offsetY
						end
					else
						if frameData[flooredFrame].offsetWidth == 0 then
							width = math.floor(frameData[flooredFrame].width / 2)
						else
							width = math.floor(frameData[flooredFrame].offsetWidth / 2) + frameData[flooredFrame].offsetX
						end
						if frameData[flooredFrame].offsetHeight == 0 then
							height = math.floor(frameData[flooredFrame].height / 2)
						else
							height = math.floor(frameData[flooredFrame].offsetHeight / 2) + frameData[flooredFrame].offsetY
						end
					end

					love.graphics.draw(
						sheet,
						frames[flooredFrame],
						x,
						y,
						self.orientation,
						sizeX,
						sizeY,
						width + anim.offsetX + self.offsetX,
						height + anim.offsetY + self.offsetY,
						self.shearX,
						self.shearY
					)
				end
				love.graphics.setColor(1,1,1,1)
			end
		}

		object:setSheet(imageData)

		for i = 1, #frameData do
			table.insert(
				frames,
				love.graphics.newQuad(
					frameData[i].x,
					frameData[i].y,
					frameData[i].width,
					frameData[i].height,
					sheetWidth,
					sheetHeight
				)
			)
		end

		object:animate(animName, loopAnim)

		options = optionsTable

		return object
	end,

	setFade = function(value)
		if fadeTimer then
			Timer.cancel(fadeTimer)

			isFading = false
		end

		fade[1] = value
	end,
	getFade = function(value)
		return fade[1]
	end,
	fadeOut = function(duration, func)
		if fadeTimer then
			Timer.cancel(fadeTimer)
		end

		isFading = true

		fadeTimer = Timer.tween(
			duration,
			fade,
			{0},
			"linear",
			function()
				isFading = false

				if func then func() end
			end
		)
	end,
	fadeIn = function(duration, func)
		if fadeTimer then
			Timer.cancel(fadeTimer)
		end

		isFading = true

		fadeTimer = Timer.tween(
			duration,
			fade,
			{1},
			"linear",
			function()
				isFading = false

				if func then func() end
			end
		)
	end,
	isFading = function()
		return isFading
	end,
	newVertGradient = function(w, h, c1, c2)
		local data = love.image.newImageData(1, h)
		for j=0, h-1 do
			local percent = j/h
			local r = c1[1] + (c2[1] - c1[1]) * percent
			local g = c1[2] + (c2[2] - c1[2]) * percent
			local b = c1[3] + (c2[3] - c1[3]) * percent
			local a = c1[4] + (c2[4] - c1[4]) * percent
			data:setPixel(0, j, r, g, b, a)
		end
		local img = love.graphics.newImage(data)
		img:setWrap('repeat', 'clamp')

		local quad = love.graphics.newQuad(0, 0, w, h, 1, h)

		return img, quad
	end,
	updateVertGradient = function(img, quad, w, h, c1, c2)
		local data = love.image.newImageData(1, h)
		for j=0, h-1 do
			local percent = j/h
			local r = c1[1] + (c2[1] - c1[1]) * percent
			local g = c1[2] + (c2[2] - c1[2]) * percent
			local b = c1[3] + (c2[3] - c1[3]) * percent
			local a = c1[4] + (c2[4] - c1[4]) * percent
			data:setPixel(0, j, r, g, b, a)
		end
		img:replacePixels(data)
		img:setWrap('repeat', 'clamp')

		quad:setViewport(0, 0, w, h)
	end,
	drawGradient = function(gradient, quad, x, y)
		love.graphics.draw(gradient, quad, x, y)
	end,
	clear = function(r, g, b, a, s, d)
		local fade = fade[1]

		love.graphics.clear(fade * r, fade * g, fade * b, a, s, d)
	end,
	setColor = function(r, g, b, a)
		local fade = fade[1]

		love.graphics.setColor(fade * r, fade * g, fade * b, a)
	end,
	setColorF = function(r, g, b, a)
		local fade = fade[1]

		love.graphics.setColor(fade * (r/255), fade * (g/255), fade * (b/255), a)
	end,
	setBackgroundColor = function(r, g, b, a)
		local fade = fade[1]

		love.graphics.setBackgroundColor(fade * r, fade * g, fade * b, a)
	end,
	getColor = function()
		local r, g, b, a = love.graphics.getColor()
		local fade = fade[1]

		return r / fade, g / fade, b / fade, a
	end
}
