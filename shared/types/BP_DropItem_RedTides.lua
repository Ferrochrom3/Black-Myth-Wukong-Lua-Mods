---@meta

---@class ABP_DropItem_RedTides_C : ABP_DropItemActorBase_C
---@field UberGraphFrame FPointerToUberGraphFrame
---@field BlockCollision UCapsuleComponent
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
---@field Timeline_0_FloatCurve_E2E35A2B4A677A47EFDF6AB13CB709B8 float
---@field Timeline_0__Direction_E2E35A2B4A677A47EFDF6AB13CB709B8 ETimelineDirection::Type
---@field Timeline_0 UTimelineComponent
---@field TurnOffLightCurve UCurveFloat
---@field NewEventDispatcher_0 FBP_DropItem_RedTides_CNewEventDispatcher_0
ABP_DropItem_RedTides_C = {}

function ABP_DropItem_RedTides_C:Timeline_0__FinishedFunc() end
function ABP_DropItem_RedTides_C:Timeline_0__UpdateFunc() end
---@param DeltaSeconds float
function ABP_DropItem_RedTides_C:ReceiveTick(DeltaSeconds) end
---@param FloatParam float
function ABP_DropItem_RedTides_C:DropItemBPFunc(FloatParam) end
function ABP_DropItem_RedTides_C:OnPlayDropEffect() end
---@param EntryPoint int32
function ABP_DropItem_RedTides_C:ExecuteUbergraph_BP_DropItem_RedTides(EntryPoint) end
function ABP_DropItem_RedTides_C:NewEventDispatcher_0__DelegateSignature() end


