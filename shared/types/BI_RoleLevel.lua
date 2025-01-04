---@meta

---@class UBI_RoleLevel_C : UBUI_Widget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field ['---------------'] UWidgetAnimation
---@field AKBInfoState UWidgetAnimation
---@field GSAKBShowHide UWidgetAnimation
---@field BI_RoleAttr_1 UBI_AttrBase_V2_C
---@field BI_RoleAttr_2 UBI_AttrBase_V2_C
---@field ExpBar UCanvasPanel
---@field ImgLine UImage
---@field ProgBar UGSProcBar
---@field ProgBG UImage
UBI_RoleLevel_C = {}

---@param IsDesignTime boolean
function UBI_RoleLevel_C:PreConstruct(IsDesignTime) end
---@param EntryPoint int32
function UBI_RoleLevel_C:ExecuteUbergraph_BI_RoleLevel(EntryPoint) end


