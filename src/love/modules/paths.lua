local function endsWith(str, ending)
    return ending == "" or string.sub(str, -#ending) == ending
end
local function isFile(path)
    local info = love.filesystem.getInfo(path)
    return info and info.type == "file"
end

local paths = {}

function paths.getText(key)
    local path = key
    if isFile(path) then
        local contents = love.filesystem.read(path)
        return contents
    end
    return nil
end

function paths.getJSON(key) return decodeJson(paths.getText(key .. ".json")) end

function paths.getImage(key, settings)
    local settings = settings or {}
    local path = graphics.imagePath(key)
    if isFile(path) then
        local img = love.graphics.newImage(path)
        if settings.antialiasing == nil or settings.antialiasing then
            img:setFilter("linear", "linear")
        elseif not settings.antialiasing then
            img:setFilter("nearest", "nearest")
        end
        return img
    end

    return nil
end

function paths.getSparrowFrames(key, settings)
    local xmlKey = "sprites/" .. key .. ".xml"
    local img, path = paths.getImage(key, settings), xmlKey
    if img and isFile(path) then
        return sprite.getFramesFromSparrow(img, paths.getText(xmlKey))
    end

    return nil
end

return paths