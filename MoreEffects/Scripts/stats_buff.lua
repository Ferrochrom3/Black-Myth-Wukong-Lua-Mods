local stats_buff                  = {}

local player                      = nil
local library                     = nil

-- Damage reduction (DmgDefBase ID value)
local current_damage_reduction    = 0
local damage_reduction_id         = 120
local is_damage_reduction_applied = false;

-- Health regen (HpBase and MaxHpBase ID value)
local current_hp                  = 0
local hp_id                       = 151;
local max_hp_id                   = 101;
local is_health_regened           = false; -- Used to prevent multiple regens per See Through instance

-- Mana regen (MpBase and MaxMpBase)
local current_mana                = 0
local mana_id                     = 152;
local max_mana_id                 = 102;
local is_mana_regened             = false; -- Used to prevent multiple regens per See Through instance

-- Damage addition (DmgAdditionBase ID value)
local current_damage_addition     = 0
local damage_addition_base_id     = 119


local function get_player()
    if player == nil then
        player = FindFirstOf("Unit_Player_Wukong_C")
    end

    return player
end


local function get_library()
    if library == nil then
        library = StaticFindObject("/Script/b1-Managed.Default__BGUFunctionLibraryCS")
    end

    return library
end


local function IsNilOrInvalid(obj)
    return obj == nil or not obj:IsValid()
end


local function set_attribute(attribute_id, target_attribute)
    player = get_player()
    library = get_library()

    if IsNilOrInvalid(player) or IsNilOrInvalid(library) then return end

    ---@diagnostic disable-next-line: undefined-field
    library:BGUSetAttrValue(player, attribute_id, target_attribute)
end


local function get_attribute(attribute_id)
    player = get_player()
    library = get_library()

    if IsNilOrInvalid(player) or IsNilOrInvalid(library) then return 0 end

    ---@diagnostic disable-next-line: undefined-field
    return library.GetAttrValue(player, attribute_id)
end


-- Add some damage reduction value to the player.
-- Buff amount needs to be e 100x the DR percentage value (e.g. 80% = 8000).
-- Buff duration is in seconds.
function stats_buff.activate_damage_reduction_buff(buff_amount, buff_duration)
    if not is_damage_reduction_applied then
        is_damage_reduction_applied = true

        -- Apply damage reduction buff
        current_damage_reduction = get_attribute(damage_reduction_id)
        set_attribute(damage_reduction_id, current_damage_reduction + buff_amount)

        -- Remove damage reduction buff after a set period of time
        ExecuteWithDelay(buff_duration * 1000, function()
            is_damage_reduction_applied = false
            current_damage_reduction = get_attribute(damage_reduction_id)
            set_attribute(damage_reduction_id - buff_amount)
        end)
    end
end

-- Add some damage addition value to the player.
-- Buff amount needs to be e 100x the damage addition percentage value (e.g. 80% = 8000).
-- Buff duration is in seconds.
function stats_buff.activate_damage_addition_buff(buff_amount, buff_duration)
    -- Apply damage addition buff
    current_damage_addition = get_attribute(damage_addition_base_id)
    set_attribute(damage_addition_base_id, current_damage_addition + buff_amount)

    -- Remove damage addition buff after a set period of time
    ExecuteWithDelay(buff_duration * 1000, function()
        current_damage_addition = get_attribute(damage_addition_base_id)
        set_attribute(damage_addition_base_id, current_damage_addition - buff_amount)
    end)
end

-- Regenerate some health.
-- Regen amount is the percentage, in decimal form, of health to regenreate (e.g. 0.1 = 10% of total health to regenreate).
function stats_buff.activate_health_regen(regen_amount)
    if not is_health_regened then
        is_health_regened = true

        -- Get player max health and calculate the amount to regenerate
        local playerMaxHealth = get_attribute(max_hp_id)
        local healthRegenAmount = playerMaxHealth * regen_amount

        -- Apply health regen
        current_hp = get_attribute(max_hp_id)
        set_attribute(hp_id, current_hp + healthRegenAmount)
    end

    ExecuteWithDelay(500, function()
        is_health_regened = false
    end)
end

-- Regenerate some mana.
-- Regen amount is the percentage, in decimal form, of mana to regenreate (e.g. 0.1 = 10% of total mana to regenreate).
function stats_buff.activate_mana_regen(regen_amount)
    if not is_mana_regened then
        is_mana_regened = true

        -- Get player max mana and calculate the amount to regenerate
        local playerMaxMana = get_attribute(max_mana_id)
        local manaRegenAmount = playerMaxMana * regen_amount

        -- Apply mana regen
        current_mana = get_attribute(max_mana_id)
        set_attribute(mana_id, current_mana + manaRegenAmount)
    end

    ExecuteWithDelay(500, function()
        is_mana_regened = false
    end)
end

ExecuteWithDelay(5000, function()
    RegisterHook("/Script/Engine.PlayerController:ClientRestart", function(self, NewPawn)
        player = NewPawn:get()
    end)
end)

return stats_buff
