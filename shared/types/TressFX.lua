---@meta

---@class FAnimationResetPositionPeriod
---@field Start float
---@field End float
FAnimationResetPositionPeriod = {}



---@class FAnimationTressFXSimulationSettings
---@field Animation UAnimationAsset
---@field TressFXSimulationSettingsName FString
---@field AnimResetPositionPeriods TArray<FAnimationResetPositionPeriod>
FAnimationTressFXSimulationSettings = {}



---@class FTressFXShadeSettings
---@field FiberRadius float
---@field FiberSpacing float
---@field HairThickness float
---@field RootTangentBlending float
---@field ShadowThickness float
FTressFXShadeSettings = {}



---@class FTressFXSimulationSettings
---@field Name FString
---@field Damping float
---@field GravityMagnitude float
---@field EnableLengthConstraint boolean
---@field LengthConstraintsIterations int32
---@field EnableGlobalShapeConstraint boolean
---@field GlobalConstraintStiffness float
---@field GlobalShapeRange float
---@field EnableLocalShapeConstraint boolean
---@field LocalShapeStiffness FRuntimeFloatCurve
---@field LocalConstraintsIterations int32
---@field EnableVelocityShockPropagation boolean
---@field VSPStiffness FRuntimeFloatCurve
---@field VSPAccelThresholdMax float
---@field TipSeparationMultipier float
---@field RootSeparationMultipier float
---@field WindMagnitude float
---@field WindDirection FVector3f
---@field SimulationQuality ETressFXSimulationQuality
FTressFXSimulationSettings = {}



---@class FTressFXStrandStyleParameter
---@field StrandLength float
---@field StrandClumpScale float
---@field StrandClumpRoughness float
---@field StrandClumpNoise float
---@field StrandStiffnessTip float
---@field StrandStiffnessRoot float
FTressFXStrandStyleParameter = {}



---@class UTFXCardMeshComponent : USkeletalMeshComponent
---@field CardMesh FSoftObjectPath
---@field VisibleQualityLevel int32
UTFXCardMeshComponent = {}



---@class UTressFXAsset : UObject
---@field NumFollowStrandsPerGuide int32
---@field RootSeparationFactor float
---@field ClippingPercentage float
---@field SegmentDivisor int32
---@field HairLengthScale float
---@field NumVerticesFromRootNoSimulation int32
---@field TressFXBoneSkinningAsset UTressFXBoneSkinningAsset
---@field BaseSkeleton USkeletalMesh
---@field bIsValid boolean
---@field RawGuideCount int32
---@field TotalStrandCount int32
---@field VertexCountPerStrand int32
---@field TotalVertexCount int32
---@field TotalTriangleCount int32
---@field NumDependHairGroups int32
---@field PreCalculateBounds FBoxSphereBounds
---@field TressFXSimulationSettings FTressFXSimulationSettings
---@field TressFXSimulationSettingsArray TArray<FTressFXSimulationSettings>
---@field AnimationSimulationSettingsMap TArray<FAnimationTressFXSimulationSettings>
UTressFXAsset = {}



---@class UTressFXBindingAsset : UObject
---@field TressFXAsset UTressFXAsset
---@field TargetSkeletalMesh USkeletalMesh
UTressFXBindingAsset = {}



---@class UTressFXBoneSkinningAsset : UObject
UTressFXBoneSkinningAsset = {}


---@class UTressFXComponent : UPrimitiveComponent
---@field EnableRuntimeBounds boolean
---@field EnableSimulation boolean
---@field EnableCapsuleCollision boolean
---@field HairPhysicsAsset UPhysicsAsset
---@field Asset UTressFXAsset
---@field HairMaterial UMaterialInterface
---@field HairMaterialLowQuality UMaterialInterface
---@field ShadeSettings FTressFXShadeSettings
---@field LodScreenSize float
---@field MorphTargetBindingAsset UTressFXBindingAsset
---@field LocalSDFIdRef uint32
---@field bGenerateCardMesh boolean
---@field CardMeshComponentReference FComponentReference
---@field IsInGamePlay boolean
---@field SimulationDelayTime float
---@field SimulationDelayRemain float
---@field InitedBounds boolean
UTressFXComponent = {}

function UTressFXComponent:ResetPositions() end


---@class UTressFXMesh : UObject
UTressFXMesh = {}


---@class UTressFXMeshAsset : UObject
---@field EnableVisualizeMesh boolean
---@field EnableVisualizeMeshAABB boolean
---@field CollisionMeshBoxMargin float
---@field EnableVisualizeSDF boolean
---@field NumSDFCells FIntVector
---@field NumGridOffset int32
---@field SDFCollisionMargin float
UTressFXMeshAsset = {}



---@class UTressFXMeshImportOptions : UObject
---@field Skeleton USkeletalMesh
UTressFXMeshImportOptions = {}



---@class UTressFXSDFComponent : UMeshComponent
---@field EnableSDF boolean
---@field LocalSDFId uint32
---@field TressFXMeshAsset UTressFXMeshAsset
---@field HasBlendShapes boolean
UTressFXSDFComponent = {}

---@param Asset UTressFXMeshAsset
function UTressFXSDFComponent:SetTressFXMeshAsset(Asset) end


