---@meta

---@class ABP_InteractiveGas_C : ABattleCloud
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Niagara UNiagaraComponent
---@field DefaultSceneRoot USceneComponent
---@field ActorToAttach AActor
---@field IsAttach boolean
---@field CloudMaterial UMaterialInstance
---@field CloudMID UMaterialInstance
---@field DensityDistFade double
---@field LastPosition FVector
ABP_InteractiveGas_C = {}

function ABP_InteractiveGas_C:SetScalability() end
---@param DeltaSeconds float
function ABP_InteractiveGas_C:ReceiveTick(DeltaSeconds) end
function ABP_InteractiveGas_C:ReceiveBeginPlay() end
---@param EntryPoint int32
function ABP_InteractiveGas_C:ExecuteUbergraph_BP_InteractiveGas(EntryPoint) end


