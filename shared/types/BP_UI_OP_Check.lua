---@meta

---@class UBP_UI_OP_Check_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field OPCheck UCheckBox
---@field TextBlock_0 UTextBlock
---@field isCheck boolean
---@field CheckName FText
---@field OnChildCheckStateChangedEDisp FBP_UI_OP_Check_COnChildCheckStateChangedEDisp
UBP_UI_OP_Check_C = {}

function UBP_UI_OP_Check_C:Construct() end
---@param bIsChecked boolean
function UBP_UI_OP_Check_C:OnChildCheckStateChanged(bIsChecked) end
---@param EntryPoint int32
function UBP_UI_OP_Check_C:ExecuteUbergraph_BP_UI_OP_Check(EntryPoint) end
function UBP_UI_OP_Check_C:OnChildCheckStateChangedEDisp__DelegateSignature() end


