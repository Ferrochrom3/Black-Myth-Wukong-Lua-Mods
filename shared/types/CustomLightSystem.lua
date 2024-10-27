---@meta

---@class ACLSAtmosphericFog : AActor
---@field AtmosphericFogComponent USkyAtmosphereComponent
---@field TagComponent UCLSTagComponent
ACLSAtmosphericFog = {}

---@param bNewVisibility boolean
function ACLSAtmosphericFog:SetVisibility(bNewVisibility) end


---@class ACLSBaseVolume : AVolume
---@field VolumeProcessParameters FCLSVolumeProcessParameters
---@field MaterialParametersCollectionProperty FCLSMaterialParametersCollectionProperty
---@field MasterVolume TWeakObjectPtr<ACLSBaseVolume>
---@field DirectionalLight ADirectionalLight
---@field SkyLight ASkyLight
---@field AtmosphericFog ASkyAtmosphere
---@field ExponentialHeightFog AExponentialHeightFog
---@field PlayerLightProperty FCLSPlayerLightProperty
---@field VolumeManagerID int32
---@field LengthOfBuffSpace float
---@field SortWeight float
---@field SpeedAlpha float
---@field PlayerLightSpeedAlpha float
---@field bUseCustomBlendOutSpeed boolean
---@field CustomBlendOutSpeedAlpha float
---@field Level int32
---@field DynamicLevel int32
---@field bUseSceneLight boolean
---@field bDisableDirectionalLight boolean
---@field bDisableSkyLight boolean
---@field bDisableAtmospheric boolean
---@field bDisableHeightFog boolean
---@field bForceEnableAnyWhere boolean
---@field DirectionalLightComponent UDirectionalLightComponent
---@field SkyLightComponent USkyLightComponent
---@field AtmosphereComponent USkyAtmosphereComponent
---@field ExponentialHeightFogComponent UExponentialHeightFogComponent
---@field CustomVariableComponent UCustomVariableComponent
---@field CLSLightData FCLSLightData
---@field bInVolume boolean
---@field DistanceToPoint float
ACLSBaseVolume = {}

---@param bInForceEnableAnyWhere boolean
function ACLSBaseVolume:SetForceEnableAnyWhere(bInForceEnableAnyWhere) end
---@param InDynamicLevel int32
function ACLSBaseVolume:SetDynamicLevel(InDynamicLevel) end
function ACLSBaseVolume:CopyCLsDataFromMaster() end
function ACLSBaseVolume:CopyClsData2LightComponents() end


---@class ACLSCommandManager : AActor
---@field LightManager ACLSLightManager
---@field VolumeManager ACLSVolumeManager
---@field CommandManagerID int32
ACLSCommandManager = {}

---@param InTargetDirectionalLight ADirectionalLight
---@param InTargetSkyLight ASkyLight
---@param InTargetAtmosphericFog ASkyAtmosphere
---@param InTargetExponentialHeightFog AExponentialHeightFog
---@param InTargetCLSVolumeMPCProperty FCLSMaterialParametersCollectionProperty
---@param InOriginalCLSVolumeMPCProperty FCLSMaterialParametersCollectionProperty
---@param InTargetVolumePercentage float
---@param ForceUpdate boolean
function ACLSCommandManager:SwitchLightsAndFogs(InTargetDirectionalLight, InTargetSkyLight, InTargetAtmosphericFog, InTargetExponentialHeightFog, InTargetCLSVolumeMPCProperty, InOriginalCLSVolumeMPCProperty, InTargetVolumePercentage, ForceUpdate) end
---@param InTargetDirectionalLight ADirectionalLight
---@param InTargetSkyLight ASkyLight
---@param InTargetAtmosphericFog ASkyAtmosphere
---@param InTargetExponentialHeightFog AExponentialHeightFog
---@param InTargetCLSVolumeMPCProperty FCLSMaterialParametersCollectionProperty
---@param InOriginalCLSVolumeMPCProperty FCLSMaterialParametersCollectionProperty
---@param InTargetVolumePercentage float
---@param ForceUpdate boolean
function ACLSCommandManager:SafelySwitchLightsAndFogs(InTargetDirectionalLight, InTargetSkyLight, InTargetAtmosphericFog, InTargetExponentialHeightFog, InTargetCLSVolumeMPCProperty, InOriginalCLSVolumeMPCProperty, InTargetVolumePercentage, ForceUpdate) end
function ACLSCommandManager:ReactiveAnotherManager() end
function ACLSCommandManager:InterruptAnotherManager() end
function ACLSCommandManager:InitializeCommandManager() end


---@class ACLSDirectionalLight : AActor
---@field DirectionalLightComponent UDirectionalLightComponent
---@field TagComponent UCLSTagComponent
ACLSDirectionalLight = {}

---@param bNewVisibility boolean
function ACLSDirectionalLight:SetVisibility(bNewVisibility) end


---@class ACLSExponentialHeightFog : AActor
---@field ExponentialHeightFogComponent UExponentialHeightFogComponent
---@field TagComponent UCLSTagComponent
ACLSExponentialHeightFog = {}

---@param bNewVisibility boolean
function ACLSExponentialHeightFog:SetVisibility(bNewVisibility) end


---@class ACLSLightManager : AActor
---@field VolumeManager ACLSVolumeManager
---@field LightManagerID int32
---@field DirectionalLightList TArray<ADirectionalLight>
---@field SkyLightList TArray<ASkyLight>
---@field AtmosphericFogList TArray<ASkyAtmosphere>
---@field ExponentialHeightFogList TArray<AExponentialHeightFog>
---@field SpeedAlpha float
---@field bIsSwitchActive boolean
---@field bIsAllActorActive boolean
---@field TargetDLight ADirectionalLight
---@field DLight ADirectionalLight
---@field TargetSLight ASkyLight
---@field SLight ASkyLight
---@field TargetAFog ASkyAtmosphere
---@field AFog ASkyAtmosphere
---@field TargetEHFog AExponentialHeightFog
---@field EHFog AExponentialHeightFog
---@field MPC UMaterialParameterCollection
---@field OriginalDirectionalLight ADirectionalLight
---@field OriginalSkyLight ASkyLight
---@field OriginalAtmosphericFog ASkyAtmosphere
---@field OriginalExponentialHeightFog AExponentialHeightFog
---@field OriginalVloumePercentage float
---@field TargetDirectionalLight ADirectionalLight
---@field TargetSkyLight ASkyLight
---@field TargetAtmosphericFog ASkyAtmosphere
---@field TargetExponentialHeightFog AExponentialHeightFog
---@field TargetCLSVolumeMPCProperty FCLSMaterialParametersCollectionProperty
---@field OriginalCLSVolumeMPCProperty FCLSMaterialParametersCollectionProperty
---@field TargetVolumePercentage float
---@field TickTargetVolumePercentage float
---@field bOriginlaVolumeChanged boolean
ACLSLightManager = {}

---@param InTargetDirectionalLight ADirectionalLight
---@param InTargetSkyLight ASkyLight
---@param InTargetAtmosphericFog ASkyAtmosphere
---@param InTargetExponentialHeightFog AExponentialHeightFog
---@param InTargetCLSVolumeMPCProperty FCLSMaterialParametersCollectionProperty
---@param InOriginalCLSVolumeMPCProperty FCLSMaterialParametersCollectionProperty
---@param InTargetVolumePercentage float
---@param ForceUpdate boolean
function ACLSLightManager:SyncLightsAndFogs(InTargetDirectionalLight, InTargetSkyLight, InTargetAtmosphericFog, InTargetExponentialHeightFog, InTargetCLSVolumeMPCProperty, InOriginalCLSVolumeMPCProperty, InTargetVolumePercentage, ForceUpdate) end
---@param Index int32
---@return boolean
function ACLSLightManager:SwitchSkyLight(Index) end
---@param Percentage float
function ACLSLightManager:SwitchLightAndFog(Percentage) end
---@param Index int32
---@return boolean
function ACLSLightManager:SwitchExponentialHeightFog(Index) end
---@param Index int32
---@return boolean
function ACLSLightManager:SwitchDirectionalLight(Index) end
---@param Index int32
---@return boolean
function ACLSLightManager:SwitchAtmosphericFog(Index) end
---@param Index int32
---@return boolean
function ACLSLightManager:SwitchAllLightAndFog(Index) end
---@param NewActive boolean
function ACLSLightManager:SetLightManagerActive(NewActive) end
---@param TagComponent UCLSTagComponent
---@return boolean
function ACLSLightManager:InitializeTagActor(TagComponent) end
function ACLSLightManager:ForceUpdateTagComponents() end
function ACLSLightManager:ForceUpdateParameters() end
function ACLSLightManager:DisableAllActor() end
---@return boolean
function ACLSLightManager:CheckReforenceListValid() end


---@class ACLSManager : AActor
---@field bEnableManager boolean
---@field bEnableDebugLog boolean
---@field ActorLightAttenuationMaxRange float
---@field ActorLightAttenuationMinRange float
---@field VolumeManagerID int32
---@field MPC UMaterialParameterCollection
---@field MarkDirtyDeltaPercentage float
---@field bEnableSkyLightCapture boolean
---@field bEnableRayTrace boolean
---@field RayTraceQuality uint8
---@field PlayerLightAttenuation float
---@field ActorLightAttenuation float
---@field DirectionalLightComponent UDirectionalLightComponent
---@field SkyLightComponent USkyLightComponent
---@field AtmosphereComponent USkyAtmosphereComponent
---@field HeightFogComponent UExponentialHeightFogComponent
---@field CustomVariableComponent UCustomVariableComponent
---@field CurrentTargetVolume TWeakObjectPtr<ACLSBaseVolume>
---@field CurrentVolume FString
---@field DirectionalLightBlendData FCLSDirectionalLightBlendData
---@field SkyLightBlendData FCLSSkyLightBlendData
---@field AtmosphereBlendData FCLSAtmosphereBlendData
---@field HeightFogBlendData FCLSHeightFogBlendData
---@field OtherBlendData FCLSOtherBlendData
---@field CustomVariableBlendData FCLSCustomBlendData
---@field PlayerLightBlendData FCLSPointLightBlendData
---@field LastFrameViewLocation FVector
---@field ViewLocationInEditor FVector
---@field PlayerLocation FVector
---@field MinSwitchDistanceInEditor float
---@field RTXSettingsActor AActor
---@field UpdateDLightTime float
---@field UpdateDLightTotalTime float
---@field UpdateRadiusThresholdHandle int32
---@field VisualShadowRadiusThreshold float
---@field WatchData FCLSWatchData
ACLSManager = {}

---@return FCLSWatchData
function ACLSManager:UpdateAndGetWatchData() end
---@param InPlayerLightAttenuation float
function ACLSManager:SetPlayerLightAttenuation(InPlayerLightAttenuation) end
---@param bInEnableManager boolean
function ACLSManager:SetEnableManager(bInEnableManager) end
---@param InActorLightAttenuation float
function ACLSManager:SetActorLightAttenuation(InActorLightAttenuation) end
function ACLSManager:RemoveAllDynamicLevel() end


---@class ACLSPostVolume : ACLSBaseVolume
---@field Settings FPostProcessSettings
---@field PostProcessPriority float
---@field PostProcessBlendRadius float
---@field PostProcessBlendWeight float
---@field bPostProcessEnabled boolean
ACLSPostVolume = {}

---@param InBlendableObject TScriptInterface<IBlendableInterface>
---@param InWeight float
function ACLSPostVolume:AddOrUpdateBlendable(InBlendableObject, InWeight) end


---@class ACLSSkyLight : AActor
---@field SkyLightComponent USkyLightComponent
---@field TagComponent UCLSTagComponent
ACLSSkyLight = {}

---@param bNewVisibility boolean
function ACLSSkyLight:SetVisibility(bNewVisibility) end


---@class ACLSSplinePrismVolume : ACLSPostVolume
---@field Spline USplineComponent
---@field Height float
ACLSSplinePrismVolume = {}



---@class ACLSVolumeManager : AActor
---@field Volumes TArray<ACLSBaseVolume>
---@field LightManager ACLSLightManager
---@field VolumeManagerID int32
---@field bIsSwitchActive boolean
---@field bIsCheckWARP boolean
---@field WARPDistance float
---@field bIsDebug boolean
---@field bIsForcePPV boolean
---@field ValidDirectionalLight ADirectionalLight
---@field ValidSkyLight ASkyLight
---@field ValidAtmosphericFog ASkyAtmosphere
---@field ValidExponentialHeightFog AExponentialHeightFog
---@field ValidCLSBaseVolume ACLSBaseVolume
---@field OriginalValidCLSBaseVolume ACLSBaseVolume
---@field TemplateValidCLSBaseVolume ACLSBaseVolume
---@field TargetValidCLSBaseVolume ACLSBaseVolume
---@field TargetPlayerLocation FVector
---@field bForceUpdateVolume boolean
---@field LastLocation FVector
---@field DeltaWARPDistance float
ACLSVolumeManager = {}

---@param position FVector
function ACLSVolumeManager:UpdateVolume(position) end
function ACLSVolumeManager:UpdateProperty() end
---@param TargetVolume ACLSBaseVolume
function ACLSVolumeManager:SwitchVolumeProcessParameters(TargetVolume) end
---@param position FVector
function ACLSVolumeManager:SwitchToValidLightAndFog(position) end
---@param NewActive boolean
function ACLSVolumeManager:SetLightManagerActive(NewActive) end
---@param TargetParameter FString
function ACLSVolumeManager:RunVolumeProcessParameterCommand(TargetParameter) end
---@param InVolume ACLSBaseVolume
function ACLSVolumeManager:InitializeVolumes(InVolume) end
---@param position FVector
---@return TMap<ACLSBaseVolume, float>
function ACLSVolumeManager:GetValidVolumeByWeight(position) end
---@param ViewLocation FVector
function ACLSVolumeManager:ForceDortPPV(ViewLocation) end
---@param position FVector
---@return boolean
function ACLSVolumeManager:CheckValidByWeight(position) end
---@return boolean
function ACLSVolumeManager:CheckReforenceVolumeListValid() end
---@param position FVector
---@return TArray<ACLSBaseVolume>
function ACLSVolumeManager:CheckOverlapVolumes(position) end


---@class ACVarVolume : AVolume
---@field CVarFloats TMap<FString, float>
---@field Priority int32
---@field bEnableOnlyInRaytracing boolean
---@field EnableOnlyBelowQualityLevel int32
---@field RuntimeTick boolean
---@field IsActive boolean
---@field HandlesCache TArray<int32>
ACVarVolume = {}



---@class FCLSAtmosphereBlendData : FCLSBlendDataBase
---@field OriginData FCLSAtmosphericFogData
---@field TargetData FCLSAtmosphericFogData
---@field CurrentData FCLSAtmosphericFogData
FCLSAtmosphereBlendData = {}



---@class FCLSAtmosphericFogData
---@field Name FString
---@field bValid boolean
---@field TransformMode ESkyAtmosphereTransformMode
---@field BottomRadius float
---@field GroundAlbedo FColor
---@field AtmosphereHeight float
---@field MultiScatteringFactor float
---@field TraceSampleCountScale float
---@field RayleighScatteringScale float
---@field RayleighScattering FLinearColor
---@field RayleighExponentialDistribution float
---@field MieScatteringScale float
---@field MieScattering FLinearColor
---@field MieAbsorptionScale float
---@field MieAbsorption FLinearColor
---@field MieAnisotropy float
---@field MieExponentialDistribution float
---@field OtherAbsorptionScale float
---@field OtherAbsorption FLinearColor
---@field OtherTentDistribution FTentDistribution
---@field SkyLuminanceFactor FLinearColor
---@field AerialPespectiveViewDistanceScale float
---@field HeightFogContribution float
---@field TransmittanceMinLightElevationAngle float
---@field AerialPerspectiveStartDepth float
FCLSAtmosphericFogData = {}



---@class FCLSBlendDataBase
---@field bInitialized boolean
---@field TargetName FString
---@field SpeedAlpha float
---@field bOriginUseCustomBlendOutSpeed boolean
---@field OriginCustomBlendOutSpeedAlpha float
---@field bTargetUseCustomBlendOutSpeed boolean
---@field TargetCustomBlendOutSpeedAlpha float
---@field CurrentAlpha float
---@field TargetAlpha float
---@field CurrentPercentage float
FCLSBlendDataBase = {}



---@class FCLSCategoryWatchData
---@field OriginData FString
---@field CurrentData FString
---@field TargetData FString
---@field SpeedAlpha float
---@field bOriginUseCustomBlendOutSpeed boolean
---@field OriginCustomBlendOutSpeedAlpha float
---@field bTargetUseCustomBlendOutSpeed boolean
---@field TargetCustomBlendOutSpeedAlpha float
---@field CurrentAlpha float
---@field TargetAlpha float
---@field CurrentPercentage float
FCLSCategoryWatchData = {}



---@class FCLSCustomBlendData : FCLSBlendDataBase
---@field OriginData FCLSCustomVariableData
---@field TargetData FCLSCustomVariableData
---@field CurrentData FCLSCustomVariableData
FCLSCustomBlendData = {}



---@class FCLSCustomVariableData
---@field Name FString
---@field bValid boolean
---@field WaterReflectionMode EWaterReflectionMode
---@field GIIntensityScale float
---@field GISpecularFactor float
---@field GIShadowIntensityScale float
---@field ReflectionDiffuseBoost float
---@field GISkyLightIntensity float
---@field GISkyLightIndirectIntensity float
---@field SkylightIntensityMultiplier float
---@field HZBTraversalRelativeDepthThickness float
---@field LumenHZBTraversalOverride float
FCLSCustomVariableData = {}



---@class FCLSDirectionalLightBlendData : FCLSBlendDataBase
---@field OriginData FCLSDirectionalLightData
---@field TargetData FCLSDirectionalLightData
---@field CurrentData FCLSDirectionalLightData
FCLSDirectionalLightBlendData = {}



---@class FCLSDirectionalLightData
---@field Name FString
---@field bValid boolean
---@field Intensity float
---@field LightColor FColor
---@field bAffectsWorld boolean
---@field CastShadows boolean
---@field CastStaticShadows boolean
---@field CastDynamicShadows boolean
---@field bAffectTranslucentLighting boolean
---@field bTransmission boolean
---@field bCastVolumetricShadow boolean
---@field bCastDeepShadow boolean
---@field CastRaytracedShadow ECastRayTracedShadow::Type
---@field bAffectReflection boolean
---@field bAffectGlobalIllumination boolean
---@field DeepShadowLayerDistribution float
---@field IndirectLightingIntensity float
---@field VolumetricScatteringIntensity float
---@field SamplesPerPixel int32
---@field Temperature float
---@field MaxDrawDistance float
---@field MaxDistanceFadeRange float
---@field bUseTemperature boolean
---@field SpecularScale float
---@field ShadowResolutionScale float
---@field ShadowBias float
---@field ShadowSlopeBias float
---@field ShadowSharpen float
---@field ContactShadowLength float
---@field ContactShadowLengthInWS boolean
---@field CastTranslucentShadows boolean
---@field bCastShadowsFromCinematicObjectsOnly boolean
---@field bAffectDynamicIndirectLighting boolean
---@field bForceCachedShadowsForMovablePrimitives boolean
---@field LightingChannels FLightingChannels
---@field LightFunctionMaterial UMaterialInterface
---@field LightFunctionScale FVector
---@field IESTexture UTextureLightProfile
---@field bUseIESBrightness boolean
---@field IESBrightnessScale float
---@field LightFunctionFadeDistance float
---@field DisabledBrightness float
---@field bEnableLightShaftBloom boolean
---@field BloomScale float
---@field BloomThreshold float
---@field BloomMaxBrightness float
---@field BloomTint FColor
---@field bUseRayTracedDistanceFieldShadows boolean
---@field RayStartOffsetDepthScale float
---@field ShadowCascadeBiasDistribution float
---@field bEnableLightShaftOcclusion boolean
---@field OcclusionMaskDarkness float
---@field OcclusionDepthRange float
---@field LightShaftOverrideDirection FVector
---@field DynamicShadowDistanceMovableLight float
---@field DynamicShadowDistanceStationaryLight float
---@field DynamicShadowCascades int32
---@field CascadeDistributionExponent float
---@field CascadeTransitionFraction float
---@field ShadowDistanceFadeoutFraction float
---@field bUseInsetShadowsForMovableObjects boolean
---@field FarShadowCascadeCount int32
---@field FarShadowDistance float
---@field DistanceFieldShadowDistance float
---@field LightSourceAngle float
---@field LightSourceSoftAngle float
---@field ShadowSourceAngleFactor float
---@field TraceDistance float
---@field bAtmosphereSunLight boolean
---@field AtmosphereSunLightIndex int32
---@field AtmosphereSunDiskColorScale FLinearColor
---@field bPerPixelAtmosphereTransmittance boolean
---@field bCastShadowsOnClouds boolean
---@field bCastShadowsOnAtmosphere boolean
---@field bCastCloudShadows boolean
---@field CloudShadowStrength float
---@field CloudShadowOnAtmosphereStrength float
---@field CloudShadowOnSurfaceStrength float
---@field CloudShadowDepthBias float
---@field CloudShadowExtent float
---@field CloudShadowMapResolutionScale float
---@field CloudShadowRaySampleCountScale float
---@field CloudScatteredLuminanceScale FLinearColor
---@field LightmassSettings FLightmassDirectionalLightSettings
---@field bCastModulatedShadows boolean
---@field ModulatedShadowColor FColor
---@field ShadowAmount float
---@field Rotation FRotator
FCLSDirectionalLightData = {}



---@class FCLSHeightFogBlendData : FCLSBlendDataBase
---@field OriginData FCLSHeightFogData
---@field TargetData FCLSHeightFogData
---@field CurrentData FCLSHeightFogData
FCLSHeightFogBlendData = {}



---@class FCLSHeightFogData
---@field Name FString
---@field bValid boolean
---@field FogDensity float
---@field FogHeightFalloff float
---@field SecondFogData FExponentialHeightFogData
---@field FogInscatteringLuminance FLinearColor
---@field InscatteringColorCubemap UTextureCube
---@field InscatteringColorCubemapAngle float
---@field InscatteringTextureTint FLinearColor
---@field FullyDirectionalInscatteringColorDistance float
---@field NonDirectionalInscatteringColorDistance float
---@field DirectionalInscatteringExponent float
---@field DirectionalInscatteringStartDistance float
---@field DirectionalInscatteringLuminance FLinearColor
---@field FogMaxOpacity float
---@field StartDistance float
---@field FogCutoffDistance float
---@field bEnableVolumetricFog boolean
---@field VolumetricFogScatteringDistribution float
---@field VolumetricFogAlbedo FColor
---@field VolumetricFogEmissive FLinearColor
---@field VolumetricFogExtinctionScale float
---@field VolumetricFogDistance float
---@field VolumetricFogStaticLightingScatteringIntensity float
---@field bOverrideLightColorsWithFogInscatteringColors boolean
---@field Location FVector
FCLSHeightFogData = {}



---@class FCLSLightData
---@field Name FString
---@field DirectionalLightData FCLSDirectionalLightData
---@field SkyLightData FCLSSkyLightData
---@field AtmosphericFogData FCLSAtmosphericFogData
---@field HeightFogData FCLSHeightFogData
---@field MpcData FCLSMpcData
---@field CustomVariableData FCLSCustomVariableData
---@field PlayerLightData FCLSPlayerLightData
---@field LengthOfBuffSpace float
---@field SortWeight float
---@field SpeedAlpha float
---@field PlayerLightSpeedAlpha float
---@field bUseCustomBlendOutSpeed boolean
---@field CustomBlendOutSpeedAlpha float
---@field CommandLines TArray<FString>
FCLSLightData = {}



---@class FCLSMaterialParametersCollectionFloatProperty
---@field MaterialParameter FString
---@field FValue float
FCLSMaterialParametersCollectionFloatProperty = {}



---@class FCLSMaterialParametersCollectionProperty
---@field MaterialParametersCollectionFloatProperty TArray<FCLSMaterialParametersCollectionFloatProperty>
---@field MaterialParametersCollectionVectorProperty TArray<FCLSMaterialParametersCollectionVectorProperty>
FCLSMaterialParametersCollectionProperty = {}



---@class FCLSMaterialParametersCollectionVectorProperty
---@field MaterialParameter FString
---@field FValue FLinearColor
FCLSMaterialParametersCollectionVectorProperty = {}



---@class FCLSMpcData
---@field MPCFloatPropertyMap TMap<FString, float>
---@field MPCVectorPropertyMap TMap<FString, FLinearColor>
FCLSMpcData = {}



---@class FCLSOtherBlendData : FCLSBlendDataBase
---@field OriginData FCLSLightData
---@field TargetData FCLSLightData
---@field CurrentData FCLSLightData
FCLSOtherBlendData = {}



---@class FCLSPlayerLightData
---@field bValid boolean
---@field Name FString
---@field FrontLightData FCLSPlayerLightDataBase
---@field BackLightData FCLSPlayerLightDataBase
FCLSPlayerLightData = {}



---@class FCLSPlayerLightDataBase
---@field Intensity float
---@field Color FColor
---@field Radius float
---@field AttenuationRadius float
---@field bCastShadows boolean
---@field CastShadowMapShadow boolean
---@field ContactShadowLength float
---@field bUseTemperature boolean
---@field Temperature float
---@field VolumetricScatteringIntensity float
---@field SpecularScale float
FCLSPlayerLightDataBase = {}



---@class FCLSPlayerLightProperty
---@field bEnable boolean
---@field FrontLightData FCLSPlayerLightDataBase
---@field BackLightData FCLSPlayerLightDataBase
FCLSPlayerLightProperty = {}



---@class FCLSPlayerLightWatchData : FCLSCategoryWatchData
---@field FrontLightData FCLSPlayerLightDataBase
---@field BackLightData FCLSPlayerLightDataBase
FCLSPlayerLightWatchData = {}



---@class FCLSPointLightBlendData : FCLSBlendDataBase
---@field OriginData FCLSPlayerLightData
---@field TargetData FCLSPlayerLightData
---@field CurrentData FCLSPlayerLightData
FCLSPointLightBlendData = {}



---@class FCLSSkyLightBlendData : FCLSBlendDataBase
---@field OriginData FCLSSkyLightData
---@field TargetData FCLSSkyLightData
---@field CurrentData FCLSSkyLightData
FCLSSkyLightBlendData = {}



---@class FCLSSkyLightData
---@field Name FString
---@field bValid boolean
---@field Intensity float
---@field LightColor FColor
---@field bAffectsWorld boolean
---@field CastShadows boolean
---@field CastStaticShadows boolean
---@field CastDynamicShadows boolean
---@field bAffectTranslucentLighting boolean
---@field bTransmission boolean
---@field bCastVolumetricShadow boolean
---@field bCastDeepShadow boolean
---@field CastRaytracedShadow ECastRayTracedShadow::Type
---@field bAffectReflection boolean
---@field bAffectGlobalIllumination boolean
---@field DeepShadowLayerDistribution float
---@field IndirectLightingIntensity float
---@field VolumetricScatteringIntensity float
---@field SamplesPerPixel int32
---@field bRealTimeCapture boolean
---@field SourceType ESkyLightSourceType
---@field Cubemap UTextureCube
---@field bCaptureSceneForReflection boolean
---@field SourceCubemapAngle float
---@field CubemapResolution uint32
---@field IrradianceEnvMapSH FSHIrradianceMap
---@field CapturedDataForReflection TArray<uint8>
---@field SkyDistanceThreshold float
---@field bCaptureEmissiveOnly boolean
---@field bLowerHemisphereIsBlack boolean
---@field LowerHemisphereColor FLinearColor
---@field OcclusionMaxDistance float
---@field Contrast float
---@field OcclusionExponent float
---@field MinOcclusion float
---@field OcclusionTint FColor
---@field bCloudAmbientOcclusion boolean
---@field CloudAmbientOcclusionStrength float
---@field CloudAmbientOcclusionExtent float
---@field CloudAmbientOcclusionMapResolutionScale float
---@field CloudAmbientOcclusionApertureScale float
---@field OcclusionCombineMode EOcclusionCombineMode
FCLSSkyLightData = {}



---@class FCLSTagData
---@field LightManagerID int32
---@field Index int32
---@field CLSComponentType int32
FCLSTagData = {}



---@class FCLSVolumeProcessParameters
---@field CommandLines TArray<FString>
FCLSVolumeProcessParameters = {}



---@class FCLSVolumeWatchData
---@field bValid boolean
---@field Name FString
---@field Level int32
---@field DynamicLevel int32
---@field bInVolume boolean
---@field DistanceToPoint float
FCLSVolumeWatchData = {}



---@class FCLSWatchData
---@field DirectionalLightData FCLSCategoryWatchData
---@field SkyLightData FCLSCategoryWatchData
---@field AtmosphereData FCLSCategoryWatchData
---@field HeightFogData FCLSCategoryWatchData
---@field CustomVariableData FCLSCategoryWatchData
---@field OtherData FCLSCategoryWatchData
---@field PlayerLightData FCLSPlayerLightWatchData
---@field VolumeData TArray<FCLSVolumeWatchData>
FCLSWatchData = {}



---@class IRTXSettings : IInterface
IRTXSettings = {}

---@param Quality uint8
function IRTXSettings:SetRTXQuality(Quality) end
---@param bInEnable boolean
function IRTXSettings:SetRTXEnabled(bInEnable) end
---@param bEnable boolean
function IRTXSettings:SetDlssRREnable(bEnable) end
---@return boolean
function IRTXSettings:IsRTXEnabled() end
---@return boolean
function IRTXSettings:IsDLSSRREnabled() end
---@return uint8
function IRTXSettings:GetRTXQuality() end


---@class UCLSFunctionLibrary : UBlueprintFunctionLibrary
UCLSFunctionLibrary = {}

---@param InTag FName
function UCLSFunctionLibrary:UnregisterNeedPointLightControlActor(InTag) end
---@param InTag FName
---@param InActor AActor
function UCLSFunctionLibrary:RegisterNeedPointLightControlActor(InTag, InActor) end
---@param bOverride boolean
---@param InBlendInSpeed float
function UCLSFunctionLibrary:OverrideEnvLightBlendInSpeed(bOverride, InBlendInSpeed) end
---@return ACLSManager
function UCLSFunctionLibrary:GetCurrentCLSManager() end


---@class UCLSSettings : UDeveloperSettings
---@field bEnableRTX boolean
---@field RTXActorClass TSubclassOf<AActor>
---@field bChangeVisualShadowRadiusWhenDLightRotate boolean
UCLSSettings = {}



---@class UCLSTagComponent : UActorComponent
---@field LightManagerID int32
---@field TagData FCLSTagData
---@field TargetVolume ACLSBaseVolume
---@field Manager ACLSLightManager
UCLSTagComponent = {}

function UCLSTagComponent:InitializeManager() end


---@class UCustomVariableComponent : USceneComponent
---@field WaterReflectionMode EWaterReflectionMode
---@field GIIntensityScale float
---@field GISpecularFactor float
---@field GIShadowIntensityScale float
---@field ReflectionDiffuseBoost float
---@field GISkyLightIntensity float
---@field GISkyLightIndirectIntensity float
---@field SkylightIntensityMultiplier float
---@field HZBTraversalRelativeDepthThickness float
---@field LumenHZBTraversalOverride int32
UCustomVariableComponent = {}



