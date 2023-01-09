return function(moonshine)

    -- the shader only applies to near the bottom of the screen
    -- this shader is makes a effect that somewhat warps the bottom to make a heat haze effect
    local shader = love.graphics.newShader[[
        // slowly make the image bend in a wavy pattern from the middle and go left and right
        extern number time;
        extern number height;
        vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords)
        {

            vec2 wave = vec2(1.0, 0.0);

            // the lower it goes, the more intense waveAmount is
            if (screen_coords.y > 5) {
                wave.x = sin(screen_coords.y * 0.01 + time * 0.5) * height * 0.05;
            }

            vec2 offset = vec2(0.0, 0.0);
            offset.x = sin(screen_coords.y * 0.01 + time * 0.5) * height * 0.05;
            
            vec4 pixel = Texel(texture, texture_coords + offset);

            return pixel * color;
        }
    ]]

    local setters = {}

    setters.time = function(v)
        shader:send("time", tonumber(v) or 0)
    end

    setters.height = function(v)
        shader:send("height", math.max(0, math.min(1, tonumber(v) or 0)))
    end

    local defaults = {time = 0, height = 0.1}

    return moonshine.Effect{
        name = "steam",
        shader = shader,
        setters = setters,
        defaults = defaults
    }
end
