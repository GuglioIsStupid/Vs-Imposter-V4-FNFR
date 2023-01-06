local parseXml = require "lib.xmlParser"

local Sprite = Object:extend()

local stencilInfo
local function stencil()
    if stencilInfo then
        love.graphics.push()
        love.graphics.translate(stencilInfo.x + stencilInfo.width / 2,
                                stencilInfo.y + stencilInfo.height / 2)
        love.graphics.rotate(stencilInfo.angle)
        love.graphics.translate(-stencilInfo.width / 2, -stencilInfo.height / 2)
        love.graphics.rectangle("fill", 0, 0, stencilInfo.width,
                                stencilInfo.height)
        love.graphics.pop()
    end
end

local function startsWith(str, start)
    return str:sub(1, #start) == start
end

function Sprite.newFrame(name, x, y, w, h, sw, sh, ox, oy, ow, oh)
    local aw, ah = x + w, y + h
    return {
        name = name,
        quad = love.graphics.newQuad(x, y, aw > sw and w - (aw - sw) or w,
                                     ah > sh and h - (ah - sh) or h, sw, sh),
        width = ow == nil and w or ow,
        height = oh == nil and h or oh,
        offset = {x = ox == nil and 0 or ox, y = oy == nil and 0 or oy}
    }
end

function Sprite.getFramesFromSparrow(texture, description, settings)
    local settings = settings or {}
    if type(texture) == "string" then
        if settings.antialiasing == nil or settings.antialiasing then
            love.graphics.setDefaultFilter("linear", "linear")
            print("linear")
        else
            love.graphics.setDefaultFilter("nearest", "nearest")
            print("nearest")
        end
        texture = love.graphics.newImage(texture)
    end

    local frames = {texture = texture, frames = {}}
    local sw, sh = texture:getDimensions()
    for _, c in ipairs(parseXml(description).TextureAtlas.children) do
        if c.name == "SubTexture" then
            table.insert(frames.frames,
                         Sprite.newFrame(c.attrs.name, tonumber(c.attrs.x),
                                         tonumber(c.attrs.y),
                                         tonumber(c.attrs.width),
                                         tonumber(c.attrs.height), sw, sh,
                                         tonumber(c.attrs.frameX),
                                         tonumber(c.attrs.frameY),
                                         tonumber(c.attrs.frameWidth),
                                         tonumber(c.attrs.frameHeight)))
        end
    end

    return frames
end

function Sprite:new(x, y, settings, texture)
    if x == nil then x = 0 end
    if y == nil then y = 0 end
    self.x = x
    self.y = y
    self.settings = settings or {}

    self.texture = nil
    self.width, self.height = 0, 0
    self.antialiasing = true

    self.scale = {x = 1, y = 1}
    self.shear = {x = 0, y = 0}
    self.clipRect = nil
    self.flipX = false
    self.flipY = false

    self.origin = {x = 0, y = 0}
    self.offset = {x = 0, y = 0}

    self.color = {1, 1, 1}
    self.alpha = 1
    self.angle = 0

    self.sizeX, self.sizeY = 1, 1

    self.__frames = nil
    self.__animations = nil

    self.curAnim = nil
    self.curFrame = nil
    self.animFinished = nil
    self.animPaused = false

    if texture then self:load(texture) end
end

function Sprite:load(texture, width, height, settings)
    local settings = settings or {}
    if type(texture) == "string" then
        if settings.antialiasing == nil or settings.antialiasing then
            love.graphics.setDefaultFilter("linear", "linear")
        else
            love.graphics.setDefaultFilter("nearest", "nearest")
        end
        texture = love.graphics.newImage(texture)
        love.graphics.setDefaultFilter("linear", "linear")
    end
    self.texture = texture

    self.width = width
    if self.width == nil then self.width = self.texture:getWidth() end
    self.height = height
    if self.height == nil then self.height = self.texture:getHeight() end

    self.curAnim = nil
    self.curFrame = nil
    self.animFinished = nil
end

function Sprite:setFrames(frames)
    self.__frames = frames.frames
    self.texture = frames.texture

    local f = frames.frames[1]
    self:load(frames.texture, f.width, f.height, self.settings)
    self:centerOrigin()
end

function Sprite:getCurrentFrame()
    if self.curAnim then
        return self.curAnim.frames[math.floor(self.curFrame)]
    elseif self.__frames then
        return self.__frames[1]
    end
    return nil
end

function Sprite:getCurrentAnimation()
    return self.curAnim
end

function Sprite:setGraphicSize(width, height)
    if width == nil then width = 0 end
    if height == nil then height = 0 end

    self.scale = {
        x = width / self:getFrameWidth(),
        y = height / self:getFrameHeight()
    }

    if width <= 0 then
        self.scale.x = self.scale.y
    elseif height <= 0 then
        self.scale.y = self.scale.x
    end
end

function Sprite:updateHitbox()
    local w, h = self:getFrameDimensions()

    self.width = math.abs(self.scale.x) * w
    self.height = math.abs(self.scale.y) * h

    self.offset = {x = -0.5 * (self.width - w), y = -0.5 * (self.height - h)}
    self:centerOrigin()
end

function Sprite:getFrameWidth()
    local f = self:getCurrentFrame()
    if f then
        return f.width
    else
        return self.texture:getWidth()
    end
end

function Sprite:getFrameHeight()
    local f = self:getCurrentFrame()
    if f then
        return f.height
    else
        return self.texture:getHeight()
    end
end

function Sprite:getFrameDimensions()
    return self:getFrameWidth(), self:getFrameHeight()
end

function Sprite:centerOffsets()
    self.offset = {
        x = (self:getFrameWidth() - self.width) * 0.5,
        y = (self:getFrameHeight() - self.height) * 0.5
    }
end

function Sprite:centerOrigin()
    self.origin = {
        x = self:getFrameWidth() * 0.5,
        y = self:getFrameHeight() * 0.5
    }
end

function Sprite:addAnimByPrefix(name, prefix, framerate, looped)
    if framerate == nil then framerate = 30 end
    if looped == nil then looped = true end

    local anim = {
        name = name,
        framerate = framerate,
        looped = looped,
        offset = {x = 0, y = 0},
        frames = {}
    }
    for _, f in ipairs(self.__frames) do
        if startsWith(f.name, prefix) then
            table.insert(anim.frames, f)
        end
    end

    if not self.__animations then self.__animations = {} end
    self.__animations[name] = anim
end

function Sprite:addOffset(name, offsetX, offsetY)
    if offsetX == nil then offsetX = 0 end
    if offsetY == nil then offsetY = 0 end

    if self.__animations then
        local anim = self.__animations[name]
        if anim then
            anim.offset = {x = offsetX, y = offsetY}
        end
    end
end


function Sprite:addAnimByIndices(name, prefix, indices, framerate, looped)
    if framerate == nil then framerate = 30 end
    if looped == nil then looped = true end

    local anim = {
        name = name,
        framerate = framerate,
        offset = {x = 0, y = 0},
        looped = looped,
        frames = {}
    }
    local subEnd = #prefix + 1
    for _, i in ipairs(indices) do
        for _, f in ipairs(self.__frames) do
            if startsWith(f.name, prefix) and
                tonumber(string.sub(f.name, subEnd)) == i then
                table.insert(anim.frames, f)
                break
            end
        end
    end

    if not self.__animations then self.__animations = {} end
    self.__animations[name] = anim
end

function Sprite:animate(anim, loop)
    self.animFinished = false
    self.animPaused = false

    self.curAnim = self.__animations[anim]
    self.curFrame = 1

    if self.curAnim then
        self.curAnim.looped = loop or false
    end
    self.animFinished = false
    self.animPaused = false
end

function Sprite:stop()
    if self.curAnim then
        self.animFinished = true
        self.animPaused = true
    end
end

function Sprite:update(dt)
    if self.curAnim and not self.animFinished and not self.animPaused then
        self.curFrame = self.curFrame + self.curAnim.framerate * dt
        if self.curFrame >= #self.curAnim.frames then
            if self.curAnim.looped then
                self.curFrame = 1
            else
                self.animFinished = true
            end
        end
    end
end

function Sprite:setAnimSpeed(speed)
    if self.curAnim then
        self.curAnim.framerate = speed
    end
end

function Sprite:getAnimName()
    if self.curAnim then
        return self.curAnim.name
    end
    return nil
end

function Sprite:isAnimated()
    return not self.animFinished
end

function Sprite:isAnimName(name)
    if self.__animations[name] then return true end
end

function Sprite:draw()
    if self.alpha > 0 or self.scale.x > 0 or self.scale.y > 0 then
        love.graphics.push()

        local f = self:getCurrentFrame()
        local x = self.x
        local y = self.y
        local r = self.angle
        local sx = self.scale.x
        local sy = self.scale.y
        local ox = self.origin.x
        local oy = self.origin.y
        local kx = self.shear.x
        local ky = self.shear.y

        local curAnim = self:getCurrentAnimation()

        x = x - (self.offset.x - ox)
        y = y - (self.offset.y - oy)

        if self.flipX then sx = -sx end
        if self.flipY then sy = -sy end

        love.graphics.setColor(self.color[1], self.color[2], self.color[3],
                               self.alpha)

        local min, mag, anisotropy = self.texture:getFilter()
        local mode = self.antialiasing and "linear" or "nearest"
        self.texture:setFilter(mode, mode, anisotropy)

        if self.clipRect then
            stencilInfo = {
                x = self.x + self.clipRect.x,
                y = self.y + self.clipRect.y,
                width = self.clipRect.width,
                height = self.clipRect.height,
                angle = self.angle
            }
            love.graphics.stencil(stencil, "replace", 1)
            love.graphics.setStencilTest("greater", 0)
        end

        if not f then
            love.graphics.draw(self.texture, x, y, r, sx, sy, ox, oy, kx, ky)
        else
            if curAnim == nil then
                ox = ox + f.offset.x
                oy = oy + f.offset.y
            else
                ox = ox + f.offset.x + curAnim.offset.x
                oy = oy + f.offset.y + curAnim.offset.y
            end

            love.graphics.draw(self.texture, f.quad, x, y, r, sx, sy, ox, oy,
                               kx, ky)
        end

        if self.clipRect then
            stencilInfo = nil
            love.graphics.setStencilTest()
        end

        self.texture:setFilter(min, mag, anisotropy)

        love.graphics.pop()
    end
end

function Sprite:udraw(sizeX, sizeY)
    if self.alpha > 0 or self.scale.x > 0 or self.scale.y > 0 then
        love.graphics.push()

        local f = self:getCurrentFrame()
        local x = self.x
        local y = self.y
        local r = self.angle
        local sx = self.scale.x
        local sy = self.scale.y
        local ox = self.origin.x
        local oy = self.origin.y
        local kx = self.shear.x
        local ky = self.shear.y

        local curAnim = self:getCurrentAnimation()

        x = x - (self.offset.x - ox)
        y = y - (self.offset.y - oy)

        if self.flipX then sx = -sx end
        if self.flipY then sy = -sy end

        love.graphics.setColor(self.color[1], self.color[2], self.color[3],
                               self.alpha)

        local min, mag, anisotropy = self.texture:getFilter()
        local mode = self.antialiasing and "linear" or "nearest"
        self.texture:setFilter(mode, mode, anisotropy)

        if self.clipRect then
            stencilInfo = {
                x = self.x + self.clipRect.x,
                y = self.y + self.clipRect.y,
                width = self.clipRect.width,
                height = self.clipRect.height,
                angle = self.angle
            }
            love.graphics.stencil(stencil, "replace", 1)
            love.graphics.setStencilTest("greater", 0)
        end

        if not f then
            love.graphics.draw(self.texture, x, y, r, sizeX or 7, sizeY or 7, ox, oy, kx, ky)
        else
            if curAnim == nil then
                ox = ox + f.offset.x
                oy = oy + f.offset.y
            else
                ox = ox + f.offset.x + curAnim.offset.x
                oy = oy + f.offset.y + curAnim.offset.y
            end

            love.graphics.draw(self.texture, f.quad, x, y, r, sizeX or 7, sizeY or 7, ox, oy,
                               kx, ky)
        end

        if self.clipRect then
            stencilInfo = nil
            love.graphics.setStencilTest()
        end

        self.texture:setFilter(min, mag, anisotropy)

        love.graphics.pop()
    end
end

return Sprite