local improved_see_through = {}

improved_see_through.resolute_counterflow_see_through_effective_duration = 0.6 -- (default is 0.4s) In seconds, the time window for See Through to be activated after performing Resolute Counterflow
improved_see_through.tactical_retreat_see_through_effective_duration = 0.566   -- (default is 0.366s) In seconds, the time window for See Through to be activated after performing Tactical Retreat

-- Damage reduction (DmgDefBase ID value)
local current_damage_reduction = 0
local damage_reduction_id = 120
local damage_reduction_buff_amount = 2000 -- 20% increase
local damage_reduction_buff_duration = 20 -- In seconds, how long the buff lasts after a successful See Through
local is_damage_reduction_applied = false;

-- Health regen (HpBase and MaxHpBase ID value)
local current_hp = 0
local hp_id = 151;
local max_hp_id = 101;
local health_regen_percentage = 0.07 -- Heal 7% of total health
local is_health_regened = false;     -- Used to prevent multiple regens per See Through instance

-- Mana regen (MpBase and MaxMpBase)
local current_mana = 0
local mana_id = 152;
local max_mana_id = 102;
local mana_regen_percentage = 0.03 -- Regen 3% of total mana
local is_mana_regened = false;     -- Used to prevent multiple regens per See Through instance

-- Damage addition (DmgAdditionBase ID value)
local current_damage_addition = 0
local damage_addition_base_id = 119
local damage_addition_increase = 1000   -- 10% increase
local damage_addition_buff_duration = 8 -- In seconds, how long the buff lasts after a successful See Through


function improved_see_through.activate_damage_reduction_buff(player, lib)
    if not is_damage_reduction_applied then
        is_damage_reduction_applied = true

        -- Apply damage reduction buff
        current_damage_reduction = lib:GetAttrValue(player, damage_reduction_id)
        lib:BGUSetAttrValue(player, damage_reduction_id, current_damage_reduction + damage_reduction_buff_amount)

        -- Remove damage reduction buff after a set period of time
        ExecuteWithDelay(damage_reduction_buff_duration * 1000, function()
            is_damage_reduction_applied = false
            current_damage_reduction = lib:GetAttrValue(player, damage_reduction_id)
            lib:BGUSetAttrValue(player, damage_reduction_id, current_damage_reduction - damage_reduction_buff_amount)
        end)
    end
end

function improved_see_through.activate_health_regen(player, lib)
    if not is_health_regened then
        is_health_regened = true

        -- Get player max health and calculate the amount to regenerate
        local playerMaxHealth = lib:GetAttrValue(player, max_hp_id)
        local healthRegenAmount = playerMaxHealth * health_regen_percentage

        -- Apply health regen
        current_hp = lib:GetAttrValue(player, hp_id)
        lib:BGUSetAttrValue(player, hp_id, current_hp + healthRegenAmount)
    end

    ExecuteWithDelay(500, function()
        is_health_regened = false
    end)
end

function improved_see_through.activate_mana_regen(player, lib)
    if not is_mana_regened then
        is_mana_regened = true

        -- Get player max mana and calculate the amount to regenerate
        local playerMaxMana = lib:GetAttrValue(player, max_mana_id)
        local manaRegenAmount = playerMaxMana * mana_regen_percentage

        -- Apply mana regen
        current_mana = lib:GetAttrValue(player, mana_id)
        lib:BGUSetAttrValue(player, mana_id, current_mana + manaRegenAmount)
    end

    ExecuteWithDelay(500, function()
        is_mana_regened = false
    end)
end

function improved_see_through.activate_damage_addition_buff(player, lib)
    -- Apply damage addition buff
    current_damage_addition = lib:GetAttrValue(player, damage_addition_base_id)
    lib:BGUSetAttrValue(player, damage_addition_base_id, current_damage_addition + damage_addition_increase)

    -- Remove damage addition buff after a set period of time
    ExecuteWithDelay(damage_addition_buff_duration * 1000, function()
        current_damage_addition = lib:GetAttrValue(player, damage_addition_base_id)
        lib:BGUSetAttrValue(player, damage_addition_base_id, current_damage_addition - damage_addition_increase)
    end)
end

return improved_see_through
