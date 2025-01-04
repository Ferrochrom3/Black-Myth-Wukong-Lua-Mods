local stance_effects = require("stance_effects")

local function log_message(message)
    print("================================================= [Great Sage VFX] " .. message)
end


-- Causes crash when loading into and out of a level when ExecuteWithDelay() is used
-- Make sure any function that uses ExecuteWithDelay() will not be in here, including deeper level functions
local function register_skill_animation_hook()
    RegisterHook("/Script/b1-Managed.BUS_GSEventCollection:Evt_CastSkillWithAnimMontageMultiCast",
        function(Context, Montage, PlayTimeRate, MontagePosOffset, StartSectionName, Reason)
            local montage_name = Montage:get():GetFullName()

            -- 4豆蓄力劈棍
            if montage_name:find("xuli_attack_4") then
                stance_effects.four_focus_smash()
            end

            -- 4豆蓄力戳棍
            if montage_name:find("AM_Wukong_xuli_B_attack_4") then
                stance_effects.four_focus_thrust()
            end

            -- 4豆蓄力立棍
            if montage_name:find("AM_Wukong_Xuli_C_attack_4") then
                stance_effects.four_focus_pillar()
            end

            -- 进入大圣模式
            if montage_name:find("AM_wukong_trans_to_dasheng") then
                stance_effects.enter_wukong_stance()
            end

            -- 5豆大风车
            if montage_name:find("xuli_attack_5") then
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

            -- -- Used to ensure effects can be applied when entering a new zone in Wukong stance (use a light attack to activate this)
            -- if montage_name:find("_q") then
            --     local BPPlayerController = FindFirstOf("BP_B1PlayerController_C")
            --     player = BPPlayerController.pawn ---@diagnostic disable-line: undefined-field
            -- end
        end)
end

local function register_buff_hook()
    RegisterHook("/Script/b1-Managed.BUS_GSEventCollection:Evt_BuffAdd_Multicast_Invoke",
        function(Context, BuffID, Caster, RootCaster, Duration, BuffSourceType, bRecursed, BattleAttrSnapShot)
            local buff_id = BuffID:get()

            -- =====Visual effects=====
            -- -- 主角劈棍，立棍，戳棍等级1表现
            -- if buff_id == 10821 or buff_id == 10841 or buff_id == 10861 then
            --     add_buff(id_table.effect_GreatSageWeaponYellowShine, 100)
            -- end

            -- -- 主角劈棍，立棍，戳棍等级2表现
            -- if buff_id == 10822 or buff_id == 10842 or buff_id == 10862 then
            --     add_buff(id_table.effect_GreatSageWeaponOrangeShine, 300)
            -- end

            -- -- 主角劈棍，立棍，戳棍等级3表现
            -- if buff_id == 10823 or buff_id == 10843 or buff_id == 10863 then
            --     add_buff(id_table.effect_GreatSageWeaponRedShine, 100)
            -- end

            -- -- 主角劈棍，立棍，戳棍等级4表现
            -- if buff_id == 10824 or buff_id == 10844 or buff_id == 10864 then
            -- end
        end)
end


ExecuteWithDelay(5000, function()
    RegisterHook("/Script/Engine.PlayerController:ClientRestart", function(self, NewPawn)
    end)

    log_message("Skill Animation and Buff Hooks are registerted")
    register_skill_animation_hook()
    register_buff_hook()
end)
