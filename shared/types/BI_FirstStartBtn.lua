---@meta

---@class UBI_FirstStartBtn_C : UBUI_Button
---@field UberGraphFrame FPointerToUberGraphFrame
---@field GSAKBStateAnim UWidgetAnimation
---@field GSAnimNormal UWidgetAnimation
---@field GSAnimFocused UWidgetAnimation
---@field GSAnimHovered UWidgetAnimation
---@field GSAnimPressed UWidgetAnimation
---@field ImgBg UImage
---@field ImgBgFX UImage
---@field ImgBgW UImage
UBI_FirstStartBtn_C = {}

---@param IsDesignTime boolean
function UBI_FirstStartBtn_C:PreConstruct(IsDesignTime) end
function UBI_FirstStartBtn_C:Construct() end
---@param EntryPoint int32
function UBI_FirstStartBtn_C:ExecuteUbergraph_BI_FirstStartBtn(EntryPoint) end


