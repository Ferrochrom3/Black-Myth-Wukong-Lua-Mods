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


function stance_effects.four_focus_smash()
    add_buff(id_table.delayedEffect_4FocusSmash1, 3000);
    add_buff(id_table.delayedEffect_4FocusSmash2, 3000);
    add_buff(id_table.delayedEffect_4FocusSmash3, 5000);
end

function stance_effects.four_focus_thrust()
    add_buff(id_table.vfx_StaffRedCharge, 1300)
end

function stance_effects.four_focus_pillar()
    add_buff(id_table.vfx_StaffRedCharge, 2000)
end

function stance_effects.enter_wukong_stance()
    add_buff(id_table.delayedEffect_5FocusSmash3, 3000);
end

function stance_effects.five_focus_wukong_stance()
    add_buff(id_table.delayedEffect_5FocusSmash1, 2500);
    add_buff(id_table.delayedEffect_5FocusSmash2, 3200);
    add_buff(id_table.delayedEffect_5FocusSmash3, 3650);
end

-- ========================================================================================================================================================================================== --
-- ========================================================================================================================================================================================== --
-- ========================================================================================================================================================================================== --

-- Wukong stance light attack 1
function stance_effects.wukong_stance_combo_1()
end

-- Wukong stance light attack 1 followed by 1 heavy (破棍式)
function stance_effects.wukong_stance_combo_1_heavy_1()
    add_buff(id_table.vfx_StaffYellowCharge, 1000)
end

-- Wukong stance light attack 1 followed by 2 heavies (劈棍斩棍式)
function stance_effects.wukong_stance_combo_1_heavy_2()
    add_buff(id_table.vfx_StaffRedCharge, 2000)
end

-- ========================================================================================================================================================================================== --
-- ========================================================================================================================================================================================== --
-- ========================================================================================================================================================================================== --

-- Wukong stance light attack 2
function stance_effects.wukong_stance_combo_2()
    add_buff(id_table.vfx_StaffYellowCharge, 1000)
end

-- Wukong stance light attack 2 followed by 1 heavy（挥，戳)
function stance_effects.wukong_stance_combo_2_heavy_1()
    add_buff(id_table.vfx_StaffOrangeCharge, 3000)
end

-- Wukong stance light attack 2 followed by 2 heavies (劈棍斩棍式)
function stance_effects.wukong_stance_combo_2_heavy_2()
    add_buff(id_table.vfx_StaffRedCharge, 2000)
end

-- ========================================================================================================================================================================================== --
-- ========================================================================================================================================================================================== --
-- ========================================================================================================================================================================================== --

-- Wukong stance light attack 3
function stance_effects.wukong_stance_combo_3()
    add_buff(id_table.vfx_StaffOrangeCharge, 2500)
end

-- Wukong stance light attack 3 followed by 1 heavy（大挥）
function stance_effects.wukong_stance_combo_3_heavy_1()
    add_buff(id_table.vfx_StaffOrangeCharge, 2000)
    add_buff(id_table.vfx_GreatSageOrangeShine, 300)
end

-- Wukong stance light attack 3 followed by 2 heavies (江海翻)
function stance_effects.wukong_stance_combo_3_heavy_2()
    add_buff(id_table.vfx_GreatSageRedShine, 100)
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
    add_buff(id_table.vfx_StaffRedCharge, 2000)
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
