---@meta

---@class FAnimBlueprintGeneratedConstantData : FAnimBlueprintConstantData
---@field NameProperty_23 FName
---@field AnimSequenceBase_24 UAnimSequenceBase
---@field BoolProperty_25 boolean
---@field FloatProperty_26 float
---@field StructProperty_27 FInputScaleBiasClampConstants
---@field FloatProperty_28 float
---@field AnimSequenceBase_29 UAnimSequenceBase
---@field BoolProperty_30 boolean
---@field EnumProperty_31 EAnimSyncMethod
---@field ByteProperty_32 EAnimGroupRole::Type
---@field NameProperty_33 FName
---@field StructProperty_34 FAnimNodeFunctionRef
---@field AnimBlueprintExtension_PropertyAccess FAnimSubsystem_PropertyAccess
---@field AnimBlueprintExtension_Base FAnimSubsystem_Base
FAnimBlueprintGeneratedConstantData = {}



---@class FAnimBlueprintGeneratedMutableData : FAnimBlueprintMutableData
FAnimBlueprintGeneratedMutableData = {}


---@class UABP_Weiba_C : UAnimInstance
---@field UberGraphFrame FPointerToUberGraphFrame
---@field AnimBlueprintExtension_PropertyAccess FAnimSubsystemInstance
---@field AnimBlueprintExtension_Base FAnimSubsystemInstance
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_SequencePlayer_1 FAnimNode_SequencePlayer
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field AnimGraphNode_TwoWayBlend FAnimNode_TwoWayBlend
---@field weiba_alpha double
---@field WukongRef AActor
UABP_Weiba_C = {}

---@param AnimGraph FPoseLink
function UABP_Weiba_C:AnimGraph(AnimGraph) end
---@param DeltaTimeX float
function UABP_Weiba_C:BlueprintUpdateAnimation(DeltaTimeX) end
function UABP_Weiba_C:BlueprintInitializeAnimation() end
---@param EntryPoint int32
function UABP_Weiba_C:ExecuteUbergraph_ABP_Weiba(EntryPoint) end


