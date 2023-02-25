return function(moonshine)
    local shader = love.graphics.newShader[[
        uniform float amount;

		vec2 PincushionDistortion(in vec2 uv, float strength) 
		{
			vec2 st = uv - 0.5;
			float uvA = atan(st.x, st.y);
			float uvD = dot(st, st);
			return 0.5 + vec2(sin(uvA), cos(uvA)) * sqrt(uvD) * (1.0 - strength * uvD);
		}

		vec3 ChromaticAbberation(Image tex, in vec2 uv) 
		{
            float rChannel = Texel(tex, PincushionDistortion(uv, 0.3 * amount)).r;
            float gChannel = Texel(tex, PincushionDistortion(uv, 0.15 * amount)).g;
            float bChannel = Texel(tex, PincushionDistortion(uv, 0.075 * amount)).b;
            vec3 retColor = vec3(rChannel, gChannel, bChannel);
            return retColor;
		}

		vec4 effect(vec4 color, Image texture, vec2 texture_coords, vec2 screen_coords)
		{
			vec2 uv = texture_coords;
			vec3 col = ChromaticAbberation(texture, uv);
		
			return vec4(col, 1.0);
		}
        ]]
  
    local setters = {}
    
    setters.amount = function(v)
      shader:send("amount", tonumber(v))
    end
  
    return moonshine.Effect{
      name = "ChromaticAbberation",
      setters = setters,
      defaults = {amount = 0},
      shader = shader
    }
  end

  --003