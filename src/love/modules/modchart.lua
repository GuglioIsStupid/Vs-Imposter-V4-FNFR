local handler = {}

function handler:loadMod(modchart)
    mod = require (modchart)
end

function handler:onLoad()
    if mod and mod.onLoad then
        mod:onLoad()
    end
end

function handler:onUpdate(dt)
    if mod and mod.onUpdate then
        mod:onUpdate(dt)
    end
end

function handler:onBeat(n)
    if mod and mod.onBeat then
        mod:onBeat(n)
    end
end

function handler:onKeyPressed(key)
    if mod and mod.onKeyPressed then
        mod:onKeyPressed(key)
    end
end

function handler:onKeyReleased(key)
    if mod and mod.onKeyReleased then
        mod:onKeyReleased(key)
    end
end

return handler