---@meta

---@class FNiagaraCompileEvent
---@field Severity FNiagaraCompileEventSeverity
---@field Message FString
---@field ShortDescription FString
---@field bDismissable boolean
---@field NodeGuid FGuid
---@field PinGuid FGuid
---@field StackGuids TArray<FGuid>
---@field Source FNiagaraCompileEventSource
FNiagaraCompileEvent = {}



---@class FNiagaraDataInterfaceGPUParamInfo
---@field DataInterfaceHLSLSymbol FString
---@field DIClassName FString
---@field GeneratedFunctions TArray<FNiagaraDataInterfaceGeneratedFunction>
FNiagaraDataInterfaceGPUParamInfo = {}



---@class FNiagaraDataInterfaceGeneratedFunction
FNiagaraDataInterfaceGeneratedFunction = {}


---@class FSimulationStageMetaData
---@field SimulationStageName FName
---@field EnabledBinding FName
---@field IterationSource FName
---@field ExecuteBehavior ENiagaraSimStageExecuteBehavior
---@field bWritesParticles boolean
---@field bPartialParticleUpdate boolean
---@field bParticleIterationStateEnabled boolean
---@field ParticleIterationStateBinding FName
---@field ParticleIterationStateRange FIntPoint
---@field OutputDestinations TArray<FName>
---@field NumIterations int32
---@field NumIterationsBinding FName
---@field GpuDispatchType ENiagaraGpuDispatchType
---@field GpuDispatchNumThreads FIntVector
FSimulationStageMetaData = {}



---@class UNiagaraScriptBase : UObject
UNiagaraScriptBase = {}


