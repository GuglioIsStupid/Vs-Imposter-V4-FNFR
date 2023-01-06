local script = {}

function script.onLoad()
    -- This function is called when the modchart is loaded
    print("Modchart loaded!")
end

function script.onUpdate(self, dt)
    -- This function is called every frame
end

function script.onBeat(self, n)
    -- This function is called every beat
end

function script.onKeyPressed(self, key)
    -- This function is called when a key is pressed
    print("Key pressed: " .. key)
end

function script.onKeyReleased(self, key)
    -- This function is called when a key is released
    print("Key released: " .. key)
end

return script