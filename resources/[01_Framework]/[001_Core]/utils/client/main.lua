Utilities = {}

function Utilities.Debug(message)
    local pMessage = ("[%s] %s"):format(Config.LogName, message)
    print(pMessage)
end

function Utilities.Number(min, max)
    assert(type(min) == "number", "This value is not a number!")
    assert(type(max) == "number", "This value is not a number!")
    return math.random(min, max)
end