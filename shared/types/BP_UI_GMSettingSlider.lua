---@meta

---@class UBP_UI_GMSettingSlider_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BP_UI_GMSettingBase UBP_UI_GMSettingBase_C
---@field BP_UI_OP_Slider UBP_UI_OP_Slider_C
---@field OptionName FText
---@field CurStep int32
---@field SliderStepDescAttr TArray<FText>
---@field OnSliderValueChanged FBP_UI_GMSettingSlider_COnSliderValueChanged
UBP_UI_GMSettingSlider_C = {}

---@param OutCurStep int32
function UBP_UI_GMSettingSlider_C:EventOnSlideChange(OutCurStep) end
function UBP_UI_GMSettingSlider_C:Construct() end
---@param EntryPoint int32
function UBP_UI_GMSettingSlider_C:ExecuteUbergraph_BP_UI_GMSettingSlider(EntryPoint) end
function UBP_UI_GMSettingSlider_C:OnSliderValueChanged__DelegateSignature() end


