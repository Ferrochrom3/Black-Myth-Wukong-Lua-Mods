---@meta

---@class AArteriesActor : AActor
---@field OnBuildCompleted FArteriesActorOnBuildCompleted
---@field FinalObject UArteriesObject
AArteriesActor = {}

---@param GroupName FName
---@param Count int32
---@param Timeout float
function AArteriesActor:WaitForCount(GroupName, Count, Timeout) end
---@param Object UArteriesObject
---@param Transform FTransform
function AArteriesActor:OnBuildCompleted__DelegateSignature(Object, Transform) end
function AArteriesActor:OnBuild() end
---@param GroupName FName
function AArteriesActor:Increment(GroupName) end
---@param bForceRebuild boolean
function AArteriesActor:Build(bForceRebuild) end


---@class FArteriesEdgeGroup
---@field IDs TArray<FIntPoint>
FArteriesEdgeGroup = {}



---@class FArteriesElement
---@field IntValues TMap<FName, int32>
---@field FloatValues TMap<FName, float>
---@field Vec2Values TMap<FName, FVector2D>
---@field Vec3Values TMap<FName, FVector>
---@field StrValues TMap<FName, FString>
FArteriesElement = {}



---@class FArteriesGroup
---@field IDs TArray<int32>
FArteriesGroup = {}



---@class FArteriesGroupRange
---@field Name FName
---@field Start int32
---@field End int32
---@field Select int32
---@field Of int32
---@field Offset int32
FArteriesGroupRange = {}



---@class FArteriesInstances
---@field Transforms TArray<FTransform>
FArteriesInstances = {}



---@class FArteriesPoint : FArteriesElement
---@field position FVector
FArteriesPoint = {}



---@class FArteriesPointGroup : FArteriesGroup
FArteriesPointGroup = {}


---@class FArteriesPrimitive : FArteriesElement
---@field Material UMaterialInterface
---@field bClosed boolean
FArteriesPrimitive = {}



---@class FArteriesPrimitiveGroup : FArteriesGroup
FArteriesPrimitiveGroup = {}


---@class UArteriesLibrary : UObject
UArteriesLibrary = {}

---@param Actor AArteriesActor
---@param AttachToCaller boolean
---@return AArteriesActor
function UArteriesLibrary:FinishSpawningActor(Actor, AttachToCaller) end
---@param WorldContextObject UObject
---@param ActorClass TSubclassOf<AArteriesActor>
---@param SpawnTransform FTransform
---@return AArteriesActor
function UArteriesLibrary:BeginDeferredActorSpawnFromClass(WorldContextObject, ActorClass, SpawnTransform) end


---@class UArteriesObject : UObject
---@field PointGroups TMap<FName, FArteriesPointGroup>
---@field EdgeGroups TMap<FName, FArteriesEdgeGroup>
---@field PrimitiveGroups TMap<FName, FArteriesPrimitiveGroup>
---@field InstancesMap TMap<UStaticMesh, FArteriesInstances>
UArteriesObject = {}

---@param Groups FString
---@param Seed int32
---@param Count int32
---@param Density float
---@param Iterations int32
---@return UArteriesObject
function UArteriesObject:Voronoi(Groups, Seed, Count, Density, Iterations) end
---@param Origin FVector
---@param Rotation FRotator
---@param Radius FVector2D
---@param Height float
---@param Rows int32
---@param Columns int32
---@return UArteriesObject
function UArteriesObject:Tube(Origin, Rotation, Radius, Height, Rows, Columns) end
---@return UArteriesObject
function UArteriesObject:Triangulate() end
---@param GroupType EArteriesGroupType
---@param Groups FString
---@param Rotation FRotator
---@param Translation FVector
---@param Scale FVector
---@return UArteriesObject
function UArteriesObject:Transform(GroupType, Groups, Rotation, Translation, Scale) end
---@param Origin FVector
---@param Rotation FRotator
---@param Radius FVector2D
---@param Rows int32
---@param Columns int32
---@return UArteriesObject
function UArteriesObject:Torus(Origin, Rotation, Radius, Rows, Columns) end
---@param BackBones UArteriesObject
---@return UArteriesObject
function UArteriesObject:Sweep(BackBones) end
---@param Groups FString
---@param MinLength float
---@return UArteriesObject
function UArteriesObject:SubDivide(Groups, MinLength) end
---@param Origin FVector
---@param Rotation FRotator
---@param Radius FVector
---@param Rows int32
---@param Columns int32
---@return UArteriesObject
function UArteriesObject:Sphere(Origin, Rotation, Radius, Rows, Columns) end
---@param Seed int32
---@return UArteriesObject
function UArteriesObject:SortRandomly(Seed) end
---@param AttrName FName
---@return UArteriesObject
function UArteriesObject:SortByAttribute(AttrName) end
---@param Groups FString
---@param Material UMaterialInterface
---@param UVScale FVector2D
---@param UVOffset FVector2D
---@param UVRotation float
---@param NullOnly boolean
---@return UArteriesObject
function UArteriesObject:SetMaterial(Groups, Material, UVScale, UVOffset, UVRotation, NullOnly) end
---@param Groups FString
---@param Seed int32
---@param Count int32
---@param Density float
---@param Iterations int32
---@return UArteriesObject
function UArteriesObject:Scatter(Groups, Seed, Count, Density, Iterations) end
---@param DefaultWidth float
---@return UArteriesObject
function UArteriesObject:Road(DefaultWidth) end
---@param Groups FString
---@return UArteriesObject
function UArteriesObject:Reverse(Groups) end
---@param ByEdge boolean
---@param SegmentLength float
---@param NumSegments int32
---@param OutputType EArteriesTangentOutputType
---@return UArteriesObject
function UArteriesObject:Resample(ByEdge, SegmentLength, NumSegments, OutputType) end
---@param GroupName FName
---@param Index int32
---@return boolean
function UArteriesObject:PrimitiveInGroup(GroupName, Index) end
---@param Groups FString
---@param Distance float
---@param Inset float
---@param FrontGroup FName
---@param SideGroup FName
---@param DeleteSource boolean
---@return UArteriesObject
function UArteriesObject:PolyExtrude(Groups, Distance, Inset, FrontGroup, SideGroup, DeleteSource) end
---@param Groups FString
---@param Offset float
---@param CurveGroup FName
---@param SurfaceGroup FName
---@param OutputTangents boolean
---@param DeleteSource boolean
---@return UArteriesObject
function UArteriesObject:PolyExpand(Groups, Offset, CurveGroup, SurfaceGroup, OutputTangents, DeleteSource) end
---@param GroupType EArteriesGroupType
---@param Groups FString
---@param Distance float
---@param Divisions int32
---@param bBevelSingleCurve boolean
---@return UArteriesObject
function UArteriesObject:PolyBevel(GroupType, Groups, Distance, Divisions, bBevelSingleCurve) end
---@param GroupName FName
---@param Index int32
---@return boolean
function UArteriesObject:PointInGroup(GroupName, Index) end
---@return int32
function UArteriesObject:NumPrimitives() end
---@return int32
function UArteriesObject:NumPoints() end
---@return UArteriesObject
function UArteriesObject:New() end
---@param Objs TArray<UArteriesObject>
---@return UArteriesObject
function UArteriesObject:MergeArray(Objs) end
---@param Obj0 UArteriesObject
---@param Obj1 UArteriesObject
---@param Obj2 UArteriesObject
---@param Obj3 UArteriesObject
---@param Obj4 UArteriesObject
---@return UArteriesObject
function UArteriesObject:Merge(Obj0, Obj1, Obj2, Obj3, Obj4) end
---@param Name FName
---@return UArteriesObject
function UArteriesObject:Measure(Name) end
---@param Groups FString
---@param GridSize float
---@param MinGrids int32
---@param OBBOnly boolean
---@return UArteriesObject
function UArteriesObject:MakeGrids(Groups, GridSize, MinGrids, OBBOnly) end
---@param Origin FVector
---@param Direction FVector
---@param Length float
---@param NumPoints int32
---@return UArteriesObject
function UArteriesObject:Line(Origin, Direction, Length, NumPoints) end
---@return int32
function UArteriesObject:LastPrimitive() end
---@return int32
function UArteriesObject:LastPoint() end
---@param OuterGroups FString
---@param InnerGroups FString
---@param Tolerance float
---@return UArteriesObject
function UArteriesObject:Hole(OuterGroups, InnerGroups, Tolerance) end
---@param Groups TArray<FArteriesGroupRange>
---@return UArteriesObject
function UArteriesObject:GroupRange(Groups) end
---@return UArteriesObject
function UArteriesObject:Ground() end
---@param Origin FVector
---@param Rotation FRotator
---@param Size FVector2D
---@param NumPointsX int32
---@param NumPointsY int32
---@return UArteriesObject
function UArteriesObject:Grid(Origin, Rotation, Size, NumPointsX, NumPointsY) end
---@param Key FName
---@param Index int32
---@return int32
function UArteriesObject:GetPrimitiveInt(Key, Index) end
---@param Index int32
---@return FTransform
function UArteriesObject:GetPointTransform(Index) end
---@param Key FName
---@param Index int32
---@return int32
function UArteriesObject:GetPointInt(Key, Index) end
---@param Groups FString
---@param SnapDist float
---@return UArteriesObject
function UArteriesObject:Fuse(Groups, SnapDist) end
---@param Transform FTransform
---@return FTransform
function UArteriesObject:Flatten(Transform) end
---@param Tolerance float
---@return UArteriesObject
function UArteriesObject:Facet(Tolerance) end
---@param Tolerance float
---@return UArteriesObject
function UArteriesObject:Divide(Tolerance) end
---@param Groups FString
---@param Source UObject
---@param LocalTransform FTransform
---@return UArteriesObject
function UArteriesObject:CopyToPoints(Groups, Source, LocalTransform) end
---@param NumCopies int32
---@param Transform FTransform
---@return UArteriesObject
function UArteriesObject:CopyAndTransform(NumCopies, Transform) end
---@return UArteriesObject
function UArteriesObject:Copy() end
---@param Groups FString
---@param PlaneNormal FVector
---@param PlaneDist float
---@param PositiveGroup FName
---@param NegativeGroup FName
---@return UArteriesObject
function UArteriesObject:Clip(Groups, PlaneNormal, PlaneDist, PositiveGroup, NegativeGroup) end
---@return UArteriesObject
function UArteriesObject:Clean() end
---@param Origin FVector
---@param Rotation FRotator
---@param Radius FVector2D
---@param NumPoints int32
---@return UArteriesObject
function UArteriesObject:Circle(Origin, Rotation, Radius, NumPoints) end
---@param StartAlign EArteriesAlignType
---@param StartU float
---@param EndAlign EArteriesAlignType
---@param EndU float
---@return UArteriesObject
function UArteriesObject:Carve(StartAlign, StartU, EndAlign, EndU) end
---@param StartGroupName FName
---@param EndGroupName FName
---@return UArteriesObject
function UArteriesObject:Bridge(StartGroupName, EndGroupName) end
---@param Groups FString
---@return UArteriesObject
function UArteriesObject:BreakPoints(Groups) end
---@param Origin FVector
---@param Rotation FRotator
---@param Size FVector
---@param NumPointsX int32
---@param NumPointsY int32
---@param NumPointsZ int32
---@return UArteriesObject
function UArteriesObject:Box(Origin, Rotation, Size, NumPointsX, NumPointsY, NumPointsZ) end
---@param Groups FString
---@param Tags FString
---@param DeleteNonSelected boolean
---@return UArteriesObject
function UArteriesObject:Blast(Groups, Tags, DeleteNonSelected) end
---@param Groups FString
---@param NumSegments int32
---@param Angle float
---@return UArteriesObject
function UArteriesObject:Arc(Groups, NumSegments, Angle) end
---@param Source UObject
---@param Transform FTransform
---@return UArteriesObject
function UArteriesObject:Add(Source, Transform) end


---@class UArteriesSettings : UObject
---@field bBuildWhenPropertiesChanged boolean
UArteriesSettings = {}



