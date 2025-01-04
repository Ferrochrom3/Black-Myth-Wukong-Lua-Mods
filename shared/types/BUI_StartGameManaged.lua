---@meta

---@class UBUI_StartGameManaged_C : UBUI_Widget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field GSAnimBG UWidgetAnimation
---@field ImgBg UImage
UBUI_StartGameManaged_C = {}

---@param IsDesignTime boolean
function UBUI_StartGameManaged_C:PreConstruct(IsDesignTime) end
function UBUI_StartGameManaged_C:Construct() end
---@param EntryPoint int32
function UBUI_StartGameManaged_C:ExecuteUbergraph_BUI_StartGameManaged(EntryPoint) end


