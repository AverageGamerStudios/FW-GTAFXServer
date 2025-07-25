Commands = {}
Commands.Suggestions = {}

function Commands.AddCommand(commandName, handler, suggestion)
    if suggestion then Commands.Suggestions[suggestion] = suggestion end
    RegisterCommand(commandName, function (source, args)
        handler(source, args)
    end)
end