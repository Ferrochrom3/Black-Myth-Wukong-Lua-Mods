local player = nil
local library = nil
local isSpeedIncreased = false

local function logMessage(message)
    print("================================================= [Increase Speed] " .. message)
end


local function IsNilOrInvalid(obj) return obj == nil or not obj:IsValid() end


local function getPlayer()
    if player == nil then
        return FindFirstOf("Unit_Player_Wukong_C")
    else
        return player
    end
end


local function getLibrary()
    if library == nil then
        return StaticFindObject("/Script/b1-Managed.Default__BGUFunctionLibraryCS")
    else
        return library
    end
end


local function increaseSpeed()
    player = getPlayer()
    library = getLibrary()

    if IsNilOrInvalid(player) or IsNilOrInvalid(library) then return end

    library:BGUAISetSpeedRate(player, 4)
end


local function decreaseSpeed()
    player = getPlayer()
    library = getLibrary()

    if IsNilOrInvalid(player) or IsNilOrInvalid(library) then return end

    library:BGUAISetSpeedRate(player, 1)
end


ExecuteWithDelay(10000, function()
    RegisterHook("/Script/Engine.PlayerController:ClientRestart", function(self, NewPawn)
        player = NewPawn:get()
    end)
end)

RegisterKeyBind(Key.L, function()
    if isSpeedIncreased then
        logMessage("Decrease speed")
        decreaseSpeed()
        isSpeedIncreased = false
    else
        logMessage("Increase speed")
        increaseSpeed()
        isSpeedIncreased = true
    end
end)
