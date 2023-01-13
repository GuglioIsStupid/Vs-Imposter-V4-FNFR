local coolUtil = {}

function coolUtil.lerp(a, b, t)
    return a + (b - a) * t
end

function coolUtil.boundTo(a, b, c)
    return math.max(a, math.min(b, c))
end

function coolUtil.clamp(a, b)
    return math.max(a, math.min(b, a))
end

return coolUtil