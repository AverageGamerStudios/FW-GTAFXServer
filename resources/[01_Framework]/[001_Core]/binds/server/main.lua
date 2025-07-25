Binds = {}

function Binds.AddKeybinding(source, commandName, commandDesc, category, key)
    if not commandName or not tostring(commandName) then Utilities.Debug("No name provided!") return end
    if not commandDesc or not tostring(commandDesc) then Utilities.Debug("No description provided!") return end
    if not category or not tostring(category) then Utilities.Debug("No category provided!") return end
    local description = "(".. category ..")" .. commandDesc
    if not description or tostring(description) then return end
    TriggerClientEvent("binds:client:addKeybinding", source, commandName, description, "keyboard", tostring(key))
end