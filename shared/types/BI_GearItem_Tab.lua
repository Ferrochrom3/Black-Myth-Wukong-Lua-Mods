---@meta

---@class UBI_GearItem_Tab_C : UBUI_ButtonNone
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimConfig UWidgetAnimation
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
---@field UINS_Config UNiagaraSystemWidget
UBI_GearItem_Tab_C = {}

function UBI_GearItem_Tab_C:SequenceEvent__ENTRYPOINTBI_GearItem_Tab_0() end
---@param UINS_Config UNiagaraSystemWidget
function UBI_GearItem_Tab_C:SeqFX_PlayConfig(UINS_Config) end
---@param IsDesignTime boolean
function UBI_GearItem_Tab_C:PreConstruct(IsDesignTime) end
function UBI_GearItem_Tab_C:Construct() end
---@param EntryPoint int32
function UBI_GearItem_Tab_C:ExecuteUbergraph_BI_GearItem_Tab(EntryPoint) end


