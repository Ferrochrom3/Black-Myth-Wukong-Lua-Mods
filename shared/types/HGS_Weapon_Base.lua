---@meta

---@class AHGS_Weapon_Base_C : ABGUWeaponBase
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DisData_dis_5955D6C5427E88E46A4BE0AFBF4B00A9 float
---@field DisData__Direction_5955D6C5427E88E46A4BE0AFBF4B00A9 ETimelineDirection::Type
---@field DisData UTimelineComponent
---@field DisolveCurve UCurveFloat
---@field DisolvedDelayTimeToDestory double
AHGS_Weapon_Base_C = {}

function AHGS_Weapon_Base_C:DisData__FinishedFunc() end
function AHGS_Weapon_Base_C:DisData__UpdateFunc() end
---@param EntryPoint int32
function AHGS_Weapon_Base_C:ExecuteUbergraph_HGS_Weapon_Base(EntryPoint) end


