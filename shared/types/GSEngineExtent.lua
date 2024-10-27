---@meta

---@class AGSEBlastMeshActor : AActor
AGSEBlastMeshActor = {}


---@class AGSECameraRig_Rail : ACameraRig_Rail
AGSECameraRig_Rail = {}

---@return float
function AGSECameraRig_Rail:GetSplineLength() end


---@class AGSELuaActor : AActor
AGSELuaActor = {}


---@class FAnimMode_GSOrientationWarping : FAnimNode_Base
---@field BasePose FPoseLink
---@field LocomotionAngle float
---@field Settings FAxisSettings
---@field SpineBones TArray<FBoneRef>
---@field IKFootRootBone FBoneReference
---@field PelvisBone FBoneReference
---@field InternalLocomotionAngle float
FAnimMode_GSOrientationWarping = {}



---@class FAnimNode_GSLayeredBoneBlend : FAnimNode_LayeredBoneBlend
---@field GS_LayerSetup TArray<FGSInputBlendPose>
---@field GS_bMeshSpaceRotationBlend boolean
FAnimNode_GSLayeredBoneBlend = {}



---@class FAnimNode_SpeedWarping : FAnimNode_SkeletalControlBase
---@field IKFootRootBone FBoneReference
---@field FeetDefinitions TArray<FIKBones>
---@field PelvisBone FBoneReference
---@field SpeedWarpingAxisMode EIKFootRootLocalAxis
---@field SpeedScaling float
---@field PelvisAdjustmentAlpha float
---@field MaxIter float
---@field PelvisAdjustmentInterp FPelvisAdjustmentInterp
---@field ClampIKUsingFKLeg boolean
FAnimNode_SpeedWarping = {}



---@class FAnimNotify_DummyEfx
---@field PSTemplate UParticleSystem
---@field Socket EDummySocket
---@field LocationOffset FVector
---@field RotationOffset FRotator
---@field Scale FVector
FAnimNotify_DummyEfx = {}



---@class FAxisSettings
---@field YawRotationAxis EAxis::Type
---@field BodyOrientationAlpha float
FAxisSettings = {}



---@class FBoneRef
---@field bone FBoneReference
FBoneRef = {}



---@class FGSBranchFilter
---@field BoneName FName
---@field BlendDepth int32
FGSBranchFilter = {}



---@class FGSInputBlendPose
---@field BranchFilters TArray<FGSBranchFilter>
FGSInputBlendPose = {}



---@class FIKBones
---@field IKFootBone FBoneReference
---@field FKFootBone FBoneReference
---@field NumBonesInLimb int32
FIKBones = {}



---@class FIKFootLocation
---@field LimbRootLocation FVector
---@field OriginLocation FVector
---@field ActualLocation FVector
---@field NewLocation FVector
FIKFootLocation = {}



---@class FPMLocationBoneSocketBoneInfo
---@field BoneName FName
FPMLocationBoneSocketBoneInfo = {}



---@class FPMLocationSkelVertSurfaceBoneInfo
---@field BoneName FName
FPMLocationSkelVertSurfaceBoneInfo = {}



---@class FPelvisAdjustmentInterp
---@field Stiffness float
---@field Dampen float
FPelvisAdjustmentInterp = {}



---@class UAnimNotify_PlayDummyEfx : UAnimNotify
---@field DummyActorClass TSubclassOf<AActor>
---@field DummyEfxs TArray<FAnimNotify_DummyEfx>
---@field AnimSeq UAnimSequence
---@field MaxLifetime float
UAnimNotify_PlayDummyEfx = {}



---@class UEditorFuncLibCommon : UBlueprintFunctionLibrary
UEditorFuncLibCommon = {}

---@param UnitID int32
---@param LearnID int32
---@return int32
function UEditorFuncLibCommon:UMGTemplate_GetLearnID(UnitID, LearnID) end


---@class UGSDPICustomScalingRuleInCPP : UDPICustomScalingRule
UGSDPICustomScalingRuleInCPP = {}


---@class UGSEActorComponent : UActorComponent
UGSEActorComponent = {}


---@class UGSEDestructibleMeshGenComponent : UActorComponent
---@field TargetBlueprint UBlueprint
---@field FolderPath FString
---@field DestructibleComponentArray TArray<UDestructibleComponent>
---@field BoneNameArray TArray<FName>
---@field bUseCustomCollisionToDefault boolean
---@field bRefreshPriviewObjectsOnAnimalMesh boolean
---@field BodyInstance FBodyInstance
---@field FloatCurve UCurveFloat
---@field ParamName FName
---@field FloatCurveTick FGSEDestructibleMeshGenComponentFloatCurveTick
UGSEDestructibleMeshGenComponent = {}

---@param Channel ECollisionChannel
---@param NewResponse ECollisionResponse
---@param Name FString
---@return boolean
function UGSEDestructibleMeshGenComponent:SetCollisionResponseToChannelByName(Channel, NewResponse, Name) end
---@param Channel ECollisionChannel
---@param NewResponse ECollisionResponse
---@param Comp UDestructibleComponent
---@return boolean
function UGSEDestructibleMeshGenComponent:SetCollisionResponseToChannel(Channel, NewResponse, Comp) end
---@param NewResponse ECollisionResponse
---@param Name FString
---@return boolean
function UGSEDestructibleMeshGenComponent:SetCollisionResponseToAllChannelsByName(NewResponse, Name) end
---@param NewResponse ECollisionResponse
---@param Comp UDestructibleComponent
---@return boolean
function UGSEDestructibleMeshGenComponent:SetCollisionResponseToAllChannels(NewResponse, Comp) end
---@param Channel ECollisionChannel
---@param Name FString
---@return boolean
function UGSEDestructibleMeshGenComponent:SetCollisionObjectTypeByName(Channel, Name) end
---@param Channel ECollisionChannel
---@param Comp UDestructibleComponent
---@return boolean
function UGSEDestructibleMeshGenComponent:SetCollisionObjectType(Channel, Comp) end
---@param NewType ECollisionEnabled::Type
---@param Name FString
---@return boolean
function UGSEDestructibleMeshGenComponent:SetCollisionEnabledForceByName(NewType, Name) end
---@param NewType ECollisionEnabled::Type
---@param Comp UDestructibleComponent
---@return boolean
function UGSEDestructibleMeshGenComponent:SetCollisionEnabledForce(NewType, Comp) end
---@param Channel ECollisionChannel
---@param NewResponse ECollisionResponse
---@return boolean
function UGSEDestructibleMeshGenComponent:SetAllCollisionResponseToChannel(Channel, NewResponse) end
---@param NewResponse ECollisionResponse
---@return boolean
function UGSEDestructibleMeshGenComponent:SetAllCollisionResponseToAllChannels(NewResponse) end
---@param Channel ECollisionChannel
---@return boolean
function UGSEDestructibleMeshGenComponent:SetAllCollisionObjectType(Channel) end
---@param NewType ECollisionEnabled::Type
---@return boolean
function UGSEDestructibleMeshGenComponent:SetAllCollisionEnabledForce(NewType) end
---@return boolean
function UGSEDestructibleMeshGenComponent:CallFloatCurve() end


---@class UGSELuaFuncLib : UBlueprintFunctionLibrary
UGSELuaFuncLib = {}


---@class UGSELuaStateUObj : UObject
UGSELuaStateUObj = {}


---@class UGSE_WWiseParticleAsset : UPrimaryDataAsset
---@field ParticleSystem UParticleSystem
UGSE_WWiseParticleAsset = {}



---@class UGSPMBase : UParticleModule
UGSPMBase = {}


---@class UGSPMLocationBoneSocket : UParticleModuleLocationBase
---@field SourceType ELocationBoneSocketSource
---@field UniversalOffset FVector
---@field SelectAllBoneOp boolean
---@field ClearAllBoneOp boolean
---@field SourceLocations TArray<FLocationBoneSocketInfo>
---@field NeedAddRootBoneNames TArray<FPMLocationBoneSocketBoneInfo>
---@field NeedDeleteRootBoneNames TArray<FPMLocationBoneSocketBoneInfo>
---@field SelectionMethod ELocationBoneSocketSelectionMethod
---@field bUpdatePositionEachFrame boolean
---@field bOrientMeshEmitters boolean
---@field bInheritBoneVelocity boolean
---@field InheritVelocityScale float
---@field SkelMeshActorParamName FName
---@field NumPreSelectedIndices int32
---@field bAlwaysKeepWorldScale boolean
---@field RefScaleSocketNameInMesh FName
UGSPMLocationBoneSocket = {}



---@class UGSPMLocationSkelVertSurface : UParticleModuleLocationBase
---@field SourceType ELocationSkelVertSurfaceSource
---@field UniversalOffset FVector
---@field bUpdatePositionEachFrame boolean
---@field bOrientMeshEmitters boolean
---@field bInheritBoneVelocity boolean
---@field InheritVelocityScale float
---@field SkelMeshActorParamName FName
---@field ValidAssociatedBones TArray<FName>
---@field NeedAddRootBoneNames TArray<FPMLocationSkelVertSurfaceBoneInfo>
---@field NeedDeleteRootBoneNames TArray<FPMLocationSkelVertSurfaceBoneInfo>
---@field SelectAllBoneOp boolean
---@field ClearAllBoneOp boolean
---@field bEnforceNormalCheck boolean
---@field NormalToCompare FVector
---@field NormalCheckToleranceDegrees float
---@field NormalCheckTolerance float
---@field ValidMaterialIndices TArray<int32>
---@field bInheritVertexColor boolean
---@field bInheritUV boolean
---@field InheritUVChannel uint32
UGSPMLocationSkelVertSurface = {}



---@class UGSPMMeshSetParamByCurve : UGSPMBase
---@field FloatCurve FRawDistributionFloat
---@field MeshMaterialParamName FName
---@field SkelMeshActorParamName FName
UGSPMMeshSetParamByCurve = {}



---@class UGSPMSizeScaleKeep : UParticleModuleLocationBase
---@field bAlwaysKeepWorldScale boolean
---@field RefScaleSocketNameInMesh FName
UGSPMSizeScaleKeep = {}



---@class UGSPMWorldOffset : UParticleModuleLocationWorldOffset
UGSPMWorldOffset = {}


---@class UGSSceneCaptureComponent2D : USceneCaptureComponent2D
UGSSceneCaptureComponent2D = {}


---@class UGSViewPortRatioUtil : UBlueprintFunctionLibrary
UGSViewPortRatioUtil = {}

---@param NewType EGSForceRatioType
function UGSViewPortRatioUtil:SetForceRatioType(NewType) end
---@param InCfgMaxRatioMin float
---@param InCfgMaxRatioMax float
---@param InCfgMinRatio float
---@param InCfgRefHeightDPIScale float
function UGSViewPortRatioUtil:InitSetCfg(InCfgMaxRatioMin, InCfgMaxRatioMax, InCfgMinRatio, InCfgRefHeightDPIScale) end
---@return EGSForceRatioType
function UGSViewPortRatioUtil:GetForceRatioType() end
---@param RefViewPortWidth int32
---@param RefViewPortHeight int32
---@param InForceRatioType EGSForceRatioType
---@param TargetRatio float
---@param ConstraintAspectRatioType EGSConstraintAspectRatioType
function UGSViewPortRatioUtil:CalcCameraRatioInnerWithRatioType(RefViewPortWidth, RefViewPortHeight, InForceRatioType, TargetRatio, ConstraintAspectRatioType) end
---@param RefViewPortWidth int32
---@param RefViewPortHeight int32
---@param TargetRatio float
---@param ConstraintAspectRatioType EGSConstraintAspectRatioType
function UGSViewPortRatioUtil:CalcCameraRatioInner(RefViewPortWidth, RefViewPortHeight, TargetRatio, ConstraintAspectRatioType) end
---@param WorldContext UObject
---@param OutRefViewPortWidth int32
---@param OutRefViewPortHeight int32
---@param OutCfgMaxRatioMin float
---@param OutCfgMaxRatioMax float
---@param OutCfgMinRatio float
---@param OutCfgRefHeightDPIScale float
---@param OutForceRatioTye EGSForceRatioType
---@param OutConstraintAspectRatioType EGSConstraintAspectRatioType
---@param OutRatio float
function UGSViewPortRatioUtil:CalcCachedData(WorldContext, OutRefViewPortWidth, OutRefViewPortHeight, OutCfgMaxRatioMin, OutCfgMaxRatioMax, OutCfgMinRatio, OutCfgRefHeightDPIScale, OutForceRatioTye, OutConstraintAspectRatioType, OutRatio) end


