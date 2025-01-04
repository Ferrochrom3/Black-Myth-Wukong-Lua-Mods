---@meta

---@class UBI_QuickItem_C : UBUI_ButtonNone
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimConfig UWidgetAnimation
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
---@field ImgHitArea UImage
---@field ImgItem UGSImage
---@field MarkerBase UGSImage
---@field UINS_Config UNiagaraSystemWidget
UBI_QuickItem_C = {}

---@param UINS_Config UNiagaraSystemWidget
function UBI_QuickItem_C:SequenceEvent__ENTRYPOINTBI_QuickItem_1(UINS_Config) end
---@param UINS_Config UNiagaraSystemWidget
function UBI_QuickItem_C:SequenceEvent__ENTRYPOINTBI_QuickItem_0(UINS_Config) end
function UBI_QuickItem_C:BP_OnEntryReleased() end
---@param bIsExpanded boolean
function UBI_QuickItem_C:BP_OnItemExpansionChanged(bIsExpanded) end
---@param bIsSelected boolean
function UBI_QuickItem_C:BP_OnItemSelectionChanged(bIsSelected) end
---@param ListItemObject UObject
function UBI_QuickItem_C:OnListItemObjectSet(ListItemObject) end
---@param UINS_Config UNiagaraSystemWidget
function UBI_QuickItem_C:SeqFX_PlayConfig(UINS_Config) end
---@param UINS_Config UNiagaraSystemWidget
function UBI_QuickItem_C:SeqFX_StopConfig(UINS_Config) end
---@param IsDesignTime boolean
function UBI_QuickItem_C:PreConstruct(IsDesignTime) end
function UBI_QuickItem_C:Construct() end
---@param EntryPoint int32
function UBI_QuickItem_C:ExecuteUbergraph_BI_QuickItem(EntryPoint) end


