---@meta

---@class AFieldSystemActor : AActor
---@field FieldSystemComponent UFieldSystemComponent
AFieldSystemActor = {}



---@class FFieldObjectCommands
---@field TargetNames TArray<FName>
---@field RootNodes TArray<UFieldNodeBase>
---@field MetaDatas TArray<UFieldSystemMetaData>
FFieldObjectCommands = {}



---@class UBoxFalloff : UFieldNodeFloat
---@field Magnitude float
---@field MinRange float
---@field MaxRange float
---@field Default float
---@field Transform FTransform
---@field Falloff EFieldFalloffType
UBoxFalloff = {}

---@param Magnitude float
---@param MinRange float
---@param MaxRange float
---@param Default float
---@param Transform FTransform
---@param Falloff EFieldFalloffType
---@return UBoxFalloff
function UBoxFalloff:SetBoxFalloff(Magnitude, MinRange, MaxRange, Default, Transform, Falloff) end


---@class UCullingField : UFieldNodeBase
---@field Culling UFieldNodeBase
---@field Field UFieldNodeBase
---@field Operation EFieldCullingOperationType
UCullingField = {}

---@param Culling UFieldNodeBase
---@param Field UFieldNodeBase
---@param Operation EFieldCullingOperationType
---@return UCullingField
function UCullingField:SetCullingField(Culling, Field, Operation) end


---@class UFieldNodeBase : UActorComponent
UFieldNodeBase = {}


---@class UFieldNodeFloat : UFieldNodeBase
UFieldNodeFloat = {}


---@class UFieldNodeInt : UFieldNodeBase
UFieldNodeInt = {}


---@class UFieldNodeVector : UFieldNodeBase
UFieldNodeVector = {}


---@class UFieldSystem : UObject
UFieldSystem = {}


---@class UFieldSystemComponent : UPrimitiveComponent
---@field FieldSystem UFieldSystem
---@field bIsWorldField boolean
---@field bIsChaosField boolean
---@field SupportedSolvers TArray<TSoftObjectPtr<AChaosSolverActor>>
---@field ConstructionCommands FFieldObjectCommands
---@field BufferCommands FFieldObjectCommands
UFieldSystemComponent = {}

function UFieldSystemComponent:ResetFieldSystem() end
function UFieldSystemComponent:RemovePersistentFields() end
---@param Enabled boolean
---@param position FVector
---@param Direction FVector
---@param Radius float
---@param Magnitude float
function UFieldSystemComponent:ApplyUniformVectorFalloffForce(Enabled, position, Direction, Radius, Magnitude) end
---@param Enabled boolean
---@param position FVector
---@param Radius float
---@param Magnitude float
---@param Iterations int32
function UFieldSystemComponent:ApplyStrainField(Enabled, position, Radius, Magnitude, Iterations) end
---@param Enabled boolean
---@param position FVector
---@param Radius float
function UFieldSystemComponent:ApplyStayDynamicField(Enabled, position, Radius) end
---@param Enabled boolean
---@param position FVector
---@param Radius float
---@param Magnitude float
function UFieldSystemComponent:ApplyRadialVectorFalloffForce(Enabled, position, Radius, Magnitude) end
---@param Enabled boolean
---@param position FVector
---@param Magnitude float
function UFieldSystemComponent:ApplyRadialForce(Enabled, position, Magnitude) end
---@param Enabled boolean
---@param Target EFieldPhysicsType
---@param MetaData UFieldSystemMetaData
---@param Field UFieldNodeBase
function UFieldSystemComponent:ApplyPhysicsField(Enabled, Target, MetaData, Field) end
---@param Enabled boolean
---@param Direction FVector
---@param Magnitude float
function UFieldSystemComponent:ApplyLinearForce(Enabled, Direction, Magnitude) end
---@param Enabled boolean
---@param Target EFieldPhysicsType
---@param MetaData UFieldSystemMetaData
---@param Field UFieldNodeBase
function UFieldSystemComponent:AddPersistentField(Enabled, Target, MetaData, Field) end
---@param Enabled boolean
---@param Target EFieldPhysicsType
---@param MetaData UFieldSystemMetaData
---@param Field UFieldNodeBase
function UFieldSystemComponent:AddFieldCommand(Enabled, Target, MetaData, Field) end


---@class UFieldSystemMetaData : UActorComponent
UFieldSystemMetaData = {}


---@class UFieldSystemMetaDataFilter : UFieldSystemMetaData
---@field FilterType EFieldFilterType
---@field ObjectType EFieldObjectType
---@field PositionType EFieldPositionType
UFieldSystemMetaDataFilter = {}

---@param FilterType EFieldFilterType
---@param ObjectType EFieldObjectType
---@param PositionType EFieldPositionType
---@return UFieldSystemMetaDataFilter
function UFieldSystemMetaDataFilter:SetMetaDataFilterType(FilterType, ObjectType, PositionType) end


---@class UFieldSystemMetaDataIteration : UFieldSystemMetaData
---@field Iterations int32
UFieldSystemMetaDataIteration = {}

---@param Iterations int32
---@return UFieldSystemMetaDataIteration
function UFieldSystemMetaDataIteration:SetMetaDataIteration(Iterations) end


---@class UFieldSystemMetaDataProcessingResolution : UFieldSystemMetaData
---@field ResolutionType EFieldResolutionType
UFieldSystemMetaDataProcessingResolution = {}

---@param ResolutionType EFieldResolutionType
---@return UFieldSystemMetaDataProcessingResolution
function UFieldSystemMetaDataProcessingResolution:SetMetaDataaProcessingResolutionType(ResolutionType) end


---@class UNoiseField : UFieldNodeFloat
---@field MinRange float
---@field MaxRange float
---@field Transform FTransform
UNoiseField = {}

---@param MinRange float
---@param MaxRange float
---@param Transform FTransform
---@return UNoiseField
function UNoiseField:SetNoiseField(MinRange, MaxRange, Transform) end


---@class UOperatorField : UFieldNodeBase
---@field Magnitude float
---@field RightField UFieldNodeBase
---@field LeftField UFieldNodeBase
---@field Operation EFieldOperationType
UOperatorField = {}

---@param Magnitude float
---@param LeftField UFieldNodeBase
---@param RightField UFieldNodeBase
---@param Operation EFieldOperationType
---@return UOperatorField
function UOperatorField:SetOperatorField(Magnitude, LeftField, RightField, Operation) end


---@class UPlaneFalloff : UFieldNodeFloat
---@field Magnitude float
---@field MinRange float
---@field MaxRange float
---@field Default float
---@field Distance float
---@field position FVector
---@field Normal FVector
---@field Falloff EFieldFalloffType
UPlaneFalloff = {}

---@param Magnitude float
---@param MinRange float
---@param MaxRange float
---@param Default float
---@param Distance float
---@param position FVector
---@param Normal FVector
---@param Falloff EFieldFalloffType
---@return UPlaneFalloff
function UPlaneFalloff:SetPlaneFalloff(Magnitude, MinRange, MaxRange, Default, Distance, position, Normal, Falloff) end


---@class URadialFalloff : UFieldNodeFloat
---@field Magnitude float
---@field MinRange float
---@field MaxRange float
---@field Default float
---@field Radius float
---@field position FVector
---@field Falloff EFieldFalloffType
URadialFalloff = {}

---@param Magnitude float
---@param MinRange float
---@param MaxRange float
---@param Default float
---@param Radius float
---@param position FVector
---@param Falloff EFieldFalloffType
---@return URadialFalloff
function URadialFalloff:SetRadialFalloff(Magnitude, MinRange, MaxRange, Default, Radius, position, Falloff) end


---@class URadialIntMask : UFieldNodeInt
---@field Radius float
---@field position FVector
---@field InteriorValue int32
---@field ExteriorValue int32
---@field SetMaskCondition ESetMaskConditionType
URadialIntMask = {}

---@param Radius float
---@param position FVector
---@param InteriorValue int32
---@param ExteriorValue int32
---@param SetMaskConditionIn ESetMaskConditionType
---@return URadialIntMask
function URadialIntMask:SetRadialIntMask(Radius, position, InteriorValue, ExteriorValue, SetMaskConditionIn) end


---@class URadialVector : UFieldNodeVector
---@field Magnitude float
---@field position FVector
URadialVector = {}

---@param Magnitude float
---@param position FVector
---@return URadialVector
function URadialVector:SetRadialVector(Magnitude, position) end


---@class URandomVector : UFieldNodeVector
---@field Magnitude float
URandomVector = {}

---@param Magnitude float
---@return URandomVector
function URandomVector:SetRandomVector(Magnitude) end


---@class UReturnResultsTerminal : UFieldNodeBase
UReturnResultsTerminal = {}

---@return UReturnResultsTerminal
function UReturnResultsTerminal:SetReturnResultsTerminal() end


---@class UToFloatField : UFieldNodeFloat
---@field IntField UFieldNodeInt
UToFloatField = {}

---@param IntegerField UFieldNodeInt
---@return UToFloatField
function UToFloatField:SetToFloatField(IntegerField) end


---@class UToIntegerField : UFieldNodeInt
---@field FloatField UFieldNodeFloat
UToIntegerField = {}

---@param FloatField UFieldNodeFloat
---@return UToIntegerField
function UToIntegerField:SetToIntegerField(FloatField) end


---@class UUniformInteger : UFieldNodeInt
---@field Magnitude int32
UUniformInteger = {}

---@param Magnitude int32
---@return UUniformInteger
function UUniformInteger:SetUniformInteger(Magnitude) end


---@class UUniformScalar : UFieldNodeFloat
---@field Magnitude float
UUniformScalar = {}

---@param Magnitude float
---@return UUniformScalar
function UUniformScalar:SetUniformScalar(Magnitude) end


---@class UUniformVector : UFieldNodeVector
---@field Magnitude float
---@field Direction FVector
UUniformVector = {}

---@param Magnitude float
---@param Direction FVector
---@return UUniformVector
function UUniformVector:SetUniformVector(Magnitude, Direction) end


---@class UWaveScalar : UFieldNodeFloat
---@field Magnitude float
---@field position FVector
---@field WaveLength float
---@field Period float
---@field Function EWaveFunctionType
---@field Falloff EFieldFalloffType
UWaveScalar = {}

---@param Magnitude float
---@param position FVector
---@param WaveLength float
---@param Period float
---@param Time float
---@param Function EWaveFunctionType
---@param Falloff EFieldFalloffType
---@return UWaveScalar
function UWaveScalar:SetWaveScalar(Magnitude, position, WaveLength, Period, Time, Function, Falloff) end


