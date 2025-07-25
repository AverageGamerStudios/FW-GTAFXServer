-- Events
RegisterNetEvent("binds:client:addKeybinding", function (commandName, commandDesc, defaultMapper, defaultParameter)
    RegisterKeyMapping(commandName, commandDesc, defaultMapper, defaultParameter)
end)