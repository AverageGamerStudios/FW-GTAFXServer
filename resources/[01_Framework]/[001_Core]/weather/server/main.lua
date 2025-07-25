-- Events
RegisterNetEvent("weather:server:syncWeather", function ()
    TriggerClientEvent("weather:client:syncWeather", -1, Config.DefaultWeatherType)
end)