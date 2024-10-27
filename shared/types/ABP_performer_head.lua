---@meta

---@class FAnimBlueprintGeneratedConstantData : FAnimBlueprintConstantData
---@field NameProperty_49 FName
---@field ByteProperty_50 ESequenceEvalReinit::Type
---@field BlendProfile_51 UBlendProfile
---@field CurveFloat_52 UCurveFloat
---@field EnumProperty_53 EAlphaBlendOption
---@field EnumProperty_54 EBlendListTransitionType
---@field ArrayProperty_55 TArray<float>
---@field BoolProperty_56 boolean
---@field FloatProperty_57 float
---@field StructProperty_58 FInputScaleBiasClampConstants
---@field FloatProperty_59 float
---@field BoolProperty_60 boolean
---@field EnumProperty_61 EAnimSyncMethod
---@field ByteProperty_62 EAnimGroupRole::Type
---@field NameProperty_63 FName
---@field NameProperty_64 FName
---@field IntProperty_65 int32
---@field StructProperty_66 FAnimNodeFunctionRef
---@field AnimBlueprintExtension_PropertyAccess FAnimSubsystem_PropertyAccess
---@field AnimBlueprintExtension_Base FAnimSubsystem_Base
FAnimBlueprintGeneratedConstantData = {}



---@class FAnimBlueprintGeneratedMutableData : FAnimBlueprintMutableData
---@field FloatProperty float
---@field AnimSequenceBase_0 UAnimSequenceBase
---@field BoolProperty_1 boolean
---@field AnimSequenceBase_2 UAnimSequenceBase
FAnimBlueprintGeneratedMutableData = {}



---@class UABP_performer_head_C : UBUAnimPerformer
---@field UberGraphFrame FPointerToUberGraphFrame
---@field __AnimBlueprintMutables FAnimBlueprintGeneratedMutableData
---@field AnimBlueprintExtension_PropertyAccess FAnimSubsystemInstance
---@field AnimBlueprintExtension_Base FAnimSubsystemInstance
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_Slot_1 FAnimNode_Slot
---@field AnimGraphNode_SequenceEvaluator FAnimNode_SequenceEvaluator
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field AnimGraphNode_StateResult FAnimNode_StateResult
---@field AnimGraphNode_StateMachine FAnimNode_StateMachine
---@field AnimGraphNode_RigidBody FAnimNode_RigidBody
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_CopyPoseFromMesh FAnimNode_CopyPoseFromMesh
---@field AnimGraphNode_LayeredBoneBlend FAnimNode_LayeredBoneBlend
---@field AnimGraphNode_Slot FAnimNode_Slot
---@field bEvaluateSequence boolean
---@field EvalueateTime double
UABP_performer_head_C = {}

---@param AnimGraph FPoseLink
function UABP_performer_head_C:AnimGraph(AnimGraph) end
function UABP_performer_head_C:EvaluateGraphExposedInputs_ExecuteUbergraph_ABP_performer_head_AnimGraphNode_SequenceEvaluator_4EFD5AAB4BCAA227D3D582A45385DDF5() end
---@param EntryPoint int32
function UABP_performer_head_C:ExecuteUbergraph_ABP_performer_head(EntryPoint) end


