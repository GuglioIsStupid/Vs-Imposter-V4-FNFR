if love.filesystem.isFused() and love.system.getOS() == "Windows" then
	useDiscordRPC = true -- Set this to false if you don't want to use Discord RPC
	discordRPC = require "lib.discordRPC"
	appId = "924059160054755348"

    discordRPC.initialize(appId, true)
end
function updatePres(state, details)
    if useDiscordRPC then 
		local now = os.time(os.date("*t"))
		presence = {
			state = state,
			details = details,
			largeImageKey = "logo",
			startTimestamp = now,
		}
		nextPresenceUpdate = 0
	end
end