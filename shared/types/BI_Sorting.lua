---@meta

---@class UBI_Sorting_C : UBUI_Widget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field GSAKBStateAnim UWidgetAnimation
---@field AnimSortChanged UWidgetAnimation
---@field ImgBg UImage
---@field InputIcon UGSInputActionIcon
UBI_Sorting_C = {}

---@param IsDesignTime boolean
function UBI_Sorting_C:PreConstruct(IsDesignTime) end
function UBI_Sorting_C:Construct() end
---@param EntryPoint int32
function UBI_Sorting_C:ExecuteUbergraph_BI_Sorting(EntryPoint) end


