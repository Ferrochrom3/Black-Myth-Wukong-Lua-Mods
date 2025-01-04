---@meta

---@class ABP_DropItem_ShuangTouShu_C : ABP_DropItemActorBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field DummySK USkeletalMeshComponent
---@field BGUAnimationSync UBGUAnimationSyncComponent
---@field Dao USkeletalMeshComponent
---@field Cube UStaticMeshComponent
---@field Scene USceneComponent
---@field TurnOffLightCurve UCurveFloat
---@field NewEventDispatcher_0 FBP_DropItem_ShuangTouShu_CNewEventDispatcher_0
ABP_DropItem_ShuangTouShu_C = {}

---@param FloatParam float
function ABP_DropItem_ShuangTouShu_C:DropItemBPFunc(FloatParam) end
---@param FingerIndex ETouchIndex::Type
function ABP_DropItem_ShuangTouShu_C:ReceiveActorOnInputTouchEnter(FingerIndex) end
---@param EntryPoint int32
function ABP_DropItem_ShuangTouShu_C:ExecuteUbergraph_BP_DropItem_ShuangTouShu(EntryPoint) end
function ABP_DropItem_ShuangTouShu_C:NewEventDispatcher_0__DelegateSignature() end


