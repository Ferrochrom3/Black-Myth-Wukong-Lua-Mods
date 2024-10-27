---@meta

---@class FAnimBlueprintGeneratedConstantData : FAnimBlueprintConstantData
---@field NameProperty_40 FName
---@field FloatProperty_41 float
---@field BoolProperty_42 boolean
---@field FloatProperty_43 float
---@field BoolProperty_44 boolean
---@field EnumProperty_45 EAnimSyncMethod
---@field ByteProperty_46 EAnimGroupRole::Type
---@field NameProperty_47 FName
---@field NameProperty_48 FName
---@field StructProperty_49 FAnimNodeFunctionRef
---@field AnimBlueprintExtension_PropertyAccess FAnimSubsystem_PropertyAccess
---@field AnimBlueprintExtension_Base FAnimSubsystem_Base
FAnimBlueprintGeneratedConstantData = {}



---@class FAnimBlueprintGeneratedMutableData : FAnimBlueprintMutableData
---@field BlendSpace UBlendSpace
---@field FloatProperty_0 float
---@field FloatProperty_1 float
FAnimBlueprintGeneratedMutableData = {}



---@class UABP_humanoidcs_upperbodyseparation_C : UBUAnimHumanoidCS_UpperBodySeparation
---@field UberGraphFrame FPointerToUberGraphFrame
---@field __AnimBlueprintMutables FAnimBlueprintGeneratedMutableData
---@field AnimBlueprintExtension_PropertyAccess FAnimSubsystemInstance
---@field AnimBlueprintExtension_Base FAnimSubsystemInstance
---@field AnimGraphNode_Root_1 FAnimNode_Root
---@field AnimGraphNode_ApplyAdditive FAnimNode_ApplyAdditive
---@field AnimGraphNode_BlendSpacePlayer FAnimNode_BlendSpacePlayer
---@field AnimGraphNode_LinkedInputPose_2 FAnimNode_LinkedInputPose
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_LayeredBoneBlend FAnimNode_LayeredBoneBlend
---@field AnimGraphNode_UseCachedPose_1 FAnimNode_UseCachedPose
---@field AnimGraphNode_TwoWayBlend FAnimNode_TwoWayBlend
---@field AnimGraphNode_LinkedAnimLayer FAnimNode_LinkedAnimLayer
---@field AnimGraphNode_LinkedInputPose_1 FAnimNode_LinkedInputPose
---@field AnimGraphNode_LinkedInputPose FAnimNode_LinkedInputPose
---@field AnimGraphNode_SaveCachedPose FAnimNode_SaveCachedPose
---@field AnimGraphNode_UseCachedPose FAnimNode_UseCachedPose
UABP_humanoidcs_upperbodyseparation_C = {}

---@param InPose FPoseLink
---@param UpperBodyBlendAdditivePose FPoseLink
function UABP_humanoidcs_upperbodyseparation_C:UpperBodyBlendAdditivePose(InPose, UpperBodyBlendAdditivePose) end
---@param InPose_Normal FPoseLink
---@param InPose_UpperBody FPoseLink
---@param AnimGraph FPoseLink
function UABP_humanoidcs_upperbodyseparation_C:AnimGraph(InPose_Normal, InPose_UpperBody, AnimGraph) end
---@param EntryPoint int32
function UABP_humanoidcs_upperbodyseparation_C:ExecuteUbergraph_ABP_humanoidcs_upperbodyseparation(EntryPoint) end


