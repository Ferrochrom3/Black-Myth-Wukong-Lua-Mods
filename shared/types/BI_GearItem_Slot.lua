---@meta

---@class UBI_GearItem_Slot_C : UBUI_ButtonNone
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ['------------------'] UWidgetAnimation
---@field GSAnimLockActived UWidgetAnimation
---@field GSAnimLockFocused UWidgetAnimation
---@field GSAnimLockHovered UWidgetAnimation
---@field GSAnimLockNormal UWidgetAnimation
---@field GSAnimDisable UWidgetAnimation
---@field GSAnimActived UWidgetAnimation
---@field GSAnimFocused UWidgetAnimation
---@field GSAnimHovered UWidgetAnimation
---@field GSAnimNormal UWidgetAnimation
---@field ['-----------------'] UWidgetAnimation
---@field GSAnimPressed UWidgetAnimation
---@field GSAKBStateAnim UWidgetAnimation
---@field FocusWidget UGSFocusWidget
---@field ImgItem UGSImage
---@field ImgRedPoint UImage
---@field MarkerBase UGSImage
UBI_GearItem_Slot_C = {}

---@param IsDesignTime boolean
function UBI_GearItem_Slot_C:PreConstruct(IsDesignTime) end
function UBI_GearItem_Slot_C:Construct() end
---@param EntryPoint int32
function UBI_GearItem_Slot_C:ExecuteUbergraph_BI_GearItem_Slot(EntryPoint) end


