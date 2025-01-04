---@meta

---@class UBI_AgeTips_C : UBUI_Button
---@field UberGraphFrame FPointerToUberGraphFrame
---@field GSAnimPressed UWidgetAnimation
---@field GSAKBStateAnim UWidgetAnimation
---@field InputIcon UGSInputActionIcon
UBI_AgeTips_C = {}

---@param IsDesignTime boolean
function UBI_AgeTips_C:PreConstruct(IsDesignTime) end
---@param EntryPoint int32
function UBI_AgeTips_C:ExecuteUbergraph_BI_AgeTips(EntryPoint) end


