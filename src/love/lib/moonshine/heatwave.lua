return function(moonshine)
    local shader = love.graphics.newShader[[
        extern number iTime;
        vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords) {
            vec2 p_m = texture_coords;
            vec2 p_d = p_m;

            p_d.t -= iTime * 0.05;
            p_d.t = mod(p_d.t, 1.0);

            vec4 dst_map_val = Texel(texture, p_d);

            vec2 dst_offset = dst_map_val.xy;
            dst_offset -= vec2(.5,.5);
            dst_offset *= 2.;
            dst_offset *= 0.009; //THIS CONTROLS THE INTENSITY [higher numbers = MORE WAVY]

            //reduce effect towards Y top
            dst_offset *= pow(p_m.t, 1.4); //THIS CONTROLS HOW HIGH UP THE SCREEN THE EFFECT GOES [higher numbers = less screen space]

            vec2 dist_tex_coord = p_m.st + dst_offset;
            return Texel(texture, dist_tex_coord);
        }
        ]]
  
    local setters = {}
    
    setters.time = function(v)
      shader:send("iTime", tonumber(v))
    end
  
    return moonshine.Effect{
      name = "heatwave",
      setters = setters,
      defaults = {time = 0},
      shader = shader
    }
  end