local util = {}

function util.lerp(a, b, t)
    return a + (b - a) * t
end

function util.clamp(x, min, max)
    return x < min and min or (x > max and max or x)
end

function util.startsWith(str, start)
    return str:sub(1, #start) == start
end

function util.endsWith(str, ending)
    return ending == "" or str:sub(-#ending) == ending
end

function util.round(num)
    return math.floor(num + 0.5)
end

return util