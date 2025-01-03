local stats_buff                  = {}

local player                      = nil
local library                     = nil

-- Damage reduction (DmgDefBase ID value)
local current_damage_reduction    = 0
local damage_reduction_id         = 120
local is_damage_reduction_applied = false;

-- Damage addition (DmgAdditionBase ID value)
local current_damage_addition     = 0
local damage_addition_base_id     = 119

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


local function is_nil_or_invalid(obj)
    return obj == nil or not obj:IsValid()
end


local function set_attribute(attribute_id, target_attribute)
    player = get_player()
    library = get_library()

    if is_nil_or_invalid(player) or is_nil_or_invalid(library) then return end

    ---@diagnostic disable-next-line: undefined-field
    library:BGUSetAttrValue(player, attribute_id, target_attribute)
end


local function get_attribute(attribute_id)
    player = get_player()
    library = get_library()

    if is_nil_or_invalid(player) or is_nil_or_invalid(library) then return 0 end

    ---@diagnostic disable-next-line: undefined-field
    return library:GetAttrValue(player, attribute_id)
end


-- Add some damage reduction value to the player.
-- The buff cannot be re-applied until the first applied buff goes away
function stats_buff.activate_nonstackable_damage_reduction_buff(buff_percentage, buff_duration_seconds)
    if not is_damage_reduction_applied then
        is_damage_reduction_applied = true

        -- Apply damage reduction buff
        current_damage_reduction = get_attribute(damage_reduction_id)
        set_attribute(damage_reduction_id, current_damage_reduction + (buff_percentage * 100))

        -- Remove damage reduction buff after a set period of time
        ExecuteWithDelay(buff_duration_seconds * 1000, function()
            is_damage_reduction_applied = false
            current_damage_reduction = get_attribute(damage_reduction_id)
            set_attribute(damage_reduction_id, current_damage_reduction - (buff_percentage * 100))
        end)
    end
end

-- Add some damage reduction to the player that can be stacked with no cooldown.
function stats_buff.activate_stackable_damage_reduction_buff(buff_percentage, buff_duration_seconds)
    -- Apply damage reduction buff
    current_damage_reduction = get_attribute(damage_reduction_id)
    set_attribute(damage_reduction_id, current_damage_reduction + (buff_percentage * 100))

    -- Remove damage reduction buff after a set period of time
    ExecuteWithDelay(buff_duration_seconds * 1000, function()
        current_damage_reduction = get_attribute(damage_reduction_id)
        set_attribute(damage_reduction_id, current_damage_reduction - (buff_percentage * 100))
    end)
end

-- ========================================================================================================================================================================================== --
-- ========================================================================================================================================================================================== --
-- ========================================================================================================================================================================================== --

-- Add some damage addition value to the player.
-- The buff cannot be re-applied until the first applied buff goes away
function stats_buff.activate_nonstackable_damage_addition_buff(buff_percentage, buff_duration_seconds)
    -- Apply damage addition buff
    current_damage_addition = get_attribute(damage_addition_base_id)
    set_attribute(damage_addition_base_id, current_damage_addition + (buff_percentage * 100))

    -- Remove damage addition buff after a set period of time
    ExecuteWithDelay(buff_duration_seconds * 1000, function()
        current_damage_addition = get_attribute(damage_addition_base_id)
        set_attribute(damage_addition_base_id, current_damage_addition - (buff_percentage * 100))
    end)
end

-- Add some damage addition to the player that can be stacked with no cooldown
function stats_buff.activate_stackable_damage_addition_buff(buff_percentage, buff_duration_seconds)
    -- Apply damage addition buff
    current_damage_addition = get_attribute(damage_addition_base_id)
    set_attribute(damage_addition_base_id, current_damage_addition + (buff_percentage * 100))

    -- Remove damage addition buff after a set period of time
    ExecuteWithDelay(buff_duration_seconds * 1000, function()
        current_damage_addition = get_attribute(damage_addition_base_id)
        set_attribute(damage_addition_base_id, current_damage_addition - (buff_percentage * 100))
    end)
end

-- ========================================================================================================================================================================================== --
-- ========================================================================================================================================================================================== --
-- ========================================================================================================================================================================================== --

-- Regenerate some health based on the specified percentage.
-- Health regen cannot be re-applied until 500ms after the initial health regen
function stats_buff.activate_health_regen_with_cooldown_check(regen_percentage)
    if not is_health_regened then
        is_health_regened = true

        -- Get player max health and calculate the amount to regenerate
        local player_max_health = get_attribute(max_hp_id)
        local health_regen_amount = player_max_health * (regen_percentage / 100)

        -- Apply health regen
        current_hp = get_attribute(hp_id)
        set_attribute(hp_id, current_hp + health_regen_amount)
    end

    ExecuteWithDelay(500, function()
        is_health_regened = false
    end)
end

-- Regenerate some health based on the specified percentage without any cooldown.
function stats_buff.activate_health_regen_without_cooldown_check(regen_percentage)
    -- Get player max health and calculate the amount to regenerate
    local player_max_health = get_attribute(max_hp_id)
    local health_regen_amount = player_max_health * (regen_percentage / 100)

    -- Apply health regen
    current_hp = get_attribute(hp_id)
    set_attribute(hp_id, current_hp + health_regen_amount)
end

-- ========================================================================================================================================================================================== --
-- ========================================================================================================================================================================================== --
-- ========================================================================================================================================================================================== --

-- Regenerate some mana based on the specified percentage.
-- Mana regen cannot be re-applied until 500ms after the initial health regen
function stats_buff.activate_mana_regen_with_cooldown_check(regen_percentage)
    if not is_mana_regened then
        is_mana_regened = true

        -- Get player max mana and calculate the amount to regenerate
        local player_max_mana = get_attribute(max_mana_id)
        local mana_regen_amount = player_max_mana * (regen_percentage / 100)

        -- Apply mana regen
        current_mana = get_attribute(mana_id)
        set_attribute(mana_id, current_mana + mana_regen_amount)
    end

    ExecuteWithDelay(500, function()
        is_mana_regened = false
    end)
end

-- Regenerate some mana based on the specified percentage without any cooldown.
function stats_buff.activate_mana_regen_without_cooldown_check(regen_percentage)
    -- Get player max mana and calculate the amount to regenerate
    local player_max_mana = get_attribute(max_mana_id)
    local mana_regen_amount = player_max_mana * (regen_percentage / 100)

    -- Apply mana regen
    current_mana = get_attribute(mana_id)
    set_attribute(mana_id, current_mana + mana_regen_amount)
end

ExecuteWithDelay(5000, function()
    RegisterHook("/Script/Engine.PlayerController:ClientRestart", function(self, NewPawn)
        player = NewPawn:get()
    end)
end)

return stats_buff
