local player = nil
local library = nil

local resolutCounterFlowSeeThroughEffectiveDuration = 0.55 -- (default is 0.4s) In seconds, the time window for See Through to be activated after performing Resolute Counterflow
local tacticalRetreatSeeThroughEffectiveDuration = 0.566   -- (default is 0.366s) In seconds, the time window for See Through to be activated after performing Tactical Retreat
local immunityFrameAfterHeavyAttack = 0.8                  -- (default is 0.5s) In seconds, the immunity frame the player recieves after performing Resolute Counterflow or Tactical Retreat (no See Through activated)

-- Damage reduction (DmgDefBase ID value)
local currentDamageReduction = 0
local damageReductionID = 120
local damageReductionBuffAmount = 2000  -- 20% increase
local damageReductionBuffDurartion = 20 -- In seconds, how long the buff lasts after a successful See Through
local isDamageReductionApplied = false;

-- Health regen (HpBase and MaxHpBase ID value)
local currentHp = 0
local hpID = 151;
local maxHpID = 101;
local heatlhRegenPercentage = 0.07 -- Heal 7% of total health
local isHealthRegened = false;     -- Used to prevent multiple regens per See Through instance

-- Mana regen (MpBase and MaxMpBase)
local currentMana = 0
local manaID = 152;
local maxManaID = 102;
local manaRegenPercentage = 0.03 -- Regen 3% of total mana
local isManaRegened = false;     -- Used to prevent multiple regens per See Through instance

-- Damage addition (DmgAdditionBase ID value)
local currentDmgAddition = 0
local dmgAdditionBaseID = 119
local dmgAdditionIncrease = 1000  -- 10% increase
local dmgAdditionBuffDuration = 8 -- In seconds, how long the buff lasts after a successful See Through


local function logMessage(message)
    print("================================================= [Improved See Through] " .. message)
end


local function IsNilOrInvalid(obj) return obj == nil or not obj:IsValid() end


local function getPlayer()
    if player == nil then
        player = FindFirstOf("Unit_Player_Wukong_C")
    end

    return player
end


local function getLibrary()
    if library == nil then
        library = StaticFindObject("/Script/b1-Managed.Default__BGUFunctionLibraryCS")
    end

    return library
end


local function activateDamageReductionBuff(wukong, lib)
    if not isDamageReductionApplied then
        isDamageReductionApplied = true

        -- Apply damage reduction buff
        currentDamageReduction = lib:GetAttrValue(wukong, damageReductionID)
        lib:BGUSetAttrValue(wukong, damageReductionID, currentDamageReduction + damageReductionBuffAmount)

        -- Remove damage reduction buff after a set period of time
        ExecuteWithDelay(damageReductionBuffDurartion * 1000, function()
            isDamageReductionApplied = false
            currentDamageReduction = lib:GetAttrValue(wukong, damageReductionID)
            lib:BGUSetAttrValue(wukong, damageReductionID, currentDamageReduction - damageReductionBuffAmount)
        end)
    end
end


local function activateHealthRegen(wukong, lib)
    if not isHealthRegened then
        isHealthRegened = true

        -- Get player max health and calculate the amount to regenerate
        local playerMaxHealth = lib:GetAttrValue(wukong, maxHpID)
        local healthRegenAmount = playerMaxHealth * heatlhRegenPercentage

        -- Apply health regen
        currentHp = lib:GetAttrValue(player, hpID)
        lib:BGUSetAttrValue(player, hpID, currentHp + healthRegenAmount)
    end

    ExecuteWithDelay(500, function()
        isHealthRegened = false
    end)
end


local function activateManaRegen(wukong, lib)
    if not isManaRegened then
        isManaRegened = true

        -- Get player max mana and calculate the amount to regenerate
        local playerMaxMana = lib:GetAttrValue(wukong, maxManaID)
        local manaRegenAmount = playerMaxMana * manaRegenPercentage

        -- Apply mana regen
        currentMana = lib:GetAttrValue(player, manaID)
        lib:BGUSetAttrValue(player, manaID, currentMana + manaRegenAmount)
    end

    ExecuteWithDelay(500, function()
        isManaRegened = false
    end)
end


local function activateDmgAdditionBuff(wukong, lib)
    -- Apply damage addition buff
    currentDmgAddition = lib:GetAttrValue(wukong, dmgAdditionBaseID)
    lib:BGUSetAttrValue(player, dmgAdditionBaseID, currentDmgAddition + dmgAdditionIncrease)

    -- Remove damage addition buff after a set period of time
    ExecuteWithDelay(dmgAdditionBuffDuration * 1000, function()
        currentDmgAddition = lib:GetAttrValue(wukong, dmgAdditionBaseID)
        lib:BGUSetAttrValue(wukong, dmgAdditionBaseID, currentDmgAddition - dmgAdditionIncrease)
    end)
end


local function registerBuffHook()
    RegisterHook("/Script/b1-Managed.BUS_GSEventCollection:Evt_BuffAdd_Multicast_Invoke",
        function(Context, BuffID, Caster, RootCaster, Duration, BuffSourceType, bRecursed, BattleAttrSnapShot)
            local buffID = BuffID:get()

            -- Note: Resolute Counterflow/Tactical Retreat effect will linger some duration determined by "Duration" (even if the animation/attack is fully over) and See Through can be activated within the specified duration
            -- Successful See Through buff ID: 288 (Resolute Counterflow), 293 (Tactical Retreat)

            -- Resolute Counterflow
            if buffID == 287 then
                Duration:set(resolutCounterFlowSeeThroughEffectiveDuration * 1000)
                -- Tactical Retreat
            elseif buffID == 293 then
                Duration:set(tacticalRetreatSeeThroughEffectiveDuration * 1000)
                -- Immunity frames granted when performing Resolute Counterflow and Tactical Retreat (both IDs are required for either attack)
            elseif buffID == 114 or buffID == 272 then
                Duration:set(immunityFrameAfterHeavyAttack * 1000)
                -- Grant Damage Reduction after performing a sucessful See Through (either Resolute Counterflow or Tatical Retreat)
            elseif buffID == 288 or buffID == 294 then
                player = getPlayer()
                library = getLibrary()

                activateDamageReductionBuff(player, library)
                activateHealthRegen(player, library)
                activateManaRegen(player, library)
                -- activateDmgAdditionBuff(player, library)
            end
        end)
end

ExecuteWithDelay(5000, function()
    RegisterHook("/Script/Engine.PlayerController:ClientRestart", function(self, NewPawn)
        player = NewPawn:get()
    end)

    logMessage("Buff Hook registered")
    registerBuffHook()
end)
