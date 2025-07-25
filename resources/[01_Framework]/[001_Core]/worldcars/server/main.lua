-- Events
RegisterNetEvent("entityCreated", function (entity)
    if not DoesEntityExist(entity) then return end
    local netId = NetworkGetNetworkIdFromEntity(entity)

    -- Vehicle lock logic
    local doorLockStatus = 7
    local isVehicleRunning = GetIsVehicleEngineRunning(entity)
    if Config.LockParkedCars and not isVehicleRunning then doorLockStatus = 2 end
    if not Config.LockParkedCars and not isVehicleRunning and Utilities.Number(0, 100) > Config.CarUnlockChance then
        doorLockStatus = 2
    end
    
    SetVehicleDoorsLocked(entity, doorLockStatus)
    TriggerClientEvent("worldcars:client:disableHotwiring", -1, netId)
end)