---@meta

---@class FGSNiagaraParticleInfo
---@field ParticleType int32
---@field position FVector
---@field Size FVector
---@field Duration float
---@field Color FLinearColor
---@field Intensity float
FGSNiagaraParticleInfo = {}



---@class FGSNiagaraParticleInfoConfig
---@field ParticleType int32
---@field bParticleLifetimeLoop boolean
---@field ParticleSpriteSize FVector2D
---@field ParticleSpriteOffset FVector2D
---@field ParticleConfigRemark FString
FGSNiagaraParticleInfoConfig = {}



---@class FGSNiagaraParticleSpriteMapping
---@field SpriteIndex int32
FGSNiagaraParticleSpriteMapping = {}



---@class UGSNiagaraArrayData : UPrimaryDataAsset
---@field ParticleInfoArray TArray<FGSNiagaraParticleInfo>
UGSNiagaraArrayData = {}

---@param InParticleInfoArray TArray<FGSNiagaraParticleInfo>
function UGSNiagaraArrayData:UpdateParticle(InParticleInfoArray) end
---@param Info FGSNiagaraParticleInfo
---@return boolean
function UGSNiagaraArrayData:RemoveParticle(Info) end
---@param TargetSizeArray TArray<float>
function UGSNiagaraArrayData:ForceSetParticleSize(TargetSizeArray) end
---@param TargetPosArray TArray<FVector>
function UGSNiagaraArrayData:ForceSetParticlePos(TargetPosArray) end
function UGSNiagaraArrayData:ClearParticleArrayData() end
---@param Info FGSNiagaraParticleInfo
---@return boolean
function UGSNiagaraArrayData:AddParticle(Info) end


---@class UGSNiagaraBatchingSpriteConfig : UNiagaraDataInterface
---@field ConfigInfo UGSNiagaraBatchingSpriteConfigDA
UGSNiagaraBatchingSpriteConfig = {}



---@class UGSNiagaraBatchingSpriteConfigDA : UPrimaryDataAsset
---@field AtlasConfigFilePath FString
---@field AltasTextureSize FVector2D
---@field ParticleInfoConfigArray TArray<FGSNiagaraParticleInfoConfig>
---@field ParticleSpriteMappingConfig TArray<FGSNiagaraParticleSpriteMapping>
UGSNiagaraBatchingSpriteConfigDA = {}

---@param bForceSet boolean
---@return boolean
function UGSNiagaraBatchingSpriteConfigDA:InitGSParticlesConfigInfo(bForceSet) end
function UGSNiagaraBatchingSpriteConfigDA:ClearPaticleConfigData() end


---@class UGSNiagaraParticleArrayData : UNiagaraDataInterface
---@field ArrayData UGSNiagaraArrayData
UGSNiagaraParticleArrayData = {}



---@class UGSNiagaraRVTSampler : UNiagaraDataInterface
---@field VirtualTexture URuntimeVirtualTexture
UGSNiagaraRVTSampler = {}



---@class UGSNiagaraVATAnimMachine : UNiagaraDataInterface
---@field VATNiagaraDataContainer UVATAnimClipsNiagaraData
UGSNiagaraVATAnimMachine = {}



---@class UVATAnimClipsNiagaraData : UPrimaryDataAsset
---@field GlobalInputDirection FVector2D
---@field GlobalInputIntensity float
---@field CachedDirs TArray<FVector2D>
UVATAnimClipsNiagaraData = {}



