---@meta

---@class ABP_DropItem_Longdage_C : ABP_DropItemActorBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BlockCollision UCapsuleComponent
---@field DummySK USkeletalMeshComponent
---@field Cube UStaticMeshComponent
---@field Scene USceneComponent
---@field Dao USkeletalMeshComponent
---@field TurnOffLightCurve UCurveFloat
---@field NewEventDispatcher_0 FBP_DropItem_Longdage_CNewEventDispatcher_0
ABP_DropItem_Longdage_C = {}

---@param FloatParam float
function ABP_DropItem_Longdage_C:DropItemBPFunc(FloatParam) end
function ABP_DropItem_Longdage_C:OnPlayDropEffect() end
---@param EntryPoint int32
function ABP_DropItem_Longdage_C:ExecuteUbergraph_BP_DropItem_Longdage(EntryPoint) end
function ABP_DropItem_Longdage_C:NewEventDispatcher_0__DelegateSignature() end


