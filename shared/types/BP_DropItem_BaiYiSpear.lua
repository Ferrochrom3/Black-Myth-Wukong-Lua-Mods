---@meta

---@class ABP_DropItem_BaiYiSpear_C : ABP_DropItemActorBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Cube UStaticMeshComponent
---@field Scene USceneComponent
---@field NG_GYCY_Lang_04_WeaponFire_4 UNiagaraComponent
---@field NG_GYCY_Lang_04_WeaponFire_3 UNiagaraComponent
---@field NG_GYCY_Lang_04_WeaponFire_2 UNiagaraComponent
---@field NG_GYCY_Lang_04_WeaponFire_1 UNiagaraComponent
---@field NG_GYCY_Lang_04_Fire_TuoWei2 UNiagaraComponent
---@field NG_GYCY_Lang_04_Fire_TuoWei1 UNiagaraComponent
---@field PointLight UPointLightComponent
---@field Capsule2 UCapsuleComponent
---@field Capsule1 UCapsuleComponent
---@field PointLight1 UPointLightComponent
---@field SkeletalMesh USkeletalMeshComponent
---@field Box UBoxComponent
---@field Timeline_0_FloatCurve_C719575145A274BB89843B88D88DF7F2 float
---@field Timeline_0__Direction_C719575145A274BB89843B88D88DF7F2 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field TurnOffLightCurve UCurveFloat
---@field NewEventDispatcher_0 FBP_DropItem_BaiYiSpear_CNewEventDispatcher_0
ABP_DropItem_BaiYiSpear_C = {}

function ABP_DropItem_BaiYiSpear_C:Timeline_0__FinishedFunc() end
function ABP_DropItem_BaiYiSpear_C:Timeline_0__UpdateFunc() end
---@param DeltaSeconds float
function ABP_DropItem_BaiYiSpear_C:ReceiveTick(DeltaSeconds) end
---@param FloatParam float
function ABP_DropItem_BaiYiSpear_C:DropItemBPFunc(FloatParam) end
---@param EntryPoint int32
function ABP_DropItem_BaiYiSpear_C:ExecuteUbergraph_BP_DropItem_BaiYiSpear(EntryPoint) end
function ABP_DropItem_BaiYiSpear_C:NewEventDispatcher_0__DelegateSignature() end


