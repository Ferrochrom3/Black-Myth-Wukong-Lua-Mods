---@meta

---@class AGSE_FireSystem_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field Box UBoxComponent
---@field Scene USceneComponent
---@field Plane UStaticMeshComponent
---@field RT_MDI UMaterialInstanceDynamic
---@field RenderTarget0 UTextureRenderTarget2D
---@field DampingMDI UMaterialInstanceDynamic
---@field RenderTarget1 UTextureRenderTarget2D
---@field RTQueneList TArray<FGSE_Fire_RTQuene>
---@field NiagaraSystem UNiagaraSystem
---@field FireEmitterSystem AGSE_FireEmitterSystem_C
---@field fra double
---@field internalFra double
---@field OldPosition FVector
AGSE_FireSystem_C = {}

function AGSE_FireSystem_C:SwitchRenderTargetTexture() end
function AGSE_FireSystem_C:UserConstructionScript() end
function AGSE_FireSystem_C:ReceiveBeginPlay() end
---@param DeltaSeconds float
function AGSE_FireSystem_C:ReceiveTick(DeltaSeconds) end
---@param Input FGSE_Fire_RTQuene
function AGSE_FireSystem_C:AddToRTQuene(Input) end
function AGSE_FireSystem_C:RTQuene() end
---@param Info FGSE_Fire_RTQuene
function AGSE_FireSystem_C:SpawnEmitter(Info) end
---@param EntryPoint int32
function AGSE_FireSystem_C:ExecuteUbergraph_GSE_FireSystem(EntryPoint) end


