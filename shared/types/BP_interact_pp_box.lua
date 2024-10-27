---@meta

---@class ABP_interact_pp_box_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Plane UStaticMeshComponent
---@field Box UBoxComponent
---@field DefaultSceneRoot USceneComponent
---@field bEnable boolean
---@field bUnbound boolean
---@field RT_Front UTextureRenderTarget2D
---@field MPC_DynamicSDF UMaterialParameterCollection
---@field MPC_FoliageGlobal UMaterialParameterCollection
---@field bWukongIN boolean
---@field bCanDraw boolean
---@field Delay_Begin float
---@field ['NSC Data'] UNiagaraComponent
---@field ['NSystem Data'] UNiagaraSystem
---@field ['NSystem Effect'] UNiagaraSystem
---@field ['NSC Effect'] UNiagaraComponent
---@field PlayerPos FVector
---@field bShowDebugPlane boolean
---@field WindGust_Direction FName
---@field Scale FName
---@field Speed FName
---@field Strength FName
---@field LagOffset FName
---@field RandDirScale FName
---@field GustScale float
---@field GustSpeed float
---@field GustStrength float
---@field GustRandDirScale float
---@field GustShelterBias double
---@field UseLocalGust boolean
---@field GustDirection_0 FVector
---@field ShelterBias FName
---@field ShelterMod FName
---@field RT_Front_Pre UTextureRenderTarget2D
---@field GustScale_0 float
---@field GustSpeed_0 float
---@field GustStrength_0 float
---@field GustRandDirScale_0 float
---@field GustShelterBias_0 double
ABP_interact_pp_box_C = {}

function ABP_interact_pp_box_C:RevertMPC() end
function ABP_interact_pp_box_C:SetMPC() end
ABP_interact_pp_box_C['Re Init'] = function() end
---@param Enable boolean
ABP_interact_pp_box_C['Render Debug'] = function(Enable) end
function ABP_interact_pp_box_C:UpdateNiagaraSLocation() end
function ABP_interact_pp_box_C:DeleteNiagaraSystem() end
function ABP_interact_pp_box_C:SpawnNiagaraSystem() end
function ABP_interact_pp_box_C:OUTBox() end
function ABP_interact_pp_box_C:InBox() end
---@param TActor AActor
---@param AddZLocation double
function ABP_interact_pp_box_C:SetTransform(TActor, AddZLocation) end
function ABP_interact_pp_box_C:UserConstructionScript() end
function ABP_interact_pp_box_C:ReceiveBeginPlay() end
---@param DeltaSeconds float
function ABP_interact_pp_box_C:ReceiveTick(DeltaSeconds) end
---@param EndPlayReason EEndPlayReason::Type
function ABP_interact_pp_box_C:ReceiveEndPlay(EndPlayReason) end
---@param EntryPoint int32
function ABP_interact_pp_box_C:ExecuteUbergraph_BP_interact_pp_box(EntryPoint) end


