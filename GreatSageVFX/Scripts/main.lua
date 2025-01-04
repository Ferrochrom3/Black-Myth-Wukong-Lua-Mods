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
                -- 4豆蓄力戳棍
            elseif montage_name:find("AM_Wukong_xuli_B_attack_4") then
                stance_effects.four_focus_thrust()
                -- 4豆蓄力立棍
            elseif montage_name:find("AM_Wukong_Xuli_C_attack_4") then
                stance_effects.four_focus_pillar()
                -- 进入大圣模式
            elseif montage_name:find("AM_wukong_trans_to_dasheng") then
                stance_effects.enter_wukong_stance()
                -- 5豆大风车
            elseif montage_name:find("xuli_attack_5") then
                stance_effects.five_focus_wukong_stance()
                -- 空中大风车
            elseif montage_name:find("AM_dasheng_atk_air_heavy") then
                stance_effects.four_focus_air_dasheng_smash()
            end

            -- 大圣普攻1
            if montage_name:find("AM_Dasheng_ComboA_01") then
                stance_effects.wukong_stance_combo_1()
                -- 大圣普攻2
            elseif montage_name:find("AM_Dasheng_ComboA_02") then
                stance_effects.wukong_stance_combo_2()
                -- 大圣普攻3
            elseif montage_name:find("AM_Dasheng_ComboA_03") then
                stance_effects.wukong_stance_combo_3()
                -- 大圣普攻4
            elseif montage_name:find("AM_Dasheng_ComboA_04") then
                stance_effects.wukong_stance_combo_4()
                -- 大圣普攻5
            elseif montage_name:find("AM_Dasheng_ComboA_05") then
                stance_effects.wukong_stance_combo_5()
            end

            -- 大圣切手技1-1（劈棍切手技）
            if montage_name:find("AM_Dasheng_ComboA_01_Z_1") then
                stance_effects.wukong_stance_combo_1_heavy_1()
                -- 大圣切手技1-2（劈棍斩棍式）
            elseif montage_name:find("AM_Dasheng_ComboA_01_Z_2") then
                stance_effects.wukong_stance_combo_1_heavy_2()
                -- 大圣切手技2-1（挥，戳)
            elseif montage_name:find("AM_Dasheng_ComboA_02_Z_1") then
                stance_effects.wukong_stance_combo_2_heavy_1()
                -- 大圣切手技2-2（劈棍斩棍式）
            elseif montage_name:find("AM_Dasheng_ComboA_02_Z_2") then
                stance_effects.wukong_stance_combo_2_heavy_2()
                -- 大圣切手技3-1（大挥）
            elseif montage_name:find("AM_Dasheng_ComboA_03_Z_1") then
                stance_effects.wukong_stance_combo_3_heavy_1()
                -- 大圣切手技3-2（江海翻）
            elseif montage_name:find("AM_Dasheng_ComboA_03_Z_2") then
                stance_effects.wukong_stance_combo_3_heavy_2()
            end
        end)
end


ExecuteWithDelay(5000, function()
    RegisterHook("/Script/Engine.PlayerController:ClientRestart", function(self, pawn)
    end)

    log_message("Skill Animation Hook registerted")
    register_skill_animation_hook()
end)
