---@meta

---@class FGSInputDisplayArray
---@field Widgets TArray<UGSInputDisplayWidget>
FGSInputDisplayArray = {}



---@class UGSE_InputFuncLib : UObject
UGSE_InputFuncLib = {}

function UGSE_InputFuncLib:UpdateAllInputIcon() end
---@param InputTargetBindingObj UGSInputTargetBinding
function UGSE_InputFuncLib:UnRegisterInputTargetBinding(InputTargetBindingObj) end
---@param WorldContext UObject
---@param Order EGSInputProcOrder
function UGSE_InputFuncLib:UnRegisterGSInputProc(WorldContext, Order) end
---@param PlayerController APlayerController
---@param Context UInputMappingContext
---@param NewPriority int32
---@return boolean
function UGSE_InputFuncLib:TryToSetContextNewPriority(PlayerController, Context, NewPriority) end
---@param PlayerController APlayerController
---@param bNeedMouseCapture boolean
function UGSE_InputFuncLib:SetUIOnly(PlayerController, bNeedMouseCapture) end
---@param position FVector2D
function UGSE_InputFuncLib:SetMouseCursorPosition(position) end
---@param WorldContext UObject
---@param IsIgnore boolean
function UGSE_InputFuncLib:SetIgnoreAllButtonKeyInput(WorldContext, IsIgnore) end
---@param PlayerController APlayerController
function UGSE_InputFuncLib:SetGameOnly(PlayerController) end
---@param bDrawCursor boolean
function UGSE_InputFuncLib:SetCursorVisibility(bDrawCursor) end
---@param PlayerController APlayerController
---@param bForceImmediately boolean
---@param bIgnoreAllPressedKeysUntilRelease boolean
function UGSE_InputFuncLib:RequestRebuildControlMappings(PlayerController, bForceImmediately, bIgnoreAllPressedKeysUntilRelease) end
---@param PlayerController APlayerController
---@param InputMappingContext UInputMappingContext
---@param bIgnoreAllPressedKeysUntilRelease boolean
---@param bForceImmediately boolean
function UGSE_InputFuncLib:RemoveInputMappingContext(PlayerController, InputMappingContext, bIgnoreAllPressedKeysUntilRelease, bForceImmediately) end
---@param InputTargetBindingObj UGSInputTargetBinding
function UGSE_InputFuncLib:RegisterInputTargetBinding(InputTargetBindingObj) end
---@param WorldContext UObject
---@param Order EGSInputProcOrder
function UGSE_InputFuncLib:RegisterGSInputProc(WorldContext, Order) end
---@param PlayerController APlayerController
---@param Action UInputAction
---@return TArray<FKey>
function UGSE_InputFuncLib:QueryKeysMappedToAction(PlayerController, Action) end
---@param MappingContext UInputMappingContext
---@param Action UInputAction
---@return TArray<FKey>
function UGSE_InputFuncLib:QueryKeysByInputAction(MappingContext, Action) end
---@param WorldContext UObject
---@return boolean
function UGSE_InputFuncLib:IsConsoleActive(WorldContext) end
---@return boolean
function UGSE_InputFuncLib:IsAppActive() end
---@return TArray<FString>
function UGSE_InputFuncLib:GetProductStringList() end
---@param MappingContext UInputMappingContext
---@param Actions TArray<UInputAction>
---@param Keys TArray<FKey>
---@param ChordActions TArray<UInputAction>
function UGSE_InputFuncLib:GetMappingsInfo(MappingContext, Actions, Keys, ChordActions) end
---@param MappingContext UInputMappingContext
---@return TMap<FName, FKey>
function UGSE_InputFuncLib:GetMappableKey(MappingContext) end
---@param WorldContext UObject
---@return EGSInputType
function UGSE_InputFuncLib:GetLastInputType(WorldContext) end
---@param PointerEvent FPointerEvent
---@return FName
function UGSE_InputFuncLib:GetKeyByPointerEvent(PointerEvent) end
---@param KeyEvent FKeyEvent
---@return FName
function UGSE_InputFuncLib:GetKeyByKeyEvent(KeyEvent) end
---@param AnalogInputEvent FAnalogInputEvent
---@return FName
function UGSE_InputFuncLib:GetKeyByAnalogInputEvent(AnalogInputEvent) end
---@param WorldContext UObject
---@return UGSInputSettingPreProc
function UGSE_InputFuncLib:GetInputSettingPreProc(WorldContext) end
---@param WorldContext UObject
---@return UGSInputPreProc
function UGSE_InputFuncLib:GetInputPreProc(WorldContext) end
---@return TArray<EGSInputDeviceType>
function UGSE_InputFuncLib:GetInputDeviceTypes() end
---@param PlayerController APlayerController
---@param Action UInputAction
---@return FVector
function UGSE_InputFuncLib:GetInputActionValue(PlayerController, Action) end
---@return float
function UGSE_InputFuncLib:GetGamepadDeadZoneThreshold() end
---@param ControllerId int32
---@return FString
function UGSE_InputFuncLib:GetGamepadControllerName(ControllerId) end
---@param PlayerController APlayerController
---@param Action UInputAction
---@param IsReleasedEvent boolean
---@return int32
function UGSE_InputFuncLib:GetDebugEventAccumulatorThisTick(PlayerController, Action, IsReleasedEvent) end
---@param PrimaryChordAction UInputAction
---@param Contexts TArray<UInputMappingContext>
---@param PrimaryConflictActions TArray<UInputAction>
---@param SecondaryConflictActions TArray<UInputAction>
function UGSE_InputFuncLib:GetConflictChordInputAction(PrimaryChordAction, Contexts, PrimaryConflictActions, SecondaryConflictActions) end
---@param InputMappingContext UInputMappingContext
---@return TArray<UInputAction>
function UGSE_InputFuncLib:GetChordInputAction(InputMappingContext) end
---@param InputMappingContext UInputMappingContext
---@return TArray<FString>
function UGSE_InputFuncLib:GetActionNamesFromInputMappingContext(InputMappingContext) end
---@param PlayerController APlayerController
function UGSE_InputFuncLib:FlushPressedInput(PlayerController) end
---@param KeyName FName
---@return FKey
function UGSE_InputFuncLib:FindKeyByName(KeyName) end
---@param MappingContext UInputMappingContext
---@param MappableName FName
---@param KeyName FName
function UGSE_InputFuncLib:CustomizeInputMappingContext(MappingContext, MappableName, KeyName) end
---@param PlayerController APlayerController
function UGSE_InputFuncLib:ClearAllInputMappingContext(PlayerController) end
---@param InputComponent UGSInputComponent
---@param InputAction UInputAction
---@param TriggerEvent ETriggerEvent
function UGSE_InputFuncLib:BindAction(InputComponent, InputAction, TriggerEvent) end
---@param PlayerController APlayerController
---@param MappingName FName
---@param NewKey FKey
---@param Options FModifyContextOptions
function UGSE_InputFuncLib:AddPlayerMappedKey(PlayerController, MappingName, NewKey, Options) end
---@param PlayerController APlayerController
---@param InputMappingContext UInputMappingContext
---@param Priority int32
---@param bIgnoreAllPressedKeysUntilRelease boolean
---@param bForceImmediately boolean
function UGSE_InputFuncLib:AddInputMappingContext(PlayerController, InputMappingContext, Priority, bIgnoreAllPressedKeysUntilRelease, bForceImmediately) end


---@class UGSInputActionIcon : UImage
---@field SpeedRatioOnStopHold float
---@field InputIconTexture UTexture2D
---@field InputAction UInputAction
---@field ExtraInputActions TArray<UInputAction>
---@field IconShowType EGSInputIconShowType
---@field bShouldApplyOffset boolean
---@field IconScale float
---@field ComboIconOnlyShowOneType EGSComboOnlyShowOneType
UGSInputActionIcon = {}

function UGSInputActionIcon:StopHold() end
---@param InPercent float
function UGSInputActionIcon:SetPercent(InPercent) end
---@param InputAction UInputAction
function UGSInputActionIcon:SetInputAction(InputAction) end
function UGSInputActionIcon:Reset() end
---@param bOpen boolean
function UGSInputActionIcon:OpenPercentBg(bOpen) end
---@param InTotalTime float
function UGSInputActionIcon:BeginHold(InTotalTime) end


---@class UGSInputComponent : UEnhancedInputComponent
UGSInputComponent = {}


---@class UGSInputDisplayPreProc : UObject
---@field OnInputKeyDownDelegate FGSInputDisplayPreProcOnInputKeyDownDelegate
---@field OnInputKeyUpDelegate FGSInputDisplayPreProcOnInputKeyUpDelegate
---@field OnInputAxisChangeDelegate FGSInputDisplayPreProcOnInputAxisChangeDelegate
---@field OnInputMouseMoveDelegate FGSInputDisplayPreProcOnInputMouseMoveDelegate
---@field OnInputMouseButtonDownDelegate FGSInputDisplayPreProcOnInputMouseButtonDownDelegate
---@field OnInputMouseButtonUpDelegate FGSInputDisplayPreProcOnInputMouseButtonUpDelegate
---@field OnInputMouseButtonDoubleClickDelegate FGSInputDisplayPreProcOnInputMouseButtonDoubleClickDelegate
---@field OnInputMouseWheelOrGestureDelegate FGSInputDisplayPreProcOnInputMouseWheelOrGestureDelegate
UGSInputDisplayPreProc = {}



---@class UGSInputDisplaySetting : UObject
---@field IsLock boolean
---@field IsShow boolean
---@field CurScaleRate float
---@field CurPosition FVector2D
UGSInputDisplaySetting = {}



---@class UGSInputDisplayUI : UUserWidget
---@field IsCanSetting boolean
---@field NormalSize FVector2D
---@field ChangeScaleSpeed float
---@field MaxScaleRate float
---@field MinScaleRate float
---@field PosCon UCanvasPanel
---@field GamepadCon UCanvasPanel
---@field KeyboardCon UCanvasPanel
UGSInputDisplayUI = {}

---@param IsShow boolean
function UGSInputDisplayUI:SetIsShow(IsShow) end
function UGSInputDisplayUI:ResetSetting() end
---@param InWheelDelta float
function UGSInputDisplayUI:OnInputMouseWheelOrGesture(InWheelDelta) end
---@param InMousePos FVector2D
function UGSInputDisplayUI:OnInputMouseMove(InMousePos) end
---@param InKey FKey
function UGSInputDisplayUI:OnInputMouseButtonUp(InKey) end
---@param InKey FKey
function UGSInputDisplayUI:OnInputMouseButtonDown(InKey) end
---@param InKey FKey
function UGSInputDisplayUI:OnInputMouseButtonDoubleClick(InKey) end
---@param InKey FKey
function UGSInputDisplayUI:OnInputKeyUp(InKey) end
---@param InKey FKey
function UGSInputDisplayUI:OnInputKeyDown(InKey) end
---@param InKey FKey
---@param InAxisValue float
function UGSInputDisplayUI:OnInputAxisChange(InKey, InAxisValue) end


---@class UGSInputDisplayWidget : UUserWidget
---@field InputDisplayType EInputDisplayType
---@field BindButtonKey FKey
---@field BindXKey FKey
---@field BindYKey FKey
---@field ShowText_1 FString
---@field ShowText_2 FString
---@field JoystickMoveLength float
UGSInputDisplayWidget = {}

---@param InMousePos FVector2D
function UGSInputDisplayWidget:SetMousePos(InMousePos) end
---@param InIsPress boolean
function UGSInputDisplayWidget:SetIsPress(InIsPress) end
---@param InKey FKey
---@param InAxisValue float
function UGSInputDisplayWidget:SetAxisValue(InKey, InAxisValue) end


---@class UGSInputGameViewportClient : UGameViewportClient
UGSInputGameViewportClient = {}


---@class UGSInputModifierForceSetValue : UInputModifier
---@field Type EInputActionValueType
---@field Value FVector
UGSInputModifierForceSetValue = {}



---@class UGSInputPreProc : UObject
---@field OnInputTrigger FGSInputPreProcOnInputTrigger
---@field OnInputTypeChangeTrigger FGSInputPreProcOnInputTypeChangeTrigger
---@field OnKeyDownEvent FGSInputPreProcOnKeyDownEvent
---@field OnKeyUpEvent FGSInputPreProcOnKeyUpEvent
---@field OnAnalogInputEvent FGSInputPreProcOnAnalogInputEvent
---@field OnMouseMoveEvent FGSInputPreProcOnMouseMoveEvent
---@field OnMouseButtonDownEvent FGSInputPreProcOnMouseButtonDownEvent
---@field OnMouseButtonUpEvent FGSInputPreProcOnMouseButtonUpEvent
---@field OnMouseButtonDoubleClickEvent FGSInputPreProcOnMouseButtonDoubleClickEvent
---@field OnMouseWheelEvent FGSInputPreProcOnMouseWheelEvent
---@field OnAnyKeyTriggerEvent FGSInputPreProcOnAnyKeyTriggerEvent
UGSInputPreProc = {}



---@class UGSInputRichTextBlock : URichTextBlock
UGSInputRichTextBlock = {}


---@class UGSInputSettingPreProc : UObject
---@field OnKeyDownEvent FGSInputSettingPreProcOnKeyDownEvent
---@field OnKeyUpEvent FGSInputSettingPreProcOnKeyUpEvent
---@field OnMouseButtonDownEvent FGSInputSettingPreProcOnMouseButtonDownEvent
---@field OnMouseButtonUpEvent FGSInputSettingPreProcOnMouseButtonUpEvent
UGSInputSettingPreProc = {}



---@class UGSInputSettings : UDataAsset
---@field KeyboardMouseDeadZoneThreshold float
---@field GamepadDeadZoneThreshold float
UGSInputSettings = {}



---@class UGSInputTargetBinding : UObject
UGSInputTargetBinding = {}

---@param Name FString
---@param Offset float
---@param BgType int32
---@return boolean
function UGSInputTargetBinding:TryGetTextureInfoByName(Name, Offset, BgType) end
---@param InputAction UInputAction
---@param Offset float
---@param Texture UTexture2D
---@param BgType int32
---@param ChordOffset float
---@param ChordTexture UTexture2D
---@param ConnectTexture UTexture2D
---@param NoneTexture UTexture2D
---@return boolean
function UGSInputTargetBinding:TryGetTextureByAction(InputAction, Offset, Texture, BgType, ChordOffset, ChordTexture, ConnectTexture, NoneTexture) end
---@param ActionTag FString
---@param MarkUpType EGSInputRichTextMarkUpType
---@param InlineTexture UTexture2D
---@param InlineChordTexture UTexture2D
---@param ConnectTexture UTexture2D
---@return boolean
function UGSInputTargetBinding:TryGetInlineTexture(ActionTag, MarkUpType, InlineTexture, InlineChordTexture, ConnectTexture) end
---@param ActionInstance FInputActionInstance
function UGSInputTargetBinding:TriggeredActionListener(ActionInstance) end
---@param ActionInstance FInputActionInstance
function UGSInputTargetBinding:StartedActionListener(ActionInstance) end
---@param IsActive boolean
function UGSInputTargetBinding:PostConsoleActivationStateChanged(IsActive) end
---@param IsActive boolean
function UGSInputTargetBinding:PostApplicationActivationChanged(IsActive) end
---@param ActionInstance FInputActionInstance
function UGSInputTargetBinding:OngoingActionListener(ActionInstance) end
---@return boolean
function UGSInputTargetBinding:IsInputDebuggerOpen() end
---@param ActionName FString
---@param TriggerEvent ETriggerEvent
---@param InputActionValueType EInputActionValueType
---@param InputActionValue FVector
function UGSInputTargetBinding:InputActionTrigger(ActionName, TriggerEvent, InputActionValueType, InputActionValue) end
---@param BasePixelHeight int32
---@param BaselineOffset int32
---@param ConnectIconOffset int32
function UGSInputTargetBinding:GetRichTextInlineIconInfo(BasePixelHeight, BaselineOffset, ConnectIconOffset) end
---@param DebugLines TArray<FString>
---@param DebugColors TArray<FColor>
function UGSInputTargetBinding:FetchDebugInfo(DebugLines, DebugColors) end
---@param ActionInstance FInputActionInstance
function UGSInputTargetBinding:CompletedActionListener(ActionInstance) end
---@param ActionInstance FInputActionInstance
function UGSInputTargetBinding:CanceledActionListener(ActionInstance) end
---@param ActionInstance FInputActionInstance
function UGSInputTargetBinding:ActionListener(ActionInstance) end


---@class UGSInputTriggerChordAction : UInputTrigger
---@field ChordAction UInputAction
---@field IsConsiderHoldTime boolean
---@field HoldTimeThreshold float
UGSInputTriggerChordAction = {}



---@class UGSInputTriggerChordHold : UInputTrigger
---@field HoldTimeThreshold float
UGSInputTriggerChordHold = {}



---@class UGSInputTriggerHold : UInputTriggerTimedBase
---@field HoldTimeThreshold float
UGSInputTriggerHold = {}



---@class UGSInputTriggerRepeatPressed : UInputTrigger
---@field interval float
---@field RepeatedPressedTriggerCount int32
UGSInputTriggerRepeatPressed = {}



---@class UGSInputTriggerWiggle : UInputTriggerTimedBase
---@field AreaCount int32
---@field IntervalAreaDistance int32
---@field InnerRadius float
---@field EffectiveCrossDuration float
UGSInputTriggerWiggle = {}



---@class UGSInputWidget : UUserWidget
UGSInputWidget = {}

---@param InFocusEvent FFocusEvent
function UGSInputWidget:OnFocusChanging(InFocusEvent) end
---@param PossibleParent UWidget
---@return boolean
function UGSInputWidget:IsChildGSWidgetOf(PossibleParent) end


---@class UGSNavigationInputAction : UInputAction
---@field FirstTriggerNavigations TArray<EUINavigation>
UGSNavigationInputAction = {}



---@class UGSOverlay : UOverlay
UGSOverlay = {}

---@param Widget UWidget
function UGSOverlay:OnChildAddToGSOverlayCS(Widget) end
---@param Content UWidget
---@return UOverlaySlot
function UGSOverlay:AddChildToGSOverlay(Content) end


---@class UGSPlayerInput : UEnhancedPlayerInput
UGSPlayerInput = {}


