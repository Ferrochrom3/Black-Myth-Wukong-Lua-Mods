---@meta

---@class UBI_SuitSPDesc_C : UBUI_Widget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ['-------------'] UWidgetAnimation
---@field AnimSuitActived UWidgetAnimation
---@field AnimForgeShow UWidgetAnimation
---@field ['------------'] UWidgetAnimation
---@field AKBStateSuitTxt UWidgetAnimation
---@field ImgArrow UGSImage
---@field ImgDot UImage
---@field ImgNew UGSImage
---@field TxtSuitDesc URichTextBlock
---@field UIFX_SPSuitAct UGSImage
---@field UINS_Forged UNiagaraSystemWidget
UBI_SuitSPDesc_C = {}

function UBI_SuitSPDesc_C:SequenceEvent__ENTRYPOINTBI_SuitSPDesc_1() end
function UBI_SuitSPDesc_C:SequenceEvent__ENTRYPOINTBI_SuitSPDesc_0() end
function UBI_SuitSPDesc_C:SeqFX_Play() end
function UBI_SuitSPDesc_C:SeqFX_Stop() end
---@param EntryPoint int32
function UBI_SuitSPDesc_C:ExecuteUbergraph_BI_SuitSPDesc(EntryPoint) end


