---@meta

---@class UBP_UI_GMSettingCheck_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BP_UI_GMSettingBase UBP_UI_GMSettingBase_C
---@field BP_UI_OP_Check UBP_UI_OP_Check_C
---@field CheckName FText
---@field Name FText
---@field OnCheckStateChanged FBP_UI_GMSettingCheck_COnCheckStateChanged
UBP_UI_GMSettingCheck_C = {}

function UBP_UI_GMSettingCheck_C:Construct() end
function UBP_UI_GMSettingCheck_C:OnChildCheckStateChanged() end
---@param EntryPoint int32
function UBP_UI_GMSettingCheck_C:ExecuteUbergraph_BP_UI_GMSettingCheck(EntryPoint) end
function UBP_UI_GMSettingCheck_C:OnCheckStateChanged__DelegateSignature() end


