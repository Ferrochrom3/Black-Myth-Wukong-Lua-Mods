---@meta

---@class UBI_InventoryItem_C : UBUI_ButtonNone
---@field UberGraphFrame FPointerToUberGraphFrame
---@field GSAKBColorTypeAnim UWidgetAnimation
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
---@field ImgTimeMarker UImage
---@field MarkerBase UGSImage
UBI_InventoryItem_C = {}

function UBI_InventoryItem_C:BP_OnEntryReleased() end
---@param bIsExpanded boolean
function UBI_InventoryItem_C:BP_OnItemExpansionChanged(bIsExpanded) end
---@param bIsSelected boolean
function UBI_InventoryItem_C:BP_OnItemSelectionChanged(bIsSelected) end
---@param IsDesignTime boolean
function UBI_InventoryItem_C:PreConstruct(IsDesignTime) end
function UBI_InventoryItem_C:Construct() end
---@param ListItemObject UObject
function UBI_InventoryItem_C:OnListItemObjectSet(ListItemObject) end
---@param EntryPoint int32
function UBI_InventoryItem_C:ExecuteUbergraph_BI_InventoryItem(EntryPoint) end


