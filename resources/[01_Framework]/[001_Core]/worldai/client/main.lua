CreateThread(function ()
    if Config.DisableAmbience then
        DistantCopCarSirens(false)
        SetAudioFlag("DisableFlightMusic", true)
    end

    if Config.DisableWantedLevel then
        SetMaxWantedLevel(0)

        SetCreateRandomCops(false)
        SetCreateRandomCopsOnScenarios(false)
        SetCreateRandomCopsNotOnScenarios(false)
    end

    if Config.DisableDispatchServices then
        for _, dispatchService in pairs(Config.DispatchServices) do
            EnableDispatchService(dispatchService.index, dispatchService.enabled)
        end
    end

    if Config.DisableBoats then SetRandomBoats(false) end
    if Config.DisableGarbageTrucks then SetGarbageTrucks(false) end

    if Config.Relationships then
        for _, relationship in pairs(Config.Relationships) do
            SetRelationshipBetweenGroups(relationship.value, relationship.group1, relationship.group2)
        end
    end

    if Config.ScenarioTypes then
        for _, scenario in pairs(Config.ScenarioTypes) do
            SetScenarioTypeEnabled(scenario.type, false)
        end
    end

    while true do

        -- Train logic
        if Config.Trains then
            for _, trainTrack in pairs(Config.Trains.Tracks) do
                SwitchTrainTrack(trainTrack.index, trainTrack.enabled)
                SetTrainTrackSpawnFrequency(trainTrack.index, Config.Trains.SpawnFrequency)
            end
        end

        -- Density logic
        if Config.Density then
            SetPedDensityMultiplierThisFrame(Config.Density.PedMultiplier)
            SetScenarioPedDensityMultiplierThisFrame(Config.Density.ScenarioPedMultiplier)
            SetParkedVehicleDensityMultiplierThisFrame(Config.Density.ParkedVehicleMultiplier)
            SetRandomVehicleDensityMultiplierThisFrame(Config.Density.VehicleMultiplier)
            SetVehicleDensityMultiplierThisFrame(Config.Density.VehicleMultiplier)
        end
        Wait(0)
    end
end)