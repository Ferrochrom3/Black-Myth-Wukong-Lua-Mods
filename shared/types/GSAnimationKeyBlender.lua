---@meta

---@class FGSAKBStateEasingCfg
---@field EasingTime float
---@field DelayEasingTime float
---@field EasingFunc EEasingFunc::Type
---@field EasingBlendExp float
---@field EasingSteps int32
---@field EnumValEasingType EGSAnimKBEnumBoolEasing::Type
---@field BoolValEasingType EGSAnimKBEnumBoolEasing::Type
FGSAKBStateEasingCfg = {}



---@class FGSAKMatParamBool
---@field BrushPropertyNamePath TArray<FName>
---@field ComponentMaterialIndex int32
---@field ParamName FName
---@field Value boolean
FGSAKMatParamBool = {}



---@class FGSAKMatParamScalar
---@field BrushPropertyNamePath TArray<FName>
---@field ComponentMaterialIndex int32
---@field ParamName FName
---@field Value float
FGSAKMatParamScalar = {}



---@class FGSAKMatParamVector4
---@field BrushPropertyNamePath TArray<FName>
---@field ComponentMaterialIndex int32
---@field ParamName FName
---@field ValueFactor FLinearColor
---@field Value FLinearColor
FGSAKMatParamVector4 = {}



---@class FGSAKObjectEasingOneToOneStateData
---@field TargetObject UObject
---@field ObjType EGSAKBObjType
---@field BindedGuid FGuid
---@field IsSubActor boolean
---@field BeginStateData FGSAnimKeyStateData
---@field EndStateData FGSAnimKeyStateData
FGSAKObjectEasingOneToOneStateData = {}



---@class FGSAKPropertyBool
---@field PropertyBinding FMovieScenePropertyBinding
---@field PropertyValue boolean
FGSAKPropertyBool = {}



---@class FGSAKPropertyByte
---@field PropertyBinding FMovieScenePropertyBinding
---@field PropertyValue uint8
FGSAKPropertyByte = {}



---@class FGSAKPropertyDouble
---@field PropertyBinding FMovieScenePropertyBinding
---@field PropertyValue double
FGSAKPropertyDouble = {}



---@class FGSAKPropertyFloat
---@field PropertyBinding FMovieScenePropertyBinding
---@field PropertyValue float
FGSAKPropertyFloat = {}



---@class FGSAKPropertyInteger
---@field PropertyBinding FMovieScenePropertyBinding
---@field PropertyValue int32
FGSAKPropertyInteger = {}



---@class FGSAKPropertyLinearColor
---@field PropertyBinding FMovieScenePropertyBinding
---@field PropertyFactor FLinearColor
---@field PropertyValue FLinearColor
FGSAKPropertyLinearColor = {}



---@class FGSAKPropertyMargin
---@field PropertyBinding FMovieScenePropertyBinding
---@field PropertyFactor FMargin
---@field PropertyValue FMargin
FGSAKPropertyMargin = {}



---@class FGSAKPropertyObjectProperty
---@field PropertyBinding FMovieScenePropertyBinding
---@field PropertyValue UObject
FGSAKPropertyObjectProperty = {}



---@class FGSAKPropertyVector4
---@field PropertyBinding FMovieScenePropertyBinding
---@field VectorDimension int32
---@field PropertyFactor FVector4
---@field PropertyValue FVector4
FGSAKPropertyVector4 = {}



---@class FGSAnimKeyCachedMatParamData
---@field MatParamBoolMap TMap<FString, FGSAKMatParamBool>
---@field MatParamScalarMap TMap<FString, FGSAKMatParamScalar>
---@field MatParamVector4Map TMap<FString, FGSAKMatParamVector4>
FGSAnimKeyCachedMatParamData = {}



---@class FGSAnimKeyObjST
---@field TargetObject UObject
---@field ObjType EGSAKBObjType
---@field BindedGuid FGuid
---@field IsSubActor boolean
---@field StateKeyDataList TArray<FGSAnimKeyStateData>
FGSAnimKeyObjST = {}



---@class FGSAnimKeyStateData : FGSAnimKeyCachedMatParamData
---@field StateName FName
---@field FrameNumber FFrameNumber
---@field TranslationFactor FVector2D
---@field AngleFactor float
---@field ScaleFactor FVector2D
---@field ShearFactor FVector2D
---@field WidgetTransform FWidgetTransform
---@field WorldTranslationFactor FVector
---@field WorldScale3DFactor FVector
---@field WorldRotate3DFactor FVector
---@field WorldTransform FTransform
---@field PropertyFloatMap TMap<FName, FGSAKPropertyFloat>
---@field PropertyDoubleMap TMap<FName, FGSAKPropertyDouble>
---@field PropertyByteMap TMap<FName, FGSAKPropertyByte>
---@field PropertyVector4Map TMap<FName, FGSAKPropertyVector4>
---@field PropertyIntegerMap TMap<FName, FGSAKPropertyInteger>
---@field PropertyBoolMap TMap<FName, FGSAKPropertyBool>
---@field PropertyLinearColorMap TMap<FName, FGSAKPropertyLinearColor>
---@field PropertyMarginMap TMap<FName, FGSAKPropertyMargin>
---@field PropertyObjectPropertyMap TMap<FName, FGSAKPropertyObjectProperty>
FGSAnimKeyStateData = {}



---@class UAnimKeyBlenderSettings : UDeveloperSettings
---@field bEnableDebugLogs boolean
UAnimKeyBlenderSettings = {}



---@class UGSAnimKeyStateBlender : UObject
---@field RefAnimation UWidgetAnimation
---@field RefLevelSequence ULevelSequence
---@field RefObject UObject
---@field CurrentObjMatParamData TMap<FGuid, FGSAnimKeyCachedMatParamData>
---@field CurrentMPCMatParamData TMap<uint32, FGSAnimKeyCachedMatParamData>
---@field EasingOneToOneStateData TArray<FGSAKObjectEasingOneToOneStateData>
---@field StateNameIndexMap TMap<FName, int32>
---@field StateToStateEasingCfgMap TMap<FName, FGSAKBStateEasingCfg>
---@field IsStrictStateMatchCfg boolean
---@field IsAlwaysUsingEndStateAsChanging boolean
---@field IsWithRegStateName boolean
---@field AKObjSTList TArray<FGSAnimKeyObjST>
---@field IsTicking boolean
---@field OnAKBStateBegin FGSAnimKeyStateBlenderOnAKBStateBegin
---@field OnAKBStateEnd FGSAnimKeyStateBlenderOnAKBStateEnd
---@field OnAKBStateInterupt FGSAnimKeyStateBlenderOnAKBStateInterupt
---@field BeginStateName FName
---@field CurrentStateName FName
---@field EndStateName FName
---@field RefWorldTranslation FVector
---@field DefaultEasingCfg FGSAKBStateEasingCfg
---@field WorkingEasingCfg FGSAKBStateEasingCfg
---@field StateEasedTime float
---@field StateDelayEasingTime float
---@field StateOverideEasingTime float
---@field IsWidgetBlender boolean
UGSAnimKeyStateBlender = {}

---@param TargetStateName FName
---@param InStateDelayEasingTime float
---@param InStateOverideEasingTime float
function UGSAnimKeyStateBlender:ToState(TargetStateName, InStateDelayEasingTime, InStateOverideEasingTime) end
---@return boolean
function UGSAnimKeyStateBlender:IsInBlending() end
---@param InRefUserWidget UUserWidget
---@param InWidgetAnimation UWidgetAnimation
---@param InIsStrictStateMatchCfg boolean
---@param InIsAlwaysUsingEndStateAsChanging boolean
function UGSAnimKeyStateBlender:InitSetWidgetAnimation(InRefUserWidget, InWidgetAnimation, InIsStrictStateMatchCfg, InIsAlwaysUsingEndStateAsChanging) end
---@param InRefObject UObject
---@param InLevelSequence ULevelSequence
---@param InIsStrictStateMatchCfg boolean
---@param InIsAlwaysUsingEndStateAsChanging boolean
function UGSAnimKeyStateBlender:InitSetLevelSequence(InRefObject, InLevelSequence, InIsStrictStateMatchCfg, InIsAlwaysUsingEndStateAsChanging) end
---@param InEasingTime float
---@param InEasingFunc EEasingFunc::Type
---@param InEasingBlendExp float
---@param InEasingSteps int32
---@param InEnumValEasingType EGSAnimKBEnumBoolEasing::Type
---@param InBoolValEasingType EGSAnimKBEnumBoolEasing::Type
---@param InDelayEasingTime float
function UGSAnimKeyStateBlender:InitSetDefaultEasingCfg(InEasingTime, InEasingFunc, InEasingBlendExp, InEasingSteps, InEnumValEasingType, InBoolValEasingType, InDelayEasingTime) end
function UGSAnimKeyStateBlender:InitResetState() end
---@param FromStateName FName
---@param ToStateName FName
---@param InEasingTime float
---@param InEasingFunc EEasingFunc::Type
---@param InEasingBlendExp float
---@param InEasingSteps int32
---@param InEnumValEasingType EGSAnimKBEnumBoolEasing::Type
---@param InBoolValEasingType EGSAnimKBEnumBoolEasing::Type
---@param InDelayEasingTime float
function UGSAnimKeyStateBlender:InitAddStateToStateEasingCfg(FromStateName, ToStateName, InEasingTime, InEasingFunc, InEasingBlendExp, InEasingSteps, InEnumValEasingType, InBoolValEasingType, InDelayEasingTime) end
---@param TargetStateName FName
---@param OutDelayEasingTime float
---@return float
function UGSAnimKeyStateBlender:GetPredicToStateCfgEasingTime(TargetStateName, OutDelayEasingTime) end
---@return FName
function UGSAnimKeyStateBlender:GetEndStateName() end
---@return FName
function UGSAnimKeyStateBlender:GetCurrentStateName() end
---@return FName
function UGSAnimKeyStateBlender:GetBeginStateName() end
---@param TargetStateName FName
function UGSAnimKeyStateBlender:ForceSetStateImmediately(TargetStateName) end
---@param alpha float
---@param IsFromForceSetStateImmediately boolean
function UGSAnimKeyStateBlender:EasingToEndState(alpha, IsFromForceSetStateImmediately) end
---@param DeltaTime float
function UGSAnimKeyStateBlender:DoTick(DeltaTime) end
function UGSAnimKeyStateBlender:DoDebug() end
---@param RefLevelSequenceActor ALevelSequenceActor
---@param BindingActorTagName FName
---@param InActor AActor
function UGSAnimKeyStateBlender:BeforeInitAddBindingActor(RefLevelSequenceActor, BindingActorTagName, InActor) end


---@class UGSAnimKeyStateBlenderSubsystem : UGameInstanceSubsystem
---@field AnimKeyStateBlenderContainer TArray<UGSAnimKeyStateBlender>
UGSAnimKeyStateBlenderSubsystem = {}



---@class UGSAnimKeyStateBlenderUtil : UBlueprintFunctionLibrary
UGSAnimKeyStateBlenderUtil = {}

---@param AnimKeyStateBlender UGSAnimKeyStateBlender
function UGSAnimKeyStateBlenderUtil:UnRegAnimKeyStateBlenderObjForTick(AnimKeyStateBlender) end
---@param AnimKeyStateBlender UGSAnimKeyStateBlender
function UGSAnimKeyStateBlenderUtil:RegAnimKeyStateBlenderObjForTick(AnimKeyStateBlender) end


