local player = nil
local library = nil
local hasBonusRegistered = false

local tenacityBaseID = 114
local tenacityID = 164
local damageReductionID = 120
local tenacityBuffAmount = 4           -- Immune to all (most) minor enemy damage
local damageReductionBuffAmount = 1500 -- 15%


local function logMessage(message)
    print("================================================= [Improved DaShengKuiJia] " .. message)
end

local function IsNilOrInvalid(object)
    return object == nil or (type(object.IsValid) == "function" and not object:IsValid())
end


local function getPlayer()
    return FindFirstOf("Unit_Player_Wukong_C")
end


local function getLibrary()
    return StaticFindObject("/Script/b1-Managed.Default__BGUFunctionLibraryCS")
end


-- Check if the player is equipping a particular armor set
local function checkArmorSet(armorSetName)
    player = getPlayer()

    if IsNilOrInvalid(player) then
        logMessage("Player not found")
        return
    end

    local head = player.bodypart_head.SkeletalMesh:GetFullName()
    local body = player.bodypart_upwear.SkeletalMesh:GetFullName()
    local hand = player.bodypart_arm.SkeletalMesh:GetFullName()
    local foot = player.bodypart_foot.SkeletalMesh:GetFullName()

    if IsNilOrInvalid(head) or IsNilOrInvalid(body) or IsNilOrInvalid(hand) or IsNilOrInvalid(foot) then
        logMessage("Invalid data: armor set")
        return false
    end

    return head:find(armorSetName) ~= nil
        and body:find(armorSetName) ~= nil
        and hand:find(armorSetName) ~= nil
        and foot:find(armorSetName) ~= nil
end


-- Remove DaShengKuiJia effects and apply custom buffs to the armor set.
-- Custom bonus includes:
-- 1. Increased damage reduction
-- 2. No knockback
-- 3. See No Evil's Unique Effect (easiler Perfect Dodge)
-- 4. Earth Rakshasa's Equipped Effect (Increase DR after being hit)
local function applyNewArmorSetBonus(library, currentTenacityBase, currentTenacity, currentDamageReduction)
    -- Remove DaShengKuiJia armor bonus
    library:BGURemoveBuff(player, 2200, 0, 0)
    library:BGURemoveBuff(player, 2200, 0, 0)

    -- Add custom attributes
    library:BGUSetAttrValue(player, tenacityBaseID, currentTenacityBase + tenacityBuffAmount)
    library:BGUSetAttrValue(player, tenacityID, currentTenacity + tenacityBuffAmount)
    library:BGUSetAttrValue(player, damageReductionID, currentDamageReduction + damageReductionBuffAmount)

    -- Add custom buffs
    library:BGUAddBuff(player, player, 1093, 39, -1.0)  -- See No Evil's Unique Effect
    library:BGUAddBuff(player, player, 21671, 24, -1.0) -- Earth Rakshasa's Equipped Effect
end


-- Remove custom attribute modifications and buffs that were applied
local function removeNewArmorSetBonus(library, currentTenacityBase, currentTenacity, currentDamageReduction)
    -- Remove DaShengKuiJia armor bonus (ensure the armor effect does not linger when armor swap is faster than update timer)
    library:BGURemoveBuff(player, 2200, 0, 0)
    library:BGURemoveBuff(player, 2200, 0, 0)

    -- Revert added attributes
    library:BGUSetAttrValue(player, tenacityBaseID, currentTenacityBase - tenacityBuffAmount)
    library:BGUSetAttrValue(player, tenacityID, currentTenacity - tenacityBuffAmount)
    library:BGUSetAttrValue(player, damageReductionID, currentDamageReduction - damageReductionBuffAmount)

    -- Remove added buffs
    library:BGURemoveBuff(player, 1093, 0, 0)
    library:BGURemoveBuff(player, 21671, 0, 0)
end


-- Update stat bonuses to the player when equipping DaSehngKuiJia armor set.
-- Stats will not be visually updated until armor page is reopened after swapping armor (stats shown may be incorrect).
local function updateArmorSetBonus()
    player = getPlayer()
    library = getLibrary()

    if IsNilOrInvalid(player) then
        logMessage("Player not found")
        return
    end

    if IsNilOrInvalid(library) then
        logMessage("Library not found")
        return
    end

    local isDaShengKuiJiaCurrentlyEquipped = checkArmorSet("DaShengKuiJia")
    local currentTenacityBase = library:GetAttrValue(player, tenacityBaseID)
    local currentTenacity = library:GetAttrValue(player, tenacityID)
    local currentDamageReduction = library:GetAttrValue(player, damageReductionID)

    -- If DaShengKuiJia is fully equipped and the bonus has not yet registered, apply the bonus
    if isDaShengKuiJiaCurrentlyEquipped then
        if not hasBonusRegistered then
            logMessage("Applying stats for DaShengKuiJia armor set")
            applyNewArmorSetBonus(library, currentTenacityBase, currentTenacity, currentDamageReduction)
            hasBonusRegistered = true
        end
        -- If DaShengKuiJia is not fully equipped and the bonus has registered, remove the bonus
    else
        if hasBonusRegistered then
            logMessage("Removing stats for DaShengKuiJia armor set")
            removeNewArmorSetBonus(library, currentTenacityBase, currentTenacity, currentDamageReduction)
            hasBonusRegistered = false
        end
    end
end

-- ============================================RegisterHooks============================================

local startInterval = 30 -- In seconds, wait some time before registering hooks
local checkCooldown = 3  -- In seconds, how much time to wait before doing another check
local lastCheckTime = 0
local hasAnimHookRegistered = false


local function canCheckArmorChange(currentTime)
    return (currentTime - lastCheckTime) >= checkCooldown
end


RegisterHook("/Script/Engine.PlayerController:ClientRestart", function(self, NewPawn)
    player = NewPawn:get()

    -- Reset these variables
    lastCheckTime = 0

    -- Update set bonus and register hook after a delay in case loading from main menu
    ExecuteWithDelay(startInterval * 1000, function()
        updateArmorSetBonus()

        if not hasAnimHookRegistered then
            hasAnimHookRegistered = true
            RegisterHook("/Script/b1-Managed.BUAnimEquipPreview:BlueprintUpdateAnimation", function(self, delaySec)
                local currentTime = os.time()

                -- If check cooldown is reached, update lastCheckTime and execute updateArmorSetBonus()
                if canCheckArmorChange(currentTime) then
                    lastCheckTime = currentTime
                    updateArmorSetBonus()
                end
            end)
        end
    end)
end)
