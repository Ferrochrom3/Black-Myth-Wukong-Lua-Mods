---@meta

---@class UBI_Loading_Item_Name_C : UBUI_Widget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimHide UWidgetAnimation
---@field AnimShow UWidgetAnimation
---@field ImgBar UImage
---@field ImgLineL UImage
---@field ImgLineR UImage
---@field SubfixTxtRuby URichTextBlock
UBI_Loading_Item_Name_C = {}

---@param IsDesignTime boolean
function UBI_Loading_Item_Name_C:PreConstruct(IsDesignTime) end
---@param EntryPoint int32
function UBI_Loading_Item_Name_C:ExecuteUbergraph_BI_Loading_Item_Name(EntryPoint) end


