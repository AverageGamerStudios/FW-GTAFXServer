Config = {}

-- Whether or not to disable the wanted level
Config.DisableWantedLevel = true

-- Whether or not to disable the dispatch services
Config.DisableDispatchServices = true

-- List of dispatch services to disable
Config.DispatchServices = {
    { index = 0, enabled = false, },
    { index = 1, enabled = false, },
    { index = 2, enabled = false, },
    { index = 3, enabled = false, },
    { index = 4, enabled = false, },
    { index = 5, enabled = false, },
    { index = 6, enabled = false, },
    { index = 7, enabled = false, },
    { index = 8, enabled = false, },
    { index = 9, enabled = false, },
    { index = 10, enabled = false, },
    { index = 11, enabled = false, },
    { index = 13, enabled = false, },
    { index = 14, enabled = false, },
    { index = 15, enabled = false, },
}

-- Whether or not to disable ambience
-- Distant cop car sirens, flight music, etc
Config.DisableAmbience = true

-- The table for the city density
Config.Density = {}

-- The ped density multiplier
Config.Density.PedMultiplier = 0.7

-- The scenario ped multiplier
Config.Density.ScenarioPedMultiplier = 0.3

-- The parked vehicle multiplier
Config.Density.ParkedVehicleMultiplier = 1.0

-- The random vehicle multiplier
Config.Density.VehicleMultiplier = 0.7

-- Whether or not to disable boats
Config.DisableBoats = true

-- Whether or not to disable garbage trucks
Config.DisableGarbageTrucks = true

Config.Trains = {}

-- The tracks for the trains
Config.Trains.Tracks = {
    { index = 0, enabled = true },
    { index = 3, enabled = true },
    { index = 7, enabled = true },
    { index = 10, enabled = true },
}

-- How often to spawn trains
Config.Trains.SpawnFrequency = 0.7

-- Scenario types
Config.ScenarioTypes = {
    { type = `WORLD_VEHICLE_POLICE_CAR` },
    { type = `WORLD_VEHICLE_POLICE_NEXT_TO_CAR` },
    { type = `WORLD_VEHICLE_POLICE_BIKE` },
    { type = `WORLD_VEHICLE_AMBULANCE` },
    { type = `WORLD_VEHICLE_BICYCLE_BMX` },
    { type = `WORLD_VEHICLE_BICYCLE_BMX_FAMILY` },
    { type = `WORLD_VEHICLE_BICYCLE_BMX_BALLAS` },
    { type = `WORLD_VEHICLE_BICYCLE_BMX_VAGOS` },
    { type = `WORLD_VEHICLE_BICYCLE_BMX_HARMONY` },
}

-- Relationship groups
Config.Relationships = {
    { value = 2, group1 = `PLAYER`, group2 = `PLAYER` },
    { value = 2, group1 = `PLAYER`, group2 = `SECURITY_GUARD` },
    { value = 2, group1 = `PLAYER`, group2 = `PRIVATE_SECURITY` },
    { value = 2, group1 = `PLAYER`, group2 = `SECURITY_GUARD` },
    { value = 2, group1 = `PLAYER`, group2 = `COP` },
    { value = 2, group1 = `PLAYER`, group2 = `AMBIENT_GANG_LOST` },
    { value = 2, group1 = `PLAYER`, group2 = `AMBIENT_GANG_FAMILY` },
    { value = 2, group1 = `PLAYER`, group2 = `AMBIENT_GANG_BALLAS` },
    { value = 2, group1 = `PLAYER`, group2 = `AMBIENT_GANG_HARMONY` },
    { value = 2, group1 = `PLAYER`, group2 = `AMBIENT_GANG_WEICHENG` },
    { value = 2, group1 = `PLAYER`, group2 = `AMBIENT_GANG_MARABUNTE` },
}