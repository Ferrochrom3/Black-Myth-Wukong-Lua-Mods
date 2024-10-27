---@meta

---@class FDefaultMotionJointData
---@field JointLocation TArray<FVector>
---@field JointVelocity TArray<FVector>
FDefaultMotionJointData = {}



---@class FInputPlayerDirectionData
---@field DirectionalPointsArray TArray<FPlayerDirectionInput>
---@field FinishVector FVector
FInputPlayerDirectionData = {}



---@class FMMForLMAnimGraph : FAnimNode_AssetPlayerBase
---@field DefaultMotionJointData FDefaultMotionJointData
---@field DefaultVelocity FVector
---@field AnimationAnalyzer UAnimationAnalyzer
---@field AnimationPose FPoseLink
---@field InputDesiredTransform FTransform
---@field InputRootTransform FTransform
---@field InputStrength float
---@field PlayRate float
---@field BlendTime float
---@field TimeBetweenBlends float
---@field bRecordAnimData boolean
---@field bKeepInputUnchanged boolean
---@field CurrentAnimationReferencesIndex int32
---@field WorldTimer int32
---@field ReferenceMMTimer float
---@field bAllowLooping boolean
---@field MotionMatchAnimationsRef TArray<FMotionAnim>
FMMForLMAnimGraph = {}



---@class FMMKDTreeNode
---@field AnimRefIndex TArray<int32>
---@field SplitIndex int32
---@field Median float
---@field LeftIndex int32
---@field RightIndex int32
---@field ParentIndex int32
FMMKDTreeNode = {}



---@class FMatchResults
---@field PlayersInputData FInputPlayerDirectionData
---@field PlayersPredictedInputData FInputPlayerDirectionData
FMatchResults = {}



---@class FMotionAnim
---@field AnimationAnalyzer UAnimationAnalyzer
---@field AnimIndex int32
---@field position float
---@field AllowedMotionTransitionTime float
---@field Limit float
---@field LimitOfOperation boolean
FMotionAnim = {}



---@class FMotionMatchData
---@field SelectedSkeletonBoneTransforms TArray<FTransform>
---@field ElectedSourceReference FName
FMotionMatchData = {}



---@class FMotionMatchingAnimGraph : FAnimNode_AssetPlayerBase
---@field DefaultMotionJointData FDefaultMotionJointData
---@field DefaultVelocity FVector
---@field AnimationAnalyzer UAnimationAnalyzer
---@field AnimationPose FPoseLink
---@field InputDesiredTransform FTransform
---@field InputRootTransform FTransform
---@field InputStrength float
---@field PlayRate float
---@field BlendTime float
---@field TimeBetweenBlends float
---@field bRecordAnimData boolean
---@field bDisableMMRootMotion boolean
---@field CurrentAnimationReferencesIndex int32
---@field WorldTimer int32
---@field ReferenceMMTimer float
---@field bAllowLooping boolean
---@field MotionMatchAnimationsRef TArray<FMotionAnim>
FMotionMatchingAnimGraph = {}



---@class FMotionMatchingAnimSeqdata
---@field AnimationInMemory UAnimSequence
---@field AnimationSoftPath FSoftObjectPath
---@field AnimationsAssetLoadStat EAnimSeqAssetLoadStatType
FMotionMatchingAnimSeqdata = {}



---@class FMotionMatchingCostData
FMotionMatchingCostData = {}


---@class FMotionMatchingMath
---@field SrcAnimIndex int32
---@field StartTime float
---@field SequenceLength float
---@field SerializedFeatures TArray<float>
FMotionMatchingMath = {}



---@class FPlayerDirectionInput
---@field CurrentRefTransform FTransform
---@field AllowedTimeOffset float
FPlayerDirectionInput = {}



---@class FSkeletonStructure
---@field BoneTransformPosition FVector
---@field BoneTransformVelocity FVector
FSkeletonStructure = {}



---@class UAnimationAnalyzer : UObject
---@field SelectedSkeleton USkeleton
---@field KDTreeNodeRootIndex int32
---@field bUseLMAnim boolean
---@field LastMatchedAnimIndex int32
---@field ControllerInputReactionSpeed float
---@field ControllerRotateReactionSpeed float
---@field MMKDTree TArray<FMMKDTreeNode>
---@field AnimationReferences TArray<FMotionMatchingMath>
---@field ReferencedJoints TArray<FName>
---@field JointWeights TMap<int32, float>
---@field AnimationsInMemory TArray<UAnimSequence>
---@field AnimationSeqSoftDatas TArray<FMotionMatchingAnimSeqdata>
---@field bUsingAssetSoftRef boolean
UAnimationAnalyzer = {}

---@param OrgAA UAnimationAnalyzer
---@return boolean
function UAnimationAnalyzer:TryInitFromAA(OrgAA) end
---@param ControllerInputReactionSpeedCustom float
---@param ControllerRotateReactionSpeedCustom float
---@param VelocityStrength float
---@param AnimationMatchPower float
---@param InputDirection FInputPlayerDirectionData
---@param AllAnimationReferences TArray<FSkeletonStructure>
---@param PresentVel FVector
---@param BlendTime float
---@param CalculatedResult float
---@param AnimCostData FMotionMatchingCostData
---@return int32
function UAnimationAnalyzer:StructureForAnimationCalculations(ControllerInputReactionSpeedCustom, ControllerRotateReactionSpeedCustom, VelocityStrength, AnimationMatchPower, InputDirection, AllAnimationReferences, PresentVel, BlendTime, CalculatedResult, AnimCostData) end
---@param bUse boolean
function UAnimationAnalyzer:SetUseLMAnim(bUse) end
---@param Ref int32
---@param bLoadAll boolean
---@param AnimInst UObject
---@return int32
function UAnimationAnalyzer:RequireAnimationsLoadAtDesiredReferences(Ref, bLoadAll, AnimInst) end
---@param CurrentAnimationRef int32
function UAnimationAnalyzer:RemoveAnimationReference(CurrentAnimationRef) end
---@param Ref int32
---@param Stat EAnimSeqAssetLoadStatType
---@param Anim UAnimSequence
function UAnimationAnalyzer:OnAnimationAssetLoadStatChange(Ref, Stat, Anim) end
---@param ProvidedAnimationsByUser TArray<UAnimSequence>
function UAnimationAnalyzer:NewAnimationReference(ProvidedAnimationsByUser) end
---@param Ref int32
---@param Owner AActor
function UAnimationAnalyzer:MMAnimationSeqUsingNotify_Inner(Ref, Owner) end
---@param VelocityStrength float
---@param InputDirection FInputPlayerDirectionData
---@param MotionJointData TArray<FSkeletonStructure>
---@param PresentVel FVector
---@param MinSquareDis float
---@return int32
function UAnimationAnalyzer:MatchAnimationByKDTree(VelocityStrength, InputDirection, MotionJointData, PresentVel, MinSquareDis) end
function UAnimationAnalyzer:LoadAllAnimSeqFromSoftRefForCalculatingInEditor() end
---@return boolean
function UAnimationAnalyzer:IsUseLMAnim() end
---@param BoneName FName
---@return boolean
function UAnimationAnalyzer:IsBoneSelected(BoneName) end
---@return boolean
function UAnimationAnalyzer:IsAnimMathDataValid() end
---@param AnimationRef FName
---@param WorldTime float
---@return boolean
function UAnimationAnalyzer:IsAnimationExtracted(AnimationRef, WorldTime) end
function UAnimationAnalyzer:InitAnimMathDataBySerializedFeatures() end
---@param SequenceName FName
---@return boolean
function UAnimationAnalyzer:HasSequence(SequenceName) end
---@param Ref int32
---@return FSoftObjectPath
function UAnimationAnalyzer:GetSoftPathByIndex(Ref) end
---@param CurrentAnimationKeyframe int32
---@return FMotionMatchingMath
function UAnimationAnalyzer:GetSequenceTimeOfAnimations(CurrentAnimationKeyframe) end
---@param Ref int32
---@return FText
function UAnimationAnalyzer:GetAnimationShowNameInEditor(Ref) end
---@return int32
function UAnimationAnalyzer:GetAnimationCount() end
---@return USkeleton
function UAnimationAnalyzer:GetAnimationAnalyzerSkeleton() end
---@param UserSkeleton USkeleton
---@param SelectedJoints TArray<FName>
---@param BoneWeights TArray<float>
function UAnimationAnalyzer:GatherSkeletonInfo(UserSkeleton, SelectedJoints, BoneWeights) end
---@param ReferencedBone int32
---@return FName
function UAnimationAnalyzer:FindUsersSkeletonBoneNames(ReferencedBone) end
---@return int32
function UAnimationAnalyzer:FindUserSelectedBones() end
---@param Ref int32
---@return UAnimSequence
function UAnimationAnalyzer:FindAnimationsAtDesiredReferences(Ref) end
---@param CurrentAnimationRef int32
---@return UAnimSequence
function UAnimationAnalyzer:FindAnimationFromSequence(CurrentAnimationRef) end
---@return int32
function UAnimationAnalyzer:CountAnimationReferences() end
function UAnimationAnalyzer:ConstructSerializedFeatures() end
---@param FromSourceAnimation int32
function UAnimationAnalyzer:ConstructAnimationReferences(FromSourceAnimation) end
function UAnimationAnalyzer:ConstructAllAnimationReferences() end
function UAnimationAnalyzer:ClearAllAnimSeqForCalculatingInEditor() end
---@param CurrentReferenceAnimation int32
function UAnimationAnalyzer:CleanAnimationReferences(CurrentReferenceAnimation) end
function UAnimationAnalyzer:CleanAllAnimationReferences() end
---@param Ref int32
---@return boolean
function UAnimationAnalyzer:CheckIsFirstLoadRequireDesireAsset(Ref) end
---@param CurrentAnimationRef int32
---@return boolean
function UAnimationAnalyzer:AnimationReferenceIsValid(CurrentAnimationRef) end
---@param CurrentAnimationRef int32
---@return boolean
function UAnimationAnalyzer:AnimationContextIsValid(CurrentAnimationRef) end
---@param Ref int32
---@return boolean
function UAnimationAnalyzer:AnimationCalculationsAccepted(Ref) end
---@param CurrentReferenceAnimation int32
function UAnimationAnalyzer:AnalyzerAnimationReferences(CurrentReferenceAnimation) end


---@class UFilmstormFunctionLibrary : UBlueprintFunctionLibrary
UFilmstormFunctionLibrary = {}

---@param OutConstructTargetDirection FInputPlayerDirectionData
---@param DesiredTransform FTransform
---@param RootWorldTransform FTransform
---@param TargetDirectionInputStrength float
function UFilmstormFunctionLibrary:CreatePlayerInputDirection(OutConstructTargetDirection, DesiredTransform, RootWorldTransform, TargetDirectionInputStrength) end


---@class UMotionMatchingHelpers : UObject
UMotionMatchingHelpers = {}

---@param OutInputDirection FInputPlayerDirectionData
---@param VectorsWeHaveLeftBehind TArray<FTransform>
---@param CheckTheseAgainstVWHLB TArray<FVector>
---@return boolean
function UMotionMatchingHelpers:MakeInputDirectionData(OutInputDirection, VectorsWeHaveLeftBehind, CheckTheseAgainstVWHLB) end
---@return FString
function UMotionMatchingHelpers:GetMMAnimDataRecordFilePath() end
---@param InSequence UAnimSequence
---@param ReferenceClock float
---@param DeliveredVelocityViaAnimBonesLocalVelocity FVector
function UMotionMatchingHelpers:GetLMAnimVelocityReferenceClock(InSequence, ReferenceClock, DeliveredVelocityViaAnimBonesLocalVelocity) end
---@param InputDirection FInputPlayerDirectionData
---@return FTransform
function UMotionMatchingHelpers:GetLastInputDirectionTransform(InputDirection) end
---@param InSequence UAnimSequence
---@param ReferenceClock float
---@param ToBeRefAgainst TArray<FName>
---@param CalculatedMMData FMotionMatchData
function UMotionMatchingHelpers:GetKeyPoseDataFromAnim(InSequence, ReferenceClock, ToBeRefAgainst, CalculatedMMData) end
---@param InSequence UAnimSequence
---@param ReferenceClock float
---@param SkeletonRuntimeName TArray<FName>
---@param OutPresentInputDirection FInputPlayerDirectionData
---@param OutFutureInputDirection FInputPlayerDirectionData
---@param DeliveredAnimationReferencesForSkelRef TArray<FSkeletonStructure>
function UMotionMatchingHelpers:GetDataFromAnimation(InSequence, ReferenceClock, SkeletonRuntimeName, OutPresentInputDirection, OutFutureInputDirection, DeliveredAnimationReferencesForSkelRef) end
---@param InSequence UAnimSequence
---@param ReferenceClock float
---@param DeliveredVelocityViaAnimBonesLocalVelocity FVector
function UMotionMatchingHelpers:GetAnimVelocityReferenceClock(InSequence, ReferenceClock, DeliveredVelocityViaAnimBonesLocalVelocity) end
---@param InSequence UAnimSequence
---@param ReferenceClock float
---@param BoneName FName
---@param DeliveredAnimationReferencesForSkelRef FSkeletonStructure
---@param InDeltaTime float
function UMotionMatchingHelpers:GetAnimJointData(InSequence, ReferenceClock, BoneName, DeliveredAnimationReferencesForSkelRef, InDeltaTime) end
---@param InSequence UAnimSequence
---@param ReferenceClock float
---@param CurrentSkeletonPartInReference int32
---@param SkelIdx2TrackIdx TMap<int32, int32>
---@param CalculatedTransformMM FTransform
function UMotionMatchingHelpers:GetAnimBoneWorldTransform(InSequence, ReferenceClock, CurrentSkeletonPartInReference, SkelIdx2TrackIdx, CalculatedTransformMM) end
---@param InSequence UAnimSequence
---@param ReferenceClock float
---@param CurrentSkeletonPartInReference int32
---@param SkelIdx2TrackIdx TMap<int32, int32>
---@param DeliveredVelocityViaAnimBonesLocalVel FVector
function UMotionMatchingHelpers:GetAnimBoneLocalVel(InSequence, ReferenceClock, CurrentSkeletonPartInReference, SkelIdx2TrackIdx, DeliveredVelocityViaAnimBonesLocalVel) end
---@param InSequence UAnimSequence
---@param ReferenceClock float
---@param CurrentSkeletonPartInReference int32
---@param SkelIdx2TrackIdx TMap<int32, int32>
---@param CalculatedTransformMM FTransform
function UMotionMatchingHelpers:GetAnimBoneLocalTransform(InSequence, ReferenceClock, CurrentSkeletonPartInReference, SkelIdx2TrackIdx, CalculatedTransformMM) end
---@param DeliveredVelocityViaAnimBonesLocalVelocityData FInputPlayerDirectionData
---@param InSequence UAnimSequence
---@param ClockInGame float
function UMotionMatchingHelpers:ExtractLMAnimInputDirection(DeliveredVelocityViaAnimBonesLocalVelocityData, InSequence, ClockInGame) end
---@param DeliveredRotation FQuat
---@param InSequence UAnimSequence
---@param ClockInGame float
function UMotionMatchingHelpers:ExtractAnimSmoothedRotation(DeliveredRotation, InSequence, ClockInGame) end
---@param DeliveredVelocityViaAnimBonesLocalVelocityData FInputPlayerDirectionData
---@param InSequence UAnimSequence
---@param ClockInGame float
function UMotionMatchingHelpers:ExtractAnimInputDirection(DeliveredVelocityViaAnimBonesLocalVelocityData, InSequence, ClockInGame) end
---@param OutConstructTargetDirection FInputPlayerDirectionData
---@param DesiredTransform FTransform
---@param RootWorldTransform FTransform
---@param TargetDirectionInputStrength float
function UMotionMatchingHelpers:CreateInputDirection(OutConstructTargetDirection, DesiredTransform, RootWorldTransform, TargetDirectionInputStrength) end
---@param InputDirectionData_A FInputPlayerDirectionData
---@param InputDirectionData_B FInputPlayerDirectionData
---@return float
function UMotionMatchingHelpers:CompareTrajectories(InputDirectionData_A, InputDirectionData_B) end
---@param JointData_A TArray<FSkeletonStructure>
---@param JointData_B TArray<FSkeletonStructure>
---@return float
function UMotionMatchingHelpers:CompareJointDatas(JointData_A, JointData_B) end
---@param PoseA FMotionMatchData
---@param PoseB FMotionMatchData
---@param alpha float
---@param OutBlendedKeyPose FMotionMatchData
function UMotionMatchingHelpers:BlendKeyPoses(PoseA, PoseB, alpha, OutBlendedKeyPose) end


