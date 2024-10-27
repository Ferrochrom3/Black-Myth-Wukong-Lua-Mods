---@meta

---@class UBP_UI_OP_Editable_C : UBUI_GM_OP_Editable
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BG UImage
---@field BG2 UImage
---@field CurValueText UTextBlock
---@field OPButton UButton
---@field OPEditableText UEditableTextBox
UBP_UI_OP_Editable_C = {}

function UBP_UI_OP_Editable_C:Construct() end
---@param EntryPoint int32
function UBP_UI_OP_Editable_C:ExecuteUbergraph_BP_UI_OP_Editable(EntryPoint) end


