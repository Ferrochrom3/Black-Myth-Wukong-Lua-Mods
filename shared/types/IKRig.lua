---@meta

---@class FAnimNode_IKRig : FAnimNode_CustomProperty
---@field Source FPoseLink
---@field RigDefinitionAsset UIKRigDefinition
---@field Goals TArray<FIKRigGoal>
---@field bStartFromRefPose boolean
---@field AlphaInputType EAnimAlphaInputType
---@field bAlphaBoolEnabled boolean
---@field alpha float
---@field AlphaScaleBias FInputScaleBias
---@field AlphaBoolBlend FInputAlphaBoolBlend
---@field AlphaCurveName FName
---@field AlphaScaleBiasClamp FInputScaleBiasClamp
---@field IKRigProcessor UIKRigProcessor
---@field ActualAlpha float
FAnimNode_IKRig = {}



---@class FAnimNode_RetargetPoseFromMesh : FAnimNode_Base
---@field SourceMeshComponent TWeakObjectPtr<USkeletalMeshComponent>
---@field bUseAttachedParent boolean
---@field IKRetargeterAsset UIKRetargeter
---@field Processor UIKRetargetProcessor
FAnimNode_RetargetPoseFromMesh = {}



---@class FBoneChain
---@field ChainName FName
---@field StartBone FBoneReference
---@field EndBone FBoneReference
---@field IKGoalName FName
FBoneChain = {}



---@class FGoalBone
FGoalBone = {}


---@class FIKRetargetPose
---@field RootTranslationOffset FVector
---@field BoneRotationOffsets TMap<FName, FQuat>
FIKRetargetPose = {}



---@class FIKRigGoal
---@field Name FName
---@field TransformSource EIKRigGoalTransformSource
---@field SourceBone FBoneReference
---@field position FVector
---@field Rotation FRotator
---@field PositionAlpha float
---@field RotationAlpha float
---@field PositionSpace EIKRigGoalSpace
---@field RotationSpace EIKRigGoalSpace
---@field FinalBlendedPosition FVector
---@field FinalBlendedRotation FQuat
FIKRigGoal = {}



---@class FIKRigGoalContainer
FIKRigGoalContainer = {}


---@class FIKRigInputSkeleton
FIKRigInputSkeleton = {}


---@class FIKRigSkeleton
---@field BoneNames TArray<FName>
---@field ParentIndices TArray<int32>
---@field ExcludedBones TArray<FName>
---@field CurrentPoseGlobal TArray<FTransform>
---@field CurrentPoseLocal TArray<FTransform>
---@field RefPoseGlobal TArray<FTransform>
FIKRigSkeleton = {}



---@class FIKRigSkeletonChain
FIKRigSkeletonChain = {}


---@class FLimbLink
FLimbLink = {}


---@class FLimbSolver
FLimbSolver = {}


---@class FLimbSolverSettings
---@field ReachPrecision float
---@field HingeRotationAxis EAxis::Type
---@field MaxIterations int32
---@field bEnableLimit boolean
---@field MinRotationAngle float
---@field bAveragePull boolean
---@field PullDistribution float
---@field ReachStepAlpha float
---@field bEnableTwistCorrection boolean
---@field EndBoneForwardAxis EAxis::Type
FLimbSolverSettings = {}



---@class FRetargetChainMap
---@field SourceChain FName
---@field TargetChain FName
FRetargetChainMap = {}



---@class FRetargetDefinition
---@field RootBone FName
---@field BoneChains TArray<FBoneChain>
FRetargetDefinition = {}



---@class IIKGoalCreatorInterface : IInterface
IIKGoalCreatorInterface = {}

---@param OutGoals TMap<FName, FIKRigGoal>
function IIKGoalCreatorInterface:AddIKGoals(OutGoals) end


---@class UIKRetargetProcessor : UObject
---@field IKRigProcessor UIKRigProcessor
UIKRetargetProcessor = {}



---@class UIKRetargeter : UObject
---@field SourceIKRigAsset UIKRigDefinition
---@field TargetIKRigAsset UIKRigDefinition
---@field bRetargetRoot boolean
---@field bRetargetFK boolean
---@field bRetargetIK boolean
---@field RetargetPoses TMap<FName, FIKRetargetPose>
---@field ChainMapping TArray<FRetargetChainMap>
---@field ChainSettings TArray<URetargetChainSettings>
---@field CurrentRetargetPose FName
UIKRetargeter = {}



---@class UIKRigComponent : UActorComponent
UIKRigComponent = {}

---@param GoalName FName
---@param Transform FTransform
---@param PositionAlpha float
---@param RotationAlpha float
function UIKRigComponent:SetIKRigGoalTransform(GoalName, Transform, PositionAlpha, RotationAlpha) end
---@param GoalName FName
---@param position FVector
---@param Rotation FQuat
---@param PositionAlpha float
---@param RotationAlpha float
function UIKRigComponent:SetIKRigGoalPositionAndRotation(GoalName, position, Rotation, PositionAlpha, RotationAlpha) end
---@param Goal FIKRigGoal
function UIKRigComponent:SetIKRigGoal(Goal) end
function UIKRigComponent:ClearAllGoals() end


---@class UIKRigDefinition : UObject
---@field PreviewSkeletalMesh USkeletalMesh
---@field Skeleton FIKRigSkeleton
---@field Goals TArray<UIKRigEffectorGoal>
---@field Solvers TArray<UIKRigSolver>
---@field RetargetDefinition FRetargetDefinition
UIKRigDefinition = {}



---@class UIKRigEffectorGoal : UObject
---@field GoalName FName
---@field BoneName FName
---@field PositionAlpha float
---@field RotationAlpha float
---@field CurrentTransform FTransform
---@field InitialTransform FTransform
UIKRigEffectorGoal = {}



---@class UIKRigPBIKSolver : UIKRigSolver
---@field RootBone FName
---@field Iterations int32
---@field MassMultiplier float
---@field MinMassMultiplier float
---@field bAllowStretch boolean
---@field RootBehavior EPBIKRootBehavior
---@field bStartSolveFromInputPose boolean
---@field Effectors TArray<UIKRig_FBIKEffector>
---@field BoneSettings TArray<UIKRig_PBIKBoneSettings>
UIKRigPBIKSolver = {}



---@class UIKRigProcessor : UObject
---@field Solvers TArray<UIKRigSolver>
UIKRigProcessor = {}



---@class UIKRigSolver : UObject
UIKRigSolver = {}


---@class UIKRig_BodyMover : UIKRigSolver
---@field RootBone FName
---@field PositionAlpha float
---@field PositionPositiveX float
---@field PositionNegativeX float
---@field PositionPositiveY float
---@field PositionNegativeY float
---@field PositionPositiveZ float
---@field PositionNegativeZ float
---@field RotationAlpha float
---@field RotateXAlpha float
---@field RotateYAlpha float
---@field RotateZAlpha float
---@field Effectors TArray<UIKRig_BodyMoverEffector>
UIKRig_BodyMover = {}



---@class UIKRig_BodyMoverEffector : UObject
---@field GoalName FName
---@field BoneName FName
---@field InfluenceMultiplier float
UIKRig_BodyMoverEffector = {}



---@class UIKRig_FBIKEffector : UObject
---@field GoalName FName
---@field BoneName FName
---@field StrengthAlpha float
---@field PullChainAlpha float
---@field PinRotation float
---@field IndexInSolver int32
UIKRig_FBIKEffector = {}



---@class UIKRig_LimbEffector : UObject
---@field GoalName FName
---@field BoneName FName
UIKRig_LimbEffector = {}



---@class UIKRig_LimbSolver : UIKRigSolver
---@field RootName FName
---@field ReachPrecision float
---@field HingeRotationAxis EAxis::Type
---@field MaxIterations int32
---@field bEnableLimit boolean
---@field MinRotationAngle float
---@field bAveragePull boolean
---@field PullDistribution float
---@field ReachStepAlpha float
---@field bEnableTwistCorrection boolean
---@field EndBoneForwardAxis EAxis::Type
---@field Effector UIKRig_LimbEffector
UIKRig_LimbSolver = {}



---@class UIKRig_PBIKBoneSettings : UObject
---@field bone FName
---@field RotationStiffness float
---@field PositionStiffness float
---@field X EPBIKLimitType
---@field MinX float
---@field MaxX float
---@field Y EPBIKLimitType
---@field MinY float
---@field MaxY float
---@field Z EPBIKLimitType
---@field MinZ float
---@field MaxZ float
---@field bUsePreferredAngles boolean
---@field PreferredAngles FVector
UIKRig_PBIKBoneSettings = {}



---@class UIKRig_PoleSolver : UIKRigSolver
---@field RootName FName
---@field EndName FName
---@field Effector UIKRig_PoleSolverEffector
UIKRig_PoleSolver = {}



---@class UIKRig_PoleSolverEffector : UObject
---@field GoalName FName
---@field BoneName FName
---@field alpha float
UIKRig_PoleSolverEffector = {}



---@class UIKRig_SetTransform : UIKRigSolver
---@field Goal FName
---@field RootBone FName
---@field Effector UIKRig_SetTransformEffector
UIKRig_SetTransform = {}



---@class UIKRig_SetTransformEffector : UObject
---@field bEnablePosition boolean
---@field bEnableRotation boolean
---@field alpha float
UIKRig_SetTransformEffector = {}



---@class URetargetChainSettings : UObject
---@field SourceChain FName
---@field TargetChain FName
---@field CopyPoseUsingFK boolean
---@field RotationMode ERetargetRotationMode
---@field RotationAlpha float
---@field TranslationMode ERetargetTranslationMode
---@field TranslationAlpha float
---@field DriveIKGoal boolean
---@field BlendToSource float
---@field BlendToSourceWeights FVector
---@field StaticOffset FVector
---@field Extension float
---@field MatchSourceVelocity float
---@field VelocityThreshold float
URetargetChainSettings = {}



