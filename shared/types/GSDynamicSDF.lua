---@meta

---@class AGSDynamicSDFInitializer : AActor
---@field CenterSnappedPosWS FVector
---@field CenterSnappedOffset FVector
---@field PreviousCenterSnappedPosWS FVector
---@field PreviousCenterSnappedOffset FVector
---@field CenterPos FVector
---@field CenterOffset FVector
---@field PreviousCenterPos FVector
---@field UsedElementCount int32
---@field Data TArray<FVector4>
---@field Velocity TArray<FVector4>
---@field VertexNormal TArray<FVector4>
---@field MPC UMaterialParameterCollection
---@field NPC UNiagaraParameterCollection
---@field NPCInst UNiagaraParameterCollectionInstance
AGSDynamicSDFInitializer = {}



---@class UGSDynamicSDFConfig : UDeveloperSettings
---@field MPCPath FSoftObjectPath
---@field NPCPath FSoftObjectPath
UGSDynamicSDFConfig = {}



