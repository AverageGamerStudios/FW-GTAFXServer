CreateThread(function ()
    local playerPed = PlayerPedId()
    while true do
        -- Here is where we will keep our engine logic
        -- Note: Needs inventory to work

        -- Disable roll
        local vehicle = GetVehiclePedIsIn(playerPed)
        if vehicle ~= 0 then
            if (GetEntityRoll(vehicle) > 75.0 or GetEntityRoll(vehicle) < -75.0) and GetEntitySpeed(vehicle) < 2 then
                if not Config.DisableRoll then return end
                DisableControlAction(0, 59, true)
                DisableControlAction(0, 60, true)
                DisableControlAction(0, 71, true)
                DisableControlAction(0, 72, true)
            end
        end
        Wait(0)
    end
end)

-- Events
RegisterNetEvent("worldcars:client:disableHotwiring", function (netId)
    if netId ~= 0 then
        local vehicle = NetworkGetEntityFromNetworkId(netId)
        if not DoesEntityExist(vehicle) then return end
        if not IsEntityAVehicle(vehicle) then return end
        SetVehicleNeedsToBeHotwired(vehicle, false)
    end
end)