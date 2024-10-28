local id_table                                            = require("effect_id_config")
local stance_effects                                      = require("stance_effects")
local stats_buff                                          = require("stats_buff")

local player                                              = nil
local library                                             = nil

-- See Through
local resolute_counterflow_see_through_effective_duration = 0.6   -- (default is 0.4s) In seconds, the time window for See Through to be activated after performing Resolute Counterflow
local tactical_retreat_see_through_effective_duration     = 0.566 -- (default is 0.366s) In seconds, the time window for See Through to be activated after performing Tactical Retreat

-- Stat buffs
local damage_reduction_buff_amount                        = 1000 -- 10% increase (applied for See Through)
local damage_reduction_buff_duration                      = 20   -- In seconds, how long the buff lasts after a successful See Through
local damage_addition_buff_amount                         = 1000 -- 10% increase (applied for See Through)
local damage_addition_buff_duration                       = 8    -- In seconds, how long the buff lasts after a successful See Through
local health_regen_percentage                             = 0.06 -- Heal 6% of total health
local mana_regen_percentage                               = 0.03 -- Regen 3% of total mana


local function log_message(message)
    print("================================================= [More Effects] " .. message)
end


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

-- Add a buff to the player with a specified duration
-- The buff is provided by EffectsLibrary.pak. Buffs are custom made in .data files.
--
-- Note:
-- 1. The duration value has to be least 1.
-- 2. The buff duration in the .data file can be -1 for buffs that spawns projectiles.
-- 3. If the buff is spawning projectiles and is time based, the buff will be activated (duration/interval + 1) times.
-- 4. When the buff's EffectTrigger is OnSkillDamage, the duration must be long enough for the buff to trigger. If the duration is too long, the buff will be triggered per every damage instance until the duration is over.
local function add_buff(buff_id, duration)
    player = get_player()
    library = get_library()

    if is_nil_or_invalid(player) or is_nil_or_invalid(library) then
        return
    end

    ---@diagnostic disable-next-line: undefined-field
    library:BGUAddBuff(player, player, buff_id, 1, duration)
end


-- Causes crash when loading into and out of a level when ExecuteWithDelay() is used
-- Make sure any function that uses ExecuteWithDelay() will not be in here, including deeper level functions
local function register_skill_animation_hook()
    RegisterHook("/Script/b1-Managed.BUS_GSEventCollection:Evt_CastSkillWithAnimMontageMultiCast",
        function(Context, Montage, PlayTimeRate, MontagePosOffset, StartSectionName, Reason)
            local montage_name = Montage:get():GetFullName()

            -- 劈棍斩棍式
            if montage_name:find("AM_Wukong_ComboA_z_02") then
                stance_effects.sky_fall_strike()
            end

            -- 4豆蓄力劈棍
            if montage_name:find("xuli_attack_4") then
                stance_effects.four_focus_smash()
            end

            -- 戳棍进尺
            if montage_name:find("AM_wukong_combob_z_02") then
                stance_effects.forceful_thrust()
            end

            -- 4豆蓄力戳棍
            if montage_name:find("AM_Wukong_xuli_B_attack_4") then
                stance_effects.four_focus_thrust()
            end

            -- 风云转
            if montage_name:find("AM_wukong_comboc_z_01_start") then
                stance_effects.sweeping_gale()
            end

            -- 江海翻
            if montage_name:find("AM_wukong_comboc_z_02") then
                stance_effects.churning_gale()
            end

            -- 4豆蓄力立棍
            if montage_name:find("AM_Wukong_Xuli_C_attack_4") then
                stance_effects.four_focus_pillar()
            end

            -- 棍花重击
            if montage_name:find("AM_Wukong_ComboC_z_specialend") then
                stance_effects.spinning_staff_heavy()
            end

            -- 5豆大圣模式蓄力
            if montage_name:find("xuli_attack_5") or montage_name:find("AM_wukong_trans_to_dasheng") then
                if montage_name:find("xuli_attack_5") then stats_buff.activate_health_regen(0.09) end
                stats_buff.activate_damage_reduction_buff(8000, 3)
                stance_effects.five_focus_wukong_stance()
            end

            -- 大圣普攻1
            if montage_name:find("AM_Dasheng_ComboA_01") then
                stance_effects.wukong_stance_combo_1()
            end

            -- 大圣普攻2
            if montage_name:find("AM_Dasheng_ComboA_02") then
                stance_effects.wukong_stance_combo_2()
            end

            -- 大圣普攻3
            if montage_name:find("AM_Dasheng_ComboA_03") then
                stance_effects.wukong_stance_combo_3()
            end

            -- 大圣普攻4
            if montage_name:find("AM_Dasheng_ComboA_04") then
                stance_effects.wukong_stance_combo_4()
            end

            -- 大圣普攻5
            if montage_name:find("AM_Dasheng_ComboA_05") then
                stance_effects.wukong_stance_combo_5()
            end

            -- 大圣切手技1-1（劈棍切手技）
            if montage_name:find("AM_Dasheng_ComboA_01_Z_1") then
                stance_effects.wukong_stance_combo_1_heavy_1()
            end

            -- 大圣切手技1-2（劈棍斩棍式）
            if montage_name:find("AM_Dasheng_ComboA_01_Z_2") then
                stance_effects.wukong_stance_combo_1_heavy_2()
            end

            -- 大圣切手技2-1（挥，戳)
            if montage_name:find("AM_Dasheng_ComboA_02_Z_1") then
                stance_effects.wukong_stance_combo_2_heavy_1()
            end

            -- 大圣切手技2-2（劈棍斩棍式）
            if montage_name:find("AM_Dasheng_ComboA_02_Z_2") then
                stance_effects.wukong_stance_combo_2_heavy_2()
            end

            -- 大圣切手技3-1（大挥）
            if montage_name:find("AM_Dasheng_ComboA_03_Z_1") then
                stance_effects.wukong_stance_combo_3_heavy_1()
            end

            -- 大圣切手技3-2（江海翻）
            if montage_name:find("AM_Dasheng_ComboA_03_Z_2") then
                stance_effects.wukong_stance_combo_3_heavy_2()
            end

            -- Used to ensure effects can be applied when entering a new zone in Wukong stance (use a light attack to activate this)
            if montage_name:find("_q") then
                local BPPlayerController = FindFirstOf("BP_B1PlayerController_C")
                player = BPPlayerController.pawn ---@diagnostic disable-line: undefined-field
            end

            -- elseif montage_name:find("AM_wukong_combob_z_01") then -- 戳棍退寸，搅棍准备开始，搅棍第一搅都会触发
        end)
end

local function register_buff_hook()
    RegisterHook("/Script/b1-Managed.BUS_GSEventCollection:Evt_BuffAdd_Multicast_Invoke",
        function(Context, BuffID, Caster, RootCaster, Duration, BuffSourceType, bRecursed, BattleAttrSnapShot)
            local buff_id = BuffID:get()

            -- =====Visual effects=====
            -- 主角劈棍，立棍，戳棍等级1表现
            if buff_id == 10821 or buff_id == 10841 or buff_id == 10861 then
                add_buff(id_table.effect_GreatSageWeaponYellowShine, 1000)
            end

            -- 主角劈棍，立棍，戳棍等级2表现
            if buff_id == 10822 or buff_id == 10842 or buff_id == 10862 then
                add_buff(id_table.effect_GreatSageWeaponOrangeShine, 1000)
            end

            -- 主角劈棍，立棍，戳棍等级3表现（立棍几乎无视1和2等，会立马出红闪）
            if buff_id == 10823 or buff_id == 10843 or buff_id == 10863 then
                add_buff(id_table.effect_GreatSageWeaponRedShine, 1000)
            end

            -- =====Slightly longer See Through window and buffs after Seen Through=====
            -- Resolute Counterflow
            if buff_id == 287 then
                Duration:set(resolute_counterflow_see_through_effective_duration * 1000)
                add_buff(id_table.combat_Immunity, resolute_counterflow_see_through_effective_duration * 1000)
            end

            -- Tactical Retreat
            if buff_id == 293 then
                Duration:set(tactical_retreat_see_through_effective_duration * 1000)
                add_buff(id_table.combat_Immunity, tactical_retreat_see_through_effective_duration * 1000)
            end

            -- Add some stats after performing a sucessful See Through (custom See Through buff)
            if buff_id == id_table.combat_SeeThroughBuff then
                player = get_player()
                library = get_library()

                stats_buff.activate_health_regen(health_regen_percentage)
                stats_buff.activate_mana_regen(mana_regen_percentage)
                stats_buff.activate_damage_reduction_buff(damage_reduction_buff_amount, damage_reduction_buff_duration)
                stats_buff.activate_damage_addition_buff(damage_addition_buff_amount, damage_addition_buff_duration)
            end

            -- =====Dodge=====
            if buff_id == 10105 then     -- Slowed dodge (default 0.4s)
                Duration:set(600)
            elseif buff_id == 10106 then -- 0th (default 0.4s)
                Duration:set(600)
            elseif buff_id == 10107 then -- 1st (default 0.433s)
                Duration:set(633)
            elseif buff_id == 10108 then -- 2nd (default 0.466s)
                Duration:set(666)
            elseif buff_id == 10109 then -- 3rd (default 0.5s)
                Duration:set(700)
            end
        end)
end


ExecuteWithDelay(5000, function()
    RegisterHook("/Script/Engine.PlayerController:ClientRestart", function(self, NewPawn)
        player = NewPawn:get()
    end)

    log_message("Skill Animation and Buff Hooks are registerted")
    register_skill_animation_hook()
    register_buff_hook()
end)
