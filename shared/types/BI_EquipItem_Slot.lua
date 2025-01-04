---@meta

---@class UBI_EquipItem_Slot_C : UBUI_ButtonSpecialNone
---@field UberGraphFrame FPointerToUberGraphFrame
---@field GSAnimNormal_1 UWidgetAnimation
---@field GSAnimFocused_0 UWidgetAnimation
---@field ['-------------------'] UWidgetAnimation
---@field GSAnimLockActivedSpecial UWidgetAnimation
---@field GSAnimLockFocusedSpecial UWidgetAnimation
---@field GSAnimLockHoveredSpecial UWidgetAnimation
---@field GSAnimLockNormalSpecial UWidgetAnimation
---@field GSAnimDisableSpecial UWidgetAnimation
---@field GSAnimActivedSpecial UWidgetAnimation
---@field GSAnimFocusedSpecial UWidgetAnimation
---@field GSAnimHoveredSpecial UWidgetAnimation
---@field GSAnimNormalSpecial UWidgetAnimation
---@field ['------------------'] UWidgetAnimation
---@field GSAnimLockActived UWidgetAnimation
---@field GSAnimLockFocused UWidgetAnimation
---@field GSAnimLockHovered UWidgetAnimation
---@field GSAnimLockNormal UWidgetAnimation
---@field GSAnimDisable UWidgetAnimation
---@field GSAnimActived UWidgetAnimation
---@field GSAnimFocused UWidgetAnimation
---@field GSAnimHovered_bup UWidgetAnimation
---@field GSAnimNormal UWidgetAnimation
---@field ['-----------------'] UWidgetAnimation
---@field GSAnimPressed UWidgetAnimation
---@field GSAKBStateAnim UWidgetAnimation
---@field FocusWidget UGSFocusWidget
---@field ImgItem UGSImage
---@field ImgRedPoint UImage
---@field MarkerBase UGSImage
UBI_EquipItem_Slot_C = {}

---@param IsDesignTime boolean
function UBI_EquipItem_Slot_C:PreConstruct(IsDesignTime) end
function UBI_EquipItem_Slot_C:Construct() end
---@param EntryPoint int32
function UBI_EquipItem_Slot_C:ExecuteUbergraph_BI_EquipItem_Slot(EntryPoint) end


