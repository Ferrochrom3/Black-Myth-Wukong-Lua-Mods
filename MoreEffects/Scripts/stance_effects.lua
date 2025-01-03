local stance_effects = {}

local id_table       = require("effect_id_config")
local stats_buff     = require("stats_buff")

local player         = nil
local library        = nil


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


local function add_buff(buff_id, duration)
    player = get_player()
    library = get_library()

    if IsNilOrInvalid(player) or IsNilOrInvalid(library) then return end

    ---@diagnostic disable-next-line: undefined-field
    library:BGUAddBuff(player, player, buff_id, 1, duration)
end



function stance_effects.sky_fall_strike_wukong_stance()
    add_buff(id_table.effect_GreatSageWeaponOrangeShine, 300)
    add_buff(id_table.effect_StaffOrangeCharge, 1000)

    add_buff(id_table.delayEffect_SkyFallStrike, 1000)
end

function stance_effects.four_focus_smash()
    add_buff(id_table.delayEffect_FourFocusSmash1, 3000);
    add_buff(id_table.delayEffect_FourFocusSmash2, 3000);
    add_buff(id_table.delayEffect_FourFocusSmash3, 3000);
end

-- ========================================================================================================================================================================================== --
-- ========================================================================================================================================================================================== --
-- ========================================================================================================================================================================================== --

function stance_effects.four_focus_thrust()
    add_buff(id_table.effect_StaffRedCharge, 1000)
end

-- ========================================================================================================================================================================================== --
-- ========================================================================================================================================================================================== --
-- ========================================================================================================================================================================================== --

function stance_effects.sweeping_gale()
    add_buff(id_table.combat_SeeThrough, 500)
    add_buff(id_table.combat_Immunity, 500)
end

function stance_effects.churning_gale()
    add_buff(id_table.effect_StaffRedCharge, 3000)

    add_buff(id_table.delayEffect_ChuringGale, 3000)
end

function stance_effects.four_focus_pillar()
    add_buff(id_table.effect_StaffRedCharge, 2200)
end

-- ========================================================================================================================================================================================== --
-- ========================================================================================================================================================================================== --
-- ========================================================================================================================================================================================== --

function stance_effects.five_focus_wukong_stance()
    stats_buff.activate_stackable_damage_reduction_buff(80, 6)

    add_buff(id_table.delayEffect_WukongStanceSmash1, 4000)
    add_buff(id_table.delayEffect_WukongStanceSmash2, 4000)
    add_buff(id_table.delayEffect_WukongStanceSmash3, 4000)

    -- add_buff(id_table.summon_StoneMonkeyFloatingRocks, 1000)
end

function stance_effects.spinning_staff_heavy()
    add_buff(id_table.combat_SeeThrough, 500)
    add_buff(id_table.combat_Immunity, 500)

    add_buff(id_table.effect_GreatSageWeaponYellowShine, 100)
    add_buff(id_table.effect_StaffOrangeCharge, 2000)

    add_buff(id_table.delayEffect_SpinningStaffHeavyAttack, 2000)
end

-- ========================================================================================================================================================================================== --
-- ========================================================================================================================================================================================== --
-- ========================================================================================================================================================================================== --

-- Wukong stance light attack 1
function stance_effects.wukong_stance_combo_1()
end

-- Wukong stance light attack 1 followed by 1 heavy (破棍式)
function stance_effects.wukong_stance_combo_1_heavy_1()
    add_buff(id_table.combat_SeeThrough, 500)
    add_buff(id_table.combat_Immunity, 500)

    add_buff(id_table.effect_StaffYellowCharge, 1000)
    add_buff(id_table.effect_GreatSageWeaponYellowShine, 100)
end

-- Wukong stance light attack 1 followed by 2 heavies (劈棍斩棍式)
function stance_effects.wukong_stance_combo_1_heavy_2()
    stance_effects.sky_fall_strike_wukong_stance()
end

-- ========================================================================================================================================================================================== --
-- ========================================================================================================================================================================================== --
-- ========================================================================================================================================================================================== --

-- Wukong stance light attack 2
function stance_effects.wukong_stance_combo_2()
    add_buff(id_table.effect_StaffYellowCharge, 1500)
    add_buff(id_table.effect_GreatSageWeaponYellowShine, 100)
end

-- Wukong stance light attack 2 followed by 1 heavy（挥，戳)
function stance_effects.wukong_stance_combo_2_heavy_1()
    add_buff(id_table.combat_SeeThrough, 700)
    add_buff(id_table.combat_Immunity, 700)

    add_buff(id_table.effect_GreatSageWeaponOrangeShine, 300)
    add_buff(id_table.effect_StaffOrangeCharge, 3000)
end

-- Wukong stance light attack 2 followed by 2 heavies (劈棍斩棍式)
function stance_effects.wukong_stance_combo_2_heavy_2()
    stance_effects.sky_fall_strike_wukong_stance()
end

-- ========================================================================================================================================================================================== --
-- ========================================================================================================================================================================================== --
-- ========================================================================================================================================================================================== --

-- Wukong stance light attack 3
function stance_effects.wukong_stance_combo_3()
    add_buff(id_table.effect_StaffOrangeCharge, 2000)
    add_buff(id_table.effect_GreatSageWeaponOrangeShine, 300)
end

-- Wukong stance light attack 3 followed by 1 heavy（大挥）
function stance_effects.wukong_stance_combo_3_heavy_1()
    add_buff(id_table.combat_SeeThrough, 500)
    add_buff(id_table.combat_Immunity, 500)

    add_buff(id_table.effect_GreatSageWeaponOrangeShine, 300)
    add_buff(id_table.effect_StaffOrangeCharge, 1000)
end

-- Wukong stance light attack 3 followed by 2 heavies (江海翻)
function stance_effects.wukong_stance_combo_3_heavy_2()
    add_buff(id_table.effect_StaffRedCharge, 3000)
    add_buff(id_table.effect_GreatSageWeaponRedShine, 100)

    add_buff(id_table.delayEffect_ChuringGale, 3000)
end

-- ========================================================================================================================================================================================== --
-- ========================================================================================================================================================================================== --
-- ========================================================================================================================================================================================== --

-- Wukong stance light attack 4
function stance_effects.wukong_stance_combo_4()
end

-- ========================================================================================================================================================================================== --
-- ========================================================================================================================================================================================== --
-- ========================================================================================================================================================================================== --

-- Wukong stance light attack 5
function stance_effects.wukong_stance_combo_5()
    add_buff(id_table.effect_StaffRedCharge, 2000)
    add_buff(id_table.effect_GreatSageWeaponRedShine, 100)
end

-- ========================================================================================================================================================================================== --
-- ========================================================================================================================================================================================== --
-- ========================================================================================================================================================================================== --

ExecuteWithDelay(5000, function()
    RegisterHook("/Script/Engine.PlayerController:ClientRestart", function(self, NewPawn)
        player = NewPawn:get()
    end)
end)

return stance_effects
