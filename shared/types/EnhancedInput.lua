---@meta

---@class FBlueprintEnhancedInputActionBinding
---@field InputAction UInputAction
---@field TriggerEvent ETriggerEvent
---@field FunctionNameToBind FName
FBlueprintEnhancedInputActionBinding = {}



---@class FBlueprintInputDebugKeyDelegateBinding
---@field InputChord FInputChord
---@field InputKeyEvent EInputEvent
---@field FunctionNameToBind FName
---@field bExecuteWhenPaused boolean
FBlueprintInputDebugKeyDelegateBinding = {}



---@class FEnhancedActionKeyMapping
---@field Action UInputAction
---@field Key FKey
---@field bIsPlayerMappable boolean
---@field PlayerMappableOptions FPlayerMappableKeyOptions
---@field bShouldBeIgnored boolean
---@field Triggers TArray<UInputTrigger>
---@field Modifiers TArray<UInputModifier>
FEnhancedActionKeyMapping = {}



---@class FInputActionInstance
---@field SourceAction UInputAction
---@field Triggers TArray<UInputTrigger>
---@field Modifiers TArray<UInputModifier>
---@field PerInputModifiers TArray<UInputModifier>
---@field FinalValueModifiers TArray<UInputModifier>
---@field ElapsedProcessedTime float
---@field ElapsedTriggeredTime float
---@field LastTriggeredWorldTime float
---@field TriggerEvent ETriggerEvent
FInputActionInstance = {}



---@class FInputActionValue
FInputActionValue = {}


---@class FMappingQueryIssue
---@field Issue EMappingQueryIssue
---@field BlockingContext UInputMappingContext
---@field BlockingAction UInputAction
FMappingQueryIssue = {}



---@class FModifyContextOptions
---@field bIgnoreAllPressedKeysUntilRelease boolean
---@field bForceImmediately boolean
FModifyContextOptions = {}



---@class FPlayerMappableKeyOptions
---@field Name FName
---@field DisplayName FText
---@field DisplayCategory FText
FPlayerMappableKeyOptions = {}



---@class IEnhancedInputSubsystemInterface : IInterface
IEnhancedInputSubsystemInterface = {}

---@param Options FModifyContextOptions
---@param RebuildType EInputMappingRebuildType
function IEnhancedInputSubsystemInterface:RequestRebuildControlMappings(Options, RebuildType) end
---@param MappingName FName
---@param Options FModifyContextOptions
---@return int32
function IEnhancedInputSubsystemInterface:RemovePlayerMappedKey(MappingName, Options) end
---@param Config UPlayerMappableInputConfig
---@param Options FModifyContextOptions
function IEnhancedInputSubsystemInterface:RemovePlayerMappableConfig(Config, Options) end
---@param MappingContext UInputMappingContext
---@param Options FModifyContextOptions
function IEnhancedInputSubsystemInterface:RemoveMappingContext(MappingContext, Options) end
---@param PrioritizedActiveContexts TArray<UInputMappingContext>
---@param InputContext UInputMappingContext
---@param Action UInputAction
---@param Key FKey
---@param OutIssues TArray<FMappingQueryIssue>
---@param BlockingIssues EMappingQueryIssue
---@return EMappingQueryResult
function IEnhancedInputSubsystemInterface:QueryMapKeyInContextSet(PrioritizedActiveContexts, InputContext, Action, Key, OutIssues, BlockingIssues) end
---@param InputContext UInputMappingContext
---@param Action UInputAction
---@param Key FKey
---@param OutIssues TArray<FMappingQueryIssue>
---@param BlockingIssues EMappingQueryIssue
---@return EMappingQueryResult
function IEnhancedInputSubsystemInterface:QueryMapKeyInActiveContextSet(InputContext, Action, Key, OutIssues, BlockingIssues) end
---@param Action UInputAction
---@return TArray<FKey>
function IEnhancedInputSubsystemInterface:QueryKeysMappedToAction(Action) end
---@param Action UInputAction
---@param Value FVector
---@param Modifiers TArray<UInputModifier>
---@param Triggers TArray<UInputTrigger>
function IEnhancedInputSubsystemInterface:InjectInputVectorForAction(Action, Value, Modifiers, Triggers) end
---@param Action UInputAction
---@param RawValue FInputActionValue
---@param Modifiers TArray<UInputModifier>
---@param Triggers TArray<UInputTrigger>
function IEnhancedInputSubsystemInterface:InjectInputForAction(Action, RawValue, Modifiers, Triggers) end
---@param MappingContext UInputMappingContext
---@return boolean
function IEnhancedInputSubsystemInterface:HasMappingContext(MappingContext) end
function IEnhancedInputSubsystemInterface:ClearAllMappings() end
---@param MappingName FName
---@param NewKey FKey
---@param Options FModifyContextOptions
---@return int32
function IEnhancedInputSubsystemInterface:AddPlayerMappedKey(MappingName, NewKey, Options) end
---@param Config UPlayerMappableInputConfig
---@param Options FModifyContextOptions
function IEnhancedInputSubsystemInterface:AddPlayerMappableConfig(Config, Options) end
---@param MappingContext UInputMappingContext
---@param Priority int32
---@param Options FModifyContextOptions
function IEnhancedInputSubsystemInterface:AddMappingContext(MappingContext, Priority, Options) end


---@class UEnhancedInputActionDelegateBinding : UInputDelegateBinding
---@field InputActionDelegateBindings TArray<FBlueprintEnhancedInputActionBinding>
UEnhancedInputActionDelegateBinding = {}



---@class UEnhancedInputActionValueBinding : UInputDelegateBinding
---@field InputActionValueBindings TArray<FBlueprintEnhancedInputActionBinding>
UEnhancedInputActionValueBinding = {}



---@class UEnhancedInputComponent : UInputComponent
UEnhancedInputComponent = {}

---@param Action UInputAction
---@return FInputActionValue
function UEnhancedInputComponent:GetBoundActionValue(Action) end


---@class UEnhancedInputEngineSubsystem : UEngineSubsystem
---@field PlayerInput UEnhancedPlayerInput
UEnhancedInputEngineSubsystem = {}



---@class UEnhancedInputLibrary : UBlueprintFunctionLibrary
UEnhancedInputLibrary = {}

---@param Context UInputMappingContext
---@param bForceImmediately boolean
function UEnhancedInputLibrary:RequestRebuildControlMappingsUsingContext(Context, bForceImmediately) end
---@param X float
---@param Y float
---@param Z float
---@param MatchValueType FInputActionValue
---@return FInputActionValue
function UEnhancedInputLibrary:MakeInputActionValue(X, Y, Z, MatchValueType) end
---@param Actor AActor
---@param Action UInputAction
---@return FInputActionValue
function UEnhancedInputLibrary:GetBoundActionValue(Actor, Action) end
---@param ActionValue FInputActionValue
---@return FString
function UEnhancedInputLibrary:Conv_InputActionValueToString(ActionValue) end
---@param InValue FInputActionValue
---@return boolean
function UEnhancedInputLibrary:Conv_InputActionValueToBool(InValue) end
---@param ActionValue FInputActionValue
---@return FVector
function UEnhancedInputLibrary:Conv_InputActionValueToAxis3D(ActionValue) end
---@param InValue FInputActionValue
---@return FVector2D
function UEnhancedInputLibrary:Conv_InputActionValueToAxis2D(InValue) end
---@param InValue FInputActionValue
---@return float
function UEnhancedInputLibrary:Conv_InputActionValueToAxis1D(InValue) end
---@param InActionValue FInputActionValue
---@param X float
---@param Y float
---@param Z float
function UEnhancedInputLibrary:BreakInputActionValue(InActionValue, X, Y, Z) end


---@class UEnhancedInputLocalPlayerSubsystem : ULocalPlayerSubsystem
UEnhancedInputLocalPlayerSubsystem = {}


---@class UEnhancedPlayerInput : UPlayerInput
---@field AppliedInputContexts TMap<UInputMappingContext, int32>
---@field EnhancedActionMappings TArray<FEnhancedActionKeyMapping>
---@field ActionInstanceData TMap<UInputAction, FInputActionInstance>
---@field KeysPressedThisTick TMap<FKey, FVector>
UEnhancedPlayerInput = {}



---@class UInputAction : UDataAsset
---@field bConsumeInput boolean
---@field bTriggerWhenPaused boolean
---@field bReserveAllMappings boolean
---@field ValueType EInputActionValueType
---@field Triggers TArray<UInputTrigger>
---@field Modifiers TArray<UInputModifier>
UInputAction = {}



---@class UInputDebugKeyDelegateBinding : UInputDelegateBinding
---@field InputDebugKeyDelegateBindings TArray<FBlueprintInputDebugKeyDelegateBinding>
UInputDebugKeyDelegateBinding = {}



---@class UInputMappingContext : UDataAsset
---@field ContextDescription FText
---@field Mappings TArray<FEnhancedActionKeyMapping>
UInputMappingContext = {}

---@param Action UInputAction
---@param Key FKey
function UInputMappingContext:UnmapKey(Action, Key) end
function UInputMappingContext:UnmapAll() end
---@param Action UInputAction
function UInputMappingContext:UnmapAction(Action) end
---@param Action UInputAction
---@param ToKey FKey
---@return FEnhancedActionKeyMapping
function UInputMappingContext:MapKey(Action, ToKey) end


---@class UInputModifier : UObject
UInputModifier = {}

---@param PlayerInput UEnhancedPlayerInput
---@param CurrentValue FInputActionValue
---@param DeltaTime float
---@return FInputActionValue
function UInputModifier:ModifyRaw(PlayerInput, CurrentValue, DeltaTime) end
---@param SampleValue FInputActionValue
---@param FinalValue FInputActionValue
---@return FLinearColor
function UInputModifier:GetVisualizationColor(SampleValue, FinalValue) end
---@return EModifierExecutionPhase
function UInputModifier:GetExecutionPhase() end


---@class UInputModifierCollection : UInputModifier
---@field Modifiers TArray<UInputModifier>
---@field bPermitValueTypeModification boolean
UInputModifierCollection = {}



---@class UInputModifierDeadZone : UInputModifier
---@field LowerThreshold float
---@field UpperThreshold float
---@field Type EDeadZoneType
UInputModifierDeadZone = {}



---@class UInputModifierFOVScaling : UInputModifier
---@field FOVScale float
---@field FOVScalingType EFOVScalingType
UInputModifierFOVScaling = {}



---@class UInputModifierNegate : UInputModifier
---@field bX boolean
---@field bY boolean
---@field bZ boolean
UInputModifierNegate = {}



---@class UInputModifierResponseCurveExponential : UInputModifier
---@field CurveExponent FVector
UInputModifierResponseCurveExponential = {}



---@class UInputModifierResponseCurveUser : UInputModifier
---@field ResponseX UCurveFloat
---@field ResponseY UCurveFloat
---@field ResponseZ UCurveFloat
UInputModifierResponseCurveUser = {}



---@class UInputModifierScalar : UInputModifier
---@field Scalar FVector
UInputModifierScalar = {}



---@class UInputModifierSmooth : UInputModifier
UInputModifierSmooth = {}


---@class UInputModifierSwizzleAxis : UInputModifier
---@field Order EInputAxisSwizzle
UInputModifierSwizzleAxis = {}



---@class UInputModifierToWorldSpace : UInputModifier
UInputModifierToWorldSpace = {}


---@class UInputTrigger : UObject
---@field ActuationThreshold float
---@field LastValue FInputActionValue
UInputTrigger = {}

---@param PlayerInput UEnhancedPlayerInput
---@param ModifiedValue FInputActionValue
---@param DeltaTime float
---@return ETriggerState
function UInputTrigger:UpdateState(PlayerInput, ModifiedValue, DeltaTime) end
---@param ForValue FInputActionValue
---@return boolean
function UInputTrigger:IsActuated(ForValue) end
---@return ETriggerType
function UInputTrigger:GetTriggerType() end


---@class UInputTriggerChordAction : UInputTrigger
---@field ChordAction UInputAction
UInputTriggerChordAction = {}



---@class UInputTriggerChordBlocker : UInputTriggerChordAction
UInputTriggerChordBlocker = {}


---@class UInputTriggerDown : UInputTrigger
UInputTriggerDown = {}


---@class UInputTriggerHold : UInputTriggerTimedBase
---@field HoldTimeThreshold float
---@field bIsOneShot boolean
UInputTriggerHold = {}



---@class UInputTriggerHoldAndRelease : UInputTriggerTimedBase
---@field HoldTimeThreshold float
UInputTriggerHoldAndRelease = {}



---@class UInputTriggerPressed : UInputTrigger
UInputTriggerPressed = {}


---@class UInputTriggerPulse : UInputTriggerTimedBase
---@field bTriggerOnStart boolean
---@field interval float
---@field TriggerLimit int32
UInputTriggerPulse = {}



---@class UInputTriggerReleased : UInputTrigger
UInputTriggerReleased = {}


---@class UInputTriggerTap : UInputTriggerTimedBase
---@field TapReleaseTimeThreshold float
UInputTriggerTap = {}



---@class UInputTriggerTimedBase : UInputTrigger
---@field HeldDuration float
---@field bAffectedByTimeDilation boolean
UInputTriggerTimedBase = {}



---@class UPlayerMappableInputConfig : UPrimaryDataAsset
---@field ConfigName FName
---@field ConfigDisplayName FText
---@field bIsDeprecated boolean
---@field MetaData UObject
---@field Contexts TMap<UInputMappingContext, int32>
UPlayerMappableInputConfig = {}

function UPlayerMappableInputConfig:ResetToDefault() end
---@return boolean
function UPlayerMappableInputConfig:IsDeprecated() end
---@return TArray<FEnhancedActionKeyMapping>
function UPlayerMappableInputConfig:GetPlayerMappableKeys() end
---@return UObject
function UPlayerMappableInputConfig:GetMetaData() end
---@return TMap<UInputMappingContext, int32>
function UPlayerMappableInputConfig:GetMappingContexts() end
---@param MappingName FName
---@return FEnhancedActionKeyMapping
function UPlayerMappableInputConfig:GetMappingByName(MappingName) end
---@param InAction UInputAction
---@return TArray<FEnhancedActionKeyMapping>
function UPlayerMappableInputConfig:GetKeysBoundToAction(InAction) end
---@return FText
function UPlayerMappableInputConfig:GetDisplayName() end
---@return FName
function UPlayerMappableInputConfig:GetConfigName() end

