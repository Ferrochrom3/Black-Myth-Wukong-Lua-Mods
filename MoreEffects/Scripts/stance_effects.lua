local stance_effects = {}

local id_table       = require("effect_id_config")

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


function stance_effects.sky_fall_strike()
    add_buff(id_table.effect_StaffOrangeCharge, 3000)
    add_buff(id_table.effect_GreatSageWeaponOrangeShine, 300)

    add_buff(id_table.delayEffect_SkyFallStrike, 1000)
end

function stance_effects.sky_fall_strike_wukong_stance()
    add_buff(id_table.effect_StaffRedCharge, 3000)

    add_buff(id_table.onHitSummon_RedBoySlamLava, 2000)
    add_buff(id_table.onHitSummon_MacaqueChiefSwordSlash, 2000)
    add_buff(id_table.onHitSummon_BlazingKarmaStaffLava, 2000)

    add_buff(id_table.delayEffect_SkyFallStrike, 1000)
end

function stance_effects.four_focus_smash()
    add_buff(id_table.effect_BlazingKaramStaffFire, 4600)
    add_buff(id_table.effect_BodyFire, 4600)
    add_buff(id_table.effect_StaffRedCharge, 4600)

    add_buff(id_table.onHitSummon_BlazingKarmaStaffLava, 3000)
    add_buff(id_table.onHitSummon_RedBoySlamLava, 3000)
    add_buff(id_table.onHitSummon_FloorFire, 3000)
    add_buff(id_table.onHitSummon_StoneMonkeyGroundExplosion, 3000)
    add_buff(id_table.onHitSummon_ShiGanDangExplosion, 3000)

    add_buff(id_table.delayEffect_FourFocusSmash, 3000)
end

function stance_effects.forceful_thrust()
    add_buff(id_table.effect_StaffOrangeCharge, 1500)
    add_buff(id_table.effect_GreatSageWeaponOrangeShine, 300)
    add_buff(id_table.effect_SeeThroughRedFlash, 500)

    add_buff(id_table.delayEffect_ForcefulThurst, 400)
end

function stance_effects.four_focus_thrust()
    add_buff(id_table.effect_BlazingKaramStaffFire, 1700)
    add_buff(id_table.effect_BodyFire, 1700)

    add_buff(id_table.onHitSummon_BlazingKarmaStaffLava, 3000)
    add_buff(id_table.onHitSummon_RedBoySlamLava, 3000)
    add_buff(id_table.onHitSummon_FloorFire, 3000)
    add_buff(id_table.onHitSummon_StoneMonkeyGroundExplosion, 3000)
    add_buff(id_table.onHitSummon_ShiGanDangExplosion, 3000)
    add_buff(id_table.onHit_slowDownTime, 1000)

    add_buff(id_table.effect_GreatSageWeaponRedShine, 100)
    add_buff(id_table.effect_SeeThroughRedFlash, 1000)
    add_buff(id_table.effect_StaffRedCharge, 1000)
end

function stance_effects.sweeping_gale()
    add_buff(id_table.summon_KangJinStarLightningExplosion, 1)
end

function stance_effects.churning_gale()
    add_buff(id_table.onHitSummon_RedLoongLightningGroup, 2000)
end

function stance_effects.four_focus_pillar()
    add_buff(id_table.effect_BlazingKaramStaffFire, 1700)
    add_buff(id_table.effect_BodyFire, 1700)
    add_buff(id_table.effect_StaffRedCharge, 1700)
    add_buff(id_table.effect_SeeThroughRedFlash, 1000)
    add_buff(id_table.effect_GreatSageWeaponRedShine, 100)

    add_buff(id_table.combat_SeeThrough, 1000)
    add_buff(id_table.combat_Immunity, 1000)

    add_buff(id_table.onHitSummon_BlazingKarmaStaffLava, 3000)
    add_buff(id_table.onHitSummon_RedBoySlamLava, 3000)
    add_buff(id_table.onHitSummon_FloorFire, 3000)
    add_buff(id_table.onHitSummon_StoneMonkeyGroundExplosion, 3000)
    add_buff(id_table.onHitSummon_ShiGanDangExplosion, 3000)
    add_buff(id_table.onHit_slowDownTime, 1000)
end

function stance_effects.five_focus_wukong_stance()
    add_buff(id_table.effect_GreatSageWeaponRedShine, 100)
    add_buff(id_table.effect_BlazingKaramStaffFire, 4600)
    add_buff(id_table.effect_BodyFire, 4600)

    add_buff(id_table.summon_StoneMonkeyFloatingRocks, 1000)
    add_buff(id_table.delayEffect_WukongStanceSmash, 5000)
end

function stance_effects.spinning_staff_heavy()
    add_buff(id_table.combat_SeeThrough, 600)
    add_buff(id_table.combat_Immunity, 600)

    add_buff(id_table.effect_GreatSageWeaponYellowShine, 100)
    add_buff(id_table.effect_StaffOrangeCharge, 2000)

    add_buff(id_table.delayEffect_SpinningStaffHeavyAttack, 2000)
end

-- Wukong stance light attack 1
function stance_effects.wukong_stance_combo_1()
    add_buff(id_table.effect_GreatSageWeaponYellowShine, 100)
end

-- Wukong stance light attack 1 followed by 1 heavy (破棍式)
function stance_effects.wukong_stance_combo_1_heavy_1()
    add_buff(id_table.combat_SeeThrough, 600)
    add_buff(id_table.combat_Immunity, 600)

    add_buff(id_table.effect_StaffOrangeCharge, 1500)
    add_buff(id_table.effect_GreatSageWeaponYellowShine, 100)
end

-- Wukong stance light attack 1 followed by 2 heavies (劈棍斩棍式)
function stance_effects.wukong_stance_combo_1_heavy_2()
    add_buff(id_table.combat_SeeThrough, 700)
    add_buff(id_table.combat_Immunity, 700)

    stance_effects.sky_fall_strike_wukong_stance()
end

-- Wukong stance light attack 2
function stance_effects.wukong_stance_combo_2()
    add_buff(id_table.effect_StaffYellowCharge, 1500)
end

-- Wukong stance light attack 2 followed by 1 heavy（挥，戳)
function stance_effects.wukong_stance_combo_2_heavy_1()
    add_buff(id_table.combat_SeeThrough, 1000)
    add_buff(id_table.combat_Immunity, 1000)

    add_buff(id_table.effect_StaffOrangeCharge, 3000)
    add_buff(id_table.effect_GreatSageWeaponOrangeShine, 300)
end

-- Wukong stance light attack 2 followed by 2 heavies (劈棍斩棍式)
function stance_effects.wukong_stance_combo_2_heavy_2()
    add_buff(id_table.combat_SeeThrough, 700)
    add_buff(id_table.combat_Immunity, 700)

    stance_effects.sky_fall_strike_wukong_stance()
end

-- Wukong stance light attack 3
function stance_effects.wukong_stance_combo_3()
    add_buff(id_table.effect_StaffYellowCharge, 1500)
    add_buff(id_table.effect_GreatSageWeaponOrangeShine, 300)
end

-- Wukong stance light attack 3 followed by 1 heavy（大挥）
function stance_effects.wukong_stance_combo_3_heavy_1()
    add_buff(id_table.combat_SeeThrough, 700)
    add_buff(id_table.combat_Immunity, 800)

    add_buff(id_table.effect_StaffOrangeCharge, 1000)
    add_buff(id_table.effect_GreatSageWeaponOrangeShine, 300)
end

-- Wukong stance light attack 3 followed by 2 heavies (江海翻)
function stance_effects.wukong_stance_combo_3_heavy_2()
    add_buff(id_table.combat_SeeThrough, 800)
    add_buff(id_table.combat_Immunity, 1500)

    add_buff(id_table.effect_GreatSageWeaponRedShine, 100)
    add_buff(id_table.effect_StaffRedCharge, 3000)

    add_buff(id_table.delayEffect_ChuringGale, 3000)
end

-- Wukong stance light attack 4
function stance_effects.wukong_stance_combo_4()
    add_buff(id_table.effect_StaffOrangeCharge, 1500)
end

-- Wukong stance light attack 5
function stance_effects.wukong_stance_combo_5()
    add_buff(id_table.effect_GreatSageWeaponRedShine, 100)
    add_buff(id_table.effect_StaffRedCharge, 2000)

    add_buff(id_table.combat_SeeThrough, 800)
    add_buff(id_table.combat_Immunity, 800)

    add_buff(id_table.onHitSummon_BlazingKarmaStaffLava, 1000)

    add_buff(id_table.delayEffect_LightAttackCombo5, 1000)
end

ExecuteWithDelay(5000, function()
    RegisterHook("/Script/Engine.PlayerController:ClientRestart", function(self, NewPawn)
        player = NewPawn:get()
    end)
end)

return stance_effects
