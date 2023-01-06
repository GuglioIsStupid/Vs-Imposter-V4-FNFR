local curDir, dirTable
local BASE = ... .. "."
return {
    load = function(self)
        playModMenu = require(BASE .. "playModMenu")
        if not love.filesystem.getInfo("mods", "directory") then
            love.filesystem.createDirectory("mods")
        end
        dirTable = love.filesystem.getDirectoryItems("mods")
        for i = 1, #dirTable do
            --print(love.filesystem.getInfo("mods/" .. dirTable[i], "directory"))
            mods[i] = require("mods." .. dirTable[i] .. ".meta")
            mods[i]:setModName()
            mods[i]:setWeekMeta()
            mods[i]:setWeek()
            mods[i]:setStage()
            --print(mods.weekMeta[1])
        end
    end
}
