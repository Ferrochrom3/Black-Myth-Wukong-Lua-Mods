local id_table             = require("effect_id_config")
local stance_effects       = require("stance_effects")
local improved_see_through = require("improved_see_through")

local player               = nil
local library              = nil


local function is_nil_or_invalid(obj)
    return obj == nil or not obj:IsValid()
end


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


-- Add a buff to the player with a specified duration
-- The buff is provided by AttackEffectsLibrary.pak. Buffs are custom made in a .data file.
--
-- Note:
-- 1. The duration value has to be least 1.
-- 2. The buff duration in the .data file can be -1 for buffs that spawns projectiles.
-- 3. If the buff is spawning projectiles and is time based, the buff will be activated (duration/interval + 1) times.
-- 4. When the buff's EffectTrigger is OnSkillDamage, the duration must be long enough for the buff to trigger. If the duration is too long, the buff will be triggered per every damage instance until the duration is over.
local function addBuff(buff_id, duration)
    player = get_player()
    library = get_library()

    if is_nil_or_invalid(player) or is_nil_or_invalid(library) then
        return
    end

    library:BGUAddBuff(player, player, buff_id, 1, duration)
end


-- Causes crash when loading into and out of a level when ExecuteWithDelay() is used
-- Make sure any function that uses ExecuteWithDelay() will not be in here, including deeper level functions
local function register_skill_animation_hook()
    RegisterHook("/Script/b1-Managed.BUS_GSEventCollection:Evt_CastSkillWithAnimMontageMultiCast",
        function(Context, Montage, PlayTimeRate, MontagePosOffset, StartSectionName, Reason)
            local montage_name = Montage:get():GetFullName()

            -- 劈棍斩棍式, Skyfall Strike
            if montage_name:find("AM_Wukong_ComboA_z_02") then
                stance_effects.sky_fall_strike()
            end

            -- 4豆蓄力劈棍. 4x Smash
            if montage_name:find("xuli_attack_4") then
                stance_effects.four_focus_smash()
            end

            -- 戳棍进尺, Forceful Thrust
            if montage_name:find("AM_wukong_combob_z_02") then
                stance_effects.forceful_thrust()
            end

            -- 4豆蓄力戳棍 4x Thrust
            if montage_name:find("AM_Wukong_xuli_B_attack_4") then
                stance_effects.four_focus_thrust()
            end

            -- 风云转, Sweeping Gale
            if montage_name:find("AM_wukong_comboc_z_01_start") then
                stance_effects.sweeping_gale()
            end

            -- 江海翻, Churning Gale
            if montage_name:find("AM_wukong_comboc_z_02") then
                stance_effects.churning_gale()
            end

            -- 4豆蓄力立棍, 4x Pillar
            if montage_name:find("AM_Wukong_Xuli_C_attack_4") then
                stance_effects.four_focus_pillar()
            end

            -- 棍花重击, Spinning Staff Heavy
            if montage_name:find("AM_Wukong_ComboC_z_specialend") then
                stance_effects.spinning_staff_heavy()
            end

            -- 5豆大圣模式蓄力
            if montage_name:find("xuli_attack_5") or montage_name:find("AM_wukong_trans_to_dasheng") then
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
                player = BPPlayerController.pawn
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
                addBuff(id_table.effect_GreatSageWeaponYellowShine, 1000)
            end

            -- 主角劈棍，立棍，戳棍等级2表现
            if buff_id == 10822 or buff_id == 10842 or buff_id == 10862 then
                addBuff(id_table.effect_GreatSageWeaponOrangeShine, 1000)
            end

            -- 主角劈棍，立棍，戳棍等级3表现（立棍几乎无视1和2等，会立马出红闪）
            if buff_id == 10823 or buff_id == 10843 or buff_id == 10863 then
                addBuff(id_table.effect_GreatSageWeaponRedShine, 1000)
            end

            -- =====Slightly longer See Through window and buffs after Seen Through=====
            -- Resolute Counterflow
            if buff_id == 287 then
                Duration:set(improved_see_through.resolute_counterflow_see_through_effective_duration * 1000)
                addBuff(id_table.combat_Immunity,
                    improved_see_through.resolute_counterflow_see_through_effective_duration * 1000)
            end

            -- Tactical Retreat
            if buff_id == 293 then
                Duration:set(improved_see_through.tactical_retreat_see_through_effective_duration * 1000)
                addBuff(id_table.combat_Immunity,
                    improved_see_through.tactical_retreat_see_through_effective_duration * 1000)
            end

            -- -- Grant Damage Reduction after performing a sucessful See Through (either Resolute Counterflow or Tatical Retreat)
            -- if buff_id == 288 or buff_id == 294 then
            --     player = get_player()
            --     library = get_library()

            --     improved_see_through.activate_health_regen(player, library)
            --     improved_see_through.activate_mana_regen(player, library)
            --     improved_see_through.activate_damage_reduction_buff(player, library)
            --     improved_see_through.activate_damage_addition_buff(player, library)
            -- end

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
