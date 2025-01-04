---@meta

---@class AGSE_FireEmitterSystem_C : AActor
---@field UberGraphFrame FPointerToUberGraphFrame
---@field SceneCaptureComponent2D1 USceneCaptureComponent2D
---@field Niagara UNiagaraComponent
---@field SM_FirePlane UStaticMeshComponent
---@field LandWidth double
AGSE_FireEmitterSystem_C = {}

function AGSE_FireEmitterSystem_C:CaptureRT() end
function AGSE_FireEmitterSystem_C:UserConstructionScript() end
function AGSE_FireEmitterSystem_C:ReceiveBeginPlay() end
---@param EntryPoint int32
function AGSE_FireEmitterSystem_C:ExecuteUbergraph_GSE_FireEmitterSystem(EntryPoint) end


