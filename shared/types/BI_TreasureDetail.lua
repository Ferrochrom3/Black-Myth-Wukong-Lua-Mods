---@meta

---@class UBI_TreasureDetail_C : UBUI_Widget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AKBEquiped UWidgetAnimation
---@field AnimEquiped UWidgetAnimation
---@field ['------------'] UWidgetAnimation
---@field AKBStateSuitTxt UWidgetAnimation
---@field ['-------------'] UWidgetAnimation
---@field AKBVideoState UWidgetAnimation
---@field GSAKBDetailState UWidgetAnimation
---@field GSAKBShowHide UWidgetAnimation
---@field BI_EquipLongPress UBI_DetailLongPress_C
---@field BI_GearDetailBg UBI_GearDetailBg_C
---@field BI_ScrollInputTips UBI_ScrollInputTips_WithComb_C
---@field ContentScroll UBI_ScrollBoxNew_C
---@field ImgVideo UImage
---@field ImgVideoBink UImage
---@field InputIcon_HideVideo UGSInputActionIcon
---@field InputIcon_ShowVideo UGSInputActionIcon
---@field InputIconScroll UGSInputActionIcon
---@field MarkerWearing UImage
---@field RetainerMaskSuitDesc UGSRetainerBox
---@field SpLine_Active UImage
---@field SpLine_Passive UImage
---@field TreasureEqDesc UBI_TreasureEqDesc_C
---@field TreasureItem UBI_TreasureDetailItem_C
---@field TxtActiveDesc URichTextBlock
---@field TxtInputTips UGSInputRichTextBlock
---@field TxtNameRuby UGSRichScaleText
---@field SparkLifeTime FVector2D
---@field SparkSize float
UBI_TreasureDetail_C = {}

function UBI_TreasureDetail_C:SequenceEvent__ENTRYPOINTBI_TreasureDetail_0() end
function UBI_TreasureDetail_C:SeqAnim_DetailBg_Equiped() end
---@param IsDesignTime boolean
function UBI_TreasureDetail_C:PreConstruct(IsDesignTime) end
---@param EntryPoint int32
function UBI_TreasureDetail_C:ExecuteUbergraph_BI_TreasureDetail(EntryPoint) end


