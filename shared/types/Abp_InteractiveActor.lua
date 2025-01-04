---@meta

---@class FAnimBlueprintGeneratedConstantData : FAnimBlueprintConstantData
---@field NameProperty_10 FName
---@field BoolProperty_11 boolean
---@field FloatProperty_12 float
---@field StructProperty_13 FInputScaleBiasClampConstants
---@field FloatProperty_14 float
---@field BoolProperty_15 boolean
---@field EnumProperty_16 EAnimSyncMethod
---@field ByteProperty_17 EAnimGroupRole::Type
---@field NameProperty_18 FName
---@field StructProperty_19 FAnimNodeFunctionRef
---@field AnimBlueprintExtension_PropertyAccess FAnimSubsystem_PropertyAccess
---@field AnimBlueprintExtension_Base FAnimSubsystem_Base
FAnimBlueprintGeneratedConstantData = {}



---@class FAnimBlueprintGeneratedMutableData : FAnimBlueprintMutableData
---@field AnimSequenceBase UAnimSequenceBase
FAnimBlueprintGeneratedMutableData = {}



---@class UAbp_InteractiveActor_C : UBUAnimInteractiveActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field __AnimBlueprintMutables FAnimBlueprintGeneratedMutableData
---@field AnimBlueprintExtension_PropertyAccess FAnimSubsystemInstance
---@field AnimBlueprintExtension_Base FAnimSubsystemInstance
---@field AnimGraphNode_Root FAnimNode_Root
---@field AnimGraphNode_SequencePlayer FAnimNode_SequencePlayer
---@field AnimGraphNode_Slot FAnimNode_Slot
UAbp_InteractiveActor_C = {}

---@param AnimGraph FPoseLink
function UAbp_InteractiveActor_C:AnimGraph(AnimGraph) end
---@param EntryPoint int32
function UAbp_InteractiveActor_C:ExecuteUbergraph_Abp_InteractiveActor(EntryPoint) end


