---@meta

---@class FAnimBlueprintGeneratedConstantData : FAnimBlueprintConstantData
---@field NameProperty_40 FName
---@field NameProperty_41 FName
---@field BlendProfile_42 UBlendProfile
---@field CurveFloat_43 UCurveFloat
---@field BoolProperty_44 boolean
---@field EnumProperty_45 EAlphaBlendOption
---@field EnumProperty_46 EBlendListTransitionType
---@field ArrayProperty_47 TArray<float>
---@field StructProperty_48 FAnimNodeFunctionRef
---@field AnimBlueprintExtension_PropertyAccess FAnimSubsystem_PropertyAccess
---@field AnimBlueprintExtension_Base FAnimSubsystem_Base
FAnimBlueprintGeneratedConstantData = {}



---@class FAnimBlueprintGeneratedMutableData : FAnimBlueprintMutableData
---@field BoolProperty boolean
FAnimBlueprintGeneratedMutableData = {}



---@class UABP_humanoidcs_footik_C : UBUAnimHumanoidCS_FootIK
---@field UberGraphFrame FPointerToUberGraphFrame
---@field __AnimBlueprintMutables FAnimBlueprintGeneratedMutableData
---@field AnimBlueprintExtension_PropertyAccess FAnimSubsystemInstance
---@field AnimBlueprintExtension_Base FAnimSubsystemInstance
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_TwoBoneIK_1 FAnimNode_TwoBoneIK
---@field AnimGraphNode_TwoBoneIK FAnimNode_TwoBoneIK
---@field AnimGraphNode_LocalToComponentSpace_1 FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_ComponentToLocalSpace_1 FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_ModifyBone FAnimNode_ModifyBone
---@field AnimGraphNode_LinkedInputPose FAnimNode_LinkedInputPose
---@field AnimGraphNode_LocalToComponentSpace FAnimNode_ConvertLocalToComponentSpace
---@field AnimGraphNode_SaveCachedPose FAnimNode_SaveCachedPose
---@field AnimGraphNode_ComponentToLocalSpace FAnimNode_ConvertComponentToLocalSpace
---@field AnimGraphNode_UseCachedPose_1 FAnimNode_UseCachedPose
---@field AnimGraphNode_ControlRig FAnimNode_ControlRig
---@field AnimGraphNode_BlendListByBool FAnimNode_BlendListByBool
---@field AnimGraphNode_UseCachedPose FAnimNode_UseCachedPose
---@field __CustomProperty_IKLeftFootAlpha_4B46989A46A73B624822B8B3FBCCBA5C double
---@field __CustomProperty_IKRightFootAlpha_4B46989A46A73B624822B8B3FBCCBA5C double
---@field __CustomProperty_IKJointLeftFoot_4B46989A46A73B624822B8B3FBCCBA5C FVector
---@field __CustomProperty_IKEffectorLeftFoot_4B46989A46A73B624822B8B3FBCCBA5C FVector
---@field __CustomProperty_IKJointRightFoot_4B46989A46A73B624822B8B3FBCCBA5C FVector
---@field __CustomProperty_IKEffectorRightFoot_4B46989A46A73B624822B8B3FBCCBA5C FVector
UABP_humanoidcs_footik_C = {}

---@param InPose FPoseLink
---@param AnimGraph FPoseLink
function UABP_humanoidcs_footik_C:AnimGraph(InPose, AnimGraph) end
function UABP_humanoidcs_footik_C:EvaluateGraphExposedInputs_ExecuteUbergraph_ABP_humanoidcs_footik_AnimGraphNode_ModifyBone_A7B1891E43F60CF667354C8733370A04() end
---@param EntryPoint int32
function UABP_humanoidcs_footik_C:ExecuteUbergraph_ABP_humanoidcs_footik(EntryPoint) end


