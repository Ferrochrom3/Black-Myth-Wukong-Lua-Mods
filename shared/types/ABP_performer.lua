---@meta

---@class FAnimBlueprintGeneratedConstantData : FAnimBlueprintConstantData
---@field NameProperty_177 FName
---@field ByteProperty_178 ESequenceEvalReinit::Type
---@field BlendProfile_179 UBlendProfile
---@field CurveFloat_180 UCurveFloat
---@field EnumProperty_181 EAlphaBlendOption
---@field EnumProperty_182 EBlendListTransitionType
---@field ArrayProperty_183 TArray<float>
---@field NameProperty_184 FName
---@field BoolProperty_185 boolean
---@field NameProperty_186 FName
---@field IntProperty_187 int32
---@field StructProperty_188 FAnimNodeFunctionRef
---@field FloatProperty_189 float
---@field StructProperty_190 FInputScaleBiasClampConstants
---@field FloatProperty_191 float
---@field BoolProperty_192 boolean
---@field EnumProperty_193 EAnimSyncMethod
---@field ByteProperty_194 EAnimGroupRole::Type
---@field NameProperty_195 FName
---@field NameProperty_196 FName
---@field IntProperty_197 int32
---@field StructProperty_198 FAnimNodeFunctionRef
---@field AnimBlueprintExtension_PropertyAccess FAnimSubsystem_PropertyAccess
---@field AnimBlueprintExtension_NodeRelevancy FAnimSubsystem
---@field AnimBlueprintExtension_Base FAnimSubsystem_Base
FAnimBlueprintGeneratedConstantData = {}



---@class FAnimBlueprintGeneratedMutableData : FAnimBlueprintMutableData
---@field FloatProperty float
---@field AnimSequenceBase_0 UAnimSequenceBase
---@field BoolProperty_1 boolean
---@field AnimSequenceBase_2 UAnimSequenceBase
---@field BlendSpace_3 UBlendSpace
---@field FloatProperty_4 float
---@field FloatProperty_5 float
---@field BlendSpace_6 UBlendSpace
---@field FloatProperty_7 float
---@field FloatProperty_8 float
---@field AnimSequenceBase_9 UAnimSequenceBase
---@field AnimSequenceBase_10 UAnimSequenceBase
FAnimBlueprintGeneratedMutableData = {}



---@class UABP_performer_C : UBUAnimPerformer
---@field UberGraphFrame FPointerToUberGraphFrame
---@field __AnimBlueprintMutables FAnimBlueprintGeneratedMutableData
---@field AnimBlueprintExtension_PropertyAccess FAnimSubsystemInstance
---@field AnimBlueprintExtension_NodeRelevancy FAnimSubsystemInstance_NodeRelevancy
---@field AnimBlueprintExtension_Base FAnimSubsystemInstance
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_Slot_2 FAnimNode_Slot
---@field AnimGraphNode_Slot_1 FAnimNode_Slot
---@field AnimGraphNode_SequenceEvaluator FAnimNode_SequenceEvaluator
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer_2 FAnimNode_SequencePlayer
---@field AnimGraphNode_StateResult_2 FAnimNode_StateResult
---@field AnimGraphNode_StateMachine_1 FAnimNode_StateMachine
---@field AnimGraphNode_RotationOffsetBlendSpace_1 FAnimNode_RotationOffsetBlendSpace
---@field AnimGraphNode_TwoWayBlend_1 FAnimNode_TwoWayBlend
---@field AnimGraphNode_SaveCachedPose_8 FAnimNode_SaveCachedPose
---@field AnimGraphNode_SaveCachedPose_7 FAnimNode_SaveCachedPose
---@field AnimGraphNode_TwoWayBlend FAnimNode_TwoWayBlend
---@field AnimGraphNode_RotationOffsetBlendSpace FAnimNode_RotationOffsetBlendSpace
---@field AnimGraphNode_SaveCachedPose_6 FAnimNode_SaveCachedPose
---@field AnimGraphNode_UseCachedPose_11 FAnimNode_UseCachedPose
---@field AnimGraphNode_UseCachedPose_10 FAnimNode_UseCachedPose
---@field AnimGraphNode_SaveCachedPose_5 FAnimNode_SaveCachedPose
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field AnimGraphNode_UseCachedPose_9 FAnimNode_UseCachedPose
---@field AnimGraphNode_TransitionResult_1 FAnimNode_TransitionResult
---@field AnimGraphNode_TransitionResult FAnimNode_TransitionResult
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_StateResult_1 FAnimNode_StateResult
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field AnimGraphNode_StateResult FAnimNode_StateResult
---@field AnimGraphNode_StateMachine FAnimNode_StateMachine
---@field AnimGraphNode_ApplyMeshSpaceAdditive FAnimNode_ApplyMeshSpaceAdditive
---@field AnimGraphNode_LayeredBoneBlend FAnimNode_LayeredBoneBlend
---@field AnimGraphNode_SaveCachedPose_4 FAnimNode_SaveCachedPose
---@field AnimGraphNode_UseCachedPose_8 FAnimNode_UseCachedPose
---@field AnimGraphNode_SaveCachedPose_3 FAnimNode_SaveCachedPose
---@field AnimGraphNode_UseCachedPose_7 FAnimNode_UseCachedPose
---@field AnimGraphNode_SaveCachedPose_2 FAnimNode_SaveCachedPose
---@field AnimGraphNode_SaveCachedPose_1 FAnimNode_SaveCachedPose
---@field AnimGraphNode_SaveCachedPose FAnimNode_SaveCachedPose
---@field AnimGraphNode_UseCachedPose_6 FAnimNode_UseCachedPose
---@field AnimGraphNode_UseCachedPose_5 FAnimNode_UseCachedPose
---@field AnimGraphNode_UseCachedPose_4 FAnimNode_UseCachedPose
---@field AnimGraphNode_UseCachedPose_3 FAnimNode_UseCachedPose
---@field AnimGraphNode_UseCachedPose_2 FAnimNode_UseCachedPose
---@field AnimGraphNode_UseCachedPose_1 FAnimNode_UseCachedPose
---@field AnimGraphNode_UseCachedPose FAnimNode_UseCachedPose
---@field bEvaluateSequence boolean
---@field EvalueateTime double
UABP_performer_C = {}

---@param AnimGraph FPoseLink
function UABP_performer_C:AnimGraph(AnimGraph) end
function UABP_performer_C:EvaluateGraphExposedInputs_ExecuteUbergraph_ABP_performer_AnimGraphNode_SequenceEvaluator_94D837F44A173E9498A02CBA14220BB2() end
---@param DeltaTimeX float
function UABP_performer_C:BlueprintUpdateAnimation(DeltaTimeX) end
---@param EntryPoint int32
function UABP_performer_C:ExecuteUbergraph_ABP_performer(EntryPoint) end


