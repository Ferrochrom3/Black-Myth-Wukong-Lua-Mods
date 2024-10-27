---@meta

---@class FAnimNode_OrientationWarping : FAnimNode_SkeletalControlBase
---@field Mode EWarpingEvaluationMode
---@field OrientationAngle float
---@field LocomotionAngle float
---@field LocomotionAngleDeltaThreshold float
---@field SpineBones TArray<FBoneReference>
---@field IKFootRootBone FBoneReference
---@field IKFootBones TArray<FBoneReference>
---@field RotationAxis EAxis::Type
---@field DistributedBoneOrientationAlpha float
---@field RotationInterpSpeed float
FAnimNode_OrientationWarping = {}



---@class FAnimNode_SlopeWarping : FAnimNode_SkeletalControlBase
---@field IKFootRootBone FBoneReference
---@field PelvisBone FBoneReference
---@field FeetDefinitions TArray<FSlopeWarpingFootDefinition>
---@field FeetData TArray<FSlopeWarpingFootData>
---@field PelvisOffsetInterpolator FVectorRK4SpringInterpolator
---@field GravityDir FVector
---@field CustomFloorOffset FVector
---@field CachedDeltaTime float
---@field TargetFloorNormalWorldSpace FVector
---@field FloorNormalInterpolator FVectorRK4SpringInterpolator
---@field TargetFloorOffsetLocalSpace FVector
---@field FloorOffsetInterpolator FVectorRK4SpringInterpolator
---@field MaxStepHeight float
---@field bKeepMeshInsideOfCapsule boolean
---@field bPullPelvisDown boolean
---@field bUseCustomFloorOffset boolean
---@field bWasOnGround boolean
---@field bShowDebug boolean
---@field bFloorSmoothingInitialized boolean
---@field ActorLocation FVector
---@field GravityDirCompSpace FVector
FAnimNode_SlopeWarping = {}



---@class FAnimNode_StrideWarping : FAnimNode_SkeletalControlBase
---@field Mode EWarpingEvaluationMode
---@field StrideDirection FVector
---@field StrideScale float
---@field LocomotionSpeed float
---@field MinLocomotionSpeedThreshold float
---@field PelvisBone FBoneReference
---@field IKFootRootBone FBoneReference
---@field FootDefinitions TArray<FStrideWarpingFootDefinition>
---@field StrideScaleModifier FInputClampConstants
---@field FloorNormalDirection FWarpingVectorValue
---@field GravityDirection FWarpingVectorValue
---@field PelvisIKFootSolver FIKFootPelvisPullDownSolver
---@field bOrientStrideDirectionUsingFloorNormal boolean
---@field bCompensateIKUsingFKThighRotation boolean
---@field bClampIKUsingFKLimits boolean
FAnimNode_StrideWarping = {}



---@class FSlopeWarpingFootData
FSlopeWarpingFootData = {}


---@class FSlopeWarpingFootDefinition
---@field IKFootBone FBoneReference
---@field FKFootBone FBoneReference
---@field NumBonesInLimb int32
---@field FootSize float
FSlopeWarpingFootDefinition = {}



---@class FStrideWarpingFootDefinition
---@field IKFootBone FBoneReference
---@field FKFootBone FBoneReference
---@field ThighBone FBoneReference
FStrideWarpingFootDefinition = {}



