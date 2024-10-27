---@meta

---@class AAudioVisualizeUtil : AActor
---@field Audio UAudioComponent
---@field LoudnessAnalyzer ULoudnessNRT
---@field ConstantAnalyzer UConstantQNRT
AAudioVisualizeUtil = {}

---@param SoundWave USoundWave
---@param Percent float
function AAudioVisualizeUtil:OnAudioPlaybackPercentCallback(SoundWave, Percent) end


---@class AAutoMoveTaskAssembler : AAutoMovementMonitor
---@field Tasks TArray<AAutoMovementMonitor>
---@field TaskID int32
---@field PointsTaskIdList TArray<int32>
AAutoMoveTaskAssembler = {}

function AAutoMoveTaskAssembler:UpdateProcessingState() end
---@param InLocation FVector
---@param InRotator FRotator
function AAutoMoveTaskAssembler:TransportSubTaskViewingPosition(InLocation, InRotator) end
function AAutoMoveTaskAssembler:InitAutoMoveAssembler() end
---@param InRotateType ERotateType
function AAutoMoveTaskAssembler:IncreaseSubTaskViewingRotation(InRotateType) end


---@class AAutoMovementMonitor : AActor
---@field AutoMovePattern UAutoMovementPattern
---@field ReportFilePath FString
---@field PathPoints TArray<FVector>
---@field CachedPathPoints TArray<FVector>
---@field bLogProcessingState boolean
---@field bIsReadyToProcess boolean
---@field bPitchingPositively boolean
---@field TargetPositionIndex int32
---@field TargetYawIndex int32
---@field TargetPitchIndex int32
---@field TargetPosition FVector
---@field TargetRotation FRotator
---@field ViewingPhaseIndex int32
---@field AutoMoveStartTimeSinceAppStarted FString
---@field LastPointEndTimestamp float
AAutoMovementMonitor = {}

---@param InLocation FVector
---@param InRotator FRotator
---@param bProxyCall boolean
function AAutoMovementMonitor:TransportViewingPosition(InLocation, InRotator, bProxyCall) end
---@param VirtualPlayerBaseClass UClass
---@param SpawningOffset FVector
function AAutoMovementMonitor:SwitchToVirtualPawn(VirtualPlayerBaseClass, SpawningOffset) end
function AAutoMovementMonitor:SwitchRotateDirection() end
function AAutoMovementMonitor:StopAutoMovement() end
---@param bEnabled boolean
function AAutoMovementMonitor:SetSparseVersionEnabled(bEnabled) end
function AAutoMovementMonitor:ResumeAutoMovement() end
function AAutoMovementMonitor:ResetYawRotation() end
function AAutoMovementMonitor:ResetTransportAttemptedCount() end
function AAutoMovementMonitor:ResetPitchRotation() end
function AAutoMovementMonitor:ResetAutoMovement() end
function AAutoMovementMonitor:RegisterAutoMovementConsoleCommands() end
---@param InLocation FVector
---@param InRotator FRotator
function AAutoMovementMonitor:ProcessAutoMovement(InLocation, InRotator) end
function AAutoMovementMonitor:PreAutoMovement() end
function AAutoMovementMonitor:PostAutoMovement() end
function AAutoMovementMonitor:PauseAutoMovement() end
function AAutoMovementMonitor:LoadPathPoints() end
---@param RotateType ERotateType
---@param bProxyCall boolean
function AAutoMovementMonitor:IncreaseViewingRotation(RotateType, bProxyCall) end
---@return boolean
function AAutoMovementMonitor:HasCompletedYawingObservation() end
---@return boolean
function AAutoMovementMonitor:HasCompletedPitchingObservation() end
---@param InRotatorMask FVector
---@param ViewingPattern FAutoMovementViewingPattern
---@return FRotator
function AAutoMovementMonitor:GetRotationIncrement(InRotatorMask, ViewingPattern) end
---@param InStartTimestamp int64
---@return FString
function AAutoMovementMonitor:GetPointExecutionDurationInfo(InStartTimestamp) end
function AAutoMovementMonitor:ExitAppOnAutoMoveFinished() end
function AAutoMovementMonitor:EnableAutoMovement() end
---@param InStatName FString
---@param InTileCount int32
function AAutoMovementMonitor:DrawStatOnHeatmap(InStatName, InTileCount) end
---@param InPoints TArray<FVector>
function AAutoMovementMonitor:CreatePointInstances(InPoints) end
---@param InRotator FRotator
function AAutoMovementMonitor:CheckHitRotation(InRotator) end
---@param InLocation FVector
---@return boolean
function AAutoMovementMonitor:CheckHitLocation(InLocation) end
---@return boolean
function AAutoMovementMonitor:CheckAutoMovementCompleted() end
function AAutoMovementMonitor:CaptureViewingInfo() end


---@class ABGWBlockingVolume : AVolume
---@field bNavModify boolean
---@field bMaskFillCollisionUnderneathForNavmesh boolean
ABGWBlockingVolume = {}



---@class ABattleCloud : AActor
---@field EnableSim boolean
---@field MipmapDistanceScale float
ABattleCloud = {}



---@class ACLRBindingTrigger : AActor
ACLRBindingTrigger = {}

function ACLRBindingTrigger:GenerateClrBindingCode() end


---@class ADEPRECATED_GenerateLandscapeHeightfieldVolume : AVolume
ADEPRECATED_GenerateLandscapeHeightfieldVolume = {}


---@class AFoliageInteractiveVolume : ATriggerBox
AFoliageInteractiveVolume = {}


---@class AGSEWaterBodyRiver : AWaterBodyRiver
AGSEWaterBodyRiver = {}


---@class AGSE_SequenceMasterCppBase : AActor
AGSE_SequenceMasterCppBase = {}


---@class AGSNavigationChunkContainerActor : APartitionActor
---@field ChunkActorGridSize uint32
AGSNavigationChunkContainerActor = {}



---@class AGSWCStreamingSourceActor : AActor
---@field StreamingSorceComponent UGSWorldCompositionStreamingSourceComponent
AGSWCStreamingSourceActor = {}



---@class AGenerateLandscapeVolume : AVolume
---@field ExportFilename FString
---@field LandscapeHeightLiftUp float
---@field ResolutionPerComponent int32
---@field LandscapeMaterial UMaterialInterface
---@field LandscapeHoleMaterial UMaterialInterface
---@field StaticMeshToPMGrassList UDataAsset
---@field IgnoreActorTags TArray<FName>
---@field ComponentScaleXY FVector2D
---@field OriginPoint FVector3d
---@field MaxDeltaZ float
---@field ComponentMinIndex FIntPoint
---@field ComponentNum FIntPoint
---@field HeightfieldResolution FIntPoint
---@field LandscapeActor ALandscape
---@field LandscapeStreamingProxies TArray<AActor>
AGenerateLandscapeVolume = {}



---@class ALandscapeHeightModifierVolume : AVolume
---@field GenerateVolume AGenerateLandscapeVolume
---@field LandscapeActor ALandscape
ALandscapeHeightModifierVolume = {}



---@class ALandscapePhysicalMatModifierVolume : AVolume
---@field GenerateVolume AGenerateLandscapeVolume
---@field LandscapeActor ALandscape
ALandscapePhysicalMatModifierVolume = {}



---@class ALayerSceneInfo : AActor
---@field LandscapeActor ALandscape
---@field ActorSpaceExtendsMin FIntPoint
---@field ActorSpaceExtendsMax FIntPoint
---@field LandscapeTransform FTransform
---@field AllLandscapeLayerData FAllLayerData
---@field LayerPreviewInEditor TArray<UTexture>
ALayerSceneInfo = {}

---@param WorldPos FVector
---@param LayerIndex int32
---@param Nearest boolean
---@param Value float
---@return boolean
function ALayerSceneInfo:QueryWeightInfo(WorldPos, LayerIndex, Nearest, Value) end
function ALayerSceneInfo:GenerateLayeredInfo() end
function ALayerSceneInfo:BeginPlayCS() end


---@class APrefabStaticMeshActor : AStaticMeshActor
APrefabStaticMeshActor = {}


---@class AVATAnimMachineInst : AActor
---@field AnimClipsConfig UVATAnimClipsInfoConfig
---@field AnimMachineConfig FVATAnimMachineConfig
---@field DynamicMIs TArray<UMaterialInstanceDynamic>
---@field DebugAnimProgress float
---@field WindParamLerpSpeed float
---@field bLerpWindDirection boolean
---@field bLerpWindIntensity boolean
AVATAnimMachineInst = {}

---@param InWindIntensity float
function AVATAnimMachineInst:UpdateWindIntensity(InWindIntensity) end
---@param InWindDirection FVector2D
function AVATAnimMachineInst:UpdateWindDirection(InWindDirection) end
---@param InBlendRatio float
function AVATAnimMachineInst:UpdateBlendRatio(InBlendRatio) end
---@param InPlaySpeed float
function AVATAnimMachineInst:UpdateAnimSpeed(InPlaySpeed) end
---@param InAnimProgress float
function AVATAnimMachineInst:UpdateAnimProgress(InAnimProgress) end
function AVATAnimMachineInst:StopVATAnim() end
function AVATAnimMachineInst:PlayVATAnim() end
function AVATAnimMachineInst:InitVATAnimMachine() end


---@class AVATNiagaraInst : AActor
AVATNiagaraInst = {}

function AVATNiagaraInst:UpdateVATAnim() end
---@param VariableName FString
---@param TargetValue FVector
function AVATNiagaraInst:UpdateNiagaraVectorVariable(VariableName, TargetValue) end
---@param VariableName FString
---@param TargetValue FVector2D
function AVATNiagaraInst:UpdateNiagaraVector2Variable(VariableName, TargetValue) end
---@param VariableName FString
---@param TargetValue float
function AVATNiagaraInst:UpdateNiagaraFloatVariable(VariableName, TargetValue) end
function AVATNiagaraInst:ResetVATAnim() end
function AVATNiagaraInst:ResetNiagaraSystem() end
function AVATNiagaraInst:InitVATNiagaraInst() end


---@class AVFXAutoPlayer : AActor
---@field PlayList TArray<FString>
---@field InternalPlayList TArray<UNiagaraSystem>
---@field PlayingPtr int32
---@field MaxLifeSpan float
---@field AutoMovingRange float
---@field AutoMovingSpeed float
AVFXAutoPlayer = {}

function AVFXAutoPlayer:StopPlaying() end
function AVFXAutoPlayer:StartPlaying() end
---@param InTargetNiagaraPtr int32
function AVFXAutoPlayer:PlayNiagara(InTargetNiagaraPtr) end
---@return boolean
function AVFXAutoPlayer:ListCompletedPlaying() end
---@return TArray<UNiagaraSystem>
function AVFXAutoPlayer:GetInternalPlayList() end
function AVFXAutoPlayer:FlushPlaying() end
function AVFXAutoPlayer:DestroyAllNiagaras() end
---@param bNumDecreased boolean
---@return boolean
function AVFXAutoPlayer:CurNiagaraStatusChanged(bNumDecreased) end
---@param InFolder FString
function AVFXAutoPlayer:BuildPlayList(InFolder) end


---@class FActorInfo
FActorInfo = {}


---@class FAllLayerData
---@field AllLayerData TArray<FLayerData>
---@field HeightData TArray<uint16>
FAllLayerData = {}



---@class FAnimNotifyEventSimple
---@field StartTime float
---@field Duration float
---@field NotifyName FName
---@field Notify UAnimNotify
---@field NotifyStateClass UAnimNotifyState
---@field GuidString FString
---@field TrackIndex int32
FAnimNotifyEventSimple = {}



---@class FAsyncLineTraceReq
---@field ReqID int32
---@field TraceStart FVector
---@field TraceEnd FVector
FAsyncLineTraceReq = {}



---@class FAsyncLineTraceReqArray
---@field ReqArr TArray<FAsyncLineTraceReq>
FAsyncLineTraceReqArray = {}



---@class FAsyncLineTraceSingleResult
---@field ReqID int32
---@field HitResults TArray<FHitResult>
FAsyncLineTraceSingleResult = {}



---@class FAutoMovementHeatmapConfig
---@field HeatmapPlaneOrigin FVector
---@field HeatmapPlaneSize FVector
---@field HeatmapTexParentFolder FString
---@field HeatmapBaseImgPath FString
---@field HeatmapProfilingFilePath FString
---@field HeatmapIntensityScale float
---@field HeatmapTileCount int32
FAutoMovementHeatmapConfig = {}



---@class FAutoMovementViewingPattern
---@field PathPointsFilePath FString
---@field bUseSparseVersion boolean
---@field bVisualizeScatteredPoints boolean
---@field PointInstanceScale float
---@field InitialRotation FRotator
---@field DirectionCount FIntVector
---@field TotalPitchDegree float
---@field TotalYawDegree float
---@field DistanceCheckBias float
---@field RotationCheckBias float
---@field PoseTickTotalCount int32
---@field bUseVirtualPlayer boolean
---@field bAttractEnemy boolean
FAutoMovementViewingPattern = {}



---@class FBGUColorParameterInfoAndCurves
---@field ParameterInfo FMaterialParameterInfo
---@field BGUParameterInfo FBGUMaterialParameterInfo
---@field RedCurve FMovieSceneFloatChannel
---@field GreenCurve FMovieSceneFloatChannel
---@field BlueCurve FMovieSceneFloatChannel
---@field AlphaCurve FMovieSceneFloatChannel
FBGUColorParameterInfoAndCurves = {}



---@class FBGUMaterialParameterInfo : FMaterialParameterInfo
---@field LayerMaterial UMaterialFunctionInterface
---@field BlendMaterial UMaterialFunctionInterface
FBGUMaterialParameterInfo = {}



---@class FBGUMovieSceneComponentMaterialSectionTemplate : FMovieSceneParameterSectionTemplate
---@field ScalarParams TArray<FBGUScalarParameterInfoAndCurve>
---@field VectorParams TArray<FBGUVectorParameterInfoAndCurves>
---@field ColorParams TArray<FBGUColorParameterInfoAndCurves>
---@field MaterialIndex int32
---@field bAffectClothMaterial boolean
---@field bAffectAllMaterial boolean
FBGUMovieSceneComponentMaterialSectionTemplate = {}



---@class FBGUScalarParameterInfoAndCurve
---@field ParameterInfo FMaterialParameterInfo
---@field BGUParameterInfo FBGUMaterialParameterInfo
---@field ParameterCurve FMovieSceneFloatChannel
FBGUScalarParameterInfoAndCurve = {}



---@class FBGUVectorParameterInfoAndCurves
---@field ParameterInfo FMaterialParameterInfo
---@field BGUParameterInfo FBGUMaterialParameterInfo
---@field XCurve FMovieSceneFloatChannel
---@field YCurve FMovieSceneFloatChannel
---@field ZCurve FMovieSceneFloatChannel
FBGUVectorParameterInfoAndCurves = {}



---@class FBehaviorTreeNodeData
---@field TaskNodeList TArray<UBTTaskNode>
FBehaviorTreeNodeData = {}



---@class FBilinearSamplePoint
FBilinearSamplePoint = {}


---@class FCachedActivityIntentReceivedParamCS
---@field UserId FString
---@field ActivityId FString
---@field SessionId FString
FCachedActivityIntentReceivedParamCS = {}



---@class FCapturedInfoArrayPerPoint
---@field InfoMap TMap<FString, FCapturedInfoSequencePerPoint>
FCapturedInfoArrayPerPoint = {}



---@class FCapturedInfoSequencePerPoint
---@field CapturedInfoSequencePerPoint TArray<float>
---@field StatType EGSCapturedStatType
FCapturedInfoSequencePerPoint = {}



---@class FColorBufferPtr
---@field B uint8
---@field G uint8
---@field R uint8
---@field A uint8
---@field AlignmentDummy int32
FColorBufferPtr = {}



---@class FFadeObjStruct
---@field primitiveComp UPrimitiveComponent
---@field baseMatInterface TArray<UMaterialInterface>
---@field fadeMID TArray<UMaterialInstanceDynamic>
---@field fadeCurrent float
---@field bToHide boolean
FFadeObjStruct = {}



---@class FGSCapturedStatResult
---@field StatName FString
---@field Value float
---@field StatType EGSCapturedStatType
FGSCapturedStatResult = {}



---@class FGSConnectionInfo
---@field URLInfo FString
---@field InSpeedByte int32
---@field OutSpeedByte int32
---@field NetLagMS double
---@field PlayerId FUniqueNetIdRepl
---@field PktLostRate float
FGSConnectionInfo = {}



---@class FGSInputActionKeyMapping
---@field ActionName FName
---@field bShift boolean
---@field bCtrl boolean
---@field bAlt boolean
---@field bCmd boolean
---@field Key FName
FGSInputActionKeyMapping = {}



---@class FGSInputAxisKeyMapping
---@field AxisName FName
---@field Scale float
---@field Key FName
FGSInputAxisKeyMapping = {}



---@class FGSMonitorInfo
---@field Name FString
---@field ID FString
---@field bIsPrimary boolean
---@field NativeResolution FIntPoint
---@field DisplayResolution FIntPoint
FGSMonitorInfo = {}



---@class FGSMontageAndNotifiesWarp
---@field AM UAnimMontage
---@field ANEArr TArray<FAnimNotifyEvent>
FGSMontageAndNotifiesWarp = {}



---@class FGSNiagaraSysParam
---@field Name FName
---@field ParamType EGSNiagaraSysParamType
---@field FloatValue float
---@field BoolValue boolean
---@field IntValue int32
---@field VectorValue FVector
---@field LinearColorValue FLinearColor
FGSNiagaraSysParam = {}



---@class FGSNotifyEventTimeInfo
---@field TriggerTime float
---@field EndTriggerTime float
FGSNotifyEventTimeInfo = {}



---@class FGSPathPointStatInfo
---@field StatNameAndValue TMap<FString, float>
---@field position FVector
---@field Duration FString
FGSPathPointStatInfo = {}



---@class FGSRichCaltureConfig
---@field LinePercent float
---@field Margin FMargin
FGSRichCaltureConfig = {}



---@class FGSScalabilityQualities
---@field ResolutionQualityScale float
---@field ViewDistanceQuality EScalabilityQuality
---@field AntiAliasingQuality EScalabilityQuality
---@field ShadowQuality EScalabilityQuality
---@field PostProcessQuality EScalabilityQuality
---@field TextureQuality EScalabilityQuality
---@field EffectsQuality EScalabilityQuality
---@field FoliageQuality EScalabilityQuality
---@field ShadingQuality EScalabilityQuality
---@field GlobalIlluminationQuality EScalabilityQuality
---@field ReflectionQuality EScalabilityQuality
FGSScalabilityQualities = {}



---@class FGamePresets
---@field difficulty int32
---@field Priority int32
---@field invertVerticalViewFor1stPersonView int32
---@field invertHorizontalViewFor1stPersonView int32
---@field invertVerticalViewFor3rdPersonView int32
---@field invertHorizontalViewFor3rdPersonView int32
---@field displaySubtitles int32
---@field audioLanguage int32
FGamePresets = {}



---@class FGridlyTableCell
---@field ColumnId FString
---@field DependencyStatus FString
---@field Value FString
FGridlyTableCell = {}



---@class FGridlyTableRow
---@field ID FString
---@field Path FString
---@field Cells TArray<FGridlyTableCell>
FGridlyTableRow = {}



---@class FIntPtr
---@field LowerBits int32
---@field HigherBits int32
FIntPtr = {}



---@class FLandscapeReaderAllWeightData
---@field AllLayerData TArray<FLandscapeReaderWeightData>
FLandscapeReaderAllWeightData = {}



---@class FLandscapeReaderWeightData
---@field LayerName FString
---@field PhysicMatName FString
---@field SurfaceType uint8
---@field LayerUsageDebugColor FLinearColor
---@field arrData TArray<uint8>
FLandscapeReaderWeightData = {}



---@class FLayerData
---@field LayerName FString
---@field PhysicMatName FString
---@field SurfaceType uint8
---@field LayerUsageDebugColor FLinearColor
---@field WeightData TArray<uint8>
FLayerData = {}



---@class FMesh
---@field Indices TArray<int32>
---@field Positions TArray<FVector3f>
FMesh = {}



---@class FProjResult
---@field IsInSight boolean
---@field IsInRound boolean
---@field ScrPos FVector2D
---@field RectAngle float
---@field IndicatorType int32
---@field Scale float
---@field SizeScale FVector2D
FProjResult = {}



---@class FProjWidgetInfo
---@field Widget UWidget
---@field WorldPos FVector
---@field RoundRect UGSRoundRectQuick
---@field UseRoundRectCalSize boolean
---@field RoundRectCalSize FVector2D
---@field HideRoundRect UGSRoundRectQuick
---@field NeedCheckProjView boolean
---@field ShowDistanceMax float
---@field UseDistanceZoom boolean
---@field MinScale float
---@field MaxScale float
---@field ScaleRate float
---@field XMinScale float
---@field XMaxScale float
---@field YMinScale float
---@field YMaxScale float
FProjWidgetInfo = {}



---@class FRTAvatarRectLightConfig
---@field LightTransform FTransform
---@field Intensity float
---@field LightColor FLinearColor
---@field SourceWidth float
---@field SourceHeight float
FRTAvatarRectLightConfig = {}



---@class FSequenceBindingIDInCS
---@field SequenceID int32
---@field Space int32
---@field Guid FGuid
FSequenceBindingIDInCS = {}



---@class FStatInfoThreshold
---@field StatName FString
---@field Label FString
---@field Value float
---@field ValueString FString
---@field MediumThreshold float
---@field HighThreshold float
---@field SevereThreshold float
FStatInfoThreshold = {}



---@class FStatUISimulatedGraphicsCardScaleFactor
---@field GraphicsCard EStatUISimulatedGraphicsCard
---@field PerformanceScaleFactorMap TMap<FString, float>
FStatUISimulatedGraphicsCardScaleFactor = {}



---@class FTamerRefLineTraceContext
---@field RefID int32
---@field TraceEnds TArray<FVector>
---@field Location FVector
---@field CapsuleHalfHeight float
FTamerRefLineTraceContext = {}



---@class FTextFoldingConfig
---@field BeginIndex int32
---@field EndIndex int32
---@field DisplayWidth int32
---@field SubstituteString FString
FTextFoldingConfig = {}



---@class FVATAnimClipInfo
---@field State int32
---@field StartFrame int32
---@field EndFrame int32
---@field Name FString
FVATAnimClipInfo = {}



---@class FVATAnimMachineConfig
---@field PlaySpeed float
---@field FrameRate float
---@field BlendRatio float
---@field Loop boolean
---@field ClipTexture UTexture2D
---@field WindDirectionX float
---@field WindDirectionY float
---@field WindIntensity float
---@field IdleClip int32
FVATAnimMachineConfig = {}



---@class UActorComponentCS : UActorComponent
UActorComponentCS = {}


---@class UAlphaScanButton : UButton
---@field AdvancedHitTexture UTexture2D
---@field AdvancedHitAlpha int32
UAlphaScanButton = {}

---@param InTexture UTexture2D
function UAlphaScanButton:SetAdvancedHitTexture(InTexture) end
---@param InAlpha int32
function UAlphaScanButton:SetAdvancedHitAlpha(InAlpha) end


---@class UAssetDataArray : UObject
---@field AssetDataArr TArray<FAssetData>
---@field ActiveIdx int32
UAssetDataArray = {}

---@param Idx int32
function UAssetDataArray:SetActiveIdx(Idx) end
---@return int32
function UAssetDataArray:GetAssetDataCount() end


---@class UAudioVisualizeBox : UUserWidget
---@field LayoutWidget UImage
---@field FreqNum int32
---@field LoudnessNum int32
---@field FreqSpecInfoArray TArray<float>
---@field LoudnessInfoArray TArray<FVector2D>
---@field FreqThickness float
---@field FreqColor FLinearColor
---@field FreqHeightFinalScale float
---@field FreqHeightScale float
---@field FreqPaintPower float
---@field LoudnessThickness float
---@field LoudnessColor FLinearColor
---@field LoudnessHeightRange FVector2D
---@field LoudnessRandomScaleFactor float
---@field OffsetInWidget FVector2D
---@field PaintFreq boolean
---@field PaintLoudness boolean
---@field FreqDisturbInterval float
UAudioVisualizeBox = {}

function UAudioVisualizeBox:StopPainting() end
function UAudioVisualizeBox:StartPainting() end
---@param InLoudness FVector2D
function UAudioVisualizeBox:SetLoudnessInfo(InLoudness) end
---@param InFreqNum int32
function UAudioVisualizeBox:SetFreqNum(InFreqNum) end
---@param InConstantInfo TArray<float>
function UAudioVisualizeBox:SetFreqInfo(InConstantInfo) end
---@param InLoudness FVector2D
---@param InConstantInfo TArray<float>
function UAudioVisualizeBox:SetAudioInfo(InLoudness, InConstantInfo) end
function UAudioVisualizeBox:ResetVisualizing() end
function UAudioVisualizeBox:PausePainting() end


---@class UAutoMovementPattern : UPrimaryDataAsset
---@field TickInterval float
---@field ViewingPattern FAutoMovementViewingPattern
---@field HeatmapConfig FAutoMovementHeatmapConfig
UAutoMovementPattern = {}



---@class UAutoMovementUtil : UBlueprintFunctionLibrary
UAutoMovementUtil = {}

---@param InRootFolderPath FString
function UAutoMovementUtil:SetVfxAutoPlayerRootFolderPath(InRootFolderPath) end
---@param InPoints TArray<FVector>
---@param InFilePathUnderProjFolder FString
function UAutoMovementUtil:SaveOfflinePathPoints(InPoints, InFilePathUnderProjFolder) end
---@param InReportFilePaths TArray<FString>
---@param OutputMergedFileName FString
---@return boolean
function UAutoMovementUtil:MergeMultiTextureMipReports(InReportFilePaths, OutputMergedFileName) end
---@param InDirectoryUnderProjDir FString
---@param InFileNameKeyword FString
---@param OutputMergedFileName FString
---@return boolean
function UAutoMovementUtil:MergeMipReportsWithFileNameKeyword(InDirectoryUnderProjDir, InFileNameKeyword, OutputMergedFileName) end
---@param InFileNameUnderProjFolder FString
---@param AllPathPointStatInfo TArray<FGSPathPointStatInfo>
---@param PointNum int32
---@return boolean
function UAutoMovementUtil:LoadStatsCapturerReport(InFileNameUnderProjFolder, AllPathPointStatInfo, PointNum) end
---@param RawCapturedData TArray<FGSCapturedStatResult>
---@param CapturedInfoArrayPerPoint FCapturedInfoArrayPerPoint
---@return FCapturedInfoArrayPerPoint
function UAutoMovementUtil:InsertIntoCapturedInfoArrayPerPoint(RawCapturedData, CapturedInfoArrayPerPoint) end
---@return FString
function UAutoMovementUtil:GetVfxAutoPlayerRootFolderPath() end
---@param InFilePathUnderProjDir FString
---@param bUseSparsePoints boolean
---@return TArray<FVector>
function UAutoMovementUtil:GetOfflinePathPoints(InFilePathUnderProjDir, bUseSparsePoints) end
---@return int64
function UAutoMovementUtil:GetNowTimestamp() end
---@param InCapturedInfoPerPoint FCapturedInfoArrayPerPoint
---@return TMap<FString, float>
function UAutoMovementUtil:GetCurPointProcessedMetricsMap(InCapturedInfoPerPoint) end
---@param Time int64
---@return FDateTime
function UAutoMovementUtil:FromTimestamp(Time) end
---@param InDuration float
---@return FString
function UAutoMovementUtil:FormatTimeSeconds(InDuration) end
---@param InDuration double
---@param NumDigits int32
---@return FString
function UAutoMovementUtil:FormatTimeAuto(InDuration, NumDigits) end
---@param InString FString
---@return FString
function UAutoMovementUtil:ExtractDateTimeInfo(InString) end
---@param InPathPointStatsInfo TArray<FGSPathPointStatInfo>
---@param InFilename FString
---@param bAppend boolean
---@param bOutputHeader boolean
function UAutoMovementUtil:ExportStatsCapturedReport(InPathPointStatsInfo, InFilename, bAppend, bOutputHeader) end
---@param BatchSize int32
---@param TotalPointNum int32
---@param InPathPointStatsInfo TArray<FGSPathPointStatInfo>
---@param InFilename FString
---@param bLastBatch boolean
---@param bOutputHeader boolean
---@return boolean
function UAutoMovementUtil:ExportCapturedInfoBatch(BatchSize, TotalPointNum, InPathPointStatsInfo, InFilename, bLastBatch, bOutputHeader) end
---@param InPoints TArray<FVector>
---@param InFilePathUnderProjFolder FString
function UAutoMovementUtil:AppendOfflinePathPoints(InPoints, InFilePathUnderProjFolder) end
---@param CapturedInfoNameList TArray<FString>
---@param InFilename FString
function UAutoMovementUtil:AppendHeaderToCapturedReport(CapturedInfoNameList, InFilename) end
---@param InFilename FString
---@param MetricsNum int32
---@param PointNum int32
function UAutoMovementUtil:AppendGeneralStatisticsToCapturedReport(InFilename, MetricsNum, PointNum) end


---@class UAutoOnlineSubsystemTest : UObject
UAutoOnlineSubsystemTest = {}

function UAutoOnlineSubsystemTest:TestLogin() end
function UAutoOnlineSubsystemTest:TestGSSdkAuthToken() end


---@class UBGUAsyncLineTraceObject : UObject
---@field IgnoreActors TArray<AActor>
UBGUAsyncLineTraceObject = {}

---@param InLineTraceObject UBGUAsyncLineTraceObject
---@param ReqID int32
---@param Start FVector
---@param End FVector
---@param ObjectTypes TArray<EObjectTypeQuery>
---@param bTraceComplex boolean
---@param bDebug boolean
function UBGUAsyncLineTraceObject:RequestAsyncLineTraceByObjectTypeSingleStatic(InLineTraceObject, ReqID, Start, End, ObjectTypes, bTraceComplex, bDebug) end
---@param ReqList TArray<FAsyncLineTraceReq>
---@param ObjectTypes TArray<EObjectTypeQuery>
---@param bTraceComplex boolean
---@param bDebug boolean
function UBGUAsyncLineTraceObject:RequestAsyncLineTraceByObjectTypeSingle_Batch(ReqList, ObjectTypes, bTraceComplex, bDebug) end
---@param ReqID int32
---@param Start FVector
---@param End FVector
---@param ObjectTypes TArray<EObjectTypeQuery>
---@param bTraceComplex boolean
---@param bDebug boolean
function UBGUAsyncLineTraceObject:RequestAsyncLineTraceByObjectTypeSingle(ReqID, Start, End, ObjectTypes, bTraceComplex, bDebug) end
---@param InLineTraceObject UBGUAsyncLineTraceObject
---@param ReqID int32
---@param Start FVector
---@param End FVector
---@param TraceChannel ECollisionChannel
---@param bTraceComplex boolean
---@param bDebug boolean
function UBGUAsyncLineTraceObject:RequestAsyncLineTraceByChannelSingleStatic(InLineTraceObject, ReqID, Start, End, TraceChannel, bTraceComplex, bDebug) end
---@param ReqList TArray<FAsyncLineTraceReq>
---@param TraceChannel ECollisionChannel
---@param bTraceComplex boolean
---@param bDebug boolean
function UBGUAsyncLineTraceObject:RequestAsyncLineTraceByChannelSingle_Batch(ReqList, TraceChannel, bTraceComplex, bDebug) end
---@param ReqID int32
---@param Start FVector
---@param End FVector
---@param TraceChannel ECollisionChannel
---@param bTraceComplex boolean
---@param bDebug boolean
function UBGUAsyncLineTraceObject:RequestAsyncLineTraceByChannelSingle(ReqID, Start, End, TraceChannel, bTraceComplex, bDebug) end
---@param ReqID int32
---@param Start FVector
---@param End FVector
---@param TraceChannel ECollisionChannel
---@param bTraceComplex boolean
---@param bDebug boolean
function UBGUAsyncLineTraceObject:RequestAsyncLineTraceByChannelOnlyCheck(ReqID, Start, End, TraceChannel, bTraceComplex, bDebug) end
---@param OutAsyncLineTraceResults TArray<FAsyncLineTraceSingleResult>
---@return int32
function UBGUAsyncLineTraceObject:GetAndCleanLineTraceResults(OutAsyncLineTraceResults) end


---@class UBGUMovieSceneComponentMaterialTrack : UMovieSceneMaterialTrack
---@field MaterialIndex int32
UBGUMovieSceneComponentMaterialTrack = {}



---@class UBGUMovieSceneParameterSection : UMovieSceneSection
---@field bAffectClothMaterial boolean
---@field bAffectAllMaterial boolean
---@field ScalarParameterInfosAndCurves TArray<FBGUScalarParameterInfoAndCurve>
---@field VectorParameterInfosAndCurves TArray<FBGUVectorParameterInfoAndCurves>
---@field ColorParameterInfosAndCurves TArray<FBGUColorParameterInfoAndCurves>
UBGUMovieSceneParameterSection = {}

---@param InParameterInfoName FName
---@return boolean
function UBGUMovieSceneParameterSection:RemoveVectorParameterByName(InParameterInfoName) end
---@param InParameterInfo FBGUMaterialParameterInfo
---@return boolean
function UBGUMovieSceneParameterSection:RemoveVectorParameter(InParameterInfo) end
---@param InParameterInfoName FName
---@return boolean
function UBGUMovieSceneParameterSection:RemoveScalarParameterByName(InParameterInfoName) end
---@param InParameterInfo FBGUMaterialParameterInfo
---@return boolean
function UBGUMovieSceneParameterSection:RemoveScalarParameter(InParameterInfo) end
---@param InParameterInfoName FName
---@return boolean
function UBGUMovieSceneParameterSection:RemoveColorParameterByName(InParameterInfoName) end
---@param InParameterInfo FBGUMaterialParameterInfo
---@return boolean
function UBGUMovieSceneParameterSection:RemoveColorParameter(InParameterInfo) end
---@param ParameterInfos TSet<FBGUMaterialParameterInfo>
function UBGUMovieSceneParameterSection:GetParameterInfos(ParameterInfos) end
---@param InParameterInfo FBGUMaterialParameterInfo
---@param InTime FFrameNumber
---@param InValue FVector
function UBGUMovieSceneParameterSection:AddVectorParameterKey(InParameterInfo, InTime, InValue) end
---@param InParameterInfo FBGUMaterialParameterInfo
---@param InTime FFrameNumber
---@param InValue float
function UBGUMovieSceneParameterSection:AddScalarParameterKey(InParameterInfo, InTime, InValue) end
---@param InParameterInfo FBGUMaterialParameterInfo
---@param InTime FFrameNumber
---@param InValue FLinearColor
function UBGUMovieSceneParameterSection:AddColorParameterKey(InParameterInfo, InTime, InValue) end


---@class UBenchmarkMonitorSubsystem : UEngineSubsystem
UBenchmarkMonitorSubsystem = {}


---@class UExedreScriptedTexture : USceneComponent
---@field UseMipMaps boolean
---@field RTFormat ETextureRenderTargetFormat
---@field ScriptedTexture UTextureRenderTarget2D
---@field RenderingWidget UUserWidget
UExedreScriptedTexture = {}



---@class UExedreWidgetRenderTarget : UUserWidget
---@field RenderingMaterial UMaterialInterface
---@field ImageBrush FSlateBrush
---@field DefaultTexture UTexture2D
UExedreWidgetRenderTarget = {}



---@class UGSBitmapFontBox : UWidget
---@field Brush FSlateBrush
---@field BrushDelegate FGSBitmapFontBoxBrushDelegate
---@field Font UFont
---@field Text FText
---@field TextDelegate FGSBitmapFontBoxTextDelegate
---@field FontScaleFactor float
---@field CharSpacing float
---@field Justification EGSBitmapJustification
UGSBitmapFontBox = {}

---@param InText FText
function UGSBitmapFontBox:SetText(InText) end


---@class UGSCrowdFollowingComponent : UCrowdFollowingComponent
UGSCrowdFollowingComponent = {}


---@class UGSCrowdManagerV1 : UCrowdManager
UGSCrowdManagerV1 = {}


---@class UGSDropCanvasPanel : UCanvasPanel
---@field OnDropEvent FGSDropCanvasPanelOnDropEvent
UGSDropCanvasPanel = {}



---@class UGSE_AIFuncLib : UBlueprintFunctionLibrary
UGSE_AIFuncLib = {}

---@param PerceptionComp UAIPerceptionComponent
---@param IsHearing boolean
---@param bEnable boolean
function UGSE_AIFuncLib:SinglePerceptionSetEnable(PerceptionComp, IsHearing, bEnable) end
---@param PerceptionComp UAIPerceptionComponent
function UGSE_AIFuncLib:SetPerceptionForgetAll(PerceptionComp) end
---@param PerceptionComp UAIPerceptionComponent
---@param HearRange float
---@param SightRange float
---@param LoseSightRange float
---@param VisionAngleDegrees float
---@param ASRangeFromLastSeenLoc float
---@param IsSightDominantSense boolean
---@param IsHearingSet boolean
---@param IsSightSet boolean
function UGSE_AIFuncLib:SetAISenseConfig(PerceptionComp, HearRange, SightRange, LoseSightRange, VisionAngleDegrees, ASRangeFromLastSeenLoc, IsSightDominantSense, IsHearingSet, IsSightSet) end
---@param BTComp UBehaviorTreeComponent
function UGSE_AIFuncLib:SetAIBTStop(BTComp) end
---@param BrainComponent UBrainComponent
---@param bEnable boolean
function UGSE_AIFuncLib:SetAIBTPause(BrainComponent, bEnable) end
---@param PerceptionComp UAIPerceptionComponent
---@param ActorToForget AActor
function UGSE_AIFuncLib:ListenerForgetsActor(PerceptionComp, ActorToForget) end
---@param Actor AActor
---@param BTAsset UBehaviorTree
function UGSE_AIFuncLib:AISetBT(Actor, BTAsset) end


---@class UGSE_ActorFuncLib : UBlueprintFunctionLibrary
UGSE_ActorFuncLib = {}

---@param Actor AActor
function UGSE_ActorFuncLib:UpdateActorOverlaps(Actor) end
---@param LoadedLevels TArray<ULevel>
---@param WorldPositionFile FString
---@param MemoryFile FString
function UGSE_ActorFuncLib:StatLevelNaniteMemory(LoadedLevels, WorldPositionFile, MemoryFile) end
---@param SphereUniformPoints TArray<FVector>
---@param NumOfPoints int32
---@param Radius float
function UGSE_ActorFuncLib:SpawnSphereUniformPoints(SphereUniformPoints, NumOfPoints, Radius) end
---@param InAsset UBlueprint
---@param Obj UObject
---@param InTransform FTransform
---@return AActor
function UGSE_ActorFuncLib:SpawnBlueprintActorByFactory_BP(InAsset, Obj, InTransform) end
---@param InAsset UBlueprint
---@param InLevel ULevel
---@param InTransform FTransform
---@return AActor
function UGSE_ActorFuncLib:SpawnBlueprintActorByFactory(InAsset, InLevel, InTransform) end
---@param Actor AActor
---@param Material UMaterialInterface
---@param QualityLevel int32
function UGSE_ActorFuncLib:SetMaterialInterfaceQualityLevel(Actor, Material, QualityLevel) end
---@param Actor AActor
---@param Trans FTransform
---@param bSweep boolean
---@param iTeleportType int32
function UGSE_ActorFuncLib:SetActorTransformSimple(Actor, Trans, bSweep, iTeleportType) end
---@param Actor AActor
---@param Rot FRotator
---@param iTeleportType int32
function UGSE_ActorFuncLib:SetActorRotationSimple(Actor, Rot, iTeleportType) end
---@param Actor AActor
---@param Pos FVector
---@param bSweep boolean
---@param iTeleportType int32
function UGSE_ActorFuncLib:SetActorLocationSimple(Actor, Pos, bSweep, iTeleportType) end
---@param Actor AActor
---@param Pos FVector
---@param Rot FRotator
---@param bSweep boolean
---@param iTeleportType int32
function UGSE_ActorFuncLib:SetActorLocationAndRotationSimple(Actor, Pos, Rot, bSweep, iTeleportType) end
---@param Actor AActor
---@param NewInterval float
function UGSE_ActorFuncLib:SetActorComponentsTickInterval(Actor, NewInterval) end
---@param Actor AActor
---@param bEnable boolean
function UGSE_ActorFuncLib:SetActorComponentsTickEnable(Actor, bEnable) end
---@param Component UActorComponent
function UGSE_ActorFuncLib:RemoveComponent(Component) end
---@param PathPointList TArray<FVector>
---@param FilePathUnderProjFolder FString
function UGSE_ActorFuncLib:LoadReflectionCubeLocation(PathPointList, FilePathUnderProjFolder) end
function UGSE_ActorFuncLib:LoadCapturingStreamingMeshLodStats() end
---@param VolumeActor AVolume
---@param Point FVector
---@param Radius float
---@return boolean
function UGSE_ActorFuncLib:IsPointInVolume(VolumeActor, Point, Radius) end
---@param Actor AActor
---@return boolean
function UGSE_ActorFuncLib:IsActorBeginningPlayFromLevelStreaming(Actor) end
---@param VolumeActor AVolume
---@param BoundOrigin FVector
---@param BoundExtent FVector
---@param isFullContain boolean
---@return boolean
function UGSE_ActorFuncLib:IsAABoundBoxInVolume(VolumeActor, BoundOrigin, BoundExtent, isFullContain) end
---@param SceneComp USceneComponent
---@param OutWorldTransform FTransform
function UGSE_ActorFuncLib:GetWorldTransformFast(SceneComp, OutWorldTransform) end
---@param Actor AActor
---@param OutVelocity FVector
function UGSE_ActorFuncLib:GetVelocity(Actor, OutVelocity) end
---@param Actor AActor
---@param AttachParentActor AActor
function UGSE_ActorFuncLib:GetAttachParentActor(Actor, AttachParentActor) end
---@param Actor AActor
---@param OutTrans FTransform
function UGSE_ActorFuncLib:GetActorTransformSimple(Actor, OutTrans) end
---@param Actor AActor
---@param OutRot FRotator
function UGSE_ActorFuncLib:GetActorRotationSimple(Actor, OutRot) end
---@param Actor AActor
---@param OutPos FVector
function UGSE_ActorFuncLib:GetActorLocationSimple(Actor, OutPos) end
---@param Actor AActor
---@param OutHasAuthority boolean
function UGSE_ActorFuncLib:GetActorHasAuthority(Actor, OutHasAuthority) end
---@param Actor AActor
---@param OutDir FVector
function UGSE_ActorFuncLib:GetActorForwardVector(Actor, OutDir) end
---@param Actor AActor
---@param NewActorComp UActorComponent
---@param bManualAttachment boolean
---@param RelativeTransform FTransform
function UGSE_ActorFuncLib:FinishAddComponent(Actor, NewActorComp, bManualAttachment, RelativeTransform) end
function UGSE_ActorFuncLib:ExcuteStreamingMeshMemoryStats() end
function UGSE_ActorFuncLib:EndCapturingStreamingMeshLodStats() end
---@param Actor AActor
---@param TraceDirectionList TArray<FVector>
---@param TraceDistance float
---@param TraceChannel ETraceTypeQuery
---@param DrawDebugType EDrawDebugTrace::Type
---@param DrawTime float
---@param VaildRange float
---@param AdjustedLocation FVector
---@param AdjustedRadius double
---@param IsSuccess boolean
function UGSE_ActorFuncLib:DetectRegionCenter(Actor, TraceDirectionList, TraceDistance, TraceChannel, DrawDebugType, DrawTime, VaildRange, AdjustedLocation, AdjustedRadius, IsSuccess) end
---@param Actor AActor
---@return boolean
function UGSE_ActorFuncLib:CheckActorWasRecentlyRendered(Actor) end
function UGSE_ActorFuncLib:CaptureStreamingMeshLodStats() end
function UGSE_ActorFuncLib:CacheCapturingStreamingMeshLodStats() end
---@param Actor AActor
---@param NamePrefix FString
function UGSE_ActorFuncLib:AddNamePrefix(Actor, NamePrefix) end
---@param Actor AActor
---@param Component UActorComponent
function UGSE_ActorFuncLib:AddInstanceComponent(Actor, Component) end
---@param Actor AActor
---@param Class TSubclassOf<UActorComponent>
---@param bManualAttachment boolean
---@param RelativeTransform FTransform
---@param bDeferredFinish boolean
---@return UActorComponent
function UGSE_ActorFuncLib:AddComponentByClass(Actor, Class, bManualAttachment, RelativeTransform, bDeferredFinish) end


---@class UGSE_AnimDistanceMatchingLibrary : UBlueprintFunctionLibrary
UGSE_AnimDistanceMatchingLibrary = {}

---@param UpdateContext FAnimUpdateContext
---@param SequenceEvaluator FSequenceEvaluatorReference
---@param SpeedToMatch float
---@param PlayRateClamp FVector2D
---@return FSequenceEvaluatorReference
function UGSE_AnimDistanceMatchingLibrary:AdvanceTimeBySpeedMatching(UpdateContext, SequenceEvaluator, SpeedToMatch, PlayRateClamp) end
---@param UpdateContext FAnimUpdateContext
---@param SequenceEvaluator FSequenceEvaluatorReference
---@param DistanceToTarget float
---@param DistanceCurveName FName
---@param PlayRateClamp FVector2D
---@return FSequenceEvaluatorReference
function UGSE_AnimDistanceMatchingLibrary:AdvanceTimeByDistanceMatchToTarget(UpdateContext, SequenceEvaluator, DistanceToTarget, DistanceCurveName, PlayRateClamp) end


---@class UGSE_AnimFuncLib : UBlueprintFunctionLibrary
UGSE_AnimFuncLib = {}

---@param SkeletalMeshComp USkeletalMeshComponent
function UGSE_AnimFuncLib:TickAnimationAndRefreshBone_SkeletalMesh(SkeletalMeshComp) end
---@param Owner AActor
function UGSE_AnimFuncLib:TickAnimationAndRefreshBone(Owner) end
---@param Owner AActor
function UGSE_AnimFuncLib:TickAnimation(Owner) end
---@param Owner AActor
---@param BlendOutTime float
function UGSE_AnimFuncLib:StopAllMontages(Owner, BlendOutTime) end
---@param Character ACharacter
---@param IsOpen boolean
function UGSE_AnimFuncLib:SetRootMotionFromEverythingSwitch(Character, IsOpen) end
---@param Material UMaterialInterface
---@param TargetMesh UDestructibleMesh
---@param Index int32
function UGSE_AnimFuncLib:SetMaterial(Material, TargetMesh, Index) end
---@param Obj USkeletalMeshComponent
---@param BlendParams FVector
function UGSE_AnimFuncLib:SetBlendSpaceInput(Obj, BlendParams) end
---@param Skeleton USkeleton
---@param CurveName FString
---@param Value boolean
---@return boolean
function UGSE_AnimFuncLib:SetAnimcurveType(Skeleton, CurveName, Value) end
---@param AnimSeq UAnimSequence
---@param InTime float
---@param BoneName FName
---@param bExtractRootMotion boolean
---@return FTransform
function UGSE_AnimFuncLib:Sequence_GetRelativeBoneTransformCS(AnimSeq, InTime, BoneName, bExtractRootMotion) end
---@param AnimSeq UAnimSequence
---@param InTime float
---@param BoneName FName
---@param bExtractRootMotion boolean
---@return FTransform
function UGSE_AnimFuncLib:Sequence_GetBoneTransformCS(AnimSeq, InTime, BoneName, bExtractRootMotion) end
---@param InUSkeleton USkeleton
---@param BoneName FString
---@return boolean
function UGSE_AnimFuncLib:RemovePreviewAssetFromSkeleton(InUSkeleton, BoneName) end
---@param TargetMontage UAnimMontage
---@param Name FName
function UGSE_AnimFuncLib:RemoveNotifyTrackByName(TargetMontage, Name) end
---@param TargetMontage UAnimMontage
---@param Index int32
function UGSE_AnimFuncLib:RemoveNotifyEventByIndex(TargetMontage, Index) end
---@param BlendSpace UBlendSpace
---@return boolean
function UGSE_AnimFuncLib:RemoveAllPoints(BlendSpace) end
---@param Owner AActor
function UGSE_AnimFuncLib:ReinitAnim(Owner) end
---@param InMontage UAnimMontage
---@param InTime float
---@param InBoneName FName
---@param InSlotName FName
---@param bExtractRootMotion boolean
---@return FTransform
function UGSE_AnimFuncLib:Montage_GetBoneTransformCS(InMontage, InTime, InBoneName, InSlotName, bExtractRootMotion) end
---@param InMontage UAnimMontage
---@param InTime float
---@param InBoneName FName
---@param InSlotName FName
---@param bExtractRootMotion boolean
---@return FTransform
function UGSE_AnimFuncLib:Montage_GetBoneRelativeTransformCS(InMontage, InTime, InBoneName, InSlotName, bExtractRootMotion) end
---@param Obj UObject
function UGSE_AnimFuncLib:MarkDirty(Obj) end
---@param AnimInst UAnimInstance
---@param SlotNodeName FName
---@return boolean
function UGSE_AnimFuncLib:IsSlotPlayingMontage(AnimInst, SlotNodeName) end
---@param Character ACharacter
---@return boolean
function UGSE_AnimFuncLib:IsInRootMotionAM(Character) end
---@param AnimInst UAnimInstance
---@param Tag FName
function UGSE_AnimFuncLib:InitAnimGraphNode(AnimInst, Tag) end
---@param AnimSequenceBase UAnimSequenceBase
---@return USkeleton
function UGSE_AnimFuncLib:GetSkeleton(AnimSequenceBase) end
---@param TargetAnim UAnimSequenceBase
---@param AnimNotifyEventList TArray<FAnimNotifyEvent>
function UGSE_AnimFuncLib:GetOneAnimAllNotifyEventIncludeAS(TargetAnim, AnimNotifyEventList) end
---@param AnimNotifyEvent FAnimNotifyEvent
---@return float
function UGSE_AnimFuncLib:GetNotifyTriggerTime(AnimNotifyEvent) end
---@param AnimNotifyEvent FAnimNotifyEvent
---@return float
function UGSE_AnimFuncLib:GetNotifyEndTriggerTime(AnimNotifyEvent) end
---@param AnimInst UAnimMontage
---@param Index int32
---@return float
function UGSE_AnimFuncLib:GetNotifyComboEndTime(AnimInst, Index) end
---@param Montage UAnimMontage
---@param SlotIndex int32
---@return FName
function UGSE_AnimFuncLib:GetMontageSlotName(Montage, SlotIndex) end
---@param AnimMontage UAnimMontage
---@param SectionName FName
---@param OutStartTime float
---@param OutEndTime float
function UGSE_AnimFuncLib:GetMontageSectionStartAndEndTime(AnimMontage, SectionName, OutStartTime, OutEndTime) end
---@param AnimMontage UAnimMontage
---@param Index int32
---@return FName
function UGSE_AnimFuncLib:GetMontageSectionName(AnimMontage, Index) end
---@param AnimInst UAnimMontage
---@param FromInstanceID int32
---@return float
function UGSE_AnimFuncLib:GetMontageNotifyTriggerTime(AnimInst, FromInstanceID) end
---@param AnimInst UAnimMontage
---@param Index int32
---@return FString
function UGSE_AnimFuncLib:GetMontageNotifyName(AnimInst, Index) end
---@param AnimInstance UAnimInstance
---@param AnimMontage UAnimMontage
---@return FName
function UGSE_AnimFuncLib:GetMontageNextSection(AnimInstance, AnimMontage) end
---@param AnimInst UAnimMontage
---@param Index int32
---@return int32
function UGSE_AnimFuncLib:GetMontageEffectID(AnimInst, Index) end
---@param AnimInst UAnimMontage
---@param Index int32
---@return int32
function UGSE_AnimFuncLib:GetMontageComboSkillID(AnimInst, Index) end
---@param FullPath FString
---@return FString
function UGSE_AnimFuncLib:GetFolderPathFromFullPath(FullPath) end
---@param Character ACharacter
---@return int32
function UGSE_AnimFuncLib:GetCurrentActiveMontageInstanceID(Character) end
---@param SkeletalMeshComp USkeletalMeshComponent
---@param BaseBoneName FName
---@param ChildSocketNames TArray<FName>
function UGSE_AnimFuncLib:GetChildSockets(SkeletalMeshComp, BaseBoneName, ChildSocketNames) end
---@param InSkeleton USkeleton
---@param ParentBoneName FName
---@param BoneNameFilter TArray<FName>
---@param ChildBones TSet<FName>
---@return int32
function UGSE_AnimFuncLib:GetChildBones(InSkeleton, ParentBoneName, BoneNameFilter, ChildBones) end
---@param AnimationSequence UAnimSequence
---@param Time float
---@param TrackIndex int32
---@param UseRawData boolean
---@return FTransform
function UGSE_AnimFuncLib:GetBoneTransformByTime(AnimationSequence, Time, TrackIndex, UseRawData) end
---@param Mesh USkeletalMeshComponent
---@param BoneIndex int32
---@return FTransform
function UGSE_AnimFuncLib:GetBoneTransform(Mesh, BoneIndex) end
---@param AnimInst UAnimInstance
---@param FromInstanceID int32
---@return float
function UGSE_AnimFuncLib:GetAnimCurrentTime(AnimInst, FromInstanceID) end
---@param AnimBases TArray<UAnimSequenceBase>
---@param AnimNotifyEventList TArray<FAnimNotifyEvent>
function UGSE_AnimFuncLib:GetAnimAllNotifyEventIncludeAS(AnimBases, AnimNotifyEventList) end
---@param TargetMontage UAnimMontage
---@param TimeInfoList TArray<FGSNotifyEventTimeInfo>
---@return TArray<FAnimNotifyEvent>
function UGSE_AnimFuncLib:GetAllNotifyEventInAM(TargetMontage, TimeInfoList) end
---@param TargetMontage UAnimMontage
---@param AnimNotifyEventList TArray<FAnimNotifyEvent>
function UGSE_AnimFuncLib:GetAllNotifyEvent(TargetMontage, AnimNotifyEventList) end
---@param AnimSequence UAnimSequence
---@param OutSyncMarkers TArray<FAnimSyncMarker>
---@return boolean
function UGSE_AnimFuncLib:GetAllAnimSyncMarkers(AnimSequence, OutSyncMarkers) end
---@param SkeletonMesh USkeletalMesh
---@param AnimationBasePath FString
---@return TArray<UAnimationAsset>
function UGSE_AnimFuncLib:GetAllAnimationsOfSkeleton(SkeletonMesh, AnimationBasePath) end
---@param AnimInstance UAnimInstance
---@return int32
function UGSE_AnimFuncLib:GetActiveMontageInstanceID(AnimInstance) end
---@param FolderPath FString
---@param TargetActor UObject
---@return boolean
function UGSE_AnimFuncLib:GenerateDestructibleComponentFromPathWithEditor(FolderPath, TargetActor) end
---@param FolderPath FString
---@param TargetSkeletalMeshComp USkeletalMeshComponent
---@param DestructibleMeshArray TArray<UDestructibleComponent>
---@param BoneNameArray TArray<FName>
---@return boolean
function UGSE_AnimFuncLib:GenerateDestructibleComponentFromPath(FolderPath, TargetSkeletalMeshComp, DestructibleMeshArray, BoneNameArray) end
---@param BlendSpace UBlendSpace
---@return boolean
function UGSE_AnimFuncLib:GenerateDefaultAxisParameters(BlendSpace) end
---@param AimOffset UAimOffsetBlendSpace
---@param Path FString
---@param ExampleName FString
---@return boolean
function UGSE_AnimFuncLib:GenerateAimOffsetBlendSpace(AimOffset, Path, ExampleName) end
---@param FolderPath FString
---@param BoneName FString
---@return UObject
function UGSE_AnimFuncLib:FindDestructibleMeshFromPathByBoneName(FolderPath, BoneName) end
---@param Path FString
---@param InClass UClass
---@param AssetData TArray<FAssetData>
function UGSE_AnimFuncLib:FindAsset(Path, InClass, AssetData) end
---@param Animation UAnimSequenceBase
---@param StartTime float
---@param EndTime float
---@return FTransform
function UGSE_AnimFuncLib:ExtractRootMotionFromAnimation(Animation, StartTime, EndTime) end
---@param Character ACharacter
---@param MontageInstanceID int32
function UGSE_AnimFuncLib:DisableMontageRootMotionByInstanceID(Character, MontageInstanceID) end
---@param Path FString
---@param Name FString
---@param TargetSkeleton USkeleton
---@return UBlendSpace1D
function UGSE_AnimFuncLib:CreateBlendSpace1D(Path, Name, TargetSkeleton) end
---@param Path FString
---@param Name FString
---@param TargetSkeleton USkeleton
---@return UBlendSpace
function UGSE_AnimFuncLib:CreateBlendSpace(Path, Name, TargetSkeleton) end
---@param Path FString
---@param Name FString
---@param TargetSkeleton USkeleton
---@return UAnimMontage
function UGSE_AnimFuncLib:CreateAnimMontage(Path, Name, TargetSkeleton) end
---@param Path FString
---@param Name FString
---@param TargetSkeleton USkeleton
---@return UAimOffsetBlendSpace
function UGSE_AnimFuncLib:CreateAimOffsetBlendSpace(Path, Name, TargetSkeleton) end
---@param SkeletalMeshComp USkeletalMeshComponent
function UGSE_AnimFuncLib:ConditionallyDispatchQueuedAnimEvents(SkeletalMeshComp) end
---@param AnimMontage UAnimSequence
---@param bRootMotion boolean
---@param bForceRootLock boolean
---@return boolean
function UGSE_AnimFuncLib:ChangeAnimSeqParamAndSave(AnimMontage, bRootMotion, bForceRootLock) end
---@param AnimInst UAnimInstance
---@param SlotNodeName FName
---@return float
function UGSE_AnimFuncLib:CalcSlotMontageLocalWeight(AnimInst, SlotNodeName) end
---@param Destructible UDestructibleComponent
---@param BaseDamage float
---@param HurtOrigin FVector
---@param DamageRadius float
---@param ImpulseStrength float
---@param bFullDamage boolean
function UGSE_AnimFuncLib:ApplyRadiusDamage(Destructible, BaseDamage, HurtOrigin, DamageRadius, ImpulseStrength, bFullDamage) end
---@param Destructible UDestructibleComponent
---@param DamageAmount float
---@param HitLocation FVector
---@param ImpulseDir FVector
---@param ImpulseStrength float
function UGSE_AnimFuncLib:ApplyDamage(Destructible, DamageAmount, HitLocation, ImpulseDir, ImpulseStrength) end
---@param AnimMontage UAnimSequence
---@param OutStartPos FQuat
---@param OutEndPos FQuat
---@param LeftScaleTime float
---@param RightScaleTime float
---@return boolean
function UGSE_AnimFuncLib:AnimSequenceGetRootMotionRotationForScale(AnimMontage, OutStartPos, OutEndPos, LeftScaleTime, RightScaleTime) end
---@param AnimMontage UAnimSequence
---@param OutStartPos FVector
---@param OutEndPos FVector
---@param LeftScaleTime float
---@param RightScaleTime float
---@return boolean
function UGSE_AnimFuncLib:AnimSequenceGetRootMotionLocationForScale(AnimMontage, OutStartPos, OutEndPos, LeftScaleTime, RightScaleTime) end
---@param AnimationSequence UAnimSequence
---@param CurveName FName
---@param DistanceValue float
---@return float
function UGSE_AnimFuncLib:AnimSequenceFindPosWithDistanceCurve(AnimationSequence, CurveName, DistanceValue) end
---@param AnimMontage UAnimMontage
---@param OutEndPos FVector
---@param ScaleTime float
---@param SocketName FString
---@return boolean
function UGSE_AnimFuncLib:AnimMontageGetSocketLocationForScale(AnimMontage, OutEndPos, ScaleTime, SocketName) end
---@param AnimMontage UAnimMontage
---@param OutStartRotation FRotator
---@param OutEndRotation FRotator
---@param LeftScaleTime float
---@param RightScaleTime float
---@return boolean
function UGSE_AnimFuncLib:AnimMontageGetRootMotionRotationForScale(AnimMontage, OutStartRotation, OutEndRotation, LeftScaleTime, RightScaleTime) end
---@param AnimMontage UAnimMontage
---@param OutStartPos FVector
---@param OutEndPos FVector
---@param LeftScaleTime float
---@param RightScaleTime float
---@return boolean
function UGSE_AnimFuncLib:AnimMontageGetRootMotionLocationForScale(AnimMontage, OutStartPos, OutEndPos, LeftScaleTime, RightScaleTime) end
---@param AnimMontage UAnimMontage
---@param MeshComponent USkeletalMeshComponent
---@param BoneName FName
---@param Pos float
---@return FTransform
function UGSE_AnimFuncLib:AnimMontageGetQTEBoneTransform(AnimMontage, MeshComponent, BoneName, Pos) end
---@param AnimMontage UAnimMontage
---@return float
function UGSE_AnimFuncLib:AnimMontageGetMontageEndTimeForScale(AnimMontage) end
---@param AnimMontage UAnimMontage
---@param MeshComponent USkeletalMeshComponent
---@param BoneName FName
---@param Pos float
---@param IsNeedFixRotator boolean
---@param FixRotator FRotator
---@return FTransform
function UGSE_AnimFuncLib:AnimMontageGetBoneTransformWS(AnimMontage, MeshComponent, BoneName, Pos, IsNeedFixRotator, FixRotator) end
---@param AnimMontage UAnimMontage
---@param BlendInTime float
---@param BlendOutTime float
function UGSE_AnimFuncLib:AnimMontageGetBlendInAndOutTime(AnimMontage, BlendInTime, BlendOutTime) end
---@param AnimInst UAnimInstance
---@param MontagePos float
function UGSE_AnimFuncLib:AnimInstanceMontageSetPos(AnimInst, MontagePos) end
---@param InUSkeleton USkeleton
---@param BoneName FString
---@param SocketName FString
---@param Offset FTransform
---@return boolean
function UGSE_AnimFuncLib:AddSocketToSkeleton(InUSkeleton, BoneName, SocketName, Offset) end
---@param InUSkeleton USkeleton
---@param BoneName FString
---@param PreviewAsset UObject
---@return boolean
function UGSE_AnimFuncLib:AddPreviewAssetToSkeleton(InUSkeleton, BoneName, PreviewAsset) end
---@param BlendSpace UBlendSpace
---@param PointSequence UAnimSequence
---@param PointValue FVector
---@return boolean
function UGSE_AnimFuncLib:AddPoint(BlendSpace, PointSequence, PointValue) end
---@param TargetMontage UAnimMontage
---@param Sequence UAnimSequence
---@return boolean
function UGSE_AnimFuncLib:AddAnimSequence(TargetMontage, Sequence) end
---@param AnimInst UAnimInstance
---@param StateMachineName FName
---@param StateName FName
---@return float
function UGSE_AnimFuncLib:ABPStateMachineGetGlobalWeight(AnimInst, StateMachineName, StateName) end


---@class UGSE_AnimationFuncLib : UBlueprintFunctionLibrary
UGSE_AnimationFuncLib = {}

---@param InAnimation UWidgetAnimation
---@param Path FString
---@param Name FString
---@return boolean
function UGSE_AnimationFuncLib:SaveAsset(InAnimation, Path, Name) end
---@param Animation UWidgetAnimation
---@param TargetName FName
---@return FSequenceBindingIDInCS
function UGSE_AnimationFuncLib:GetAnimationBindingIDByNameCS(Animation, TargetName) end
---@param Animation UWidgetAnimation
---@param TargetName FName
---@return FMovieSceneObjectBindingID
function UGSE_AnimationFuncLib:GetAnimationBindingIDByName(Animation, TargetName) end
---@param Animation UWidgetAnimation
---@param TargetName FName
---@return FMovieSceneObjectBindingID
function UGSE_AnimationFuncLib:GetAnimationBindingIDByDisplayName(Animation, TargetName) end
---@param InAnimation UWidgetAnimation
---@param Outer UObject
---@param Name FName
---@return UWidgetAnimation
function UGSE_AnimationFuncLib:DuplicateAnimation(InAnimation, Outer, Name) end
---@param Animation UWidgetAnimation
---@param BindingID FSequenceBindingIDInCS
---@param BindObj UObject
---@param Ctx UObject
function UGSE_AnimationFuncLib:AnimationBindPossessableObjectCS(Animation, BindingID, BindObj, Ctx) end
---@param RootWidget UUserWidget
---@param Animation UWidgetAnimation
---@param UseDisplayName boolean
function UGSE_AnimationFuncLib:AnimationBindAllPossessableObject(RootWidget, Animation, UseDisplayName) end


---@class UGSE_AssetUtilFuncLib : UBlueprintFunctionLibrary
UGSE_AssetUtilFuncLib = {}

---@param Assets UAssetDataArray
---@return TArray<UObject>
function UGSE_AssetUtilFuncLib:LoadObjectsFromAssetData(Assets) end
---@param LoadedSourceAssets TArray<UObject>
---@return UAssetDataArray
function UGSE_AssetUtilFuncLib:GetReferenceAssetsFromObjects(LoadedSourceAssets) end
---@param Assets UAssetDataArray
---@return UAssetDataArray
function UGSE_AssetUtilFuncLib:GetReferenceAssetsFromAssets(Assets) end
---@param Assets UAssetDataArray
---@return UAssetDataArray
function UGSE_AssetUtilFuncLib:GetDependenciesAssetsFromAssets(Assets) end
---@param FolderPath FName
---@param bRecursive boolean
---@param bIncludeOnlyOnDiskAssets boolean
---@return UAssetDataArray
function UGSE_AssetUtilFuncLib:GetAssetsInFolder(FolderPath, bRecursive, bIncludeOnlyOnDiskAssets) end
---@param Paths TArray<FString>
---@return UAssetDataArray
function UGSE_AssetUtilFuncLib:GetAssetsByPath(Paths) end
---@param AssetData UAssetDataArray
---@param TagName FName
---@return FString
function UGSE_AssetUtilFuncLib:GetAssetDataTagValue(AssetData, TagName) end
---@param PackageObjects TArray<UObject>
---@return UAssetDataArray
function UGSE_AssetUtilFuncLib:GetAssetDataFromPackageObj(PackageObjects) end
---@param AssetData UAssetDataArray
---@return UClass
function UGSE_AssetUtilFuncLib:GetAssetDataClass(AssetData) end
---@param AssetData UAssetDataArray
---@return UObject
function UGSE_AssetUtilFuncLib:GetAssetDataAsset(AssetData) end


---@class UGSE_BehaviorTreeFuncLib : UBlueprintFunctionLibrary
UGSE_BehaviorTreeFuncLib = {}

---@param AIController AAIController
---@return UBehaviorTree
function UGSE_BehaviorTreeFuncLib:GetCurrentTree(AIController) end
---@param BehaviorTreeComp UBehaviorTreeComponent
---@return TArray<FString>
function UGSE_BehaviorTreeFuncLib:GetCurrentBTActiveNodeInfo(BehaviorTreeComp) end
---@param BT UBehaviorTree
---@param NodeData FBehaviorTreeNodeData
function UGSE_BehaviorTreeFuncLib:GetBTTaskNodes(BT, NodeData) end
---@param BTDecorator UBTDecorator_BlueprintBase
---@param NewIndex int32
---@return boolean
function UGSE_BehaviorTreeFuncLib:BTDecoratorOverrideChildIdx(BTDecorator, NewIndex) end


---@class UGSE_CameraUtilFuncLib : UBlueprintFunctionLibrary
UGSE_CameraUtilFuncLib = {}

---@param PlayerController APlayerController
---@param TargetAspectRatioAxisConstraint EAspectRatioAxisConstraint
---@return boolean
function UGSE_CameraUtilFuncLib:SetLocalPlayerAspectRatioAxisConstraint(PlayerController, TargetAspectRatioAxisConstraint) end
---@param InCamera UCameraComponent
---@param InFocalDistance float
---@param InDepthBlurKm float
---@param DepthBlurRadius float
function UGSE_CameraUtilFuncLib:SetCameraFocalParams(InCamera, InFocalDistance, InDepthBlurKm, DepthBlurRadius) end
---@param WorldContext UObject
---@param position FVector
---@return boolean
function UGSE_CameraUtilFuncLib:IsPositionInScreenViewport(WorldContext, position) end
---@param CameraManager APlayerCameraManager
---@return AActor
function UGSE_CameraUtilFuncLib:GetCameraViewTarget(CameraManager) end
---@param InCamera UCameraComponent
---@param OutFocalDistance float
---@param OutDepthBlurKm float
---@param OutDepthBlurRadius float
function UGSE_CameraUtilFuncLib:GetCameraFocalParams(InCamera, OutFocalDistance, OutDepthBlurKm, OutDepthBlurRadius) end


---@class UGSE_CharacterFuncLib : UBlueprintFunctionLibrary
UGSE_CharacterFuncLib = {}

---@param InActor AActor
---@param bEnable boolean
---@param ToggleActorTick boolean
---@param ToggleMoveComp boolean
---@param ToggleAIComp boolean
---@param ToggleSKMeshComp boolean
---@param ToggleAkComp boolean
---@param ToggleINCLUDE_CHILD_ACTOR boolean
function UGSE_CharacterFuncLib:ToggleActorTickEnabled(InActor, bEnable, ToggleActorTick, ToggleMoveComp, ToggleAIComp, ToggleSKMeshComp, ToggleAkComp, ToggleINCLUDE_CHILD_ACTOR) end
---@param Actor AActor
---@param DeltaTime float
function UGSE_CharacterFuncLib:Tick(Actor, DeltaTime) end
---@param Character ACharacter
---@param PlayRate float
function UGSE_CharacterFuncLib:SetMontagePlayRate(Character, PlayRate) end
---@param Actor AActor
---@param Controller AController
---@param ScreenPercentage float
---@param OutLocalScreenPercentage float
function UGSE_CharacterFuncLib:SetLocalScreenPercentageIfLocalController(Actor, Controller, ScreenPercentage, OutLocalScreenPercentage) end
---@param Character ACharacter
---@param Scale float
function UGSE_CharacterFuncLib:SetAnimRootMotionTranslationScale(Character, Scale) end
---@param Mesh USkeletalMeshComponent
---@param BoneName FName
---@param Channels TArray<ECollisionChannel>
---@param NewResponse ECollisionResponse
function UGSE_CharacterFuncLib:SetAllPABodiesBelowResponseToChannels(Mesh, BoneName, Channels, NewResponse) end
---@param Mesh USkeletalMeshComponent
---@param BoneName FName
---@param NewResponse ECollisionResponse
function UGSE_CharacterFuncLib:SetAllPABodiesBelowResponseToAllChannels(Mesh, BoneName, NewResponse) end
---@param Actor AActor
---@param bEnable boolean
function UGSE_CharacterFuncLib:SetActorSKMeshesUpdateRateOptimizations(Actor, bEnable) end
---@param Mesh USkeletalMeshComponent
function UGSE_CharacterFuncLib:RecreatePhysicsState(Mesh) end
---@param Comp USceneComponent
---@param SocketName FName
---@param TransfromSpace ERelativeTransformSpace
---@return FTransform
function UGSE_CharacterFuncLib:GetSocketTransform(Comp, SocketName, TransfromSpace) end
---@param Comp USceneComponent
---@param SocketName FName
---@return FRotator
function UGSE_CharacterFuncLib:GetSocketRotation(Comp, SocketName) end
---@param Comp USceneComponent
---@param SocketName FName
---@return FVector
function UGSE_CharacterFuncLib:GetSocketLocation(Comp, SocketName) end
---@param Actor AActor
---@param ComponentName FString
---@return FTransform
function UGSE_CharacterFuncLib:GetSceneComponentTransformByName(Actor, ComponentName) end
---@param Actor AActor
---@param ComponentName FString
---@return USceneComponent
function UGSE_CharacterFuncLib:GetSceneComponentByName(Actor, ComponentName) end
---@param CharacterMovement UCharacterMovementComponent
---@return float
function UGSE_CharacterFuncLib:GetPathFollowingBrakingDistance(CharacterMovement) end
---@param Mesh USkeletalMeshComponent
---@param BoneIndex int32
---@return FTransform
function UGSE_CharacterFuncLib:GetBoneTransformByMesh(Mesh, BoneIndex) end
---@param Character ACharacter
---@param BoneIndex int32
---@return FTransform
function UGSE_CharacterFuncLib:GetBoneTransform(Character, BoneIndex) end
---@param Actor AActor
---@return float
function UGSE_CharacterFuncLib:GetActorBoundingSphereRadius(Actor) end
---@param Actor AActor
---@param Controller AController
---@return float
function UGSE_CharacterFuncLib:CalculateScreenPercentageFromController(Actor, Controller) end
---@param Actor AActor
---@return float
function UGSE_CharacterFuncLib:CalculateMaxDistanceFactor(Actor) end


---@class UGSE_ChunkFuncLib : UBlueprintFunctionLibrary
UGSE_ChunkFuncLib = {}

---@param ProgressSize int64
---@param TotalSize int64
---@param CurrentTime double
---@return boolean
function UGSE_ChunkFuncLib:TryGetPlayGoInfo(ProgressSize, TotalSize, CurrentTime) end
---@return boolean
function UGSE_ChunkFuncLib:IsPlayGoInstalling() end


---@class UGSE_ConfigFuncLib : UBlueprintFunctionLibrary
UGSE_ConfigFuncLib = {}

---@param ConfigFile EConfigIniFileNames
---@param SectionName FString
---@param PropertyName FString
---@param Vector4Value FVector4
function UGSE_ConfigFuncLib:SetVector4(ConfigFile, SectionName, PropertyName, Vector4Value) end
---@param ConfigFile EConfigIniFileNames
---@param SectionName FString
---@param PropertyName FString
---@param Vector2DValue FVector2D
function UGSE_ConfigFuncLib:SetVector2D(ConfigFile, SectionName, PropertyName, Vector2DValue) end
---@param ConfigFile EConfigIniFileNames
---@param SectionName FString
---@param PropertyName FString
---@param VectorValue FVector
function UGSE_ConfigFuncLib:SetVector(ConfigFile, SectionName, PropertyName, VectorValue) end
---@param ConfigFile EConfigIniFileNames
---@param SectionName FString
---@param PropertyName FString
---@param TextValue FText
function UGSE_ConfigFuncLib:SetText(ConfigFile, SectionName, PropertyName, TextValue) end
---@param ConfigFile EConfigIniFileNames
---@param SectionName FString
---@param PropertyName FString
---@param StringValue FString
function UGSE_ConfigFuncLib:SetString(ConfigFile, SectionName, PropertyName, StringValue) end
---@param ConfigFile EConfigIniFileNames
---@param SectionName FString
---@param PropertyName FString
---@param RotatorValue FRotator
function UGSE_ConfigFuncLib:SetRotator(ConfigFile, SectionName, PropertyName, RotatorValue) end
---@param ConfigFile EConfigIniFileNames
---@param SectionName FString
---@param PropertyName FString
---@param IntValue int32
function UGSE_ConfigFuncLib:SetInt(ConfigFile, SectionName, PropertyName, IntValue) end
---@param ConfigFile EConfigIniFileNames
---@param SectionName FString
---@param PropertyName FString
---@param FloatValue float
function UGSE_ConfigFuncLib:SetFloat(ConfigFile, SectionName, PropertyName, FloatValue) end
---@param ConfigFile EConfigIniFileNames
---@param SectionName FString
---@param PropertyName FString
---@param ColorValue FColor
function UGSE_ConfigFuncLib:SetColor(ConfigFile, SectionName, PropertyName, ColorValue) end
---@param ConfigFile EConfigIniFileNames
---@param SectionName FString
---@param PropertyName FString
---@param BoolValue boolean
function UGSE_ConfigFuncLib:SetBool(ConfigFile, SectionName, PropertyName, BoolValue) end
---@param ConfigFile EConfigIniFileNames
---@param SectionName FString
---@param PropertyName FString
---@param ArrayValue TArray<FString>
function UGSE_ConfigFuncLib:SetArray(ConfigFile, SectionName, PropertyName, ArrayValue) end
---@param ConfigFile EConfigIniFileNames
---@param SectionName FString
---@param PropertyName FString
---@param bWasFound boolean
---@return FVector4
function UGSE_ConfigFuncLib:GetVector4(ConfigFile, SectionName, PropertyName, bWasFound) end
---@param ConfigFile EConfigIniFileNames
---@param SectionName FString
---@param PropertyName FString
---@param bWasFound boolean
---@return FVector2D
function UGSE_ConfigFuncLib:GetVector2D(ConfigFile, SectionName, PropertyName, bWasFound) end
---@param ConfigFile EConfigIniFileNames
---@param SectionName FString
---@param PropertyName FString
---@param bWasFound boolean
---@return FVector
function UGSE_ConfigFuncLib:GetVector(ConfigFile, SectionName, PropertyName, bWasFound) end
---@param ConfigFile EConfigIniFileNames
---@param SectionName FString
---@param PropertyName FString
---@param bWasFound boolean
---@return FText
function UGSE_ConfigFuncLib:GetText(ConfigFile, SectionName, PropertyName, bWasFound) end
---@param ConfigFile EConfigIniFileNames
---@param SectionName FString
---@param PropertyName FString
---@param bWasFound boolean
---@return FString
function UGSE_ConfigFuncLib:GetString(ConfigFile, SectionName, PropertyName, bWasFound) end
---@param ConfigFile EConfigIniFileNames
---@param SectionName FString
---@param PropertyName FString
---@param bWasFound boolean
---@return FRotator
function UGSE_ConfigFuncLib:GetRotator(ConfigFile, SectionName, PropertyName, bWasFound) end
---@param ConfigFile EConfigIniFileNames
---@param SectionName FString
---@param PropertyName FString
---@param bWasFound boolean
---@return int32
function UGSE_ConfigFuncLib:GetInt(ConfigFile, SectionName, PropertyName, bWasFound) end
---@param ConfigFile EConfigIniFileNames
---@param SectionName FString
---@param PropertyName FString
---@param bWasFound boolean
---@return float
function UGSE_ConfigFuncLib:GetFloat(ConfigFile, SectionName, PropertyName, bWasFound) end
---@param ConfigFile EConfigIniFileNames
---@param SectionName FString
---@param PropertyName FString
---@param bWasFound boolean
---@return FColor
function UGSE_ConfigFuncLib:GetColor(ConfigFile, SectionName, PropertyName, bWasFound) end
---@param ConfigFile EConfigIniFileNames
---@param SectionName FString
---@param PropertyName FString
---@param bWasFound boolean
---@return boolean
function UGSE_ConfigFuncLib:GetBool(ConfigFile, SectionName, PropertyName, bWasFound) end
---@param ConfigFile EConfigIniFileNames
---@param SectionName FString
---@param PropertyName FString
---@param bWasFound boolean
---@return TArray<FString>
function UGSE_ConfigFuncLib:GetArray(ConfigFile, SectionName, PropertyName, bWasFound) end
---@param ConfigFile EConfigIniFileNames
---@param bRefreshInConfigSystem boolean
function UGSE_ConfigFuncLib:Flush(ConfigFile, bRefreshInConfigSystem) end


---@class UGSE_CppExport : UBlueprintFunctionLibrary
UGSE_CppExport = {}

---@return TMap<FString, FIntPtr>
function UGSE_CppExport:GetUMGFuncAsMap() end
---@return TMap<FString, FIntPtr>
function UGSE_CppExport:GetTaskGraphFuncAsMap() end
---@return TMap<FString, FIntPtr>
function UGSE_CppExport:GetSplineComponentFuncAsMap() end
---@return TMap<FString, FIntPtr>
function UGSE_CppExport:GetSceneComponentFuncAsMap() end
---@return TMap<FString, FIntPtr>
function UGSE_CppExport:GetRenderFuncAsMap() end
---@return TMap<FString, FIntPtr>
function UGSE_CppExport:GetProfilerFuncAsMap() end
---@return TMap<FString, FIntPtr>
function UGSE_CppExport:GetNiagaraFuncAsMap() end
---@return TMap<FString, FIntPtr>
function UGSE_CppExport:GetMathFuncAsMap() end
---@return TMap<FString, FIntPtr>
function UGSE_CppExport:GetLineTraceFuncAsMap() end
---@return TMap<FString, FIntPtr>
function UGSE_CppExport:GetInputFuncAsMap() end
---@return TMap<FString, FIntPtr>
function UGSE_CppExport:GetGSCVarFuncAsMap() end
---@return TMap<FString, FIntPtr>
function UGSE_CppExport:GetGameplayTagFuncAsMap() end
---@return TMap<FString, FIntPtr>
function UGSE_CppExport:GetCVarFuncAsMap() end
---@return TMap<FString, FIntPtr>
function UGSE_CppExport:GetAsyncLineTraceReqFuncAsMap() end
---@return TMap<FString, FIntPtr>
function UGSE_CppExport:GetAnimFuncAsMap() end
---@return TMap<FString, FIntPtr>
function UGSE_CppExport:GetAIFuncAsMap() end
---@return TMap<FString, FIntPtr>
function UGSE_CppExport:GetActorFuncAsMap() end


---@class UGSE_EditorFuncLib : UBlueprintFunctionLibrary
UGSE_EditorFuncLib = {}

---@param InActor AActor
---@param bRelevant boolean
function UGSE_EditorFuncLib:SetActorLevelBoundsRelevant(InActor, bRelevant) end
---@param Actor AActor
---@param NewEnable boolean
function UGSE_EditorFuncLib:SetActorEditorOnly(Actor, NewEnable) end
---@param AssetClass UClass
---@return boolean
function UGSE_EditorFuncLib:IsClassPlaceable(AssetClass) end
---@param TableId FName
---@param CSVPath FString
function UGSE_EditorFuncLib:ImportCSVToStringTable(TableId, CSVPath) end
---@param InWorld UWorld
---@return TArray<APostProcessVolume>
function UGSE_EditorFuncLib:GetValidPostProcessVolumes(InWorld) end
---@return UAssetDataArray
function UGSE_EditorFuncLib:GetContentBrowserSelections() end
---@param CDO AActor
---@return TArray<UActorComponent>
function UGSE_EditorFuncLib:GetCDONodeComponents(CDO) end
---@param BrushCom UBrushComponent
---@return FBoxSphereBounds
function UGSE_EditorFuncLib:GetBrushBounds(BrushCom) end
function UGSE_EditorFuncLib:GatherText() end
---@param AssetData UAssetDataArray
---@param TagName FName
---@return FString
function UGSE_EditorFuncLib:FAssetData_GetTagValue(AssetData, TagName) end
---@param AssetData UAssetDataArray
---@return UClass
function UGSE_EditorFuncLib:FAssetData_GetClass(AssetData) end
---@param AssetData UAssetDataArray
---@return UObject
function UGSE_EditorFuncLib:FAssetData_GetAsset(AssetData) end
function UGSE_EditorFuncLib:CompileText() end
---@param InActor AActor
---@param bIncludeNonCollision boolean
---@param OutActorLevelBoundsRelevant boolean
---@param OutActorBounds FBox
function UGSE_EditorFuncLib:CheckActorBoundsInfo(InActor, bIncludeNonCollision, OutActorLevelBoundsRelevant, OutActorBounds) end
---@param WorldContextObject UObject
---@param SurfaceType int32
---@param CellSize float
---@param MaxHeightOffset float
---@param MaxDisplacement float
---@param CameraCollisionOffset float
function UGSE_EditorFuncLib:BGULandscapeCameraCollsion(WorldContextObject, SurfaceType, CellSize, MaxHeightOffset, MaxDisplacement, CameraCollisionOffset) end
---@param Actor AActor
---@return UStaticMeshComponent
function UGSE_EditorFuncLib:BGUGetStaticMeshComp(Actor) end
---@param Outer UObject
---@param Path FString
---@param Blueprint UBlueprint
---@return UObject
function UGSE_EditorFuncLib:AssetPath_GetCDO(Outer, Path, Blueprint) end


---@class UGSE_EngineFuncLib : UBlueprintFunctionLibrary
UGSE_EngineFuncLib = {}

---@param InActor AActor
---@param InTolerence float
---@return boolean
function UGSE_EngineFuncLib:WasActorRecentlyRendered(InActor, InTolerence) end
---@param WorldContext UObject
---@param InLogLevel int32
---@param Catogary FName
---@param Text FString
function UGSE_EngineFuncLib:VLogWLevel(WorldContext, InLogLevel, Catogary, Text) end
---@param WorldContext UObject
---@param Catogary FName
---@param Text FString
function UGSE_EngineFuncLib:VLogWarning(WorldContext, Catogary, Text) end
---@param WorldContext UObject
---@param Catogary FName
---@param SegmentStart FVector
---@param SegmentEnd FVector
---@param Color FColor
---@param Thickness float
---@param Text FString
function UGSE_EngineFuncLib:VLogSegmentWarning(WorldContext, Catogary, SegmentStart, SegmentEnd, Color, Thickness, Text) end
---@param WorldContext UObject
---@param Catogary FName
---@param SegmentStart FVector
---@param SegmentEnd FVector
---@param Color FColor
---@param Thickness float
---@param Text FString
function UGSE_EngineFuncLib:VLogSegmentInfo(WorldContext, Catogary, SegmentStart, SegmentEnd, Color, Thickness, Text) end
---@param WorldContext UObject
---@param Catogary FName
---@param SegmentStart FVector
---@param SegmentEnd FVector
---@param Color FColor
---@param Thickness float
---@param Text FString
function UGSE_EngineFuncLib:VLogSegmentError(WorldContext, Catogary, SegmentStart, SegmentEnd, Color, Thickness, Text) end
---@param WorldContext UObject
---@param Catogary FName
---@param Location FVector
---@param Radius float
---@param Color FColor
---@param Text FString
function UGSE_EngineFuncLib:VLogLocationWarning(WorldContext, Catogary, Location, Radius, Color, Text) end
---@param WorldContext UObject
---@param Catogary FName
---@param Location FVector
---@param Radius float
---@param Color FColor
---@param Text FString
function UGSE_EngineFuncLib:VLogLocationInfo(WorldContext, Catogary, Location, Radius, Color, Text) end
---@param WorldContext UObject
---@param Catogary FName
---@param Location FVector
---@param Radius float
---@param Color FColor
---@param Text FString
function UGSE_EngineFuncLib:VLogLocationError(WorldContext, Catogary, Location, Radius, Color, Text) end
---@param WorldContext UObject
---@param Catogary FName
---@param Text FString
function UGSE_EngineFuncLib:VLogInfo(WorldContext, Catogary, Text) end
---@param WorldContext UObject
---@param Catogary FName
---@param Text FString
function UGSE_EngineFuncLib:VLogError(WorldContext, Catogary, Text) end
---@param WorldContext UObject
---@param Catogary FName
---@param Box FBox
---@param Color FColor
---@param Text FString
function UGSE_EngineFuncLib:VLogBoxWarning(WorldContext, Catogary, Box, Color, Text) end
---@param WorldContext UObject
---@param Catogary FName
---@param Box FBox
---@param Color FColor
---@param Text FString
function UGSE_EngineFuncLib:VLogBoxInfo(WorldContext, Catogary, Box, Color, Text) end
---@param WorldContext UObject
---@param Catogary FName
---@param Box FBox
---@param Color FColor
---@param Text FString
function UGSE_EngineFuncLib:VLogBoxError(WorldContext, Catogary, Box, Color, Text) end
---@return boolean
function UGSE_EngineFuncLib:UseStatsMacro() end
---@param Num int32
function UGSE_EngineFuncLib:UploadPSOHttpRequest(Num) end
---@param AudioUtilActor AActor
---@param LoudnessAnalyzerAssetPath FString
---@param ConstantAnalyzerAssetPath FString
function UGSE_EngineFuncLib:UpdateAudioUtilAnalyzer(AudioUtilActor, LoudnessAnalyzerAssetPath, ConstantAnalyzerAssetPath) end
---@param Cycles int64
---@return float
function UGSE_EngineFuncLib:ToMilliseconds(Cycles) end
---@param Controller AController
---@param TargetLocation FVector
---@return boolean
function UGSE_EngineFuncLib:TestPathSync(Controller, TargetLocation) end
---@param AudioUtilActor AActor
function UGSE_EngineFuncLib:StopAudio(AudioUtilActor) end
---@param MapIndex int32
---@param MaterialQualityLevel int32
---@param NiagaraQualityLevel int32
---@param ShadowQualityLevel int32
function UGSE_EngineFuncLib:SetPSOCacheUsageMask(MapIndex, MaterialQualityLevel, NiagaraQualityLevel, ShadowQualityLevel) end
---@param PlayerController APlayerController
---@param bVisible boolean
function UGSE_EngineFuncLib:SetMouseCursorWidgetVisible(PlayerController, bVisible) end
---@param bEnableDbg boolean
---@param bEnableDbgDisplay boolean
---@param bEnableInfo boolean
function UGSE_EngineFuncLib:SetLogEnable(bEnableDbg, bEnableDbgDisplay, bEnableInfo) end
---@param ShouldSuspend boolean
function UGSE_EngineFuncLib:SetLevelRequestSuspend(ShouldSuspend) end
---@param Target APlayerController
---@param InWidgetToFocus UWidget
---@param InMouseLockMode EMouseLockMode
function UGSE_EngineFuncLib:SetInputModeUIOnly(Target, InWidgetToFocus, InMouseLockMode) end
---@param PlayerController APlayerController
function UGSE_EngineFuncLib:SetInputModeGameOnly(PlayerController) end
---@param PlayerController APlayerController
---@param AxisName FName
---@param DeadZone float
function UGSE_EngineFuncLib:SetInputDeadZone(PlayerController, AxisName, DeadZone) end
---@param WorldCtx UObject
---@param Gamma float
function UGSE_EngineFuncLib:SetDisplayGamma(WorldCtx, Gamma) end
---@param TargetGSQualityLevel EGSQualityLevel
function UGSE_EngineFuncLib:SetDesiredQualityLevel(TargetGSQualityLevel) end
---@param Obj UObject
---@param bEnable boolean
---@return boolean
function UGSE_EngineFuncLib:SetCanEverTick(Obj, bEnable) end
---@param AudioBox UUserWidget
---@param InFreqNum int32
function UGSE_EngineFuncLib:SetAudioBoxFreqNum(AudioBox, InFreqNum) end
---@param Actor AActor
---@param IsMovable boolean
function UGSE_EngineFuncLib:SetActorComponentMobilityMovable(Actor, IsMovable) end
---@param World UWorld
---@param URL FString
function UGSE_EngineFuncLib:ServerSeamlessTravel(World, URL) end
---@param Path FString
---@param Data FString
function UGSE_EngineFuncLib:SaveStringToFile(Path, Data) end
function UGSE_EngineFuncLib:SavePSOCacheFile() end
---@param InProcessPath FString
function UGSE_EngineFuncLib:RunProcessWithCheck(InProcessPath) end
---@param InProcessPath FString
function UGSE_EngineFuncLib:RunProcess(InProcessPath) end
function UGSE_EngineFuncLib:ResumePsoBatching() end
---@param GameMode AGameMode
function UGSE_EngineFuncLib:RestartGame(GameMode) end
function UGSE_EngineFuncLib:RestartApplication() end
---@param AudioBox UUserWidget
function UGSE_EngineFuncLib:ResetAudioVisualizing(AudioBox) end
---@param Desc FString
function UGSE_EngineFuncLib:RequestQuit(Desc) end
---@param Force boolean
function UGSE_EngineFuncLib:RequestExit(Force) end
---@param PlayerController APlayerController
---@param AxisMappings TArray<FGSInputAxisKeyMapping>
function UGSE_EngineFuncLib:ReplaceInputAxisList(PlayerController, AxisMappings) end
---@param PlayerController APlayerController
---@param ActionMappings TArray<FGSInputActionKeyMapping>
function UGSE_EngineFuncLib:ReplaceInputActionList(PlayerController, ActionMappings) end
---@param ActorComponent UActorComponent
function UGSE_EngineFuncLib:RegisterComponent(ActorComponent) end
---@param Keys TArray<FName>
function UGSE_EngineFuncLib:RegisteConsoleKey(Keys) end
---@param WorldCtx UObject
function UGSE_EngineFuncLib:QuitGame(WorldCtx) end
function UGSE_EngineFuncLib:QuitEditor() end
---@return boolean
function UGSE_EngineFuncLib:QAIsCompiling() end
---@param AgentActor AActor
---@param GoalActor AActor
---@return boolean
function UGSE_EngineFuncLib:QAHasReached(AgentActor, GoalActor) end
---@param AgentActor AActor
---@param CollisionRadius float
---@param CollisionHalfHeight float
function UGSE_EngineFuncLib:QAGetSimpleCollisionCylinder(AgentActor, CollisionRadius, CollisionHalfHeight) end
function UGSE_EngineFuncLib:QAGenCrash() end
function UGSE_EngineFuncLib:PSOFullCompilation() end
---@param WorldContextObject UObject
function UGSE_EngineFuncLib:PrepareLevelsNeedToBeUnloaded(WorldContextObject) end
---@param AudioUtilActor AActor
---@param VisualOnly boolean
function UGSE_EngineFuncLib:PlayAudio(AudioUtilActor, VisualOnly) end
---@param CaseID int32
---@param Count int32
function UGSE_EngineFuncLib:PerfTest(CaseID, Count) end
function UGSE_EngineFuncLib:PausePsoBatching() end
---@param AudioUtilActor AActor
function UGSE_EngineFuncLib:PauseAudio(AudioUtilActor) end
---@param v1 FLinearColor
---@param v2 FLinearColor
---@param V3 FLinearColor
---@param V4 FLinearColor
---@param LerpAlpha float
---@return FLinearColor
function UGSE_EngineFuncLib:MultipleColorLerp(v1, v2, V3, V4, LerpAlpha) end
---@param MediaPlayer UMediaPlayer
---@param Time double
function UGSE_EngineFuncLib:MediaPlayerTimeSeek(MediaPlayer, Time) end
---@param A FVector
---@param B FVector
---@param alpha float
---@param EasingFunc EEasingFunc::Type
---@param BlendExp float
---@param Steps int32
---@return FVector
function UGSE_EngineFuncLib:MathEaseV(A, B, alpha, EasingFunc, BlendExp, Steps) end
---@param A FRotator
---@param B FRotator
---@param alpha float
---@param bShortestPath boolean
---@param EasingFunc EEasingFunc::Type
---@param BlendExp float
---@param Steps int32
---@return FRotator
function UGSE_EngineFuncLib:MathEaseR(A, B, alpha, bShortestPath, EasingFunc, BlendExp, Steps) end
---@param A FLinearColor
---@param B FLinearColor
---@param alpha float
---@param EasingFunc EEasingFunc::Type
---@param BlendExp float
---@param Steps int32
---@return FLinearColor
function UGSE_EngineFuncLib:MathEaseLinearColor(A, B, alpha, EasingFunc, BlendExp, Steps) end
---@param A FVector2D
---@param B FVector2D
---@param alpha float
---@param EasingFunc EEasingFunc::Type
---@param BlendExp float
---@param Steps int32
---@return FVector2D
function UGSE_EngineFuncLib:MathEase2D(A, B, alpha, EasingFunc, BlendExp, Steps) end
---@param A float
---@param B float
---@param alpha float
---@param EasingFunc EEasingFunc::Type
---@param BlendExp float
---@param Steps int32
---@return float
function UGSE_EngineFuncLib:MathEase(A, B, alpha, EasingFunc, BlendExp, Steps) end
function UGSE_EngineFuncLib:MarkUnloadPsoState() end
---@param Str FString
---@param InLogLevel int32
function UGSE_EngineFuncLib:LogWLevel(Str, InLogLevel) end
---@param Str FString
function UGSE_EngineFuncLib:LogWarning(Str) end
---@param Str FString
function UGSE_EngineFuncLib:LogShippingError(Str) end
---@param Str FString
function UGSE_EngineFuncLib:LogShipping(Str) end
---@param Str FString
function UGSE_EngineFuncLib:LogInfo(Str) end
---@param Str FString
function UGSE_EngineFuncLib:LogError(Str) end
---@param Str FString
---@param bPrintScreen boolean
---@param TimeToDisplay float
---@param Color FColor
---@param Key int32
function UGSE_EngineFuncLib:LogDbgWithColor(Str, bPrintScreen, TimeToDisplay, Color, Key) end
---@param Str FString
---@param bPrintScreen boolean
---@param TimeToDisplay float
function UGSE_EngineFuncLib:LogDbg(Str, bPrintScreen, TimeToDisplay) end
---@param Path FString
---@return FString
function UGSE_EngineFuncLib:LoadFileToString(Path) end
---@return boolean
function UGSE_EngineFuncLib:IsUnloadPSOFinished() end
---@return boolean
function UGSE_EngineFuncLib:IsTestBuild() end
---@return boolean
function UGSE_EngineFuncLib:IsStandaloneGame() end
---@param World UWorld
---@return boolean
function UGSE_EngineFuncLib:IsStandAlone(World) end
---@return boolean
function UGSE_EngineFuncLib:IsShippingBuild() end
---@return boolean
function UGSE_EngineFuncLib:IsSavePSOCacheInErrorState() end
---@param InStr FString
---@param RegexExpression FString
---@return boolean
function UGSE_EngineFuncLib:IsRegexMatched(InStr, RegexExpression) end
---@return boolean
function UGSE_EngineFuncLib:IsPSOBatchingPaused() end
---@param World UWorld
---@return boolean
function UGSE_EngineFuncLib:IsListenServer(World) end
---@return boolean
function UGSE_EngineFuncLib:IsEditor() end
---@return boolean
function UGSE_EngineFuncLib:IsDriverVersionMismatch() end
---@return boolean
function UGSE_EngineFuncLib:IsDevelopmentBuild() end
---@param World UWorld
---@return boolean
function UGSE_EngineFuncLib:IsDedicateServer(World) end
---@param Controller AController
---@return boolean
function UGSE_EngineFuncLib:IsControllerInPlayState(Controller) end
---@param QueryParam FString
---@return boolean
function UGSE_EngineFuncLib:IsCommandLineHasParam(QueryParam) end
---@param World UWorld
---@return boolean
function UGSE_EngineFuncLib:IsClient(World) end
---@param Component UReflectionCaptureComponent
---@return boolean
function UGSE_EngineFuncLib:HasValidCaptureData(Component) end
---@param Option FString
---@return boolean
function UGSE_EngineFuncLib:HasLaunchOption(Option) end
---@param WorldContext UObject
function UGSE_EngineFuncLib:GSSaveConfig(WorldContext) end
---@param WorldContextObject UObject
---@return int32
function UGSE_EngineFuncLib:GetWorldMainAudioDeviceID(WorldContextObject) end
---@param Context UObject
---@return UWorld
function UGSE_EngineFuncLib:GetWorldFromObj(Context) end
---@return FVector2D
function UGSE_EngineFuncLib:GetWindowScreenResolution() end
---@param WorldContext UObject
---@param TraverseRootPath FString
---@param SourceFileCommPath FString
---@param ExcludedPathList TArray<FString>
---@return TArray<FString>
function UGSE_EngineFuncLib:GetWarningUITexList(WorldContext, TraverseRootPath, SourceFileCommPath, ExcludedPathList) end
---@param WorldContext UObject
---@param TraverseRootPath FString
---@return TArray<FString>
function UGSE_EngineFuncLib:GetWarningPhysicsAssetList(WorldContext, TraverseRootPath) end
---@return UPackage
function UGSE_EngineFuncLib:GetTransientPackage() end
---@return int32
function UGSE_EngineFuncLib:GetTotalPsoPrecompileNum() end
---@param Seconds double
---@return FTimespan
function UGSE_EngineFuncLib:GetTimeSpanFromSeconds(Seconds) end
---@return int32
function UGSE_EngineFuncLib:GetShadowQualityLevel() end
---@return int32
function UGSE_EngineFuncLib:GetRemainingPsoPrecompileNum() end
---@param InStr FString
---@param RegexExpression FString
---@param ExtractedInfo TArray<FString>
function UGSE_EngineFuncLib:GetRegexMatchInfo(InStr, RegexExpression, ExtractedInfo) end
---@param bLogInfo boolean
---@return EGSQualityLevel
function UGSE_EngineFuncLib:GetRecommendedQualityLevel(bLogInfo) end
---@return TSubclassOf<AGameModeBase>
function UGSE_EngineFuncLib:GetProjectSettingDefaultGameMode() end
---@return FString
function UGSE_EngineFuncLib:GetProjectDir() end
---@param Player APlayerController
---@param ViewProjectionMatrixInv FMatrix
---@param OutConstrainedViewRectMin FVector2D
---@param OutConstrainedViewRectMax FVector2D
---@param OutViewRectMin FVector2D
---@param OutViewRectMax FVector2D
function UGSE_EngineFuncLib:GetPlayerViewRectMatrixInfo(Player, ViewProjectionMatrixInv, OutConstrainedViewRectMin, OutConstrainedViewRectMax, OutViewRectMin, OutViewRectMax) end
---@param Player APlayerController
---@param OutConstrainedViewRectMin FVector2D
---@param OutConstrainedViewRectMax FVector2D
---@param OutViewRectMin FVector2D
---@param OutViewRectMax FVector2D
function UGSE_EngineFuncLib:GetPlayerViewRect(Player, OutConstrainedViewRectMin, OutConstrainedViewRectMax, OutViewRectMin, OutViewRectMax) end
---@param Player APlayerController
---@return FMatrix
function UGSE_EngineFuncLib:GetPlayerViewProjectionMatrixInv(Player) end
---@param Player APlayerController
---@return FMatrix
function UGSE_EngineFuncLib:GetPlayerViewProjectionMatrix(Player) end
---@return double
function UGSE_EngineFuncLib:GetPlatformTime() end
---@param PC APawn
---@return int32
function UGSE_EngineFuncLib:GetPawnAutoPossessConfig(PC) end
---@param MediaPlayer UMediaPlayer
---@return double
function UGSE_EngineFuncLib:GetMediaPlayerTime(MediaPlayer) end
---@param MediaPlayer UMediaPlayer
---@return double
function UGSE_EngineFuncLib:GetMediaPlayerDuartion(MediaPlayer) end
---@return TArray<uint8>
function UGSE_EngineFuncLib:GetMacAddress() end
---@return FString
function UGSE_EngineFuncLib:GetLoginId() end
---@param WorldCtx UObject
---@return APlayerCameraManager
function UGSE_EngineFuncLib:GetLocalPlayerCameraManager(WorldCtx) end
---@param Option FString
---@return FString
function UGSE_EngineFuncLib:GetLaunchValue(Option) end
---@param KeyEvent FKeyEvent
---@return FKey
function UGSE_EngineFuncLib:GetInputKey(KeyEvent) end
---@param PlayerController APlayerController
---@param AxisName FName
---@return float
function UGSE_EngineFuncLib:GetInputDeadZone(PlayerController, AxisName) end
---@return int64
function UGSE_EngineFuncLib:GetGFrameCounter() end
---@param WorldCtx UObject
---@return APlayerController
function UGSE_EngineFuncLib:GetFirstLocalPlayerController(WorldCtx) end
---@return int32
function UGSE_EngineFuncLib:GetEngineMinorVersion() end
---@param Object UObject
---@return FString
function UGSE_EngineFuncLib:GetDisplayName(Object) end
---@param WorldCtx UObject
---@return float
function UGSE_EngineFuncLib:GetDisplayGamma(WorldCtx) end
---@param Cpu FString
---@param Gpu FString
---@param MemSize int32
function UGSE_EngineFuncLib:GetDeviceInfo(Cpu, Gpu, MemSize) end
---@return FString
function UGSE_EngineFuncLib:GetDeviceId() end
---@return FString
function UGSE_EngineFuncLib:GetDefaultLanguageCS() end
---@return FString
function UGSE_EngineFuncLib:GetCurrentRhiName() end
---@param Actor AActor
---@return TArray<AActor>
function UGSE_EngineFuncLib:GetChildActors(Actor) end
---@param MediaPlayer UBinkMediaPlayer
---@return int32
function UGSE_EngineFuncLib:GetBinkMediaPlayerTotalFrames(MediaPlayer) end
---@param MediaPlayer UBinkMediaPlayer
---@return double
function UGSE_EngineFuncLib:GetBinkMediaPlayerTime(MediaPlayer) end
---@param MediaPlayer UBinkMediaPlayer
---@return float
function UGSE_EngineFuncLib:GetBinkMediaPlayerFrameRate(MediaPlayer) end
---@param MediaPlayer UBinkMediaPlayer
---@return double
function UGSE_EngineFuncLib:GetBinkMediaPlayerDuartion(MediaPlayer) end
---@param MediaPlayer UBinkMediaPlayer
---@return int32
function UGSE_EngineFuncLib:GetBinkMediaPlayerCurFrame(MediaPlayer) end
---@param PlayerController APlayerController
---@return TArray<FInputAxisKeyMapping>
function UGSE_EngineFuncLib:GetAxisMappings(PlayerController) end
---@return float
function UGSE_EngineFuncLib:GetAvailablePhysical() end
---@param AudioUtilActor AActor
---@param AudioDuration float
---@return UAudioComponent
function UGSE_EngineFuncLib:GetAudioInfoOfAudioVisualize(AudioUtilActor, AudioDuration) end
---@param PackageName FName
---@return float
function UGSE_EngineFuncLib:GetAsyncLoadPercentage(PackageName) end
---@param AnalogInputEvent FAnalogInputEvent
---@return float
function UGSE_EngineFuncLib:GetAnalogValue(AnalogInputEvent) end
---@param AnalogInputEvent FAnalogInputEvent
---@return FKey
function UGSE_EngineFuncLib:GetAnalogInputKey(AnalogInputEvent) end
---@param bLogInfo boolean
---@return EGSQualityLevel
function UGSE_EngineFuncLib:GetActualQualityLevel(bLogInfo) end
---@param PlayerController APlayerController
---@return TArray<FInputActionKeyMapping>
function UGSE_EngineFuncLib:GetActionMappings(PlayerController) end
---@param GameInst UGameInstance
---@return boolean
function UGSE_EngineFuncLib:GameInstanceIsDedicatedServer(GameInst) end
---@param DeviceID int32
function UGSE_EngineFuncLib:FlushMainAudioDevice(DeviceID) end
---@param Controller AController
---@param TargetLocation FVector
---@return TArray<FVector>
function UGSE_EngineFuncLib:FindPathSync(Controller, TargetLocation) end
---@param InWorld UWorld
---@param NetDriverName FName
---@return UNetDriver
function UGSE_EngineFuncLib:FindNamedNetDriver(InWorld, NetDriverName) end
---@param InObjectPath FString
---@return FString
function UGSE_EngineFuncLib:FindAndPrintStaleRefsByObjectPath(InObjectPath) end
---@param Obj UObject
---@return FString
function UGSE_EngineFuncLib:FindAndPrintStaleReferencesToObject(Obj) end
---@param Cmd FString
---@param WorldCtx UObject
function UGSE_EngineFuncLib:ExecCmdOutGLog(Cmd, WorldCtx) end
---@param bFullPurge boolean
function UGSE_EngineFuncLib:EngineGC(bFullPurge) end
---@param Enable boolean
---@param IgnoreEditor boolean
function UGSE_EngineFuncLib:EnableForceStreamdOutLevelGCCheck(Enable, IgnoreEditor) end
---@param AssetName FString
---@param PackagePath FString
---@param OriginalObject UObject
---@return UObject
function UGSE_EngineFuncLib:DuplicateAsset(AssetName, PackagePath, OriginalObject) end
---@param WorldContextObject UObject
---@param Center FVector
---@param Radius float
---@param Direction FVector
---@param AngleWidth float
---@param NumSegments int32
---@param LineColor FLinearColor
---@param Duration float
---@param Thickness float
function UGSE_EngineFuncLib:DrawDebugCircleArc(WorldContextObject, Center, Radius, Direction, AngleWidth, NumSegments, LineColor, Duration, Thickness) end
---@param WorldCtx UObject
---@param IsDisable boolean
function UGSE_EngineFuncLib:DisableDebugExecBindings(WorldCtx, IsDisable) end
---@param PointerEvent FPointerEvent
---@param WidgetDetectingDrag UWidget
---@param KeyName FName
---@return FEventReply
function UGSE_EngineFuncLib:DetectDragIfPressed(PointerEvent, WidgetDetectingDrag, KeyName) end
---@param InWorldContext UObject
---@param InKeyword FString
function UGSE_EngineFuncLib:DestroyActorsWithSpecifiedKeyword(InWorldContext, InKeyword) end
---@param Actor AActor
function UGSE_EngineFuncLib:DestroyActor(Actor) end
function UGSE_EngineFuncLib:DelayGC() end
---@param NetDriver UNetDriver
---@param World UWorld
---@return UReplicationDriver
function UGSE_EngineFuncLib:CreateReplicationDriver(NetDriver, World) end
---@param InWorld UWorld
---@param NetDriverName FName
---@param NetDriverDefinition FName
function UGSE_EngineFuncLib:CreateNamedNetDriver(InWorld, NetDriverName, NetDriverDefinition) end
---@param OperationClass TSubclassOf<UDragDropOperation>
---@return UDragDropOperation
function UGSE_EngineFuncLib:CreateDragDropOperation(OperationClass) end
---@param Path FString
---@param Name FString
---@param CreatedClass UClass
---@return UObject
function UGSE_EngineFuncLib:CreateAsset(Path, Name, CreatedClass) end
---@param InStr FString
function UGSE_EngineFuncLib:CopyToClipBoard(InStr) end
---@param MouseCursor boolean
function UGSE_EngineFuncLib:ConsoleVariableSetMouseCursor(MouseCursor) end
---@param Name FString
---@return int32
function UGSE_EngineFuncLib:ConsoleVarGetInt(Name) end
---@param WorldContext UObject
function UGSE_EngineFuncLib:CloseNetConnection(WorldContext) end
---@param PC APlayerController
---@param URL FString
function UGSE_EngineFuncLib:ClientSeamlessTravel(PC, URL) end
---@param bCapture boolean
function UGSE_EngineFuncLib:CaptureCurrentViewport(bCapture) end
---@param WorldContextObject UObject
function UGSE_EngineFuncLib:BlockTillSuspendedLevelsCompleted(WorldContextObject) end
---@param WorldContextObject UObject
function UGSE_EngineFuncLib:BlockTillLevelStreamingCompleted(WorldContextObject) end
---@param MediaPlayer UBinkMediaPlayer
---@param Time double
function UGSE_EngineFuncLib:BinkMediaPlayerTimeSeek(MediaPlayer, Time) end
---@param MediaPlayer UBinkMediaPlayer
---@param TargetFrame int32
---@param ProcMS int32
---@return boolean
function UGSE_EngineFuncLib:BinkMediaPlayerGoToWithProcMs(MediaPlayer, TargetFrame, ProcMS) end
---@param MediaPlayer UBinkMediaPlayer
---@param TargetFrame int32
---@return boolean
function UGSE_EngineFuncLib:BinkMediaPlayerGoTo(MediaPlayer, TargetFrame) end
---@param AudioUtilActor AActor
---@param AudioBox UUserWidget
---@return boolean
function UGSE_EngineFuncLib:BindAudioUtilAndBox(AudioUtilActor, AudioBox) end
---@param URL FString
---@return UAsyncTaskDownloadImage
function UGSE_EngineFuncLib:AsyncDownloadImage(URL) end
---@param BatchSize int32
---@param BatchTime float
function UGSE_EngineFuncLib:AdjustPSOPrecompileBatch(BatchSize, BatchTime) end


---@class UGSE_FileFuncLib : UBlueprintFunctionLibrary
UGSE_FileFuncLib = {}

---@param Path FString
---@param BytesToRead TArray<uint8>
---@return boolean
function UGSE_FileFuncLib:ReadFile(Path, BytesToRead) end
---@param InPakFilename FString
---@param PakOrder int32
---@param InPath FString
---@return boolean
function UGSE_FileFuncLib:MountPakWithInPath(InPakFilename, PakOrder, InPath) end
---@param InPakFilename FString
---@param PakOrder int32
---@return boolean
function UGSE_FileFuncLib:MountPak(InPakFilename, PakOrder) end
---@param PakFolders TArray<FString>
---@return boolean
function UGSE_FileFuncLib:MountAllPakFiles(PakFolders) end
---@param Path FString
---@param FileData TArray<uint8>
---@return boolean
function UGSE_FileFuncLib:LoadFileToArray(Path, FileData) end
---@param Directory FString
---@param FoundFiles TArray<FString>
---@param FileExtension FString
---@return boolean
function UGSE_FileFuncLib:FindFilesRecursively(Directory, FoundFiles, FileExtension) end
---@param Directory FString
---@param FoundFiles TArray<FString>
---@param FileExtension FString
---@return boolean
function UGSE_FileFuncLib:FindFiles(Directory, FoundFiles, FileExtension) end
---@param Src FString
---@param Dest FString
---@return boolean
function UGSE_FileFuncLib:ExtractFileToPath(Src, Dest) end
---@param Src FString
---@param Dest FString
---@return boolean
function UGSE_FileFuncLib:ExtractDirToPath(Src, Dest) end
---@param SrcPath FString
---@return boolean
function UGSE_FileFuncLib:AndroidHasFileInApk(SrcPath) end
---@param SrcPath FString
---@param DestPath FString
---@return boolean
function UGSE_FileFuncLib:AndroidExtractFolderFromApk(SrcPath, DestPath) end


---@class UGSE_FoliageFuncLib : UBlueprintFunctionLibrary
UGSE_FoliageFuncLib = {}

---@param FoliageActor AInstancedFoliageActor
---@param MinLodDist int32
---@param MaxLodDist int32
function UGSE_FoliageFuncLib:InstancedFoliageActorSetCullDistance(FoliageActor, MinLodDist, MaxLodDist) end
---@param FoliageActor AInstancedFoliageActor
---@return FString
function UGSE_FoliageFuncLib:IFA_GetSelectedInstanceName(FoliageActor) end


---@class UGSE_GSGameSettingsFuncLib : UBlueprintFunctionLibrary
UGSE_GSGameSettingsFuncLib = {}

---@param Percentage float
function UGSE_GSGameSettingsFuncLib:SetXeSSPercentage(Percentage) end
---@param RTXLevel int32
function UGSE_GSGameSettingsFuncLib:SetRayTracingQuality(RTXLevel) end
---@return boolean
function UGSE_GSGameSettingsFuncLib:IsLowFeatureLevelGPU() end
---@return FString
function UGSE_GSGameSettingsFuncLib:GetRHIAdapterName() end
---@return FString
function UGSE_GSGameSettingsFuncLib:GetMainMonitorID() end
---@param World UWorld
---@return boolean
function UGSE_GSGameSettingsFuncLib:GetIsHDRViewport(World) end
---@return boolean
function UGSE_GSGameSettingsFuncLib:GetGRHISupportsRayTracing() end
---@return FString
function UGSE_GSGameSettingsFuncLib:GetDefaultLanguage() end
---@return int32
function UGSE_GSGameSettingsFuncLib:GetCurGameMainScreen() end
---@param bSaveSettings boolean
function UGSE_GSGameSettingsFuncLib:ApplyGSGameSettings(bSaveSettings) end
---@param bSaveSettings boolean
function UGSE_GSGameSettingsFuncLib:ApplyGSGameResolutionSettings(bSaveSettings) end


---@class UGSE_GameIntentFuncLib : UBlueprintFunctionLibrary
UGSE_GameIntentFuncLib = {}

---@param OutParamCS FCachedActivityIntentReceivedParamCS
---@return boolean
function UGSE_GameIntentFuncLib:GetCachedActivityIntentReceivedParam(OutParamCS) end


---@class UGSE_GamePresetsFuncLib : UBlueprintFunctionLibrary
UGSE_GamePresetsFuncLib = {}

---@param GamePresets FGamePresets
---@return boolean
function UGSE_GamePresetsFuncLib:GetPlatformGamePresets(GamePresets) end


---@class UGSE_GridlyFuncLib : UBlueprintFunctionLibrary
UGSE_GridlyFuncLib = {}

---@param Obj UObject
function UGSE_GridlyFuncLib:RequestPage(Obj) end
---@return TArray<FString>
function UGSE_GridlyFuncLib:GetSupportCultures() end


---@class UGSE_LandscapeFuncLib : UBlueprintFunctionLibrary
UGSE_LandscapeFuncLib = {}

---@param PackagePath FString
---@param LandscapeActor AActor
---@return FVector
function UGSE_LandscapeFuncLib:SaveLandscapeWeight(PackagePath, LandscapeActor) end
---@param PackagePath FString
---@param AssetName FString
---@param LandscapeActor AActor
---@param LayerName FString
---@return UTexture2D
function UGSE_LandscapeFuncLib:SaveLandscapeLayerWeightTex(PackagePath, AssetName, LandscapeActor, LayerName) end
---@param LandscapeProxy AActor
function UGSE_LandscapeFuncLib:RecreateLandscapeActorByProxy(LandscapeProxy) end
---@param LandscapeActor AActor
---@return FVector
function UGSE_LandscapeFuncLib:GetLandscapeOriginOffset(LandscapeActor) end
---@param Locations TArray<FVector>
---@param Duration float
function UGSE_LandscapeFuncLib:AddLocationsToStreamingManager(Locations, Duration) end


---@class UGSE_LoadingUtilFuncLib : UBlueprintFunctionLibrary
UGSE_LoadingUtilFuncLib = {}

---@param Path FString
---@return UObject
function UGSE_LoadingUtilFuncLib:SyncLoadObject(Path) end
---@param PlayerController APlayerController
function UGSE_LoadingUtilFuncLib:ClientSetBlockOnAsyncLoading(PlayerController) end


---@class UGSE_NavigationFuncLib : UBlueprintFunctionLibrary
UGSE_NavigationFuncLib = {}

---@param Collision UShapeComponent
---@param bDynamicObstacle boolean
function UGSE_NavigationFuncLib:SetCollisionNavDynamicObstacle(Collision, bDynamicObstacle) end
---@param Collision UShapeComponent
---@param AreaClass TSubclassOf<UNavAreaBase>
function UGSE_NavigationFuncLib:SetCollisionNavAreaClass(Collision, AreaClass) end


---@class UGSE_NetFuncLib : UBlueprintFunctionLibrary
UGSE_NetFuncLib = {}

---@param WorldContext UObject
---@param ConnectionInfos TArray<FGSConnectionInfo>
function UGSE_NetFuncLib:GetAllActiveConnectionInfo(WorldContext, ConnectionInfos) end


---@class UGSE_NiagaraFuncLib : UBlueprintFunctionLibrary
UGSE_NiagaraFuncLib = {}

---@param NiagaraComponent UNiagaraComponent
---@param ParameterName FName
---@param ParameterValue UTexture
function UGSE_NiagaraFuncLib:SetTextureParameterValueOnMeshRenderMaterials(NiagaraComponent, ParameterName, ParameterValue) end
---@param NewMode EEffectTypeManagerCullMode
function UGSE_NiagaraFuncLib:SetEffectTypeManagerState(NewMode) end
---@param NC UNiagaraComponent
---@return ENCPoolMethod
function UGSE_NiagaraFuncLib:GetNiagaraComponentPoolMethod(NC) end
---@param NC UNiagaraComponent
function UGSE_NiagaraFuncLib:ForceDestroyNiagaraComponent(NC) end


---@class UGSE_OnlineSocketFuncLib : UBlueprintFunctionLibrary
UGSE_OnlineSocketFuncLib = {}

---@param WorldContext UObject
---@return int32
function UGSE_OnlineSocketFuncLib:GetLocalListenPort(WorldContext) end
---@param WorldContext UObject
---@return FString
function UGSE_OnlineSocketFuncLib:GetLocalListenIp(WorldContext) end


---@class UGSE_OverlapFuncLib : UBlueprintFunctionLibrary
UGSE_OverlapFuncLib = {}

---@param WorldContextObject UObject
---@param BoxPos FVector
---@param BoxExtent FVector
---@param ProfileName FName
---@param ComponentClassFilter UClass
---@param ActorsToIgnore TArray<AActor>
---@param OutComponents TArray<UPrimitiveComponent>
---@return boolean
function UGSE_OverlapFuncLib:BoxOverlapComponentsByProfile(WorldContextObject, BoxPos, BoxExtent, ProfileName, ComponentClassFilter, ActorsToIgnore, OutComponents) end
---@param WorldContextObject UObject
---@param BoxPos FVector
---@param BoxExtent FVector
---@param ProfileName FName
---@param ActorClassFilter UClass
---@param ActorsToIgnore TArray<AActor>
---@param OutActors TArray<AActor>
---@return boolean
function UGSE_OverlapFuncLib:BoxOverlapActorsByProfile(WorldContextObject, BoxPos, BoxExtent, ProfileName, ActorClassFilter, ActorsToIgnore, OutActors) end


---@class UGSE_PostProcessFuncLib : UBlueprintFunctionLibrary
UGSE_PostProcessFuncLib = {}

---@param PPV APostProcessVolume
---@param PPMatIndex int32
---@param Weight float
function UGSE_PostProcessFuncLib:SetPPVWeightedBlendableWeightByIndex(PPV, PPMatIndex, Weight) end
---@param PPV APostProcessVolume
---@param PPMaterialInterface UMaterialInterface
---@param Weight float
function UGSE_PostProcessFuncLib:SetPPVWeightedBlendableWeight(PPV, PPMaterialInterface, Weight) end
---@param PPComp UPostProcessComponent
---@param PPMatIndex int32
---@param Weight float
function UGSE_PostProcessFuncLib:SetPPCompWeightedBlendableWeightByIndex(PPComp, PPMatIndex, Weight) end
---@param PPComp UPostProcessComponent
---@param PPMaterialInterface UMaterialInterface
---@param Weight float
function UGSE_PostProcessFuncLib:SetPPCompWeightedBlendableWeight(PPComp, PPMaterialInterface, Weight) end
---@param CameraActor AActor
---@param PPMatIndex int32
---@param Weight float
function UGSE_PostProcessFuncLib:SetCameraWeightedBlendableWeightByIndex(CameraActor, PPMatIndex, Weight) end
---@param CameraComp UCameraComponent
---@param PPMatIndex int32
---@param Weight float
function UGSE_PostProcessFuncLib:SetCameraCompWeightedBlendableWeightByIndex(CameraComp, PPMatIndex, Weight) end
---@param PPV APostProcessVolume
---@param PPMaterialInterface UMaterialInterface
function UGSE_PostProcessFuncLib:RemovePPVWeightBlendable(PPV, PPMaterialInterface) end
---@param PPComp UPostProcessComponent
---@param PPMaterialInterface UMaterialInterface
function UGSE_PostProcessFuncLib:RemovePPCompWeightBlendable(PPComp, PPMaterialInterface) end
---@param WorldContext AActor
---@return FPostProcessSettings
function UGSE_PostProcessFuncLib:GetSceneViewFinalPostProcessSettings(WorldContext) end


---@class UGSE_ProfilerFuncLib : UBlueprintFunctionLibrary
UGSE_ProfilerFuncLib = {}

function UGSE_ProfilerFuncLib:StopRecordingPerfChart() end
---@param TargetFileName FString
---@param InTotalFrames int32
---@param bCollectInsightData boolean
function UGSE_ProfilerFuncLib:StartRecordingPerfChart(TargetFileName, InTotalFrames, bCollectInsightData) end
function UGSE_ProfilerFuncLib:GSStatsMasterEnableAdd() end
---@param StatNames TArray<FString>
---@return TArray<FGSCapturedStatResult>
function UGSE_ProfilerFuncLib:CaptureSpecificStatsInfo(StatNames) end
---@return TArray<FGSCapturedStatResult>
function UGSE_ProfilerFuncLib:CaptureAllStatsInfo() end


---@class UGSE_RenderUtilFuncLib : UBlueprintFunctionLibrary
UGSE_RenderUtilFuncLib = {}

---@param AA AActor
---@param bValue boolean
function UGSE_RenderUtilFuncLib:SetRenderCustomDepth(AA, bValue) end
---@param CameraShakeCls UClass
---@param Camera APlayerCameraManager
function UGSE_RenderUtilFuncLib:PlayCameraShake(CameraShakeCls, Camera) end
---@param NiagaraSystem UNiagaraComponent
---@param OverrideName FString
---@param OverrideFilteredSockets TArray<FName>
function UGSE_RenderUtilFuncLib:OverrideSystemUserVariableSKMFilteredSockets(NiagaraSystem, OverrideName, OverrideFilteredSockets) end
---@param NiagaraSystem UNiagaraComponent
---@param OverrideName FString
---@param OverrideFilteredBones TArray<FName>
function UGSE_RenderUtilFuncLib:OverrideSystemUserVariableSKMFilteredBones(NiagaraSystem, OverrideName, OverrideFilteredBones) end
---@param ActorComponent UActorComponent
function UGSE_RenderUtilFuncLib:MarkRenderStateDirty(ActorComponent) end
---@param WorldContext AActor
---@return float
function UGSE_RenderUtilFuncLib:GetSceneViewPreExposure(WorldContext) end


---@class UGSE_SDKFuncLib : UBlueprintFunctionLibrary
UGSE_SDKFuncLib = {}

---@param Content FString
---@return boolean
function UGSE_SDKFuncLib:TestCallAndroidFunc(Content) end
---@param URL FString
---@param Method FString
---@param ExHeaders TMap<FString, FString>
---@param PostRawData TArray<uint8>
---@param Listener UHttpResposeListener
---@param RequestTimeout int32
---@return boolean
function UGSE_SDKFuncLib:StartHttpRawDataRequest(URL, Method, ExHeaders, PostRawData, Listener, RequestTimeout) end
---@param URL FString
---@param Method FString
---@param ExHeaders TMap<FString, FString>
---@param Base64PostData FString
---@param Listener UHttpResposeListener
---@param RequestTimeout int32
---@return boolean
function UGSE_SDKFuncLib:StartHttpBase64DataRequest(URL, Method, ExHeaders, Base64PostData, Listener, RequestTimeout) end
---@param bEnable int32
function UGSE_SDKFuncLib:SetCrashReportClientEnable(bEnable) end
---@param Key FString
---@param Value FString
---@return boolean
function UGSE_SDKFuncLib:SetBuglyUserMap(Key, Value) end
---@param bEnable int32
function UGSE_SDKFuncLib:SetAppIsAutoTestingMode(bEnable) end
---@param UserKey FString
---@param UserValue FString
function UGSE_SDKFuncLib:SentryCrashReporterSetUser(UserKey, UserValue) end
---@param Key FString
---@param Value FString
function UGSE_SDKFuncLib:SentryCrashReporterSetTag(Key, Value) end
---@param RootKey FString
---@param RootValue FString
function UGSE_SDKFuncLib:SentryCrashReporterSetRoot(RootKey, RootValue) end
---@param Key FString
---@param ContextValues TMap<FString, FString>
function UGSE_SDKFuncLib:SentryCrashReporterSetContext(Key, ContextValues) end
function UGSE_SDKFuncLib:PrintCachedEntitlements() end
---@param Message FString
---@return boolean
function UGSE_SDKFuncLib:PostExceptionSample(Message) end
---@param Type int32
---@param Name FString
---@param Message FString
---@param StackTrace FString
---@return boolean
function UGSE_SDKFuncLib:PostException(Type, Name, Message, StackTrace) end
---@param URL FString
---@param Method FString
---@param ExHeaders TMap<FString, FString>
---@param PostRawData TArray<uint8>
---@param RequestTimeout int32
---@param OutResponse TMap<FString, FString>
---@return int32
function UGSE_SDKFuncLib:NonGameThreadStartHttpRawDataRequestWithBlockMode(URL, Method, ExHeaders, PostRawData, RequestTimeout, OutResponse) end
---@return boolean
function UGSE_SDKFuncLib:IsPureVersion() end
---@return boolean
function UGSE_SDKFuncLib:IsCleanVersion() end
---@param PostUrl FString
---@param ExHeaders TMap<FString, FString>
---@param FilePathList TArray<FString>
---@param Listener UHttpResposeListener
---@return boolean
function UGSE_SDKFuncLib:HttpPostFileList(PostUrl, ExHeaders, FilePathList, Listener) end
---@param PostUrl FString
---@param ExHeaders TMap<FString, FString>
---@param Filename FString
---@param FileContentData TArray<uint8>
---@param Listener UHttpResposeListener
---@return boolean
function UGSE_SDKFuncLib:HttpPostFileContent(PostUrl, ExHeaders, Filename, FileContentData, Listener) end
---@param PostUrl FString
---@param ExHeaders TMap<FString, FString>
---@param FilePath FString
---@param Listener UHttpResposeListener
---@return boolean
function UGSE_SDKFuncLib:HttpPostFile(PostUrl, ExHeaders, FilePath, Listener) end
---@param Index int32
---@return int32
function UGSE_SDKFuncLib:GetPS5UserDefinedParam(Index) end
---@return FString
function UGSE_SDKFuncLib:GetPS5UserAccountRegionCode() end
---@return EBGWNATType
function UGSE_SDKFuncLib:GetNatInfo() end
---@return FString
function UGSE_SDKFuncLib:GetIOSDocumentPath() end
---@return FString
function UGSE_SDKFuncLib:GetIOSBundlePath() end
---@param OutContext TMap<FString, FString>
function UGSE_SDKFuncLib:GetGameRunEnvContext(OutContext) end
---@return FString
function UGSE_SDKFuncLib:FCommandLine_Get() end
---@param Command FString
function UGSE_SDKFuncLib:FCommandLine_AddArg(Command) end
---@param Key FString
---@param Value FString
---@return boolean
function UGSE_SDKFuncLib:AddCrashUserData(Key, Value) end


---@class UGSE_SaveGameFuncLib : UBlueprintFunctionLibrary
UGSE_SaveGameFuncLib = {}

---@param InSaveData TArray<uint8>
---@param SlotName FString
---@param UserIndex int32
---@return boolean
function UGSE_SaveGameFuncLib:SaveDataToSlot(InSaveData, SlotName, UserIndex) end
---@param OutSaveData TArray<uint8>
---@param SlotName FString
---@param UserIndex int32
---@return boolean
function UGSE_SaveGameFuncLib:LoadDataFromSlot(OutSaveData, SlotName, UserIndex) end
---@return TArray<FString>
function UGSE_SaveGameFuncLib:GetAllSaveGameSlotNames() end


---@class UGSE_SceneComponentFuncLib : UBlueprintFunctionLibrary
UGSE_SceneComponentFuncLib = {}

---@param InSceneComponent USceneComponent
---@param Pos FVector
---@param Rot FRotator
function UGSE_SceneComponentFuncLib:SetWorldLocationAndRotationSimple(InSceneComponent, Pos, Rot) end


---@class UGSE_SequencerFuncLib : UBlueprintFunctionLibrary
UGSE_SequencerFuncLib = {}

---@param SequencePlayer UMovieSceneSequencePlayer
---@param ClockSource EUpdateClockSource
---@return boolean
function UGSE_SequencerFuncLib:SequenceSetClockSource(SequencePlayer, ClockSource) end
---@param SequenceActor ALevelSequenceActor
---@param MasterActor AActor
---@return int32
function UGSE_SequencerFuncLib:SequenceMasterAutoBind(SequenceActor, MasterActor) end
---@param SequenceActor ALevelSequenceActor
---@param TargetName FName
---@param Actors TArray<AActor>
---@param bUseDisplayName boolean
---@return boolean
function UGSE_SequencerFuncLib:SequenceActorSetBindingByName(SequenceActor, TargetName, Actors, bUseDisplayName) end
---@param SeqActor ALevelSequenceActor
---@param Lvl ULevel
---@param LevelSeq ULevelSequence
function UGSE_SequencerFuncLib:SequenceActorInitPlayerCS(SeqActor, Lvl, LevelSeq) end
---@param SeqActor ALevelSequenceActor
---@param BindingID FSequenceBindingIDInCS
---@param Actor AActor
function UGSE_SequencerFuncLib:SequenceActorAddBindingCS(SeqActor, BindingID, Actor) end
---@param LevelSequence ULevelSequence
---@param BindingID FSequenceBindingIDInCS
function UGSE_SequencerFuncLib:LevelSequenceUnbindPossessableObjectCS(LevelSequence, BindingID) end
---@param LevelSequence ULevelSequence
---@param BindingID FSequenceBindingIDInCS
---@param BindObj UObject
---@param Ctx UObject
function UGSE_SequencerFuncLib:LevelSequenceBindPossessableObjectCS(LevelSequence, BindingID, BindObj, Ctx) end
---@param BindID FSequenceBindingIDInCS
---@return boolean
function UGSE_SequencerFuncLib:IsMovieSceneObjectBindingIDValidCS(BindID) end
---@param LevelSequence ULevelSequence
---@param TargetName FName
---@return FSequenceBindingIDInCS
function UGSE_SequencerFuncLib:GetLevelSequenceBindingIDByNameCS(LevelSequence, TargetName) end
---@param LevelSequence ULevelSequence
---@param TargetName FName
---@return FMovieSceneObjectBindingID
function UGSE_SequencerFuncLib:GetLevelSequenceBindingIDByName(LevelSequence, TargetName) end
---@param LevelSequence ULevelSequence
---@param TargetName FName
---@return FMovieSceneObjectBindingID
function UGSE_SequencerFuncLib:GetLevelSequenceBindingIDByDisplayName(LevelSequence, TargetName) end
---@param FrameTime FQualifiedFrameTime
---@return float
function UGSE_SequencerFuncLib:FQualifiedTimeAsSeconds(FrameTime) end


---@class UGSE_SkeletalMeshFuncLib : UBlueprintFunctionLibrary
UGSE_SkeletalMeshFuncLib = {}

---@param OwnerActor AActor
---@param BaseVisibleDistanceFactorThesholds TArray<float>
---@param BaseNonRenderedUpdateRate int32
function UGSE_SkeletalMeshFuncLib:UpdateUROParams(OwnerActor, BaseVisibleDistanceFactorThesholds, BaseNonRenderedUpdateRate) end
---@param SKComp USkeletalMeshComponent
---@param bVal boolean
function UGSE_SkeletalMeshFuncLib:SetUpdateOverlapsOnAnimationFinalize(SKComp, bVal) end
---@param MeshComp UMeshComponent
---@param ParameterName FName
---@param ParameterValue UTexture
function UGSE_SkeletalMeshFuncLib:SetTextureParameterValueOnMaterials(MeshComp, ParameterName, ParameterValue) end
---@param SkMeshComp USkeletalMeshComponent
---@param BoneName FName
---@param ShapeIndex int32
---@param NewType ECollisionEnabled::Type
---@param bUpdatePhysicsFilterData boolean
---@param bGetWelded boolean
function UGSE_SkeletalMeshFuncLib:SetBodyInstanceShapeCollisionEnable(SkMeshComp, BoneName, ShapeIndex, NewType, bUpdatePhysicsFilterData, bGetWelded) end
---@param SkMeshComp USkeletalMeshComponent
---@param BoneName FName
---@param InCollisionProfileName FName
---@param bGetWelded boolean
function UGSE_SkeletalMeshFuncLib:SetBodyInstanceCollisionProfileName(SkMeshComp, BoneName, InCollisionProfileName, bGetWelded) end
---@param SkMeshComp USkeletalMeshComponent
---@param BoneName FName
---@param NewType ECollisionEnabled::Type
---@param bUpdatePhysicsFilterData boolean
---@param bGetWelded boolean
function UGSE_SkeletalMeshFuncLib:SetBodyInstanceCollisionEnable(SkMeshComp, BoneName, NewType, bUpdatePhysicsFilterData, bGetWelded) end
---@param SkMeshComp USkeletalMeshComponent
---@param BoneName FName
---@param bAutoWeld boolean
---@param bGetWelded boolean
function UGSE_SkeletalMeshFuncLib:SetBodyInstanceAutoWeld(SkMeshComp, BoneName, bAutoWeld, bGetWelded) end
---@param SKComp USkeletalMeshComponent
---@param Type ECollisionEnabled::Type
---@param bUpdateFilterData boolean
function UGSE_SkeletalMeshFuncLib:SetAllBodiesShapeCollisionEnabled(SKComp, Type, bUpdateFilterData) end
---@param SKMesh USkeletalMesh
---@return boolean
function UGSE_SkeletalMeshFuncLib:IsCPUAccess(SKMesh) end
---@param SKComp USkeletalMeshComponent
---@param bVal boolean
function UGSE_SkeletalMeshFuncLib:GS_SetEndPhysicsTickEnabled(SKComp, bVal) end
---@param OwnerActor AActor
---@param OutAccumulatedDeltaTime float
---@return boolean
function UGSE_SkeletalMeshFuncLib:GetUROResult(OwnerActor, OutAccumulatedDeltaTime) end
---@param MeshComp USkinnedMeshComponent
---@param BoneIndex int32
---@param bIsLocal boolean
---@return FTransform
function UGSE_SkeletalMeshFuncLib:GetRefPoseTransform(MeshComp, BoneIndex, bIsLocal) end
---@param SKComp USkeletalMeshComponent
---@return int32
function UGSE_SkeletalMeshFuncLib:GetNumOverrideMaterials(SKComp) end
---@param LODSettings USkeletalMeshLODSettings
---@return int32
function UGSE_SkeletalMeshFuncLib:GetLODSettingsGroupNum(LODSettings) end
---@param SkMeshComp USkeletalMeshComponent
---@param BoneName FName
---@param ShapeIndex int32
---@param bGetWelded boolean
---@return ECollisionEnabled::Type
function UGSE_SkeletalMeshFuncLib:GetBodyInstanceShapeCollisionEnable(SkMeshComp, BoneName, ShapeIndex, bGetWelded) end
---@param SkMeshComp USkeletalMeshComponent
---@param BoneName FName
---@param bGetWelded boolean
---@return FName
function UGSE_SkeletalMeshFuncLib:GetBodyInstanceCollisionProfileName(SkMeshComp, BoneName, bGetWelded) end
---@param TargetSkeletalMesh USkeletalMesh
function UGSE_SkeletalMeshFuncLib:BakeSkinInfoToUVs(TargetSkeletalMesh) end


---@class UGSE_SplineComponentFuncLib : UBlueprintFunctionLibrary
UGSE_SplineComponentFuncLib = {}


---@class UGSE_StaticMeshFunLib : UBlueprintFunctionLibrary
UGSE_StaticMeshFunLib = {}

---@param TargetActor AStaticMeshActor
---@param Visible boolean
---@param recurseToChildActor boolean
function UGSE_StaticMeshFunLib:SetStaticMeshActorVisibility(TargetActor, Visible, recurseToChildActor) end
---@param MeshComp UMeshComponent
---@param ParamName FName
---@param ParamValue FLinearColor
function UGSE_StaticMeshFunLib:SetLinearColorParameterValueOnMaterials(MeshComp, ParamName, ParamValue) end
---@param TargetStaticMesh UStaticMesh
---@param _CollisionTraceFlag ECollisionTraceFlag
function UGSE_StaticMeshFunLib:SetCollisionComplexity(TargetStaticMesh, _CollisionTraceFlag) end
---@param StaticMesh UStaticMesh
---@return boolean
function UGSE_StaticMeshFunLib:IsCPUAccess(StaticMesh) end
---@param TargetStaticMesh UStaticMesh
---@return int32
function UGSE_StaticMeshFunLib:GetStaticMeshMaterialNum(TargetStaticMesh) end
---@param StaticMeshComponent UStaticMeshComponent
---@return TArray<float>
function UGSE_StaticMeshFunLib:GetCustomPrimitiveData(StaticMeshComponent) end
---@param TargetStaticMesh UStaticMesh
---@return int32
function UGSE_StaticMeshFunLib:GetCollisionPremitiveNumbers(TargetStaticMesh) end
---@param TargetStaticMesh UStaticMesh
---@return ECollisionTraceFlag
function UGSE_StaticMeshFunLib:GetCollisionComplexity(TargetStaticMesh) end


---@class UGSE_SubsystemFunctionLibrary : UBlueprintFunctionLibrary
UGSE_SubsystemFunctionLibrary = {}

---@param ContextObject UObject
---@param Class TSubclassOf<UWorldSubsystem>
---@return UWorldSubsystem
function UGSE_SubsystemFunctionLibrary:GetWorldSubsystem(ContextObject, Class) end
---@param PlayerController APlayerController
---@param Class TSubclassOf<ULocalPlayerSubsystem>
---@return ULocalPlayerSubsystem
function UGSE_SubsystemFunctionLibrary:GetLocalPlayerSubSystemFromPlayerController(PlayerController, Class) end
---@param ContextObject UObject
---@param Class TSubclassOf<ULocalPlayerSubsystem>
---@return ULocalPlayerSubsystem
function UGSE_SubsystemFunctionLibrary:GetLocalPlayerSubsystem(ContextObject, Class) end
---@param ContextObject UObject
---@param Class TSubclassOf<UGameInstanceSubsystem>
---@return UGameInstanceSubsystem
function UGSE_SubsystemFunctionLibrary:GetGameInstanceSubsystem(ContextObject, Class) end
---@param Class TSubclassOf<UEngineSubsystem>
---@return UEngineSubsystem
function UGSE_SubsystemFunctionLibrary:GetEngineSubsystem(Class) end


---@class UGSE_SuperRSFuncLib : UBlueprintFunctionLibrary
UGSE_SuperRSFuncLib = {}

---@return boolean
function UGSE_SuperRSFuncLib:GetIsXeSSSupported() end
---@return boolean
function UGSE_SuperRSFuncLib:GetIsDX12() end
---@return boolean
function UGSE_SuperRSFuncLib:GetDLSSLisFeatureSupported() end


---@class UGSE_SystemSettingsFuncLib : UBlueprintFunctionLibrary
UGSE_SystemSettingsFuncLib = {}

---@param bEnableVSync boolean
function UGSE_SystemSettingsFuncLib:SetVSyncEnabled(bEnableVSync) end
---@param InViewDistanceQuality EScalabilityQuality
function UGSE_SystemSettingsFuncLib:SetViewDistanceQuality(InViewDistanceQuality) end
---@param InTextureQuality EScalabilityQuality
function UGSE_SystemSettingsFuncLib:SetTextureQuality(InTextureQuality) end
---@param TargetWindowMode EWindowMode::Type
function UGSE_SystemSettingsFuncLib:SetTargetScreenModeV2(TargetWindowMode) end
---@param TargetScreenMode EGSScreenMode
function UGSE_SystemSettingsFuncLib:SetTargetScreenMode(TargetScreenMode) end
---@param TargetResolution FIntPoint
---@param NeedFresh boolean
function UGSE_SystemSettingsFuncLib:SetTargetResolution(TargetResolution, NeedFresh) end
---@param InShadowQuality EScalabilityQuality
function UGSE_SystemSettingsFuncLib:SetShadowQuality(InShadowQuality) end
---@param InShadingQuality EScalabilityQuality
function UGSE_SystemSettingsFuncLib:SetShadingQuality(InShadingQuality) end
---@param position FVector2D
function UGSE_SystemSettingsFuncLib:SetScreenPos(position) end
---@param TargetGSQualityLevel EScalabilityQuality
function UGSE_SystemSettingsFuncLib:SetScalabilityQuality(TargetGSQualityLevel) end
---@param Qualities FGSScalabilityQualities
function UGSE_SystemSettingsFuncLib:SetScalabilityQualities(Qualities) end
---@param InResolutionQualityScale float
function UGSE_SystemSettingsFuncLib:SetResolutionQualityScale(InResolutionQualityScale) end
---@param InResolutionQualityLevel EScalabilityQuality
function UGSE_SystemSettingsFuncLib:SetResolutionQualityLevel(InResolutionQualityLevel) end
---@param InReflectionQuality EScalabilityQuality
function UGSE_SystemSettingsFuncLib:SetReflectionQuality(InReflectionQuality) end
---@param InPriorityMode EGSPriorityMode
function UGSE_SystemSettingsFuncLib:SetPriorityMode(InPriorityMode) end
---@param InPostProcessQuality EScalabilityQuality
function UGSE_SystemSettingsFuncLib:SetPostProcessQuality(InPostProcessQuality) end
---@param InMonitorID FString
function UGSE_SystemSettingsFuncLib:SetMonitorAsPrimaryV2(InMonitorID) end
---@param MonitorID FString
function UGSE_SystemSettingsFuncLib:SetMonitorAsPrimary(MonitorID) end
---@param InGIQuality EScalabilityQuality
function UGSE_SystemSettingsFuncLib:SetGlobalIlluminationQuality(InGIQuality) end
---@param InFrameRateLimit float
function UGSE_SystemSettingsFuncLib:SetFrameRateLimit(InFrameRateLimit) end
---@param InFoliageQuality EScalabilityQuality
function UGSE_SystemSettingsFuncLib:SetFoliageQuality(InFoliageQuality) end
---@param InEffectQuality EScalabilityQuality
function UGSE_SystemSettingsFuncLib:SetEffectsQuality(InEffectQuality) end
---@param InAntiAliasingQuality EScalabilityQuality
function UGSE_SystemSettingsFuncLib:SetAntiAliasingQuality(InAntiAliasingQuality) end
function UGSE_SystemSettingsFuncLib:RefreshBenchmarkMonitor() end
---@param NewSize FIntPoint
function UGSE_SystemSettingsFuncLib:OnViewportResizedEvent(NewSize) end
---@param TargetPrimaryMonitorIndex int32
function UGSE_SystemSettingsFuncLib:OnMonitorAsPrimaryChange(TargetPrimaryMonitorIndex) end
function UGSE_SystemSettingsFuncLib:Init() end
---@param MonitorIdx int32
function UGSE_SystemSettingsFuncLib:GMChangeMonitorAsPrimary(MonitorIdx) end
---@return boolean
function UGSE_SystemSettingsFuncLib:GetVSyncEnabled() end
---@param InQueryType EGSGraphicsMemoryMode
---@return float
function UGSE_SystemSettingsFuncLib:GetUsedGraphicsMemory(InQueryType) end
---@return FVector2D
function UGSE_SystemSettingsFuncLib:GetScreenSize() end
---@param InQualityLevel EScalabilityQuality
---@return float
function UGSE_SystemSettingsFuncLib:GetResolutionScaleFromQualityLevel(InQualityLevel) end
---@param bLogInfo boolean
---@return FGSScalabilityQualities
function UGSE_SystemSettingsFuncLib:GetRecommendedScalabilityQuality(bLogInfo) end
---@param AspectRatio FIntPoint
---@return TArray<FIntPoint>
function UGSE_SystemSettingsFuncLib:GetProportionalResolutions(AspectRatio) end
---@return FIntPoint
function UGSE_SystemSettingsFuncLib:GetGSystemResolution() end
---@param InGraphicsMemoryMode EGSGraphicsMemoryMode
---@return int32
function UGSE_SystemSettingsFuncLib:GetGraphicsMemoryInfo(InGraphicsMemoryMode) end
---@return float
function UGSE_SystemSettingsFuncLib:GetGPUUsedTime() end
---@return int32
function UGSE_SystemSettingsFuncLib:GetGPUUsedPercentage() end
---@return float
function UGSE_SystemSettingsFuncLib:GetFrameRateLimit() end
---@return EWindowMode::Type
function UGSE_SystemSettingsFuncLib:GetCurrentScreenModeV2() end
---@return EGSScreenMode
function UGSE_SystemSettingsFuncLib:GetCurrentScreenMode() end
---@param bLogInfo boolean
---@return FGSScalabilityQualities
function UGSE_SystemSettingsFuncLib:GetCurrentScalabilityQuality(bLogInfo) end
---@param bLogInfo boolean
---@return FGSScalabilityQualities
function UGSE_SystemSettingsFuncLib:GetCurrentScalabilityQualities(bLogInfo) end
---@return FIntPoint
function UGSE_SystemSettingsFuncLib:GetCurrentResolution() end
---@return float
function UGSE_SystemSettingsFuncLib:GetCurrentFPS() end
---@return float
function UGSE_SystemSettingsFuncLib:GetCPUUsedTime() end
---@return int32
function UGSE_SystemSettingsFuncLib:GetCPUUsedPercentage() end
---@param InMonitorID int32
---@return TArray<FIntPoint>
function UGSE_SystemSettingsFuncLib:GetAvailableResolutionsByMonitorID(InMonitorID) end
---@return TArray<FIntPoint>
function UGSE_SystemSettingsFuncLib:GetAvailableResolutions() end
---@param InQueryType EGSGraphicsMemoryMode
---@return float
function UGSE_SystemSettingsFuncLib:GetAvailableGraphicsMemory(InQueryType) end
---@return TArray<FGSMonitorInfo>
function UGSE_SystemSettingsFuncLib:GetAllMonitorInfo() end
---@param Section FString
---@param Key FString
---@return FString
function UGSE_SystemSettingsFuncLib:EngineSettingGetString(Section, Key) end
---@param Obj UObject
---@param FuncName FName
function UGSE_SystemSettingsFuncLib:BGUUnBindOnViewportResizedEvent(Obj, FuncName) end
---@param Obj UObject
---@param FuncName FName
function UGSE_SystemSettingsFuncLib:BGUUnBindOnMonitorAsPrimaryChange(Obj, FuncName) end
---@param Obj UObject
---@param FuncName FName
function UGSE_SystemSettingsFuncLib:BGUUnBindOnCultureChangedEvent(Obj, FuncName) end
---@param Obj UObject
---@param FuncName FName
function UGSE_SystemSettingsFuncLib:BGUBindOnViewportResizedEvent(Obj, FuncName) end
---@param Obj UObject
---@param FuncName FName
function UGSE_SystemSettingsFuncLib:BGUBindOnMonitorAsPrimaryChange(Obj, FuncName) end
---@param Obj UObject
---@param FuncName FName
function UGSE_SystemSettingsFuncLib:BGUBindOnCultureChangedEvent(Obj, FuncName) end
---@param bSaveSettings boolean
function UGSE_SystemSettingsFuncLib:ApplySystemSettings(bSaveSettings) end


---@class UGSE_TextureFuncLib : UBlueprintFunctionLibrary
UGSE_TextureFuncLib = {}

---@param TargetTexture UTexture2D
---@param ColorBuffer FColorBufferPtr
---@param Count int32
---@param MipMapIndex int32
function UGSE_TextureFuncLib:WriteToTexture_RenderingThread(TargetTexture, ColorBuffer, Count, MipMapIndex) end
---@param TargetTexture UTexture2D
---@param ColorBuffer FColorBufferPtr
---@param Count int32
---@param MipMapIndex int32
---@return boolean
function UGSE_TextureFuncLib:WriteToTexture_GameThread(TargetTexture, ColorBuffer, Count, MipMapIndex) end
function UGSE_TextureFuncLib:StartCapturingStreamingTextureStats() end
---@param TextureRenderTarget UTextureRenderTarget2D
function UGSE_TextureFuncLib:ReleaseRenderTarget(TextureRenderTarget) end
function UGSE_TextureFuncLib:OutputNonPowerOfTwoUdimVTInfo() end
---@param WorldContextObject UObject
---@param Texture UTexture2D
---@param FilePath FString
---@param Filename FString
function UGSE_TextureFuncLib:ExportTexture2D(WorldContextObject, Texture, FilePath, Filename) end
---@param SrcWidth int32
---@param SrcHeight int32
---@param FilePath FString
---@param ColorBuffer FColorBufferPtr
---@param Count int32
function UGSE_TextureFuncLib:ExportColorDataAsPNG(SrcWidth, SrcHeight, FilePath, ColorBuffer, Count) end
function UGSE_TextureFuncLib:EndCapturingStreamingTextureStats() end
function UGSE_TextureFuncLib:DumpStreamingTextureStats() end
---@param SrcWidth int32
---@param SrcHeight int32
---@param ColorData TArray<FColor>
---@param Name FString
---@return UTexture2D
function UGSE_TextureFuncLib:CreateTexture2DFromColorData(SrcWidth, SrcHeight, ColorData, Name) end
---@param SrcWidth int32
---@param SrcHeight int32
---@param Name FString
---@param InFormat EPixelFormat
---@return UTexture2D
function UGSE_TextureFuncLib:CreateTexture2D(SrcWidth, SrcHeight, Name, InFormat) end
---@param SourceRT UTextureRenderTarget2D
---@param OutputPath FString
---@param OutputFileName FString
function UGSE_TextureFuncLib:CreateStaticTexture2D(SourceRT, OutputPath, OutputFileName) end
---@param WorldContextObject UObject
---@param Width int32
---@param Height int32
---@param ClearColor FLinearColor
---@return UTextureRenderTarget2D
function UGSE_TextureFuncLib:CreateRenderTarget2D(WorldContextObject, Width, Height, ClearColor) end
function UGSE_TextureFuncLib:CollectNonPowerOfTwoUdimVT() end
---@param WorldContextObject UObject
---@param Image UImage
---@param MatPath FString
---@return UMaterialInstanceDynamic
function UGSE_TextureFuncLib:ChangeImageMaterial(WorldContextObject, Image, MatPath) end
function UGSE_TextureFuncLib:CaptureStreamingTextureStats() end
---@param InTexture UTexture2D
---@param TileCount FIntPoint
---@param bDebugLog boolean
---@return TArray<float>
function UGSE_TextureFuncLib:CalculateAverageColorInTiles(InTexture, TileCount, bDebugLog) end
---@param RVTComponent URuntimeVirtualTextureComponent
function UGSE_TextureFuncLib:BuildStreamedLowMips(RVTComponent) end


---@class UGSE_TraceFuncLib : UBlueprintFunctionLibrary
UGSE_TraceFuncLib = {}

---@param WorldContextObject UObject
---@param Start FVector
---@param End FVector
---@param Radius float
---@param HalfHeight float
---@param ProfileName FName
---@param bTraceComplex boolean
---@param IgnoreActor AActor
---@param OutHitLocation FVector
---@return boolean
function UGSE_TraceFuncLib:CharacterCapsuleTraceSingleByProfile(WorldContextObject, Start, End, Radius, HalfHeight, ProfileName, bTraceComplex, IgnoreActor, OutHitLocation) end


---@class UGSE_UINavigationFuncLib : UBlueprintFunctionLibrary
UGSE_UINavigationFuncLib = {}

---@param RepeatFactorInDefault float
---@param RepeatFactorInPressure float
---@param RepeatPressureFactor float
---@param RepeatPressureCondition float
function UGSE_UINavigationFuncLib:SetRepeatFactor(RepeatFactorInDefault, RepeatFactorInPressure, RepeatPressureFactor, RepeatPressureCondition) end
---@param IsNeed boolean
function UGSE_UINavigationFuncLib:SetNeedTabKeyNavigation(IsNeed) end
---@param IsNeed boolean
function UGSE_UINavigationFuncLib:SetNeedNavigationAction(IsNeed) end
---@param IsNeed boolean
function UGSE_UINavigationFuncLib:SetNeedKeyNavigation(IsNeed) end
---@param IsNeed boolean
function UGSE_UINavigationFuncLib:SetNeedAnalogNavigation(IsNeed) end
---@param TargetThreshold float
function UGSE_UINavigationFuncLib:SetAnalogNavigationVerticalThreshold(TargetThreshold) end
---@param TargetThreshold float
function UGSE_UINavigationFuncLib:SetAnalogNavigationHorizontalThreshold(TargetThreshold) end
---@param InKeyEvent FKeyEvent
---@return boolean
function UGSE_UINavigationFuncLib:IsRepeatAction(InKeyEvent) end
function UGSE_UINavigationFuncLib:InitSetWorkingGSUINavigation() end
---@param InKeyEvent FKeyEvent
---@return EUINavigation
function UGSE_UINavigationFuncLib:GetNavigationDirectionFromKey(InKeyEvent) end
---@param InAnalogEvent FAnalogInputEvent
---@return EUINavigation
function UGSE_UINavigationFuncLib:GetNavigationDirectionFromAnalogForOP(InAnalogEvent) end
---@param InKeyEvent FKeyEvent
---@return EUINavigationAction
function UGSE_UINavigationFuncLib:GetNavigationActionFromKey(InKeyEvent) end
---@return boolean
function UGSE_UINavigationFuncLib:GetIsNeedTabKeyNavigation() end
---@return boolean
function UGSE_UINavigationFuncLib:GetIsNeedNavigationAction() end
---@return boolean
function UGSE_UINavigationFuncLib:GetIsNeedKeyNavigation() end
---@return boolean
function UGSE_UINavigationFuncLib:GetIsNeedAnalogNavigation() end
---@param TargetNavigation EUINavigation
function UGSE_UINavigationFuncLib:ClearNavigationKeyByNavigation(TargetNavigation) end
---@param KeyName FName
function UGSE_UINavigationFuncLib:ClearNavigationKey(KeyName) end
---@param TargetNavigationAction EUINavigationAction
function UGSE_UINavigationFuncLib:ClearNavigationActionKeyByAction(TargetNavigationAction) end
---@param KeyName FName
function UGSE_UINavigationFuncLib:ClearNavigationActionKey(KeyName) end
function UGSE_UINavigationFuncLib:ClearAllNavigationKey() end
function UGSE_UINavigationFuncLib:ClearAllNavigationActionKey() end
---@param ConflictNavigationType EGSUIConflictNavigationType
---@param bBlock boolean
---@param NotBlockNavigations TArray<EUINavigation>
function UGSE_UINavigationFuncLib:BlockConflictNavigation(ConflictNavigationType, bBlock, NotBlockNavigations) end
---@param TargetNavigation EUINavigation
---@param KeyName FName
function UGSE_UINavigationFuncLib:AddNavigationKey(TargetNavigation, KeyName) end
---@param TargetNavigationAction EUINavigationAction
---@param KeyName FName
function UGSE_UINavigationFuncLib:AddNavigationActionKey(TargetNavigationAction, KeyName) end


---@class UGSE_UMGFuncLib : UBlueprintFunctionLibrary
UGSE_UMGFuncLib = {}

---@param Widget UWidget
---@param LocalCoordinates FVector2D
---@return FVector2D
function UGSE_UMGFuncLib:WidgetLocalToRoundedLocal(Widget, LocalCoordinates) end
---@param Widget UWidget
---@param LocalCoordinates FVector2D
---@return FVector2D
function UGSE_UMGFuncLib:WidgetLocalToAbsolute(Widget, LocalCoordinates) end
---@param Widget UWidget
---@param AbsoluteCoordinates FVector2D
---@return FVector2D
function UGSE_UMGFuncLib:WidgetAbsoluteToLocal(Widget, AbsoluteCoordinates) end
---@param Geometry FGeometry
---@param LocalPos FVector2D
---@return FVector2D
function UGSE_UMGFuncLib:SlateLocalToAbsolute(Geometry, LocalPos) end
---@param Geometry FGeometry
---@param AbsolutePos FVector2D
---@return FVector2D
function UGSE_UMGFuncLib:SlateAbsoluteToLocal(Geometry, AbsolutePos) end
---@param Widget UWidget
---@param Enable boolean
function UGSE_UMGFuncLib:SetWidgetEnable(Widget, Enable) end
---@param PlayerController APlayerController
---@param Widget UWidget
---@param Cause EFocusCause
function UGSE_UMGFuncLib:SetUserFocusWithCause(PlayerController, Widget, Cause) end
---@param Widget UWidget
---@param Text FText
function UGSE_UMGFuncLib:SetTextToBitmapFontBox(Widget, Text) end
---@param ID FName
---@param Key FString
---@param Src FString
---@return boolean
function UGSE_UMGFuncLib:SetLocalStringTableEntry(ID, Key, Src) end
---@param WorldContextObject UObject
---@param CursorShape EMouseCursor::Type
---@param CursorName FName
---@param HotSpot FVector2D
---@return boolean
function UGSE_UMGFuncLib:SetHardwareCursor(WorldContextObject, CursorShape, CursorName, HotSpot) end
---@param CultureName FString
---@return boolean
function UGSE_UMGFuncLib:SetCurrentCulture(CultureName) end
---@param Type EColorVisionDeficiency
---@param Severity float
---@param CorrectDeficiency boolean
---@param ShowCorrectionWithDeficiency boolean
function UGSE_UMGFuncLib:SetColorVisionDeficiencyType(Type, Severity, CorrectDeficiency, ShowCorrectionWithDeficiency) end
---@param Widget UUserWidget
function UGSE_UMGFuncLib:RemoveUserWidgetAsSlateFromViewport(Widget) end
---@param RichTextBlock URichTextBlock
function UGSE_UMGFuncLib:RefreshRichTextDefaultStyle(RichTextBlock) end
---@param WorldContext UObject
function UGSE_UMGFuncLib:RefreshDPIScale(WorldContext) end
---@param WorldContextObject UObject
---@param FoundWidgets TArray<UWidget>
---@param Text FString
function UGSE_UMGFuncLib:QAGetWidgetWithText(WorldContextObject, FoundWidgets, Text) end
---@param Widget UWidget
---@param WidgetPosition FVector2D
---@param CenterPosition FVector2D
---@param WidgetSize FVector2D
function UGSE_UMGFuncLib:QAGetWidgetCenterPosition(Widget, WidgetPosition, CenterPosition, WidgetSize) end
---@param WorldContextObject UObject
---@param FoundWidgets TArray<UWidget>
---@param WidgetClass TSubclassOf<UWidget>
function UGSE_UMGFuncLib:QAGetAllWidgetsOfClass(WorldContextObject, FoundWidgets, WidgetClass) end
---@param PointerEvent FPointerEvent
---@return boolean
function UGSE_UMGFuncLib:PointerEvent_IsTouchFirstMove(PointerEvent) end
---@param PointerEvent FPointerEvent
---@return boolean
function UGSE_UMGFuncLib:PointerEvent_IsMouseTouchEvent(PointerEvent) end
---@param PointerEvent FPointerEvent
---@param MouseButtonName FName
---@return boolean
function UGSE_UMGFuncLib:PointerEvent_IsMouseButtonDown(PointerEvent, MouseButtonName) end
---@param PointerEvent FPointerEvent
---@return FVector2D
function UGSE_UMGFuncLib:PointerEvent_GetScreenSpacePosition(PointerEvent) end
---@param Geometry FGeometry
---@param PointerEvent FPointerEvent
---@return FVector2D
function UGSE_UMGFuncLib:PointerEvent_GetPositionInGeometry(Geometry, PointerEvent) end
---@param PointerEvent FPointerEvent
---@return int32
function UGSE_UMGFuncLib:PointerEvent_GetPointerIndex(PointerEvent) end
---@param ID FName
---@param Namespace FString
---@return boolean
function UGSE_UMGFuncLib:NewLocalStringTable(ID, Namespace) end
---@param MyGeometry FGeometry
---@param MouseEvent FPointerEvent
---@param HitAreaDA UDataAsset
---@param AdvancedHitAlpha float
---@return boolean
function UGSE_UMGFuncLib:NeedExecuteActionWithDA(MyGeometry, MouseEvent, HitAreaDA, AdvancedHitAlpha) end
---@param MyGeometry FGeometry
---@param MouseEvent FPointerEvent
---@param AdvancedHitTexture UTexture2D
---@param AdvancedHitAlpha float
---@return boolean
function UGSE_UMGFuncLib:NeedExecuteAction(MyGeometry, MouseEvent, AdvancedHitTexture, AdvancedHitAlpha) end
---@param IsHandled boolean
---@return FEventReply
function UGSE_UMGFuncLib:MakeEventReply(IsHandled) end
function UGSE_UMGFuncLib:LogHittestGrid() end
---@param WorldContextObject UObject
---@param Geometry FGeometry
---@return FVector2D
function UGSE_UMGFuncLib:LocalToViewPortPos(WorldContextObject, Geometry) end
---@param WorldContextObject UObject
---@param Geometry FGeometry
---@return FVector2D
function UGSE_UMGFuncLib:LocalToViewPortPixelPos(WorldContextObject, Geometry) end
---@param TargetTexture UTexture2D
---@param AreaColorIDMap TMap<FColor, int32>
---@param AreaData TMap<int32, uint8>
---@param OutOriginPos FVector2D
---@param OutMapSize FVector2D
---@param ErrMsg FString
---@return int32
function UGSE_UMGFuncLib:LoadTexture2DToAreaIDArray(TargetTexture, AreaColorIDMap, AreaData, OutOriginPos, OutMapSize, ErrMsg) end
---@param InWidgetList TArray<UUserWidget>
---@param OutWidgetList TArray<UUserWidget>
function UGSE_UMGFuncLib:IsWidgetVisiableWithParentInList(InWidgetList, OutWidgetList) end
---@param TargetWidget UWidget
---@return boolean
function UGSE_UMGFuncLib:IsWidgetVisiableWithParent(TargetWidget) end
---@param MediaPlayer UMediaPlayer
---@return boolean
function UGSE_UMGFuncLib:IsMediaBeginPlay(MediaPlayer) end
---@param BinkMediaPlayer UBinkMediaPlayer
---@return boolean
function UGSE_UMGFuncLib:IsBinkMediaBeginPlay(BinkMediaPlayer) end
---@param uWidget UWidget
---@param InputType int32
---@param MyGeometry FGeometry
---@param MouseEvent FPointerEvent
function UGSE_UMGFuncLib:InvokeWidgetInputEvent(uWidget, InputType, MyGeometry, MouseEvent) end
---@param PlayerController APlayerController
---@param WorldLocation FVector
---@param ViewportPosition FVector2D
---@param bIsInFront boolean
---@return boolean
function UGSE_UMGFuncLib:GSProjectWorldLocationToWidgetPosition(PlayerController, WorldLocation, ViewportPosition, bIsInFront) end
---@param PlayerController APlayerController
---@param Canvas UWidget
---@param ProjWidgetInfos TArray<FProjWidgetInfo>
---@param Results TArray<FProjResult>
function UGSE_UMGFuncLib:GSProjectWidgetList(PlayerController, Canvas, ProjWidgetInfos, Results) end
---@param Widget UWidget
---@param position FVector2D
---@param WidgetSize FVector2D
function UGSE_UMGFuncLib:GetWidgetPositionSizeRefViewPort(Widget, position, WidgetSize) end
---@param Widget UWidget
---@return FVector2D
function UGSE_UMGFuncLib:GetWidgetLocalSize(Widget) end
---@param Widget UWidget
---@param NormalCoordinates FVector2D
---@return FVector2D
function UGSE_UMGFuncLib:GetWidgetLocalPositionAtCoordinatesWithPaintSpace(Widget, NormalCoordinates) end
---@param Widget UWidget
---@param NormalCoordinates FVector2D
---@return FVector2D
function UGSE_UMGFuncLib:GetWidgetLocalPositionAtCoordinates(Widget, NormalCoordinates) end
---@param Widget UWidget
---@return boolean
function UGSE_UMGFuncLib:GetWidgetIsVariable(Widget) end
---@param Widget UUserWidget
---@param Name FName
---@return UWidget
function UGSE_UMGFuncLib:GetWidgetFromName(Widget, Name) end
---@param Animation UWidgetAnimation
---@return FString
function UGSE_UMGFuncLib:GetWidgetAnimationName(Animation) end
---@param Widget UUserWidget
---@param Name FString
---@return UWidgetAnimation
function UGSE_UMGFuncLib:GetWidgetAnimationByName(Widget, Name) end
---@param Widget UWidget
---@return float
function UGSE_UMGFuncLib:GetWidgetAbsScale(Widget) end
---@param Widget UWidget
---@return FVector2D
function UGSE_UMGFuncLib:GetWidgetAbsoluteSize(Widget) end
---@param Widget UWidget
---@param NormalCoordinates FVector2D
---@return FVector2D
function UGSE_UMGFuncLib:GetWidgetAbsolutePositionAtCoordinatesWithPaintSpace(Widget, NormalCoordinates) end
---@param Widget UWidget
---@param NormalCoordinates FVector2D
---@return FVector2D
function UGSE_UMGFuncLib:GetWidgetAbsolutePositionAtCoordinates(Widget, NormalCoordinates) end
---@param Widget UWidget
---@return FVector2D
function UGSE_UMGFuncLib:GetWidgetAbsolutePosition(Widget) end
---@return FIntPoint
function UGSE_UMGFuncLib:GetViewportSizeXY() end
---@param WorldContextObject UObject
---@return FVector2D
function UGSE_UMGFuncLib:GetViewportSize(WorldContextObject) end
---@param WorldContextObject UObject
---@return float
function UGSE_UMGFuncLib:GetViewPortScale(WorldContextObject) end
---@param WorldContextObject UObject
---@return FVector2D
function UGSE_UMGFuncLib:GetViewPortAbsPosition(WorldContextObject) end
---@param TextBlock UTextBlock
---@return UMaterialInstanceDynamic
function UGSE_UMGFuncLib:GetTextBlockOutlineDynamicMaterial(TextBlock) end
---@param WorldContextObject UObject
---@return FMargin
function UGSE_UMGFuncLib:GetSafeZonePaddingSize(WorldContextObject) end
---@param Widget UUserWidget
---@return UWidget
function UGSE_UMGFuncLib:GetRootWidget(Widget) end
---@param PointerEvent FPointerEvent
---@return float
function UGSE_UMGFuncLib:GetMouseWheelDelta(PointerEvent) end
---@param OutPosition FVector2D
---@return boolean
function UGSE_UMGFuncLib:GetMousePositionFromViewport(OutPosition) end
---@param PointerEvent FPointerEvent
---@return FKey
function UGSE_UMGFuncLib:GetMouseKey(PointerEvent) end
---@param MediaPlayer UMediaPlayer
---@return double
function UGSE_UMGFuncLib:GetMediaPlayerTimer(MediaPlayer) end
---@param KeyName FName
---@return FKey
function UGSE_UMGFuncLib:GetKeyWithName(KeyName) end
---@param KeyName FName
---@return boolean
function UGSE_UMGFuncLib:GetIsGamepadKey(KeyName) end
---@param KeyName FName
---@return boolean
function UGSE_UMGFuncLib:GetIsAxis1DKey(KeyName) end
---@param FocusEvent FFocusEvent
---@return int32
function UGSE_UMGFuncLib:GetFocusEventUser(FocusEvent) end
---@param FocusEvent FFocusEvent
---@return EFocusCause
function UGSE_UMGFuncLib:GetFocusEventCause(FocusEvent) end
---@return FString
function UGSE_UMGFuncLib:GetCurrentCulture() end
---@param ParentWidget UPanelWidget
---@param ChildIndex int32
---@return UWidget
function UGSE_UMGFuncLib:GetChildWidgetAt(ParentWidget, ChildIndex) end
---@param AnalogInputEvent FAnalogInputEvent
---@return float
function UGSE_UMGFuncLib:GetAnalogValue(AnalogInputEvent) end
---@param AnalogInputEvent FAnalogInputEvent
---@return boolean
function UGSE_UMGFuncLib:GetAnalogKeyIsRepeat(AnalogInputEvent) end
---@param AnalogInputEvent FAnalogInputEvent
---@return FKey
function UGSE_UMGFuncLib:GetAnalogKey(AnalogInputEvent) end
---@param UserWidget UUserWidget
---@param WidgetClass UClass
---@return TArray<UWidget>
function UGSE_UMGFuncLib:GetAllChildWidgetWithClass(UserWidget, WidgetClass) end
---@param UserWidget UUserWidget
---@return TArray<UWidget>
function UGSE_UMGFuncLib:GetAllChildWidget(UserWidget) end
---@param UserWidget UUserWidget
---@param WidgetClass UClass
---@return TArray<UWidget>
function UGSE_UMGFuncLib:GetAllChildUserWidgetWithClass(UserWidget, WidgetClass) end
---@param ParentWidget UPanelWidget
---@return TArray<UUserWidget>
function UGSE_UMGFuncLib:GetAllChildUserWidget(ParentWidget) end
---@param InTextBlock UTextBlock
---@param InFoldingConfig FTextFoldingConfig
function UGSE_UMGFuncLib:FoldTextContent(InTextBlock, InFoldingConfig) end
---@param UserWidget UUserWidget
---@param ParentWidget UPanelWidget
---@param ChildWidgetName FName
---@return int32
function UGSE_UMGFuncLib:FindChildWidgetIndex(UserWidget, ParentWidget, ChildWidgetName) end
---@param UserWidget UUserWidget
---@param ParentWidget UPanelWidget
---@param ChildWidgetName FName
---@return UWidget
function UGSE_UMGFuncLib:FindChildWidget(UserWidget, ParentWidget, ChildWidgetName) end
---@param WorldContext UObject
---@param WidgetClass UClass
---@return UUserWidget
function UGSE_UMGFuncLib:CreateUserWidgetWithClass(WorldContext, WidgetClass) end
---@param WorldContext UObject
---@param ResPath FString
---@return UUserWidget
function UGSE_UMGFuncLib:CreateUserWidget(WorldContext, ResPath) end
---@param WorldContext UObject
---@return UGSViewPortHelper
function UGSE_UMGFuncLib:CreateGSViewPortHelper(WorldContext) end
---@param WorldContext UObject
---@return UGSAnimKeyStateBlender
function UGSE_UMGFuncLib:CreateGSAnimKeyStateBlender(WorldContext) end
---@param OwningWidget UWidget
---@param ResPath FString
---@param Name FName
---@return UUserWidget
function UGSE_UMGFuncLib:CreateEditorStandaloneWidget(OwningWidget, ResPath, Name) end
---@param Year int32
---@param Month int32
---@param Day int32
---@param Hour int32
---@param Minute int32
---@param Second int32
---@return FText
function UGSE_UMGFuncLib:ConvertToTimeText(Year, Month, Day, Hour, Minute, Second) end
---@param Year int32
---@param Month int32
---@param Day int32
---@param Hour int32
---@param Minute int32
---@param Second int32
---@return FText
function UGSE_UMGFuncLib:ConvertToDateText(Year, Month, Day, Hour, Minute, Second) end
---@param FromWidget UUserWidget
---@param WidgetClass UClass
---@return UWidget
function UGSE_UMGFuncLib:ConstructUWidgetWithClass(FromWidget, WidgetClass) end
---@param BaseWidget UUserWidget
---@param Name FName
---@return UUserWidget
function UGSE_UMGFuncLib:CloneUserWidget(BaseWidget, Name) end
---@param InImage UImage
---@param OutColorArray TArray<FColor>
---@param OutPosArray TArray<FVector2D>
function UGSE_UMGFuncLib:CalcImageTexture(InImage, OutColorArray, OutPosArray) end
---@param Image UImage
---@param TargetObj UObject
---@param Name FName
---@return boolean
function UGSE_UMGFuncLib:BindImageOnMouseDownEvent(Image, TargetObj, Name) end
---@param Border UBorder
---@param TargetObj UObject
---@param Name FName
---@return boolean
function UGSE_UMGFuncLib:BindBorderOnMouseDownEvent(Border, TargetObj, Name) end
---@param Widget UUserWidget
---@param ZOrder int32
function UGSE_UMGFuncLib:AddUserWidgetAsSlateToViewport(Widget, ZOrder) end
---@param IsActive boolean
function UGSE_UMGFuncLib:ActiveVirtualKeyboard(IsActive) end


---@class UGSE_WidgetCompFuncLib : UBlueprintFunctionLibrary
UGSE_WidgetCompFuncLib = {}

---@param Comp UWidgetComponent
function UGSE_WidgetCompFuncLib:UnregisterWidgetComponent(Comp) end
---@param Comp UWidgetComponent
function UGSE_WidgetCompFuncLib:RegisterWidgetComponent(Comp) end
---@param Comp UWidgetComponent
function UGSE_WidgetCompFuncLib:DestoryWidgetComponent(Comp) end


---@class UGSE_WorldFuncLib : UBlueprintFunctionLibrary
UGSE_WorldFuncLib = {}

---@param World UWorld
---@return boolean
function UGSE_WorldFuncLib:WorldViewportForeground(World) end
---@param World UWorld
---@return boolean
function UGSE_WorldFuncLib:WorldViewportCursorVisible(World) end
---@param World UWorld
---@return ULevel
function UGSE_WorldFuncLib:WorldGetPersistentLevel(World) end
---@param World UWorld
---@return ULevel
function UGSE_WorldFuncLib:WorldGetCurrentLevel(World) end
---@param World UWorld
function UGSE_WorldFuncLib:NotifyWorldSettingsMatchStart(World) end
---@param World UWorld
function UGSE_WorldFuncLib:NotifyWorldSettingsBeginPlay(World) end
---@param Level ULevel
---@param bChecked boolean
---@return AWorldSettings
function UGSE_WorldFuncLib:GetWorldSettings(Level, bChecked) end


---@class UGSFocusWidget : UWidget
---@field IsFocusable boolean
UGSFocusWidget = {}



---@class UGSLerpCon : UContentWidget
UGSLerpCon = {}


---@class UGSLerpConSlot : UPanelSlot
UGSLerpConSlot = {}


---@class UGSNavigationSystemModuleConfig : UNavigationSystemModuleConfig
UGSNavigationSystemModuleConfig = {}


---@class UGSNavigationSystemV1 : UNavigationSystemV1
UGSNavigationSystemV1 = {}


---@class UGSNavigationWorldSubsystem : UTickableWorldSubsystem
UGSNavigationWorldSubsystem = {}


---@class UGSOfflineFontBox : UWidget
---@field BrushArray TArray<FSlateBrush>
---@field Font UFont
---@field Text FText
---@field TextDelegate FGSOfflineFontBoxTextDelegate
---@field FontScaleFactor FIntPoint
---@field UVPadding FIntPoint
UGSOfflineFontBox = {}



---@class UGSRTAvatarConfigPreset : UPrimaryDataAsset
---@field HeroActorBPPath FString
---@field HeroTransform FTransform
---@field RTCamTransform FTransform
---@field RTCamFOV float
---@field LightConfigs TArray<FRTAvatarRectLightConfig>
UGSRTAvatarConfigPreset = {}



---@class UGSRetainerBox : UContentWidget
---@field bRetainRender boolean
---@field RenderOnInvalidation boolean
---@field RenderOnPhase boolean
---@field Phase int32
---@field PhaseCount int32
---@field IsGSPixToPix boolean
---@field EffectMaterial UMaterialInterface
---@field TextureParameter FName
UGSRetainerBox = {}

---@param TextureParameter FName
function UGSRetainerBox:SetTextureParameter(TextureParameter) end
---@param bInRetainRendering boolean
function UGSRetainerBox:SetRetainRendering(bInRetainRendering) end
---@param RenderPhase int32
---@param TotalPhases int32
function UGSRetainerBox:SetRenderingPhase(RenderPhase, TotalPhases) end
---@param EffectMaterial UMaterialInterface
function UGSRetainerBox:SetEffectMaterial(EffectMaterial) end
function UGSRetainerBox:RequestRender() end
---@param Size FVector2D
function UGSRetainerBox:OnViewWidgetSizeChangedEvent(Size) end
---@return UMaterialInstanceDynamic
function UGSRetainerBox:GetEffectMaterial() end


---@class UGSRichScaleText : UGSRichTextBlock
---@field GSWidthOverride float
---@field GSHeightOverride float
---@field GSMinDesiredWidth float
---@field GSMinDesiredHeight float
---@field GSMaxDesiredWidth float
---@field GSMaxDesiredHeight float
---@field GSMinAspectRatio float
---@field GSMaxAspectRatio float
---@field bOverride_GSWidthOverride boolean
---@field bOverride_GSHeightOverride boolean
---@field bOverride_GSMinDesiredWidth boolean
---@field bOverride_GSMinDesiredHeight boolean
---@field bOverride_GSMaxDesiredWidth boolean
---@field bOverride_GSMaxDesiredHeight boolean
---@field bOverride_GSMinAspectRatio boolean
---@field bOverride_GSMaxAspectRatio boolean
---@field Stretch EStretch::Type
---@field StretchDirection EStretchDirection::Type
---@field UserSpecifiedScale float
---@field IgnoreInheritedScale boolean
---@field HorizontalAlignment EHorizontalAlignment
---@field VerticalAlignment EVerticalAlignment
UGSRichScaleText = {}

---@param InVerticalAlignment EVerticalAlignment
function UGSRichScaleText:SetVerticalAlignment(InVerticalAlignment) end
---@param InUserSpecifiedScale float
function UGSRichScaleText:SetUserSpecifiedScale(InUserSpecifiedScale) end
---@param InStretchDirection EStretchDirection::Type
function UGSRichScaleText:SetStretchDirection(InStretchDirection) end
---@param InStretch EStretch::Type
function UGSRichScaleText:SetStretch(InStretch) end
---@param bInIgnoreInheritedScale boolean
function UGSRichScaleText:SetIgnoreInheritedScale(bInIgnoreInheritedScale) end
---@param InHorizontalAlignment EHorizontalAlignment
function UGSRichScaleText:SetHorizontalAlignment(InHorizontalAlignment) end
---@param InGSWidthOverride float
function UGSRichScaleText:SetGSWidthOverride(InGSWidthOverride) end
---@param InGSMinDesiredWidth float
function UGSRichScaleText:SetGSMinDesiredWidth(InGSMinDesiredWidth) end
---@param InGSMinDesiredHeight float
function UGSRichScaleText:SetGSMinDesiredHeight(InGSMinDesiredHeight) end
---@param InGSMinAspectRatio float
function UGSRichScaleText:SetGSMinAspectRatio(InGSMinAspectRatio) end
---@param InGSMaxDesiredWidth float
function UGSRichScaleText:SetGSMaxDesiredWidth(InGSMaxDesiredWidth) end
---@param InGSMaxDesiredHeight float
function UGSRichScaleText:SetGSMaxDesiredHeight(InGSMaxDesiredHeight) end
---@param InGSMaxAspectRatio float
function UGSRichScaleText:SetGSMaxAspectRatio(InGSMaxAspectRatio) end
---@param InGSHeightOverride float
function UGSRichScaleText:SetGSHeightOverride(InGSHeightOverride) end
function UGSRichScaleText:ClearGSWidthOverride() end
function UGSRichScaleText:ClearGSMinDesiredWidth() end
function UGSRichScaleText:ClearGSMinDesiredHeight() end
function UGSRichScaleText:ClearGSMinAspectRatio() end
function UGSRichScaleText:ClearGSMaxDesiredWidth() end
function UGSRichScaleText:ClearGSMaxDesiredHeight() end
function UGSRichScaleText:ClearGSMaxAspectRatio() end
function UGSRichScaleText:ClearGSHeightOverride() end


---@class UGSRichTextBlock : URichTextBlock
---@field UseIndent boolean
---@field Ellipsis FString
---@field DefaultIndentSize float
---@field DefaultCaltureConfig FGSRichCaltureConfig
---@field JapanCaltureConfig FGSRichCaltureConfig
---@field Content FText
UGSRichTextBlock = {}

---@param InUseIndent boolean
function UGSRichTextBlock:SetUseIndent(InUseIndent) end
---@param InDefaultIndentSize float
function UGSRichTextBlock:SetDefaultIndentSize(InDefaultIndentSize) end
function UGSRichTextBlock:OnTextPrePaint() end
function UGSRichTextBlock:NativeCheckText() end
function UGSRichTextBlock:MakeContentDirty() end
---@return boolean
function UGSRichTextBlock:GetUseIndent() end
---@return float
function UGSRichTextBlock:GetDefaultIndentSize() end
---@return FString
function UGSRichTextBlock:GetContent() end
---@param InText FText
function UGSRichTextBlock:ApplyText(InText) end


---@class UGSRoundRect : UOverlay
UGSRoundRect = {}

---@param PosInViewPort FVector2D
---@param IsInFront boolean
---@param InnerContentRectSize FVector2D
---@param InnerContentRectAlign FVector2D
---@param IsOuter boolean
---@param BorderPosRefRoundRect FVector2D
---@param RectAngle float
---@param OutIndicatorType int32
---@return boolean
function UGSRoundRect:CalcMappingRoundRectPoint(PosInViewPort, IsInFront, InnerContentRectSize, InnerContentRectAlign, IsOuter, BorderPosRefRoundRect, RectAngle, OutIndicatorType) end


---@class UGSRoundRectQuick : UOverlay
---@field RadiusCfg FVector4
UGSRoundRectQuick = {}



---@class UGSSafeZone : UWidget
---@field SafeZoneBrushColor FLinearColor
UGSSafeZone = {}



---@class UGSScaleText : UGSTextBlock
---@field GSWidthOverride float
---@field GSHeightOverride float
---@field GSMinDesiredWidth float
---@field GSMinDesiredHeight float
---@field GSMaxDesiredWidth float
---@field GSMaxDesiredHeight float
---@field GSMinAspectRatio float
---@field GSMaxAspectRatio float
---@field bOverride_GSWidthOverride boolean
---@field bOverride_GSHeightOverride boolean
---@field bOverride_GSMinDesiredWidth boolean
---@field bOverride_GSMinDesiredHeight boolean
---@field bOverride_GSMaxDesiredWidth boolean
---@field bOverride_GSMaxDesiredHeight boolean
---@field bOverride_GSMinAspectRatio boolean
---@field bOverride_GSMaxAspectRatio boolean
---@field Stretch EStretch::Type
---@field StretchDirection EStretchDirection::Type
---@field UserSpecifiedScale float
---@field IgnoreInheritedScale boolean
---@field HorizontalAlignment EHorizontalAlignment
---@field VerticalAlignment EVerticalAlignment
UGSScaleText = {}

---@param InVerticalAlignment EVerticalAlignment
function UGSScaleText:SetVerticalAlignment(InVerticalAlignment) end
---@param InUserSpecifiedScale float
function UGSScaleText:SetUserSpecifiedScale(InUserSpecifiedScale) end
---@param InStretchDirection EStretchDirection::Type
function UGSScaleText:SetStretchDirection(InStretchDirection) end
---@param InStretch EStretch::Type
function UGSScaleText:SetStretch(InStretch) end
---@param bInIgnoreInheritedScale boolean
function UGSScaleText:SetIgnoreInheritedScale(bInIgnoreInheritedScale) end
---@param InHorizontalAlignment EHorizontalAlignment
function UGSScaleText:SetHorizontalAlignment(InHorizontalAlignment) end
---@param InGSWidthOverride float
function UGSScaleText:SetGSWidthOverride(InGSWidthOverride) end
---@param InGSMinDesiredWidth float
function UGSScaleText:SetGSMinDesiredWidth(InGSMinDesiredWidth) end
---@param InGSMinDesiredHeight float
function UGSScaleText:SetGSMinDesiredHeight(InGSMinDesiredHeight) end
---@param InGSMinAspectRatio float
function UGSScaleText:SetGSMinAspectRatio(InGSMinAspectRatio) end
---@param InGSMaxDesiredWidth float
function UGSScaleText:SetGSMaxDesiredWidth(InGSMaxDesiredWidth) end
---@param InGSMaxDesiredHeight float
function UGSScaleText:SetGSMaxDesiredHeight(InGSMaxDesiredHeight) end
---@param InGSMaxAspectRatio float
function UGSScaleText:SetGSMaxAspectRatio(InGSMaxAspectRatio) end
---@param InGSHeightOverride float
function UGSScaleText:SetGSHeightOverride(InGSHeightOverride) end
function UGSScaleText:ClearGSWidthOverride() end
function UGSScaleText:ClearGSMinDesiredWidth() end
function UGSScaleText:ClearGSMinDesiredHeight() end
function UGSScaleText:ClearGSMinAspectRatio() end
function UGSScaleText:ClearGSMaxDesiredWidth() end
function UGSScaleText:ClearGSMaxDesiredHeight() end
function UGSScaleText:ClearGSMaxAspectRatio() end
function UGSScaleText:ClearGSHeightOverride() end


---@class UGSScrollBox : UPanelWidget
---@field WidgetBarStyle FScrollBarStyle
---@field BarStyle USlateWidgetStyleAsset
---@field Orientation EOrientation
---@field ScrollBarVisibility ESlateVisibility
---@field ScrollbarThickness FVector2D
---@field ScrollbarPadding FMargin
---@field AlwaysShowScrollbar boolean
---@field AlwaysShowScrollbarTrack boolean
---@field NavCanLoop boolean
---@field OnUserScrolled FGSScrollBoxOnUserScrolled
UGSScrollBox = {}

---@param InTopSpacer float
function UGSScrollBox:SetTopSpacer(InTopSpacer) end
---@param InTargetScrollOffset float
function UGSScrollBox:SetTargetScrollOffset(InTargetScrollOffset) end
---@param NewScrollWhenFocusChanges EScrollWhenFocusChanges
function UGSScrollBox:SetScrollWhenFocusChanges(NewScrollWhenFocusChanges) end
---@param InScrollOffset float
function UGSScrollBox:SetScrollOffset(InScrollOffset) end
---@param NewScrollBarVisibility ESlateVisibility
function UGSScrollBox:SetScrollbarVisibility(NewScrollBarVisibility) end
---@param NewScrollbarThickness FVector2D
function UGSScrollBox:SetScrollbarThickness(NewScrollbarThickness) end
---@param NewScrollbarPadding FMargin
function UGSScrollBox:SetScrollbarPadding(NewScrollbarPadding) end
---@param NewOrientation EOrientation
function UGSScrollBox:SetOrientation(NewOrientation) end
---@param NewNavigationScrollPadding float
function UGSScrollBox:SetNavigationScrollPadding(NewNavigationScrollPadding) end
---@param NewNavigationDestination EDescendantScrollDestination
function UGSScrollBox:SetNavigationDestination(NewNavigationDestination) end
---@param InNavCanLoop boolean
function UGSScrollBox:SetNavCanLoop(InNavCanLoop) end
---@param InBottomSpacer float
function UGSScrollBox:SetBottomSpacer(InBottomSpacer) end
---@param NewAlwaysShowScrollbar boolean
function UGSScrollBox:SetAlwaysShowScrollbar(NewAlwaysShowScrollbar) end
---@param WidgetToFind UWidget
---@param AnimateScroll boolean
---@param ScrollDestination EDescendantScrollDestination
---@param Padding float
function UGSScrollBox:ScrollWidgetIntoView(WidgetToFind, AnimateScroll, ScrollDestination, Padding) end
---@return float
function UGSScrollBox:GetViewOffsetFraction() end
---@return float
function UGSScrollBox:GetTopSpacer() end
---@return float
function UGSScrollBox:GetScrollOffsetOfEnd() end
---@return float
function UGSScrollBox:GetScrollOffset() end
---@return float
function UGSScrollBox:GetScrollContentWithOutSpacer() end
---@return float
function UGSScrollBox:GetScrollContent() end
---@return float
function UGSScrollBox:GetBottomSpacer() end


---@class UGSScrollBoxSlot : UPanelSlot
---@field Padding FMargin
---@field HorizontalAlignment EHorizontalAlignment
---@field VerticalAlignment EVerticalAlignment
UGSScrollBoxSlot = {}

---@param InVerticalAlignment EVerticalAlignment
function UGSScrollBoxSlot:SetVerticalAlignment(InVerticalAlignment) end
---@param InPadding FMargin
function UGSScrollBoxSlot:SetPadding(InPadding) end
---@param InHorizontalAlignment EHorizontalAlignment
function UGSScrollBoxSlot:SetHorizontalAlignment(InHorizontalAlignment) end


---@class UGSTestWidget : UUserWidget
---@field TestNum int32
---@field TestImage UImage
---@field TestAudioEvent UAkAudioEvent
UGSTestWidget = {}



---@class UGSTextBlock : UTextBlock
---@field UseIndent boolean
---@field Ellipsis FString
---@field DefaultIndentSize float
---@field Content FText
UGSTextBlock = {}

---@param InUseIndent boolean
function UGSTextBlock:SetUseIndent(InUseIndent) end
---@param InDefaultIndentSize float
function UGSTextBlock:SetDefaultIndentSize(InDefaultIndentSize) end
function UGSTextBlock:OnTextPrePaint() end
function UGSTextBlock:NativeCheckText() end
function UGSTextBlock:MakeContentDirty() end
---@return boolean
function UGSTextBlock:GetUseIndent() end
---@return float
function UGSTextBlock:GetDefaultIndentSize() end
---@return FString
function UGSTextBlock:GetContent() end
---@param InText FText
function UGSTextBlock:ApplyText(InText) end


---@class UGSTileView : UListView
---@field EntryHeight float
---@field EntryWidth float
---@field TileAlignment EListItemAlignment
---@field TopSpacerSize float
---@field BottomSpacerSize float
---@field ShowScrollBar boolean
---@field bWrapHorizontalNavigation boolean
UGSTileView = {}

---@param InTopSpacerSize float
function UGSTileView:SetTopSpacerSize(InTopSpacerSize) end
---@param InChildsPosList TArray<float>
function UGSTileView:SetTopItemPosList(InChildsPosList) end
---@param InTileAlignment EListItemAlignment
function UGSTileView:SetTileAlignment(InTileAlignment) end
---@param InShowScrollBar boolean
function UGSTileView:SetShowScrollBar(InShowScrollBar) end
---@param InOrientation EOrientation
function UGSTileView:SetOrientation(InOrientation) end
---@param InItemWidget TSubclassOf<UUserWidget>
function UGSTileView:SetItemWidget(InItemWidget) end
---@param InForceNeedTopSpacer boolean
function UGSTileView:SetForceNeedTopSpacer(InForceNeedTopSpacer) end
---@param InForceNeedBottomSpacer boolean
function UGSTileView:SetForceNeedBottomSpacer(InForceNeedBottomSpacer) end
---@param NewWidth float
function UGSTileView:SetEntryWidth(NewWidth) end
---@param NewHeight float
function UGSTileView:SetEntryHeight(NewHeight) end
---@param InBottomSpacerSize float
function UGSTileView:SetBottomSpacerSize(InBottomSpacerSize) end
---@param InChildsPosList TArray<float>
function UGSTileView:SetBottomItemPosList(InChildsPosList) end
---@param Size FVector2D
function UGSTileView:OnViewWidgetSizeChangedEvent(Size) end
---@param Widget UUserWidget
function UGSTileView:OnEntryWidgetReleasedEvent(Widget) end
---@param Widget UUserWidget
function UGSTileView:OnEntryWidgetGeneratedEvent(Widget) end
---@param Item UObject
---@param Widget UUserWidget
function UGSTileView:OnEntryInitializedEvent(Item, Widget) end
---@param Item UObject
---@param Widget UUserWidget
function UGSTileView:ItemScrolledIntoViewEvent(Item, Widget) end
---@param WidgetToInset UUserWidget
function UGSTileView:InsertTopScrollWidget(WidgetToInset) end
---@param WidgetToInset UUserWidget
function UGSTileView:InsertBottomScrollWidget(WidgetToInset) end
---@return float
function UGSTileView:GetTopSpacerSize() end
---@return float
function UGSTileView:GetFirstLine() end
---@return float
function UGSTileView:GetEntryWidth() end
---@return float
function UGSTileView:GetEntryHeight() end
---@return float
function UGSTileView:GetBottomSpacerSize() end
function UGSTileView:ClearTopScrollWidgets() end
function UGSTileView:ClearBottomScrollWidgets() end
function UGSTileView:ClearAllWidget() end
---@param WidgetToAppend UUserWidget
function UGSTileView:AddTopScrollWidget(WidgetToAppend) end
---@param WidgetToAppend UUserWidget
function UGSTileView:AddBottomScrollWidget(WidgetToAppend) end


---@class UGSUINavigationDel : UObject
UGSUINavigationDel = {}

---@param OldWidget UWidget
---@param NewWidget UWidget
---@param FocusEvent FFocusEvent
function UGSUINavigationDel:GSOnNavigationChangedFocus(OldWidget, NewWidget, FocusEvent) end


---@class UGSUserWidgetOnFocusChange : UUserWidget
UGSUserWidgetOnFocusChange = {}


---@class UGSViewPortHelper : UObject
---@field OnViewPortResized FGSViewPortHelperOnViewPortResized
UGSViewPortHelper = {}



---@class UGSWidgetRender : USceneComponent
---@field WidgetClass TSubclassOf<UUserWidget>
---@field RenderTarget UTextureRenderTarget2D
---@field bApplyGammaCorrection boolean
---@field bIsAutoUpdate boolean
---@field bIsUseViewPortWindowSize boolean
---@field RefWindowSize FVector2D
---@field InstWidget UUserWidget
UGSWidgetRender = {}

function UGSWidgetRender:UpdateRenderTarget2D() end
---@return UUserWidget
function UGSWidgetRender:GetUserWidgetObject() end


---@class UGS_PCGStaticMeshSpawner : UPCGStaticMeshSpawnerSettings
---@field matSwitchParams TMap<FName, boolean>
---@field matScalarParams TMap<FName, float>
---@field matVectorParams TMap<FName, FLinearColor>
---@field ICPDVersion int32
---@field bAutoSaveICPDMat boolean
---@field bGetOriginalCPDParams boolean
---@field bClearICPDMat boolean
---@field bDeleteICPDMatWhenClear boolean
UGS_PCGStaticMeshSpawner = {}



---@class UHitPhysicalAnimComp : UPhysicalAnimationComponent
---@field PhysicalAnimationData FPhysicalAnimationData
---@field WeightCurve UCurveFloat
---@field HitSegmentation int32
---@field CurveWeightAtTime float
---@field TimeSum float
---@field HitBoneNames TArray<FName>
---@field ForceVector FVector
---@field ForceStrength float
---@field Mesh USkeletalMeshComponent
UHitPhysicalAnimComp = {}

function UHitPhysicalAnimComp:TimerTick() end
function UHitPhysicalAnimComp:TimerCallback() end
---@param BoneNames TArray<FName>
function UHitPhysicalAnimComp:SetBonesPhysicWeight(BoneNames) end
---@param BoneNames TArray<FName>
function UHitPhysicalAnimComp:SetBonesPhysic(BoneNames) end
---@param BoneNames TArray<FName>
function UHitPhysicalAnimComp:SetBonesKinematic(BoneNames) end
---@param TargetMesh USkeletalMeshComponent
---@param BoneName FName
---@param NewBool boolean
function UHitPhysicalAnimComp:SetBodyBonePhysic(TargetMesh, BoneName, NewBool) end
function UHitPhysicalAnimComp:InitiazliePhysicalAnimation() end
function UHitPhysicalAnimComp:HitBoneImpulse() end
---@param TimeDelay float
---@return boolean
function UHitPhysicalAnimComp:CreateTimer(TimeDelay) end
---@param TargetSkeletalMesh USkeletalMeshComponent
---@param Radius float
---@param WorldPosition FVector
---@param WhiteNamesList TArray<FName>
---@return TArray<FName>
function UHitPhysicalAnimComp:BonesSphereMask(TargetSkeletalMesh, Radius, WorldPosition, WhiteNamesList) end
---@param BoneList TArray<FName>
---@param InForceVector FVector
---@param InForceStrength float
---@return boolean
function UHitPhysicalAnimComp:BeHit(BoneList, InForceVector, InForceStrength) end


---@class UHttpResposeListener : UObject
UHttpResposeListener = {}

---@param sentBytes int32
---@param lReceivedBytes int32
---@param lTotalBytes int32
function UHttpResposeListener:OnRequestProgress(sentBytes, lReceivedBytes, lTotalBytes) end
---@param bSuccess boolean
---@param HttpCode int32
---@param Content TArray<uint8>
function UHttpResposeListener:OnReponseComplete(bSuccess, HttpCode, Content) end
---@return boolean
function UHttpResposeListener:IsNeedProgress() end


---@class UIKMeshControlComponent : UActorComponent
---@field TargetMeshOwner ACharacter
---@field TargetMesh USkeletalMeshComponent
---@field DefaultMeshZOffset float
---@field bIsTraceDebug boolean
---@field bIsIKActive boolean
---@field IKFootLeftBoneName FName
---@field IKFootRightoneName FName
---@field MaxCheckSpeed float
---@field TraceDepth float
---@field OffsetLerpAlpha float
UIKMeshControlComponent = {}



---@class ULandscapeReader : UObject
---@field TargetProxy ALandscapeProxy
---@field ProxyTransform FTransform
---@field ActorSpaceExtendsMin FIntPoint
---@field ActorSpaceExtendsMax FIntPoint
---@field isCached boolean
---@field LayerWeights FLandscapeReaderAllWeightData
---@field HeightData TArray<uint16>
ULandscapeReader = {}

---@return int32
function ULandscapeReader:WeightDataElementSize() end
---@param LayerIndex int32
---@return int32
function ULandscapeReader:WeightDataElementNum(LayerIndex) end
---@param WorldPos FVector
---@param LayerIndex int32
---@param SampleType ESampleType
---@return float
function ULandscapeReader:SampleWeightData(WorldPos, LayerIndex, SampleType) end
---@param WorldPos FVector
---@param SampleType ESampleType
---@return float
function ULandscapeReader:SampleHeightData(WorldPos, SampleType) end
---@return int32
function ULandscapeReader:HeightDataElementSize() end
---@return int32
function ULandscapeReader:HeightDataElementNum() end
---@param MinX int32
---@param MinY int32
---@param MaxX int32
---@param MaxY int32
---@param LayerIndex int32
---@return FIntPtr
function ULandscapeReader:GetWeightDataInRect(MinX, MinY, MaxX, MaxY, LayerIndex) end
---@param LayerIndex int32
---@return FIntPtr
function ULandscapeReader:GetWeightData(LayerIndex) end
---@param MinX int32
---@param MinY int32
---@param MaxX int32
---@param MaxY int32
---@return FIntPtr
function ULandscapeReader:GetHeightDataInRect(MinX, MinY, MaxX, MaxY) end
---@return FIntPtr
function ULandscapeReader:GetHeightData() end
---@param NewLandscapeProxy ALandscapeProxy
function ULandscapeReader:Cache(NewLandscapeProxy) end


---@class UNiagaraStatInfoUI : UStatInfoBaseWidget
---@field VBox_StatList UVerticalBox
UNiagaraStatInfoUI = {}



---@class URTAvatarUtil : UObject
URTAvatarUtil = {}


---@class USFadeObjectsComponent : UActorComponent
---@field fadeObjects TArray<FFadeObjStruct>
---@field timerHandle_ObjectComputeTimer FTimerHandle
---@field timerHandle_AddObjectsTimer FTimerHandle
---@field currentFade float
---@field fadeNowID int32
---@field fadeObjectsTemp TArray<UPrimitiveComponent>
---@field fadeObjectsHit TArray<UPrimitiveComponent>
---@field fadeMaterial UMaterial
---@field bEnable boolean
---@field addObjectInterval float
---@field calcFadeInterval float
---@field workDistance float
---@field nearCameraRadius float
---@field playerClass UClass
---@field ObjectTypes TArray<ECollisionChannel>
---@field ChannelType ECollisionChannel
---@field actorsIgnore TArray<AActor>
---@field FadeRate float
---@field CapsuleHalfHeight float
---@field capsuleRadius float
---@field characterArray TArray<AActor>
---@field nearObjectFade float
---@field farObjectFade float
---@field immediatelyFade float
USFadeObjectsComponent = {}



---@class USlateDebugInfo : UUserWidget
---@field txt_Fps UTextBlock
---@field txt_TickTime UTextBlock
---@field txt_SlateRender UTextBlock
---@field txt_WidgetRender UTextBlock
---@field txt_Prepass UTextBlock
---@field txt_NumBatches UTextBlock
---@field txt_WidgetAllocSize UTextBlock
---@field GetStatInfoInterval float
USlateDebugInfo = {}



---@class UStatGroupInfoThresholdConfig : UPrimaryDataAsset
---@field SimulatedGraphicsCardConfig TArray<FStatUISimulatedGraphicsCardScaleFactor>
---@field ThresholdConfig TArray<FStatInfoThreshold>
---@field TextColor_Medium FLinearColor
---@field TextColor_High FLinearColor
---@field TextColor_Severe FLinearColor
UStatGroupInfoThresholdConfig = {}



---@class UStatInfoBaseWidget : UUserWidget
---@field StatGroupThresholdConfig UStatGroupInfoThresholdConfig
---@field FetchStatInfoInterval float
---@field SimulatedGraphicsCard EStatUISimulatedGraphicsCard
---@field SelfGraphicsCard EStatUISimulatedGraphicsCard
---@field bEnableRecordPerformanceData boolean
---@field RecordFileName FString
UStatInfoBaseWidget = {}

---@param FXConfig FString
---@param UnitName FString
---@param SkillName FString
---@param AssetPath FString
---@param MontageLength float
function UStatInfoBaseWidget:StartRecord(FXConfig, UnitName, SkillName, AssetPath, MontageLength) end
---@param NeedCleanup int32
function UStatInfoBaseWidget:SaveRecordsToFiles(NeedCleanup) end
---@param InStatName FString
---@return float
function UStatInfoBaseWidget:GetSimulatedGraphicsCardScaleFactor(InStatName) end
---@return FString
function UStatInfoBaseWidget:GetGPUBrand() end
function UStatInfoBaseWidget:EndRecord() end


---@class UTamerAsyncLineTraceManager : UObject
---@field VisibleCount TMap<int32, int32>
---@field WaitTraceFrameCount int32
UTamerAsyncLineTraceManager = {}

---@param InRefID int32
function UTamerAsyncLineTraceManager:UnregisterTamerRef(InRefID) end
---@param InPlayerLocation FVector
---@param InTraceTamers TArray<int32>
function UTamerAsyncLineTraceManager:StartAsyncLineTrace(InPlayerLocation, InTraceTamers) end
---@param InRefID int32
---@param InLocation FVector
---@param InCapsuleHalfHeight float
function UTamerAsyncLineTraceManager:RegisterTamerRef(InRefID, InLocation, InCapsuleHalfHeight) end
---@param OutVisibleTamers TArray<int32>
---@param OutInvisibleTamers TArray<int32>
---@return boolean
function UTamerAsyncLineTraceManager:GetAndCleanAsyncLineTraceResult(OutVisibleTamers, OutInvisibleTamers) end
function UTamerAsyncLineTraceManager:ClearAllData() end


---@class UTilingImage : UImage
UTilingImage = {}


---@class UVATAnimClipsInfoConfig : UPrimaryDataAsset
---@field ClipConfigs TArray<FVATAnimClipInfo>
---@field TotalFrames int32
UVATAnimClipsInfoConfig = {}



