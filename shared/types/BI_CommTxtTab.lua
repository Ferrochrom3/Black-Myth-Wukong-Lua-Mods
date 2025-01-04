---@meta

---@class UBI_CommTxtTab_C : UBUI_Button
---@field UberGraphFrame FPointerToUberGraphFrame
---@field GSAKBStateAnim_1 UWidgetAnimation
---@field GSAKBStateAnim_0 UWidgetAnimation
---@field GSAKBActionBlock UWidgetAnimation
---@field ['-----------------'] UWidgetAnimation
---@field GSAnimLockActived UWidgetAnimation
---@field GSAnimLockFocused UWidgetAnimation
---@field GSAnimLockHovered UWidgetAnimation
---@field GSAnimLockNormal UWidgetAnimation
---@field GSAnimDisable UWidgetAnimation
---@field GSAnimActived UWidgetAnimation
---@field GSAnimFocused UWidgetAnimation
---@field GSAnimHovered UWidgetAnimation
---@field GSAnimNormal UWidgetAnimation
---@field ['------------------'] UWidgetAnimation
---@field GSAnimPressed UWidgetAnimation
---@field GSAKBStateAnim UWidgetAnimation
---@field ImgIcon UGSImage
---@field ImgLocked UImage
---@field ImgRedPoint UImage
---@field ResizeWidget UImage
UBI_CommTxtTab_C = {}

---@param IsDesignTime boolean
function UBI_CommTxtTab_C:PreConstruct(IsDesignTime) end
function UBI_CommTxtTab_C:Construct() end
---@param EntryPoint int32
function UBI_CommTxtTab_C:ExecuteUbergraph_BI_CommTxtTab(EntryPoint) end


