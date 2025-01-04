---@meta

---@class UBUI_RoleMain_C : UBUI_Widget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field GSAKBActionBlock UWidgetAnimation
---@field AnimBgHide UWidgetAnimation
---@field AnimBgShow UWidgetAnimation
---@field GSAKBBg UWidgetAnimation
---@field ['----------'] UWidgetAnimation
---@field AnimObsMode UWidgetAnimation
---@field AnimShowHide UWidgetAnimation
---@field BI_RoleLevel UBI_RoleLevel_C
---@field BI_RoleTab UBI_RoleTab_C
---@field ImgBgAnim UImage
---@field ImgTabBg UImage
UBUI_RoleMain_C = {}

function UBUI_RoleMain_C:Construct() end
---@param EntryPoint int32
function UBUI_RoleMain_C:ExecuteUbergraph_BUI_RoleMain(EntryPoint) end


