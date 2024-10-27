local player = nil
local library = nil

local tenacityBaseID = 114
local tenacityID = 164
local tenacityBuffAmount = 9999


local function logMessage(message)
    print("================================================= [Add Base Tenacity] " .. message)
end


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



local function applyTenacity()
    player = getPlayer()
    library = getLibrary()

    library:BGUSetAttrValue(player, tenacityBaseID, tenacityBuffAmount)
    library:BGUSetAttrValue(player, tenacityID, tenacityBuffAmount)
end


-- ============================================RegisterHooks============================================

local startDelay = 30

RegisterHook("/Script/Engine.PlayerController:ClientRestart", function(self, NewPawn)
    player = NewPawn:get()

    applyTenacity()

    -- Update set bonus and register hook after a delay in case loading from main menu
    ExecuteWithDelay(startDelay * 1000, function()
        applyTenacity()
    end)
end)
