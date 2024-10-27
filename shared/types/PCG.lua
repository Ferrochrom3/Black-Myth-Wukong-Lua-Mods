---@meta

---@class APCGPartitionActor : APartitionActor
---@field PCGGuid FGuid
---@field LocalToOriginal TMap<UPCGComponent, TSoftObjectPtr<UPCGComponent>>
---@field PCGGridSize uint32
---@field bUse2DGrid boolean
APCGPartitionActor = {}

---@param LocalComponent UPCGComponent
---@return UPCGComponent
function APCGPartitionActor:GetOriginalComponent(LocalComponent) end
---@param OriginalComponent UPCGComponent
---@return UPCGComponent
function APCGPartitionActor:GetLocalComponent(OriginalComponent) end


---@class APCGUnitTestDummyActor : AActor
---@field IntProperty int32
---@field FloatProperty float
---@field Int64Property int64
---@field DoubleProperty double
---@field BoolProperty boolean
---@field NameProperty FName
---@field StringProperty FString
---@field EnumProperty EPCGUnitTestDummyEnum
---@field VectorProperty FVector
---@field Vector4Property FVector4
---@field TransformProperty FTransform
---@field RotatorProperty FRotator
---@field QuatProperty FQuat
---@field SoftObjectPathProperty FSoftObjectPath
---@field SoftClassPathProperty FSoftClassPath
---@field ClassProperty TSubclassOf<AActor>
---@field ObjectProperty UObject
---@field Vector2Property FVector2D
---@field ColorProperty FColor
APCGUnitTestDummyActor = {}



---@class APCGVolume : AVolume
---@field PCGComponent UPCGComponent
APCGVolume = {}



---@class APCGWorldActor : AActor
---@field PartitionGridSize uint32
---@field LandscapeCacheObject UPCGLandscapeCache
---@field bUse2DGrid boolean
---@field GridGuids TMap<uint32, FGuid>
APCGWorldActor = {}



---@class FDefault__PropertyBag
FDefault__PropertyBag = {}


---@class FDeterminismTestResult
---@field TestResultTitle FName
---@field TestResultName FString
---@field Seed int32
---@field DataTypesTested EPCGDataType
---@field TestResults TMap<FName, EDeterminismLevel>
---@field AdditionalDetails TArray<FString>
---@field bFlagRaised boolean
FDeterminismTestResult = {}



---@class FInstancedPropertyBag
---@field Value FInstancedStruct
FInstancedPropertyBag = {}



---@class FPCGActorPropertyOverride
---@field InputSource FPCGAttributePropertyInputSelector
---@field PropertyTarget FString
FPCGActorPropertyOverride = {}



---@class FPCGActorSelectorSettings
---@field ActorFilter EPCGActorFilter
---@field bMustOverlapSelf boolean
---@field bIncludeChildren boolean
---@field bDisableFilter boolean
---@field ActorSelection EPCGActorSelection
---@field ActorSelectionTag FName
---@field ActorSelectionClass TSubclassOf<AActor>
---@field bSelectMultiple boolean
---@field bIgnoreSelfAndChildren boolean
---@field bShowActorFilter boolean
---@field bShowIncludeChildren boolean
---@field bShowActorSelection boolean
---@field bShowActorSelectionClass boolean
---@field bShowSelectMultiple boolean
FPCGActorSelectorSettings = {}



---@class FPCGAttributeExtractorTestStruct
---@field DepthStruct FPCGAttributeExtractorTestStructDepth1
---@field Object UPCGAttributeExtractorTestObject
FPCGAttributeExtractorTestStruct = {}



---@class FPCGAttributeExtractorTestStructDepth1
---@field Depth2Struct FPCGAttributeExtractorTestStructDepth2
---@field FloatValue float
FPCGAttributeExtractorTestStructDepth1 = {}



---@class FPCGAttributeExtractorTestStructDepth2
---@field IntValue int32
FPCGAttributeExtractorTestStructDepth2 = {}



---@class FPCGAttributePropertyInputSelector : FPCGAttributePropertySelector
FPCGAttributePropertyInputSelector = {}


---@class FPCGAttributePropertyOutputNoSourceSelector : FPCGAttributePropertySelector
FPCGAttributePropertyOutputNoSourceSelector = {}


---@class FPCGAttributePropertyOutputSelector : FPCGAttributePropertySelector
FPCGAttributePropertyOutputSelector = {}


---@class FPCGAttributePropertySelector
---@field Selection EPCGAttributePropertySelection
---@field AttributeName FName
---@field PointProperty EPCGPointProperties
---@field ExtraProperty EPCGExtraProperties
---@field ExtraNames TArray<FString>
FPCGAttributePropertySelector = {}



---@class FPCGComponentInstanceData : FActorComponentInstanceData
---@field GeneratedResources TArray<UPCGManagedResource>
---@field SourceComponent UPCGComponent
FPCGComponentInstanceData = {}



---@class FPCGContext
FPCGContext = {}


---@class FPCGCrc
---@field Value uint32
---@field bValid boolean
FPCGCrc = {}



---@class FPCGDataCollection
---@field TaggedData TArray<FPCGTaggedData>
---@field bCancelExecutionOnEmpty boolean
FPCGDataCollection = {}



---@class FPCGDataTableRowToParamDataTestStruct
---@field Name FName
---@field String FString
---@field I32 int32
---@field I64 int64
---@field F32 float
---@field F64 double
---@field v2 FVector2D
---@field V3 FVector
---@field V4 FVector4
---@field SoftPath FSoftObjectPath
FPCGDataTableRowToParamDataTestStruct = {}



---@class FPCGDebugVisualizationSettings
---@field PointScale float
---@field ScaleMethod EPCGDebugVisScaleMethod
---@field PointMesh TSoftObjectPtr<UStaticMesh>
---@field MaterialOverride TSoftObjectPtr<UMaterialInterface>
---@field bCheckForDuplicates boolean
FPCGDebugVisualizationSettings = {}



---@class FPCGDeterminismSettings
---@field bNativeTests boolean
---@field bUseBlueprintDeterminismTest boolean
---@field DeterminismTestBlueprint TSubclassOf<UPCGDeterminismTestBlueprintBase>
FPCGDeterminismSettings = {}



---@class FPCGLandscapeLayerWeight
---@field Name FName
---@field Weight float
FPCGLandscapeLayerWeight = {}



---@class FPCGMatchAndSetByAttributeEntry
---@field ValueToMatch FPCGMetadataTypesConstantStruct
---@field Value FPCGMetadataTypesConstantStruct
FPCGMatchAndSetByAttributeEntry = {}



---@class FPCGMatchAndSetWeightedByCategoryEntryList
---@field CategoryValue FPCGMetadataTypesConstantStruct
---@field bIsDefault boolean
---@field WeightedEntries TArray<FPCGMatchAndSetWeightedEntry>
FPCGMatchAndSetWeightedByCategoryEntryList = {}



---@class FPCGMatchAndSetWeightedEntry
---@field Value FPCGMetadataTypesConstantStruct
---@field Weight int32
FPCGMatchAndSetWeightedEntry = {}



---@class FPCGMeshInstanceList
---@field Descriptor FSoftISMComponentDescriptor
---@field Instances TArray<FTransform>
---@field InstancesMetadataEntry TArray<int64>
FPCGMeshInstanceList = {}



---@class FPCGMeshSelectorWeightedEntry
---@field Descriptor FSoftISMComponentDescriptor
---@field Weight int32
FPCGMeshSelectorWeightedEntry = {}



---@class FPCGMetadataTypesConstantStruct
---@field Type EPCGMetadataTypes
---@field StringMode EPCGMetadataTypesConstantStructStringMode
---@field FloatValue float
---@field Int32Value int32
---@field DoubleValue double
---@field IntValue int64
---@field Vector2Value FVector2D
---@field VectorValue FVector
---@field Vector4Value FVector4
---@field QuatValue FQuat
---@field TransformValue FTransform
---@field StringValue FString
---@field BoolValue boolean
---@field RotatorValue FRotator
---@field NameValue FName
---@field SoftClassPathValue FSoftClassPath
---@field SoftObjectPathValue FSoftObjectPath
---@field bAllowsTypeChange boolean
FPCGMetadataTypesConstantStruct = {}



---@class FPCGOverrideInstancedPropertyBag
---@field Parameters FInstancedPropertyBag
---@field PropertiesIDsOverridden TSet<FGuid>
FPCGOverrideInstancedPropertyBag = {}



---@class FPCGPackedCustomData
---@field NumCustomDataFloats int32
---@field CustomData TArray<float>
FPCGPackedCustomData = {}



---@class FPCGPinProperties
---@field Label FName
---@field AllowedTypes EPCGDataType
---@field bAllowMultipleData boolean
---@field bAllowMultipleConnections boolean
---@field bAdvancedPin boolean
FPCGPinProperties = {}



---@class FPCGPoint
---@field Transform FTransform
---@field Density float
---@field BoundsMin FVector
---@field BoundsMax FVector
---@field Color FVector4
---@field Steepness float
---@field Seed int32
---@field MetadataEntry int64
FPCGPoint = {}



---@class FPCGPointFilterThresholdSettings
---@field bInclusive boolean
---@field bUseConstantThreshold boolean
---@field ThresholdAttribute FPCGAttributePropertyInputSelector
---@field bUseSpatialQuery boolean
---@field AttributeTypes FPCGMetadataTypesConstantStruct
FPCGPointFilterThresholdSettings = {}



---@class FPCGPreConfiguredSettingsInfo
---@field PreconfiguredIndex int32
---@field Label FText
FPCGPreConfiguredSettingsInfo = {}



---@class FPCGProjectionParams
---@field bProjectPositions boolean
---@field bProjectRotations boolean
---@field bProjectScales boolean
---@field bProjectColors boolean
---@field AttributeList FString
---@field AttributeMode EPCGMetadataFilterMode
---@field AttributeMergeOperation EPCGMetadataOp
FPCGProjectionParams = {}



---@class FPCGPropertyAliases
---@field Aliases TArray<FName>
FPCGPropertyAliases = {}



---@class FPCGSettingsOverridableParam
---@field Label FName
---@field PropertiesNames TArray<FName>
---@field PropertyClass UStruct
---@field MapOfAliases TMap<int32, FPCGPropertyAliases>
---@field bHasNameClash boolean
FPCGSettingsOverridableParam = {}



---@class FPCGSplineSamplerParams
---@field Dimension EPCGSplineSamplingDimension
---@field Mode EPCGSplineSamplingMode
---@field Fill EPCGSplineSamplingFill
---@field SubdivisionsPerSegment int32
---@field DistanceIncrement float
---@field NumPlanarSubdivisions int32
---@field NumHeightSubdivisions int32
---@field bComputeDirectionDelta boolean
---@field NextDirectionDeltaAttribute FName
---@field bComputeCurvature boolean
---@field CurvatureAttribute FName
---@field bUnbounded boolean
---@field InteriorSampleSpacing float
---@field InteriorBorderSampleSpacing float
---@field bTreatSplineAsPolyline boolean
---@field InteriorOrientation EPCGSplineSamplingInteriorOrientation
---@field bProjectOntoSurface boolean
---@field InteriorDensityFalloffCurve FRuntimeFloatCurve
---@field PointSteepness float
---@field bSeedFromLocalPosition boolean
---@field bSeedFrom2DPosition boolean
FPCGSplineSamplerParams = {}



---@class FPCGSplineStruct
---@field SplineCurves FSplineCurves
---@field Transform FTransform
---@field DefaultUpVector FVector
---@field ReparamStepsPerSegment int32
---@field bClosedLoop boolean
---@field LocalBounds FBoxSphereBounds
---@field Bounds FBoxSphereBounds
FPCGSplineStruct = {}



---@class FPCGStack
FPCGStack = {}


---@class FPCGStackFrame
FPCGStackFrame = {}


---@class FPCGStaticMeshSpawnerContext : FPCGContext
FPCGStaticMeshSpawnerContext = {}


---@class FPCGStaticMeshSpawnerEntry
---@field Weight int32
---@field Mesh TSoftObjectPtr<UStaticMesh>
---@field bOverrideCollisionProfile boolean
---@field CollisionProfile FCollisionProfileName
FPCGStaticMeshSpawnerEntry = {}



---@class FPCGTaggedData
---@field Data UPCGData
---@field Tags TSet<FString>
---@field Pin FName
---@field bPinlessData boolean
FPCGTaggedData = {}



---@class FPCGWeightedByCategoryEntryList
---@field CategoryEntry FString
---@field IsDefault boolean
---@field WeightedMeshEntries TArray<FPCGMeshSelectorWeightedEntry>
FPCGWeightedByCategoryEntryList = {}



---@class FPCGWorldCommonQueryParams
---@field bIgnorePCGHits boolean
---@field bIgnoreSelfHits boolean
---@field CollisionChannel ECollisionChannel
---@field bTraceComplex boolean
---@field ActorTagFilter EPCGWorldQueryFilterByTag
---@field ActorTagsList FString
---@field bIgnoreLandscapeHits boolean
---@field bGetReferenceToActorHit boolean
---@field ParsedActorTagsList TSet<FName>
FPCGWorldCommonQueryParams = {}



---@class FPCGWorldRayHitQueryParams : FPCGWorldCommonQueryParams
---@field bOverrideDefaultParams boolean
---@field RayOrigin FVector
---@field RayDirection FVector
---@field RayLength double
---@field bApplyMetadataFromLandscape boolean
---@field bGetReferenceToPhysicalMaterial boolean
FPCGWorldRayHitQueryParams = {}



---@class FPCGWorldVolumetricQueryParams : FPCGWorldCommonQueryParams
---@field bSearchForOverlap boolean
FPCGWorldVolumetricQueryParams = {}



---@class FPropertyBagContainerTypes
FPropertyBagContainerTypes = {}


---@class FPropertyBagMissingStruct
FPropertyBagMissingStruct = {}


---@class FPropertyBagPropertyDesc
---@field ValueTypeObject UObject
---@field ID FGuid
---@field Name FName
---@field ValueType EPropertyBagPropertyType
---@field ContainerTypes FPropertyBagContainerTypes
FPropertyBagPropertyDesc = {}



---@class FPropertyBagPropertyDescMetaData
---@field Key FName
---@field Value FString
FPropertyBagPropertyDescMetaData = {}



---@class UPCGActorHelpers : UBlueprintFunctionLibrary
UPCGActorHelpers = {}


---@class UPCGAddAttributeSettings : UPCGCreateAttributeBaseSettings
---@field OutputTarget FPCGAttributePropertyOutputSelector
UPCGAddAttributeSettings = {}



---@class UPCGAttributeExtractorTestObject : UObject
---@field DoubleValue double
UPCGAttributeExtractorTestObject = {}



---@class UPCGAttributeFilterSettings : UPCGSettings
---@field Operation EPCGAttributeFilterOperation
---@field SelectedAttributes FString
UPCGAttributeFilterSettings = {}



---@class UPCGAttributeGetFromPointIndexSettings : UPCGSettings
---@field InputSource FPCGAttributePropertyInputSelector
---@field Index int32
---@field OutputAttributeName FName
UPCGAttributeGetFromPointIndexSettings = {}



---@class UPCGAttributeNoiseSettings : UPCGSettings
---@field InputSource FPCGAttributePropertyInputSelector
---@field OutputTarget FPCGAttributePropertyOutputSelector
---@field Mode EPCGAttributeNoiseMode
---@field NoiseMin float
---@field NoiseMax float
---@field bInvertSource boolean
---@field bClampResult boolean
UPCGAttributeNoiseSettings = {}



---@class UPCGAttributePropertySelectorBlueprintHelpers : UBlueprintFunctionLibrary
UPCGAttributePropertySelectorBlueprintHelpers = {}

---@param Selector FPCGAttributePropertySelector
---@param InPointProperty EPCGPointProperties
---@return boolean
function UPCGAttributePropertySelectorBlueprintHelpers:SetPointProperty(Selector, InPointProperty) end
---@param Selector FPCGAttributePropertySelector
---@param InExtraProperty EPCGExtraProperties
---@return boolean
function UPCGAttributePropertySelectorBlueprintHelpers:SetExtraProperty(Selector, InExtraProperty) end
---@param Selector FPCGAttributePropertySelector
---@param InAttributeName FName
---@return boolean
function UPCGAttributePropertySelectorBlueprintHelpers:SetAttributeName(Selector, InAttributeName) end
---@param Selector FPCGAttributePropertySelector
---@return EPCGAttributePropertySelection
function UPCGAttributePropertySelectorBlueprintHelpers:GetSelection(Selector) end
---@param Selector FPCGAttributePropertySelector
---@return EPCGPointProperties
function UPCGAttributePropertySelectorBlueprintHelpers:GetPointProperty(Selector) end
---@param Selector FPCGAttributePropertySelector
---@return FName
function UPCGAttributePropertySelectorBlueprintHelpers:GetName(Selector) end
---@param Selector FPCGAttributePropertySelector
---@return EPCGExtraProperties
function UPCGAttributePropertySelectorBlueprintHelpers:GetExtraProperty(Selector) end
---@param Selector FPCGAttributePropertySelector
---@return TArray<FString>
function UPCGAttributePropertySelectorBlueprintHelpers:GetExtraNames(Selector) end
---@param Selector FPCGAttributePropertySelector
---@return FName
function UPCGAttributePropertySelectorBlueprintHelpers:GetAttributeName(Selector) end
---@param Selector FPCGAttributePropertyOutputSelector
---@param InSelector FPCGAttributePropertyInputSelector
---@return FPCGAttributePropertyOutputSelector
function UPCGAttributePropertySelectorBlueprintHelpers:CopyAndFixSource(Selector, InSelector) end
---@param Selector FPCGAttributePropertyInputSelector
---@param InData UPCGData
---@return FPCGAttributePropertyInputSelector
function UPCGAttributePropertySelectorBlueprintHelpers:CopyAndFixLast(Selector, InData) end


---@class UPCGAttributeReduceSettings : UPCGSettings
---@field InputSource FPCGAttributePropertyInputSelector
---@field OutputAttributeName FName
---@field Operation EPCGAttributeReduceOperation
UPCGAttributeReduceSettings = {}



---@class UPCGAttributeSelectSettings : UPCGSettings
---@field InputSource FPCGAttributePropertyInputSelector
---@field OutputAttributeName FName
---@field Operation EPCGAttributeSelectOperation
---@field Axis EPCGAttributeSelectAxis
---@field CustomAxis FVector4
UPCGAttributeSelectSettings = {}



---@class UPCGAttributeTransferSettings : UPCGSettings
---@field SourceAttributeProperty FPCGAttributePropertyInputSelector
---@field TargetAttributeProperty FPCGAttributePropertyOutputSelector
UPCGAttributeTransferSettings = {}



---@class UPCGBadOutputsNodeSettings : UPCGSettings
UPCGBadOutputsNodeSettings = {}


---@class UPCGBaseSubgraphNode : UPCGNode
UPCGBaseSubgraphNode = {}


---@class UPCGBaseSubgraphSettings : UPCGSettings
UPCGBaseSubgraphSettings = {}


---@class UPCGBaseTextureData : UPCGSurfaceData
---@field DensityFunction EPCGTextureDensityFunction
---@field ColorChannel EPCGTextureColorChannel
---@field TexelSize float
---@field bUseAdvancedTiling boolean
---@field Tiling FVector2D
---@field CenterOffset FVector2D
---@field Rotation float
---@field bUseTileBounds boolean
---@field TileBounds FBox2D
---@field ColorData TArray<FLinearColor>
---@field Bounds FBox
---@field Height int32
---@field Width int32
UPCGBaseTextureData = {}



---@class UPCGBlueprintElement : UObject
---@field bIsCacheable boolean
---@field bComputeFullDataCrc boolean
---@field bCanBeMultithreaded boolean
---@field CustomInputPins TArray<FPCGPinProperties>
---@field CustomOutputPins TArray<FPCGPinProperties>
---@field bHasDefaultInPin boolean
---@field bHasDefaultOutPin boolean
UPCGBlueprintElement = {}

---@param InContext FPCGContext
---@param InData UPCGPointData
---@param InPoint FPCGPoint
---@param OutMetadata UPCGMetadata
---@return TArray<FPCGPoint>
function UPCGBlueprintElement:VariableLoopBody(InContext, InData, InPoint, OutMetadata) end
---@param InContext FPCGContext
---@param InData UPCGPointData
---@param OutData UPCGPointData
---@param OptionalOutData UPCGPointData
function UPCGBlueprintElement:VariableLoop(InContext, InData, OutData, OptionalOutData) end
---@param InContext FPCGContext
---@param InData UPCGPointData
---@param InPoint FPCGPoint
---@param OutPoint FPCGPoint
---@param OutMetadata UPCGMetadata
---@return boolean
function UPCGBlueprintElement:PointLoopBody(InContext, InData, InPoint, OutPoint, OutMetadata) end
---@param InContext FPCGContext
---@param InData UPCGPointData
---@param OutData UPCGPointData
---@param OptionalOutData UPCGPointData
function UPCGBlueprintElement:PointLoop(InContext, InData, OutData, OptionalOutData) end
---@return EPCGSettingsType
function UPCGBlueprintElement:NodeTypeOverride() end
---@return FName
function UPCGBlueprintElement:NodeTitleOverride() end
---@return FLinearColor
function UPCGBlueprintElement:NodeColorOverride() end
---@param InContext FPCGContext
---@param InOuterData UPCGPointData
---@param InInnerData UPCGPointData
---@param InOuterPoint FPCGPoint
---@param InInnerPoint FPCGPoint
---@param OutPoint FPCGPoint
---@param OutMetadata UPCGMetadata
---@return boolean
function UPCGBlueprintElement:NestedLoopBody(InContext, InOuterData, InInnerData, InOuterPoint, InInnerPoint, OutPoint, OutMetadata) end
---@param InContext FPCGContext
---@param InOuterData UPCGPointData
---@param InInnerData UPCGPointData
---@param OutData UPCGPointData
---@param OptionalOutData UPCGPointData
function UPCGBlueprintElement:NestedLoop(InContext, InOuterData, InInnerData, OutData, OptionalOutData) end
---@param InContext FPCGContext
---@param Iteration int64
---@param InA UPCGSpatialData
---@param InB UPCGSpatialData
---@param OutPoint FPCGPoint
---@param OutMetadata UPCGMetadata
---@return boolean
function UPCGBlueprintElement:IterationLoopBody(InContext, Iteration, InA, InB, OutPoint, OutMetadata) end
---@param InContext FPCGContext
---@param NumIterations int64
---@param OutData UPCGPointData
---@param OptionalA UPCGSpatialData
---@param OptionalB UPCGSpatialData
---@param OptionalOutData UPCGPointData
function UPCGBlueprintElement:IterationLoop(InContext, NumIterations, OutData, OptionalA, OptionalB, OptionalOutData) end
---@return boolean
function UPCGBlueprintElement:IsCacheableOverride() end
---@param InContext FPCGContext
---@return int32
function UPCGBlueprintElement:GetSeed(InContext) end
---@param InContext FPCGContext
---@return FRandomStream
function UPCGBlueprintElement:GetRandomStream(InContext) end
---@return TArray<FPCGPinProperties>
function UPCGBlueprintElement:GetOutputPins() end
---@param InPinLabel FName
---@param OutFoundPin FPCGPinProperties
---@return boolean
function UPCGBlueprintElement:GetOutputPinByLabel(InPinLabel, OutFoundPin) end
---@return TArray<FPCGPinProperties>
function UPCGBlueprintElement:GetInputPins() end
---@param InPinLabel FName
---@param OutFoundPin FPCGPinProperties
---@return boolean
function UPCGBlueprintElement:GetInputPinByLabel(InPinLabel, OutFoundPin) end
---@return FPCGContext
function UPCGBlueprintElement:GetContext() end
---@param InContext FPCGContext
---@param Input FPCGDataCollection
---@param Output FPCGDataCollection
function UPCGBlueprintElement:ExecuteWithContext(InContext, Input, Output) end
---@param Input FPCGDataCollection
---@param Output FPCGDataCollection
function UPCGBlueprintElement:Execute(Input, Output) end
---@return TSet<FName>
function UPCGBlueprintElement:CustomOutputLabels() end
---@return TSet<FName>
function UPCGBlueprintElement:CustomInputLabels() end
---@param InPreconfigureInfo FPCGPreConfiguredSettingsInfo
function UPCGBlueprintElement:ApplyPreconfiguredSettings(InPreconfigureInfo) end


---@class UPCGBlueprintHelpers : UBlueprintFunctionLibrary
UPCGBlueprintHelpers = {}

---@param InPoint FPCGPoint
function UPCGBlueprintHelpers:SetSeedFromPosition(InPoint) end
---@param InPoint FPCGPoint
---@param InLocalCenter FVector
function UPCGBlueprintHelpers:SetLocalCenter(InPoint, InLocalCenter) end
---@param InPoint FPCGPoint
---@param InExtents FVector
function UPCGBlueprintHelpers:SetExtents(InPoint, InExtents) end
---@param InPoint FPCGPoint
---@return FBox
function UPCGBlueprintHelpers:GetTransformedBounds(InPoint) end
---@param Context FPCGContext
---@return int64
function UPCGBlueprintHelpers:GetTaskId(Context) end
---@param Context FPCGContext
---@param SpatialData UPCGSpatialData
---@return AActor
function UPCGBlueprintHelpers:GetTargetActor(Context, SpatialData) end
---@param Context FPCGContext
---@return UPCGSettings
function UPCGBlueprintHelpers:GetSettings(Context) end
---@param InPoint FPCGPoint
---@param OptionalSettings UPCGSettings
---@param OptionalComponent UPCGComponent
---@return FRandomStream
function UPCGBlueprintHelpers:GetRandomStream(InPoint, OptionalSettings, OptionalComponent) end
---@param Context FPCGContext
---@return UPCGComponent
function UPCGBlueprintHelpers:GetOriginalComponent(Context) end
---@param InPoint FPCGPoint
---@return FVector
function UPCGBlueprintHelpers:GetLocalCenter(InPoint) end
---@param Context FPCGContext
---@return UPCGData
function UPCGBlueprintHelpers:GetInputData(Context) end
---@param InPoint FPCGPoint
---@return FVector
function UPCGBlueprintHelpers:GetExtents(InPoint) end
---@param Context FPCGContext
---@return UPCGComponent
function UPCGBlueprintHelpers:GetComponent(Context) end
---@param InActor AActor
---@param bIgnorePCGCreatedComponents boolean
---@return FBox
function UPCGBlueprintHelpers:GetActorLocalBoundsPCG(InActor, bIgnorePCGCreatedComponents) end
---@param Context FPCGContext
---@return UPCGData
function UPCGBlueprintHelpers:GetActorData(Context) end
---@param InActor AActor
---@param bIgnorePCGCreatedComponents boolean
---@return FBox
function UPCGBlueprintHelpers:GetActorBoundsPCG(InActor, bIgnorePCGCreatedComponents) end
---@param InActor AActor
---@param bParseActor boolean
---@return UPCGData
function UPCGBlueprintHelpers:CreatePCGDataFromActor(InActor, bParseActor) end
---@param InPosition FVector
---@return int32
function UPCGBlueprintHelpers:ComputeSeedFromPosition(InPosition) end


---@class UPCGBlueprintPinHelpers : UBlueprintFunctionLibrary
UPCGBlueprintPinHelpers = {}

---@param Label FName
---@param bAllowMultipleData boolean
---@param bAllowMultipleConnections boolean
---@param bAdvancedPin boolean
---@param AllowedType EPCGExclusiveDataType
---@return FPCGPinProperties
function UPCGBlueprintPinHelpers:MakePinProperty(Label, bAllowMultipleData, bAllowMultipleConnections, bAdvancedPin, AllowedType) end
---@param PinProperty FPCGPinProperties
---@param Label FName
---@param bAllowMultipleData boolean
---@param bAllowMultipleConnections boolean
---@param bAdvancedPin boolean
---@param AllowedType EPCGExclusiveDataType
function UPCGBlueprintPinHelpers:BreakPinProperty(PinProperty, Label, bAllowMultipleData, bAllowMultipleConnections, bAdvancedPin, AllowedType) end


---@class UPCGBlueprintSettings : UPCGSettings
---@field BlueprintElementType TSubclassOf<UPCGBlueprintElement>
---@field BlueprintElementInstance UPCGBlueprintElement
UPCGBlueprintSettings = {}

---@param InElementType TSubclassOf<UPCGBlueprintElement>
---@param ElementInstance UPCGBlueprintElement
function UPCGBlueprintSettings:SetElementType(InElementType, ElementInstance) end
---@return TSubclassOf<UPCGBlueprintElement>
function UPCGBlueprintSettings:GetElementType() end


---@class UPCGBooleanSelectSettings : UPCGSettings
---@field bUseInputB boolean
UPCGBooleanSelectSettings = {}



---@class UPCGBoundsModifierSettings : UPCGSettings
---@field Mode EPCGBoundsModifierMode
---@field BoundsMin FVector
---@field BoundsMax FVector
---@field bAffectSteepness boolean
---@field Steepness float
UPCGBoundsModifierSettings = {}



---@class UPCGBranchSettings : UPCGSettings
---@field bOutputToB boolean
UPCGBranchSettings = {}



---@class UPCGCollapseSettings : UPCGSettings
UPCGCollapseSettings = {}


---@class UPCGCollisionShapeData : UPCGSpatialDataWithPointCache
---@field Transform FTransform
---@field CachedBounds FBox
---@field CachedStrictBounds FBox
UPCGCollisionShapeData = {}



---@class UPCGComponent : UActorComponent
---@field InputType EPCGComponentInput
---@field bParseActorComponents boolean
---@field Seed int32
---@field bActivated boolean
---@field bIsComponentPartitioned boolean
---@field GenerationTrigger EPCGComponentGenerationTrigger
---@field bGenerated boolean
---@field bRuntimeGenerated boolean
---@field PostGenerateFunctionNames TArray<FName>
---@field GraphInstance UPCGGraphInstance
---@field GenerationGridSize uint32
---@field CachedPCGData UPCGData
---@field CachedInputData UPCGData
---@field CachedActorData UPCGData
---@field CachedLandscapeData UPCGData
---@field CachedLandscapeHeightData UPCGData
---@field GeneratedResources TArray<UPCGManagedResource>
---@field LastGeneratedBounds FBox
---@field GeneratedGraphOutput FPCGDataCollection
---@field PerPinGeneratedOutput TMap<FString, FPCGDataCollection>
---@field bIsComponentLocal boolean
UPCGComponent = {}

---@param InGraph UPCGGraphInterface
function UPCGComponent:SetGraph(InGraph) end
function UPCGComponent:NotifyPropertiesChangedFromBlueprint() end
---@return FPCGDataCollection
function UPCGComponent:GetGeneratedGraphOutput() end
---@param bForce boolean
function UPCGComponent:GenerateLocal(bForce) end
---@param bForce boolean
function UPCGComponent:Generate(bForce) end
---@param TemplateActor UClass
---@return AActor
function UPCGComponent:ClearPCGLink(TemplateActor) end
---@param bRemoveComponents boolean
---@param bSave boolean
function UPCGComponent:CleanupLocal(bRemoveComponents, bSave) end
---@param bRemoveComponents boolean
---@param bSave boolean
function UPCGComponent:Cleanup(bRemoveComponents, bSave) end
---@param InResource UPCGManagedResource
function UPCGComponent:AddToManagedResources(InResource) end


---@class UPCGCopyPointsSettings : UPCGSettings
---@field RotationInheritance EPCGCopyPointsInheritanceMode
---@field ScaleInheritance EPCGCopyPointsInheritanceMode
---@field ColorInheritance EPCGCopyPointsInheritanceMode
---@field SeedInheritance EPCGCopyPointsInheritanceMode
---@field AttributeInheritance EPCGCopyPointsMetadataInheritanceMode
UPCGCopyPointsSettings = {}



---@class UPCGCreateAttributeBaseSettings : UPCGSettings
---@field bDisplayFromSourceParamSetting boolean
---@field InputSource FPCGAttributePropertyInputSelector
---@field AttributeTypes FPCGMetadataTypesConstantStruct
UPCGCreateAttributeBaseSettings = {}



---@class UPCGCreateAttributeSetSettings : UPCGCreateAttributeBaseSettings
---@field OutputTarget FPCGAttributePropertyOutputNoSourceSelector
UPCGCreateAttributeSetSettings = {}



---@class UPCGCreateSplineSettings : UPCGSettings
---@field Mode EPCGCreateSplineMode
---@field bClosedLoop boolean
---@field bLinear boolean
---@field bApplyCustomTangents boolean
---@field ArriveTangentAttribute FName
---@field LeaveTangentAttribute FName
---@field TargetActor TSoftObjectPtr<AActor>
---@field AttachOptions EPCGAttachOptions
UPCGCreateSplineSettings = {}



---@class UPCGCreateTargetActor : UPCGSettings
---@field TemplateActorClass TSubclassOf<AActor>
---@field TemplateActor AActor
---@field bAllowTemplateActorEditing boolean
---@field AttachOptions EPCGAttachOptions
---@field RootActor TSoftObjectPtr<AActor>
---@field ActorLabel FString
---@field ActorPivot FTransform
UPCGCreateTargetActor = {}



---@class UPCGCullPointsOutsideActorBoundsSettings : UPCGSettings
UPCGCullPointsOutsideActorBoundsSettings = {}


---@class UPCGData : UObject
---@field UID uint64
UPCGData = {}



---@class UPCGDataFromActorSettings : UPCGSettings
---@field ActorSelector FPCGActorSelectorSettings
---@field Mode EPCGGetDataFromActorMode
---@field bMergeSinglePointData boolean
---@field bDisplayModeSettings boolean
---@field ExpectedPins TArray<FName>
---@field PropertyName FName
UPCGDataFromActorSettings = {}



---@class UPCGDataFunctionLibrary : UBlueprintFunctionLibrary
UPCGDataFunctionLibrary = {}

---@param InCollection FPCGDataCollection
---@param InTag FString
---@param OutTaggedData TArray<FPCGTaggedData>
---@param InDataTypeClass TSubclassOf<UPCGData>
---@return TArray<UPCGData>
function UPCGDataFunctionLibrary:GetTypedInputsByTag(InCollection, InTag, OutTaggedData, InDataTypeClass) end
---@param InCollection FPCGDataCollection
---@param InPinLabel FName
---@param OutTaggedData TArray<FPCGTaggedData>
---@param InDataTypeClass TSubclassOf<UPCGData>
---@return TArray<UPCGData>
function UPCGDataFunctionLibrary:GetTypedInputsByPinLabel(InCollection, InPinLabel, OutTaggedData, InDataTypeClass) end
---@param InCollection FPCGDataCollection
---@param InPin FPCGPinProperties
---@param OutTaggedData TArray<FPCGTaggedData>
---@param InDataTypeClass TSubclassOf<UPCGData>
---@return TArray<UPCGData>
function UPCGDataFunctionLibrary:GetTypedInputsByPin(InCollection, InPin, OutTaggedData, InDataTypeClass) end
---@param InCollection FPCGDataCollection
---@param OutTaggedData TArray<FPCGTaggedData>
---@param InDataTypeClass TSubclassOf<UPCGData>
---@return TArray<UPCGData>
function UPCGDataFunctionLibrary:GetTypedInputs(InCollection, OutTaggedData, InDataTypeClass) end
---@param InCollection FPCGDataCollection
---@param InTag FString
---@return TArray<FPCGTaggedData>
function UPCGDataFunctionLibrary:GetParamsByTag(InCollection, InTag) end
---@param InCollection FPCGDataCollection
---@param InPinLabel FName
---@return TArray<FPCGTaggedData>
function UPCGDataFunctionLibrary:GetParamsByPinLabel(InCollection, InPinLabel) end
---@param InCollection FPCGDataCollection
---@return TArray<FPCGTaggedData>
function UPCGDataFunctionLibrary:GetParams(InCollection) end
---@param InCollection FPCGDataCollection
---@param InTag FString
---@return TArray<FPCGTaggedData>
function UPCGDataFunctionLibrary:GetInputsByTag(InCollection, InTag) end
---@param InCollection FPCGDataCollection
---@param InPinLabel FName
---@return TArray<FPCGTaggedData>
function UPCGDataFunctionLibrary:GetInputsByPinLabel(InCollection, InPinLabel) end
---@param InCollection FPCGDataCollection
---@return TArray<FPCGTaggedData>
function UPCGDataFunctionLibrary:GetInputs(InCollection) end
---@param InCollection FPCGDataCollection
---@return TArray<FPCGTaggedData>
function UPCGDataFunctionLibrary:GetAllSettings(InCollection) end
---@param InCollection FPCGDataCollection
---@param InData UPCGData
---@param InPinLabel FName
---@param InTags TArray<FString>
function UPCGDataFunctionLibrary:AddToCollection(InCollection, InData, InPinLabel, InTags) end


---@class UPCGDataNumSettings : UPCGSettings
---@field OutputAttributeName FName
UPCGDataNumSettings = {}



---@class UPCGDataTableRowToParamDataSettings : UPCGSettings
---@field RowName FName
---@field PathOverride FString
---@field DataTable TSoftObjectPtr<UDataTable>
UPCGDataTableRowToParamDataSettings = {}



---@class UPCGDebugSettings : UPCGSettings
---@field TargetActor TSoftObjectPtr<AActor>
UPCGDebugSettings = {}



---@class UPCGDensityFilterSettings : UPCGSettings
---@field LowerBound float
---@field UpperBound float
---@field bInvertFilter boolean
UPCGDensityFilterSettings = {}



---@class UPCGDensityRemapSettings : UPCGSettings
---@field InRangeMin float
---@field InRangeMax float
---@field OutRangeMin float
---@field OutRangeMax float
---@field bExcludeValuesOutsideInputRange boolean
UPCGDensityRemapSettings = {}



---@class UPCGDeterminismTestBlueprintBase : UObject
UPCGDeterminismTestBlueprintBase = {}

---@param InOutTestResult FDeterminismTestResult
---@param InPCGNode UPCGNode
function UPCGDeterminismTestBlueprintBase:ExecuteTest(InOutTestResult, InPCGNode) end


---@class UPCGDifferenceData : UPCGSpatialDataWithPointCache
---@field bDiffMetadata boolean
---@field Source UPCGSpatialData
---@field Difference UPCGSpatialData
---@field DifferencesUnion UPCGUnionData
---@field DensityFunction EPCGDifferenceDensityFunction
UPCGDifferenceData = {}

---@param InDensityFunction EPCGDifferenceDensityFunction
function UPCGDifferenceData:SetDensityFunction(InDensityFunction) end
---@param InData UPCGSpatialData
function UPCGDifferenceData:Initialize(InData) end
---@param InDifference UPCGSpatialData
function UPCGDifferenceData:AddDifference(InDifference) end


---@class UPCGDifferenceSettings : UPCGSettings
---@field DensityFunction EPCGDifferenceDensityFunction
---@field Mode EPCGDifferenceMode
---@field bDiffMetadata boolean
UPCGDifferenceSettings = {}



---@class UPCGDistanceSettings : UPCGSettings
---@field AttributeName FName
---@field bOutputDistanceVector boolean
---@field bSetDensity boolean
---@field MaximumDistance double
---@field SourceShape PCGDistanceShape
---@field TargetShape PCGDistanceShape
UPCGDistanceSettings = {}



---@class UPCGEdge : UObject
---@field InboundLabel FName
---@field InboundNode UPCGNode
---@field OutboundLabel FName
---@field OutboundNode UPCGNode
---@field InputPin UPCGPin
---@field OutputPin UPCGPin
UPCGEdge = {}



---@class UPCGEngineSettings : UObject
---@field VolumeScale FVector
---@field bGenerateOnDrop boolean
UPCGEngineSettings = {}



---@class UPCGExternalDataSettings : UPCGSettings
---@field AttributeMapping TMap<FString, FPCGAttributePropertyInputSelector>
UPCGExternalDataSettings = {}



---@class UPCGFilterByTagSettings : UPCGSettings
---@field Operation EPCGFilterByTagOperation
---@field SelectedTags FString
UPCGFilterByTagSettings = {}



---@class UPCGFilterByTypeSettings : UPCGSettings
---@field TargetType EPCGDataType
UPCGFilterByTypeSettings = {}



---@class UPCGGatherSettings : UPCGSettings
UPCGGatherSettings = {}


---@class UPCGGetLandscapeSettings : UPCGDataFromActorSettings
---@field bGetHeightOnly boolean
---@field bGetLayerWeights boolean
UPCGGetLandscapeSettings = {}



---@class UPCGGetPrimitiveSettings : UPCGDataFromActorSettings
UPCGGetPrimitiveSettings = {}


---@class UPCGGetSplineSettings : UPCGDataFromActorSettings
UPCGGetSplineSettings = {}


---@class UPCGGetVolumeSettings : UPCGDataFromActorSettings
UPCGGetVolumeSettings = {}


---@class UPCGGraph : UPCGGraphInterface
---@field bLandscapeUsesMetadata boolean
---@field Nodes TArray<UPCGNode>
---@field InputNode UPCGNode
---@field OutputNode UPCGNode
---@field UserParameters FInstancedPropertyBag
---@field bUseHierarchicalGeneration boolean
---@field HiGenGridSize EPCGHiGenGrid
UPCGGraph = {}

---@param InNode UPCGNode
function UPCGGraph:RemoveNode(InNode) end
---@param From UPCGNode
---@param FromLabel FName
---@param To UPCGNode
---@param ToLabel FName
---@return boolean
function UPCGGraph:RemoveEdge(From, FromLabel, To, ToLabel) end
---@return UPCGNode
function UPCGGraph:GetOutputNode() end
---@return UPCGNode
function UPCGGraph:GetInputNode() end
---@param InSettingsClass TSubclassOf<UPCGSettings>
---@param DefaultNodeSettings UPCGSettings
---@return UPCGNode
function UPCGGraph:AddNodeOfType(InSettingsClass, DefaultNodeSettings) end
---@param InSettings UPCGSettings
---@return UPCGNode
function UPCGGraph:AddNodeInstance(InSettings) end
---@param InSettings UPCGSettings
---@param DefaultNodeSettings UPCGSettings
---@return UPCGNode
function UPCGGraph:AddNodeCopy(InSettings, DefaultNodeSettings) end
---@param From UPCGNode
---@param FromPinLabel FName
---@param To UPCGNode
---@param ToPinLabel FName
---@return UPCGNode
function UPCGGraph:AddEdge(From, FromPinLabel, To, ToPinLabel) end


---@class UPCGGraphAuthoringTestHelperSettings : UPCGSettings
UPCGGraphAuthoringTestHelperSettings = {}


---@class UPCGGraphInputOutputSettings : UPCGSettings
---@field PinLabels TSet<FName>
---@field CustomPins TArray<FPCGPinProperties>
UPCGGraphInputOutputSettings = {}



---@class UPCGGraphInstance : UPCGGraphInterface
---@field Graph UPCGGraphInterface
---@field ParametersOverrides FPCGOverrideInstancedPropertyBag
UPCGGraphInstance = {}



---@class UPCGGraphInterface : UObject
UPCGGraphInterface = {}

---@return UPCGGraph
function UPCGGraphInterface:GetMutablePCGGraph() end
---@return UPCGGraph
function UPCGGraphInterface:GetConstPCGGraph() end


---@class UPCGGraphParametersHelpers : UBlueprintFunctionLibrary
UPCGGraphParametersHelpers = {}

---@param GraphInstance UPCGGraphInstance
---@param Name FName
---@param Value FVector
function UPCGGraphParametersHelpers:SetVectorParameter(GraphInstance, Name, Value) end
---@param GraphInstance UPCGGraphInstance
---@param Name FName
---@param Value FTransform
function UPCGGraphParametersHelpers:SetTransformParameter(GraphInstance, Name, Value) end
---@param GraphInstance UPCGGraphInstance
---@param Name FName
---@param Value FString
function UPCGGraphParametersHelpers:SetStringParameter(GraphInstance, Name, Value) end
---@param GraphInstance UPCGGraphInstance
---@param Name FName
---@param Value TSoftObjectPtr<UObject>
function UPCGGraphParametersHelpers:SetSoftObjectParameter(GraphInstance, Name, Value) end
---@param GraphInstance UPCGGraphInstance
---@param Name FName
---@param Value TSoftClassPtr<UObject>
function UPCGGraphParametersHelpers:SetSoftClassParameter(GraphInstance, Name, Value) end
---@param GraphInstance UPCGGraphInstance
---@param Name FName
---@param Value FRotator
function UPCGGraphParametersHelpers:SetRotatorParameter(GraphInstance, Name, Value) end
---@param GraphInstance UPCGGraphInstance
---@param Name FName
---@param Value FName
function UPCGGraphParametersHelpers:SetNameParameter(GraphInstance, Name, Value) end
---@param GraphInstance UPCGGraphInstance
---@param Name FName
---@param Value int64
function UPCGGraphParametersHelpers:SetInt64Parameter(GraphInstance, Name, Value) end
---@param GraphInstance UPCGGraphInstance
---@param Name FName
---@param Value int32
function UPCGGraphParametersHelpers:SetInt32Parameter(GraphInstance, Name, Value) end
---@param GraphInstance UPCGGraphInstance
---@param Name FName
---@param Value float
function UPCGGraphParametersHelpers:SetFloatParameter(GraphInstance, Name, Value) end
---@param GraphInstance UPCGGraphInstance
---@param Name FName
---@param Enum UEnum
---@param Value uint8
function UPCGGraphParametersHelpers:SetEnumParameter(GraphInstance, Name, Enum, Value) end
---@param GraphInstance UPCGGraphInstance
---@param Name FName
---@param Value double
function UPCGGraphParametersHelpers:SetDoubleParameter(GraphInstance, Name, Value) end
---@param GraphInstance UPCGGraphInstance
---@param Name FName
---@param Value uint8
function UPCGGraphParametersHelpers:SetByteParameter(GraphInstance, Name, Value) end
---@param GraphInstance UPCGGraphInstance
---@param Name FName
---@param bValue boolean
function UPCGGraphParametersHelpers:SetBoolParameter(GraphInstance, Name, bValue) end
---@param GraphInstance UPCGGraphInstance
---@param Name FName
---@return boolean
function UPCGGraphParametersHelpers:IsOverridden(GraphInstance, Name) end
---@param GraphInstance UPCGGraphInstance
---@param Name FName
---@return FVector
function UPCGGraphParametersHelpers:GetVectorParameter(GraphInstance, Name) end
---@param GraphInstance UPCGGraphInstance
---@param Name FName
---@return FTransform
function UPCGGraphParametersHelpers:GetTransformParameter(GraphInstance, Name) end
---@param GraphInstance UPCGGraphInstance
---@param Name FName
---@return FString
function UPCGGraphParametersHelpers:GetStringParameter(GraphInstance, Name) end
---@param GraphInstance UPCGGraphInstance
---@param Name FName
---@return TSoftObjectPtr<UObject>
function UPCGGraphParametersHelpers:GetSoftObjectParameter(GraphInstance, Name) end
---@param GraphInstance UPCGGraphInstance
---@param Name FName
---@return TSoftClassPtr<UObject>
function UPCGGraphParametersHelpers:GetSoftClassParameter(GraphInstance, Name) end
---@param GraphInstance UPCGGraphInstance
---@param Name FName
---@return FRotator
function UPCGGraphParametersHelpers:GetRotatorParameter(GraphInstance, Name) end
---@param GraphInstance UPCGGraphInstance
---@param Name FName
---@return FName
function UPCGGraphParametersHelpers:GetNameParameter(GraphInstance, Name) end
---@param GraphInstance UPCGGraphInstance
---@param Name FName
---@return int64
function UPCGGraphParametersHelpers:GetInt64Parameter(GraphInstance, Name) end
---@param GraphInstance UPCGGraphInstance
---@param Name FName
---@return int32
function UPCGGraphParametersHelpers:GetInt32Parameter(GraphInstance, Name) end
---@param GraphInstance UPCGGraphInstance
---@param Name FName
---@return float
function UPCGGraphParametersHelpers:GetFloatParameter(GraphInstance, Name) end
---@param GraphInstance UPCGGraphInstance
---@param Name FName
---@return double
function UPCGGraphParametersHelpers:GetDoubleParameter(GraphInstance, Name) end
---@param GraphInstance UPCGGraphInstance
---@param Name FName
---@return uint8
function UPCGGraphParametersHelpers:GetByteParameter(GraphInstance, Name) end
---@param GraphInstance UPCGGraphInstance
---@param Name FName
---@return boolean
function UPCGGraphParametersHelpers:GetBoolParameter(GraphInstance, Name) end


---@class UPCGHiGenGridSizeSettings : UPCGSettings
---@field HiGenGridSize EPCGHiGenGrid
UPCGHiGenGridSizeSettings = {}



---@class UPCGInnerIntersectionSettings : UPCGSettings
---@field DensityFunction EPCGIntersectionDensityFunction
UPCGInnerIntersectionSettings = {}



---@class UPCGInstanceDataPackerBase : UObject
UPCGInstanceDataPackerBase = {}

---@param Context FPCGContext
---@param InSpatialData UPCGSpatialData
---@param InstanceList FPCGMeshInstanceList
---@param OutPackedCustomData FPCGPackedCustomData
function UPCGInstanceDataPackerBase:PackInstances(Context, InSpatialData, InstanceList, OutPackedCustomData) end
---@param InstanceList FPCGMeshInstanceList
---@param MetaData UPCGMetadata
---@param AttributeNames TArray<FName>
---@param OutPackedCustomData FPCGPackedCustomData
function UPCGInstanceDataPackerBase:PackCustomDataFromAttributes(InstanceList, MetaData, AttributeNames, OutPackedCustomData) end
---@param TypeId int32
---@param OutPackedCustomData FPCGPackedCustomData
---@return boolean
function UPCGInstanceDataPackerBase:AddTypeToPacking(TypeId, OutPackedCustomData) end


---@class UPCGInstanceDataPackerByAttribute : UPCGInstanceDataPackerBase
---@field AttributeNames TArray<FName>
UPCGInstanceDataPackerByAttribute = {}



---@class UPCGInstanceDataPackerByRegex : UPCGInstanceDataPackerBase
---@field RegexPatterns TArray<FString>
UPCGInstanceDataPackerByRegex = {}



---@class UPCGIntersectionData : UPCGSpatialDataWithPointCache
---@field DensityFunction EPCGIntersectionDensityFunction
---@field A UPCGSpatialData
---@field B UPCGSpatialData
---@field CachedBounds FBox
---@field CachedStrictBounds FBox
UPCGIntersectionData = {}

---@param InA UPCGSpatialData
---@param InB UPCGSpatialData
function UPCGIntersectionData:Initialize(InA, InB) end


---@class UPCGLandscapeCache : UObject
---@field CachedLayerNames TSet<FName>
UPCGLandscapeCache = {}



---@class UPCGLandscapeData : UPCGSurfaceData
---@field Landscapes TArray<TSoftObjectPtr<ALandscapeProxy>>
---@field Bounds FBox
---@field bHeightOnly boolean
---@field bUseMetadata boolean
UPCGLandscapeData = {}



---@class UPCGLandscapeSplineData : UPCGPolyLineData
---@field Spline TWeakObjectPtr<ULandscapeSplinesComponent>
UPCGLandscapeSplineData = {}



---@class UPCGLinearDensityRemapSettings : UPCGSettings
---@field RemapMin float
---@field RemapMax float
---@field bMultiplyDensity boolean
UPCGLinearDensityRemapSettings = {}



---@class UPCGLoadDataTableSettings : UPCGExternalDataSettings
---@field DataTable TSoftObjectPtr<UDataTable>
UPCGLoadDataTableSettings = {}



---@class UPCGLoopSettings : UPCGSubgraphSettings
---@field LoopPins FString
UPCGLoopSettings = {}



---@class UPCGMakeConcreteSettings : UPCGSettings
UPCGMakeConcreteSettings = {}


---@class UPCGManagedActors : UPCGManagedResource
---@field GeneratedActors TSet<TSoftObjectPtr<AActor>>
UPCGManagedActors = {}



---@class UPCGManagedComponent : UPCGManagedResource
---@field GeneratedComponent TSoftObjectPtr<UActorComponent>
UPCGManagedComponent = {}



---@class UPCGManagedISMComponent : UPCGManagedComponent
---@field bHasDescriptor boolean
---@field Descriptor FISMComponentDescriptor
---@field bHasRootLocation boolean
---@field RootLocation FVector
---@field SettingsUID uint64
UPCGManagedISMComponent = {}



---@class UPCGManagedResource : UObject
---@field Crc FPCGCrc
---@field bIsMarkedUnused boolean
UPCGManagedResource = {}



---@class UPCGMatchAndSetBase : UObject
---@field Type EPCGMetadataTypes
---@field StringMode EPCGMetadataTypesConstantStructStringMode
UPCGMatchAndSetBase = {}

---@param InPointData UPCGPointData
---@return boolean
function UPCGMatchAndSetBase:ValidatePreconditions(InPointData) end
---@param Context FPCGContext
---@param InSettings UPCGPointMatchAndSetSettings
---@param InPointData UPCGPointData
---@param OutPointData UPCGPointData
function UPCGMatchAndSetBase:MatchAndSet(Context, InSettings, InPointData, OutPointData) end


---@class UPCGMatchAndSetByAttribute : UPCGMatchAndSetBase
---@field MatchSourceAttribute FName
---@field MatchSourceType EPCGMetadataTypes
---@field MatchSourceStringMode EPCGMetadataTypesConstantStructStringMode
---@field Entries TArray<FPCGMatchAndSetByAttributeEntry>
UPCGMatchAndSetByAttribute = {}



---@class UPCGMatchAndSetWeighted : UPCGMatchAndSetBase
---@field Entries TArray<FPCGMatchAndSetWeightedEntry>
---@field bShouldMutateSeed boolean
UPCGMatchAndSetWeighted = {}



---@class UPCGMatchAndSetWeightedByCategory : UPCGMatchAndSetBase
---@field CategoryAttribute FName
---@field CategoryType EPCGMetadataTypes
---@field CategoryStringMode EPCGMetadataTypesConstantStructStringMode
---@field Categories TArray<FPCGMatchAndSetWeightedByCategoryEntryList>
---@field bShouldMutateSeed boolean
UPCGMatchAndSetWeightedByCategory = {}



---@class UPCGMergeSettings : UPCGSettings
---@field bMergeMetadata boolean
UPCGMergeSettings = {}



---@class UPCGMeshSelectorBase : UObject
UPCGMeshSelectorBase = {}


---@class UPCGMeshSelectorByAttribute : UPCGMeshSelectorBase
---@field AttributeName FName
---@field TemplateDescriptor FSoftISMComponentDescriptor
---@field bUseAttributeMaterialOverrides boolean
---@field MaterialOverrideAttributes TArray<FName>
UPCGMeshSelectorByAttribute = {}



---@class UPCGMeshSelectorWeighted : UPCGMeshSelectorBase
---@field MeshEntries TArray<FPCGMeshSelectorWeightedEntry>
---@field bUseAttributeMaterialOverrides boolean
---@field MaterialOverrideAttributes TArray<FName>
UPCGMeshSelectorWeighted = {}



---@class UPCGMeshSelectorWeightedByCategory : UPCGMeshSelectorBase
---@field CategoryAttribute FName
---@field Entries TArray<FPCGWeightedByCategoryEntryList>
---@field bUseAttributeMaterialOverrides boolean
---@field MaterialOverrideAttributes TArray<FName>
UPCGMeshSelectorWeightedByCategory = {}



---@class UPCGMetadata : UObject
---@field Parent UPCGMetadata
---@field OtherParents TSet<TWeakObjectPtr<UPCGMetadata>>
UPCGMetadata = {}

---@param Point FPCGPoint
---@param MetaData UPCGMetadata
---@param OutPoint FPCGPoint
function UPCGMetadata:SetPointAttributes(Point, MetaData, OutPoint) end
---@param Key int64
---@param InMetaData UPCGMetadata
---@param TargetKey int64
---@param OutKey int64
function UPCGMetadata:SetAttributesByKey(Key, InMetaData, TargetKey, OutKey) end
---@param TargetKey int64
---@param OutKey int64
function UPCGMetadata:ResetWeightedAttributesByKey(TargetKey, OutKey) end
---@param OutPoint FPCGPoint
function UPCGMetadata:ResetPointWeightedAttributes(OutPoint) end
---@param AttributeToRename FName
---@param NewAttributeName FName
---@return boolean
function UPCGMetadata:RenameAttribute(AttributeToRename, NewAttributeName) end
---@param PointA FPCGPoint
---@param MetadataA UPCGMetadata
---@param PointB FPCGPoint
---@param MetadataB UPCGMetadata
---@param TargetPoint FPCGPoint
---@param Op EPCGMetadataOp
function UPCGMetadata:MergePointAttributes(PointA, MetadataA, PointB, MetadataB, TargetPoint, Op) end
---@param KeyA int64
---@param MetadataA UPCGMetadata
---@param KeyB int64
---@param MetadataB UPCGMetadata
---@param TargetKey int64
---@param Op EPCGMetadataOp
---@param OutKey int64
function UPCGMetadata:MergeAttributesByKey(KeyA, MetadataA, KeyB, MetadataB, TargetKey, Op, OutKey) end
---@param InParent UPCGMetadata
---@param InFilteredAttributes TSet<FName>
---@param InFilterMode EPCGMetadataFilterMode
function UPCGMetadata:InitializeWithAttributeFilter(InParent, InFilteredAttributes, InFilterMode) end
---@param InMetadataToCopy UPCGMetadata
---@param InFilteredAttributes TSet<FName>
---@param InFilterMode EPCGMetadataFilterMode
function UPCGMetadata:InitializeAsCopyWithAttributeFilter(InMetadataToCopy, InFilteredAttributes, InFilterMode) end
---@param InMetadataToCopy UPCGMetadata
function UPCGMetadata:InitializeAsCopy(InMetadataToCopy) end
---@param InParent UPCGMetadata
function UPCGMetadata:Initialize(InParent) end
---@param InMetaData UPCGMetadata
---@return boolean
function UPCGMetadata:HasCommonAttributes(InMetaData) end
---@param AttributeName FName
---@return boolean
function UPCGMetadata:HasAttribute(AttributeName) end
---@param AttributeNames TArray<FName>
---@param AttributeTypes TArray<EPCGMetadataTypes>
function UPCGMetadata:GetAttributes(AttributeNames, AttributeTypes) end
function UPCGMetadata:Flatten() end
---@param AttributeName FName
function UPCGMetadata:DeleteAttribute(AttributeName) end
---@param AttributeName FName
---@param DefaultValue FVector
---@param bAllowsInterpolation boolean
---@param bOverrideParent boolean
function UPCGMetadata:CreateVectorAttribute(AttributeName, DefaultValue, bAllowsInterpolation, bOverrideParent) end
---@param AttributeName FName
---@param DefaultValue FVector4
---@param bAllowsInterpolation boolean
---@param bOverrideParent boolean
function UPCGMetadata:CreateVector4Attribute(AttributeName, DefaultValue, bAllowsInterpolation, bOverrideParent) end
---@param AttributeName FName
---@param DefaultValue FVector2D
---@param bAllowsInterpolation boolean
---@param bOverrideParent boolean
function UPCGMetadata:CreateVector2Attribute(AttributeName, DefaultValue, bAllowsInterpolation, bOverrideParent) end
---@param AttributeName FName
---@param DefaultValue FTransform
---@param bAllowsInterpolation boolean
---@param bOverrideParent boolean
function UPCGMetadata:CreateTransformAttribute(AttributeName, DefaultValue, bAllowsInterpolation, bOverrideParent) end
---@param AttributeName FName
---@param DefaultValue FString
---@param bAllowsInterpolation boolean
---@param bOverrideParent boolean
function UPCGMetadata:CreateStringAttribute(AttributeName, DefaultValue, bAllowsInterpolation, bOverrideParent) end
---@param AttributeName FName
---@param DefaultValue FRotator
---@param bAllowsInterpolation boolean
---@param bOverrideParent boolean
function UPCGMetadata:CreateRotatorAttribute(AttributeName, DefaultValue, bAllowsInterpolation, bOverrideParent) end
---@param AttributeName FName
---@param DefaultValue FQuat
---@param bAllowsInterpolation boolean
---@param bOverrideParent boolean
function UPCGMetadata:CreateQuatAttribute(AttributeName, DefaultValue, bAllowsInterpolation, bOverrideParent) end
---@param AttributeName FName
---@param DefaultValue FName
---@param bAllowsInterpolation boolean
---@param bOverrideParent boolean
function UPCGMetadata:CreateNameAttribute(AttributeName, DefaultValue, bAllowsInterpolation, bOverrideParent) end
---@param AttributeName FName
---@param DefaultValue int64
---@param bAllowsInterpolation boolean
---@param bOverrideParent boolean
function UPCGMetadata:CreateInteger64Attribute(AttributeName, DefaultValue, bAllowsInterpolation, bOverrideParent) end
---@param AttributeName FName
---@param DefaultValue int32
---@param bAllowsInterpolation boolean
---@param bOverrideParent boolean
function UPCGMetadata:CreateInteger32Attribute(AttributeName, DefaultValue, bAllowsInterpolation, bOverrideParent) end
---@param AttributeName FName
---@param DefaultValue float
---@param bAllowsInterpolation boolean
---@param bOverrideParent boolean
function UPCGMetadata:CreateFloatAttribute(AttributeName, DefaultValue, bAllowsInterpolation, bOverrideParent) end
---@param AttributeName FName
---@param DefaultValue double
---@param bAllowsInterpolation boolean
---@param bOverrideParent boolean
function UPCGMetadata:CreateDoubleAttribute(AttributeName, DefaultValue, bAllowsInterpolation, bOverrideParent) end
---@param AttributeName FName
---@param DefaultValue boolean
---@param bAllowsInterpolation boolean
---@param bOverrideParent boolean
function UPCGMetadata:CreateBoolAttribute(AttributeName, DefaultValue, bAllowsInterpolation, bOverrideParent) end
---@param AttributeToCopy FName
---@param NewAttributeName FName
---@param bKeepParent boolean
---@return boolean
function UPCGMetadata:CopyExistingAttribute(AttributeToCopy, NewAttributeName, bKeepParent) end
---@param InOther UPCGMetadata
function UPCGMetadata:CopyAttributes(InOther) end
---@param InOther UPCGMetadata
---@param AttributeToCopy FName
---@param NewAttributeName FName
function UPCGMetadata:CopyAttribute(InOther, AttributeToCopy, NewAttributeName) end
---@param AttributeToClear FName
function UPCGMetadata:ClearAttribute(AttributeToClear) end
---@param ParentEntryKey int64
---@return int64
function UPCGMetadata:AddEntry(ParentEntryKey) end
---@param InOther UPCGMetadata
---@param InFilteredAttributes TSet<FName>
---@param InFilterMode EPCGMetadataFilterMode
function UPCGMetadata:AddAttributesFiltered(InOther, InFilteredAttributes, InFilterMode) end
---@param InOther UPCGMetadata
function UPCGMetadata:AddAttributes(InOther) end
---@param InOther UPCGMetadata
---@param AttributeName FName
function UPCGMetadata:AddAttribute(InOther, AttributeName) end
---@param Key int64
---@param MetaData UPCGMetadata
---@param Weight float
---@param bSetNonInterpolableAttributes boolean
---@param TargetKey int64
---@param OutKey int64
function UPCGMetadata:AccumulateWeightedAttributesByKey(Key, MetaData, Weight, bSetNonInterpolableAttributes, TargetKey, OutKey) end
---@param InPoint FPCGPoint
---@param InMetaData UPCGMetadata
---@param Weight float
---@param bSetNonInterpolableAttributes boolean
---@param OutPoint FPCGPoint
function UPCGMetadata:AccumulatePointWeightedAttributes(InPoint, InMetaData, Weight, bSetNonInterpolableAttributes, OutPoint) end


---@class UPCGMetadataAccessorHelpers : UBlueprintFunctionLibrary
UPCGMetadataAccessorHelpers = {}

---@param Key int64
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@param Value FVector
function UPCGMetadataAccessorHelpers:SetVectorAttributeByMetadataKey(Key, MetaData, AttributeName, Value) end
---@param Point FPCGPoint
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@param Value FVector
function UPCGMetadataAccessorHelpers:SetVectorAttribute(Point, MetaData, AttributeName, Value) end
---@param Key int64
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@param Value FVector4
function UPCGMetadataAccessorHelpers:SetVector4AttributeByMetadataKey(Key, MetaData, AttributeName, Value) end
---@param Point FPCGPoint
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@param Value FVector4
function UPCGMetadataAccessorHelpers:SetVector4Attribute(Point, MetaData, AttributeName, Value) end
---@param Key int64
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@param Value FVector2D
function UPCGMetadataAccessorHelpers:SetVector2AttributeByMetadataKey(Key, MetaData, AttributeName, Value) end
---@param Point FPCGPoint
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@param Value FVector2D
function UPCGMetadataAccessorHelpers:SetVector2Attribute(Point, MetaData, AttributeName, Value) end
---@param Key int64
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@param Value FTransform
function UPCGMetadataAccessorHelpers:SetTransformAttributeByMetadataKey(Key, MetaData, AttributeName, Value) end
---@param Point FPCGPoint
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@param Value FTransform
function UPCGMetadataAccessorHelpers:SetTransformAttribute(Point, MetaData, AttributeName, Value) end
---@param Key int64
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@param Value FString
function UPCGMetadataAccessorHelpers:SetStringAttributeByMetadataKey(Key, MetaData, AttributeName, Value) end
---@param Point FPCGPoint
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@param Value FString
function UPCGMetadataAccessorHelpers:SetStringAttribute(Point, MetaData, AttributeName, Value) end
---@param Key int64
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@param Value FRotator
function UPCGMetadataAccessorHelpers:SetRotatorAttributeByMetadataKey(Key, MetaData, AttributeName, Value) end
---@param Point FPCGPoint
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@param Value FRotator
function UPCGMetadataAccessorHelpers:SetRotatorAttribute(Point, MetaData, AttributeName, Value) end
---@param Key int64
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@param Value FQuat
function UPCGMetadataAccessorHelpers:SetQuatAttributeByMetadataKey(Key, MetaData, AttributeName, Value) end
---@param Point FPCGPoint
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@param Value FQuat
function UPCGMetadataAccessorHelpers:SetQuatAttribute(Point, MetaData, AttributeName, Value) end
---@param Point FPCGPoint
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@param Value FName
function UPCGMetadataAccessorHelpers:SetNameAttribute(Point, MetaData, AttributeName, Value) end
---@param Key int64
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@param Value int64
function UPCGMetadataAccessorHelpers:SetInteger64AttributeByMetadataKey(Key, MetaData, AttributeName, Value) end
---@param Point FPCGPoint
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@param Value int64
function UPCGMetadataAccessorHelpers:SetInteger64Attribute(Point, MetaData, AttributeName, Value) end
---@param Key int64
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@param Value int32
function UPCGMetadataAccessorHelpers:SetInteger32AttributeByMetadataKey(Key, MetaData, AttributeName, Value) end
---@param Point FPCGPoint
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@param Value int32
function UPCGMetadataAccessorHelpers:SetInteger32Attribute(Point, MetaData, AttributeName, Value) end
---@param Key int64
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@param Value float
function UPCGMetadataAccessorHelpers:SetFloatAttributeByMetadataKey(Key, MetaData, AttributeName, Value) end
---@param Point FPCGPoint
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@param Value float
function UPCGMetadataAccessorHelpers:SetFloatAttribute(Point, MetaData, AttributeName, Value) end
---@param Key int64
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@param Value double
function UPCGMetadataAccessorHelpers:SetDoubleAttributeByMetadataKey(Key, MetaData, AttributeName, Value) end
---@param Point FPCGPoint
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@param Value double
function UPCGMetadataAccessorHelpers:SetDoubleAttribute(Point, MetaData, AttributeName, Value) end
---@param Key int64
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@param Value boolean
function UPCGMetadataAccessorHelpers:SetBoolAttributeByMetadataKey(Key, MetaData, AttributeName, Value) end
---@param Point FPCGPoint
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@param Value boolean
function UPCGMetadataAccessorHelpers:SetBoolAttribute(Point, MetaData, AttributeName, Value) end
---@param Key int64
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@param Object UObject
---@param PropertyName FName
---@return boolean
function UPCGMetadataAccessorHelpers:SetAttributeFromPropertyByMetadataKey(Key, MetaData, AttributeName, Object, PropertyName) end
---@param Point FPCGPoint
---@param MetaData UPCGMetadata
---@param ParentPoint FPCGPoint
---@param ParentMetadata UPCGMetadata
function UPCGMetadataAccessorHelpers:InitializeMetadata(Point, MetaData, ParentPoint, ParentMetadata) end
---@param Key int64
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@return boolean
function UPCGMetadataAccessorHelpers:HasAttributeSetByMetadataKey(Key, MetaData, AttributeName) end
---@param Point FPCGPoint
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@return boolean
function UPCGMetadataAccessorHelpers:HasAttributeSet(Point, MetaData, AttributeName) end
---@param Key int64
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@return FVector
function UPCGMetadataAccessorHelpers:GetVectorAttributeByMetadataKey(Key, MetaData, AttributeName) end
---@param Point FPCGPoint
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@return FVector
function UPCGMetadataAccessorHelpers:GetVectorAttribute(Point, MetaData, AttributeName) end
---@param Key int64
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@return FVector4
function UPCGMetadataAccessorHelpers:GetVector4AttributeByMetadataKey(Key, MetaData, AttributeName) end
---@param Point FPCGPoint
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@return FVector4
function UPCGMetadataAccessorHelpers:GetVector4Attribute(Point, MetaData, AttributeName) end
---@param Key int64
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@return FVector2D
function UPCGMetadataAccessorHelpers:GetVector2AttributeByMetadataKey(Key, MetaData, AttributeName) end
---@param Point FPCGPoint
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@return FVector2D
function UPCGMetadataAccessorHelpers:GetVector2Attribute(Point, MetaData, AttributeName) end
---@param Key int64
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@return FTransform
function UPCGMetadataAccessorHelpers:GetTransformAttributeByMetadataKey(Key, MetaData, AttributeName) end
---@param Point FPCGPoint
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@return FTransform
function UPCGMetadataAccessorHelpers:GetTransformAttribute(Point, MetaData, AttributeName) end
---@param Key int64
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@return FString
function UPCGMetadataAccessorHelpers:GetStringAttributeByMetadataKey(Key, MetaData, AttributeName) end
---@param Point FPCGPoint
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@return FString
function UPCGMetadataAccessorHelpers:GetStringAttribute(Point, MetaData, AttributeName) end
---@param Key int64
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@return FRotator
function UPCGMetadataAccessorHelpers:GetRotatorAttributeByMetadataKey(Key, MetaData, AttributeName) end
---@param Point FPCGPoint
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@return FRotator
function UPCGMetadataAccessorHelpers:GetRotatorAttribute(Point, MetaData, AttributeName) end
---@param Key int64
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@return FQuat
function UPCGMetadataAccessorHelpers:GetQuatAttributeByMetadataKey(Key, MetaData, AttributeName) end
---@param Point FPCGPoint
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@return FQuat
function UPCGMetadataAccessorHelpers:GetQuatAttribute(Point, MetaData, AttributeName) end
---@param Point FPCGPoint
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@return FName
function UPCGMetadataAccessorHelpers:GetNameAttribute(Point, MetaData, AttributeName) end
---@param Key int64
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@return int64
function UPCGMetadataAccessorHelpers:GetInteger64AttributeByMetadataKey(Key, MetaData, AttributeName) end
---@param Point FPCGPoint
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@return int64
function UPCGMetadataAccessorHelpers:GetInteger64Attribute(Point, MetaData, AttributeName) end
---@param Key int64
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@return int32
function UPCGMetadataAccessorHelpers:GetInteger32AttributeByMetadataKey(Key, MetaData, AttributeName) end
---@param Point FPCGPoint
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@return int32
function UPCGMetadataAccessorHelpers:GetInteger32Attribute(Point, MetaData, AttributeName) end
---@param Key int64
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@return float
function UPCGMetadataAccessorHelpers:GetFloatAttributeByMetadataKey(Key, MetaData, AttributeName) end
---@param Point FPCGPoint
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@return float
function UPCGMetadataAccessorHelpers:GetFloatAttribute(Point, MetaData, AttributeName) end
---@param Key int64
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@return double
function UPCGMetadataAccessorHelpers:GetDoubleAttributeByMetadataKey(Key, MetaData, AttributeName) end
---@param Point FPCGPoint
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@return double
function UPCGMetadataAccessorHelpers:GetDoubleAttribute(Point, MetaData, AttributeName) end
---@param Key int64
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@return boolean
function UPCGMetadataAccessorHelpers:GetBoolAttributeByMetadataKey(Key, MetaData, AttributeName) end
---@param Point FPCGPoint
---@param MetaData UPCGMetadata
---@param AttributeName FName
---@return boolean
function UPCGMetadataAccessorHelpers:GetBoolAttribute(Point, MetaData, AttributeName) end
---@param InPoint FPCGPoint
---@param OutPoint FPCGPoint
---@param bCopyMetadata boolean
---@param InMetaData UPCGMetadata
---@param OutMetadata UPCGMetadata
function UPCGMetadataAccessorHelpers:CopyPoint(InPoint, OutPoint, bCopyMetadata, InMetaData, OutMetadata) end


---@class UPCGMetadataBitwiseSettings : UPCGMetadataSettingsBase
---@field Operation EPCGMedadataBitwiseOperation
---@field InputSource1 FPCGAttributePropertyInputSelector
---@field InputSource2 FPCGAttributePropertyInputSelector
UPCGMetadataBitwiseSettings = {}



---@class UPCGMetadataBooleanSettings : UPCGMetadataSettingsBase
---@field Operation EPCGMedadataBooleanOperation
---@field InputSource1 FPCGAttributePropertyInputSelector
---@field InputSource2 FPCGAttributePropertyInputSelector
UPCGMetadataBooleanSettings = {}



---@class UPCGMetadataBreakTransformSettings : UPCGMetadataSettingsBase
---@field InputSource FPCGAttributePropertyInputSelector
UPCGMetadataBreakTransformSettings = {}



---@class UPCGMetadataBreakVectorSettings : UPCGMetadataSettingsBase
---@field InputSource FPCGAttributePropertyInputSelector
UPCGMetadataBreakVectorSettings = {}



---@class UPCGMetadataCompareSettings : UPCGMetadataSettingsBase
---@field Operation EPCGMedadataCompareOperation
---@field InputSource1 FPCGAttributePropertyInputSelector
---@field InputSource2 FPCGAttributePropertyInputSelector
---@field Tolerance double
UPCGMetadataCompareSettings = {}



---@class UPCGMetadataMakeRotatorSettings : UPCGMetadataSettingsBase
---@field InputSource1 FPCGAttributePropertyInputSelector
---@field InputSource2 FPCGAttributePropertyInputSelector
---@field InputSource3 FPCGAttributePropertyInputSelector
---@field Operation EPCGMetadataMakeRotatorOp
UPCGMetadataMakeRotatorSettings = {}



---@class UPCGMetadataMakeTransformSettings : UPCGMetadataSettingsBase
---@field InputSource1 FPCGAttributePropertyInputSelector
---@field InputSource2 FPCGAttributePropertyInputSelector
---@field InputSource3 FPCGAttributePropertyInputSelector
UPCGMetadataMakeTransformSettings = {}



---@class UPCGMetadataMakeVectorSettings : UPCGMetadataSettingsBase
---@field InputSource1 FPCGAttributePropertyInputSelector
---@field InputSource2 FPCGAttributePropertyInputSelector
---@field InputSource3 FPCGAttributePropertyInputSelector
---@field InputSource4 FPCGAttributePropertyInputSelector
---@field OutputType EPCGMetadataTypes
---@field MakeVector3Op EPCGMetadataMakeVector3
---@field MakeVector4Op EPCGMetadataMakeVector4
UPCGMetadataMakeVectorSettings = {}



---@class UPCGMetadataMathsSettings : UPCGMetadataSettingsBase
---@field Operation EPCGMedadataMathsOperation
---@field InputSource1 FPCGAttributePropertyInputSelector
---@field InputSource2 FPCGAttributePropertyInputSelector
---@field InputSource3 FPCGAttributePropertyInputSelector
UPCGMetadataMathsSettings = {}



---@class UPCGMetadataOperationSettings : UPCGSettings
---@field InputSource FPCGAttributePropertyInputSelector
---@field OutputTarget FPCGAttributePropertyOutputSelector
UPCGMetadataOperationSettings = {}



---@class UPCGMetadataPartitionSettings : UPCGSettings
---@field PartitionAttribute FName
UPCGMetadataPartitionSettings = {}



---@class UPCGMetadataRenameSettings : UPCGSettings
---@field AttributeToRename FName
---@field NewAttributeName FName
UPCGMetadataRenameSettings = {}



---@class UPCGMetadataRotatorSettings : UPCGMetadataSettingsBase
---@field Operation EPCGMedadataRotatorOperation
---@field InputSource1 FPCGAttributePropertyInputSelector
---@field InputSource2 FPCGAttributePropertyInputSelector
---@field InputSource3 FPCGAttributePropertyInputSelector
UPCGMetadataRotatorSettings = {}



---@class UPCGMetadataSettingsBase : UPCGSettings
---@field OutputTarget FPCGAttributePropertyOutputSelector
---@field OutputDataFromPin FName
UPCGMetadataSettingsBase = {}

---@return TArray<FName>
function UPCGMetadataSettingsBase:GetOutputDataFromPinOptions() end


---@class UPCGMetadataStringOpSettings : UPCGMetadataSettingsBase
---@field Operation EPCGMetadataStringOperation
---@field InputSource1 FPCGAttributePropertyInputSelector
---@field InputSource2 FPCGAttributePropertyInputSelector
UPCGMetadataStringOpSettings = {}



---@class UPCGMetadataTransformSettings : UPCGMetadataSettingsBase
---@field Operation EPCGMedadataTransformOperation
---@field TransformLerpMode EPCGTransformLerpMode
---@field InputSource1 FPCGAttributePropertyInputSelector
---@field InputSource2 FPCGAttributePropertyInputSelector
---@field InputSource3 FPCGAttributePropertyInputSelector
UPCGMetadataTransformSettings = {}



---@class UPCGMetadataTrigSettings : UPCGMetadataSettingsBase
---@field Operation EPCGMedadataTrigOperation
---@field InputSource1 FPCGAttributePropertyInputSelector
---@field InputSource2 FPCGAttributePropertyInputSelector
UPCGMetadataTrigSettings = {}



---@class UPCGMetadataVectorSettings : UPCGMetadataSettingsBase
---@field Operation EPCGMedadataVectorOperation
---@field InputSource1 FPCGAttributePropertyInputSelector
---@field InputSource2 FPCGAttributePropertyInputSelector
---@field InputSource3 FPCGAttributePropertyInputSelector
UPCGMetadataVectorSettings = {}



---@class UPCGNode : UObject
---@field NodeTitle FName
---@field SettingsInterface UPCGSettingsInterface
---@field OutboundNodes TArray<UPCGNode>
---@field InboundEdges TArray<UPCGEdge>
---@field OutboundEdges TArray<UPCGEdge>
---@field InputPins TArray<UPCGPin>
---@field OutputPins TArray<UPCGPin>
UPCGNode = {}

---@param FromPinLable FName
---@param To UPCGNode
---@param ToPinLabel FName
---@return boolean
function UPCGNode:RemoveEdgeTo(FromPinLable, To, ToPinLabel) end
---@return UPCGSettings
function UPCGNode:GetSettings() end
---@return UPCGGraph
function UPCGNode:GetGraph() end
---@param FromPinLabel FName
---@param To UPCGNode
---@param ToPinLabel FName
---@return UPCGNode
function UPCGNode:AddEdgeTo(FromPinLabel, To, ToPinLabel) end


---@class UPCGNormalToDensitySettings : UPCGSettings
---@field Normal FVector
---@field Offset double
---@field Strength double
---@field DensityMode PCGNormalToDensityMode
UPCGNormalToDensitySettings = {}



---@class UPCGNumberOfPointsSettings : UPCGSettings
---@field OutputAttributeName FName
UPCGNumberOfPointsSettings = {}



---@class UPCGOuterIntersectionSettings : UPCGSettingsWithDynamicInputs
---@field DensityFunction EPCGIntersectionDensityFunction
---@field bIgnorePinsWithNoInput boolean
UPCGOuterIntersectionSettings = {}



---@class UPCGParamData : UPCGData
---@field MetaData UPCGMetadata
---@field NameMap TMap<FName, int64>
---@field bHasCachedLastSelector boolean
---@field CachedLastSelector FPCGAttributePropertyInputSelector
UPCGParamData = {}

---@return UPCGMetadata
function UPCGParamData:MutableMetadata() end
---@param InName FName
---@return int64
function UPCGParamData:FindOrAddMetadataKey(InName) end
---@param InName FName
---@return int64
function UPCGParamData:FindMetadataKey(InName) end
---@param InName FName
---@return UPCGParamData
function UPCGParamData:FilterParamsByName(InName) end
---@param InKey int64
---@return UPCGParamData
function UPCGParamData:FilterParamsByKey(InKey) end
---@return UPCGMetadata
function UPCGParamData:ConstMetadata() end


---@class UPCGPin : UObject
---@field Node UPCGNode
---@field Label FName
---@field Edges TArray<UPCGEdge>
---@field Properties FPCGPinProperties
UPCGPin = {}

---@param InTooltip FText
function UPCGPin:SetToolTip(InTooltip) end
---@return FText
function UPCGPin:GetTooltip() end


---@class UPCGPointData : UPCGSpatialData
---@field Points TArray<FPCGPoint>
UPCGPointData = {}

---@param InPoints TArray<FPCGPoint>
function UPCGPointData:SetPoints(InPoints) end
---@return TArray<FPCGPoint>
function UPCGPointData:GetPoints() end
---@param Index int32
---@return FPCGPoint
function UPCGPointData:GetPoint(Index) end
---@param InData UPCGPointData
---@param InDataIndices TArray<int32>
function UPCGPointData:CopyPointsFrom(InData, InDataIndices) end


---@class UPCGPointExtentsModifierSettings : UPCGSettings
---@field Extents FVector
---@field Mode EPCGPointExtentsModifierMode
UPCGPointExtentsModifierSettings = {}



---@class UPCGPointFilterRangeSettings : UPCGSettings
---@field TargetAttribute FPCGAttributePropertyInputSelector
---@field MinThreshold FPCGPointFilterThresholdSettings
---@field MaxThreshold FPCGPointFilterThresholdSettings
UPCGPointFilterRangeSettings = {}



---@class UPCGPointFilterSettings : UPCGSettings
---@field Operator EPCGPointFilterOperator
---@field TargetAttribute FPCGAttributePropertyInputSelector
---@field bUseConstantThreshold boolean
---@field ThresholdAttribute FPCGAttributePropertyInputSelector
---@field bUseSpatialQuery boolean
---@field AttributeTypes FPCGMetadataTypesConstantStruct
UPCGPointFilterSettings = {}



---@class UPCGPointFromMeshSettings : UPCGSettings
---@field StaticMesh TSoftObjectPtr<UStaticMesh>
---@field MeshPathAttributeName FName
UPCGPointFromMeshSettings = {}



---@class UPCGPointMatchAndSetSettings : UPCGSettings
---@field MatchAndSetType TSubclassOf<UPCGMatchAndSetBase>
---@field MatchAndSetInstance UPCGMatchAndSetBase
---@field SetTarget FPCGAttributePropertyOutputSelector
---@field SetTargetType EPCGMetadataTypes
---@field SetTargetStringMode EPCGMetadataTypesConstantStructStringMode
UPCGPointMatchAndSetSettings = {}

---@param InMatchAndSetType TSubclassOf<UPCGMatchAndSetBase>
function UPCGPointMatchAndSetSettings:SetMatchAndSetType(InMatchAndSetType) end


---@class UPCGPolyLineData : UPCGSpatialDataWithPointCache
UPCGPolyLineData = {}


---@class UPCGPrimitiveData : UPCGSpatialDataWithPointCache
---@field VoxelSize FVector
---@field Primitive TWeakObjectPtr<UPrimitiveComponent>
---@field CachedBounds FBox
---@field CachedStrictBounds FBox
UPCGPrimitiveData = {}



---@class UPCGProjectionData : UPCGSpatialDataWithPointCache
---@field Source UPCGSpatialData
---@field Target UPCGSpatialData
---@field CachedBounds FBox
---@field CachedStrictBounds FBox
---@field ProjectionParams FPCGProjectionParams
UPCGProjectionData = {}



---@class UPCGProjectionSettings : UPCGSettings
---@field ProjectionParams FPCGProjectionParams
UPCGProjectionSettings = {}



---@class UPCGPropertyToParamDataSettings : UPCGSettings
---@field ActorSelector FPCGActorSelectorSettings
---@field bSelectComponent boolean
---@field ComponentClass TSubclassOf<UActorComponent>
---@field PropertyName FName
---@field bExtractObjectAndStruct boolean
---@field OutputAttributeName FName
---@field bAlwaysRequeryActors boolean
---@field ActorSelection EPCGActorSelection
---@field ActorSelectionTag FName
---@field ActorSelectionName FName
---@field ActorSelectionClass TSubclassOf<AActor>
---@field ActorFilter EPCGActorFilter
---@field bIncludeChildren boolean
UPCGPropertyToParamDataSettings = {}



---@class UPCGRenderTargetData : UPCGBaseTextureData
---@field RenderTarget UTextureRenderTarget2D
UPCGRenderTargetData = {}

---@param InRenderTarget UTextureRenderTarget2D
---@param InTransform FTransform
function UPCGRenderTargetData:Initialize(InRenderTarget, InTransform) end


---@class UPCGRerouteSettings : UPCGSettings
UPCGRerouteSettings = {}


---@class UPCGSanityCheckPointDataSettings : UPCGSettings
---@field MinPointCount int32
---@field MaxPointCount int32
UPCGSanityCheckPointDataSettings = {}



---@class UPCGSelectPointsSettings : UPCGSettings
---@field Ratio float
UPCGSelectPointsSettings = {}



---@class UPCGSelfPruningSettings : UPCGSettings
---@field PruningType EPCGSelfPruningType
---@field RadiusSimilarityFactor float
---@field bRandomizedPruning boolean
UPCGSelfPruningSettings = {}



---@class UPCGSettings : UPCGSettingsInterface
---@field Seed int32
---@field FilterOnTags TSet<FString>
---@field bPassThroughFilteredOutInputs boolean
---@field TagsAppliedOnOutput TSet<FString>
---@field bUseSeed boolean
---@field CachedOverridableParams TArray<FPCGSettingsOverridableParam>
UPCGSettings = {}



---@class UPCGSettingsInstance : UPCGSettingsInterface
---@field Settings UPCGSettings
UPCGSettingsInstance = {}



---@class UPCGSettingsInterface : UPCGData
---@field bEnabled boolean
---@field bDebug boolean
UPCGSettingsInterface = {}



---@class UPCGSettingsWithDynamicInputs : UPCGSettings
---@field DynamicInputPinProperties TArray<FPCGPinProperties>
UPCGSettingsWithDynamicInputs = {}



---@class UPCGSpatialData : UPCGData
---@field TargetActor TWeakObjectPtr<AActor>
---@field MetaData UPCGMetadata
---@field bHasCachedLastSelector boolean
---@field CachedLastSelector FPCGAttributePropertyInputSelector
UPCGSpatialData = {}

---@param InOther UPCGSpatialData
---@return UPCGUnionData
function UPCGSpatialData:UnionWith(InOther) end
---@param Context FPCGContext
---@return UPCGPointData
function UPCGSpatialData:ToPointDataWithContext(Context) end
---@return UPCGPointData
function UPCGSpatialData:ToPointData() end
---@param InOther UPCGSpatialData
---@return UPCGDifferenceData
function UPCGSpatialData:Subtract(InOther) end
---@param Transform FTransform
---@param Bounds FBox
---@param OutPoint FPCGPoint
---@param OutMetadata UPCGMetadata
---@return boolean
function UPCGSpatialData:SamplePoint(Transform, Bounds, OutPoint, OutMetadata) end
---@param InTransform FTransform
---@param InBounds FBox
---@param InParams FPCGProjectionParams
---@param OutPoint FPCGPoint
---@param OutMetadata UPCGMetadata
---@return boolean
function UPCGSpatialData:ProjectPoint(InTransform, InBounds, InParams, OutPoint, OutMetadata) end
---@param InOther UPCGSpatialData
---@param InParams FPCGProjectionParams
---@return UPCGSpatialData
function UPCGSpatialData:ProjectOn(InOther, InParams) end
---@return UPCGMetadata
function UPCGSpatialData:MutableMetadata() end
---@param InOther UPCGSpatialData
---@return UPCGIntersectionData
function UPCGSpatialData:IntersectWith(InOther) end
---@param InSource UPCGSpatialData
---@param InMetadataParentOverride UPCGMetadata
---@param bInheritMetadata boolean
---@param bInheritAttributes boolean
function UPCGSpatialData:InitializeFromData(InSource, InMetadataParentOverride, bInheritMetadata, bInheritAttributes) end
---@return boolean
function UPCGSpatialData:HasNonTrivialTransform() end
---@return FBox
function UPCGSpatialData:GetStrictBounds() end
---@return FVector
function UPCGSpatialData:GetNormal() end
---@return int32
function UPCGSpatialData:GetDimension() end
---@param InPosition FVector
---@return float
function UPCGSpatialData:GetDensityAtPosition(InPosition) end
---@return FBox
function UPCGSpatialData:GetBounds() end
---@return UPCGMetadata
function UPCGSpatialData:CreateEmptyMetadata() end
---@return UPCGMetadata
function UPCGSpatialData:ConstMetadata() end


---@class UPCGSpatialDataWithPointCache : UPCGSpatialData
---@field CachedPointData UPCGPointData
---@field CachedBoundedPointDataBoxes TArray<FBox>
---@field CachedBoundedPointData TArray<UPCGPointData>
UPCGSpatialDataWithPointCache = {}



---@class UPCGSpatialNoiseSettings : UPCGSettings
---@field Mode PCGSpatialNoiseMode
---@field EdgeMask2DMode PCGSpatialNoiseMask2DMode
---@field Iterations int32
---@field bTiling boolean
---@field Brightness float
---@field Contrast float
---@field ValueTarget FPCGAttributePropertyOutputNoSourceSelector
---@field RandomOffset FVector
---@field Transform FTransform
---@field VoronoiCellRandomness double
---@field VoronoiCellIDTarget FPCGAttributePropertyOutputNoSourceSelector
---@field bVoronoiOrientSamplesToCellEdge boolean
---@field TiledVoronoiResolution int32
---@field TiledVoronoiEdgeBlendCellCount int32
---@field EdgeBlendDistance float
---@field EdgeBlendCurveOffset float
---@field EdgeBlendCurveIntensity float
UPCGSpatialNoiseSettings = {}



---@class UPCGSpawnActorNode : UPCGBaseSubgraphNode
UPCGSpawnActorNode = {}


---@class UPCGSpawnActorSettings : UPCGBaseSubgraphSettings
---@field TemplateActorClass TSubclassOf<AActor>
---@field PostSpawnFunctionNames TArray<FName>
---@field Option EPCGSpawnActorOption
---@field bForceDisableActorParsing boolean
---@field GenerationTrigger EPCGSpawnActorGenerationTrigger
---@field bInheritActorTags boolean
---@field TagsToAddOnActors TArray<FName>
---@field bAllowTemplateActorEditing boolean
---@field TemplateActor AActor
---@field ActorOverrides TArray<FPCGActorPropertyOverride>
---@field RootActor TSoftObjectPtr<AActor>
---@field AttachOptions EPCGAttachOptions
---@field bSpawnByAttribute boolean
---@field SpawnAttribute FName
UPCGSpawnActorSettings = {}



---@class UPCGSplineData : UPCGPolyLineData
---@field SplineStruct FPCGSplineStruct
---@field CachedBounds FBox
UPCGSplineData = {}



---@class UPCGSplineProjectionData : UPCGProjectionData
---@field ProjectedPosition FInterpCurveVector2D
UPCGSplineProjectionData = {}



---@class UPCGSplineSamplerSettings : UPCGSettings
---@field SamplerParams FPCGSplineSamplerParams
UPCGSplineSamplerSettings = {}



---@class UPCGStaticMeshSpawnerSettings : UPCGSettings
---@field MeshSelectorType TSubclassOf<UPCGMeshSelectorBase>
---@field MeshSelectorParameters UPCGMeshSelectorBase
---@field InstanceDataPackerType TSubclassOf<UPCGInstanceDataPackerBase>
---@field InstanceDataPackerParameters UPCGInstanceDataPackerBase
---@field OutAttributeName FName
---@field bApplyMeshBoundsToPoints boolean
---@field TargetActor TSoftObjectPtr<AActor>
---@field Meshes TArray<FPCGStaticMeshSpawnerEntry>
UPCGStaticMeshSpawnerSettings = {}

---@param InMeshSelectorType TSubclassOf<UPCGMeshSelectorBase>
function UPCGStaticMeshSpawnerSettings:SetMeshSelectorType(InMeshSelectorType) end
---@param InInstancePackerType TSubclassOf<UPCGInstanceDataPackerBase>
function UPCGStaticMeshSpawnerSettings:SetInstancePackerType(InInstancePackerType) end


---@class UPCGSubgraphNode : UPCGBaseSubgraphNode
UPCGSubgraphNode = {}


---@class UPCGSubgraphSettings : UPCGBaseSubgraphSettings
---@field SubgraphInstance UPCGGraphInstance
---@field SubgraphOverride UPCGGraphInterface
UPCGSubgraphSettings = {}



---@class UPCGSubsystem : UTickableWorldSubsystem
UPCGSubsystem = {}


---@class UPCGSurfaceData : UPCGSpatialDataWithPointCache
---@field Transform FTransform
UPCGSurfaceData = {}



---@class UPCGSurfaceSamplerSettings : UPCGSettings
---@field PointsPerSquaredMeter float
---@field PointExtents FVector
---@field Looseness float
---@field bUnbounded boolean
---@field bApplyDensityToPoints boolean
---@field PointSteepness float
UPCGSurfaceSamplerSettings = {}



---@class UPCGTextureData : UPCGBaseTextureData
---@field Texture TWeakObjectPtr<UTexture2D>
UPCGTextureData = {}

---@param InTexture UTexture2D
---@param InTransform FTransform
function UPCGTextureData:Initialize(InTexture, InTransform) end


---@class UPCGTextureSamplerSettings : UPCGSettings
---@field Transform FTransform
---@field bUseAbsoluteTransform boolean
---@field Texture TSoftObjectPtr<UTexture2D>
---@field DensityFunction EPCGTextureDensityFunction
---@field ColorChannel EPCGTextureColorChannel
---@field TexelSize float
---@field bUseAdvancedTiling boolean
---@field Tiling FVector2D
---@field CenterOffset FVector2D
---@field Rotation float
---@field bUseTileBounds boolean
---@field TileBoundsMin FVector2D
---@field TileBoundsMax FVector2D
UPCGTextureSamplerSettings = {}



---@class UPCGTransformPointsSettings : UPCGSettings
---@field bApplyToAttribute boolean
---@field AttributeName FName
---@field OffsetMin FVector
---@field OffsetMax FVector
---@field bAbsoluteOffset boolean
---@field RotationMin FRotator
---@field RotationMax FRotator
---@field bAbsoluteRotation boolean
---@field ScaleMin FVector
---@field ScaleMax FVector
---@field bAbsoluteScale boolean
---@field bUniformScale boolean
---@field bRecomputeSeed boolean
UPCGTransformPointsSettings = {}



---@class UPCGTrivialSettings : UPCGSettings
UPCGTrivialSettings = {}


---@class UPCGUnionData : UPCGSpatialDataWithPointCache
---@field Data TArray<UPCGSpatialData>
---@field FirstNonTrivialTransformData UPCGSpatialData
---@field UnionType EPCGUnionType
---@field DensityFunction EPCGUnionDensityFunction
---@field CachedBounds FBox
---@field CachedStrictBounds FBox
---@field CachedDimension int32
UPCGUnionData = {}

---@param InA UPCGSpatialData
---@param InB UPCGSpatialData
function UPCGUnionData:Initialize(InA, InB) end
---@param InData UPCGSpatialData
function UPCGUnionData:AddData(InData) end


---@class UPCGUnionSettings : UPCGSettings
---@field Type EPCGUnionType
---@field DensityFunction EPCGUnionDensityFunction
UPCGUnionSettings = {}



---@class UPCGUnitTestDummyComponent : UActorComponent
---@field IntProperty int32
UPCGUnitTestDummyComponent = {}



---@class UPCGUserParameterGetSettings : UPCGSettings
---@field PropertyGuid FGuid
---@field PropertyName FName
UPCGUserParameterGetSettings = {}



---@class UPCGUserParametersData : UPCGData
---@field OriginalGraph UPCGGraphInterface
---@field UserParameters FInstancedStruct
UPCGUserParametersData = {}



---@class UPCGVolumeData : UPCGSpatialDataWithPointCache
---@field VoxelSize FVector
---@field Volume TWeakObjectPtr<AVolume>
---@field Bounds FBox
---@field StrictBounds FBox
UPCGVolumeData = {}



---@class UPCGVolumeSamplerSettings : UPCGSettings
---@field VoxelSize FVector
---@field bUnbounded boolean
---@field PointSteepness float
UPCGVolumeSamplerSettings = {}



---@class UPCGWorldQuerySettings : UPCGSettings
---@field QueryParams FPCGWorldVolumetricQueryParams
UPCGWorldQuerySettings = {}



---@class UPCGWorldRayHitData : UPCGSurfaceData
---@field World TWeakObjectPtr<UWorld>
---@field OriginatingComponent TWeakObjectPtr<UPCGComponent>
---@field Bounds FBox
---@field QueryParams FPCGWorldRayHitQueryParams
UPCGWorldRayHitData = {}



---@class UPCGWorldRayHitSettings : UPCGSettings
---@field QueryParams FPCGWorldRayHitQueryParams
UPCGWorldRayHitSettings = {}



---@class UPCGWorldVolumetricData : UPCGVolumeData
---@field World TWeakObjectPtr<UWorld>
---@field OriginatingComponent TWeakObjectPtr<UPCGComponent>
---@field QueryParams FPCGWorldVolumetricQueryParams
UPCGWorldVolumetricData = {}



---@class UPropertyBag : UScriptStruct
---@field PropertyDescs TArray<FPropertyBagPropertyDesc>
UPropertyBag = {}



---@class UPropertyBagMissingObject : UObject
UPropertyBagMissingObject = {}


