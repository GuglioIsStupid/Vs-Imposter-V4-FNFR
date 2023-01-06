--[[
 paddy - an onscreen controller display for touch enabled devices


 * Copyright (C) 2017 Ricky K. Thomson
 * 
 * This program is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU General Public License for more details.
 * u should have received a copy of the GNU General Public License
 * along with this program. If not, see <http://www.gnu.org/licenses/>.
 --]]

paddy = {}
paddy.touched = {}

paddy.dpad = {}
paddy.buttonw = 100
paddy.buttonh = 100

paddy.dpad.w = paddy.buttonw*4
paddy.dpad.h = paddy.buttonh*3
paddy.dpad.x = 300
paddy.dpad.y = love.graphics.getHeight()-20-paddy.dpad.h
paddy.dpad.opacity = 200
paddy.dpad.padding = 5
paddy.pressed = {}

paddy.dpad.buttons = {
	{ name="gameLeft",   x=0, y=0, col={155, 155, 155}},
	{ name="gameDown", x=110, y=0, col={155, 155, 155} },
	{ name="gameUp",x=220, y=0, col={155, 155, 155} },
	{ name="gameRight", x=330, y=0, col={155, 155, 155} },
	{ name="enter", x=0, y=110, col={155, 155, 155} },
}

function paddy.draw()

    for i,button in ipairs(paddy.dpad.buttons) do        
        if button.isDown then
			love.graphics.setColor(button.col[1]/255,button.col[2]/255,button.col[3]/255)
			love.graphics.rectangle("fill", 
				button.x+paddy.dpad.padding, 
				button.y+paddy.dpad.padding, 
				paddy.buttonw-paddy.dpad.padding*2, 
				paddy.buttonh-paddy.dpad.padding*2,
			10
			)
		else
			love.graphics.setColor(button.col[1]/255,button.col[2]/255,button.col[3]/255)	
			love.graphics.rectangle("line", 
				button.x+paddy.dpad.padding, 
				button.y+paddy.dpad.padding, 
				paddy.buttonw-paddy.dpad.padding*2, 
				paddy.buttonh-paddy.dpad.padding*2,
			10
			)
        end

    end
    
    love.graphics.setColor(255,255,255,paddy.dpad.opacity)
    love.graphics.draw(paddy.dpad.canvas, paddy.dpad.x, paddy.dpad.y)

    
    for i,id in ipairs(paddy.touched) do
		if love.system.getOS() == "Android" or love.system.getOS() == "iOS" then
			local x,y = love.touch.getPosition(id)
		else
			local x,y = love.mouse.getPosition()
		end		
		love.graphics.circle("fill",x,y,20)
    end


end

function paddy.dpad.isDown(key)
	for i,button in ipairs(paddy.dpad.buttons) do
		if button.isDown and button.name == key then return true end
	end
end

function paddy.dpad.pressed(key)
	for i,button in ipairs(paddy.dpad.buttons) do
		if button.pressed and button.name == key then 
			if not paddy.pressed[key] then
				paddy.pressed[key] = true
				return true
			else
				return false
			end
		else
			paddy.pressed[key] = false
			return false
		end
	end
end

function paddy.update(dt)
    paddy.touched = love.touch.getTouches()
	paddy.mousepressed = love.mouse.isDown(1)
 
	for i,button in ipairs(paddy.dpad.buttons) do
		button.isDown = false
		for i,id in ipairs(paddy.touched) do	
			local tx,ty = love.touch.getPosition(id)
			if  tx >= button.x 
			and tx <= button.x+paddy.buttonw 
			and ty >= button.y 
			and ty <= button.y+paddy.buttonh then
				button.isDown = true
			end
		end
		if paddy.mousepressed then
			local tx,ty = love.mouse.getPosition()
			if  tx >= button.x
			and tx <= button.x+paddy.buttonw
			and ty >= button.y
			and ty <= button.y+paddy.buttonh then
				button.isDown = true
			end
		end
    end
end


return paddy
