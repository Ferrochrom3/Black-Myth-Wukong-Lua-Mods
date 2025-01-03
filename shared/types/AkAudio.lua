---@meta

---@class AAkAcousticPortal : AVolume
---@field Portal UAkPortalComponent
---@field InitialState AkAcousticPortalState
---@field bRequiresStateMigration boolean
AAkAcousticPortal = {}

function AAkAcousticPortal:OpenPortal() end
---@return AkAcousticPortalState
function AAkAcousticPortal:GetCurrentState() end
function AAkAcousticPortal:ClosePortal() end


---@class AAkAmbientSound : AActor
---@field AkAudioEvent UAkAudioEvent
---@field AkComponent UAkComponent
---@field StopWhenOwnerIsDestroyed boolean
---@field AutoPost boolean
AAkAmbientSound = {}

function AAkAmbientSound:StopAmbientSound() end
function AAkAmbientSound:StartAmbientSound() end


---@class AAkReverbVolume : AVolume
---@field bEnabled boolean
---@field AuxBus UAkAuxBus
---@field AuxBusName FString
---@field SendLevel float
---@field FadeRate float
---@field Priority float
---@field LateReverbComponent UAkLateReverbComponent
AAkReverbVolume = {}



---@class AAkSpatialAudioVolume : AVolume
---@field SurfaceReflectorSet UAkSurfaceReflectorSetComponent
---@field LateReverb UAkLateReverbComponent
---@field Room UAkRoomComponent
AAkSpatialAudioVolume = {}



---@class AAkSpotReflector : AActor
---@field EarlyReflectionAuxBus UAkAuxBus
---@field EarlyReflectionAuxBusName FString
---@field AcousticTexture UAkAcousticTexture
---@field DistanceScalingFactor float
---@field Level float
---@field SameRoomOnly boolean
---@field EnableRoomOverride boolean
---@field RoomOverride AActor
AAkSpotReflector = {}



---@class FAKWaapiJsonObject
FAKWaapiJsonObject = {}


---@class FAkAcousticSurface
---@field Texture uint32
---@field Occlusion float
---@field Name FString
FAkAcousticSurface = {}



---@class FAkAcousticTextureParams
---@field AbsorptionValues FVector4
FAkAcousticTextureParams = {}



---@class FAkAdvancedInitializationSettings
---@field IO_MemorySize uint32
---@field IO_Granularity uint32
---@field TargetAutoStreamBufferLength float
---@field UseStreamCache boolean
---@field MaximumPinnedBytesInCache uint32
---@field EnableGameSyncPreparation boolean
---@field ContinuousPlaybackLookAhead uint32
---@field MonitorQueuePoolSize uint32
---@field MaximumHardwareTimeoutMs uint32
---@field DebugOutOfRangeCheckEnabled boolean
---@field DebugOutOfRangeLimit float
FAkAdvancedInitializationSettings = {}



---@class FAkAdvancedInitializationSettingsWithMultiCoreRendering : FAkAdvancedInitializationSettings
---@field EnableMultiCoreRendering boolean
---@field MaxNumJobWorkers uint32
---@field JobWorkerMaxExecutionTimeUSec uint32
FAkAdvancedInitializationSettingsWithMultiCoreRendering = {}



---@class FAkAndroidAdvancedInitializationSettings : FAkAdvancedInitializationSettingsWithMultiCoreRendering
---@field AudioAPI uint32
---@field RoundFrameSizeToHardwareSize boolean
FAkAndroidAdvancedInitializationSettings = {}



---@class FAkAudioSession
---@field AudioSessionCategory EAkAudioSessionCategory
---@field AudioSessionCategoryOptions uint32
---@field AudioSessionMode EAkAudioSessionMode
FAkAudioSession = {}



---@class FAkBoolPropertyToControl
---@field ItemProperty FString
FAkBoolPropertyToControl = {}



---@class FAkChannelMask
---@field channelmask int32
FAkChannelMask = {}



---@class FAkCommonInitializationSettings
---@field MaximumNumberOfMemoryPools uint32
---@field MaximumNumberOfPositioningPaths uint32
---@field CommandQueueSize uint32
---@field SamplesPerFrame uint32
---@field MainOutputSettings FAkMainOutputSettings
---@field StreamingLookAheadRatio float
---@field NumberOfRefillsInVoice uint16
---@field SpatialAudioSettings FAkSpatialAudioSettings
FAkCommonInitializationSettings = {}



---@class FAkCommonInitializationSettingsWithSampleRate : FAkCommonInitializationSettings
---@field SampleRate uint32
FAkCommonInitializationSettingsWithSampleRate = {}



---@class FAkCommunicationSettings
---@field PoolSize uint32
---@field DiscoveryBroadcastPort uint16
---@field CommandPort uint16
---@field NetworkName FString
FAkCommunicationSettings = {}



---@class FAkCommunicationSettingsWithCommSelection : FAkCommunicationSettings
---@field CommunicationSystem EAkCommSystem
FAkCommunicationSettingsWithCommSelection = {}



---@class FAkCommunicationSettingsWithSystemInitialization : FAkCommunicationSettings
---@field InitializeSystemComms boolean
FAkCommunicationSettingsWithSystemInitialization = {}



---@class FAkExternalSourceInfo
---@field ExternalSrcName FString
---@field CodecID AkCodecId
---@field Filename FString
---@field ExternalSourceAsset UAkExternalMediaAsset
---@field IsStreamed boolean
FAkExternalSourceInfo = {}



---@class FAkGameObjectDebugInfo
---@field ObjectName FString
---@field MaxRadius float
---@field SoundPosition FVector
---@field OrientationFront FVector
---@field OrientationTop FVector
---@field OrientationRight FVector
---@field PlayingID2EventNames TMap<int32, FString>
---@field GameObjectID int64
---@field bDefaultListener boolean
FAkGameObjectDebugInfo = {}



---@class FAkGeometryData
---@field Vertices TArray<FVector>
---@field Surfaces TArray<FAkAcousticSurface>
---@field Triangles TArray<FAkTriangle>
---@field ToOverrideAcousticTexture TArray<UPhysicalMaterial>
---@field ToOverrideOcclusion TArray<UPhysicalMaterial>
FAkGeometryData = {}



---@class FAkGeometrySurfaceOverride
---@field AcousticTexture UAkAcousticTexture
---@field bEnableOcclusionOverride boolean
---@field OcclusionValue float
---@field SurfaceArea float
FAkGeometrySurfaceOverride = {}



---@class FAkGeometrySurfacePropertiesToMap
---@field AcousticTexture TSoftObjectPtr<UAkAcousticTexture>
---@field OcclusionValue float
FAkGeometrySurfacePropertiesToMap = {}



---@class FAkHololensAdvancedInitializationSettings : FAkAdvancedInitializationSettingsWithMultiCoreRendering
---@field UseHeadMountedDisplayAudioDevice boolean
FAkHololensAdvancedInitializationSettings = {}



---@class FAkMainOutputSettings
---@field AudioDeviceShareSet FString
---@field DeviceID uint32
---@field PanningRule EAkPanningRule
---@field ChannelConfigType EAkChannelConfigType
---@field channelmask uint32
---@field NumberOfChannels uint32
FAkMainOutputSettings = {}



---@class FAkMidiCc : FAkMidiEventBase
---@field Cc EAkMidiCcValues
---@field Value uint8
FAkMidiCc = {}



---@class FAkMidiChannelAftertouch : FAkMidiEventBase
---@field Value uint8
FAkMidiChannelAftertouch = {}



---@class FAkMidiEventBase
---@field Type EAkMidiEventType
---@field Chan uint8
FAkMidiEventBase = {}



---@class FAkMidiGeneric : FAkMidiEventBase
---@field Param1 uint8
---@field Param2 uint8
FAkMidiGeneric = {}



---@class FAkMidiNoteAftertouch : FAkMidiEventBase
---@field Note uint8
---@field Value uint8
FAkMidiNoteAftertouch = {}



---@class FAkMidiNoteOnOff : FAkMidiEventBase
---@field Note uint8
---@field Velocity uint8
FAkMidiNoteOnOff = {}



---@class FAkMidiPitchBend : FAkMidiEventBase
---@field ValueLsb uint8
---@field ValueMsb uint8
---@field FullValue int32
FAkMidiPitchBend = {}



---@class FAkMidiProgramChange : FAkMidiEventBase
---@field ProgramNum uint8
FAkMidiProgramChange = {}



---@class FAkOutputSettings
---@field AudioDeviceShareSetName FString
---@field IdDevice int32
---@field PanRule PanningRule
---@field ChannelConfig AkChannelConfiguration
FAkOutputSettings = {}



---@class FAkPS5AdvancedInitializationSettings : FAkAdvancedInitializationSettingsWithMultiCoreRendering
---@field UseHardwareCodecLowLatencyMode boolean
---@field bVorbisHwAcceleration boolean
---@field bEnable3DAudioSync boolean
---@field uNumOperationsForHwMixing uint32
---@field bPlotQueueLevel boolean
---@field NumAudioOut2Ports uint32
---@field NumAudioOut2ObjectPorts uint32
FAkPS5AdvancedInitializationSettings = {}



---@class FAkPropertyToControl
---@field ItemProperty FString
FAkPropertyToControl = {}



---@class FAkReverbDescriptor
---@field Primitive UPrimitiveComponent
FAkReverbDescriptor = {}



---@class FAkSegmentInfo
---@field CurrentPosition int32
---@field PreEntryDuration int32
---@field ActiveDuration int32
---@field PostExitDuration int32
---@field RemainingLookAheadTime int32
---@field BeatDuration float
---@field BarDuration float
---@field GridDuration float
---@field GridOffset float
FAkSegmentInfo = {}



---@class FAkSpatialAudioSettings
---@field MaxSoundPropagationDepth uint32
---@field MovementThreshold float
---@field NumberOfPrimaryRays uint32
---@field ReflectionOrder uint32
---@field DiffractionOrder uint32
---@field DiffractionOnReflectionsOrder uint32
---@field MaximumPathLength float
---@field CPULimitPercentage float
---@field LoadBalancingSpread uint32
---@field EnableGeometricDiffractionAndTransmission boolean
---@field CalcEmitterVirtualPosition boolean
FAkSpatialAudioSettings = {}



---@class FAkSurfaceEdgeInfo
FAkSurfaceEdgeInfo = {}


---@class FAkSurfaceEdgeVerts
FAkSurfaceEdgeVerts = {}


---@class FAkSurfacePoly
---@field Texture UAkAcousticTexture
---@field Occlusion float
---@field EnableSurface boolean
---@field SurfaceArea float
FAkSurfacePoly = {}



---@class FAkTriangle
---@field Point0 uint16
---@field Point1 uint16
---@field Point2 uint16
---@field Surface uint16
FAkTriangle = {}



---@class FAkWaapiFieldNames
---@field FieldName FString
FAkWaapiFieldNames = {}



---@class FAkWaapiSubscriptionId
FAkWaapiSubscriptionId = {}


---@class FAkWaapiUri
---@field Uri FString
FAkWaapiUri = {}



---@class FAkWinGDKAdvancedInitializationSettings : FAkAdvancedInitializationSettingsWithMultiCoreRendering
---@field UseHeadMountedDisplayAudioDevice boolean
---@field uMaxSystemAudioObjects uint32
FAkWinGDKAdvancedInitializationSettings = {}



---@class FAkWindowsAdvancedInitializationSettings : FAkAdvancedInitializationSettingsWithMultiCoreRendering
---@field UseHeadMountedDisplayAudioDevice boolean
---@field MaxSystemAudioObjects uint32
FAkWindowsAdvancedInitializationSettings = {}



---@class FAkWwiseItemToControl
---@field ItemPicked FAkWwiseObjectDetails
---@field ItemPath FString
FAkWwiseItemToControl = {}



---@class FAkWwiseObjectDetails
---@field ItemName FString
---@field ItemPath FString
---@field ItemId FString
FAkWwiseObjectDetails = {}



---@class FAkXSXAdvancedInitializationSettings : FAkAdvancedInitializationSettingsWithMultiCoreRendering
---@field MaximumNumberOfXMAVoices uint16
---@field UseHardwareCodecLowLatencyMode boolean
---@field MaximumNumberOfOpusVoices uint16
---@field uMaxSystemAudioObjects uint32
FAkXSXAdvancedInitializationSettings = {}



---@class FAkXSXApuHeapInitializationSettings
---@field CachedSize uint32
---@field NonCachedSize uint32
FAkXSXApuHeapInitializationSettings = {}



---@class FMovieSceneAkAudioEventTemplate : FMovieSceneEvalTemplate
---@field Section UMovieSceneAkAudioEventSection
FMovieSceneAkAudioEventTemplate = {}



---@class FMovieSceneAkAudioRTPCTemplate : FMovieSceneEvalTemplate
---@field Section UMovieSceneAkAudioRTPCSection
FMovieSceneAkAudioRTPCTemplate = {}



---@class FMovieSceneFloatChannelSerializationHelper
---@field PreInfinityExtrap ERichCurveExtrapolation
---@field PostInfinityExtrap ERichCurveExtrapolation
---@field Times TArray<int32>
---@field Values TArray<FMovieSceneFloatValueSerializationHelper>
---@field DefaultValue float
---@field bHasDefaultValue boolean
FMovieSceneFloatChannelSerializationHelper = {}



---@class FMovieSceneFloatValueSerializationHelper
---@field Value float
---@field InterpMode ERichCurveInterpMode
---@field TangentMode ERichCurveTangentMode
---@field Tangent FMovieSceneTangentDataSerializationHelper
FMovieSceneFloatValueSerializationHelper = {}



---@class FMovieSceneTangentDataSerializationHelper
---@field ArriveTangent float
---@field LeaveTangent float
---@field TangentWeightMode ERichCurveTangentWeightMode
---@field ArriveTangentWeight float
---@field LeaveTangentWeight float
FMovieSceneTangentDataSerializationHelper = {}



---@class IAkPlatformInitialisationSettingsBase : IInterface
IAkPlatformInitialisationSettingsBase = {}


---@class UAkAcousticTexture : UAkAudioType
---@field AcousticTextureCookedData FWwiseAcousticTextureCookedData
UAkAcousticTexture = {}



---@class UAkAcousticTextureSetComponent : USceneComponent
UAkAcousticTextureSetComponent = {}


---@class UAkAndroidInitializationSettings : UObject
---@field CommonSettings FAkCommonInitializationSettingsWithSampleRate
---@field CommunicationSettings FAkCommunicationSettingsWithSystemInitialization
---@field AdvancedSettings FAkAndroidAdvancedInitializationSettings
UAkAndroidInitializationSettings = {}

---@param NewValue boolean
function UAkAndroidInitializationSettings:MigrateMultiCoreRendering(NewValue) end


---@class UAkAndroidPlatformInfo : UAkPlatformInfo
UAkAndroidPlatformInfo = {}


---@class UAkAssetData : UObject
UAkAssetData = {}


---@class UAkAssetPlatformData : UObject
---@field CurrentAssetData UAkAssetData
UAkAssetPlatformData = {}



---@class UAkAudioBank : UAkAudioType
---@field AutoLoad boolean
UAkAudioBank = {}



---@class UAkAudioEvent : UAkAudioType
---@field MaxAttenuationRadius float
---@field IsInfinite boolean
---@field MinimumDuration float
---@field MaximumDuration float
---@field EventCookedData FWwiseLocalizedEventCookedData
---@field RequiredBank UAkAudioBank
UAkAudioEvent = {}

---@param GameObject UAkGameObject
---@param LatentActionInfo FLatentActionInfo
---@return int32
function UAkAudioEvent:PostOnGameObjectAndWait(GameObject, LatentActionInfo) end
---@param GameObject UAkGameObject
---@param Delegate FPostOnGameObjectDelegate
---@param CallbackMask int32
---@return int32
function UAkAudioEvent:PostOnGameObject(GameObject, Delegate, CallbackMask) end
---@param Component UAkComponent
---@param bStopWhenAttachedObjectDestroyed boolean
---@param LatentActionInfo FLatentActionInfo
---@return int32
function UAkAudioEvent:PostOnComponentAndWait(Component, bStopWhenAttachedObjectDestroyed, LatentActionInfo) end
---@param Component UAkComponent
---@param Delegate FPostOnComponentDelegate
---@param CallbackMask int32
---@param bStopWhenAttachedObjectDestroyed boolean
---@return int32
function UAkAudioEvent:PostOnComponent(Component, Delegate, CallbackMask, bStopWhenAttachedObjectDestroyed) end
---@param Actor AActor
---@param bStopWhenAttachedObjectDestroyed boolean
---@param LatentActionInfo FLatentActionInfo
---@return int32
function UAkAudioEvent:PostOnActorAndWait(Actor, bStopWhenAttachedObjectDestroyed, LatentActionInfo) end
---@param Actor AActor
---@param Delegate FPostOnActorDelegate
---@param CallbackMask int32
---@param bStopWhenAttachedObjectDestroyed boolean
---@return int32
function UAkAudioEvent:PostOnActor(Actor, Delegate, CallbackMask, bStopWhenAttachedObjectDestroyed) end
---@param Location FVector
---@param Orientation FRotator
---@param Callback FPostAtLocationCallback
---@param CallbackMask int32
---@param WorldContextObject UObject
---@return int32
function UAkAudioEvent:PostAtLocation(Location, Orientation, Callback, CallbackMask, WorldContextObject) end
---@param ActionType AkActionOnEventType
---@param Actor AActor
---@param PlayingID int32
---@param TransitionDuration int32
---@param FadeCurve EAkCurveInterpolation
---@return int32
function UAkAudioEvent:ExecuteAction(ActionType, Actor, PlayingID, TransitionDuration, FadeCurve) end


---@class UAkAudioInputComponent : UAkComponent
UAkAudioInputComponent = {}

---@return int32
function UAkAudioInputComponent:PostAssociatedAudioInputEvent() end


---@class UAkAudioType : UObject
---@field bAutoLoad boolean
---@field UserData TArray<UObject>
UAkAudioType = {}

---@param bAsync boolean
function UAkAudioType:UnloadData(bAsync) end
function UAkAudioType:LoadData() end
---@return int32
function UAkAudioType:GetWwiseShortID() end


---@class UAkAuxBus : UAkAudioType
---@field MaxAttenuationRadius float
---@field AuxBusCookedData FWwiseLocalizedAuxBusCookedData
---@field RequiredBank UAkAudioBank
UAkAuxBus = {}



---@class UAkCallbackInfo : UObject
---@field AkComponent UAkComponent
UAkCallbackInfo = {}



---@class UAkCheckBox : UContentWidget
---@field CheckedState ECheckBoxState
---@field CheckedStateDelegate FAkCheckBoxCheckedStateDelegate
---@field WidgetStyle FCheckBoxStyle
---@field HorizontalAlignment EHorizontalAlignment
---@field IsFocusable boolean
---@field ThePropertyToControl FAkBoolPropertyToControl
---@field ItemToControl FAkWwiseItemToControl
---@field AkOnCheckStateChanged FAkCheckBoxAkOnCheckStateChanged
---@field OnItemDropped FAkCheckBoxOnItemDropped
---@field OnPropertyDropped FAkCheckBoxOnPropertyDropped
UAkCheckBox = {}

---@param InIsChecked boolean
function UAkCheckBox:SetIsChecked(InIsChecked) end
---@param InCheckedState ECheckBoxState
function UAkCheckBox:SetCheckedState(InCheckedState) end
---@param ItemId FGuid
function UAkCheckBox:SetAkItemId(ItemId) end
---@param ItemProperty FString
function UAkCheckBox:SetAkBoolProperty(ItemProperty) end
---@return boolean
function UAkCheckBox:IsPressed() end
---@return boolean
function UAkCheckBox:IsChecked() end
---@return ECheckBoxState
function UAkCheckBox:GetCheckedState() end
---@return FString
function UAkCheckBox:GetAkProperty() end
---@return FGuid
function UAkCheckBox:GetAkItemId() end


---@class UAkComponent : UAkGameObject
---@field bUseSpatialAudio boolean
---@field OcclusionCollisionChannel EAkCollisionChannel
---@field EnableSpotReflectors boolean
---@field bDisableUpdateSpatialAudioRoom boolean
---@field OuterRadius float
---@field InnerRadius float
---@field OnAkCompAutoDestroyed FAkComponentOnAkCompAutoDestroyed
---@field EarlyReflectionAuxBus UAkAuxBus
---@field EarlyReflectionAuxBusName FString
---@field EarlyReflectionOrder int32
---@field EarlyReflectionBusSendGain float
---@field EarlyReflectionMaxPathLength float
---@field roomReverbAuxBusGain float
---@field diffractionMaxEdges int32
---@field diffractionMaxPaths int32
---@field diffractionMaxPathLength float
---@field DrawFirstOrderReflections boolean
---@field DrawSecondOrderReflections boolean
---@field DrawHigherOrderReflections boolean
---@field DrawDiffraction boolean
---@field StopWhenOwnerDestroyed boolean
---@field AttenuationScalingFactor float
---@field OcclusionRefreshInterval float
---@field bUseReverbVolumes boolean
UAkComponent = {}

---@param inUseReverbVolumes boolean
function UAkComponent:UseReverbVolumes(inUseReverbVolumes) end
---@param AuxBus UAkAuxBus
---@param Order int32
---@param BusSendGain float
---@param MaxPathLength float
---@param SpotReflectors boolean
---@param AuxBusName FString
function UAkComponent:UseEarlyReflections(AuxBus, Order, BusSendGain, MaxPathLength, SpotReflectors, AuxBusName) end
---@param SwitchValue UAkSwitchValue
---@param SwitchGroup FString
---@param SwitchState FString
function UAkComponent:SetSwitch(SwitchValue, SwitchGroup, SwitchState) end
---@param bStopWhenOwnerDestroyed boolean
function UAkComponent:SetStopWhenOwnerDestroyed(bStopWhenOwnerDestroyed) end
---@param BusVolume float
function UAkComponent:SetOutputBusVolume(BusVolume) end
---@param Listeners TArray<UAkComponent>
function UAkComponent:SetListeners(Listeners) end
---@param in_outerRadius float
---@param in_innerRadius float
function UAkComponent:SetGameObjectRadius(in_outerRadius, in_innerRadius) end
---@param in_enable boolean
function UAkComponent:SetEnableSpotReflectors(in_enable) end
---@param SendVolume float
function UAkComponent:SetEarlyReflectionsVolume(SendVolume) end
---@param AuxBusName FString
function UAkComponent:SetEarlyReflectionsAuxBus(AuxBusName) end
---@param _bAutoDestory boolean
function UAkComponent:SetAutoDestroyCS(_bAutoDestory) end
---@param Value float
function UAkComponent:SetAttenuationScalingFactor(Value) end
---@param TriggerValue UAkTrigger
---@param Trigger FString
function UAkComponent:PostTrigger(TriggerValue, Trigger) end
---@param PlayingID int32
---@param LatentInfo FLatentActionInfo
function UAkComponent:PostAssociatedAkEventAndWaitForEndAsync(PlayingID, LatentInfo) end
---@param LatentInfo FLatentActionInfo
---@return int32
function UAkComponent:PostAssociatedAkEventAndWaitForEnd(LatentInfo) end
---@param AkEvent UAkAudioEvent
---@param PlayingID int32
---@param LatentInfo FLatentActionInfo
function UAkComponent:PostAkEventAndWaitForEndAsync(AkEvent, PlayingID, LatentInfo) end
---@param AkEvent UAkAudioEvent
---@param in_EventName FString
---@param LatentInfo FLatentActionInfo
---@return int32
function UAkComponent:PostAkEventAndWaitForEnd(AkEvent, in_EventName, LatentInfo) end
---@return boolean
function UAkComponent:HasActiveEventsCS() end
---@return ECollisionChannel
function UAkComponent:GetOcclusionCollisionChannel() end
---@return float
function UAkComponent:GetAttenuationRadius() end


---@class UAkDPXInitializationSettings : UAkPS5InitializationSettings
UAkDPXInitializationSettings = {}


---@class UAkDurationCallbackInfo : UAkEventCallbackInfo
---@field Duration float
---@field EstimatedDuration float
---@field AudioNodeID int32
---@field MediaId int32
---@field bStreaming boolean
UAkDurationCallbackInfo = {}



---@class UAkEffectShareSet : UAkAudioType
---@field ShareSetCookedData FWwiseLocalizedShareSetCookedData
UAkEffectShareSet = {}



---@class UAkEventCallbackInfo : UAkCallbackInfo
---@field PlayingID int32
---@field EventID int32
UAkEventCallbackInfo = {}



---@class UAkExternalMediaAsset : UAkMediaAsset
UAkExternalMediaAsset = {}


---@class UAkFolder : UAkAudioType
UAkFolder = {}


---@class UAkGameObject : USceneComponent
---@field AkAudioEvent UAkAudioEvent
---@field EventName FString
UAkGameObject = {}

function UAkGameObject:Stop() end
---@param RTPCValue UAkRtpc
---@param Value float
---@param InterpolationTimeMs int32
---@param RTPC FString
function UAkGameObject:SetRTPCValue(RTPCValue, Value, InterpolationTimeMs, RTPC) end
---@param WorldContextObject UObject
---@param CallbackMask int32
---@param PostEventCallback FPostAssociatedAkEventAsyncPostEventCallback
---@param LatentInfo FLatentActionInfo
---@param PlayingID int32
function UAkGameObject:PostAssociatedAkEventAsync(WorldContextObject, CallbackMask, PostEventCallback, LatentInfo, PlayingID) end
---@param CallbackMask int32
---@param PostEventCallback FPostAssociatedAkEventPostEventCallback
---@return int32
function UAkGameObject:PostAssociatedAkEvent(CallbackMask, PostEventCallback) end
---@param WorldContextObject UObject
---@param AkEvent UAkAudioEvent
---@param PlayingID int32
---@param CallbackMask int32
---@param PostEventCallback FPostAkEventAsyncPostEventCallback
---@param LatentInfo FLatentActionInfo
function UAkGameObject:PostAkEventAsync(WorldContextObject, AkEvent, PlayingID, CallbackMask, PostEventCallback, LatentInfo) end
---@param AkEvent UAkAudioEvent
---@param CallbackMask int32
---@param PostEventCallback FPostAkEventPostEventCallback
---@param InEventName FString
---@return int32
function UAkGameObject:PostAkEvent(AkEvent, CallbackMask, PostEventCallback, InEventName) end
---@param RTPCValue UAkRtpc
---@param InputValueType ERTPCValueType
---@param Value float
---@param OutputValueType ERTPCValueType
---@param RTPC FString
---@param PlayingID int32
function UAkGameObject:GetRTPCValue(RTPCValue, InputValueType, Value, OutputValueType, RTPC, PlayingID) end


---@class UAkGameplayStatics : UBlueprintFunctionLibrary
UAkGameplayStatics = {}

---@param inUseReverbVolumes boolean
---@param Actor AActor
function UAkGameplayStatics:UseReverbVolumes(inUseReverbVolumes, Actor) end
---@param Actor AActor
---@param AuxBus UAkAuxBus
---@param Order int32
---@param BusSendGain float
---@param MaxPathLength float
---@param SpotReflectors boolean
---@param AuxBusName FString
function UAkGameplayStatics:UseEarlyReflections(Actor, AuxBus, Order, BusSendGain, MaxPathLength, SpotReflectors, AuxBusName) end
function UAkGameplayStatics:UnloadInitBank() end
---@param BankName FString
function UAkGameplayStatics:UnloadBankByName(BankName) end
function UAkGameplayStatics:StopProfilerCapture() end
function UAkGameplayStatics:StopOutputCapture() end
---@param WorldContextObject UObject
function UAkGameplayStatics:StopAllAmbientSounds(WorldContextObject) end
function UAkGameplayStatics:StopAll() end
---@param Actor AActor
function UAkGameplayStatics:StopActor(Actor) end
---@param Filename FString
function UAkGameplayStatics:StartProfilerCapture(Filename) end
---@param Filename FString
function UAkGameplayStatics:StartOutputCapture(Filename) end
---@param WorldContextObject UObject
function UAkGameplayStatics:StartAllAmbientSounds(WorldContextObject) end
---@param WorldContextObject UObject
---@param AkEvent UAkAudioEvent
---@param Location FVector
---@param Orientation FRotator
---@param AutoPost boolean
---@param EventName FString
---@param AutoDestroy boolean
---@return UAkComponent
function UAkGameplayStatics:SpawnAkComponentAtLocation(WorldContextObject, AkEvent, Location, Orientation, AutoPost, EventName, AutoDestroy) end
---@param SwitchValue UAkSwitchValue
---@param Actor AActor
---@param SwitchGroup FName
---@param SwitchState FName
function UAkGameplayStatics:SetSwitch(SwitchValue, Actor, SwitchGroup, SwitchState) end
---@param StateValue UAkStateValue
---@param StateGroup FName
---@param State FName
function UAkGameplayStatics:SetState(StateValue, StateGroup, State) end
---@param SpeakerAngles TArray<float>
---@param HeightAngle float
---@param DeviceShareSet FString
function UAkGameplayStatics:SetSpeakerAngles(SpeakerAngles, HeightAngle, DeviceShareSet) end
---@param PlayingID int32
---@param Value float
---@param RTPC FName
function UAkGameplayStatics:SetRTPCValueByPlayingID(PlayingID, Value, RTPC) end
---@param RTPCValue UAkRtpc
---@param Value float
---@param InterpolationTimeMs int32
---@param Actor AActor
---@param RTPC FName
function UAkGameplayStatics:SetRTPCValue(RTPCValue, Value, InterpolationTimeMs, Actor, RTPC) end
---@param Order int32
---@param RefreshPaths boolean
function UAkGameplayStatics:SetReflectionsOrder(Order, RefreshPaths) end
---@param PortalComponent0 UAkPortalComponent
---@param PortalComponent1 UAkPortalComponent
---@param ObstructionValue float
function UAkGameplayStatics:SetPortalToPortalObstruction(PortalComponent0, PortalComponent1, ObstructionValue) end
---@param PortalComponent UAkPortalComponent
---@param ObstructionValue float
---@param OcclusionValue float
function UAkGameplayStatics:SetPortalObstructionAndOcclusion(PortalComponent, ObstructionValue, OcclusionValue) end
---@param PanRule PanningRule
function UAkGameplayStatics:SetPanningRule(PanRule) end
---@param InDeviceID FAkOutputDeviceID
---@param InEffectIndex int32
---@param InEffectShareSet UAkEffectShareSet
---@return boolean
function UAkGameplayStatics:SetOutputDeviceEffect(InDeviceID, InEffectIndex, InEffectShareSet) end
---@param BusVolume float
---@param Actor AActor
function UAkGameplayStatics:SetOutputBusVolume(BusVolume, Actor) end
---@param RefreshInterval float
---@param Actor AActor
function UAkGameplayStatics:SetOcclusionRefreshInterval(RefreshInterval, Actor) end
---@param GameObjectAkComponent UAkComponent
---@param Positions TArray<FTransform>
---@param MultiPositionType AkMultiPositionType
function UAkGameplayStatics:SetMultiplePositions(GameObjectAkComponent, Positions, MultiPositionType) end
---@param GameObjectAkComponent UAkComponent
---@param ChannelMasks TArray<FAkChannelMask>
---@param Positions TArray<FTransform>
---@param MultiPositionType AkMultiPositionType
function UAkGameplayStatics:SetMultipleChannelMaskEmitterPositions(GameObjectAkComponent, ChannelMasks, Positions, MultiPositionType) end
---@param GameObjectAkComponent UAkComponent
---@param ChannelMasks TArray<AkChannelConfiguration>
---@param Positions TArray<FTransform>
---@param MultiPositionType AkMultiPositionType
function UAkGameplayStatics:SetMultipleChannelEmitterPositions(GameObjectAkComponent, ChannelMasks, Positions, MultiPositionType) end
---@param GameObjectAkComponent UAkComponent
---@param PortalComponent UAkPortalComponent
---@param ObstructionValue float
function UAkGameplayStatics:SetGameObjectToPortalObstruction(GameObjectAkComponent, PortalComponent, ObstructionValue) end
function UAkGameplayStatics:SetDummyObjListener() end
---@param Listener AActor
---@param DistanceProbe AActor
function UAkGameplayStatics:SetDistanceProbe(Listener, DistanceProbe) end
---@param AudioCulture FString
---@param Completed FSetCurrentAudioCultureAsyncCompleted
function UAkGameplayStatics:SetCurrentAudioCultureAsync(AudioCulture, Completed) end
---@param AudioCulture FString
---@param LatentInfo FLatentActionInfo
---@param WorldContextObject UObject
function UAkGameplayStatics:SetCurrentAudioCulture(AudioCulture, LatentInfo, WorldContextObject) end
---@param InBusName FString
---@param InEffectIndex int32
---@param InEffectShareSet UAkEffectShareSet
---@return boolean
function UAkGameplayStatics:SetBusEffectByName(InBusName, InEffectIndex, InEffectShareSet) end
---@param InBusID FAkUniqueID
---@param InEffectIndex int32
---@param InEffectShareSet UAkEffectShareSet
---@return boolean
function UAkGameplayStatics:SetBusEffectByID(InBusID, InEffectIndex, InEffectShareSet) end
---@param BusName FString
---@param ChannelConfiguration AkChannelConfiguration
function UAkGameplayStatics:SetBusConfig(BusName, ChannelConfiguration) end
---@param InAuxBus UAkAuxBus
---@param InEffectIndex int32
---@param InEffectShareSet UAkEffectShareSet
---@return boolean
function UAkGameplayStatics:SetAuxBusEffect(InAuxBus, InEffectIndex, InEffectShareSet) end
---@param InAudioNodeID FAkUniqueID
---@param InEffectIndex int32
---@param InEffectShareSet UAkEffectShareSet
---@return boolean
function UAkGameplayStatics:SetActorMixerEffect(InAudioNodeID, InEffectIndex, InEffectShareSet) end
---@param RTPCValue UAkRtpc
---@param InterpolationTimeMs int32
---@param Actor AActor
---@param RTPC FName
function UAkGameplayStatics:ResetRTPCValue(RTPCValue, InterpolationTimeMs, Actor, RTPC) end
---@param MainOutputSettings FAkOutputSettings
function UAkGameplayStatics:ReplaceMainOutput(MainOutputSettings) end
---@param in_OutputDeviceId FAkOutputDeviceID
function UAkGameplayStatics:RemoveOutput(in_OutputDeviceId) end
function UAkGameplayStatics:RemoveMotionOutput() end
---@param TriggerValue UAkTrigger
---@param Actor AActor
---@param Trigger FName
function UAkGameplayStatics:PostTrigger(TriggerValue, Actor, Trigger) end
---@param AkEvent UAkAudioEvent
---@param EventName FString
---@return int32
function UAkGameplayStatics:PostEventOnDummyObj(AkEvent, EventName) end
---@param EventName FString
---@param Actor AActor
---@param bStopWhenAttachedToDestroyed boolean
function UAkGameplayStatics:PostEventByName(EventName, Actor, bStopWhenAttachedToDestroyed) end
---@param EventName FString
---@param Location FVector
---@param Orientation FRotator
---@param WorldContextObject UObject
function UAkGameplayStatics:PostEventAtLocationByName(EventName, Location, Orientation, WorldContextObject) end
---@param AkEvent UAkAudioEvent
---@param Location FVector
---@param Orientation FRotator
---@param EventName FString
---@param WorldContextObject UObject
---@return int32
function UAkGameplayStatics:PostEventAtLocation(AkEvent, Location, Orientation, EventName, WorldContextObject) end
---@param AkEvent UAkAudioEvent
---@param Actor AActor
---@param CallbackMask int32
---@param PostEventCallback FPostEventPostEventCallback
---@param bStopWhenAttachedToDestroyed boolean
---@param EventName FString
---@return int32
function UAkGameplayStatics:PostEvent(AkEvent, Actor, CallbackMask, PostEventCallback, bStopWhenAttachedToDestroyed, EventName) end
---@param AkEvent UAkAudioEvent
---@param Actor AActor
---@param PlayingID int32
---@param bStopWhenAttachedToDestroyed boolean
---@param LatentInfo FLatentActionInfo
function UAkGameplayStatics:PostAndWaitForEndOfEventAsync(AkEvent, Actor, PlayingID, bStopWhenAttachedToDestroyed, LatentInfo) end
---@param AkEvent UAkAudioEvent
---@param Actor AActor
---@param bStopWhenAttachedToDestroyed boolean
---@param LatentInfo FLatentActionInfo
---@return int32
function UAkGameplayStatics:PostAndWaitForEndOfEvent(AkEvent, Actor, bStopWhenAttachedToDestroyed, LatentInfo) end
function UAkGameplayStatics:LoadInitBank() end
---@param BankName FString
function UAkGameplayStatics:LoadBankByName(BankName) end
---@param WorldContextObject UObject
---@return boolean
function UAkGameplayStatics:IsGame(WorldContextObject) end
---@return boolean
function UAkGameplayStatics:IsEditor() end
---@param SpeakerAngles TArray<float>
---@param HeightAngle float
---@param DeviceShareSet FString
function UAkGameplayStatics:GetSpeakerAngles(SpeakerAngles, HeightAngle, DeviceShareSet) end
---@param RTPCValue UAkRtpc
---@param PlayingID int32
---@param InputValueType ERTPCValueType
---@param Value float
---@param OutputValueType ERTPCValueType
---@param Actor AActor
---@param RTPC FName
function UAkGameplayStatics:GetRTPCValue(RTPCValue, PlayingID, InputValueType, Value, OutputValueType, Actor, RTPC) end
---@return FString
function UAkGameplayStatics:GetCurrentAudioCulture() end
---@return TArray<FString>
function UAkGameplayStatics:GetAvailableAudioCultures() end
---@param AttachToComponent USceneComponent
---@param ComponentCreated boolean
---@param AttachPointName FName
---@param Location FVector
---@param LocationType EAttachLocation::Type
---@return UAkComponent
function UAkGameplayStatics:GetAkComponent(AttachToComponent, ComponentCreated, AttachPointName, Location, LocationType) end
---@param Instance UAkAudioType
---@param Type UClass
---@return UObject
function UAkGameplayStatics:GetAkAudioTypeUserData(Instance, Type) end
---@param ActionType AkActionOnEventType
---@param PlayingID int32
---@param TransitionDuration int32
---@param FadeCurve EAkCurveInterpolation
function UAkGameplayStatics:ExecuteActionOnPlayingID(ActionType, PlayingID, TransitionDuration, FadeCurve) end
---@param AkEvent UAkAudioEvent
---@param ActionType AkActionOnEventType
---@param Actor AActor
---@param TransitionDuration int32
---@param FadeCurve EAkCurveInterpolation
---@param PlayingID int32
function UAkGameplayStatics:ExecuteActionOnEvent(AkEvent, ActionType, Actor, TransitionDuration, FadeCurve, PlayingID) end
function UAkGameplayStatics:ClearSoundBanksAndMedia() end
function UAkGameplayStatics:ClearBanks() end
---@param PostEventCallback FCancelEventCallbackPostEventCallback
function UAkGameplayStatics:CancelEventCallback(PostEventCallback) end
---@param MarkerText FString
function UAkGameplayStatics:AddOutputCaptureMarker(MarkerText) end
---@param in_Settings FAkOutputSettings
---@param out_DeviceID FAkOutputDeviceID
---@param in_ListenerIDs TArray<UAkComponent>
function UAkGameplayStatics:AddOutput(in_Settings, out_DeviceID, in_ListenerIDs) end
function UAkGameplayStatics:AddMotionOutput() end


---@class UAkGeometryComponent : UAkAcousticTextureSetComponent
---@field MeshType AkMeshType
---@field LOD int32
---@field WeldingThreshold float
---@field StaticMeshSurfaceOverride TMap<UMaterialInterface, FAkGeometrySurfaceOverride>
---@field CollisionMeshSurfaceOverride FAkGeometrySurfaceOverride
---@field bEnableDiffraction boolean
---@field bEnableDiffractionOnBoundaryEdges boolean
---@field AssociatedRoom AActor
---@field GeometryData FAkGeometryData
---@field SurfaceAreas TMap<int32, double>
UAkGeometryComponent = {}

function UAkGeometryComponent:UpdateGeometry() end
function UAkGeometryComponent:SendGeometry() end
function UAkGeometryComponent:RemoveGeometry() end
function UAkGeometryComponent:ConvertMesh() end


---@class UAkGroupValue : UAkAudioType
---@field GroupValueCookedData FWwiseGroupValueCookedData
---@field GroupShortId uint32
UAkGroupValue = {}



---@class UAkHololensInitializationSettings : UObject
---@field CommonSettings FAkCommonInitializationSettingsWithSampleRate
---@field CommunicationSettings FAkCommunicationSettingsWithSystemInitialization
---@field AdvancedSettings FAkHololensAdvancedInitializationSettings
UAkHololensInitializationSettings = {}

---@param NewValue boolean
function UAkHololensInitializationSettings:MigrateMultiCoreRendering(NewValue) end


---@class UAkHololensPlatformInfo : UAkPlatformInfo
UAkHololensPlatformInfo = {}


---@class UAkIOSInitializationSettings : UObject
---@field CommonSettings FAkCommonInitializationSettingsWithSampleRate
---@field AudioSession FAkAudioSession
---@field CommunicationSettings FAkCommunicationSettingsWithSystemInitialization
---@field AdvancedSettings FAkAdvancedInitializationSettingsWithMultiCoreRendering
UAkIOSInitializationSettings = {}



---@class UAkIOSPlatformInfo : UAkPlatformInfo
UAkIOSPlatformInfo = {}


---@class UAkInitBank : UAkAudioType
---@field InitBankCookedData FWwiseInitBankCookedData
UAkInitBank = {}



---@class UAkItemBoolProperties : UWidget
---@field OnSelectionChanged FAkItemBoolPropertiesOnSelectionChanged
---@field OnPropertyDragged FAkItemBoolPropertiesOnPropertyDragged
UAkItemBoolProperties = {}

---@param newText FString
function UAkItemBoolProperties:SetSearchText(newText) end
---@return FString
function UAkItemBoolProperties:GetSelectedProperty() end
---@return FString
function UAkItemBoolProperties:GetSearchText() end


---@class UAkItemBoolPropertiesConv : UBlueprintFunctionLibrary
UAkItemBoolPropertiesConv = {}

---@param INAkBoolPropertyToControl FAkBoolPropertyToControl
---@return FText
function UAkItemBoolPropertiesConv:Conv_FAkBoolPropertyToControlToText(INAkBoolPropertyToControl) end
---@param INAkBoolPropertyToControl FAkBoolPropertyToControl
---@return FString
function UAkItemBoolPropertiesConv:Conv_FAkBoolPropertyToControlToString(INAkBoolPropertyToControl) end


---@class UAkItemProperties : UWidget
---@field OnSelectionChanged FAkItemPropertiesOnSelectionChanged
---@field OnPropertyDragged FAkItemPropertiesOnPropertyDragged
UAkItemProperties = {}

---@param newText FString
function UAkItemProperties:SetSearchText(newText) end
---@return FString
function UAkItemProperties:GetSelectedProperty() end
---@return FString
function UAkItemProperties:GetSearchText() end


---@class UAkItemPropertiesConv : UBlueprintFunctionLibrary
UAkItemPropertiesConv = {}

---@param INAkPropertyToControl FAkPropertyToControl
---@return FText
function UAkItemPropertiesConv:Conv_FAkPropertyToControlToText(INAkPropertyToControl) end
---@param INAkPropertyToControl FAkPropertyToControl
---@return FString
function UAkItemPropertiesConv:Conv_FAkPropertyToControlToString(INAkPropertyToControl) end


---@class UAkLateReverbComponent : USceneComponent
---@field bEnable boolean
---@field SendLevel float
---@field FadeRate float
---@field Priority float
---@field AutoAssignAuxBus boolean
---@field AuxBus UAkAuxBus
---@field AuxBusName FString
---@field AuxBusManual UAkAuxBus
UAkLateReverbComponent = {}

---@param textureSetComponent UAkAcousticTextureSetComponent
function UAkLateReverbComponent:AssociateAkTextureSetComponent(textureSetComponent) end


---@class UAkLinuxArm64InitializationSettings : UObject
---@field CommonSettings FAkCommonInitializationSettingsWithSampleRate
---@field CommunicationSettings FAkCommunicationSettingsWithSystemInitialization
---@field AdvancedSettings FAkAdvancedInitializationSettingsWithMultiCoreRendering
UAkLinuxArm64InitializationSettings = {}

---@param NewValue boolean
function UAkLinuxArm64InitializationSettings:MigrateMultiCoreRendering(NewValue) end


---@class UAkLinuxArm64PlatformInfo : UAkPlatformInfo
UAkLinuxArm64PlatformInfo = {}


---@class UAkLinuxInitializationSettings : UObject
---@field CommonSettings FAkCommonInitializationSettingsWithSampleRate
---@field CommunicationSettings FAkCommunicationSettingsWithSystemInitialization
---@field AdvancedSettings FAkAdvancedInitializationSettingsWithMultiCoreRendering
UAkLinuxInitializationSettings = {}

---@param NewValue boolean
function UAkLinuxInitializationSettings:MigrateMultiCoreRendering(NewValue) end


---@class UAkLinuxPlatformInfo : UAkPlatformInfo
UAkLinuxPlatformInfo = {}


---@class UAkLocalizedMediaAsset : UAkMediaAsset
UAkLocalizedMediaAsset = {}


---@class UAkMIDIEventCallbackInfo : UAkEventCallbackInfo
UAkMIDIEventCallbackInfo = {}

---@return EAkMidiEventType
function UAkMIDIEventCallbackInfo:GetType() end
---@param AsProgramChange FAkMidiProgramChange
---@return boolean
function UAkMIDIEventCallbackInfo:GetProgramChange(AsProgramChange) end
---@param AsPitchBend FAkMidiPitchBend
---@return boolean
function UAkMIDIEventCallbackInfo:GetPitchBend(AsPitchBend) end
---@param AsNoteOn FAkMidiNoteOnOff
---@return boolean
function UAkMIDIEventCallbackInfo:GetNoteOn(AsNoteOn) end
---@param AsNoteOff FAkMidiNoteOnOff
---@return boolean
function UAkMIDIEventCallbackInfo:GetNoteOff(AsNoteOff) end
---@param AsNoteAftertouch FAkMidiNoteAftertouch
---@return boolean
function UAkMIDIEventCallbackInfo:GetNoteAftertouch(AsNoteAftertouch) end
---@param AsGeneric FAkMidiGeneric
---@return boolean
function UAkMIDIEventCallbackInfo:GetGeneric(AsGeneric) end
---@param AsChannelAftertouch FAkMidiChannelAftertouch
---@return boolean
function UAkMIDIEventCallbackInfo:GetChannelAftertouch(AsChannelAftertouch) end
---@return uint8
function UAkMIDIEventCallbackInfo:GetChannel() end
---@param AsCc FAkMidiCc
---@return boolean
function UAkMIDIEventCallbackInfo:GetCc(AsCc) end


---@class UAkMPXInitializationSettings : UAkXSXInitializationSettings
UAkMPXInitializationSettings = {}


---@class UAkMacInitializationSettings : UObject
---@field CommonSettings FAkCommonInitializationSettingsWithSampleRate
---@field CommunicationSettings FAkCommunicationSettingsWithSystemInitialization
---@field AdvancedSettings FAkAdvancedInitializationSettingsWithMultiCoreRendering
UAkMacInitializationSettings = {}

---@param NewValue boolean
function UAkMacInitializationSettings:MigrateMultiCoreRendering(NewValue) end


---@class UAkMacPlatformInfo : UAkPlatformInfo
UAkMacPlatformInfo = {}


---@class UAkMarkerCallbackInfo : UAkEventCallbackInfo
---@field Identifier int32
---@field position int32
---@field Label FString
UAkMarkerCallbackInfo = {}



---@class UAkMediaAsset : UObject
---@field MediaAssetDataPerPlatform TMap<FString, UAkMediaAssetData>
UAkMediaAsset = {}



---@class UAkMediaAssetData : UObject
UAkMediaAssetData = {}


---@class UAkMusicSyncCallbackInfo : UAkCallbackInfo
---@field PlayingID int32
---@field SegmentInfo FAkSegmentInfo
---@field MusicSyncType EAkCallbackType
---@field UserCueName FString
UAkMusicSyncCallbackInfo = {}



---@class UAkPS5InitializationSettings : UObject
---@field CommonSettings FAkCommonInitializationSettings
---@field CommunicationSettings FAkCommunicationSettingsWithSystemInitialization
---@field AdvancedSettings FAkPS5AdvancedInitializationSettings
UAkPS5InitializationSettings = {}



---@class UAkPS5PlatformInfo : UAkPlatformInfo
UAkPS5PlatformInfo = {}


---@class UAkPlatformInfo : UObject
UAkPlatformInfo = {}


---@class UAkPortalComponent : USceneComponent
---@field bDynamic boolean
---@field InitialState AkAcousticPortalState
---@field ObstructionRefreshInterval float
---@field ObstructionCollisionChannel ECollisionChannel
UAkPortalComponent = {}

---@param bInDynamic boolean
function UAkPortalComponent:SetDynamic(bInDynamic) end
---@return boolean
function UAkPortalComponent:PortalPlacementValid() end
function UAkPortalComponent:OpenPortal() end
---@return UPrimitiveComponent
function UAkPortalComponent:GetPrimitiveParent() end
---@return AkAcousticPortalState
function UAkPortalComponent:GetCurrentState() end
function UAkPortalComponent:ClosePortal() end


---@class UAkRoomComponent : UAkGameObject
---@field bEnable boolean
---@field bDynamic boolean
---@field Priority float
---@field SwitchGroup FName
---@field SwitchState FName
---@field WallOcclusion float
---@field AuxSendLevel float
---@field AutoPost boolean
---@field GeometryComponent UAkAcousticTextureSetComponent
UAkRoomComponent = {}

---@param textureSetComponent UAkAcousticTextureSetComponent
function UAkRoomComponent:SetGeometryComponent(textureSetComponent) end
---@param bInDynamic boolean
function UAkRoomComponent:SetDynamic(bInDynamic) end
---@return UPrimitiveComponent
function UAkRoomComponent:GetPrimitiveParent() end


---@class UAkRtpc : UAkAudioType
---@field GameParameterCookedData FWwiseGameParameterCookedData
UAkRtpc = {}



---@class UAkSettings : UObject
---@field MaxSimultaneousReverbVolumes uint8
---@field WwiseProjectPath FFilePath
---@field WwiseSoundDataFolder FDirectoryPath
---@field RootOutputPath FDirectoryPath
---@field GeneratedSoundBanksFolder FDirectoryPath
---@field WwiseStagingDirectory FDirectoryPath
---@field bSoundBanksTransfered boolean
---@field bAssetsMigrated boolean
---@field bProjectMigrated boolean
---@field bAutoConnectToWAAPI boolean
---@field DefaultOcclusionCollisionChannel ECollisionChannel
---@field DefaultFitToGeometryCollisionChannel ECollisionChannel
---@field AkGeometryMap TMap<TSoftObjectPtr<UPhysicalMaterial>, FAkGeometrySurfacePropertiesToMap>
---@field GlobalDecayAbsorption float
---@field DefaultReverbAuxBus TSoftObjectPtr<UAkAuxBus>
---@field EnvironmentDecayAuxBusMap TMap<float, TSoftObjectPtr<UAkAuxBus>>
---@field HFDampingName FString
---@field DecayEstimateName FString
---@field TimeToFirstReflectionName FString
---@field HFDampingRTPC TSoftObjectPtr<UAkRtpc>
---@field DecayEstimateRTPC TSoftObjectPtr<UAkRtpc>
---@field TimeToFirstReflectionRTPC TSoftObjectPtr<UAkRtpc>
---@field AudioInputEvent TSoftObjectPtr<UAkAudioEvent>
---@field AcousticTextureParamsMap TMap<FGuid, FAkAcousticTextureParams>
---@field SplitSwitchContainerMedia boolean
---@field SplitMediaPerFolder boolean
---@field UseEventBasedPackaging boolean
---@field CommandletCommitMessage FString
---@field UnrealCultureToWwiseCulture TMap<FString, FString>
---@field DefaultAssetCreationPath FString
---@field InitBank TSoftObjectPtr<UAkInitBank>
---@field AudioRouting EAkUnrealAudioRouting
---@field bWwiseSoundEngineEnabled boolean
---@field bWwiseAudioLinkEnabled boolean
---@field bAkAudioMixerEnabled boolean
---@field DefaultScalingFactor float
---@field AskedToUseNewAssetManagement boolean
---@field bEnableMultiCoreRendering boolean
---@field MigratedEnableMultiCoreRendering boolean
---@field FixupRedirectorsDuringMigration boolean
---@field WwiseWindowsInstallationPath FDirectoryPath
---@field WwiseMacInstallationPath FFilePath
---@field RoomSetEnvSwitch FAkSettingsRoomSetEnvSwitch
---@field RoomSwitchGroup FString
---@field RoomSwitchState FString
UAkSettings = {}



---@class UAkSettingsPerUser : UObject
---@field WwiseWindowsInstallationPath FDirectoryPath
---@field WwiseMacInstallationPath FFilePath
---@field RootOutputPathOverride FDirectoryPath
---@field GeneratedSoundBanksFolderOverride FDirectoryPath
---@field WaapiIPAddress FString
---@field WaapiPort uint32
---@field bAutoConnectToWAAPI boolean
---@field AutoSyncSelection boolean
---@field WaapiTranslatorTimeout uint32
---@field SuppressGeneratedSoundBanksPathWarnings boolean
---@field SoundDataGenerationSkipLanguage boolean
---@field AskForWwiseAssetReload boolean
UAkSettingsPerUser = {}



---@class UAkSlider : UWidget
---@field Value float
---@field ValueDelegate FAkSliderValueDelegate
---@field WidgetStyle FSliderStyle
---@field Orientation EOrientation
---@field SliderBarColor FLinearColor
---@field SliderHandleColor FLinearColor
---@field IndentHandle boolean
---@field Locked boolean
---@field StepSize float
---@field IsFocusable boolean
---@field ThePropertyToControl FAkPropertyToControl
---@field ItemToControl FAkWwiseItemToControl
---@field OnValueChanged FAkSliderOnValueChanged
---@field OnItemDropped FAkSliderOnItemDropped
---@field OnPropertyDropped FAkSliderOnPropertyDropped
UAkSlider = {}

---@param InValue float
function UAkSlider:SetValue(InValue) end
---@param InValue float
function UAkSlider:SetStepSize(InValue) end
---@param InValue FLinearColor
function UAkSlider:SetSliderHandleColor(InValue) end
---@param InValue FLinearColor
function UAkSlider:SetSliderBarColor(InValue) end
---@param InValue boolean
function UAkSlider:SetLocked(InValue) end
---@param InValue boolean
function UAkSlider:SetIndentHandle(InValue) end
---@param ItemProperty FString
function UAkSlider:SetAkSliderItemProperty(ItemProperty) end
---@param ItemId FGuid
function UAkSlider:SetAkSliderItemId(ItemId) end
---@return float
function UAkSlider:GetValue() end
---@return FString
function UAkSlider:GetAkSliderItemProperty() end
---@return FGuid
function UAkSlider:GetAkSliderItemId() end


---@class UAkStateValue : UAkGroupValue
UAkStateValue = {}


---@class UAkSubmixInputComponent : UAkAudioInputComponent
---@field SubmixToRecord USoundSubmix
UAkSubmixInputComponent = {}



---@class UAkSurfaceReflectorSetComponent : UAkAcousticTextureSetComponent
---@field bEnableSurfaceReflectors boolean
---@field AcousticPolys TArray<FAkSurfacePoly>
---@field bEnableDiffraction boolean
---@field bEnableDiffractionOnBoundaryEdges boolean
---@field AssociatedRoom AActor
UAkSurfaceReflectorSetComponent = {}

function UAkSurfaceReflectorSetComponent:UpdateSurfaceReflectorSet() end
---@param in_AcousticPolys TArray<FAkSurfacePoly>
function UAkSurfaceReflectorSetComponent:UpdateAcousticProperties(in_AcousticPolys) end
function UAkSurfaceReflectorSetComponent:SendSurfaceReflectorSet() end
function UAkSurfaceReflectorSetComponent:RemoveSurfaceReflectorSet() end


---@class UAkSwitchValue : UAkGroupValue
UAkSwitchValue = {}


---@class UAkTVOSInitializationSettings : UObject
---@field CommonSettings FAkCommonInitializationSettingsWithSampleRate
---@field AudioSession FAkAudioSession
---@field CommunicationSettings FAkCommunicationSettingsWithSystemInitialization
---@field AdvancedSettings FAkAdvancedInitializationSettingsWithMultiCoreRendering
UAkTVOSInitializationSettings = {}



---@class UAkTVOSPlatformInfo : UAkPlatformInfo
UAkTVOSPlatformInfo = {}


---@class UAkTrigger : UAkAudioType
---@field TriggerCookedData FWwiseTriggerCookedData
UAkTrigger = {}



---@class UAkWaapiCalls : UBlueprintFunctionLibrary
UAkWaapiCalls = {}

---@param SubscriptionId FAkWaapiSubscriptionId
---@param UnsubscriptionDone boolean
---@return FAKWaapiJsonObject
function UAkWaapiCalls:Unsubscribe(SubscriptionId, UnsubscriptionDone) end
---@param WaapiUri FAkWaapiUri
---@param WaapiOptions FAKWaapiJsonObject
---@param Callback FSubscribeToWaapiCallback
---@param SubscriptionId FAkWaapiSubscriptionId
---@param SubscriptionDone boolean
---@return FAKWaapiJsonObject
function UAkWaapiCalls:SubscribeToWaapi(WaapiUri, WaapiOptions, Callback, SubscriptionId, SubscriptionDone) end
---@param Subscription FAkWaapiSubscriptionId
---@param ID int32
function UAkWaapiCalls:SetSubscriptionID(Subscription, ID) end
---@param Callback FRegisterWaapiProjectLoadedCallbackCallback
---@return boolean
function UAkWaapiCalls:RegisterWaapiProjectLoadedCallback(Callback) end
---@param Callback FRegisterWaapiConnectionLostCallbackCallback
---@return boolean
function UAkWaapiCalls:RegisterWaapiConnectionLostCallback(Callback) end
---@param Subscription FAkWaapiSubscriptionId
---@return int32
function UAkWaapiCalls:GetSubscriptionID(Subscription) end
---@param INAkWaapiSubscriptionId FAkWaapiSubscriptionId
---@return FText
function UAkWaapiCalls:Conv_FAkWaapiSubscriptionIdToText(INAkWaapiSubscriptionId) end
---@param INAkWaapiSubscriptionId FAkWaapiSubscriptionId
---@return FString
function UAkWaapiCalls:Conv_FAkWaapiSubscriptionIdToString(INAkWaapiSubscriptionId) end
---@param WaapiUri FAkWaapiUri
---@param WaapiArgs FAKWaapiJsonObject
---@param WaapiOptions FAKWaapiJsonObject
---@return FAKWaapiJsonObject
function UAkWaapiCalls:CallWaapi(WaapiUri, WaapiArgs, WaapiOptions) end


---@class UAkWaapiJsonManager : UBlueprintFunctionLibrary
UAkWaapiJsonManager = {}

---@param FieldName FAkWaapiFieldNames
---@param FieldValue FString
---@param Target FAKWaapiJsonObject
---@return FAKWaapiJsonObject
function UAkWaapiJsonManager:SetStringField(FieldName, FieldValue, Target) end
---@param FieldName FAkWaapiFieldNames
---@param FieldValue FAKWaapiJsonObject
---@param Target FAKWaapiJsonObject
---@return FAKWaapiJsonObject
function UAkWaapiJsonManager:SetObjectField(FieldName, FieldValue, Target) end
---@param FieldName FAkWaapiFieldNames
---@param FieldValue float
---@param Target FAKWaapiJsonObject
---@return FAKWaapiJsonObject
function UAkWaapiJsonManager:SetNumberField(FieldName, FieldValue, Target) end
---@param FieldName FAkWaapiFieldNames
---@param FieldValue boolean
---@param Target FAKWaapiJsonObject
---@return FAKWaapiJsonObject
function UAkWaapiJsonManager:SetBoolField(FieldName, FieldValue, Target) end
---@param FieldName FAkWaapiFieldNames
---@param FieldStringValues TArray<FString>
---@param Target FAKWaapiJsonObject
---@return FAKWaapiJsonObject
function UAkWaapiJsonManager:SetArrayStringFields(FieldName, FieldStringValues, Target) end
---@param FieldName FAkWaapiFieldNames
---@param FieldObjectValues TArray<FAKWaapiJsonObject>
---@param Target FAKWaapiJsonObject
---@return FAKWaapiJsonObject
function UAkWaapiJsonManager:SetArrayObjectFields(FieldName, FieldObjectValues, Target) end
---@param FieldName FAkWaapiFieldNames
---@param Target FAKWaapiJsonObject
---@return FString
function UAkWaapiJsonManager:GetStringField(FieldName, Target) end
---@param FieldName FAkWaapiFieldNames
---@param Target FAKWaapiJsonObject
---@return FAKWaapiJsonObject
function UAkWaapiJsonManager:GetObjectField(FieldName, Target) end
---@param FieldName FAkWaapiFieldNames
---@param Target FAKWaapiJsonObject
---@return float
function UAkWaapiJsonManager:GetNumberField(FieldName, Target) end
---@param FieldName FAkWaapiFieldNames
---@param Target FAKWaapiJsonObject
---@return int32
function UAkWaapiJsonManager:GetIntegerField(FieldName, Target) end
---@param FieldName FAkWaapiFieldNames
---@param Target FAKWaapiJsonObject
---@return boolean
function UAkWaapiJsonManager:GetBoolField(FieldName, Target) end
---@param FieldName FAkWaapiFieldNames
---@param Target FAKWaapiJsonObject
---@return TArray<FAKWaapiJsonObject>
function UAkWaapiJsonManager:GetArrayField(FieldName, Target) end
---@param INAKWaapiJsonObject FAKWaapiJsonObject
---@return FText
function UAkWaapiJsonManager:Conv_FAKWaapiJsonObjectToText(INAKWaapiJsonObject) end
---@param INAKWaapiJsonObject FAKWaapiJsonObject
---@return FString
function UAkWaapiJsonManager:Conv_FAKWaapiJsonObjectToString(INAKWaapiJsonObject) end


---@class UAkWaapiUriConv : UBlueprintFunctionLibrary
UAkWaapiUriConv = {}

---@param INAkWaapiUri FAkWaapiUri
---@return FText
function UAkWaapiUriConv:Conv_FAkWaapiUriToText(INAkWaapiUri) end
---@param INAkWaapiUri FAkWaapiUri
---@return FString
function UAkWaapiUriConv:Conv_FAkWaapiUriToString(INAkWaapiUri) end


---@class UAkWin32PlatformInfo : UAkPlatformInfo
UAkWin32PlatformInfo = {}


---@class UAkWin64PlatformInfo : UAkPlatformInfo
UAkWin64PlatformInfo = {}


---@class UAkWinAnvilInitializationSettings : UAkWinGDKInitializationSettings
UAkWinAnvilInitializationSettings = {}


---@class UAkWinAnvilPlatformInfo : UAkWinGDKPlatformInfo
UAkWinAnvilPlatformInfo = {}


---@class UAkWinGDKInitializationSettings : UObject
---@field CommonSettings FAkCommonInitializationSettingsWithSampleRate
---@field CommunicationSettings FAkCommunicationSettingsWithSystemInitialization
---@field AdvancedSettings FAkWinGDKAdvancedInitializationSettings
UAkWinGDKInitializationSettings = {}

---@param NewValue boolean
function UAkWinGDKInitializationSettings:MigrateMultiCoreRendering(NewValue) end


---@class UAkWinGDKPlatformInfo : UAkPlatformInfo
UAkWinGDKPlatformInfo = {}


---@class UAkWindowsInitializationSettings : UObject
---@field CommonSettings FAkCommonInitializationSettingsWithSampleRate
---@field CommunicationSettings FAkCommunicationSettingsWithSystemInitialization
---@field AdvancedSettings FAkWindowsAdvancedInitializationSettings
UAkWindowsInitializationSettings = {}

---@param NewValue boolean
function UAkWindowsInitializationSettings:MigrateMultiCoreRendering(NewValue) end


---@class UAkWindowsPlatformInfo : UAkWin64PlatformInfo
UAkWindowsPlatformInfo = {}


---@class UAkWwiseTree : UWidget
---@field OnSelectionChanged FAkWwiseTreeOnSelectionChanged
---@field OnItemDragged FAkWwiseTreeOnItemDragged
UAkWwiseTree = {}

---@param newText FString
function UAkWwiseTree:SetSearchText(newText) end
---@return FAkWwiseObjectDetails
function UAkWwiseTree:GetSelectedItem() end
---@return FString
function UAkWwiseTree:GetSearchText() end


---@class UAkWwiseTreeSelector : UWidget
---@field OnSelectionChanged FAkWwiseTreeSelectorOnSelectionChanged
---@field OnItemDragged FAkWwiseTreeSelectorOnItemDragged
UAkWwiseTreeSelector = {}



---@class UAkXSXInitializationSettings : UObject
---@field CommonSettings FAkCommonInitializationSettings
---@field ApuHeapSettings FAkXSXApuHeapInitializationSettings
---@field CommunicationSettings FAkCommunicationSettingsWithSystemInitialization
---@field AdvancedSettings FAkXSXAdvancedInitializationSettings
UAkXSXInitializationSettings = {}

---@param NewValue boolean
function UAkXSXInitializationSettings:MigrateMultiCoreRendering(NewValue) end


---@class UAkXSXPlatformInfo : UAkPlatformInfo
UAkXSXPlatformInfo = {}


---@class UDrawPortalComponent : UPrimitiveComponent
UDrawPortalComponent = {}


---@class UDrawRoomComponent : UPrimitiveComponent
UDrawRoomComponent = {}


---@class UGSAkAudioLibrary : UBlueprintFunctionLibrary
UGSAkAudioLibrary = {}

---@param InWorldContext UObject
---@param ShowDebugDurationTime float
function UGSAkAudioLibrary:GetAkGameObjects(InWorldContext, ShowDebugDurationTime) end
---@param OutGameObjectInfos TArray<FAkGameObjectDebugInfo>
function UGSAkAudioLibrary:GetActiveAkGameObjects(OutGameObjectInfos) end


---@class UMovieSceneAkAudioEventSection : UMovieSceneSection
---@field Event UAkAudioEvent
---@field RetriggerEvent boolean
---@field ScrubTailLengthMs int32
---@field StopAtSectionEnd boolean
---@field EventName FString
---@field MaxSourceDuration float
---@field MaxDurationSourceID FString
UMovieSceneAkAudioEventSection = {}



---@class UMovieSceneAkAudioEventTrack : UMovieSceneAkTrack
UMovieSceneAkAudioEventTrack = {}


---@class UMovieSceneAkAudioRTPCSection : UMovieSceneSection
---@field RTPC UAkRtpc
---@field Name FString
---@field FloatCurve FRichCurve
---@field FloatChannelSerializationHelper FMovieSceneFloatChannelSerializationHelper
---@field RTPCChannel FMovieSceneFloatChannel
UMovieSceneAkAudioRTPCSection = {}



---@class UMovieSceneAkAudioRTPCTrack : UMovieSceneAkTrack
UMovieSceneAkAudioRTPCTrack = {}


---@class UMovieSceneAkTrack : UMovieSceneTrack
---@field Sections TArray<UMovieSceneSection>
---@field bIsAMasterTrack boolean
UMovieSceneAkTrack = {}



---@class UPostEventAsync : UBlueprintAsyncActionBase
---@field Completed FPostEventAsyncCompleted
UPostEventAsync = {}

---@param WorldContextObject UObject
---@param AkEvent UAkAudioEvent
---@param Actor AActor
---@param CallbackMask int32
---@param PostEventCallback FPostEventAsyncPostEventCallback
---@param bStopWhenAttachedToDestroyed boolean
---@return UPostEventAsync
function UPostEventAsync:PostEventAsync(WorldContextObject, AkEvent, Actor, CallbackMask, PostEventCallback, bStopWhenAttachedToDestroyed) end
function UPostEventAsync:PollPostEventFuture() end


---@class UPostEventAtLocationAsync : UBlueprintAsyncActionBase
---@field Completed FPostEventAtLocationAsyncCompleted
UPostEventAtLocationAsync = {}

---@param WorldContextObject UObject
---@param AkEvent UAkAudioEvent
---@param Location FVector
---@param Orientation FRotator
---@return UPostEventAtLocationAsync
function UPostEventAtLocationAsync:PostEventAtLocationAsync(WorldContextObject, AkEvent, Location, Orientation) end
function UPostEventAtLocationAsync:PollPostEventFuture() end


---@class USAkWaapiFieldNamesConv : UBlueprintFunctionLibrary
USAkWaapiFieldNamesConv = {}

---@param INAkWaapiFieldNames FAkWaapiFieldNames
---@return FText
function USAkWaapiFieldNamesConv:Conv_FAkWaapiFieldNamesToText(INAkWaapiFieldNames) end
---@param INAkWaapiFieldNames FAkWaapiFieldNames
---@return FString
function USAkWaapiFieldNamesConv:Conv_FAkWaapiFieldNamesToString(INAkWaapiFieldNames) end


