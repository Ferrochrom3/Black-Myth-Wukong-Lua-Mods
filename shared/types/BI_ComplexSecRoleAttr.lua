---@meta

---@class UBI_ComplexSecRoleAttr_C : UBUI_Widget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AttrStateChange UWidgetAnimation
---@field AKBStateForge UWidgetAnimation
---@field Arrow UBI_ArrowRoleAttr_C
---@field ImgArrow UGSImage
---@field ImgBar UImage
---@field ImgMarker UImage
UBI_ComplexSecRoleAttr_C = {}

---@param IsDesignTime boolean
function UBI_ComplexSecRoleAttr_C:PreConstruct(IsDesignTime) end
function UBI_ComplexSecRoleAttr_C:Construct() end
---@param EntryPoint int32
function UBI_ComplexSecRoleAttr_C:ExecuteUbergraph_BI_ComplexSecRoleAttr(EntryPoint) end


