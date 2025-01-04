---@meta

---@class UBI_ItemStory_C : UBUI_Widget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimObsFold UWidgetAnimation
---@field AnimObsUnfold UWidgetAnimation
---@field AnimHide UWidgetAnimation
---@field AnimShow UWidgetAnimation
---@field GSAKBShowHide UWidgetAnimation
---@field ImgStoryBar UImage
---@field TxtStoryRuby UGSRichScaleText
---@field StoryBarTint FLinearColor
UBI_ItemStory_C = {}

---@param IsDesignTime boolean
function UBI_ItemStory_C:PreConstruct(IsDesignTime) end
function UBI_ItemStory_C:Construct() end
function UBI_ItemStory_C:EventAnimShow_Play() end
function UBI_ItemStory_C:EventAnimHide_Play() end
function UBI_ItemStory_C:EventAnimShow_Stop() end
function UBI_ItemStory_C:EventAnimHide_Stop() end
function UBI_ItemStory_C:EventAnimObsFold_Play() end
function UBI_ItemStory_C:EventAnimObsFold_Stop() end
function UBI_ItemStory_C:EventAnimObsUnfold_Play() end
function UBI_ItemStory_C:EventAnimObsUnfold_Stop() end
---@param EntryPoint int32
function UBI_ItemStory_C:ExecuteUbergraph_BI_ItemStory(EntryPoint) end


