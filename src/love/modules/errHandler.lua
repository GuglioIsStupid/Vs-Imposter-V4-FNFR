if love.system.getOS() ~= "NX" then -- show message box doesn't work on Switch, so use the default error handler
	-- modified a slight bit from https://github.com/OverHypedDudes/love2dTemplate/blob/main/modules/errHandler.lua
	function love.errhand(error_message)
		local dialog_message = [[
Vanilla Engine crashed with the following error:	

%s
]]

		local titles = {"Oh no :(", "Uh oh...", "Uh... Seems like the game crashed.", "The game crashed!", "Yep, it crashed."}
		local full_error = debug.traceback(error_message or "")
		local message = string.format(dialog_message, full_error)
		local buttons = {"Report Error", "No thanks"}

		local selected = love.window.showMessageBox("An Error Has Occurred", message, buttons)

		local function url_encode(text)
			text = string.gsub(text, "\n", "%%0A")
			text = string.gsub(text, " ", "%%20")
			text = string.gsub(text, "#", "%%23")
			return text
		end

		local issuebody = [[
Vanilla Engine has crashed with the following error:
	
%s
	
[If you can, describe what you've been doing when the error occurred]
	
---
Affects: %s
Edition: %s
]]
	
		if selected == 1 then
			-- Surround traceback in ``` to get a Markdown code block
			full_error = table.concat({"```",full_error,"```"}, "\n")
			issuebody = string.format(issuebody, full_error, __VERSION__, love.system.getOS())
			issuebody = url_encode(issuebody)
		
			local subject = string.format("Crash in Vanilla Engine %s", __VERSION__)
			local url = string.format("https://github.com/VanillaEngineDevs/Vanilla-Engine/issues/new?title=%s&body=%s", subject, issuebody)
			love.system.openURL(url)
		end
	end
end