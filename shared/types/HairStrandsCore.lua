---@meta

---@class AGroomActor : AActor
---@field GroomComponent UGroomComponent
AGroomActor = {}



---@class FFollicleMaskOptions
---@field Groom UGroomAsset
---@field Channel EFollicleMaskChannel
FFollicleMaskOptions = {}



---@class FGoomBindingGroupInfo
---@field RenRootCount int32
---@field RenLODCount int32
---@field SimRootCount int32
---@field SimLODCount int32
FGoomBindingGroupInfo = {}



---@class FGroomAnimationInfo
---@field NumFrames uint32
---@field SecondsPerFrame float
---@field Duration float
---@field StartTime float
---@field EndTime float
---@field StartFrame int32
---@field EndFrame int32
---@field Attributes EGroomCacheAttributes
FGroomAnimationInfo = {}



---@class FGroomBuildSettings
---@field bOverrideGuides boolean
---@field HairToGuideDensity float
---@field InterpolationQuality EGroomInterpolationQuality
---@field InterpolationDistance EGroomInterpolationWeight
---@field bRandomizeGuide boolean
---@field bUseUniqueGuide boolean
FGroomBuildSettings = {}



---@class FGroomCacheImportSettings
---@field bImportGroomCache boolean
---@field FrameStart int32
---@field FrameEnd int32
---@field bSkipEmptyFrames boolean
---@field bImportGroomAsset boolean
---@field GroomAsset FSoftObjectPath
FGroomCacheImportSettings = {}



---@class FGroomCacheInfo
---@field Version int32
---@field Type EGroomCacheType
---@field AnimationInfo FGroomAnimationInfo
FGroomCacheInfo = {}



---@class FGroomConversionSettings
---@field Rotation FVector
---@field Scale FVector
FGroomConversionSettings = {}



---@class FGroomHairGroupPreview
---@field GroupName FName
---@field GroupId int32
---@field CurveCount int32
---@field GuideCount int32
---@field bHasPrecomputedWeights boolean
---@field InterpolationSettings FHairGroupsInterpolation
FGroomHairGroupPreview = {}



---@class FHairAdvancedRenderingSettings
---@field bUseStableRasterization boolean
---@field bScatterSceneLighting boolean
FHairAdvancedRenderingSettings = {}



---@class FHairBendConstraint
---@field SolveBend boolean
---@field ProjectBend boolean
---@field BendDamping float
---@field BendStiffness float
---@field BendScale FRuntimeFloatCurve
FHairBendConstraint = {}



---@class FHairCardsClusterSettings
---@field ClusterDecimation float
---@field Type EHairCardsClusterType
---@field bUseGuide boolean
FHairCardsClusterSettings = {}



---@class FHairCardsGeometrySettings
---@field GenerationType EHairCardsGenerationType
---@field CardsCount int32
---@field ClusterType EHairCardsClusterType
---@field MinSegmentLength float
---@field AngularThreshold float
---@field MinCardsLength float
---@field MaxCardsLength float
FHairCardsGeometrySettings = {}



---@class FHairCardsTextureSettings
---@field AtlasMaxResolution int32
---@field PixelPerCentimeters int32
---@field LengthTextureCount int32
---@field DensityTextureCount int32
FHairCardsTextureSettings = {}



---@class FHairCollisionConstraint
---@field SolveCollision boolean
---@field ProjectCollision boolean
---@field StaticFriction float
---@field KineticFriction float
---@field StrandsViscosity float
---@field GridDimension FIntVector
---@field CollisionRadius float
---@field RadiusScale FRuntimeFloatCurve
FHairCollisionConstraint = {}



---@class FHairDecimationSettings
---@field CurveDecimation float
---@field VertexDecimation float
FHairDecimationSettings = {}



---@class FHairExternalForces
---@field GravityVector FVector
---@field AirDrag float
---@field AirVelocity FVector
FHairExternalForces = {}



---@class FHairGeometrySettings
---@field HairWidth float
---@field HairRootScale float
---@field HairTipScale float
FHairGeometrySettings = {}



---@class FHairGroupCardsInfo
---@field NumCards int32
---@field NumCardVertices int32
FHairGroupCardsInfo = {}



---@class FHairGroupCardsTextures
---@field DepthTexture UTexture2D
---@field CoverageTexture UTexture2D
---@field TangentTexture UTexture2D
---@field AttributeTexture UTexture2D
---@field AuxilaryDataTexture UTexture2D
---@field MaterialTexture UTexture2D
FHairGroupCardsTextures = {}



---@class FHairGroupDesc
---@field HairLength float
---@field HairWidth float
---@field HairWidth_Override boolean
---@field HairRootScale float
---@field HairRootScale_Override boolean
---@field HairTipScale float
---@field HairTipScale_Override boolean
---@field HairShadowDensity float
---@field HairShadowDensity_Override boolean
---@field HairRaytracingRadiusScale float
---@field HairRaytracingRadiusScale_Override boolean
---@field bUseHairRaytracingGeometry boolean
---@field bUseHairRaytracingGeometry_Override boolean
---@field LODBias float
---@field bUseStableRasterization boolean
---@field bUseStableRasterization_Override boolean
---@field bScatterSceneLighting boolean
---@field bScatterSceneLighting_Override boolean
---@field bSupportVoxelization boolean
---@field bSupportVoxelization_Override boolean
---@field HairLengthScale float
---@field HairLengthScale_Override boolean
FHairGroupDesc = {}



---@class FHairGroupInfo
---@field GroupId int32
---@field GroupName FName
---@field NumCurves int32
---@field NumGuides int32
---@field NumCurveVertices int32
---@field NumGuideVertices int32
---@field MaxCurveLength float
---@field MaxImportedWidth float
FHairGroupInfo = {}



---@class FHairGroupInfoWithVisibility : FHairGroupInfo
---@field bIsVisible boolean
FHairGroupInfoWithVisibility = {}



---@class FHairGroupsCardsSourceDescription
---@field Material UMaterialInterface
---@field MaterialSlotName FName
---@field SourceType EHairCardsSourceType
---@field ProceduralMesh UStaticMesh
---@field ProceduralMeshKey FString
---@field ImportedMesh UStaticMesh
---@field ProceduralSettings FHairGroupsProceduralCards
---@field Textures FHairGroupCardsTextures
---@field GroupIndex int32
---@field LODIndex int32
---@field CardsInfo FHairGroupCardsInfo
---@field ImportedMeshKey FString
FHairGroupsCardsSourceDescription = {}



---@class FHairGroupsInterpolation
---@field DecimationSettings FHairDecimationSettings
---@field InterpolationSettings FHairInterpolationSettings
FHairGroupsInterpolation = {}



---@class FHairGroupsLOD
---@field LODs TArray<FHairLODSettings>
---@field ClusterWorldSize float
---@field ClusterScreenSizeScale float
FHairGroupsLOD = {}



---@class FHairGroupsMaterial
---@field Material UMaterialInterface
---@field SlotName FName
FHairGroupsMaterial = {}



---@class FHairGroupsMeshesSourceDescription
---@field Material UMaterialInterface
---@field MaterialSlotName FName
---@field ImportedMesh UStaticMesh
---@field Textures FHairGroupCardsTextures
---@field GroupIndex int32
---@field LODIndex int32
---@field ImportedMeshKey FString
FHairGroupsMeshesSourceDescription = {}



---@class FHairGroupsPhysics
---@field SolverSettings FHairSolverSettings
---@field ExternalForces FHairExternalForces
---@field MaterialConstraints FHairMaterialConstraints
---@field StrandsParameters FHairStrandsParameters
FHairGroupsPhysics = {}



---@class FHairGroupsProceduralCards
---@field ClusterSettings FHairCardsClusterSettings
---@field GeometrySettings FHairCardsGeometrySettings
---@field TextureSettings FHairCardsTextureSettings
---@field Version int32
FHairGroupsProceduralCards = {}



---@class FHairGroupsRendering
---@field MaterialSlotName FName
---@field Material UMaterialInterface
---@field GeometrySettings FHairGeometrySettings
---@field ShadowSettings FHairShadowSettings
---@field AdvancedSettings FHairAdvancedRenderingSettings
FHairGroupsRendering = {}



---@class FHairInterpolationSettings
---@field bOverrideGuides boolean
---@field HairToGuideDensity float
---@field InterpolationQuality EHairInterpolationQuality
---@field InterpolationDistance EHairInterpolationWeight
---@field bRandomizeGuide boolean
---@field bUseUniqueGuide boolean
FHairInterpolationSettings = {}



---@class FHairLODSettings
---@field CurveDecimation float
---@field VertexDecimation float
---@field AngularThreshold float
---@field ScreenSize float
---@field ThicknessScale float
---@field bVisible boolean
---@field GeometryType EGroomGeometryType
---@field BindingType EGroomBindingType
---@field Simulation EGroomOverrideType
---@field GlobalInterpolation EGroomOverrideType
FHairLODSettings = {}



---@class FHairMaterialConstraints
---@field BendConstraint FHairBendConstraint
---@field StretchConstraint FHairStretchConstraint
---@field CollisionConstraint FHairCollisionConstraint
FHairMaterialConstraints = {}



---@class FHairShadowSettings
---@field HairShadowDensity float
---@field HairRaytracingRadiusScale float
---@field bUseHairRaytracingGeometry boolean
---@field bVoxelize boolean
FHairShadowSettings = {}



---@class FHairSimulationConstraints
---@field BendDamping float
---@field BendStiffness float
---@field StretchDamping float
---@field StretchStiffness float
---@field StaticFriction float
---@field KineticFriction float
---@field StrandsViscosity float
---@field CollisionRadius float
FHairSimulationConstraints = {}



---@class FHairSimulationForces
---@field GravityVector FVector
---@field AirDrag float
---@field AirVelocity FVector
FHairSimulationForces = {}



---@class FHairSimulationSettings
---@field bOverrideSettings boolean
---@field SimulationSetup FHairSimulationSetup
---@field SolverSettings FHairSimulationSolver
---@field ExternalForces FHairSimulationForces
---@field MaterialConstraints FHairSimulationConstraints
FHairSimulationSettings = {}



---@class FHairSimulationSetup
---@field bResetSimulation boolean
---@field bDebugSimulation boolean
---@field bLocalSimulation boolean
---@field LinearVelocityScale float
---@field AngularVelocityScale float
---@field LocalBone FString
---@field TeleportDistance float
FHairSimulationSetup = {}



---@class FHairSimulationSolver
---@field bEnableSimulation boolean
FHairSimulationSolver = {}



---@class FHairSolverSettings
---@field EnableSimulation boolean
---@field NiagaraSolver EGroomNiagaraSolvers
---@field CustomSystem TSoftObjectPtr<UNiagaraSystem>
---@field SubSteps int32
---@field IterationCount int32
FHairSolverSettings = {}



---@class FHairStrandsParameters
---@field StrandsSize EGroomStrandsSize
---@field StrandsDensity float
---@field StrandsSmoothing float
---@field StrandsThickness float
---@field ThicknessScale FRuntimeFloatCurve
FHairStrandsParameters = {}



---@class FHairStretchConstraint
---@field SolveStretch boolean
---@field ProjectStretch boolean
---@field StretchDamping float
---@field StretchStiffness float
---@field StretchScale FRuntimeFloatCurve
FHairStretchConstraint = {}



---@class FMovieSceneGroomCacheParams
---@field GroomCache UGroomCache
---@field FirstLoopStartFrameOffset FFrameNumber
---@field StartFrameOffset FFrameNumber
---@field EndFrameOffset FFrameNumber
---@field PlayRate float
---@field bReverse boolean
FMovieSceneGroomCacheParams = {}



---@class FMovieSceneGroomCacheSectionTemplate : FMovieSceneEvalTemplate
---@field Params FMovieSceneGroomCacheSectionTemplateParameters
FMovieSceneGroomCacheSectionTemplate = {}



---@class FMovieSceneGroomCacheSectionTemplateParameters : FMovieSceneGroomCacheParams
---@field SectionStartTime FFrameNumber
---@field SectionEndTime FFrameNumber
FMovieSceneGroomCacheSectionTemplateParameters = {}



---@class UGroomAsset : UObject
---@field HairGroupsInfo TArray<FHairGroupInfoWithVisibility>
---@field HairGroupsRendering TArray<FHairGroupsRendering>
---@field HairGroupsPhysics TArray<FHairGroupsPhysics>
---@field HairGroupsInterpolation TArray<FHairGroupsInterpolation>
---@field HairGroupsLOD TArray<FHairGroupsLOD>
---@field HairGroupsCards TArray<FHairGroupsCardsSourceDescription>
---@field HairGroupsMeshes TArray<FHairGroupsMeshesSourceDescription>
---@field HairGroupsMaterials TArray<FHairGroupsMaterial>
---@field EnableGlobalInterpolation boolean
---@field HairInterpolationType EGroomInterpolationType
---@field MinLOD FPerPlatformInt
---@field DisableBelowMinLodStripping FPerPlatformBool
---@field EffectiveLODBias TArray<float>
---@field AssetUserData TArray<UAssetUserData>
UGroomAsset = {}



---@class UGroomAssetImportData : UAssetImportData
---@field ImportOptions UGroomImportOptions
UGroomAssetImportData = {}



---@class UGroomBindingAsset : UObject
---@field GroomBindingType EGroomBindingMeshType
---@field Groom UGroomAsset
---@field SourceSkeletalMesh USkeletalMesh
---@field TargetSkeletalMesh USkeletalMesh
---@field SourceGeometryCache UGeometryCache
---@field TargetGeometryCache UGeometryCache
---@field NumInterpolationPoints int32
---@field MatchingSection int32
---@field GroupInfos TArray<FGoomBindingGroupInfo>
UGroomBindingAsset = {}



---@class UGroomBlueprintLibrary : UBlueprintFunctionLibrary
UGroomBlueprintLibrary = {}

---@param InDesiredPackagePath FString
---@param InGroomAsset UGroomAsset
---@param InSkeletalMesh USkeletalMesh
---@param InNumInterpolationPoints int32
---@param InSourceSkeletalMeshForTransfer USkeletalMesh
---@param InMatchingSection int32
---@return UGroomBindingAsset
function UGroomBlueprintLibrary:CreateNewGroomBindingAssetWithPath(InDesiredPackagePath, InGroomAsset, InSkeletalMesh, InNumInterpolationPoints, InSourceSkeletalMeshForTransfer, InMatchingSection) end
---@param InGroomAsset UGroomAsset
---@param InSkeletalMesh USkeletalMesh
---@param InNumInterpolationPoints int32
---@param InSourceSkeletalMeshForTransfer USkeletalMesh
---@param InMatchingSection int32
---@return UGroomBindingAsset
function UGroomBlueprintLibrary:CreateNewGroomBindingAsset(InGroomAsset, InSkeletalMesh, InNumInterpolationPoints, InSourceSkeletalMeshForTransfer, InMatchingSection) end
---@param DesiredPackagePath FString
---@param GroomAsset UGroomAsset
---@param GeometryCache UGeometryCache
---@param NumInterpolationPoints int32
---@param SourceGeometryCacheForTransfer UGeometryCache
---@param MatchingSection int32
---@return UGroomBindingAsset
function UGroomBlueprintLibrary:CreateNewGeometryCacheGroomBindingAssetWithPath(DesiredPackagePath, GroomAsset, GeometryCache, NumInterpolationPoints, SourceGeometryCacheForTransfer, MatchingSection) end
---@param GroomAsset UGroomAsset
---@param GeometryCache UGeometryCache
---@param NumInterpolationPoints int32
---@param SourceGeometryCacheForTransfer UGeometryCache
---@param MatchingSection int32
---@return UGroomBindingAsset
function UGroomBlueprintLibrary:CreateNewGeometryCacheGroomBindingAsset(GroomAsset, GeometryCache, NumInterpolationPoints, SourceGeometryCacheForTransfer, MatchingSection) end


---@class UGroomCache : UObject
---@field GroomCacheInfo FGroomCacheInfo
UGroomCache = {}



---@class UGroomCacheImportData : UAssetImportData
---@field Settings FGroomCacheImportSettings
UGroomCacheImportData = {}



---@class UGroomCacheImportOptions : UObject
---@field ImportSettings FGroomCacheImportSettings
UGroomCacheImportOptions = {}



---@class UGroomComponent : UMeshComponent
---@field GroomAsset UGroomAsset
---@field GroomCache UGroomCache
---@field NiagaraComponents TArray<UNiagaraComponent>
---@field SourceSkeletalMesh USkeletalMesh
---@field BindingAsset UGroomBindingAsset
---@field PhysicsAsset UPhysicsAsset
---@field SimulationSettings FHairSimulationSettings
---@field Strands_DebugMaterial UMaterialInterface
---@field Strands_DefaultMaterial UMaterialInterface
---@field Cards_DefaultMaterial UMaterialInterface
---@field Meshes_DefaultMaterial UMaterialInterface
---@field AngularSpringsSystem UNiagaraSystem
---@field CosseratRodsSystem UNiagaraSystem
---@field AttachmentName FString
---@field GroomGroupsDesc TArray<FHairGroupDesc>
---@field bUseCards boolean
---@field bRunning boolean
---@field bLooping boolean
---@field bManualTick boolean
---@field ElapsedTime float
UGroomComponent = {}

---@param InPhysicsAsset UPhysicsAsset
function UGroomComponent:SetPhysicsAsset(InPhysicsAsset) end
---@param bEnable boolean
function UGroomComponent:SetHairLengthScaleEnable(bEnable) end
---@param Scale float
function UGroomComponent:SetHairLengthScale(Scale) end
---@param Asset UGroomAsset
function UGroomComponent:SetGroomAsset(Asset) end
---@param bInEnableSimulation boolean
function UGroomComponent:SetEnableSimulation(bInEnableSimulation) end
---@param InBinding UGroomBindingAsset
function UGroomComponent:SetBindingAsset(InBinding) end
function UGroomComponent:ResetSimulation() end
function UGroomComponent:ResetCollisionComponents() end
---@return boolean
function UGroomComponent:GetIsHairLengthScaleEnabled() end
---@param SkeletalMeshComponent USkeletalMeshComponent
function UGroomComponent:AddCollisionComponent(SkeletalMeshComponent) end


---@class UGroomCreateBindingOptions : UObject
---@field GroomBindingType EGroomBindingMeshType
---@field SourceSkeletalMesh USkeletalMesh
---@field TargetSkeletalMesh USkeletalMesh
---@field SourceGeometryCache UGeometryCache
---@field TargetGeometryCache UGeometryCache
---@field NumInterpolationPoints int32
---@field MatchingSection int32
UGroomCreateBindingOptions = {}



---@class UGroomCreateFollicleMaskOptions : UObject
---@field Resolution int32
---@field RootRadius int32
---@field Grooms TArray<FFollicleMaskOptions>
UGroomCreateFollicleMaskOptions = {}



---@class UGroomCreateStrandsTexturesOptions : UObject
---@field Resolution int32
---@field TraceType EStrandsTexturesTraceType
---@field TraceDistance float
---@field MeshType EStrandsTexturesMeshType
---@field StaticMesh UStaticMesh
---@field SkeletalMesh USkeletalMesh
---@field LODIndex int32
---@field SectionIndex int32
---@field UVChannelIndex int32
---@field GroupIndex TArray<int32>
UGroomCreateStrandsTexturesOptions = {}



---@class UGroomHairGroupsPreview : UObject
---@field Groups TArray<FGroomHairGroupPreview>
UGroomHairGroupsPreview = {}



---@class UGroomImportOptions : UObject
---@field ConversionSettings FGroomConversionSettings
---@field InterpolationSettings TArray<FHairGroupsInterpolation>
UGroomImportOptions = {}



---@class UGroomPluginSettings : UObject
---@field GroomCacheLookAheadBuffer float
UGroomPluginSettings = {}



---@class UMovieSceneGroomCacheSection : UMovieSceneSection
---@field Params FMovieSceneGroomCacheParams
UMovieSceneGroomCacheSection = {}



---@class UMovieSceneGroomCacheTrack : UMovieSceneNameableTrack
---@field AnimationSections TArray<UMovieSceneSection>
UMovieSceneGroomCacheTrack = {}



---@class UNiagaraDataInterfaceHairStrands : UNiagaraDataInterface
---@field DefaultSource UGroomAsset
---@field SourceActor AActor
UNiagaraDataInterfaceHairStrands = {}



---@class UNiagaraDataInterfacePhysicsAsset : UNiagaraDataInterface
---@field DefaultSource UPhysicsAsset
---@field SourceActor AActor
---@field MeshUserParameter FNiagaraUserParameterBinding
UNiagaraDataInterfacePhysicsAsset = {}



---@class UNiagaraDataInterfacePressureGrid : UNiagaraDataInterfaceVelocityGrid
UNiagaraDataInterfacePressureGrid = {}


---@class UNiagaraDataInterfaceVelocityGrid : UNiagaraDataInterfaceRWBase
---@field GridSize FIntVector
UNiagaraDataInterfaceVelocityGrid = {}



