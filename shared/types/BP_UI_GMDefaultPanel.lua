---@meta

---@class UBP_UI_GMDefaultPanel_C : UBUI_GMUI
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BP_UI_GMSettingCharacterConfig UBP_UI_GMSettingCharacterConfig_C
---@field Btn_BG UImage
---@field CamInfo UEditableTextBox
---@field Config_BG UImage
---@field GetCamInfo UButton
---@field Option_BG UImage
---@field ScrBox_Btn UScrollBox
UBP_UI_GMDefaultPanel_C = {}

---@param IsDesignTime boolean
function UBP_UI_GMDefaultPanel_C:PreConstruct(IsDesignTime) end
---@param EntryPoint int32
function UBP_UI_GMDefaultPanel_C:ExecuteUbergraph_BP_UI_GMDefaultPanel(EntryPoint) end


