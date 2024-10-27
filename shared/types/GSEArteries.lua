---@meta

---@class AGSEArteriesActor : AArteriesActor
---@field bEnableCollision boolean
---@field MobilityMode EComponentMobility::Type
---@field InteractType GSArteriesIteractType
---@field GSEArteriesSplineComp UGSEArteriesSplineComponent
---@field GSEArteriesBoxComp UGSEArteriesBoxComponent
AGSEArteriesActor = {}

function AGSEArteriesActor:UpdateMobility() end
function AGSEArteriesActor:UpdateInteractComp() end
function AGSEArteriesActor:UpdateHISMCollision() end
---@param Length float
function AGSEArteriesActor:SetSplineUnitLength(Length) end
---@param CloseDistance float
---@return boolean
function AGSEArteriesActor:CloseSplineAndBuild(CloseDistance) end


---@class FBaseTransformedSoftObject
---@field SoftObjectPath FSoftObjectPath
---@field BaseTransform FTransform
FBaseTransformedSoftObject = {}



---@class FGSArteriesPlacementInfo
---@field eCurEnumLevel EGSARTERIES_PLACEMENT_LEVEL
---@field ePlacementType EGSATERIES_PLACEMENT_TYPE
---@field PlacedSoftPath FSoftObjectPath
---@field PlacedBound FBoxSphereBounds
---@field NoisedTransform FTransform
FGSArteriesPlacementInfo = {}



---@class FGSArteriesStackParam
---@field bCanBeStackedOnto boolean
---@field eFixToLevel EGSARTERIES_PLACEMENT_LEVEL
---@field eCanPitchAt EGSARTERIES_PLACEMENT_LEVEL
---@field eCanRollAt EGSARTERIES_PLACEMENT_LEVEL
---@field eCanYawAt EGSARTERIES_PLACEMENT_LEVEL
FGSArteriesStackParam = {}



---@class FGSArteriesStackRule
---@field StackParam FGSArteriesStackParam
---@field MinTotalNumber int32
---@field MaxTotalNumber int32
FGSArteriesStackRule = {}



---@class UGSEArteriesBoxComponent : UBoxComponent
UGSEArteriesBoxComponent = {}

---@param bBottomSurface boolean
---@return TArray<FVector>
function UGSEArteriesBoxComponent:GetSurfacePointsClockWise(bBottomSurface) end


---@class UGSEArteriesFuncLib : UBlueprintFunctionLibrary
UGSEArteriesFuncLib = {}

---@param Target UArteriesObject
---@param InSources TArray<FSoftObjectPath>
---@param InAxis GSATERIES_SAMPLE_AXIS
---@param MinResampleLength float
---@param MaxResampleLength float
---@param ResampleScale float
---@return UArteriesObject
function UGSEArteriesFuncLib:SmartResampleBySourceExtent(Target, InSources, InAxis, MinResampleLength, MaxResampleLength, ResampleScale) end
---@param Target UArteriesObject
---@param UnitLength float
---@return UArteriesObject
function UGSEArteriesFuncLib:ScalizeGridPrimitive(Target, UnitLength) end
---@param Target UArteriesObject
---@param InGroup FString
---@param Distance float
---@param bInwards boolean
---@return UArteriesObject
function UGSEArteriesFuncLib:ResizePrimitive2D(Target, InGroup, Distance, bInwards) end
---@param Target UArteriesObject
---@param SegmentLengthSets TArray<float>
---@param ByEdge boolean
---@param NumSegments int32
---@param OutputType EArteriesTangentOutputType
---@return UArteriesObject
function UGSEArteriesFuncLib:ResampleEachPrimsByLengths(Target, SegmentLengthSets, ByEdge, NumSegments, OutputType) end
---@param Target UArteriesObject
---@return UArteriesObject
function UGSEArteriesFuncLib:ResampleAsMidPoints(Target) end
---@param OwnerActor AArteriesActor
---@param BackBones UArteriesObject
---@param InGroup FString
---@param RayCastOffset FVector
---@param RayCastDistance float
---@param EndOffsetLength float
---@param bHitLandscapeOnly boolean
---@return UArteriesObject
function UGSEArteriesFuncLib:RayCastDown(OwnerActor, BackBones, InGroup, RayCastOffset, RayCastDistance, EndOffsetLength, bHitLandscapeOnly) end
---@param OwnerActor AArteriesActor
---@param Target UArteriesObject
---@param InGroup FString
---@param RayCastOffset FVector
---@param RayDistance float
---@return UArteriesObject
function UGSEArteriesFuncLib:MergePointsToStaticSurface(OwnerActor, Target, InGroup, RayCastOffset, RayDistance) end
---@param Target UArteriesObject
---@param InGroup FString
---@param Offset FVector
---@param bMakeClose boolean
---@return UArteriesObject
function UGSEArteriesFuncLib:MergePointsToPrimitive(Target, InGroup, Offset, bMakeClose) end
---@param OwnerActor AArteriesActor
---@param Target UArteriesObject
---@param InGroup FString
---@param RayCastOffset FVector
---@param RayDistance float
---@return UArteriesObject
function UGSEArteriesFuncLib:MergePointsToLandscape(OwnerActor, Target, InGroup, RayCastOffset, RayDistance) end
---@param Target UArteriesObject
---@param InGroup FString
---@param GridSize float
---@param Offset FVector
---@return UArteriesObject
function UGSEArteriesFuncLib:MergePointsToGrid(Target, InGroup, GridSize, Offset) end
---@param OwnerActor AArteriesActor
---@param Target UArteriesObject
---@param bHitLandscapeOnly boolean
---@param RayCastDistance float
---@param Tolerence float
---@return UArteriesObject
function UGSEArteriesFuncLib:MergeAndCleanInstancedMeshToStaticSurface(OwnerActor, Target, bHitLandscapeOnly, RayCastDistance, Tolerence) end
---@param Target UArteriesObject
---@param HoleGroups FString
---@param OutHoleGroups FString
---@param MaxHoleIteration int32
---@param MaxHoleNum int32
---@param HoleIterationChance float
---@return UArteriesObject
function UGSEArteriesFuncLib:MakeHoles(Target, HoleGroups, OutHoleGroups, MaxHoleIteration, MaxHoleNum, HoleIterationChance) end
---@param Target UArteriesObject
---@return int32
function UGSEArteriesFuncLib:GetNumberOfPoints(Target) end
---@return FRandomStream
function UGSEArteriesFuncLib:GenRandSeedStream() end
---@param Target UArteriesObject
---@param WindowNum int32
---@param WindowUnitLength float
---@return UArteriesObject
function UGSEArteriesFuncLib:FindWindowFeaturePoints(Target, WindowNum, WindowUnitLength) end
---@param Target UArteriesObject
---@param InGroup FString
---@return UArteriesObject
function UGSEArteriesFuncLib:FindLeafPoints(Target, InGroup) end
---@param Target UArteriesObject
---@param InGroup FString
---@param bFindSlopePoints boolean
---@param Tolerence float
---@return UArteriesObject
function UGSEArteriesFuncLib:FindFlatFeaturePoints(Target, InGroup, bFindSlopePoints, Tolerence) end
---@param OwnerActor AArteriesActor
---@param Target UArteriesObject
---@param DoorNum int32
---@param UnitLength float
---@param DoorUnitLength float
---@param DoorGroup FString
---@param DoorCatnateGroup FString
---@param RestGroup FString
---@param DoorCatUnitLength float
---@param eSelectSide GSATERIES_SIDE_SELECT_FEATURE
---@param eDistribute GSATERIES_SIDE_DISTRIBUTION_FEATURE
---@return UArteriesObject
function UGSEArteriesFuncLib:FindDoorFeaturePoints(OwnerActor, Target, DoorNum, UnitLength, DoorUnitLength, DoorGroup, DoorCatnateGroup, RestGroup, DoorCatUnitLength, eSelectSide, eDistribute) end
---@param Target UArteriesObject
---@param InGroup FString
---@param WithAdjacentPoints boolean
---@return UArteriesObject
function UGSEArteriesFuncLib:FindCornerPoints(Target, InGroup, WithAdjacentPoints) end
---@param BackBones UArteriesObject
---@param InPrimGroup FString
---@param OffsetLength float
---@return UArteriesObject
function UGSEArteriesFuncLib:CreateSlopeSideSamplingSurface(BackBones, InPrimGroup, OffsetLength) end
---@param BackBones UArteriesObject
---@param InPrimGroup FString
---@param Length float
---@param InDirection FVector
---@return UArteriesObject
function UGSEArteriesFuncLib:CreateSamplingSurface(BackBones, InPrimGroup, Length, InDirection) end
---@param Target UArteriesObject
---@param InGroup FString
---@param OutGeneralGroup FString
---@param OutNoiseGroup FString
---@param NoiseRatio float
---@return UArteriesObject
function UGSEArteriesFuncLib:CreateNoiseGroup(Target, InGroup, OutGeneralGroup, OutNoiseGroup, NoiseRatio) end
---@param InPosition FVector
---@return UArteriesObject
function UGSEArteriesFuncLib:CreateGSArteriesPoint(InPosition) end
---@param Target UArteriesObject
---@param InGroup FString
---@param bKeepRotation boolean
---@param bResetUpDirection boolean
---@return UArteriesObject
function UGSEArteriesFuncLib:BreakPrimitivesIntoPoints(Target, InGroup, bKeepRotation, bResetUpDirection) end
---@param Target UArteriesObject
---@param Groups FString
---@param DesiredGroupNum int32
---@return UArteriesObject
function UGSEArteriesFuncLib:AggregatePoints(Target, Groups, DesiredGroupNum) end
---@param OwnerActor AArteriesActor
---@param Target UArteriesObject
---@param ExpectedObjectsNum int32
---@param Groups FString
---@param SoftPathToRuleMap TMap<FSoftObjectPath, FGSArteriesStackRule>
---@param LocalTransform FTransform
---@param TransformNoiseLow FTransform
---@param TransformNoiseHigh FTransform
---@param InCustomCornerLocs TArray<FVector>
---@param StepYaw float
---@param StepPitch float
---@param StepRoll float
---@return UArteriesObject
function UGSEArteriesFuncLib:AdvancedSmartStackToPointsBySoftPath(OwnerActor, Target, ExpectedObjectsNum, Groups, SoftPathToRuleMap, LocalTransform, TransformNoiseLow, TransformNoiseHigh, InCustomCornerLocs, StepYaw, StepPitch, StepRoll) end
---@param Target UArteriesObject
---@param Groups FString
---@param Sources TArray<FSoftObjectPath>
---@param NoiseSources TArray<FSoftObjectPath>
---@param LocalTransform FTransform
---@param TransformNoiseLow FTransform
---@param TransformNoiseHigh FTransform
---@param SampleAxis GSATERIES_SAMPLE_AXIS
---@param StepYaw float
---@param StepPitch float
---@param StepRoll float
---@param LineTwistChance float
---@param UnitNoiseChane float
---@param ResampleScale float
---@param IterationCount int32
---@param CurvelyAdjusting boolean
---@return UArteriesObject
function UGSEArteriesFuncLib:AdvancedSmartCopyToPointsBySoftObjectExtents(Target, Groups, Sources, NoiseSources, LocalTransform, TransformNoiseLow, TransformNoiseHigh, SampleAxis, StepYaw, StepPitch, StepRoll, LineTwistChance, UnitNoiseChane, ResampleScale, IterationCount, CurvelyAdjusting) end
---@param Target UArteriesObject
---@param Groups FString
---@param MeshSources TArray<UStaticMesh>
---@param LocalTransform FTransform
---@param TransformNoiseLow FTransform
---@param TransformNoiseHigh FTransform
---@param SampleAxis GSATERIES_SAMPLE_AXIS
---@param StepYaw float
---@param StepPitch float
---@param StepRoll float
---@param LineNoiseChance float
---@param ResampleScale float
---@return UArteriesObject
function UGSEArteriesFuncLib:AdvancedSmartCopyToPointsByMeshExtents(Target, Groups, MeshSources, LocalTransform, TransformNoiseLow, TransformNoiseHigh, SampleAxis, StepYaw, StepPitch, StepRoll, LineNoiseChance, ResampleScale) end
---@param Target UArteriesObject
---@param Groups FString
---@param Sources TArray<FBaseTransformedSoftObject>
---@param LocalTransform FTransform
---@param TransformNoiseLow FTransform
---@param TransformNoiseHigh FTransform
---@param EachPathWidth float
---@param bIgnoreCorner boolean
---@param bIgnoreCornerAdjacent boolean
---@param bGenerateMultiPath boolean
---@param GenPathCount int32
---@return UArteriesObject
function UGSEArteriesFuncLib:AdvancedCopyToPointsByTrSoftPath(Target, Groups, Sources, LocalTransform, TransformNoiseLow, TransformNoiseHigh, EachPathWidth, bIgnoreCorner, bIgnoreCornerAdjacent, bGenerateMultiPath, GenPathCount) end
---@param Target UArteriesObject
---@param Groups FString
---@param Sources TArray<FSoftObjectPath>
---@param LocalTransform FTransform
---@param bIgnoreCorner boolean
---@param bIgnoreCornerAdjacent boolean
---@return UArteriesObject
function UGSEArteriesFuncLib:AdvancedCopyToPointsBySoftPath(Target, Groups, Sources, LocalTransform, bIgnoreCorner, bIgnoreCornerAdjacent) end
---@param Target UArteriesObject
---@param Groups FString
---@param Sources TArray<UObject>
---@param LocalTransform FTransform
---@return UArteriesObject
function UGSEArteriesFuncLib:AdvancedCopyToPoints(Target, Groups, Sources, LocalTransform) end
---@param Target UArteriesObject
---@param InGroup FString
---@param Sources TArray<FSoftObjectPath>
---@param LocalTransform FTransform
---@param bIgnoreDelatZ boolean
---@return UArteriesObject
function UGSEArteriesFuncLib:AdvancedCopyToEndPointsBySoftPath(Target, InGroup, Sources, LocalTransform, bIgnoreDelatZ) end
---@param Target UArteriesObject
---@param InGroup FString
---@param Sources TArray<FSoftObjectPath>
---@param LocalTransform FTransform
---@param bAsInnerCorner boolean
---@param bAlongCurveOutNormalOnly boolean
---@return UArteriesObject
function UGSEArteriesFuncLib:AdvancedCopyToCornerPointsBySoftPath(Target, InGroup, Sources, LocalTransform, bAsInnerCorner, bAlongCurveOutNormalOnly) end
---@param Target UArteriesObject
---@param InGroup FString
---@param Sources TArray<FSoftObjectPath>
---@param LocalTransform FTransform
---@param UnitLength float
---@param bCatOutCorner boolean
---@param bAlongCurveOutNormalOnly boolean
---@return UArteriesObject
function UGSEArteriesFuncLib:AdvancedCopyToCornerCatenatePointsBySoftPath(Target, InGroup, Sources, LocalTransform, UnitLength, bCatOutCorner, bAlongCurveOutNormalOnly) end
---@param Target UArteriesObject
---@param InGroup FString
---@return UArteriesObject
function UGSEArteriesFuncLib:AddRoofToSimpleRect(Target, InGroup) end
---@param BackBones UArteriesObject
---@param InGroup FString
---@param Length float
---@return UArteriesObject
function UGSEArteriesFuncLib:AddPerpendicularLinesAlongLine(BackBones, InGroup, Length) end
---@param Target UArteriesObject
---@param InGroup FString
---@param TransformNoiseLow FTransform
---@param TransformNoiseHigh FTransform
---@param StepYaw float
---@param StepPitch float
---@param StepRoll float
---@param NoiseRatio float
---@return UArteriesObject
function UGSEArteriesFuncLib:AddNoiseToPoints(Target, InGroup, TransformNoiseLow, TransformNoiseHigh, StepYaw, StepPitch, StepRoll, NoiseRatio) end
---@param SplineComp USplineComponent
---@param Length float
---@return UArteriesObject
function UGSEArteriesFuncLib:AddLineAlongSpline(SplineComp, Length) end


---@class UGSEArteriesLandscapeComponent : UActorComponent
UGSEArteriesLandscapeComponent = {}


---@class UGSEArteriesSplineComponent : USplineComponent
---@field bSplineClosed boolean
---@field BindedBoxExtent FVector
UGSEArteriesSplineComponent = {}

---@param Length float
function UGSEArteriesSplineComponent:SetGSArteriesSplineMinUnitLength(Length) end
---@param CloseDistance float
---@return boolean
function UGSEArteriesSplineComponent:MakeGSArteriesSplineClosedAsRect(CloseDistance) end
---@return boolean
function UGSEArteriesSplineComponent:IsGSArteriesSplineClosed() end
---@param InBoxExtent FVector
function UGSEArteriesSplineComponent:BindSplineToBoxExtent(InBoxExtent) end


