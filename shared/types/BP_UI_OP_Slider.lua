---@meta

---@class UBP_UI_OP_Slider_C : UUserWidget
---@field UberGraphFrame FPointerToUberGraphFrame
---@field CurValueText UTextBlock
---@field OPSlider USlider
---@field SliderValue double
---@field SliderStepDescAttr TArray<FText>
---@field OnSlideValueChangeDisp FBP_UI_OP_Slider_COnSlideValueChangeDisp
UBP_UI_OP_Slider_C = {}

---@return FText
function UBP_UI_OP_Slider_C:GetCurValueText() end
function UBP_UI_OP_Slider_C:InitCurStep() end
---@return int32
function UBP_UI_OP_Slider_C:GetCurStep() end
---@param Value float
function UBP_UI_OP_Slider_C:BndEvt__OPSlider_K2Node_ComponentBoundEvent_0_OnFloatValueChangedEvent__DelegateSignature(Value) end
---@param EntryPoint int32
function UBP_UI_OP_Slider_C:ExecuteUbergraph_BP_UI_OP_Slider(EntryPoint) end
---@param OutCurStep int32
function UBP_UI_OP_Slider_C:OnSlideValueChangeDisp__DelegateSignature(OutCurStep) end


