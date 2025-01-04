---@meta

---@class UBI_CostItemKey_C : UBUI_Button
---@field UberGraphFrame FPointerToUberGraphFrame
---@field GSAKBStateAnim UWidgetAnimation
---@field FocusWidget UGSFocusWidget
---@field ImgBar UGSImage
---@field ImgItem UImage
---@field TxtCost UTextBlock
---@field TxtOwn UTextBlock
UBI_CostItemKey_C = {}

---@param Obj UImage
---@param Brush FSlateBrush
---@param Size FVector2D
---@param Pos FVector2D
function UBI_CostItemKey_C:InitUI(Obj, Brush, Size, Pos) end
---@param TxtObj UTextBlock
---@param TxtAnchors FAnchors
---@param TxtAlignment FVector2D
---@param TxtPos FVector2D
---@param TxtColor FSlateColor
---@param TxtFont FSlateFontInfo
---@param TxtShadowOffset FVector2D
---@param TxtShadowColor FLinearColor
---@param TxtJustification ETextJustify::Type
function UBI_CostItemKey_C:InitTxt(TxtObj, TxtAnchors, TxtAlignment, TxtPos, TxtColor, TxtFont, TxtShadowOffset, TxtShadowColor, TxtJustification) end
---@param IsDesignTime boolean
function UBI_CostItemKey_C:PreConstruct(IsDesignTime) end
---@param EntryPoint int32
function UBI_CostItemKey_C:ExecuteUbergraph_BI_CostItemKey(EntryPoint) end


