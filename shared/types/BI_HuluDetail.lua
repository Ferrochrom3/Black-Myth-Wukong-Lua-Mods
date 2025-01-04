---@meta

---@class UBI_HuluDetail_C : UBUI_Widget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimUpgrade UWidgetAnimation
---@field ['-----------'] UWidgetAnimation
---@field AKBEquiped UWidgetAnimation
---@field AnimEquiped UWidgetAnimation
---@field ['------------'] UWidgetAnimation
---@field GSAKBDetailState UWidgetAnimation
---@field GSAKBShowHide UWidgetAnimation
---@field BI_CostItem UBI_CostItem_C
---@field BI_DetailPageSwitcher UBI_DetailPageSwitcher_C
---@field BI_EffectDesc UBI_EffectDesc_C
---@field BI_EquipLongPress UBI_DetailLongPress_C
---@field BI_GearDetailBg UBI_GearDetailBg_C
---@field BI_KeyCostItem UBI_CostItemKey_C
---@field BI_MatDesc UBI_SoakDesc_C
---@field BI_ScrollInputTips UBI_ScrollInputTips_WithComb_C
---@field BI_UIFXDetailForged UBI_UIFXDetailForged_C
---@field BI_WineDesc UBI_SoakDesc_C
---@field ContentScroll UBI_ScrollBoxNew_C
---@field ImgArrow UGSImage
---@field ImgBgHuluNum UImage
---@field ImgBgHuluUpNum UImage
---@field ImgPageFrame UImage
---@field InputIconScroll UGSInputActionIcon
---@field MarkerWearing UImage
---@field NGForgeSpark_Left UNiagaraSystemWidget
---@field NGForgeSpark_Right UNiagaraSystemWidget
---@field NGForgeSpark_Top UNiagaraSystemWidget
---@field RetainerMaskSuitDesc UGSRetainerBox
---@field Spline UImage
---@field SpLine_Mat UImage
---@field SpLineNext UImage
---@field TxtNameRuby UGSRichScaleText
---@field UIFX_ForgedLight UImage
---@field SparkLifeTime FVector2D
---@field SparkSize float
UBI_HuluDetail_C = {}

function UBI_HuluDetail_C:SequenceEvent__ENTRYPOINTBI_HuluDetail_1() end
function UBI_HuluDetail_C:SequenceEvent__ENTRYPOINTBI_HuluDetail_0() end
---@param NGForgeSpark_Top UNiagaraSystemWidget
function UBI_HuluDetail_C:SeqFX_Play_Top(NGForgeSpark_Top) end
---@param NGForgeSpark_Top UNiagaraSystemWidget
function UBI_HuluDetail_C:SeqFX_Stop_Top(NGForgeSpark_Top) end
---@param NGForgeSpark_Left UNiagaraSystemWidget
function UBI_HuluDetail_C:SeqFX_Play_Left(NGForgeSpark_Left) end
---@param NGForgeSpark_Right UNiagaraSystemWidget
function UBI_HuluDetail_C:SeqFX_Play_Right(NGForgeSpark_Right) end
---@param NGForgeSpark_Left UNiagaraSystemWidget
function UBI_HuluDetail_C:SeqFX_Stop_Left(NGForgeSpark_Left) end
---@param NGForgeSpark_Right UNiagaraSystemWidget
function UBI_HuluDetail_C:SeqFX_Stop_Right(NGForgeSpark_Right) end
function UBI_HuluDetail_C:SeqAnim_DetailBg_Equiped() end
function UBI_HuluDetail_C:SeqAnim_DetailBg_Upgrade() end
---@param IsDesignTime boolean
function UBI_HuluDetail_C:PreConstruct(IsDesignTime) end
---@param EntryPoint int32
function UBI_HuluDetail_C:ExecuteUbergraph_BI_HuluDetail(EntryPoint) end


