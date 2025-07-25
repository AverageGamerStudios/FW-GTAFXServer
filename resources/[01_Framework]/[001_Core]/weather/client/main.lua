local weatherType = ""

local synced = false

local h = 0
local m = 0
local s = 0
local looptime = 0

CreateThread(function ()
    while not NetworkIsPlayerActive(PlayerId()) do
        Wait(0)
    end
    TriggerServerEvent("weather:server:syncTime")
    while not synced do
        Wait(0)
    end
    TriggerEvent("weather:client:overrideTime")
end)

-- Events
RegisterNetEvent("playerSpawned", function ()
    TriggerServerEvent("weather:server:syncWeather")
    TriggerServerEvent("weather:server:syncTime")
end)

RegisterNetEvent("weather:client:syncWeather", function (newWeatherType)
    CreateThread(function ()
        local playerPed = PlayerPedId()
        weatherType = newWeatherType
        if weatherType == "XMAS" then
            SetForceFootstepUpdate(playerPed, true)
            SetForcePedFootstepsTracks(true)
            SetForceVehicleTrails(true)
        end
        SetWeatherTypeOvertimePersist(weatherType, 45.0)
    end)
end)