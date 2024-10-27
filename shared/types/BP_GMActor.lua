---@meta

---@class ABP_GMActor_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DefaultSceneRoot USceneComponent
---@field TimeDilation double
---@field GMPanelWidget UUserWidget
---@field MouseTemp int32
---@field GMInfoPanelWidget_Enemy UBUI_Widget
---@field UseFreeCamera boolean
---@field ZBBPanel UBUI_Widget
---@field EnableAllSkillsByDefault boolean
---@field GMInfdo_PressNum int32
---@field GMInfoPanelWidget_Player UBUI_Widget
---@field UI_Debug_RT UUserWidget
---@field DisplayDebugSphereDuration double
---@field IsMiniGmShow boolean
---@field BugReporter UBUI_Widget
---@field LT boolean
---@field RT boolean
---@field GMXboxConsoleTest boolean
---@field GMXboxTestWidget UMediaPlayerTest_UMG_C
ABP_GMActor_C = {}

function ABP_GMActor_C:DisableGMPanel() end
function ABP_GMActor_C:OCEANTest() end
function ABP_GMActor_C:InitGMFunctions() end
---@param Widget UBUI_Widget
---@param WidgetClass TSubclassOf<UBUI_Widget>
---@param ShowOrNot boolean
function ABP_GMActor_C:GMInfoShowOrNot(Widget, WidgetClass, ShowOrNot) end
---@param ChangeReason EGSInputModeChangeReason
function ABP_GMActor_C:DisableMouseCursor(ChangeReason) end
---@param ChangeReason EGSInputModeChangeReason
function ABP_GMActor_C:EnableMouseCursor(ChangeReason) end
---@param Key FKey
ABP_GMActor_C['InpActEvt_Ctrl+Alt+Shift_K_K2Node_InputKeyEvent_15'] = function(Key) end
---@param Key FKey
function ABP_GMActor_C:InpActEvt_F1_K2Node_InputKeyEvent_14(Key) end
---@param Key FKey
function ABP_GMActor_C:InpActEvt_Divide_K2Node_InputKeyEvent_13(Key) end
---@param Key FKey
function ABP_GMActor_C:InpActEvt_Ctrl_NumPadZero_K2Node_InputKeyEvent_12(Key) end
---@param Key FKey
function ABP_GMActor_C:InpActEvt_NumPadZero_K2Node_InputKeyEvent_11(Key) end
---@param Key FKey
function ABP_GMActor_C:InpActEvt_NumPadEight_K2Node_InputKeyEvent_10(Key) end
---@param Key FKey
function ABP_GMActor_C:InpActEvt_NumPadNine_K2Node_InputKeyEvent_9(Key) end
---@param Key FKey
function ABP_GMActor_C:InpActEvt_NumPadSeven_K2Node_InputKeyEvent_8(Key) end
---@param Key FKey
function ABP_GMActor_C:InpActEvt_NumPadFive_K2Node_InputKeyEvent_7(Key) end
---@param Key FKey
function ABP_GMActor_C:InpActEvt_Gamepad_Special_Left_K2Node_InputKeyEvent_6(Key) end
---@param Key FKey
function ABP_GMActor_C:InpActEvt_Gamepad_Special_Left_K2Node_InputKeyEvent_5(Key) end
---@param Key FKey
function ABP_GMActor_C:InpActEvt_Gamepad_Special_Right_K2Node_InputKeyEvent_4(Key) end
---@param Key FKey
function ABP_GMActor_C:InpActEvt_Gamepad_Special_Right_K2Node_InputKeyEvent_3(Key) end
---@param Key FKey
function ABP_GMActor_C:InpActEvt_Five_K2Node_InputKeyEvent_2(Key) end
---@param Key FKey
function ABP_GMActor_C:InpActEvt_H_K2Node_InputKeyEvent_1(Key) end
---@param Key FKey
function ABP_GMActor_C:InpActEvt_Pause_K2Node_InputKeyEvent_0(Key) end
---@param EntryPoint int32
function ABP_GMActor_C:ExecuteUbergraph_BP_GMActor(EntryPoint) end


